/*
 * Device_IF_ETH.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Peripherals_ETH.h"

uint8 SRC_mMAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; //SA
uint8 DES_mMAC[6] = {0x68, 0x05, 0xCA, 0x86, 0xFA, 0x07}; //DA

uint8 ETH_mTYPE[2] = {0x0A, 0x0B};


/* Initialize Device of EtherNet ---------------------------------------------*/
void IO_set_ETH(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for EtherNet line. --------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_EtherNet\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	setPort_ETH();
	//printf_ETH(DES_mMAC, SRC_mMAC, ETH_mTYPE, "%s", "Hello!");

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
