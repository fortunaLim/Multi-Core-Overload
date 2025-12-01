/*
 * SysTools_Queue.h
 *
 *  Created on: 2020. 2. 26.
 *      Author: JW_Park
 */

#ifndef SYSTOOLS_QUEUE_H_
#define SYSTOOLS_QUEUE_H_

#define NULL 0

typedef struct Q_node Q_node_ptr;
typedef struct Q_node
{
	int data;
	Q_node_ptr *prev_Link, *next_Link;
}Q_node_ptr;

typedef struct Q_head
{
	int num;
	Q_node_ptr *primary;
}Q_head_ptr;

void initQueue(Q_head_ptr *head);
void enQueue(Q_head_ptr *head, Q_node_ptr *pre, int data);
void deQueue(Q_head_ptr *head, Q_node_ptr *old);
int outQueue(Q_head_ptr *head);
//void initialize_queue(void);
//int insert_queue(int process_id,int priority);
//int delete_queue(int target_id);


#endif /* SYSTOOLS_QUEUE_H_ */
