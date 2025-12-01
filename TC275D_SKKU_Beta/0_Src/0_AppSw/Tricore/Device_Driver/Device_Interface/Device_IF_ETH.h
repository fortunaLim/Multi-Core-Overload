/*
 * Device_IF_ETH.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 *  Revised on: 2022. 7. 14.
 *      Author: J.H.Kim
 */

#ifndef DEVICE_IF_ETH_H_
#define DEVICE_IF_ETH_H_

enum Eth_FrameNo
{
	Eth_DesAddr_1 = 0,
	Eth_DesAddr_2,
	Eth_DesAddr_3,
	Eth_DesAddr_4,
	Eth_DesAddr_5,
	Eth_DesAddr_6,
	Eth_SrcAddr_1,
	Eth_SrcAddr_2,
	Eth_SrcAddr_3,
	Eth_SrcAddr_4,
	Eth_SrcAddr_5,	 // 10
	Eth_SrcAddr_6,
	Eth_MacType_1,
	Eth_MacType_2,
	Eth_LlcDsap,
	Eth_LlcSsap,
	Eth_LlcCtrl,
	Eth_SnapOui_1,
	Eth_SnapOui_2,
	Eth_SnapOui_3,
	Eth_SnapType_1, // 20
	Eth_SnapType_2,
	Eth_Data_Start, // Ethernet Data Field Delimiter
	Eth_CAN_Frame_Start
};

enum Eth_Snap_Type
{
	Eth_Snap_XNS 	= 0x0600,
	Eth_Snap_IP 	= 0x0800,
	Eth_Snap_X25 	= 0x0805,
	Eth_Snap_ARP 	= 0x0806,
	Eth_Snap_RARP 	= 0x0835,
	Eth_Snap_IPX 	= 0x8137,
	Eth_Snap_NetBIOS = 0x8191,

	// (...) User

	Eth_Snap_S19s	= 0x9000

};

enum Eth_DSAP_Type
{
	Eth_DSAP_IP          = 0x08,
	Eth_DSAP_BPDU        = 0x42,
	Eth_DSAP_SNAP        = 0xAA,
	Eth_DSAP_NetwareIPX  = 0xE0,
	Eth_DSAP_NetBIOS     = 0xF0
};

void IO_Set_ETH(void);
uint8 GetEth_MAC_Des(int Index);
uint8 GetEth_MAC_Src(int Index);

#endif /* DEVICE_IF_ETH_H_ */
