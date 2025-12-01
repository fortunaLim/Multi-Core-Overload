/*
 * Peripherals_ERAY.c
 *
 *  Created on: 2018. 11. 8.
 *      Author: Ton (Supported by Mr.Vinh)
 *      		modified by JW_Park.
 */

#ifndef PERIPHERALS_ERAY_C_
#define PERIPHERALS_ERAY_C_

#include <stdio.h>
#include <string.h>
#include "Peripherals_ERAY.h"
#include "Ifx_Cfg.h"
App_Eray pERAY; /**< \brief Eray global data */
IfxEray_PocState pocState;

void ERAY_irqInt0Handler(void);
void ERAY_irqInt1Handler(void);
void ERAY_irqNdat1Handler(void);
extern void IfxCpu_Irq_installInterruptHandler(void *isrFuncPointer, uint32 serviceReqPrioNumber);


void ERAY_irqInt0Handler(void)
{
    /*Get the error interrupt flags*/
    Ifx_ERAY_EIR ErrIntStat = IfxEray_Eray_getErrorInterrupts(&pERAY.eray);

    /* Get the status interrupt flags*/
    Ifx_ERAY_SIR StatusIntStat = IfxEray_Eray_getStatusInterrupts(&pERAY.eray);

    if (StatusIntStat.B.SDS)
    {
        /* SDS must be cleared for getting the next interrupt   */
        IfxEray_Eray_clearStatusFlag(&pERAY.eray, IfxEray_ClearStatusFlag_sds);
    }

    if (StatusIntStat.B.CYCS)
    {
        /* CYCS must be cleared for getting the next interrupt   */
        IfxEray_Eray_clearStatusFlag(&pERAY.eray, IfxEray_ClearStatusFlag_cycs);
    }

    if (StatusIntStat.B.SUCS)
    {
        /* SUCS must be cleared for getting the next interrupt   */
        IfxEray_Eray_clearStatusFlag(&pERAY.eray, IfxEray_ClearStatusFlag_sucs);
    }

    if (StatusIntStat.B.TIBC)
    {
        /* TIBC must be cleared for getting the next interrupt   */
        IfxEray_Eray_clearStatusFlag(&pERAY.eray, IfxEray_ClearStatusFlag_tibc);
    }

    if (ErrIntStat.B.MHF)
    {
        pERAY.errors++;
        /* clear flag MHF */
        IfxEray_Eray_clearErrorFlag(&pERAY.eray, IfxEray_ClearErrorFlag_mhf);
    }
}

void ERAY_irqInt1Handler(void)
{
    /*Get the status interrupt flags*/
    Ifx_ERAY_SIR StatusIntStat = IfxEray_Eray_getStatusInterrupts(&pERAY.eray);

    if (StatusIntStat.B.TOBC)
    {
        /* TOBC must be cleared for getting the next interrupt */
        IfxEray_Eray_clearStatusFlag(&pERAY.eray, IfxEray_ClearStatusFlag_tobc);
    }
}


// use for send data by Flexray protocol
 void Print_Flexray(App_Eray *eray_pointer, uint32 *data, uint8 buffer_ID)
{
	IfxEray_Eray_writeData(&eray_pointer->eray, data , 2 * 4);

    IfxEray_Eray_TransmitControl 	config;
    config.headerTransfered  = FALSE;
    config.dataTransfered    = TRUE;
    config.transferRequested = TRUE;
    config.bufferIndex       = buffer_ID;
    IfxEray_Eray_transmitFrame(&eray_pointer->eray, &config);
}

void ERAY_irqNdat1Handler(void)
{
#if FR_NODE_0	// Node 1 RECEIVE data
uint32 Slot4_Data[64];
uint32 Slot9_Data[64];
unsigned count;
count=pERAY.ndatCount;
if (count < 64)
{
	if (IfxEray_Eray_getNewDataInterruptStatus(&pERAY.eray, 1) == 1)
	{
	// Begin: Node0 RECEIVE data in slot 4 from Node1, then SEND this data to Node1 in slot 3
		/*Node0: received data in slot 4, buffer ID = 3 from Node1*/
		{
			IfxEray_Eray_ReceiveControl config;
			config.headerReceived   = FALSE;
			config.dataReceived     = TRUE;
			config.receiveRequested = TRUE;
			config.swapRequested    = TRUE;
			config.bufferIndex      = 3;	// Node0, slot 4, buffer ID 3: RECEIVE
			IfxEray_Eray_receiveFrame(&pERAY.eray, &config);
			IfxEray_readData(pERAY.eray.eray, Slot4_Data, 2*4);
		}
		/* Node0 send data to Node1 in slot 3, buffer ID = 2*/
		Print_Flexray(&pERAY, Slot4_Data, 2);
//		{
//			IfxEray_Eray_writeData(&pERAY.eray, Slot4_Data, 2 * 4);
//			IfxEray_Eray_TransmitControl config;
//			config.headerTransfered  = FALSE;
//			config.dataTransfered    = TRUE;
//			config.transferRequested = TRUE;
//			config.bufferIndex       = 2;	// Node0, slot 3, buffer ID 2: SEND
//			IfxEray_Eray_transmitFrame(&pERAY.eray, &config);
//		}
	// End: Node0 RECEIVE data in slot 4, then SEND this data to Node1 in slot 3
/* --------------------------------------------------------------------------------------------------------- */
	// Begin: Node0 RECEIVE data in slot 9 from Node2, then SEND this data to Node2 in slot 10
		/*Node0: received data in slot 9, buffer ID = 8 from Node2*/
		{
			IfxEray_Eray_ReceiveControl config;
			config.headerReceived   = FALSE;
			config.dataReceived     = TRUE;
			config.receiveRequested = TRUE;
			config.swapRequested    = TRUE;
			config.bufferIndex      = 8;	// Node0, slot 9, buffer ID 8: RECEIVE
			IfxEray_Eray_receiveFrame(&pERAY.eray, &config);
			IfxEray_readData(pERAY.eray.eray, Slot9_Data, 2*4);
		}
		/* Node0 send data to Node2 in slot 10, buffer ID = 9*/
		{
			IfxEray_Eray_writeData(&pERAY.eray, Slot9_Data, 2 * 4);
			IfxEray_Eray_TransmitControl config;
			config.headerTransfered  = FALSE;
			config.dataTransfered    = TRUE;
			config.transferRequested = TRUE;
			config.bufferIndex       = 9;	// Node0, slot 10, buffer ID 9: SEND
			IfxEray_Eray_transmitFrame(&pERAY.eray, &config);
		}
	// End: Node0 RECEIVE data in slot 9 from Node2, then SEND this data to Node2 in slot 10

	}
}
#endif

#if FR_NODE_1		// Node 1 RECEIVE data

    unsigned count;
	count=pERAY.ndatCount;
	if (count < 64)
	{
		printf(" Node 1 receive Flexray\r\n");
	}
#endif

#if FR_NODE_2	// Node 2 RECEIVE data

    unsigned count;
	count=pERAY.ndatCount;
	if (count < 64)
	{
		printf(" Node 2 receive Flexray\r\n");
	}
#endif
}






/* FLEXRAY Configuration */


void setPort_ERAY(void)
{
    //printf("IfxErayDemo_init() called\n");

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    int     result         = 0;
    int     i;

    pERAY.ndatCount = 0;
    pERAY.errors    = 0;

    /*initialize Eray PLL*/
    //printf("Initialize ERAY PLL\n");
    {
        IfxScuCcu_ErayPllConfig ErayPllConfig;
        IfxScuCcu_initErayPllConfig(&ErayPllConfig);
        result |= IfxScuCcu_initErayPll(&ErayPllConfig);
    }

    /* create default module config. */
    //printf("Initialize ERAY0\n");
    IfxEray_Eray_initModuleConfig(&pERAY.erayModuleConfig, &MODULE_ERAY0);

    /*Supplied Module Config*/
    pERAY.erayModuleConfig.interrupt.int0Priority  = ISR_PRIORITY_ERAY_INT0;
    pERAY.erayModuleConfig.interrupt.int1Priority  = ISR_PRIORITY_ERAY_INT1;
    pERAY.erayModuleConfig.interrupt.ndat1Priority = ISR_PRIORITY_ERAY_NDAT1;
    pERAY.erayModuleConfig.interrupt.int0IsrProvider = ISR_PRIORITY_ERAY_ISR_Provider;

    IfxEray_Eray_initModule(&pERAY.eray, &pERAY.erayModuleConfig);

    /*create ERAY node default configuration*/
    IfxEray_Eray_Node_initConfig(&pERAY.nodeConfig);


//    IFX_INTERRUPT(ERAY_irqInt0Handler,  0, ISR_PRIORITY_ERAY_INT0);
//    IFX_INTERRUPT(ERAY_irqInt1Handler,  0, ISR_PRIORITY_ERAY_INT1);
//    IFX_INTERRUPT(ERAY_irqNdat1Handler, 0, ISR_PRIORITY_ERAY_NDAT1);

    IfxCpu_Irq_installInterruptHandler(ERAY_irqInt0Handler, ISR_PRIORITY_ERAY_INT0);
    IfxCpu_Irq_installInterruptHandler(ERAY_irqInt1Handler, ISR_PRIORITY_ERAY_INT1);
    IfxCpu_Irq_installInterruptHandler(ERAY_irqNdat1Handler, ISR_PRIORITY_ERAY_NDAT1);

    /* ERAY node supplied configurations*/
    /* Messages*/
#if FR_NODE_0
    pERAY.nodeConfig.messageRAMConfig.numberOfMessageBuffers = 10;
#endif

#if FR_NODE_1
    pERAY.nodeConfig.messageRAMConfig.numberOfMessageBuffers = 8;
#endif

#if FR_NODE_2
    pERAY.nodeConfig.messageRAMConfig.numberOfMessageBuffers = 2;
#endif
    pERAY.nodeConfig.messageRAMConfig.firstDynamicBuffer     = 0x80; // MRC.FDB, No dynamic Message Buffers configured
    pERAY.nodeConfig.messageRAMConfig.fifoBufferStartIndex   = 0x80; // MRC.FFB, No Message Buffers assigned to the FIFO

#if FR_NODE_0
    /*Frame header */
       IfxEray_Header     header[NO_OF_SLOTS] = {
   	/* fid cyc cha   chb   buffer direction                  ppit   transmission mode                    mbi   pl dp   startup sync*/
   		{1, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, TRUE,  IfxEray_TransmissionMode_continuous, TRUE, 4, 0x30, TRUE,  TRUE },
   		{2, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x40, TRUE, TRUE},
   		{3, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x50, FALSE, FALSE},
   		{4, 1, TRUE, TRUE, IfxEray_BufferDirection_receive, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x60, FALSE, FALSE},
   		{5, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x70, FALSE, FALSE},
   		{6, 1, TRUE, TRUE, IfxEray_BufferDirection_receive, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x80, FALSE, FALSE},
   		{7, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x90, FALSE, FALSE},
   		{8, 1, TRUE, TRUE, IfxEray_BufferDirection_receive, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0xA0, FALSE, FALSE},
   		{9, 1, TRUE, TRUE, IfxEray_BufferDirection_receive, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0xB0, FALSE, FALSE},
   		{10, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0xC0, FALSE, FALSE},

   	};

       	/* slot buffer transmit configuration */
       	IfxEray_SlotConfig slot[NO_OF_SLOTS] = {
           /* header data   stxrh bufferNum */
           {TRUE, TRUE,  TRUE,  0},		//slot ID = 1, buffer ID = 0, header ID = 0
           {TRUE, FALSE, TRUE,  1},		//slot ID = 2, buffer ID = 1, header ID = 1
           {TRUE, TRUE,  TRUE,  2},		//slot ID = 3, buffer ID = 2, header ID = 2
           {TRUE, FALSE, TRUE,  3},		//slot ID = 4, buffer ID = 3, header ID = 3
           {TRUE, TRUE,  TRUE,  4},		//slot ID = 5, buffer ID = 4, header ID = 4
           {TRUE, FALSE, TRUE,  5},		//slot ID = 6, buffer ID = 5, header ID = 5
           {TRUE, TRUE,  TRUE,  6},		//slot ID = 7, buffer ID = 6, header ID = 6
           {TRUE, FALSE, TRUE,  7},		//slot ID = 8, buffer ID = 7, header ID = 7
           {TRUE, FALSE, TRUE,  8},		//slot ID = 9, buffer ID = 8, header ID = 8
           {TRUE, TRUE, TRUE,  9},		//slot ID = 10, buffer ID = 9, header ID = 9
       };

       	//Node0: transfer data in slot 1,3,5,7, 10
           uint32 data_slot1[2]={11,11};
           uint32 data_slot3[2]={3,33};
           uint32 data_slot5[2]={5,55};
           uint32 data_slot7[2]={7,77};
           uint32 data_slot10[2]={10,1010};

           pERAY.nodeConfig.messageRAMConfig.data[0] = &data_slot1[0];
           pERAY.nodeConfig.messageRAMConfig.data[2] = &data_slot3[0];
           pERAY.nodeConfig.messageRAMConfig.data[4] = &data_slot5[0];
           pERAY.nodeConfig.messageRAMConfig.data[6] = &data_slot7[0];
           pERAY.nodeConfig.messageRAMConfig.data[9] = &data_slot10[0];
//		   buffer										slot
           for (i = 0; i < NO_OF_SLOTS; i++)
           {
               pERAY.nodeConfig.messageRAMConfig.header[i]      = &header[i];
               pERAY.nodeConfig.messageRAMConfig.slotControl[i] = &slot[i];
//               pERAY.nodeConfig.messageRAMConfig.data[i]        = NULL_PTR; //Remove data in all slots
           }


#endif

#if FR_NODE_1
	/*Frame header */
	IfxEray_Header     header[NO_OF_SLOTS] =
	{
		/* fid cyc cha   chb   buffer direction                  ppit   transmission mode                    mbi   pl dp   startup sync*/
		{2, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, TRUE,  IfxEray_TransmissionMode_continuous, TRUE, 4, 0x30, TRUE,  TRUE },
		{1, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x40, TRUE, TRUE},
		{3, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x50, FALSE, FALSE},
		{4, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x60, FALSE, FALSE},
		{5, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x70, FALSE, FALSE},
		{6, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x80, FALSE, FALSE},
		{7, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x90, FALSE, FALSE},
		{8, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0xA0, FALSE, FALSE},
	};

	/* slot buffer transmit configuration */
	IfxEray_SlotConfig slot[NO_OF_SLOTS] =
	{
	/* header data   stxrh bufferNum */
		{TRUE, TRUE,  TRUE,  0}, 	//slot ID = 2, buffer ID = 0, header ID = 0
		{TRUE, FALSE, TRUE,  1},	//slot ID = 1, buffer ID = 1, header ID = 1
		{TRUE, FALSE, TRUE,  2},	//slot ID = 3, buffer ID = 2, header ID = 2
		{TRUE, TRUE,  TRUE,  3},	//slot ID = 4, buffer ID = 3, header ID = 3
		{TRUE, FALSE, TRUE,  4},	//slot ID = 5, buffer ID = 4, header ID = 4
		{TRUE, TRUE,  TRUE,  5},	//slot ID = 6, buffer ID = 5, header ID = 5
		{TRUE, FALSE, TRUE,  6},	//slot ID = 7, buffer ID = 6, header ID = 6
		{TRUE, TRUE,  TRUE,  7},	//slot ID = 8, buffer ID = 7, header ID = 7
	};
	//Node1: transfer data in slot 2,4,6,8
	uint32 data_slot2[2]={2,22};
	uint32 data_slot4[2]={4,44};
	uint32 data_slot6[2]={6,66};
	uint32 data_slot8[2]={8,88};

	pERAY.nodeConfig.messageRAMConfig.data[1] = &data_slot2[0];
	pERAY.nodeConfig.messageRAMConfig.data[3] = &data_slot4[0];
	pERAY.nodeConfig.messageRAMConfig.data[5] = &data_slot6[0];
	pERAY.nodeConfig.messageRAMConfig.data[7] = &data_slot8[0];
	// Buffer									 slot

	for (i = 0; i < NO_OF_SLOTS; i++)
	{
		pERAY.nodeConfig.messageRAMConfig.header[i]      = &header[i];
		pERAY.nodeConfig.messageRAMConfig.slotControl[i] = &slot[i];
		//pERAY.nodeConfig.messageRAMConfig.data[i]        = NULL_PTR; //Remove data in all slots
	}
#endif

#if FR_NODE_2
           /*Frame header */
             IfxEray_Header     header[NO_OF_SLOTS] = {
         	/* fid cyc cha   chb   buffer direction                  ppit   transmission mode                    mbi   pl dp   startup sync*/
         		{9, 1, TRUE, TRUE, IfxEray_BufferDirection_transmit, TRUE,  IfxEray_TransmissionMode_continuous, TRUE, 4, 0x30, TRUE,  TRUE },
         		{10, 1, TRUE, TRUE, IfxEray_BufferDirection_receive,  FALSE, IfxEray_TransmissionMode_continuous, TRUE, 4, 0x40, TRUE, TRUE},
         	};

             /* slot buffer transmit configuration */
             IfxEray_SlotConfig slot[NO_OF_SLOTS] = {
                 /* header data   stxrh bufferNum */
                 {TRUE, TRUE, TRUE,   0}, 	//slot ID = 9, buffer ID = 0, header ID = 0
                 {TRUE, FALSE, TRUE,  1},	//slot ID = 10, buffer ID = 1, header ID = 1
             };

                        uint32 data_slot9[2]={9,99};

                        pERAY.nodeConfig.messageRAMConfig.data[0] = &data_slot9[0];
                        // Buffer 									 slot
                 for (i = 0; i <2; i++)
                 {
                     pERAY.nodeConfig.messageRAMConfig.header[i]      = &header[i];
                     pERAY.nodeConfig.messageRAMConfig.slotControl[i] = &slot[i];
    //               pERAY.nodeConfig.messageRAMConfig.data[i]        = NULL_PTR; //Remove data in all slots
                 }
#endif

/*............................................Set Eray pin....................................................*/
    /* channel A pins*/
    const IfxEray_Eray_NodeA nodeAPins = {
        IfxPort_InputMode_pullDown,             IfxPort_OutputMode_pushPull,
        IfxPort_PadDriver_cmosAutomotiveSpeed3, IfxPort_OutputMode_pushPull,
        &IfxEray0_RXDA2_P02_1_IN,               &IfxEray0_TXDA_P02_0_OUT,
        &IfxEray0_TXENA_P02_4_OUT
    };
    /* channel B pins*/
    const IfxEray_Eray_NodeB nodeBPins = {
        IfxPort_InputMode_pullDown,             IfxPort_OutputMode_pushPull,
        IfxPort_PadDriver_cmosAutomotiveSpeed3, IfxPort_OutputMode_pushPull,
        &IfxEray0_RXDB2_P02_3_IN,               &IfxEray0_TXDB_P02_2_OUT,
        &IfxEray0_TXENB_P02_5_OUT
    };

    const IfxEray_Eray_Pins  pins = {(IfxEray_Eray_NodeA *)&nodeAPins, (IfxEray_Eray_NodeB *)&nodeBPins};
    pERAY.nodeConfig.pins = (IfxEray_Eray_Pins *)&pins;

    /*ERAY node initialization with supplied configuration*/
    IfxEray_Eray_Node_init(&pERAY.eray, &pERAY.nodeConfig);

    /*...............................Force this position (after ERAY node initialization)......................*/

#if   FR_NODE_0
    /*ALL NDAT interrupts are routed to SRC_ERAYNDAT1 interrupt service line*/
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 0, 1); // New Data #0 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 1, 1); // New Data #1 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 2, 1); // New Data #2 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 3, 1); // New Data #3 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 4, 1); // New Data #4 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 5, 1); // New Data #5 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 6, 1); // New Data #6 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 7, 1); // New Data #7 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 8, 1); // New Data #8 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 9, 1); // New Data #9 -> NDAT1
#endif

#if FR_NODE_1
    /*ALL NDAT interrupts are routed to SRC_ERAYNDAT1 interrupt service line*/
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 0, 1); // New Data #0 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 1, 1); // New Data #1 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 2, 1); // New Data #2 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 3, 1); // New Data #3 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 4, 1); // New Data #4 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 5, 1); // New Data #5 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 6, 1); // New Data #6 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 7, 1); // New Data #7 -> NDAT1
#endif

#if FR_NODE_2
    /*ALL NDAT interrupts are routed to SRC_ERAYNDAT1 interrupt service line*/
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 0, 1); // New Data #0 -> NDAT1
    IfxEray_Eray_setNewDataInterruptDestination(&pERAY.eray, 1, 1); // New Data #1 -> NDAT1
#endif


    /*............................................Common Setting....................................................*/

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    /* WAKE UP */
	while(!IfxEray_Eray_wakeUpCluster(&pERAY.eray))
	{}
  do
	{
		pocState = IfxEray_Eray_getPocState(&pERAY.eray );
		if (pocState != IfxEray_PocState_wakeupListen)
		{
			while ( !IfxEray_Eray_changePocState(&pERAY.eray, IfxEray_PocCommand_wakeup ));
		}
	}while(pocState != IfxEray_PocState_wakeupListen);


    /* allow node to cold-start and wait until cold-start is successful*/
    while(!IfxEray_Eray_allowColdStart(&pERAY.eray))
    {}


    /* start the communication in cluster and wait until communication is successful*/
    while(!IfxEray_Eray_startCommunication(&pERAY.eray))
    {}

    /* wait until communication Controller enters NORMAL_ACTIVE or NORMAL_PASSIVE state, exit if communication Controller enters HALT state.*/


    do
    {
        pocState = IfxEray_Eray_getPocState(&pERAY.eray);

        /*if communication Controller enters HALT state, break the loop.*/
        if (pocState == IfxEray_PocState_halt)
        {
            break;
        }
    } while(!((pocState == IfxEray_PocState_normalActive) || (pocState == IfxEray_PocState_normalPassive)));
    // here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    /*enter ALL_SLOTS mode when Communication Controller is in NORMAL_ACTIVE or NORMAL_PASSIVE state only.*/
    if ((pocState == IfxEray_PocState_normalActive) || (pocState == IfxEray_PocState_normalPassive))
    {
        while(!IfxEray_Eray_setPocAllSlots(&pERAY.eray))
        {}
    }
}



#endif /* PERIPHERALS_ERAY_C_ */
