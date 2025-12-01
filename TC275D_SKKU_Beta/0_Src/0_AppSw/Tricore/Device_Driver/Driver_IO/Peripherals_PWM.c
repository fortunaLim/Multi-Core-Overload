/**
 * \file GtmAtomPwmHlDemo.c
 * \brief Demo GtmAtomPwmHlDemo
 *
 * \version iLLD_Demos_1_0_0_11_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "Peripherals.h"
#include "Peripherals_PWM.h"
#include "Peripherals_UART.h"

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/


typedef enum
{
    GtmAtomPwmHl_State_init = 0,
    GtmAtomPwmHl_State_off,
    GtmAtomPwmHl_State_duty0,
    GtmAtomPwmHl_State_duty50,
    GtmAtomPwmHl_State_duty100,
    GtmAtomPwmHl_State_count
}GtmAtomPwmHl_State;


typedef struct
{
    struct
    {
        float32            gtmFreq;
        float32            gtmGclkFreq;
        float32            gtmCmuClk0Freq; /**< \brief CMU CLK 0 frequency*/
        GtmAtomPwmHl_State state;
        Ifx_TickTime       stateDeadline;
    }info;
    struct
    {
        IfxGtm_Atom_Timer timer;        /**< \brief Timer driver */
        IfxGtm_Atom_PwmHl pwm;
    }drivers;
    struct
    {
        uint32 slotTimer;
    }isrCounter;
} App_GtmAtomPwmHl;

App_GtmAtomPwmHl pGTM_ATOM_PWM; /**< \brief Demo information */

/******************************************************************************/
#if PWM_Module /*-------------------- PWM_Module -----------------------------*/
/******************************************************************************/

/* Initialize PWM module */
void setPort_GTM_ATOM_PWM(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Initialize PWM module. -------------------------------------*/

    /** - GTM clocks */
    Ifx_GTM *gtm = &MODULE_GTM;

    /* disable interrupts */
    boolean  interruptState = IfxCpu_disableInterrupts();
    pGTM_ATOM_PWM.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
    IfxGtm_enable(gtm);

    /* Set the global clock frequencies */
    IfxGtm_Cmu_setGclkFrequency(gtm, pGTM_ATOM_PWM.info.gtmFreq);
    pGTM_ATOM_PWM.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);
    IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_7, pGTM_ATOM_PWM.info.gtmGclkFreq);
    pGTM_ATOM_PWM.info.gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency(gtm, IfxGtm_Cmu_Clk_7, TRUE);

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);
    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK7);
}



void setPWM_20(unsigned int freq, unsigned int duty, char pole)
{
	/* Input	: Frequency, Duty cycle and Pole. ----------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Timer setting. ---------------------------------------------*/
    {
    	/* GTM TOM configuration */

        IfxGtm_Atom_Timer_Config timerConfig;
        Ifx_TimerValue offset = 0;

        IfxGtm_Atom_Timer_initConfig1(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = freq;
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.atom                            = IfxGtm_Atom_2;
        timerConfig.timerChannel                    = IfxGtm_Atom_Ch_0;
        timerConfig.clock                           = IfxGtm_Cmu_Clk_7;

        timerConfig.triggerOut                      = &IfxGtm_ATOM2_0_TOUT18_P00_9_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        timerConfig.base.startOffset 				= offset;
        timerConfig.base.trigger.triggerPoint       = (1000000/freq)*duty;
        timerConfig.base.trigger.risingEdgeAtPeriod = FALSE;

        IfxGtm_Atom_Timer_init(&pGTM_ATOM_PWM.drivers.timer, &timerConfig);

        GTM_ATOM2_CH0_CTRL.B.SL = pole;

        IfxGtm_Atom_Timer_run(&pGTM_ATOM_PWM.drivers.timer);
        //IfxGtm_Atom_Timer_stop(&pGTM_ATOM_PWM.drivers.timer);
    }
}

void setPWM_21(unsigned int freq, unsigned int duty, char pole)
{
	/* Input	: Frequency, Duty cycle and Pole. ----------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Timer setting. ---------------------------------------------*/
    {
    	/* GTM ATOM configuration */

        IfxGtm_Atom_Timer_Config timerConfig;
        Ifx_TimerValue offset = 0;

        IfxGtm_Atom_Timer_initConfig1(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = freq;
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.atom                            = IfxGtm_Atom_2;
        timerConfig.timerChannel                    = IfxGtm_Atom_Ch_1;
        timerConfig.clock                           = IfxGtm_Cmu_Clk_7;

        timerConfig.triggerOut                      = &IfxGtm_ATOM2_1_TOUT19_P00_10_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        //timerConfig.base.startOffset 				= offset;
        timerConfig.base.trigger.triggerPoint       = (1000000/freq)*duty;
        timerConfig.base.trigger.risingEdgeAtPeriod = FALSE;

        IfxGtm_Atom_Timer_init(&pGTM_ATOM_PWM.drivers.timer, &timerConfig);

        GTM_ATOM2_CH1_CTRL.B.SL = pole;

        IfxGtm_Atom_Timer_run(&pGTM_ATOM_PWM.drivers.timer);
        //IfxGtm_Atom_Timer_stop(&pGTM_ATOM_PWM.drivers.timer);
    }
}


void setPWM_22(unsigned int freq, unsigned int duty, char pole)
{
	/* Input	: Frequency, Duty cycle and Pole. ----------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Timer setting. ---------------------------------------------*/
    {
    	/* GTM ATOM configuration */

        IfxGtm_Atom_Timer_Config timerConfig;
        Ifx_TimerValue offset = 0;

        IfxGtm_Atom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = freq;
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.atom                            = IfxGtm_Atom_2;
        timerConfig.timerChannel                    = IfxGtm_Atom_Ch_2;
        timerConfig.clock                           = IfxGtm_Cmu_Clk_7;

        timerConfig.triggerOut                      = &IfxGtm_ATOM2_2_TOUT20_P00_11_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        timerConfig.base.startOffset 				= offset;
        timerConfig.base.trigger.triggerPoint       = (1000000/freq)*duty;
        timerConfig.base.trigger.risingEdgeAtPeriod = FALSE;

        IfxGtm_Atom_Timer_init(&pGTM_ATOM_PWM.drivers.timer, &timerConfig);

        GTM_ATOM2_CH2_CTRL.B.SL = pole;

        IfxGtm_Atom_Timer_run(&pGTM_ATOM_PWM.drivers.timer);
        //IfxGtm_Atom_Timer_stop(&pGTM_ATOM_PWM.drivers.timer);
    }
}

void setPWM_23(unsigned int freq, unsigned int duty, char pole)
{
	/* Input	: Frequency, Duty cycle and Pole. ----------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Timer setting. ---------------------------------------------*/
    {
    	/* GTM ATOM configuration */

        IfxGtm_Atom_Timer_Config timerConfig;
        Ifx_TimerValue offset = 0;

        IfxGtm_Atom_Timer_initConfig1(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = freq;
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.atom                            = IfxGtm_Atom_2;
        timerConfig.timerChannel                    = IfxGtm_Atom_Ch_3;
        timerConfig.clock                           = IfxGtm_Cmu_Clk_7;

        timerConfig.triggerOut                      = &IfxGtm_ATOM2_3_TOUT21_P00_12_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        //timerConfig.base.startOffset 				= offset;
        timerConfig.base.trigger.triggerPoint       = (1000000/freq)*duty;
        timerConfig.base.trigger.risingEdgeAtPeriod = FALSE;

        IfxGtm_Atom_Timer_init(&pGTM_ATOM_PWM.drivers.timer, &timerConfig);

        GTM_ATOM2_CH3_CTRL.B.SL = pole;

        IfxGtm_Atom_Timer_run(&pGTM_ATOM_PWM.drivers.timer);
        //IfxGtm_Atom_Timer_stop(&pGTM_ATOM_PWM.drivers.timer);
    }
}


void setPWM_26(unsigned int freq, unsigned int duty, char pole)
{
	/* Input	: Frequency, Duty cycle and Pole. ----------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Timer setting. ---------------------------------------------*/
    {
    	/* GTM ATOM configuration */

    	IfxGtm_Atom_Timer_Config timerConfig;
        Ifx_TimerValue offset = 0;

        IfxGtm_Atom_Timer_initConfig1(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = freq;
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.atom                            = IfxGtm_Atom_2;
        timerConfig.timerChannel                    = IfxGtm_Atom_Ch_6;
        timerConfig.clock                           = IfxGtm_Cmu_Clk_7;

        timerConfig.triggerOut                      = &IfxGtm_ATOM2_6_TOUT62_P20_6_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        //timerConfig.base.startOffset 				= offset;
        timerConfig.base.trigger.triggerPoint       = (1000000/freq)*duty;
        timerConfig.base.trigger.risingEdgeAtPeriod = FALSE;

        IfxGtm_Atom_Timer_init(&pGTM_ATOM_PWM.drivers.timer, &timerConfig);

        GTM_ATOM2_CH3_CTRL.B.SL = pole;

        IfxGtm_Atom_Timer_run(&pGTM_ATOM_PWM.drivers.timer);
        //IfxGtm_Atom_Timer_stop(&pGTM_ATOM_PWM.drivers.timer);
    }
}

/******************************************************************************/
#else if !PWM_Module /*-------------------- PWM_Module dummy -----------------*/
/******************************************************************************/
void setPort_GTM_ATOM_PWM() {}
void setPWM_20(unsigned int freq, unsigned int duty, char pole) {}
void setPWM_21(unsigned int freq, unsigned int duty, char pole) {}
void setPWM_22(unsigned int freq, unsigned int duty, char pole) {}
void setPWM_23(unsigned int freq, unsigned int duty, char pole) {}
void setPWM_26(unsigned int freq, unsigned int duty, char pole) {}

/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/


