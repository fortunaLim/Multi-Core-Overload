/*
 * Peripherals_QSPI.c
 *
 *  Created on: 2018. 10. 09.
 *      Author: Ton Nguyen Hoang
 */


#include "Peripherals.h"
#include "Peripherals_QSPI.h"
#include "IfxSbcu_reg.h"
#include "IfxSbcu_regdef.h"
#include "IfxXbar_reg.h"
#include "IfxXbar_regdef.h"



/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
// Declare QSPI module and channel handles
IfxQspi_SpiMaster spi;
IfxQspi_SpiMaster_Channel spiChannel;

int watch[3];

/******************************************************************************/
#if QSPI_Module /*-------------------- QSPI_Module ---------------------------*/
/******************************************************************************/
static Ifx_SBCU_ECON_Bits * const pSVCU_ECON = (Ifx_SBCU_ECON_Bits *)&SBCU0_ECON;
static Ifx_SCU_WDTS_CON0_Bits * const pSCU_WTDSCON0 = (Ifx_SCU_WDTS_CON0_Bits *)&SCU_WDTSCON0;
static Ifx_XBAR_ERR_Bits * const pXBAR_EER0 = (Ifx_XBAR_ERR_Bits *)&XBAR_ERR0;
static IfxQspi_SpiMaster * const pQSPI = (IfxQspi_SpiMaster *)&MODULE_QSPI0;
static Ifx_P * const pGPIO_SPI = (Ifx_P *)&MODULE_P20;
static Ifx_P * const pGPIO_SPI_CS = (Ifx_P *)&MODULE_P22;
static Ifx_QSPI_ACCEN0 * const pQSPIACCEN0 = (Ifx_QSPI_ACCEN0 *)&QSPI0_ACCEN0;
static Ifx_QSPI_ECON * const pQSPIECON0 = (Ifx_QSPI_ECON *)&QSPI0_ECON0;

/******************************************************************************/
/*------------------------------Use For Interrupt-----------------------------*/
/******************************************************************************/
// Transmit interrupts
void qspi0TxISR (void)
{
    IfxQspi_SpiMaster_isrTransmit(&spi);
}
// Receive interrupts
void qspi0RxISR (void)
{
    IfxQspi_SpiMaster_isrReceive(&spi);
}
// Error detection interrupts
void qspi0ErISR (void)
{
    IfxQspi_SpiMaster_isrError(&spi);
}



void set_SPI_CS(void)
{
	pGPIO_SPI->IOCR0.B.PC3   = 0b10000;
	pGPIO_SPI->IOCR12.B.PC13 = 0b10000;
	pGPIO_SPI_CS->IOCR0.B.PC0 = 0b10000;	// LED 4 : IO_LD4
	pGPIO_SPI_CS->IOCR0.B.PC1 = 0b10000;	// LED 5 : IO_LD5
	pGPIO_SPI_CS->IOCR0.B.PC2 = 0b10000;	// LED 6 : IO_LD6
	pGPIO_SPI_CS->IOCR0.B.PC3 = 0b10000;	// LED 7 : IO_LD7
}

void f_SPI_CS(uint8 n_slave, int bit)
{
	if(n_slave == 1)
	{
		pGPIO_SPI->OUT.B.P3 = bit;
	}
	if(n_slave == 2)
	{
		pGPIO_SPI->OUT.B.P13 = bit;
	}
	if(n_slave == 11)
	{
		pGPIO_SPI_CS->OUT.B.P0 = bit;
	}
	if(n_slave == 12)
	{
		pGPIO_SPI_CS->OUT.B.P1 = bit;
	}
	if(n_slave == 13)
	{
		pGPIO_SPI_CS->OUT.B.P2 = bit;
	}
	if(n_slave == 14)
	{
		pGPIO_SPI_CS->OUT.B.P3 = bit;
	}
}

void set_SPI_MISO(uint8 bit)
{
	if(bit)
	{
		pGPIO_SPI->IOCR12.B.PC12 = 0b10000;
	}
	else
	{
		pGPIO_SPI->IOCR12.B.PC12 = 0b00000;
	}
}

void f_SPI_MISO(uint8 bit)
{
	pGPIO_SPI->OUT.B.P12 = bit;
}

void qspi0_master_module_initialisation(void)
 {
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Initialize QSPI module. ------------------------------------*/

//	uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
//
//
//	IfxScuWdt_clearCpuEndinit(passwd);
//
//
//	uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
//	IfxScuWdt_clearSafetyEndinit(password); // --> SE
//	pQSPI->qspi->ACCEN0.U = 0x00000001; 	// access permit
//	pQSPI->qspi->ECON->B.CPOL = 1;			// setting
//	IfxScuWdt_setSafetyEndinit(password);	// SE -->
//
//
//
//	IfxScuWdt_setCpuEndinit(passwd);




	// create module config
	IfxQspi_SpiMaster_Config spiMasterConfig;
	IfxQspi_SpiMaster_initModuleConfig(&spiMasterConfig, &MODULE_QSPI0);
	// set the desired mode and maximum baudrate
	spiMasterConfig.base.mode             = SpiIf_Mode_master;
	spiMasterConfig.base.maximumBaudrate  = 1000000;

	// ISR priorities and interrupt target
	spiMasterConfig.base.txPriority       = ISR_PRIORITY_QSPI0_TX;
	spiMasterConfig.base.rxPriority       = ISR_PRIORITY_QSPI0_RX;
	spiMasterConfig.base.erPriority       = ISR_PRIORITY_QSPI0_ER;
	/* CPU provider */
	spiMasterConfig.base.isrProvider      = ISR_PRIORITY_QSPI0_ISR_Provider;


//	IFX_INTERRUPT(qspi0TxISR, 0, ISR_PRIORITY_QSPI0_TX);
//	IFX_INTERRUPT(qspi0RxISR, 0, ISR_PRIORITY_QSPI0_RX);
//	IFX_INTERRUPT(qspi0ErISR, 0, ISR_PRIORITY_QSPI0_ER);

    IfxCpu_Irq_installInterruptHandler(qspi0TxISR, ISR_PRIORITY_QSPI0_TX);
    IfxCpu_Irq_installInterruptHandler(qspi0RxISR, ISR_PRIORITY_QSPI0_RX);
    IfxCpu_Irq_installInterruptHandler(qspi0ErISR, ISR_PRIORITY_QSPI0_ER);


	// pin configuration
	const IfxQspi_SpiMaster_Pins pins = {
			&IfxQspi0_SCLK_P20_11_OUT, IfxPort_OutputMode_pushPull, // SCLK
			&IfxQspi0_MTSR_P20_14_OUT, IfxPort_OutputMode_pushPull, // MTSR: Master transmit Slave receive
			&IfxQspi0_MRSTA_P20_12_IN, IfxPort_InputMode_pullDown,  // MRST: Master receive Slave transmit
			IfxPort_PadDriver_cmosAutomotiveSpeed3 // pad driver mode
			};
	spiMasterConfig.pins = &pins;




	// initialize module
	//(&0x00001450u) = 0x00002000;
	IfxQspi_SpiMaster_initModule(&spi, &spiMasterConfig);
 }
 
 void qspi0_master_channel_initialisation(void)
 {
		/* Input	: none. ------------------------------------------------------*/
		/* Output	: none. ------------------------------------------------------*/
		/* Jobs		: Initialize QSPI channel. -----------------------------------*/

	// create channel config
	IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;
	IfxQspi_SpiMaster_initChannelConfig(&spiMasterChannelConfig, &spi);
	// set the baudrate for this channel
	//spiMasterChannelConfig.base.baudrate = 200000;
	spiMasterChannelConfig.base.baudrate = 1000000;
	// select pin configuration
	const IfxQspi_SpiMaster_Output slsOutput = {
			&IfxQspi0_SLSO9_P20_3_OUT,
			IfxPort_OutputMode_pushPull,
			IfxPort_PadDriver_ttlSpeed1
			};
	spiMasterChannelConfig.sls.output = (IfxQspi_SpiMaster_Output)slsOutput;
	// initialize channel
	spiMasterChannelConfig.base.mode.clockPolarity = 0;
	IfxQspi_SpiMaster_initChannel(&spiChannel, &spiMasterChannelConfig);	


	// Changed by Ton - reconfigure chip select pin
	set_SPI_CS();
	f_SPI_CS(1, 1);
	f_SPI_CS(2, 1);
 }

void qspi0_data_communication(uint8 n_slave, uint8*data_tx, uint8*data_rx, uint8 num_of_data)
{
	/* Input	: Tx data, Rx data, number of data. --------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Transmit and receive data. ---------------------------------*/
	uint8 i;
	if(n_slave == 3)
	{
		//pQSPI->qspi->ECON->B.CPOL = 1;
		f_SPI_CS(2, 0);
	}
	else if(n_slave != 4) f_SPI_CS(n_slave, 0);
	for (i=0; i<num_of_data; i++)
	{
		// wait until transfer of previous data stream is finished
		while( IfxQspi_SpiMaster_getStatus(&spiChannel) == SpiIf_Status_busy );
		// send/receive new stream
		IfxQspi_SpiMaster_exchange(&spiChannel, &data_tx[i], &data_rx[i], 1);
		//Peripheral_delay_us(1);
	}
	Peripheral_delay_us(10);
	if(n_slave == 4)
	{
		f_SPI_CS(2, 1);
		//pQSPI->qspi->ECON->B.CPOL = 0;
	}
	else if(n_slave != 3) f_SPI_CS(n_slave, 1);
}


unsigned int spi_send(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Transmit and receive three data by a buffer. ---------------*/
	unsigned int data = 0;
	uint8 spiTxBuffer[3] = {0x90, 0x00, 0x00};
	uint8 spiRxBuffer[3] = {0, 0 , 0};
	f_SPI_CS(1, 0);
	while( IfxQspi_SpiMaster_getStatus(&spiChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&spiChannel, &spiTxBuffer[0], &spiRxBuffer[0], 1);

	while( IfxQspi_SpiMaster_getStatus(&spiChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&spiChannel, &spiTxBuffer[1], &spiRxBuffer[1], 1);

	while( IfxQspi_SpiMaster_getStatus(&spiChannel) == SpiIf_Status_busy );
	IfxQspi_SpiMaster_exchange(&spiChannel, &spiTxBuffer[2], &spiRxBuffer[2], 1);

	data = spiRxBuffer[1]<<8;
	data = data|spiRxBuffer[2];
	data = data>>3;

	f_SPI_CS(1, 1);
	return data;
}



void Peripheral_delay_us(unsigned int tic_us)
{
	/* Input	: time delay in micro seconds. -------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Delay micro seconds. ---------------------------------------*/
	unsigned int tic_sub1, tic_sub2;
		for( tic_sub1 = 0; tic_sub1 < tic_us; tic_sub1++ )
		{
			for( tic_sub2 = 0; tic_sub2 < 100; tic_sub2++ )
			{
				__nop();
			}
		}
}
/******************************************************************************/
#else if !QSPI_Module /*----------------- QSPI_Module dummy ------------------*/
/******************************************************************************/
void qspi0TxISR () {}
void qspi0RxISR () {}
void qspi0ErISR () {}
void qspi0_master_module_initialisation() {}
void qspi0_master_channel_initialisation() {}
void qspi0_data_communication(uint8*data_tx, uint8*data_rx, uint8 num_of_data) {}
unsigned int spi_send() {return 0;}
void Peripheral_delay_us(unsigned int tic_us) {}

#endif


