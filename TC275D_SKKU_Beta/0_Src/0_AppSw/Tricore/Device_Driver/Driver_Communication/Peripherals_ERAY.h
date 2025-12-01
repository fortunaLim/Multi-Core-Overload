/*
 * Peripherals_ERAY.h
 *
 *  Created on: 2018. 11. 8.
 *      Author: Ton (Supported by Mr.Vinh)
 *      		modified by JW_Park.
 */

#ifndef PERIPHERALS_ERAY_H_
#define PERIPHERALS_ERAY_H_


#include <Ifx_Types.h>
#include <Eray/Eray/IfxEray_Eray.h>
#include "Configuration.h"
#include "Application.h"

#define FR_NODE_0	Application_GateWay
#define FR_NODE_1	Application_SensorTemp
#define FR_NODE_2	Application_SensorTorq
#define NUMBER_ERAY_COMM_CYCLES 63   /*Number of tested communication cycles*/
#if FR_NODE_0
#define NO_OF_SLOTS             10   /*Number of slots configured*/
#endif

#if FR_NODE_1
#define NO_OF_SLOTS             8   /*Number of slots configured*/
#endif

#if FR_NODE_2
#define NO_OF_SLOTS             2   /*Number of slots configured*/
#endif

#if !(FR_NODE_0+FR_NODE_1+FR_NODE_2)
#define NO_OF_SLOTS				0
#endif
typedef struct
{
    IfxEray_Eray             eray;                                     /**< \brief Eray handle */
    IfxEray_Eray_Config     erayModuleConfig;                         /**< \brief Eray module Configuration structure */
    IfxEray_Eray_NodeConfig nodeConfig;                               /**< \brief Eray Node Configuration structure */
    volatile unsigned       ndatCount;                                /**< \brief received data (new data) */
     volatile unsigned       errors;                                   /**< \brief error interrupt counter */

    uint32     receivedData[NUMBER_ERAY_COMM_CYCLES][NO_OF_SLOTS]; /**< \brief received data in slots */

} App_Eray;

IFX_EXTERN App_Eray g_Eray;

IFX_EXTERN void IfxErayDemo_init(void);
IFX_EXTERN void IfxErayDemo_run(void);
IFX_EXTERN void Print_Flexray(App_Eray *eray_pointer, uint32 *data, uint8 buffer_ID);
void ERAY_irqNdat1Handler(void);
void Print_Flexray(App_Eray *eray_pointer, uint32 *data, uint8 buffer_ID);
#endif /* PERIPHERALS_ERAY_H_ */
