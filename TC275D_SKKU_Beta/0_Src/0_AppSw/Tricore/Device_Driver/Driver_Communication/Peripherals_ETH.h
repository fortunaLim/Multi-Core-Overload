/*
 * Peripherals_ETH.h
 *
 *  Created on: 2018. 8. 11.
<<<<<<< HEAD
 *      Author: HW_JIN 0966
=======
 *      Author: HW_Jin
>>>>>>> branch 'master' of https://github.com/pjw9307/EvaluationToolkit-AURIX-TriCore-TC275.git
 */

#ifndef PERIPHERALS_ETH_H_
#define PERIPHERALS_ETH_H_


#include <Ifx_Types.h>
#include "Configuration.h"
#include "Cpu/Std/IfxCpu.h"

#include <Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h>

#include "System_ISR_Priority.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define HEADER_SIZE 14
#define MASTER	 0
#define SLAVE	 1
//#define MEMORY_TRANSFER_NUM_WORDS 1024
#define ETH_pre	2
static Ifx_P * const portLED = (Ifx_P *)&MODULE_P33;
extern int tem;
//static Ifx_STM * const stm = (Ifx_STM *)&MODULE_STM0;
/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \brief Asc information */
typedef struct
{
    struct
    {
        IfxEth eth;                      /**< \brief ETH interface */
    }drivers;
} App_Eth;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_Eth g_Eth;
extern uint8 messageType;
extern uint8* pRxBuf;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

void setPort_ETH(void);
void setFrame_ETH(uint8 *buf);
void EthISR(void);
IFX_EXTERN void printf_ETH(uint8 *SRC_MAC, uint8 *DES_MAC, uint8 *ETH_TYPE, char *fmt, ...);

#endif /* PERIPHERALS_ETH_H_ */
