/*
 * Device_IF_PWM.h
 *
 *  Created on: 2018. 12. 3.
 *      Author: JW_Park
 */

#ifndef DEVICE_IF_PWM_H_
#define DEVICE_IF_PWM_H_




void IO_set_PWM(void);
void IO_setPort_StepperMotor(unsigned int freq, char direction);
void IO_setPort_UltraSonic_Trig(void);
#endif /* DEVICE_IF_PWM_H_ */
