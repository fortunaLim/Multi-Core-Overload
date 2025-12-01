/*
 * SysSW_Supervisor.c
 *
 *  Created on: 2020. 2. 26.
 *      Author: JW_Park
 */

#ifndef SYSSSW_UPERVISOR_C_
#define SYSSSW_UPERVISOR_C_

#include "SysSW_Supervisor.h"
#include "Device_IF.h"

//QueueType gq;

void Init_sch_core1(void)
{
	//initQueue(&sch_core1);  // Setting Queue Head Address (Not Head's Node)
	//enQueue(&sch_core1, NULL, 1);
	//enQueue(&sch_core1, NULL, 2);
	//enQueue(&sch_core1, NULL, 3);
	//enQueue(&sch_core1, NULL, 4);

//	/* Queue insert and out example ------------------------------------------*/
//	// inserts node first time on queue
//	enQueue(&sch_core1, 0, 2);
//	// inserts node next of primary->next_Link (third) on queue
//	enQueue(&sch_core1, sch_core1.primary->next_Link, 1);
//	// inserts node last on queue
//	enQueue(&sch_core1, 0, 0);
//	// inserts node primary on queue
//	enQueue(&sch_core1, -1, 3);
//	printf_SysLog("Outs node, data is '%d',\t\t number of node %d -> %d\r\n",
//					outQueue(&sch_core1), sch_core1.num + 1, sch_core1.num);
//	printf_SysLog("Outs node, data is '%d',\t\t number of node %d -> %d\r\n",
//					outQueue(&sch_core1), sch_core1.num + 1, sch_core1.num);
//	printf_SysLog("Print data of primary node '%d',\t number of node %d\r\n",
//					sch_core1.primary->data, sch_core1.num);
//	printf_SysLog("Print data of second node '%d',\t number of node %d\r\n",
//					sch_core1.primary->next_Link->data, sch_core1.num);

}

int runn_sch_core1(void)
{
	//return outQueue(&sch_core1);
	return 0;
}

void insert_sch_core1(int type, int n_fnc)
{
	//enQueue(&sch_core1, 0, n_fnc);
}

#endif /* SYSSUPERVISER_C_ */
