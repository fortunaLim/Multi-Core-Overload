/*
 * Peripherals_QSPI.c
 *
 *  Created on: 2018. 10. 09.
 *      Author: Ton Nguyen Hoang
 */
#ifndef PERIPHERALS_QSPI_H
#define PERIPHERALS_QSPI_H


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include "Configuration.h"
#include <Qspi/SpiMaster/IfxQspi_SpiMaster.h>	// Important for QSPI module
#include "IfxPort.h"
// Changed by Ton
#include "Peripherals_GPIO.h"
#include "IfxQspi_reg.h"



/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/


// interrupt handle function
void qspi0TxISR (void);
void qspi0RxISR (void);
void qspi0ErISR (void);

// Declare function for QSPI module
void set_SPI_CS(void);
void set_SPI_MISO(uint8 bit);
void f_SPI_CS(uint8 n_slave, int bit);
void f_SPI_MISO(uint8 bit);
void qspi0_master_module_initialisation(void);
void qspi0_master_channel_initialisation(void);
void qspi0_data_communication(uint8 n_slave, uint8*data_tx, uint8*data_rx, uint8 num_of_data);
unsigned int spi_send(void);
void Peripheral_delay_us(unsigned int tic_us);


#endif /* PERIPHERALS_QSPI_H */











