/**
 * \file AsclinAscDemo.h
 * \brief Demo AsclinAscDemo
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
 *
 * \defgroup IfxLld_Demo_AsclinAsc_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_AsclinAsc_SrcDoc
 * \defgroup IfxLld_Demo_AsclinAsc_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_AsclinAsc_SrcDoc_Main
 */

#ifndef PERIPHERALS_PWM
#define PERIPHERALS_PWM 1

#include "Configuration.h"
#include "SysSe/Bsp/Bsp.h"
#include "Gtm/Atom/PwmHl/IfxGtm_Atom_PwmHl.h"

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void setPort_GTM_ATOM_PWM(void);
IFX_EXTERN void setPWM_20(unsigned int freq, unsigned int duty, char pole);
IFX_EXTERN void setPWM_21(unsigned int freq, unsigned int duty, char pole);
IFX_EXTERN void setPWM_22(unsigned int freq, unsigned int duty, char pole);
IFX_EXTERN void setPWM_23(unsigned int freq, unsigned int duty, char pole);
IFX_EXTERN void setPWM_26(unsigned int freq, unsigned int duty, char pole);
#endif
