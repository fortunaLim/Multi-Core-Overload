/*
 * Device_IF_QSPI.h
 *
 *  Created on: 2018. 10. 09.
 *      Author: Ton Nguyen Hoang
 */
 
#ifndef DEVICE_IF_QSPI_H_
#define DEVICE_IF_QSPI_H_

#include <Ifx_Types.h>
#include "Peripherals_QSPI.h"

typedef struct
{
	unsigned int x;
	unsigned int y;
}Coordinate;

typedef struct
{
	int An;
	int Bn;
	int Cn;
	int Dn;
	int En;
	int Fn;
	int Divider;
} Matrix;


/*
Function	void Touch_qspi_Config(void);
Parameter	Input	None.
			Output	None.
Descript	Configure QSPI module to communicate with TFT LCD
 */
void Touch_qspi_Config(void);


/*
Function	void TouchPanel_Calibrate (void);
Parameter	Input	None.
			Output	None.
Descript	TFT LCD calibration
 */
void TouchPanel_Calibrate(void);


/*
Function	Coordinate Read_ADC_Post(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to X and Y axis
Descript	Read 12-bit ADC values of touching point in LCD along X, y axis
 */
Coordinate Read_ADC_Post(void);


/*
 Function	Coordinate GetDisplayPoint(unsigned int x, unsigned int  y, Matrix matrixPtr);
Parameter	Input	12-bit ADC values correspond to X
					12-bit ADC values correspond to Y
					Calibration matrix
			Output	12-bit ADC values correspond to X and Y axis
Descript	Extract coordinate  of touching point  correspond to X, Y pixel
 */
Coordinate GetDisplayPoint(unsigned int x, unsigned int y, Matrix matrixPtr);


/*
Function	Unsigned int Filter_data_x(unsigned int *data,  int  n);
Parameter	Input	Array of ADC values along X axis
					Number of data
			Output	Filtered 12-bit ADC value
Descript	Apply median filter to reduce noise of ADC
 */
unsigned int Filter_data_x(unsigned int *data, int n);

/*
Function	Unsigned int Filter_data_y(unsigned int *data,  int  n);
Parameter	Input	Array of ADC values along Y axis
					Number of data
			Output	Filtered 12-bit ADC value
Descript	Apply median filter to reduce noise of ADC
 */
unsigned int Filter_data_y(unsigned int *data, int n);


/*-------------------------- Another useful function --------------------------*/
/*
Function	void Device_delay_us(unsigned int tic_us);
Parameter	Input	Delay time in  microsecond
			Output	None.
Descript	Delay 諭밿c_us占�  microsecond
 */
void Device_delay_us(unsigned int tic_us);

/*
Function	void Device_delay_ms(unsigned int tic_ms);
Parameter	Input	Delay time in  milisecond
			Output	None.
Descript	Delay 諭밿c_ms占�   milisecond
 */
void Device_delay_ms(unsigned int tic_ms);


/*
Function	Coordinate Read_ADC_Post(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to X and Y axis
Descript	Read 12-bit ADC values of touching point in LCD along X, y axis {* Using for calibration "TouchPanel_Calibrate" function}
 */
Coordinate Read_ADC_Pre(void);

/*
Function	void setCalibrationMatrix(Coordinate * displayPtr,Coordinate*screenPtr, Matrix * matrixPtr);
Parameter	Input	3 sample positions.
					3 touch positions
					Calibration matrix
			Output	Calibration matrix
Descript	Generate calibrated matrix for LCD
 */
void setCalibrationMatrix(Coordinate * displayPtr,Coordinate*screenPtr, Matrix * matrixPtr);

/*
Function	Unsigned int Touch_Read_Data_X_Y(void);
Parameter	Input	None.
			Output	12-bit ADC values of X and Y axis
Descript	Read 12-bit ADC  values of X and Y axis , then apply median filter to reduce noise.
			It combine 諛쳍uch_Read_Data_X占� and 諛쳍uch_Read_Data_X占� function.
 */
Coordinate Touch_Read_Data_X_Y(void);

/*
Function	Unsigned int Read_X(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to X axis
Descript	Read 12-bit ADC values along X axis
 */
unsigned int Read_X(void);

/*
Function	Unsigned int Read_Y(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to Y axis
Descript	Read 12-bit ADC values along Y axis
 */
unsigned int Read_Y(void);

int IO_get_TFT_Point(void);
unsigned int IO_get_TFT_x(void);
unsigned int IO_get_TFT_y(void);

void draw_test(void);
void TP_DrawPoint(unsigned int  Xpos,unsigned int Ypos);



// Changed by Ton
void IO_set_TFT(void);
#endif /* DEVICE_IF_QSPI_H_ */
