/*
 * Peripherals_ETH.c
 *
 *  Created on: 2018. 8. 11.
 *      Author: HW_Jin
<<<<<<< HEAD
 */


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <stdio.h>
#include "Peripherals_ETH.h"
#include "Peripherals_CAN.h"
#include "IfxEth_reg.h"
#include "Peripherals_UART.h"
#include "Cpu/Std/IfxCpu.h"
#include "Event_Trigger.h"
#include "Ifx_Cfg.h"
#include <stdarg.h>


#define MEMORY_TRANSFER_NUM_WORDS 1024
#define IFX_INTPRIO_DMA_CH0  1
#define NUM_SCANNED_CHANNELS  8

/* Tx & Rx Variable ----------------------------------------------------------*/
uint8* pRxBuf;
uint8* pTxBuf;

App_Eth g_Eth; /**< \brief Demo information */
uint32 __attribute__ ((aligned(64))) memoryDestination[MEMORY_TRANSFER_NUM_WORDS];
uint8 messageType = 10;
/*----------------------------------------------------------------------------*/

int tem = 0;

#if MASTER
const uint8 SRC_myMacAddress[6] = {0x68, 0x05, 0xCA, 0x86, 0xFA, 0x07}; //DA
const uint8 DES_myMacAddress[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; //DA
#endif

#if SLAVE
const uint8 SRC_myMacAddress[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; //SA
const uint8 DES_myMacAddress[6] = {0x68, 0x05, 0xCA, 0x86, 0xFA, 0x07}; //DA
#endif



/* Initialize Ethernet Ports -------------------------------------------------*/
void setPort_ETH(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: set ethernet pins, parameters. -----------------------------*/

    /* configure Ethermac */

    boolean interruptState = IfxCpu_disableInterrupts();
    const IfxEth_RmiiPins pins = {	&IfxEth_CRSDVA_P11_11_IN,
									&IfxEth_REFCLK_P11_12_IN,
									&IfxEth_RXD0_P11_10_IN,
									&IfxEth_RXD1_P11_9_IN,
									&IfxEth_MDC_P21_0_OUT,
									&IfxEth_MDIO_P21_1_INOUT,
									&IfxEth_TXD0_P11_3_OUT,
									&IfxEth_TXD1_P11_2_OUT,
									&IfxEth_TXEN_P11_6_OUT		};

    //IFX_INTERRUPT(EthISR, 0, ISR_PRIORITY_EtherNet_RX);
    IfxCpu_Irq_installInterruptHandler(EthISR, ISR_PRIORITY_EtherNet_RX);

	volatile Ifx_SRC_SRCR *srcr;

	srcr = &MODULE_SRC.ETH.ETH[0].SR;
	srcr->B.SRPN = ISR_PRIORITY_EtherNet_RX;
	srcr->B.TOS = ISR_PRIORITY_EtherNet_ISR_Provider;
	srcr->B.CLRR = 1;
	srcr->B.SRE = 1;

	IfxEth_Config   config;

	IfxEth_initConfig(&config, &MODULE_ETH);

	config.phyInterfaceMode = IfxEth_PhyInterfaceMode_rmii; // 100[Mbps], 50[MHz], 2-Pin
	config.rmiiPins = &pins; // Reduced Medium Independent Interface Mode
	config.phyInit = &IfxEth_Phy_Pef7071_init;
	config.phyLink = &IfxEth_Phy_Pef7071_link;
	config.isrPriority = ISR_PRIORITY_EtherNet_RX;
	config.isrProvider = ISR_PRIORITY_EtherNet_ISR_Provider;

	//config.rxDescr->items[0].RDES0.A.
	IfxCpu_restoreInterrupts(interruptState);


	IfxEth_init(&g_Eth.drivers.eth, &config);

	IfxEth_startTransmitter(&g_Eth.drivers.eth);
	IfxEth_startReceiver(&g_Eth.drivers.eth);

}
/*----------------------------------------------------------------------------*/


/* Set EtherNet Frame --------------------------------------------------------*/
void setFrame_ETH(uint8 *buf)
{
	/* Input	: ethernet frame buffer. -------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: write destination MAC, source MAC, payload length in buffer.*/

	uint32      i;

	for (i = 0; i < 6; i++)
	{
		buf[i] = DES_myMacAddress[i];
	}

	/* SA */
	for (i = 0; i < 6; i++)
	{
		buf[i + 6] = SRC_myMacAddress[i];
	}

	/* length of payload */
	buf[12] = 10;
	buf[13] = 10;
}
/*----------------------------------------------------------------------------*/


/* EtherNet Interrupt Service Routine ----------------------------------------*/
void EthISR(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: generate ethernet ISR function. ----------------------------*/

	IfxCpu_enableInterrupts();
	/*RECEIVE*/
	if(IfxEth_isRxInterrupt(&g_Eth.drivers.eth) == TRUE)
	{
		IfxEth_clearRxInterrupt(&g_Eth.drivers.eth);

		/* we expect that a packet is available -----------------------------*/
		pRxBuf = (uint8 *)IfxEth_getReceiveBuffer(&g_Eth.drivers.eth);
		IfxEth_freeReceiveBuffer(&g_Eth.drivers.eth);

		ISR_EtherNet_Rx(0, pRxBuf);
		//printf_UART_SysLog("receive ETH data\r\n");
	}
}
/*----------------------------------------------------------------------------*/

/* Send EtherNet Message -----------------------------------------------------*/
void printf_ETH(uint8 *SRC_MAC, uint8 *DES_MAC, uint8 *ETH_TYPE, char *fmt, ...)
{
	/* Input	: source MAC, destination MAC, message, payload length. ------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: send ethernet message. -------------------------------------*/

	uint32      i, size;

	pTxBuf = (uint8 *)IfxEth_waitTransmitBuffer(&g_Eth.drivers.eth);

	for (i = 0; i < 6; i++)
	{
		pTxBuf[i]	= DES_MAC[i];
		pTxBuf[i+6]	= SRC_MAC[i];
	}
	pTxBuf[12] = ETH_TYPE[0];
	pTxBuf[13] = ETH_TYPE[1];

	/* Define temp address of the data ---------------------------------------*/
	char buffer[100];
	va_list ap;

	/* Get start address of the data -----------------------------------------*/
	va_start(ap, fmt);

	/* Copy data input to buffer ---------------------------------------------*/
	vsprintf(buffer, fmt, ap);

	/* Get end address of the data -------------------------------------------*/
	va_end(ap);

	/* Get length of the Tx data ---------------------------------------------*/

	size = strlen(buffer);

	memcpy((pTxBuf+14),buffer,(size));


    IfxEth_sendTransmitBuffer(&g_Eth.drivers.eth,(size+14));
    IfxEth_clearTxInterrupt(&g_Eth.drivers.eth);
    while (IfxEth_isTxInterrupt(&g_Eth.drivers.eth) == FALSE);
}
/*----------------------------------------------------------------------------*/
