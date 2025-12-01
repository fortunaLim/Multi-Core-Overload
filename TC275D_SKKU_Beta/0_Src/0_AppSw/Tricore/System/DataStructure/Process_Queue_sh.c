/*
 * Process_Queue.c
 *
 *  Created on: 2022. 6. 8.
 *      Author: J.H.Kim
 */

#include "Process_Queue_sh.h"
#include "Peripherals_UART.h"
//여기 수정함

extern char temp_string[30];
int time_offset2 = 8;

//큐 초기화
void init_queue(QueueType* q) {
	q->front = q->rear = 0;
	q->queue_count = 0;
}

//큐가 비어 있는지 확인
int is_empty(QueueType* q) {
	//printf_SysLog("empty");
	return (q->front == q->rear);
}

//큐가 가득 찼는지 확인
int is_full(QueueType* q) {
	//printf_SysLog("full\r\n");
	return (q->front == ((q->rear+1)%MAX_QUEUE_SIZE));
}

//큐가 가득 차 있는지 확인 후 삽입 연산
//OK
void enqueue(QueueType* q, task_info task_data) {
	if (is_full(q)) {
		printf_SysLog("enqueue_full\r\n");
		q->queue_full++;
		//delay_ms(3);
		//sprintf(temp_string,"idx=%d\r\n",task_data.rm_priority);
		//printf_SysLog(temp_string);
	}
	else {
		q->queue_count++;
		q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
		q->task_info[q->rear] = task_data;

	}
}

//OK
void enqueue_front(QueueType* q, task_info task_data)
{
	uint16 idx,i = 0;
	if (is_full(q)) {
		printf_SysLog("Queue is full \n");
		delay_ms(3);
	}
	else {
		//printf_SysLog("enqueue_front\r\n");
		q->task_info[q->front] = task_data;
		q->front = (q->front - 1) % MAX_QUEUE_SIZE;
		q->queue_count++;
	}
}

void enqueue_offset(QueueType* q, task_info task_data, int offset)//zero base
{
	uint32 idx = 0;
	if (is_full(q))
	{
		printf_SysLog("Queue is full \n");
	}
	else if((q->front+1+offset)% MAX_QUEUE_SIZE == q->rear) //offset full
	{
		printf_SysLog("Offset is full \n");
	}
	else
	{
		//printf_SysLog("enqueue_ofs\r\n");
		q->queue_count++;
		q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;

		do
		{
			q->task_info[((q->rear)-idx)% MAX_QUEUE_SIZE] = q->task_info[((q->rear)-idx-1)% MAX_QUEUE_SIZE];
			idx++;
		}while(((q->front)+1+offset)% MAX_QUEUE_SIZE != ((q->rear-idx))% MAX_QUEUE_SIZE);
		q->task_info[(q->front+1+offset)% MAX_QUEUE_SIZE] = task_data;
		//sprintf(temp_string,"idx=%d\r\n",idx);
		//printf_SysLog(temp_string);
	}
}

//큐가 비어 있는지 확인 후 삭제 연산
//OK
task_info dequeue(QueueType* q) {
	task_info task_temp;
	memset(&task_temp, 0, sizeof(task_info)); //if system is not working, maybe here can have problem
	if (is_empty(q)==1) {
		//printf_SysLog("empty\r\n");
		return task_temp;
	}
	else {
		//printf_SysLog("dequeue\r\n");
		//task_temp = q->task_info[q->front];
		q->queue_end++;
		q->front = (q->front + 1) % MAX_QUEUE_SIZE;
		q->queue_count--;
		task_temp = q->task_info[q->front];
		memset(&(q->task_info[q->front]), 0, sizeof(task_info)); //if system is not working, maybe here can have problem
		return task_temp;
	}
}

task_info dequeue_back(QueueType* q) {
	task_info task_temp;
	memset(&task_temp, 0, sizeof(task_info)); //if system is not working, maybe here can have problem
	if (is_empty(q)==1) {
		//printf_SysLog("empty\r\n");
		return task_temp;
	}
	else {
		//printf_SysLog("dequeue\r\n");
		//task_temp = q->task_info[q->front];
		q->queue_count--;
		task_temp = q->task_info[q->rear];
		memset(&(q->task_info[q->rear]), 0, sizeof(task_info)); //if system is not working, maybe here can have problem
		q->rear = (q->rear - 1) % MAX_QUEUE_SIZE;
		return task_temp;
	}
}

//큐의 모든 요소 출력
//OK
task_info read_queue_front(QueueType* q) {
	/*
	task_info temp;
	memset(&temp, 0, sizeof(task_info)); //if system is not working, maybe here can have problem

	if (is_empty(q)) {
		printf_SysLog("empty");
		return temp;
	}
	else {
		//printf_SysLog("read");
		//return q->task_info[q->front];
	}
	*/
	//printf_SysLog("rd_ft");
	if (is_empty(q)) {
		//printf_SysLog("q_empty\r\n");
	}
	return q->task_info[(q->front + 1) % MAX_QUEUE_SIZE];
}

task_info read_queue_offset(QueueType* q, int offset) {
	task_info temp;
	memset(&temp, 0, sizeof(task_info)); //if system is not working, maybe here can have problem
	if (is_empty(q)) {
		//printf("Empty Queue \n");
	}
	else {
		//printf_SysLog("read_ofs");
		return q->task_info[(q->front + 1 + offset) % MAX_QUEUE_SIZE];
	}

	return temp;
}

//큐의 모든 요소 출력
void print_queue(QueueType* q) {
	if (is_empty(q)) {
		//printf("Empty Queue \n");
	}
	else {
		printf_SysLog("Queue:\n");
		if (!is_empty(q)) {
			int i = q->front;
			do {
				i = (i + 1) % MAX_QUEUE_SIZE;
				sprintf(temp_string,"_%d\r\n", q->task_info[i].deadline_);
				printf_SysLog(temp_string);
				if (i == q->rear)
					break;
			} while (i != q->front);
			printf_SysLog("P_END");
		}
	}
}

void set_end_task(QueueType* q)
{
	q->task_info[q->front+1].end_flag = 1;
}


void get_task_info(task_info *in_task)
{

	switch(in_task->task_num){// it can be changed by mfc
		case Task1://task1
			in_task->deadline = 80;
			in_task->end_of_count = (uint32)10*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("1");
			break;
		case Task2://task2
			in_task->deadline = 175;
			in_task->end_of_count = (uint32)20*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("2");
			break;
		case Task3://task3
			in_task->deadline = 390;
			in_task->end_of_count = (uint32)30*time_offset2;
			in_task->utill = (uint32)8*time_offset2;
			//printf_SysLog("3");
			break;
		case Task4://task4
			in_task->deadline = 820;
			in_task->end_of_count = (uint32)40*time_offset2;
			in_task->utill = (uint32)5*time_offset2;
			//printf_SysLog("4");
			break;
		case Task5://task5
			in_task->deadline = 1580;
			in_task->end_of_count = (uint32)50*time_offset2;
			in_task->utill = (uint32)3*time_offset2;
			//printf_SysLog("5");
			break;
		case Task6://task6
			in_task->deadline = 3170;
			in_task->end_of_count = (uint32)60*time_offset2;
			in_task->utill = (uint32)1*time_offset2;
			break;
		case ATask1:// ATask1
			in_task->deadline = 100;
			in_task->end_of_count = (uint32)15*time_offset2;
			in_task->utill = (uint32)2*time_offset2;
			break;
		case ATask2:// ATask2
			in_task->deadline = 250;
			in_task->end_of_count = (uint32)25*time_offset2;
			in_task->utill = (uint32)1*time_offset2;
			break;
		default:
			break;
		//delay_ms(1);
	}
	in_task->deadline_ = 5000 - in_task->deadline + in_task->end_of_count;
}

/*
void get_task_info(task_info *in_task)
{

	switch(in_task->task_num){// it can be changed by mfc
		case Task1://task1
			in_task->deadline = 10*time_offset2;
			in_task->end_of_count = (uint32)10*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("1");
			break;
		case Task2://task2
			in_task->deadline = 213;
			in_task->end_of_count = (uint32)20*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("2");
			break;
		case Task3://task3
			in_task->deadline = 300;
			in_task->end_of_count = (uint32)10*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("3");
			break;
		case Task4://task4
			in_task->deadline = 110;
			in_task->end_of_count = (uint32)20*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("4");
			break;
		case Task5://task5
			in_task->deadline = 105;
			in_task->end_of_count = (uint32)10*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			//printf_SysLog("5");
			break;
		case Task6://task6
			in_task->deadline = 950;
			in_task->end_of_count = (uint32)20*time_offset2;
			in_task->utill = (uint32)11*time_offset2;
			break;
		case ATask1:// ATask1
			in_task->deadline = 100;
			in_task->end_of_count = (uint32)15*time_offset2;
			in_task->utill = (uint32)2*time_offset2;
			break;
		case ATask2:// ATask2
			in_task->deadline = 250;
			in_task->end_of_count = (uint32)25*time_offset2;
			in_task->utill = (uint32)1*time_offset2;
			break;
		default:
			break;
		//delay_ms(1);
	}
	in_task->deadline_ = 5000 - in_task->deadline + in_task->end_of_count;
}
*/
void Sort_By_EDF(int idx, int PQ_SIZE,QueueType *priority)
{
	//for(idx=0;idx<PQ_SIZE-1;idx++)
	uint32 f, b;

	task_info task_temp;
	f = priority[idx].task_info[priority[idx].rear].deadline_;
	b = priority[idx+1].task_info[priority[idx+1].rear].deadline_+ priority[idx+1].task_info[priority[idx+1].rear].deadline;

	//sprintf(temp_string,"idx%d\r\n", idx);
	//printf_SysLog(temp_string);
	if((PQ_SIZE-idx) == 1){
		//sprintf(temp_string,"f%d/b%d\r\n", f, b);
		//printf_SysLog(temp_string);
		return;
	}

	/*
	if( (priority[idx].task_info[priority[idx].rear].deadline_)
		<
		(priority[idx+1].task_info[priority[idx+1].rear].deadline_+ priority[idx+1].task_info[priority[idx+1].rear].deadline)
		)
	*/
	if(priority[idx].task_info[priority[idx].rear].deadline_ > priority[idx].task_info[priority[idx].front].deadline_)
	{
		task_temp = dequeue_back(&priority[idx]);
		enqueue_front(&priority[idx],task_temp);
		return;
	}

	if(f<b)
	{
		task_temp = dequeue_back(&priority[idx]);
		enqueue(&priority[idx+1],task_temp);

	}
	idx++;
	Sort_By_EDF(idx, PQ_SIZE, priority);
}


void Sort_By_EDF1(int idx,QueueType *q)
{
	uint8 i,j;
	task_info task_temp;
	task_info a, b;
	task_info be, af;

	be = q->task_info[(q->front+1)%MAX_QUEUE_SIZE];

	for (i = 0; i < idx; i++) {
		for (j = 0; j < (idx - 1) - i; j++) {
			a = q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE];
			b = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE];
			if (a.deadline > b.deadline)
			{	// 버블 정렬 사용
				task_temp = q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE];
				q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE] = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE];
				b = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE] = task_temp;
			}
		}
	}

	af = q->task_info[(q->front+1)%MAX_QUEUE_SIZE];
	if(be.task_num!=af.task_num)
	{
		q->queue_premp++;
		//sprintf(temp_string,"__%dprem\r\n", af.rm_priority);
		//printf_SysLog(temp_string);
	}

	/*
		if(idx==1) return;

		// bubble sort
		// https://marinelifeirony.tistory.com/67
		for(i=0;i<idx-1;i++)
		{
			a = q->task_info[(q->front+1+i)%MAX_QUEUE_SIZE];
			b = q->task_info[(q->front+2+i)%MAX_QUEUE_SIZE];
			if(a.deadline_ < b.deadline_)
			{
				//swap
				task_temp = a;
				a = b;
				b = task_temp;

			}
		}

		Sort_By_EDF1(idx-1, q);
	*/
}


void Sort_By_LLF(int idx,QueueType *q)
{
	uint8 i,j;
	task_info task_temp;
	task_info a, b;
	task_info be, af;

	be = q->task_info[(q->front+1)%MAX_QUEUE_SIZE];

	for (i = 0; i < idx; i++) {
		for (j = 0; j < (idx - 1) - i; j++) {
			a = q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE];
			b = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE];
			if (a.deadline_ < b.deadline_)
			{	// 버블 정렬 사용
				task_temp = q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE];
				q->task_info[(q->front+1+j)%MAX_QUEUE_SIZE] = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE];
				b = q->task_info[(q->front+2+j)%MAX_QUEUE_SIZE] = task_temp;
			}
		}
	}

	af = q->task_info[(q->front+1)%MAX_QUEUE_SIZE];
	if(be.task_num!=af.task_num)
	{
		q->queue_premp++;
		//sprintf(temp_string,"__%dprem\r\n", af.rm_priority);
		//printf_SysLog(temp_string);
	}
}
void increase_deadline(QueueType *q)
{
	uint8 i;
	/*
	if(q->task_info[(q->front+1)%MAX_QUEUE_SIZE].task_num != 0)
	{
		q->task_info[(q->front+1)%MAX_QUEUE_SIZE].deadline_ += 1;
	}
	*/
	for(i=1;i<q->queue_count;i++)
	{
		if(q->task_info[(q->front+1+i)%MAX_QUEUE_SIZE].task_num != 0)
			q->task_info[(q->front+1+i)%MAX_QUEUE_SIZE].deadline_ += 1;
	}
}
