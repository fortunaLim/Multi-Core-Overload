/*
 * Device_IF_UltraSonic.c
 *
 *  Created on: 2018. 11. 26.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Peripherals_SCUERU.h"
#include "Peripherals_PWM.h"





/* Initialize Device of UltraSonic Sensor ------------------------------------*/
void IO_set_UltraSonic(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for Push Button Switch line. ----------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_UltraSonic Sensor\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for External IO Input Interrupt ---------------------------*/
	setPort_SCUERU02();
	/* IO Settings for Trigger Input for UltraSonic Sensor -------------------*/
	setPWM_26(10000, 99, 1);

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/


unsigned int IO_get_USvalue(void)
{
	return get_USvalue();
}
