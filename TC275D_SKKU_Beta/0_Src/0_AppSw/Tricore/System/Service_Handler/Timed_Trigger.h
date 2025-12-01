/*
 * ISR.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#ifndef ISR_H_
#define ISR_H_

#define normal_state 0
#define sort_state 1
#define move_pre_state 2
#define move_next_state 3
#define del_state 4
#define goto_first_state 5
#define insert_first_state 6
#define insert_pre_state 7
#define insert_next_state 8
#define del_state 9


void ServiceHandler_STM00(void);
void ServiceHandler_STM01(void);
void ServiceHandler_STM10(void);
void ServiceHandler_STM11(void);
void ServiceHandler_STM20(void);
void ServiceHandler_STM21(void);

#endif /* ISR_H_ */
