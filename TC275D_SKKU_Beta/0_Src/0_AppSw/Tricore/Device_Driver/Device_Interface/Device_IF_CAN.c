/*
 * Device_IF_CAN.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Application.h"

/* Tx & Rx Variable ----------------------------------------------------------*/
unsigned char IO_CAN_Tx[64] = {0, };
unsigned char IO_CAN_Rx[64] = {0, };

/* Initialize Device of CAN --------------------------------------------------*/
void IO_set_CAN(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for CAN line. -------------------------------*/


	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_CAN\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for CAN Module --------------------------------------------*/
	IO_set_CAN_Module_Enable();

	/*
	 * 여기 수정중 => CAN 4개 뚫고 있음
	 */

	IO_set_CAN_BitRate(CAN_A, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_A, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_B, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_B, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_C, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_C, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_BitRate(CAN_D, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_D, 2000, 7500, 8000, 7000, 0);

	IO_set_CAN_Enable(CAN_A, FALSE);
	IO_set_CAN_Enable(CAN_B, FALSE);
	IO_set_CAN_Enable(CAN_C, FALSE);
	IO_set_CAN_Enable(CAN_D, FALSE);

	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 0x01, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 0x02, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_2, CAN_C, 0x03, 8, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_3, CAN_D, 0x04, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_A, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_1, CAN_B, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_1, INTPRIO_CAN_MsgObj_RX1, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_2, CAN_C, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_2, INTPRIO_CAN_MsgObj_RX2, 1);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_3, CAN_D, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_3, INTPRIO_CAN_MsgObj_RX3, 1);

	printf_CAN(0, "%s", "CAN_A OK!");
	printf_CAN(1, "%s", "CAN_B OK!");
	printf_CAN(2, "%s", "CAN_C OK!");
	printf_CAN(3, "%s", "CAN_D OK!");

	/*
	//CAN_A
	IO_set_CAN_BitRate(CAN_A, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_A, 2000, 7500, 8000, 7000, 0);
	IO_set_CAN_Enable(CAN_A, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 0x408, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_A, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);


	//CAN_B
	IO_set_CAN_BitRate(CAN_B, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_B, 2000, 7500, 8000, 7000, 0);
	IO_set_CAN_Enable(CAN_B, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_B, 0x408, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_B, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);

	//CAN_C
	IO_set_CAN_BitRate(CAN_C, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_C, 2000, 7500, 8000, 7000, 0);
	IO_set_CAN_Enable(CAN_C, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_C, 0x408, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_C, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);

	//CAN_D
	IO_set_CAN_BitRate(CAN_D, 1000000, 2000000);
	IO_set_CAN_BitTiming(CAN_D, 2000, 7500, 8000, 7000, 0);
	IO_set_CAN_Enable(CAN_D, FALSE);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_D, 0x408, 8, FALSE);

	ISR_set_CAN_Rx(	CAN_Rx_msgObj_0, CAN_D, 0x00000000, 0xFFFFFFFF, FALSE, FALSE,
					ISR_CAN_msgObj_0, INTPRIO_CAN_MsgObj_RX0, 1);

	*/

	/*
    printf_CAN(0, "%s", "CAN_A OK!");

    printf_CAN(1, "%s", "CAN_B OK!");

    printf_CAN(2, "%s", "CAN_C OK!");

    printf_CAN(3, "%s", "CAN_D OK!");
    */

	//임시
	//printf_CAN(0, "%s", "CAN_A OK!");

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/


/* CAN Database --------------------------------------------------------------*/


pCAN_Sig Set_CAN_Sig(uint8 addr, uint8 length, uint8 type, float64 factor, float64 offset)
{
	pCAN_Sig sig;
	sig.pAddr	= addr;
	sig.nLength = length;
	sig.mType	= type;
	sig.vFactor = factor;
	sig.vOffset = offset;
	return sig;
}

pCAN_Sig Set_CAN_Sig_value(uint32 data)
{
	pCAN_Sig sig;
	sig.data = data;
	return sig;
}


/* Set CAN Message by msgObject for CAN database -----------------------------*/
pCAN_Msg set_CAN_DB_msgObject(uint8 nObj, uint8 nCh, uint16 nID, uint8 nDLC,
							  uint8 nSig, float64 tCycletime, float64 tTimeout)
{
	/* Input	: CAN msgObject number, channel number, ID number, -----------*/
	/* 			  DLC, number of signal, cycle time, timeout -----------------*/
	/* Output	: Point of updated CAN database object -----------------------*/
	/* Jobs		: Set Parameter of CAN database object and -------------------*/
	/* 			  CAN msgObject to hardware function (in CAN Controller) -----*/
	/* Set Parameter of CAN database object ----------------------------------*/
	pCAN_Msg msg;
	msg.nObj = nObj;
	msg.nCh = nCh;
	msg.nID = nID;
	msg.nDLC = nDLC;
	msg.nSig = nSig;
	msg.tCycletime = tCycletime;
	msg.tTimeout = tTimeout;

	/* Set CAN msgObject to hardware function --------------------------------*/
	IO_set_CAN_msgObject(nObj, nCh, nID, nDLC, FALSE);

	/* Return point of updated CAN database object ---------------------------*/
	return msg;
}
/*----------------------------------------------------------------------------*/


/* Send CAN Message by msgObject for CAN database ----------------------------*/
pCAN_Msg Send_CAN_DB_msgObject(pCAN_Msg msg)
{
	/* Input	: Point of CAN database object -------------------------------*/
	/* Output	: Point of updated CAN database object -----------------------*/
	/* Jobs		: Sort the signals of the CAN database bitwise ---------------*/
	/* 			  into the CAN data frame. -----------------------------------*/
	uint8 i_sig, j_sig, iter_sig;
	uint8 n_data, n_sig, n_bit_shift1, n_bit_shift2;
	uint8 data_temp;
	/* When this function syntax starts, data[8] must be initialized to zero. */
	uint8 data[8] = {0, 0, 0, 0, 0, 0, 0, 0};

	/* Get Number of signals -------------------------------------------------*/
	n_sig = msg.nSig;

	/* The loop of bitwise writing -------------------------------------------*/
	for(i_sig = 0; i_sig < n_sig; i_sig++)
	{
		/* create bit data for CAN data frame --------------------------------*/
		for(j_sig = 0; j_sig < msg.dSig[i_sig].nLength; j_sig++)
		{
			/* Get parameters of signal --------------------------------------*/
			iter_sig = msg.dSig[i_sig].pAddr + j_sig; // Calculate bit   number
			n_data = iter_sig / 8;					  // Calculate index number
			/* Calculate shift number : Insert value of bit, Get value of bit */
			n_bit_shift1 = 8 - (iter_sig % 8) - 1;
			n_bit_shift2 = msg.dSig[i_sig].nLength - j_sig - 1;
			/* Get value of bit ----------------------------------------------*/
			data_temp = 0x0001 & (msg.dSig[i_sig].data >> n_bit_shift2);
			/* Insert value of bit -------------------------------------------*/
			data[n_data] = data[n_data] ^ (data_temp << n_bit_shift1);
		}
	}

	/* Send CAN message ------------------------------------------------------*/
	IO_Send_CAN(msg.nObj, data, msg.nDLC);

	/* Return point of updated CAN database object ---------------------------*/
	return msg;
}
/*----------------------------------------------------------------------------*/


/* Sets CAN Enable -----------------------------------------------------------*/
void IO_set_CAN_Module_Enable(void)
{
	Set_CAN_Module();
}
/*----------------------------------------------------------------------------*/


/* Sets CAN Enable -----------------------------------------------------------*/
void IO_set_CAN_Enable(uint8 num_ch, uint8 FD)
{
	Set_CAN_Enable(num_ch, FD);
}
/*----------------------------------------------------------------------------*/

/* Sets CAN Bit Rate ---------------------------------------------------------*/
void IO_set_CAN_BitRate(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate)
{
	Set_CAN_BitRate(num_ch, nom_Baudrate, fast_Baudrate);
}
/*----------------------------------------------------------------------------*/

void IO_set_CAN_BitTiming(	uint8 num_ch,
							uint32 nom_SJW, uint32 nom_SP,
							uint32 fast_SJW, uint32 fast_SP,
							uint8 LDO)
{
	Set_CAN_BitTiming(num_ch, nom_SJW, nom_SP, fast_SJW, fast_SP, LDO);
}
/*----------------------------------------------------------------------------*/

void IO_set_CAN_msgObject(	uint8 num_msgObj, uint8 num_ch, uint32 ID,
							uint8 size_frame, uint8 FD_on)
{
	Set_CAN_msgObject(num_msgObj, num_ch, ID, size_frame, FD_on);
}
/*----------------------------------------------------------------------------*/

uint32 IO_get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer)
{
	return Get_CAN_RxBuffer(num_MsgObj, buffer);
}
/*----------------------------------------------------------------------------*/

void ISR_set_CAN_Rx(uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
					uint8 frame_extend, uint8 FD_on,
					void *isrFuncPointer, uint16 priority, uint8 core)
{
	Set_CAN_Rx(	num_msgObj, num_ch, ID_mask, ID_accept,
				frame_extend, FD_on,
				isrFuncPointer, priority, core);
}
/*----------------------------------------------------------------------------*/

