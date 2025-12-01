/*
 * Runnable.h
 *
 *  Created on: 2018. 8. 10.
 *      Author: JW_Park
 */

#ifndef RUNNABLE_H_
#define RUNNABLE_H_

extern uint8 Map_STM_Runn[3][2];

extern void (*Process_Mapping[12])(void);
extern void (*Process_Core1_free[])(void);


typedef enum{

	TASK1_exe = 1,
	TASK2_exe = 2,
	TASK3_exe = 3,
	TASK4_exe = 4

}task_priority__;
int SetMCU(void);
void Core0_free(void);
void Core1_free(void);
void Core2_free(void);
void Runn00(void);
void Runn01(void);
void Runn10(void);
void Runn11(void);
void Runn20(void);
void Runn21(void);
void Runn_Dummy(void);


void fnc_test1(void);
void fnc_test2(void);
void fnc_test3(void);
void fnc_test4(void);
void fnc_test5(void);
void fnc_test6(void);
void fnc_test7(void);
void fnc_test8(void);
void fnc_QSPI_test(void);

#endif /* RUNNABLE_H_ */
