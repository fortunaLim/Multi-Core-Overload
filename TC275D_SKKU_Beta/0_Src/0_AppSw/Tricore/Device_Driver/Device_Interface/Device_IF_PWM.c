/*
 * Device_IF_PWM.c
 *
 *  Created on: 2018. 12. 3.
 *      Author: JW_Park
 */

#include "Device_IF.h"
#include "Peripherals_PWM.h"

/* Initialize Device of PWM --------------------------------------------------*/
void IO_set_PWM(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for PWM line. -------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_PWM\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for PWM ---------------------------------------------------*/
	setPort_GTM_ATOM_PWM();

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/


/* Set Port for Stepper Motor ------------------------------------------------*/
void IO_setPort_StepperMotor(unsigned int freq, char direction)
{
	/* Input	: Frequency and Direction. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: PWM setting. -----------------------------------------------*/

	if(direction)
	{
		setPWM_20(freq, 50, 0);
		setPWM_21(freq, 50, 0);
		setPWM_22(freq, 50, 1);
		setPWM_23(freq, 50, 1);
	}
	else
	{
		setPWM_20(freq, 50, 0);
		setPWM_21(freq, 50, 1);
		setPWM_22(freq, 50, 1);
		setPWM_23(freq, 50, 0);
	}
}
/*----------------------------------------------------------------------------*/

/* Set Port for Trigger Signal of UltraSonic Sensor --------------------------*/
void IO_setPort_UltraSonic_Trig(void)
{
	setPWM_26(10000, 99, 1);
}
/*----------------------------------------------------------------------------*/
