/*
 * Event_Trigger.c
 *
 *  Created on: 2018. 10. 18.
 *      Author: JW_Park
 *  Revised on: 2022.  7. 14.
 *      Author: J.H.Kim
 */

#include <Ifx_Types.h>
#include "IfxCan_reg.h"
#include "Peripherals_UART.h"
#include "Application.h"
#include "Peripherals_CAN.h"
#include "Timed_Trigger.h"
#include "Device_IF.h"
#include "SysSW_Supervisor.h"
#include "Frame_Define.h"
#include "Process_Queue_sh.h"

#define MODE_EDFRM 1
#define MODE_EDF 0
#define MODE_RM 0
uint8 toggle=0;

static uint8 RxData_CAN[64];
extern QueueType Ready_Queue;
extern QueueType AFIFO_Queue;
extern QueueType priority[10];
#define PQ_SIZE 10
extern uint16 RQ_LR;
#define ETH_MAC_ADDR_LENGTH         6   // MAC Address' Length is 6-bytes
#define ETH_CONTROL_TYPE2           0x02
#define ETH_SNAP_EXPANTION_FIELD    5
#define ETH_VLAN_MODE               0x8100

//#define SYS_TIMER_ERROR             0.0490 //[ms]

uint8 CAN_channel = 0;
extern uint32 timer_count;
unsigned char CAN_msg[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
unsigned char CAN_STR[8] = {'S', 'T', 'A', 'R', 'T'};
//unsigned char CAN_END[8] = {'E', 'N', 'D'};

/* UART Receive Function -----------------------------------------------------*/
void ISR_UART_Rx_SysCom(char *buffer)
{
	/* Input	: Receive Buffer address. ------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data receive and Application ----------------------------*/

	/*------------------------------------------------------------------------*/

	/* Test echo -------------------------------------------------------------*/
	//printf_SysLog("%s", buffer);
}


/* UART Receive Function -----------------------------------------------------*/
void ISR_SCUERU_SWinput(void)
{
	/* Input	: Do not care. -----------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: SW input Trigger -------------------------------------------*/

	//printf_WiFi("SW_OK!\r\n", 8);
	//printf_SysLog("%s", "Get_sw0\r\n");
}

/* EtherNet Receive Interrupt Service Routine -------------------------------------------------*/
void ISR_EtherNet_Rx(int len, char *buffer)
{
	//printf_SysLog("EtherNet Interrupt Service Routine Start!\r\n");

	Ethernet_Frame Ether_Frame;
	CAN_Network_Frame CAN_Frame;

	uint8 Eth_Mode = 0;       // Ethernet Control Mode (Type 1, 2, 3)
	uint8 VLAN_Mode = 0;      // Ethernet VLAN Index Offset (0 or 4)
	uint16 frame_count = 0;
	uint16 data_count = 0;
	uint16 DataLen = 0;		  // For IEEE 802.3 protocol
	uint32 i = 0, frame_index = 0, idx;
	timer_count = 0;

	task_info task_data;
	task_info task_temp, new_task;

	char temp_string[30];//for debug

//	IO_set_CAN_msgObject(CAN_channel, CAN_channel, 0x3E, 5, FALSE);
//	IO_Send_CAN(CAN_channel, CAN_STR, 5);

	// Ethernet Destination MAC Address (6-bytes) & Source MAC Address (6-bytes)
	for(i = 0; i < ETH_MAC_ADDR_LENGTH; i++)
	{
		Ether_Frame.DesAddr[i] = buffer[i];
		Ether_Frame.SrcAddr[i] = buffer[ETH_MAC_ADDR_LENGTH + i];
	}

	// Concatenate 12th byte and 13th byte to make Ethernet Type/Length (2-bytes)
	Ether_Frame.Eth_Type = ((buffer[Eth_MacType_1] & 0x00FF) << 8) | buffer[Eth_MacType_2];

	// Ethernet VLAN[Virtual LAN] Tag Area (Prevent Broadcast Storm, 2-bytes)
	if (Ether_Frame.Eth_Type == ETH_VLAN_MODE)
	{
		Ether_Frame.Eth_VLAN->B.PRIO = (buffer[Eth_MacType_2 + (++Eth_Mode)] >> 5) & 0x07;
		Ether_Frame.Eth_VLAN->B.CFI = (buffer[Eth_MacType_2 + (Eth_Mode)] >> 4) & 0x01;
		Ether_Frame.Eth_VLAN->B.VLAN_ID = ((uint16)(buffer[Eth_MacType_2 + (Eth_Mode)] & 0x0F) << 8)
																| (uint16)buffer[Eth_MacType_2 + (++Eth_Mode)];

		// Ethernet Payload Type/Length (2-bytes, Not VLAN Tag Type)
		VLAN_Mode = 0x04;
		Ether_Frame.Eth_Type = ((buffer[Eth_MacType_1 + (++Eth_Mode)] & 0x00FF) << 8) | buffer[Eth_MacType_2 + (++Eth_Mode)];
	}

	// LLC[Logical Link Control] Area (IEEE 802.2 Protocol)
	Ether_Frame.Eth_DSAP = buffer[Eth_LlcDsap + Eth_Mode]; // Destination Service Access Point
	Ether_Frame.Eth_SSAP = buffer[Eth_LlcSsap + Eth_Mode]; // Source Service Access Point

	// Control Area (If control field is "Type 2", the control field's size is 2-bytes.)
	switch(buffer[Eth_LlcCtrl + Eth_Mode] & 0x03)
	{
		case ETH_CONTROL_TYPE2:
			Ether_Frame.Eth_Ctrl[0] = buffer[Eth_LlcCtrl + Eth_Mode];
			Ether_Frame.Eth_Ctrl[1] = buffer[Eth_LlcCtrl + (++Eth_Mode)];
			break;
		default:
			Ether_Frame.Eth_Ctrl[0] = buffer[Eth_LlcCtrl + Eth_Mode];
			break;
	}

	// SNAP Extension Field
	if (Ether_Frame.Eth_DSAP == Eth_DSAP_SNAP)
	{
		// MAC Device's Vendor Number (3-bytes)
		Ether_Frame.OUI_Number[0] = buffer[Eth_SnapOui_1 + Eth_Mode];
		Ether_Frame.OUI_Number[1] = buffer[Eth_SnapOui_2 + Eth_Mode];
		Ether_Frame.OUI_Number[2] = buffer[Eth_SnapOui_3 + Eth_Mode];

		// Snap Extension Ethernet Type (2-bytes)
		Ether_Frame.Protocol_ID = ((buffer[Eth_SnapType_1 + Eth_Mode] << 8) & 0xFF00) | buffer[Eth_SnapType_2 + Eth_Mode];

		frame_index = Eth_Data_Start + 1;
		DataLen = Ether_Frame.Eth_Type + VLAN_Mode - (Eth_Data_Start - Eth_LlcDsap);
	}
	else
	{
		frame_index = Eth_Data_Start + Eth_Mode + 1 - ETH_SNAP_EXPANTION_FIELD;
		DataLen = Ether_Frame.Eth_Type + VLAN_Mode - (Eth_SnapOui_1 - Eth_LlcDsap);
	}

	// Generate CAN Frame & Enqueue process
	for(i = frame_index; i <= frame_index + DataLen; i++)
	{
		switch(frame_count)
		{
			case CAN_Frame_ID_Low:
				CAN_Frame.ID = ((buffer[i - 1] << 8) & 0xFF00) | buffer[i];
				break;
			case CAN_Frame_Data_Length_Code:
				CAN_Frame.DLC = buffer[i];
				break;
			case CAN_Frame_End:
				memset(&task_data, 0, sizeof(task_info));
				data_count = 0; frame_count = 0;
				CAN_Frame.process_time = ((CAN_Frame.Data[0] << 8) & 0xFF00) | CAN_Frame.Data[1]; // º¯°æ
				task_data.task_num = CAN_Frame.Data[2];//CAN_Frame.ID;
				task_data.rm_priority = CAN_Frame.ID;
				task_data.DLC = CAN_Frame.DLC;
				task_data.process_time = CAN_Frame.process_time;

				for (idx = 0; idx < sizeof(CAN_Frame.Data); idx++){
					task_data.data[idx] = CAN_Frame.Data[idx];
				}

				//while(is_full(&Ready_Queue) == 1){
					//printf_SysLog("RQ_full\r\n");
					//sprintf(temp_string,"rq%d\r\n",Ready_Queue.queue_count);
					//printf_SysLog(temp_string);
				//}
				//else

				// Response Time
				//CAN_msg[6] = task_data.task_num;
				//IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
				//IO_Send_CAN(CAN_Tx_msgObj_0, CAN_msg, 8);
				//CAN_msg[6] = 0;
				//delay_ms(1);
				//IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 11, 8, FALSE);
				//IO_Send_CAN(CAN_Tx_msgObj_1, CAN_msg, 8);




#if MODE_EDF
				get_task_info(&task_data);
				if(task_data.task_num != 0)
				{
					enqueue(&Ready_Queue, task_data);
					if (is_full(&priority[new_task.rm_priority]) == 0)
					{
						new_task = dequeue(&Ready_Queue);
						enqueue(&priority[(toggle++)%2 + 1], new_task);
					}
					else
					{
						priority[new_task.rm_priority].queue_full++;
					}
				}
#endif

				/*
#if MODE_EDF
				get_task_info(&task_data);
				if(task_data.task_num != 0)
				{
					enqueue(&Ready_Queue, task_data);
					if (is_full(&priority[new_task.rm_priority]) == 0)
					{
						new_task = dequeue(&Ready_Queue);
						enqueue(&priority[(toggle++)%8 + 1], new_task);
					}
					else
					{
						priority[new_task.rm_priority].queue_full++;
					}
				}
#endif
				*/
#if MODE_RM
				/* ============================================================ */
				/* =============== Ready Queue        ========================= */
				/* ============================================================ */
				get_task_info(&task_data);

				if((task_data.task_num == 7) || (task_data.task_num == 8 ))
				{
					enqueue(&AFIFO_Queue, task_data);
					if (is_empty(&AFIFO_Queue) == 0)
					{
						if(is_full(&priority[0])==0)
						{
							new_task = dequeue(&AFIFO_Queue);
							enqueue(&priority[0], new_task);
						}
						else
						{
							priority[0].queue_full++;
							printf_SysLog("priority0_full\r\n");
						}
					}
				}else if(task_data.task_num != 0)
				{
					enqueue(&Ready_Queue, task_data);
					/* ============================================================ */
					/* =============== sort by RM to Priority Queue =============== */
					/* ============================================================ */
					if (is_full(&priority[new_task.rm_priority]) == 0)
					{
						new_task = dequeue(&Ready_Queue);
						enqueue(&priority[new_task.rm_priority], new_task);
					}
					else
					{
						priority[new_task.rm_priority].queue_full++;
						printf_SysLog("priority_full\r\n");

					}
				}
#endif

#if MODE_EDFRM
				get_task_info(&task_data);
				if(task_data.task_num != 0)
				{
					enqueue(&Ready_Queue, task_data);
					/* ============================================================ */
					/* =============== sort by RM to Priority Queue =============== */
					/* ============================================================ */
					if (is_full(&priority[new_task.rm_priority]) == 0)
					{
						new_task = dequeue(&Ready_Queue);
						enqueue(&priority[new_task.rm_priority], new_task);
					}
					else{
						priority[new_task.rm_priority].queue_full++;
						printf_SysLog("priority_full\r\n");
					}
				}



#endif



				RQ_LR = Ready_Queue.queue_count;
				if (is_full(&Ready_Queue) == 1)
				{

					printf_SysLog("RQ_FULL\r\n");
				}

				break;
			default:
				if (frame_count > CAN_Frame_Data_Length_Code)
					CAN_Frame.Data[data_count++] = buffer[i];
				break;
		}
		frame_count++;
	}
	//printf_SysLog("Receive Ethernet Frame is Success!\r\n");
}

/* WiFi UART Receive Function ------------------------------------------------*/
void ISR_UART_Rx_WiFi(int len, char *buffer)
{
	/* Input	: Received Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data Receive and Application ----------------------------*/





	/* Test echo -------------------------------------------------------------*/
	// printf_SysLog("WiFi Rx\t-> %s\r\n", buffer);
}

/* CAN Receive Function -----------------------------------------------------*/
extern uint8 CAN_DataRx[8];
void ISR_CAN_msgObj_0(void)
{

	int number_MessageObject = 20;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, rxID, 8, FALSE);
	IO_Send_CAN(0, RxData_CAN, 8);

}


void ISR_CAN_msgObj_1(void)
{
	int number_MessageObject = 21;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);


	// To do...

	if(rxID == 12)
	{
		printf_SysLog("ECU2)\n");
		printf_SysLog("  CAN ID : 12\n");
		printf_SysLog("  RPM : %d\n", RxData_CAN[7]);
	}
	//printf_SysLog("CAN Rx1, ID : 0x%.8x OK!\r\n", rxID);
}


void ISR_CAN_msgObj_2(void)
{
	int number_MessageObject = 22;//
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);

	// To do...
    //printf_SysLog("CAN Rx2, ID : 0x%.8x OK!\r\n", rxID);
}


void ISR_CAN_msgObj_3(void)
{
	int number_MessageObject = 23;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);

	// To do...
}

void ISR_CAN_msgObj_4(void)
{
	int number_MessageObject = 24;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	// To do...

}

void ISR_CAN_msgObj_5(void)
{
	int number_MessageObject = 25;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	// To do...

}

void ISR_CAN_msgObj_6(void)
{
	int number_MessageObject = 26;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	// To do...

}

void ISR_CAN_msgObj_7(void)
{
	int number_MessageObject = 27;
	uint32 rxID = Get_CAN_RxBuffer(number_MessageObject, RxData_CAN);
	// To do...

}


