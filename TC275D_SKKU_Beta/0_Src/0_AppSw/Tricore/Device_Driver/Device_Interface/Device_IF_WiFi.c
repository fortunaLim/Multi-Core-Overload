/*
 * Device_IF_WiFi.c
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#include "Device_IF.h"
#include "Peripherals_UART.h"
#include <stdarg.h>
#include <stdio.h>
#include "Application.h"



/* Initialize Device of WiFi AP Server ---------------------------------------*/
void IO_set_WiFi(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for WiFi AP Server. -------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_WiFi\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	Set_UART_WiFi();
	IO_WiFi_Server_open();

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}



void IO_WiFi_Server_open(void)
{
	printf_UART_WiFi("AT+RST\r\n");
	Delay_ms_WiFi(1000);
	//printf_UART_WiFi("AT+UART_DEF=115200,8,1,0,0\r\n");
	//Delay_ms_WiFi(1000);
	printf_UART_WiFi("AT+CWQAP\r\n");
	Delay_ms_WiFi(100);
	printf_UART_WiFi("AT+CWMODE=2\r\n");
	Delay_ms_WiFi(100);
	printf_UART_WiFi("%s", "AT+CWSAP=");
	printf_UART_WiFi("%c%s%c%c", '"', "ESP-07", '"', ',');
	printf_UART_WiFi("%c%s%c", '"', "12345678", '"');
	printf_UART_WiFi("%s", ",5,3\r\n");
	Delay_ms_WiFi(100);
	printf_UART_WiFi("%s", "AT+CIPMUX=1\r\n");
	Delay_ms_WiFi(100);
	printf_UART_WiFi("%s", "AT+CIPSERVER=1,80\r\n");
}


void printf_WiFi(char *fmt, ...)
{
	/* Define temp address of the data ---------------------------------------*/
	char buffer[100];
	va_list ap;

	/* Get start address of the data -----------------------------------------*/
	va_start(ap, fmt);

	/* Copy data input to buffer ---------------------------------------------*/
	vsprintf(buffer, fmt, ap);

	/* Get end address of the data -------------------------------------------*/
	va_end(ap);

	/* Get length of the Tx data ---------------------------------------------*/
	sint16 length = 0;
	length = strlen(buffer);

	printf_UART_WiFi("AT+CIPSEND=0,%d\r\n", length);
	Delay_ms_WiFi(100);
	printf_UART_WiFi("%s\r\n", buffer);
}



/* Delay by unit ms ----------------------------------------------------------*/
__inline void Delay_ms_WiFi(unsigned int tic_ms)
{
	/* Input	: value of ms unit. ------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Delay. -----------------------------------------------------*/

	unsigned int tic_sub1, tic_sub2, tic_sub3;
		for( tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++ )
			for( tic_sub2 = 0; tic_sub2 < 1000; tic_sub2++ )
				for( tic_sub3 = 0; tic_sub3 < 61; tic_sub3++ )
				__nop();
}
/*----------------------------------------------------------------------------*/
