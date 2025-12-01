/*
 * Peripherals_ADC.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#ifndef PERIPHERALS_ADC_H_
#define PERIPHERALS_ADC_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Vadc/Std/IfxVadc.h>
#include <Vadc/Adc/IfxVadc_Adc.h>

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    IfxVadc_Adc vadc; /* VADC handle */
    IfxVadc_Adc_Group adcGroup;
} App_VadcAutoScan;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void setPort_ADC0(void);
void setPort_ADC1(void);
void setPort_ADCstart0(void);
void setPort_ADCstart1(void);
unsigned int getValue_ADC(int num_module, int num_channel);

#endif /* PERIPHERALS_ADC_H_ */
