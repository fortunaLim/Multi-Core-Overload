/*
 * Device_IF_ADC.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Peripherals_ADC.h"

/* Initialize Device of ADC --------------------------------------------------*/
void IO_set_ADC(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for ADC line. -------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_ADC\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	setPort_ADC0();
	setPort_ADC1();
	setPort_ADCstart0();
	setPort_ADCstart1();

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}



int IO_ADC_getValue(int module, int channel)
{
	return getValue_ADC(module, channel);
}

int IO_ADC_getValueCurrent(void)
{
	int result, input[2];

	input[0] = getValue_ADC(0, 0);
	input[1] = getValue_ADC(0, 1);
	result = (input[0] + input[1]) / 2;
	return result;
}

int IO_ADC_getValueBNC(int channel)
{
	int result, input[3];

	if(channel == 0)
	{
		input[0] = getValue_ADC(0, 4);
		input[1] = getValue_ADC(0, 5);

		result = (((input[0] + input[1]) / 2) - 1300) * 1.4649499284;
		//input[2] = getValue_ADC(0, 2);
		//result = (input[0] + input[1] + input[2]) / 3;

		return result;
	}
	else if(channel == 1)
	{
		input[0] = getValue_ADC(0, 6);
		input[1] = getValue_ADC(0, 7);

		result = (((input[0] + input[1]) / 2) - 1300) * 1.4649499284;
		//input[2] = getValue_ADC(0, 3);
		//result = (input[0] + input[1] + input[2]) / 3;



		return result;
	}

	else	return -1;
}

int IO_ADC_getValueVR(void)
{
	int result, input[2];

	input[0] = getValue_ADC(1, 0);
	input[1] = getValue_ADC(1, 2);
	result = (input[0] + input[1]) / 2;
	return result;
}

int IO_ADC_getValueIR(void)
{
	int result, input[2];

	input[0] = getValue_ADC(1, 3);
	input[1] = getValue_ADC(1, 4);
	result = (input[0] + input[1]) / 2;
	return result;
}
