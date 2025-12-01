/*
 * Device_IF_ADC.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#ifndef DEVICE_IF_ADC_H_
#define DEVICE_IF_ADC_H_

#include <Ifx_Types.h>
#include "IfxPort_regdef.h"
#include "IfxPort_reg.h"


void IO_set_ADC(void);
int IO_ADC_getValue(int module, int channel);
int IO_ADC_getValueCurrent(void);
int IO_ADC_getValueBNC(int channel);
int IO_ADC_getValueVR(void);
int IO_ADC_getValueIR(void);


#endif /* DEVICE_IF_ADC_H_ */
