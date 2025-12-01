/*
 * SysSW_Supervisor.h
 *
 *  Created on: 2020. 2. 26.
 *      Author: JW_Park
 */

#ifndef SYSSW_SUPERVISOR_H_
#define SYSSW_SUPERVISOR_H_

#include "SysTools_Queue.h"
#include "Process_Queue_sh.h"

void Init_sch_core1(void);
int runn_sch_core1(void);
void insert_sch_core1(int type, int n_fnc);
#endif /* SYSSUPERVISER_H_ */
