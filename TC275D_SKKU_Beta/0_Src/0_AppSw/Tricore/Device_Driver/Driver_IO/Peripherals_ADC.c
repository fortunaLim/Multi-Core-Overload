/*
 * Peripherals_ADC.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#include "Peripherals.h"
#include "Peripherals_ADC.h"


/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_VadcAutoScan pADC0;
App_VadcAutoScan pADC1;

IfxVadc_Adc_ChannelConfig adcChannelConfig0[8];
IfxVadc_Adc_Channel       adcChannel0[8];
IfxVadc_Adc_ChannelConfig adcChannelConfig1[6];
IfxVadc_Adc_Channel       adcChannel1[6];

/******************************************************************************/
#if ADC_Module /*-------------------- ADC_Module ----------------------------*/
/******************************************************************************/
void setPort_ADC0(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Initialize ADC module. -------------------------------------*/

    /* VADC Configuration -----------------------------------------------------*/

    /* create configuration ---------------------------------------------------*/
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    /* initialize module ------------------------------------------------------*/
    IfxVadc_Adc_initModule(&pADC0.vadc, &adcConfig);

    /* create group config ----------------------------------------------------*/
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &pADC0.vadc);

    /* with group 1 -----------------------------------------------------------*/
    adcGroupConfig.groupId = IfxVadc_GroupId_0;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable scan source -----------------------------------------------------*/
    adcGroupConfig.arbiter.requestSlotScanEnabled = TRUE;

    /* enable auto scan -------------------------------------------------------*/
    adcGroupConfig.scanRequest.autoscanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) ------------------*/
    adcGroupConfig.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group ---------------------------------------------------*/
    IfxVadc_Adc_initGroup(&pADC0.adcGroup, &adcGroupConfig);
    /*-------------------------------------------------------------------------*/
}

void setPort_ADC1(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Initialize ADC module. -------------------------------------*/

    /* VADC Configuration -----------------------------------------------------*/

    /* create configuration ---------------------------------------------------*/
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    /* initialize module ------------------------------------------------------*/
    IfxVadc_Adc_initModule(&pADC1.vadc, &adcConfig);

    /* create group config ----------------------------------------------------*/
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &pADC1.vadc);

    /* with group 1 -----------------------------------------------------------*/
    adcGroupConfig.groupId = IfxVadc_GroupId_1;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable scan source -----------------------------------------------------*/
    adcGroupConfig.arbiter.requestSlotScanEnabled = TRUE;

    /* enable auto scan -------------------------------------------------------*/
    adcGroupConfig.scanRequest.autoscanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) ------------------*/
    adcGroupConfig.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group ---------------------------------------------------*/
    IfxVadc_Adc_initGroup(&pADC1.adcGroup, &adcGroupConfig);
    /*-------------------------------------------------------------------------*/
}

void setPort_ADCstart0(void)
{
	/* Input	: Do not care. -----------------------------------------------*/
	/* Output	: ADC values. ------------------------------------------------*/
	/* Jobs		: Get ADC values. --------------------------------------------*/

	/* create channel configuration -------------------------------------------*/
	uint32	chnIx;
	for (chnIx = 0; chnIx < 8; ++chnIx)
	{
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig0[chnIx], &pADC0.adcGroup);
		adcChannelConfig0[chnIx].channelId      = (IfxVadc_ChannelId)(chnIx);
		adcChannelConfig0[chnIx].resultRegister = (IfxVadc_ChannelResult)(chnIx);  /* use dedicated result register */
		/* initialize the channel */
		IfxVadc_Adc_initChannel(&adcChannel0[chnIx], &adcChannelConfig0[chnIx]);
		/* add to scan */
		unsigned channels = (1 << adcChannelConfig0[chnIx].channelId);
		unsigned mask     = channels;
		IfxVadc_Adc_setScan(&pADC0.adcGroup, channels, mask);
	}
	/* Start AutoScan ---------------------------------------------------------*/
	IfxVadc_Adc_startScan(&pADC0.adcGroup);
}

void setPort_ADCstart1(void)
{
	/* Input	: Do not care. -----------------------------------------------*/
	/* Output	: ADC values. ------------------------------------------------*/
	/* Jobs		: Get ADC values. --------------------------------------------*/

	/* create channel configuration -------------------------------------------*/
	uint32	chnIx;
	for (chnIx = 0; chnIx < 5; ++chnIx)
	{
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig1[chnIx], &pADC1.adcGroup);
		adcChannelConfig1[chnIx].channelId      = (IfxVadc_ChannelId)(chnIx);
		adcChannelConfig1[chnIx].resultRegister = (IfxVadc_ChannelResult)(chnIx);  /* use dedicated result register */
		/* initialize the channel */
		IfxVadc_Adc_initChannel(&adcChannel1[chnIx], &adcChannelConfig1[chnIx]);
		/* add to scan */
		unsigned channels = (1 << adcChannelConfig1[chnIx].channelId);
		unsigned mask     = channels;
		IfxVadc_Adc_setScan(&pADC1.adcGroup, channels, mask);
	}
	/* Start AutoScan ---------------------------------------------------------*/
	IfxVadc_Adc_startScan(&pADC1.adcGroup);
}

unsigned int getValue_ADC(int num_module, int num_channel)
{
	/* Input	: Number of ADC module(0,1) & channel(0~7). ------------------*/
	/* Output	: ADC values. ------------------------------------------------*/
	/* Jobs		: Get ADC values. --------------------------------------------*/

	Ifx_VADC_RES conversionResult;

	if(num_module == 0)
	{
		do	/* Wait for valid result ---------------------------------------------*/
		{
			conversionResult = IfxVadc_Adc_getResult(&adcChannel0[num_channel]);
		} while (!conversionResult.B.VF);
	}
	else if(num_module == 1)
	{
		do	/* Wait for valid result ---------------------------------------------*/
		{
			conversionResult = IfxVadc_Adc_getResult(&adcChannel1[num_channel]);
		} while (!conversionResult.B.VF);
	}

	uint32 actual = conversionResult.B.RESULT;

	return actual;
}
/******************************************************************************/
#else if !ADC_Module /*-------------- ADC_Module dummy ----------------------*/
/******************************************************************************/
void setPort_ADC0(void){}
void setPort_ADC1(void){}
void setPort_ADCstart0(void){}
void setPort_ADCstart1(void){}
unsigned int getValue_ADC(int num_module, int num_channel){return 0;}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/





