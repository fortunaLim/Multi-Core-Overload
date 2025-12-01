/*
 * Runnable.c
 *
 *  Created on: 2018. 8. 10.
 *      Author: JW_Park
 */
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include "Application.h"
#include "SysCFG_Cores.h"
#include "Device_IF.h"
#include "Device_IF_ADC.h"
#include "Device_IF_GUI.h"
#include "Peripherals_CAN.h"
#include "Device_IF_PBSW.h"
#include "SysSW_Supervisor.h"
#include "Process_Queue_sh.h"

#define PQ_SIZE 10
#define DBG_Print 1
#define task_Print0 0
#define task_Print1 0

#define MODE_LLF 0
#define MODE_EDFRM 0
#define MODE_EDF 1
#define MODE_RM 0

QueueType Ready_Queue;
QueueType AFIFO_Queue;
QueueType priority[10];
QueueType Core_Queue[2];

int time_offset3 = 5;



uint8 time_offset = 1;
uint8 task_end_0[10]={0};
uint8 task_end_1[10]={0};
uint32 task_count_0[10]={0};
uint32 task_count_1[10]={0};
uint32 task_dead_count_0[10]={0};
uint32 task_dead_count_1[10]={0};
uint32 task_full[2] = {0};
uint16 util[2]={0};
uint8 task_active[2] = {0};
task_info bf_task[2];

uint16 RQ_LR;
uint8 dequeue_lock;

uint8 signal = 0, task_execute_priority = 0;
uint8 LED_Singal = 0, CAN_Data_Road[8] = {0,};
uint8 Dxl_value = 150;
uint16 can_id;
char temp_string[30];
////////////////////////////////////

//수정
#define MAX 101

/* Major Parameters ----------------------------------------------------------*/
pCAN_Msg msgValue1;
pCAN_Msg msgValue2;
pCAN_Msg msgValue3;

static char testDataTx[20];
static char testDataRx[20];

uint8 SRC_uMAC[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; // SA
uint8 DES_uMAC[6] = {0xE0, 0xCB, 0x4E, 0xEC, 0xEF, 0x73}; // DA
uint8 ETH_uTYPE[2] = {0x0A, 0x0B};

uint8 SPI_DataTx[2] = {0,};
uint8 SPI_DataRx[2] = {0,};
uint8 CAN_DataRx[8] = {0,};
uint8 CAN0_DataTx[8] = {0,};
uint8 CAN1_DataTx[8] = {0,};

//extern Queue_node_ptr *bufqueue[MAX];
//Queue_node_ptr old;
//extern Queue_head_ptr head;
//extern Queue_Type mode;

#define SYS_TIMER_ERROR             0.0490 //[ms]

int bLEDtoggle[8] = {0, 0, 0, 0, 0, 0, 0, 0};
//unsigned char CAN_END[8] = {'E', 'N', 'D'};
unsigned char mLEDmask = 0;
uint32 timer_count = 0;

/* Task Mapping --------------------------------------------------------------*/
uint8 Map_STM_Runn[3][2] = {{3, 9},
							{9, 9},
							//{9, 9}};
							{7, 9}};

void (*Process_Mapping[12])(void) =
{
	Core0_free,	/* on [Cpu0_main.c]		: Process ID 000 ---------------------*/
	Core1_free,	/* on [Cpu1_main.c]		: Process ID 001 ---------------------*/
	Core2_free,	/* on [Cpu2_main.c]		: Process ID 002 ---------------------*/
	Runn00,		/* on [Timed_Trigger.c]	: Process ID 100 ---------------------*/
	Runn01,		/* on [Timed_Trigger.c]	: Process ID 101 ---------------------*/
	Runn10,		/* on [Timed_Trigger.c]	: Process ID 110 ---------------------*/
	Runn11,		/* on [Timed_Trigger.c]	: Process ID 111 ---------------------*/
	Runn20,		/* on [Timed_Trigger.c]	: Process ID 120 ---------------------*/
	Runn21,		/* on [Timed_Trigger.c]	: Process ID 121 ---------------------*/
	Runn_Dummy,	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
	Runn_Dummy,	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
	Runn_Dummy,	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
};

uint8 Map_Core1Free_Run = 0;
void (*Process_Core1_free[])(void) =
{
	fnc_test1,	/* on [Application.c]	: Process ID 211 ---------------------*/
	fnc_test2,	/* on [Application.c]	: Process ID 212 ---------------------*/
	fnc_test3,	/* on [Application.c]	: Process ID 213 ---------------------*/
	fnc_test4,	/* on [Application.c]	: Process ID 214 ---------------------*/
	fnc_test5,	/* on [Application.c]	: Process ID 215 ---------------------*/
	fnc_test6,	/* on [Application.c]	: Process ID 216 ---------------------*/
	fnc_test7,	/* on [Application.c]	: Process ID 217 ---------------------*/
	fnc_test8,	/* on [Application.c]	: Process ID 218 ---------------------*/
	fnc_QSPI_test,
};

/*----------------------------------------------------------------------------*/
int SetMCU(void)
{
	int idx;
    Device_IF_Setup();

    Configuration_System();

//    GUI_Start();

    Set_CAN_DB();


    Init_sch_core1(); // initial queue


    dequeue_lock = 0;
	init_queue(&Ready_Queue);
	init_queue(&AFIFO_Queue);
	init_queue(&Core_Queue[0]);
	init_queue(&Core_Queue[1]);
	for(idx=0;idx<PQ_SIZE;idx++){
		init_queue(&priority[idx]); // 요기 바꾸면 된다
	}
	memset(&bf_task[0], 0, sizeof(task_info));
	memset(&bf_task[1], 0, sizeof(task_info));

    printf_SysLog("EDF Queue Scheduling!\r\n");

    printf_SysLog("\nGo...\r\n\n");

    return 1;
}


void Runn_Dummy(void)
{


}


void Core0_free(void)
{
	// To do : free processing in Core0(Loop without cycle time.)

}


void Core1_free(void)
{
	static uint16	u_count_core1 = 0;
	static int		n_sch_core1   = 0;


	//To do : free processing in Core1(Loop without cycle time.)

	u_count_core1++;

}


void Core2_free(void)
{

	//To do : free processing in Core2(Loop without cycle time.)

}


void Runn00(void)
{
	//To do : Cyclic processing in Core0(Loop by System timer.)
	uint8 idx, idx2;
	uint8 pre_cnt=0;
	volatile uint8 active_flag;
	task_info task_temp, new_task;
	memset(&new_task, 0, sizeof(task_info));
	memset(&task_temp, 0, sizeof(task_info));

	//_core0
	/* ======================================================================== */
	/* =============== Dequeue from Priority Queue               ============== */
	/* ============== And schedule by EDF                        ============== */
	/* ======================================================================== */
	//for(idx=0;idx<PQ_SIZE;idx=idx+1) // task all
	for(idx=1;idx<PQ_SIZE;idx=idx+2) // task 1,3,5
	//for(idx=0;idx<PQ_SIZE;idx=idx+2)
#if MODE_EDFRM || MODE_EDF
	{

		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{
			// enable task
			dequeue_lock = 1;

			new_task = dequeue(&priority[idx]);
			//get_task_info(&new_task);
			//sprintf(temp_string,"_utill_%d\r\n",util[0]+new_task.utill);
			//printf_SysLog(temp_string);

#if MODE_EDFRM
			 //======== EDF-RM =============
			if(util[0]+new_task.utill > 81*time_offset3)
			{
				enqueue(&priority[idx], new_task);
			}
			else
#endif
			{
				util[0]+=new_task.utill;
				dequeue_lock = 0;
				enqueue(&Core_Queue[0], new_task);

				Sort_By_EDF1(Core_Queue[0].queue_count, &Core_Queue[0]);
			}
		}
	}
	/* ======================================================================== */
	/* =============== schedule task   			                 ============== */
	/* ============== if task's priority is low, suspend the task ============= */
	/* ======================================================================== */
	if(is_empty(&Core_Queue[0]) == 0)
	{
		// enable task
		task_temp = read_queue_front(&Core_Queue[0]);
		task_active[0] = 1;


	}
#endif
#if MODE_RM
	{
		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{

			task_temp = read_queue_front(&priority[idx]);

			active_flag = 0;
			for(idx2=0;idx2<PQ_SIZE;idx2=idx2+1)
			{
				if(task_count_0[idx2]!=0)
				{
					task_active[0]++;
					active_flag = 1;
				}
			}
			if(active_flag == 0){
				task_active[0] = 0;
				memset(&bf_task[0], 0, sizeof(task_info));
			}
			if(task_active[0] > 1){
				if(bf_task[0].task_num == 0)
				{
					bf_task[0] = task_temp;
				}
				else if((bf_task[0].task_num > task_temp.task_num))
				{
					//pre_cnt++;
					//if(pre_cnt>=2){
						//printf_SysLog("__0PREMP__\r\n");
						priority[idx].queue_premp++;
						bf_task[0] = task_temp;
				}
			}
			else
			{
				bf_task[0] = task_temp;
			}

			break;
		}
		else
		{

		}
	}
#endif

#if MODE_LLF
	{

		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{
			// enable task
			dequeue_lock = 1;

			new_task = dequeue(&priority[idx]);
			//get_task_info(&new_task);
			//sprintf(temp_string,"_utill_%d\r\n",util[0]+new_task.utill);
			//printf_SysLog(temp_string);

#if MODE_EDFRM
			 //======== EDF-RM =============
			if(util[0]+new_task.utill > 81*time_offset3)
			{
				enqueue(&priority[idx], new_task);
				break;
			}
			else
#endif
			{
				util[0]+=new_task.utill;
				dequeue_lock = 0;
				enqueue(&Core_Queue[0], new_task);

			}
		}
	}
	/* ======================================================================== */
	/* =============== schedule task   			                 ============== */
	/* ============== if task's priority is low, suspend the task ============= */
	/* ======================================================================== */
	if(is_empty(&Core_Queue[0]) == 0)
	{
		// enable task
		Sort_By_LLF(Core_Queue[0].queue_count, &Core_Queue[0]);
		task_temp = read_queue_front(&Core_Queue[0]);
		task_active[0] = 1;
		//Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_--;


		//CAN0_DataTx[7] = task_temp.task_num;
		//IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
		//IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);
	}
#endif




	/* ============================================================ */
	/* =============== run TASK            ========================= */
	/* ============================================================ */
	//response
	/*
	if(task_temp.task_num!=0){
		CAN0_DataTx[7] = task_temp.task_num;
		IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
		IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);
	}
	*/

	switch(task_temp.task_num)
	{

		case 0:
			break;

		case 1:
			//_Task1(state, );
			//printf_SysLog("Task1\r\n");
#if task_Print0
			sprintf(temp_string,"%d,TASK1\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[0]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[0]){
#if task_Print0
				printf_SysLog("END TASK1*\r\n");
#endif
				task_count_0[0] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 2:
			//_Task2(state, );
#if task_Print0
			sprintf(temp_string,"%d,TASK2\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[1]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[1]){
#if task_Print0
				printf_SysLog("END TASK2*\r\n");
#endif
				task_count_0[1] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 3:
			//_Task3(state, );
#if task_Print0
			sprintf(temp_string,"%d,TASK3\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif


			task_count_0[2]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[2]){
#if task_Print0
				printf_SysLog("END TASK3*\r\n");
#endif



				task_count_0[2] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 4:
			//_Task4(state, );
#if task_Print0
			sprintf(temp_string,"%d,TASK4\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[3]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[3]){
#if task_Print0
				printf_SysLog("END TASK4*\r\n");
#endif
				task_count_0[3] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;
				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 5:
			//_Task4(state, );
#if task_Print0
			sprintf(temp_string,"%d,TASK5\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif

			task_count_0[4]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[4]){
#if task_Print0
				printf_SysLog("END TASK5*\r\n");
#endif

				task_count_0[4] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;
				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		case 6:
			//_Task4(state, );
#if task_Print0
			sprintf(temp_string,"%d,TASK6\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[5]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[5]){
#if task_Print0
				printf_SysLog("END TASK6*\r\n");
#endif
				task_count_0[5] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		case 7:
			//_Task4(state, );
#if task_Print0
			sprintf(temp_string,"%d,ATASK1\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[6]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[6]){
#if task_Print0
				printf_SysLog("END ATASK1*\r\n");
#endif
				task_count_0[6] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		case 8:
			//_Task4(state, );
#if task_Print0
			sprintf(temp_string,"%d,ATASK2\r\n",task_temp.deadline_);
			printf_SysLog(temp_string);
#endif
			task_count_0[7]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_0[7]){
#if task_Print0
				printf_SysLog("END ATASK2*\r\n");
#endif
				task_count_0[7] = 0;
				set_end_task(&Core_Queue[0]);
				task_end_0[task_temp.task_num] = 1;

				task_dead_count_0[task_temp.task_num]=0;
			}
			if( task_temp.deadline_ == 5005){
				Core_Queue[0].queue_deadmiss++;//[task_temp.task_num-1]++;
				Core_Queue[0].task_info[(Core_Queue[0].front+1)% MAX_QUEUE_SIZE].deadline_++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		default:

			break;
	}

	/* ============================================================ */
	/* =============== run deadcount      ========================= */
	/* ============================================================
	if(task_count_0[0]!=0) task_dead_count_0[0]++;
	if(task_count_0[1]!=0) task_dead_count_0[1]++;
	if(task_count_0[2]!=0) task_dead_count_0[2]++;
	if(task_count_0[3]!=0) task_dead_count_0[3]++;
	if(task_count_0[4]!=0) task_dead_count_0[4]++;
	if(task_count_0[5]!=0) task_dead_count_0[5]++;
	if(task_count_0[6]!=0) task_dead_count_0[6]++;
	if(task_count_0[7]!=0) task_dead_count_0[7]++;*/


	increase_deadline(&Core_Queue[0]);
	for(idx=1;idx<PQ_SIZE;idx=idx+1)
	{
		if(task_count_0[idx-1]!=0)
		{
			task_dead_count_0[idx]++;
		}
	}



	//sprintf(temp_string,"flag_%d_task_%d\r\n",active_flag, task_active[0]);
	//printf_SysLog(temp_string);

	/* ============================================================ */
	/* =============== check ongoing task ========================= */
	/* ========== if now task was ended, dequeue the task ========= */
	/* ============================================================ */
#if MODE_EDFRM || MODE_EDF || MODE_LLF
	if(is_empty(&Core_Queue[0])==0)
	{

		task_temp = read_queue_front(&Core_Queue[0]);
		//if(task_temp.end_flag == 1)
		if(task_end_0[task_temp.task_num] == 1)
		{
			util[0]= (util[0]-task_temp.utill>200)? 0 : util[0]-task_temp.utill;
			printf_SysLog("c0\r\n");
			task_end_0[task_temp.task_num] = 0;
			dequeue(&Core_Queue[0]);

			CAN0_DataTx[1] = Core_Queue[0].queue_premp;
			CAN0_DataTx[2] = Core_Queue[0].queue_full;
			CAN0_DataTx[3] = Core_Queue[0].queue_end;
			CAN0_DataTx[4] = Core_Queue[0].queue_deadmiss;
			CAN0_DataTx[5] = RQ_LR;

			CAN0_DataTx[7] = task_temp.task_num;
			IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
			IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);


			sprintf(temp_string,"P%d M%d\r\n",Core_Queue[0].queue_premp,Core_Queue[0].queue_deadmiss);
			printf_SysLog(temp_string);
		}
	}

#else

	for(idx=1;idx<PQ_SIZE;idx=idx+2)
	{
		if(is_empty(&priority[idx])==0)
		{
			task_temp = read_queue_front(&priority[idx]);
			//if(task_temp.end_flag == 1)
			if(task_end_0[task_temp.task_num] == 1)
			{
				printf_SysLog("c0\r\n");
				task_end_0[task_temp.task_num] = 0;
				dequeue(&priority[idx]);
				CAN0_DataTx[1] = priority[1].queue_premp + priority[3].queue_premp + priority[5].queue_premp;
				CAN0_DataTx[2] = priority[1].queue_full + priority[3].queue_full + priority[5].queue_full;
				CAN0_DataTx[3] = priority[1].queue_end + priority[3].queue_end + priority[5].queue_end;
				CAN0_DataTx[4] = Core_Queue[0].queue_deadmiss;
				CAN0_DataTx[5] = RQ_LR;
				CAN0_DataTx[7] = task_temp.task_num;

				IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
				IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);

				sprintf(temp_string,"P%d/M%d\r\n",CAN0_DataTx[1],CAN0_DataTx[4]);
				printf_SysLog(temp_string);
			}
		}
	}
#endif

}


void Runn01(void)
{
	//To do : Cyclic processing in Core0(Loop by System timer.)
}


void Runn10(void)
{
	//To do : Cyclic processing in Core1(Loop by System timer.)

}


void Runn11(void)
{
	//To do : Cyclic processing in Core1(Loop by System timer.)
}

void Runn20(void)
{
	//To do : Cyclic processing in Core0(Loop by System timer.)
	uint8 idx, idx2, edf_sort_end, consistancy;
	task_info task_temp, new_task;
	volatile uint8 active_flag=0;


	memset(&new_task, 0, sizeof(task_info));
	memset(&task_temp, 0, sizeof(task_info));

	//_core1
	/* ======================================================================== */
	/* =============== Dequeue from Priority Queue               ============== */
	/* ============== And schedule by EDF                        ============== */
	/* ======================================================================== */
	//for(idx=PQ_SIZE;idx>0;idx=idx-1) // task 2, 4
	//for(idx=0;idx<PQ_SIZE;idx=idx+1) //
	for(idx=0;idx<PQ_SIZE;idx=idx+2) // task 2, 4
	//for(idx=1;idx<PQ_SIZE;idx=idx+2)
#if MODE_EDFRM || MODE_EDF
	{

		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{
			// enable task
			dequeue_lock = 1;

			new_task = dequeue(&priority[idx]);
			//get_task_info(&new_task);
			//sprintf(temp_string,"_utill_%d\r\n",util[0]+new_task.utill);
			//printf_SysLog(temp_string);


#if MODE_EDFRM
			 //======== EDF-RM =============
			if(util[1]+new_task.utill > 81*time_offset3)
			{
				enqueue(&priority[idx], new_task);
			}
			else
#endif

			{
				util[1]+=new_task.utill;
				dequeue_lock = 0;

				enqueue(&Core_Queue[1], new_task);

				Sort_By_EDF1(Core_Queue[1].queue_count, &Core_Queue[1]);
			}
		}
	}

	/* ======================================================================== */
	/* =============== schedule task   			                 ============== */
	/* ============== if task's priority is low, suspend the task ============= */
	/* ======================================================================== */
	if(is_empty(&Core_Queue[1]) == 0)
	{
		// enable task
		task_temp = read_queue_front(&Core_Queue[1]);
		task_active[1] = 1;

		//CAN0_DataTx[7] = task_temp.task_num;
		//IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
		//IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);
		//CAN0_DataTx[7] = 0;
	}
#endif
#if MODE_RM
	{
		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{



			task_temp = read_queue_front(&priority[idx]);

			//CAN0_DataTx[0] = 1;
			//CAN0_DataTx[7] = task_temp.task_num;
			//IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
			//IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);
			//CAN0_DataTx[7] = 0;


			active_flag = 0;
			for(idx2=0;idx2<PQ_SIZE;idx2=idx2+1)
			{

				if(task_count_1[idx2]!=0)
				{
					task_active[1]++;
					active_flag = 1;

				}
			}
			if(active_flag == 0){
				task_active[1] = 0;
				memset(&bf_task[1], 0, sizeof(task_info));
			}
			//sprintf(temp_string,"F%d_A%d\r\n",active_flag,task_active[1]);
			//printf_SysLog(temp_string);
			if(task_active[1] > 1)
			{
				//sprintf(temp_string,"B%d_T%d\r\n",bf_task[1].task_num,task_temp.task_num);
				//printf_SysLog(temp_string);
				if(bf_task[1].task_num == 0)
				{
					bf_task[1] = task_temp;
				}
				else
				if((bf_task[1].task_num > task_temp.task_num))
				{
					//pre_cnt++;
					//if(pre_cnt>=2){
						//printf_SysLog("__1PREMP__\r\n");
						priority[idx].queue_premp++;
						bf_task[1] = task_temp;
				}
			}
			else
			{
				bf_task[1] = task_temp;
			}
			//CAN0_DataTx[7] = task_temp.task_num;
			//IO_set_CAN_msgObject(CAN_Tx_msgObj_0, CAN_A, 11, 8, FALSE);
			//IO_Send_CAN(CAN_Tx_msgObj_0, CAN0_DataTx, 8);
			//CAN0_DataTx[7] = 0;
			break;
		}
		else
		{

		}
	}

#endif

#if MODE_LLF
	{

		if((is_empty(&priority[idx]) == 0))// && (dequeue_lock == 0))
		{
			// enable task
			dequeue_lock = 1;

			new_task = dequeue(&priority[idx]);
			//get_task_info(&new_task);
			//sprintf(temp_string,"_utill_%d\r\n",util[0]+new_task.utill);
			//printf_SysLog(temp_string);

#if MODE_EDFRM
			 //======== EDF-RM =============
			if(util[1]+new_task.utill > 81*time_offset3)
			{
				enqueue(&priority[idx], new_task);
			}
			else
#endif
			{
				util[1]+=new_task.utill;
				dequeue_lock = 0;
				enqueue(&Core_Queue[1], new_task);

				Sort_By_LLF(Core_Queue[1].queue_count, &Core_Queue[1]);
			}
		}
	}
	/* ======================================================================== */
	/* =============== schedule task   			                 ============== */
	/* ============== if task's priority is low, suspend the task ============= */
	/* ======================================================================== */
	if(is_empty(&Core_Queue[1]) == 0)
	{
		// enable task
		task_temp = read_queue_front(&Core_Queue[1]);
		task_active[1] = 1;

	}
#endif

	/* ============================================================ */
	/* =============== run TASK            ========================= */
	/* ============================================================ */


	switch(task_temp.task_num)
	{
		case 1:
			//_Task1(state, );
			//printf_SysLog("Task1\r\n");
#if task_Print1
			sprintf(temp_string,"%d,TASK1\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif


			task_count_1[0]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[0]){
#if task_Print1
				printf_SysLog("END TASK1*\r\n");
#endif
				task_count_1[0] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;



				//CAN_DataTx[2] = 2;
				//IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 13, 8, FALSE);
				//IO_Send_CAN(CAN_Tx_msgObj_1, CAN_DataTx, 8);

				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 2:
			//_Task2(state, );
#if task_Print1
			sprintf(temp_string,"%d,TASK2\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif


			task_count_1[1]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[1]){
#if task_Print1
				printf_SysLog("END TASK2*\r\n");
#endif


				task_count_1[1] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;


				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 3:
			//_Task3(state, );
#if task_Print1
			sprintf(temp_string,"%d,TASK3\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif



			task_count_1[2]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[2]){
#if task_Print1
				printf_SysLog("END TASK3*\r\n");
#endif


				task_count_1[2] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;

				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 4:
			//_Task4(state, );
#if task_Print1
			sprintf(temp_string,"%d,TASK4\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif
			task_count_1[3]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[3]){
#if task_Print1
				printf_SysLog("END TASK4*\r\n");
#endif
				task_count_1[3] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;
				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;
		case 5:
			//_Task4(state, );
#if task_Print1
			sprintf(temp_string,"%d,TASK5\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif
			task_count_1[4]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[4]){
#if task_Print1
				printf_SysLog("END TASK5*\r\n");
#endif
				task_count_1[4] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;
				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		case 6:
			//_Task4(state, );
#if task_Print1
			sprintf(temp_string,"%d,TASK6\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif
			task_count_1[5]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[5]){
#if task_Print1
				printf_SysLog("END TASK6*\r\n");
#endif
				task_count_1[5] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;
				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;


		case 7:
			//_Task4(state, );
#if task_Print1
			sprintf(temp_string,"%d,ATASK1\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif
			task_count_1[6]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[6]){
#if task_Print1
				printf_SysLog("END ATASK1*\r\n");
#endif
				task_count_1[6] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;

				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline + 1 == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;

		case 8:
			//_Task4(state, );
#if task_Print1
			sprintf(temp_string,"%d,ATASK2\r\n",task_dead_count_1[task_temp.task_num]);
			printf_SysLog(temp_string);
#endif
			task_count_1[7]++;
			delay_ms(time_offset);
			if( task_temp.end_of_count < task_count_1[7]){
#if task_Print1
				printf_SysLog("END ATASK2*\r\n");
#endif
				task_count_1[7] = 0;
				set_end_task(&Core_Queue[1]);
				task_end_1[task_temp.task_num] = 1;

				task_dead_count_1[task_temp.task_num]=0;
			}
			if( task_temp.deadline == task_dead_count_1[task_temp.task_num]){
				Core_Queue[1].queue_deadmiss++;//[task_temp.task_num-1]++;
				printf_SysLog("***miss***\r\n");
			}
			break;


		default:
			break;
	}


	/* ============================================================ */
	/* =============== run deadcount      ========================= */
	/* ============================================================ */

	increase_deadline(&Core_Queue[1]);
	for(idx=1;idx<PQ_SIZE;idx=idx+1)
	{
		if(task_count_1[idx-1]!=0)
		{
			task_dead_count_1[idx]++;
		}
	}


	/* ============================================================ */
	/* =============== check ongoing task ========================= */
	/* ========== if now task was ended, dequeue the task ========= */
	/* ============================================================ */
#if MODE_EDF || MODE_EDFRM || MODE_LLF
	if(is_empty(&Core_Queue[1])==0)
	{
		task_temp = read_queue_front(&Core_Queue[1]);
		//if(task_temp.end_flag == 1)
		if(task_end_1[task_temp.task_num] == 1)
		{
			util[1]= (util[1]-task_temp.utill>200)? 0 : util[1]-task_temp.utill;
			printf_SysLog("c1\r\n");
			task_end_1[task_temp.task_num] = 0;
			dequeue(&Core_Queue[1]);
			CAN1_DataTx[1] = Core_Queue[1].queue_premp;
			CAN1_DataTx[2] = Core_Queue[1].queue_full;
			CAN1_DataTx[3] = Core_Queue[1].queue_end;
			CAN1_DataTx[4] = Core_Queue[1].queue_deadmiss;

			CAN1_DataTx[7] = task_temp.task_num;
			IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 13, 8, FALSE);
			IO_Send_CAN(CAN_Tx_msgObj_1, CAN1_DataTx, 8);

			//sprintf(temp_string,"C1_%d\r\n",Core_Queue[1].queue_full);
			//printf_SysLog(temp_string);
		}
	}
#else

	for(idx=0;idx<PQ_SIZE;idx=idx+2)
	{
		if(is_empty(&priority[idx])==0)
		{
			task_temp = read_queue_front(&priority[idx]);
			//if(task_temp.end_flag == 1)
			if(task_end_1[task_temp.task_num] == 1)
			{
				printf_SysLog("c1\r\n");
				task_end_1[task_temp.task_num] = 0;
				dequeue(&priority[idx]);

				CAN1_DataTx[1] = priority[2].queue_premp + priority[4].queue_premp + priority[6].queue_premp +  priority[0].queue_premp;
				CAN1_DataTx[2] = priority[2].queue_full + priority[4].queue_full  + priority[6].queue_full + priority[0].queue_full;
				CAN1_DataTx[3] = priority[2].queue_end + priority[4].queue_end  + priority[6].queue_end + priority[0].queue_end;
				CAN1_DataTx[4] = Core_Queue[1].queue_deadmiss;
				CAN1_DataTx[5] = RQ_LR;

				CAN1_DataTx[7] = task_temp.task_num;
				IO_set_CAN_msgObject(CAN_Tx_msgObj_1, CAN_B, 13, 8, FALSE);
				IO_Send_CAN(CAN_Tx_msgObj_1, CAN1_DataTx, 8);
			}
		}
	}
#endif

/*
	if(priority[0].task_info[priority[0].front+1].task_num != 0){
	sprintf(temp_string,"p0_%d\r\n",priority[0].task_info[priority[0].front+1].task_num);
	printf_SysLog(temp_string);
	}
	if(priority[0].task_info[priority[0].front+2].task_num != 0){
	sprintf(temp_string,"p1_%d\r\n",priority[0].task_info[priority[0].front+2].task_num);
	printf_SysLog(temp_string);
	}
	if(priority[0].task_info[priority[0].front+3].task_num != 0){
	sprintf(temp_string,"p2_%d\r\n",priority[0].task_info[priority[0].front+3].task_num);
	printf_SysLog(temp_string);
	}
	if(priority[0].task_info[priority[0].front+4].task_num != 0){
	sprintf(temp_string,"p3_%d\r\n",priority[0].task_info[priority[0].front+4].task_num);
	printf_SysLog(temp_string);
	}
*/
	/*
	if(priority[0].task_info[priority[0].front+1].task_num != 0){
	sprintf(temp_string,"p0_%d\r\n",priority[0].task_info[priority[0].front+1].task_num);
	printf_SysLog(temp_string);

	if(priority[1].task_info[priority[0].front+1].task_num != 0){
	sprintf(temp_string,"p1_%d\r\n",priority[1].task_info[priority[1].front+1].task_num);
	printf_SysLog(temp_string);
	}
	if(priority[2].task_info[priority[0].front+1].task_num != 0){
	sprintf(temp_string,"p2_%d\r\n",priority[2].task_info[priority[2].front+1].task_num);
	printf_SysLog(temp_string);
	}
	if(priority[3].task_info[priority[0].front+1].task_num != 0){
	sprintf(temp_string,"p3_%d\r\n",priority[3].task_info[priority[3].front+1].task_num);
	printf_SysLog(temp_string);
	}
	*/
}


void Runn21(void)
{
	//To do : Cyclic processing in Core2(Loop by System timer.)

}


/* Communication Parameter Settings ------------------------------------------*/
/* CAN DB Settings -----------------------------------------------------------*/
void Set_CAN_DB(void)
{
	// Maker's comment (Jaewan Park) :
	// "This is example of CAN database settings."
	// "In first, you have to declare a CAN database object pCAN_msg." (Ex : msgValue1)
	// "This case, 8 signals (4, 4, 16, 16, 4, 6, 10, 4 bit size), 8 DLC, and etc."
	msgValue1 = set_CAN_DB_msgObject(CAN_Tx_msgObj_0, CAN_A, 0x405, 8, 4, 100.0, 100.0);
	msgValue1.dSig[0] = Set_CAN_Sig(  0, 16, 0, 1.0, 0.0);
	msgValue1.dSig[1] = Set_CAN_Sig( 16, 16, 0, 1.0, 0.0);
	msgValue1.dSig[2] = Set_CAN_Sig( 32, 16, 0, 1.0, 0.0);
	msgValue1.dSig[3] = Set_CAN_Sig( 48, 16, 0, 1.0, 0.0);

	msgValue2 = set_CAN_DB_msgObject(CAN_Tx_msgObj_1, CAN_A, 0x406, 8, 4, 100.0, 100.0);
	msgValue2.dSig[0] = Set_CAN_Sig(  0, 16, 0, 1.0, 0.0);
	msgValue2.dSig[1] = Set_CAN_Sig( 16, 16, 0, 1.0, 0.0);
	msgValue2.dSig[2] = Set_CAN_Sig( 32, 16, 0, 1.0, 0.0);
	msgValue2.dSig[3] = Set_CAN_Sig( 48, 16, 0, 1.0, 0.0);

	msgValue3 = set_CAN_DB_msgObject(CAN_Tx_msgObj_2, CAN_A, 0x407, 4, 4, 100.0, 100.0);
	msgValue3.dSig[0] = Set_CAN_Sig(  0,  8, 0, 1.0, 0.0);
	msgValue3.dSig[1] = Set_CAN_Sig(  8,  8, 0, 1.0, 0.0);
	msgValue3.dSig[2] = Set_CAN_Sig( 16,  8, 0, 1.0, 0.0);
	msgValue3.dSig[3] = Set_CAN_Sig( 24,  8, 0, 1.0, 0.0);
}


void fnc_test1(void)
{
	IO_setByte_LED(0xF0);
	delay_ms(1000);
	IO_setByte_LED(0x0F);
	delay_ms(1000);
}

void fnc_test2(void)
{
	IO_setByte_LED(0xE0);
	delay_ms(1000);
	IO_setByte_LED(0x0E);
	delay_ms(1000);
}

void fnc_test3(void)
{
	IO_setByte_LED(0x70);
	delay_ms(1000);
	IO_setByte_LED(0x07);
	delay_ms(1000);
}

void fnc_test4(void)
{
	IO_setByte_LED(0x30);
	delay_ms(1000);
	IO_setByte_LED(0x03);
	delay_ms(1000);
}

void fnc_test5(void)
{
	IO_setByte_LED(0x10);
	delay_ms(1000);
	IO_setByte_LED(0x01);
	delay_ms(1000);
}

void fnc_test6(void)
{

}

void fnc_test7(void)
{

}

void fnc_test8(void)
{

}


void fnc_QSPI_test(void)
{

		testDataTx[ 8] = 0xFF;
		testDataTx[ 9] = 0xFF;
		testDataTx[10] = 0xFF;

		printf_SysLog("Running test Tx: ---- %02x %02x%02x%02x%02x %02x ",
						testDataTx[2],
						testDataTx[3],
						testDataTx[4],
						testDataTx[5],
						testDataTx[6],
						testDataTx[7]
						);
		set_SPI_MISO(1);
		f_SPI_MISO(1);
		qspi0_data_communication(3, testDataTx, testDataRx, 8);
		f_SPI_MISO(0);
		delay_tic(1);
		set_SPI_MISO(0);
		testDataTx[0] = 0xFF;
		testDataTx[1] = 0xFF;
		testDataTx[2] = 0xFF;
		testDataTx[3] = 0xFF;
		testDataTx[4] = 0xFF;
		testDataTx[5] = 0xFF;
		qspi0_data_communication(4, testDataTx, testDataRx, 6);
		printf_SysLog("--> Rx: %02x %02x %02x %02x %02x\n\r",
						testDataRx[1],
						testDataRx[2],
						testDataRx[3],
						testDataRx[4],
						testDataRx[5]
						);




}










