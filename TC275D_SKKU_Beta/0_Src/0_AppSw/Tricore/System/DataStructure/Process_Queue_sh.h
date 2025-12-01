/*
 * Process_Queue_sh.h
 *
 *  Created on: 2022. 6. 8.
 *      Author: Jonghun Kim
 */

#ifndef PROCESS_QUEUE_H_
#define PROCESS_QUEUE_H_

#include "Frame_Define.h"

#define MAX_QUEUE_SIZE 8


/*-------- struct -----------*/
typedef struct _task_info
{
	volatile uint8 task_num, utill;
	uint8 data[8];
	uint16 rm_priority;
	uint16 edf_priority;
	volatile uint32 deadline;
	volatile uint32 deadline_;
	volatile uint32 end_of_count;
	uint16 DLC;
	unsigned int process_time;
	uint32 time_capture;
	volatile boolean end_flag;
}task_info;

typedef struct _QueueType {
	task_info task_info[MAX_QUEUE_SIZE];
	uint32 front, rear;
	volatile uint32 queue_count;
	volatile uint32 queue_full;
	volatile uint32 queue_end;
	volatile uint32 queue_premp;
	volatile uint32 queue_deadmiss;
}QueueType;

typedef enum _Task_Num
{
	Task1 = 1,
	Task2,
	Task3,
	Task4,
	Task5,
	Task6,
	ATask1,
	ATask2
}Task_Num;

/*-------- function -----------*/
void init_queue(QueueType* q);
int is_empty(QueueType* q);
int is_full(QueueType* q);
void enqueue(QueueType* q, task_info task_data);
void enqueue_front(QueueType* q, task_info task_data);
void enqueue_offset(QueueType* q, task_info task_data, int offset);
task_info dequeue(QueueType* q);
task_info read_queue_front(QueueType* q);
void print_queue(QueueType* q);
void get_task_info(task_info *in_task);
task_info read_queue_offset(QueueType* q, int offset);
void set_end_task(QueueType* q);
task_info dequeue_back(QueueType* q);
void Sort_By_EDF(int idx, int PQ_SIZE,QueueType *priority);
void Sort_By_EDF1(int idx,QueueType *q);
void Sort_By_LLF(int idx,QueueType *q);
void increase_deadline(QueueType *q);
#endif /* PROCESS_QUEUE_H_ */
