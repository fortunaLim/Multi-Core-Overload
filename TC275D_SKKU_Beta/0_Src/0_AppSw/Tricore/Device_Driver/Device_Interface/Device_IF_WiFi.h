/*
 * Device_IF_WiFi.h
 *
 *  Created on: 2018. 8. 27.
 *      Author: JW_Park
 */

#ifndef DEVICE_IF_WIFI_H_
#define DEVICE_IF_WIFI_H_


void IO_set_WiFi(void);
IFX_EXTERN void printf_WiFi(char *fmt, ...);
void IO_WiFi_Server_open(void);

__inline void Delay_ms_WiFi(unsigned int tic_ms);

#endif /* DEVICE_IF_WIFI_H_ */
