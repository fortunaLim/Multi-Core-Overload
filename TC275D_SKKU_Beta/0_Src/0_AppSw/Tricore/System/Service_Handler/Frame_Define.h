/*
 * Frame_Define.h
 *
 *  Created on: 2022. 7. 18.
 *      Author: J.H.Kim
 */

#ifndef FRAME_DEFINE_H_
#define FRAME_DEFINE_H_

#include "Platform_Types.h"

#define CAN_STANDARD_DATA_FIELD  8
#define START_OF_PROCESS        'S'
#define END_OF_PROCESS          'E'

typedef struct {
	uint16 ID;
	uint16 DLC;
	unsigned int process_time; // Worst-case of Process Time
	uint8 Data[8];
}CAN_Network_Frame;

enum CAN_Frame_No
{
	CAN_Frame_ID_High = 0,
	CAN_Frame_ID_Low,
	CAN_Frame_Data_Length_Code,
//	CAN_Frame_Process_Time_High,
//	CAN_Frame_Process_Time_Low,
	CAN_Frame_Data_0,
	CAN_Frame_Data_1,
	CAN_Frame_Data_2,
	CAN_Frame_Data_3,
	CAN_Frame_Data_4,
	CAN_Frame_Data_5,
	CAN_Frame_Data_6,
	CAN_Frame_Data_7,	// 10
	CAN_Frame_End
};

typedef struct _Eth_VLAN_Format_Bits
{
    unsigned int PRIO : 3;                    /**< \brief [15:13] VLAN Priority (3-bit) */
    unsigned int CFI : 1;                     /**< \brief [12:12] VLAN Canonical Form Indicator (1-bit) */
    unsigned int VLAN_ID : 12;                /**< \brief [11:0] VLAN Identifier (12-bit) */
} ETH_VLAN_FORMAT_BITS;

typedef union
{
    /** \brief Unsigned access */
    unsigned int         U;
    /** \brief Signed access */
    signed int           I;
    /** \brief Bit-field access */
    ETH_VLAN_FORMAT_BITS B;
} ETH_VLAN_FORMAT;

typedef struct {
	// Data Link Layer : Ethernet Header
	volatile uint8 DesAddr[6]; // Ethernet Destination MAC Address (6-byte)
	volatile uint8 SrcAddr[6]; // Ethernet Source MAC Address (6-byte)

	// Type or Length ( over 0x600 : DIX, under 0x600 : IEEE 802.3 )
	volatile uint16 Eth_Type; // Ethernet Data Field's Length (< 1,518) or Type of PDU Packet (> 1,536)

	volatile ETH_VLAN_FORMAT *Eth_VLAN; // Ethernet VLAN[Virtual LAN] Tag Area (Prevent Broadcast Storm, 2-bytes)

	// LLC[Logical Link Control] Area (IEEE 802.2 Protocol)
	volatile uint8 Eth_DSAP; // Destination Service Access Point
	volatile uint8 Eth_SSAP; // Source Service Access Point
	volatile uint8 Eth_Ctrl[2]; // Control Signal (If control field is "Type 2", the control field's size is 2-bytes.)

	// SNAP Extension Field
	volatile uint8 OUI_Number[3]; // MAC Device's Vendor Number
	volatile uint16 Protocol_ID; // Snap Extension Ethernet Type

	// Ethernet Frame Data Field
	//volatile uint8 Data[1500];
}Ethernet_Frame;

#endif /* FRAME_DEFINE_H_ */
