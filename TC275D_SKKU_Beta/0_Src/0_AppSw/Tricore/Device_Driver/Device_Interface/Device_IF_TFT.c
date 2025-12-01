
#include "Device_IF.h"
#include "Device_IF_LCD.h"
#include "Peripherals_QSPI.h"
#include "Peripherals_GPIO.h"


#define spt  3
#define THRESHOLD  1

unsigned int mang_x[spt];
unsigned int mang_y[spt];
Coordinate DisplaySample[3] = { {30, 45}, {290, 45}, {160, 210} };
Coordinate ScreenSample[3] = { {560, 2865}, {3380, 3085}, {1900, 784} };

extern Matrix  LCD_matrix_calib;
extern volatile int pressing_2;


/* Initialize Device of TFT --------------------------------------------------*/
void IO_set_TFT(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for TFT line. -------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_TFT\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for TFT ---------------------------------------------------*/
	Touch_qspi_Config();
	setCalibrationMatrix(DisplaySample,ScreenSample,&LCD_matrix_calib );
	//TouchPanel_Calibrate();	// Generate calibration matrix

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/*
Function	void Touch_qspi_Config(void);
Parameter	Input	None.
			Output	None.
Descript	Configure QSPI module to communicate with TFT LCD
 */
 void Touch_qspi_Config(void)
 {
	 //boolean interruptState = IfxCpu_disableInterrupts();
	 qspi0_master_module_initialisation();		// Module Initialisation
	 qspi0_master_channel_initialisation();		// SPI Channel Initialisation
	 //IfxCpu_restoreInterrupts(interruptState);
 }

 /*
  Function	Coordinate Read_ADC_Post(void);
  Parameter	Input	None.
  			Output	12-bit ADC values correspond to X and Y axis
  Descript	Read 12-bit ADC values of touching point in LCD along X, y axis {* Using for calibration "TouchPanel_Calibrate" function}
   */

  Coordinate Read_ADC_Pre(void)
  {
    static Coordinate  screen;
    Coordinate TPXY;
    int m0,m1,m2,temp[3];
    uint8 count=0;
    int buffer[2][9]={{0},{0}};

    do
    {
 //    LCD_GetAdXY(TP_X,TP_Y);
		TPXY = Touch_Read_Data_X_Y();
		buffer[0][count]=TPXY.x;
		buffer[1][count]=TPXY.y;
		count++;
    }
    while(!getBit_LCD_IRQ() && count<9);  /* TP_INT_IN  */
		if(count==9)   /* Average X Y  */
		{
			/* Average X  */
			temp[0]=(buffer[0][0]+buffer[0][1]+buffer[0][2])/3;
			temp[1]=(buffer[0][3]+buffer[0][4]+buffer[0][5])/3;
			temp[2]=(buffer[0][6]+buffer[0][7]+buffer[0][8])/3;

			m0=temp[0]-temp[1];
			m1=temp[1]-temp[2];
			m2=temp[2]-temp[0];

			m0=m0>0?m0:(-m0);
				  m1=m1>0?m1:(-m1);
			m2=m2>0?m2:(-m2);

			if( m0>THRESHOLD  &&  m1>THRESHOLD  &&  m2>THRESHOLD )
			{
					screen.x =0;
					screen.y =0;
					return screen;
					//          return 0;
			}

			if(m0<m1)
			{
				if(m2<m0)
					screen.x=(temp[0]+temp[2])/2;
				else
					screen.x=(temp[0]+temp[1])/2;
			}
			else if(m2<m1)
				screen.x=(temp[0]+temp[2])/2;
			else
				screen.x=(temp[1]+temp[2])/2;

			/* Average Y  */
			temp[0]=(buffer[1][0]+buffer[1][1]+buffer[1][2])/3;
			temp[1]=(buffer[1][3]+buffer[1][4]+buffer[1][5])/3;
			temp[2]=(buffer[1][6]+buffer[1][7]+buffer[1][8])/3;
			m0=temp[0]-temp[1];
			m1=temp[1]-temp[2];
			m2=temp[2]-temp[0];
			m0=m0>0?m0:(-m0);
			m1=m1>0?m1:(-m1);
			m2=m2>0?m2:(-m2);

			if(m0>THRESHOLD&&m1>THRESHOLD&&m2>THRESHOLD)
			{
				screen.x =0;
				screen.y =0;
				return screen;
					//return 0;
			}

			if(m0<m1)
			{
				if(m2<m0)
					screen.y=(temp[0]+temp[2])/2;
				else
					screen.y=(temp[0]+temp[1])/2;
			}
			else if(m2<m1)
				screen.y=(temp[0]+temp[2])/2;
			else
				screen.y=(temp[1]+temp[2])/2;

			return screen;
		}

    //return 0;
 	screen.x =0;
 	screen.y =0;
 	return screen;
  }

 /*
 Function	void Device_delay_us(unsigned int tic_us);
 Parameter	Input	Delay time in  microsecond
 			Output	None.
 Descript	Delay 諭밿c_us占�  microsecond
  */
 void Device_delay_us(unsigned int tic_us)
 {
 	unsigned int tic_sub1, tic_sub2;
 		for( tic_sub1 = 0; tic_sub1 < tic_us; tic_sub1++ )
 		{
 			for( tic_sub2 = 0; tic_sub2 < 100; tic_sub2++ )
 			{
 				__nop();
 			}
 		}
 }

 /*
 Function	void Device_delay_ms(unsigned int tic_ms);
 Parameter	Input	Delay time in  milisecond
 			Output	None.
 Descript	Delay 諭밿c_ms占�   milisecond
  */
 void Device_delay_ms(unsigned int tic_ms)		// OK- da do tren oscillocope
 {
 	unsigned int tic_sub1, tic_sub2, tic_sub3;

 	for (tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++)
 	{
 		for (tic_sub2 = 0; tic_sub2 < 500; tic_sub2++)
 		{
 			for (tic_sub3 = 0; tic_sub3 < 200; tic_sub3++)
 			{
 				__nop();
 			}
 		}
 	}
 }

 /*
 Function	Unsigned int Filter_data_x(unsigned int *data,  int  n);
 Parameter	Input	Array of ADC values along X axis
 					Number of data
 			Output	Filte0xF800 12-bit ADC value
 Descript	Apply median filter to 0xF800uce noise of ADC
  */
 unsigned int Filter_data_x(unsigned int *data, int n)
 {
 	int i, j;
 	unsigned int tmp;
 	for (i=0; i<n; i++)
 	{
 		for (j=1; j<n-i; j++)
 		{
 			if(data[j]>data[j+1])
 			{
 				tmp= data[j+1];
 				data[j+1]= data[i];
 				data[i]= tmp;
 			}
 		}
 	}
 	i= n/2;
 	tmp= data[i+1];
 	return tmp;
 }

 /*
 Function	Unsigned int Filter_data_y(unsigned int *data,  int  n);
 Parameter	Input	Array of ADC values along Y axis
 					Number of data
 			Output	Filte0xF800 12-bit ADC value
 Descript	Apply median filter to 0xF800uce noise of ADC
  */
 unsigned int Filter_data_y(unsigned int *data, int n)
 {
 	int i, j;
 	unsigned int tmp;
 	for (i=0; i<n; i++)
 	{
 		for (j=1; j<n-i; j++)
 		{
 			if(data[j]>data[j+1])
 			{
 				tmp= data[j+1];
 				data[j+1]= data[i];
 				data[i]= tmp;
 			}
 		}
 	}
 	i= n/2;
 	tmp= data[i+1];
 	return tmp;
 }




///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



 Coordinate Read_ADC_Post(void)
 {
   static Coordinate  screen;
   Coordinate TPXY;
   int m0,m1,m2,temp[3];
   uint8 count=0;
   int buffer[2][9]={{0},{0}};

   do
   {
//    LCD_GetAdXY(TP_X,TP_Y);
    TPXY = Touch_Read_Data_X_Y();
 	buffer[0][count]=TPXY.x;
 	buffer[1][count]=TPXY.y;
 	count++;
   }
   while(!getBit_LCD_IRQ() && count<9);  /* TP_INT_IN  */

   if(count==9)   /* Average X Y  */
   {
 	/* Average X  */
	temp[0]=(buffer[0][0]+buffer[0][1]+buffer[0][2])/3;
 	temp[1]=(buffer[0][3]+buffer[0][4]+buffer[0][5])/3;
 	temp[2]=(buffer[0][6]+buffer[0][7]+buffer[0][8])/3;

 	m0=temp[0]-temp[1];
 	m1=temp[1]-temp[2];
 	m2=temp[2]-temp[0];

 	m0=m0>0?m0:(-m0);
         m1=m1>0?m1:(-m1);
 	m2=m2>0?m2:(-m2);

 	if( m0>THRESHOLD  &&  m1>THRESHOLD  &&  m2>THRESHOLD )
         {
           return screen;
           //          return 0;
         }

 	if(m0<m1)
 	{
 	  if(m2<m0)
 	    screen.x=(temp[0]+temp[2])/2;
 	  else
 	    screen.x=(temp[0]+temp[1])/2;
 	}
 	else if(m2<m1)
 	  screen.x=(temp[0]+temp[2])/2;
 	else
 	  screen.x=(temp[1]+temp[2])/2;

 	/* Average Y  */
    temp[0]=(buffer[1][0]+buffer[1][1]+buffer[1][2])/3;
 	temp[1]=(buffer[1][3]+buffer[1][4]+buffer[1][5])/3;
 	temp[2]=(buffer[1][6]+buffer[1][7]+buffer[1][8])/3;
 	m0=temp[0]-temp[1];
 	m1=temp[1]-temp[2];
 	m2=temp[2]-temp[0];
 	m0=m0>0?m0:(-m0);
 	m1=m1>0?m1:(-m1);
 	m2=m2>0?m2:(-m2);
 	if(m0>THRESHOLD&&m1>THRESHOLD&&m2>THRESHOLD)
         {
			return screen;
           //return 0;
         }

 	if(m0<m1)
 	{
 	  if(m2<m0)
 	    screen.y=(temp[0]+temp[2])/2;
 	  else
 	    screen.y=(temp[0]+temp[1])/2;
     }
 	else if(m2<m1)
 	   screen.y=(temp[0]+temp[2])/2;
 	else
 	   screen.y=(temp[1]+temp[2])/2;

 	return screen;
   }

	return screen;
 }


 Coordinate GetDisplayPoint(unsigned int x, unsigned int y, Matrix matrixPtr)
 {
   Coordinate tmp;
   int tam;
   tmp.x = 0; tmp.y =0;
   if( matrixPtr.Divider != 0 )
   {
     /* XD = AX+BY+C */
	   tam=(matrixPtr.An*x)+(matrixPtr.Bn*y)+matrixPtr.Cn;
	   tam= tam/matrixPtr.Divider;
	   tmp.x = tam;

	   tam = (matrixPtr.Dn * x)+(matrixPtr.En * y)+matrixPtr.Fn;
	   tam = tam/matrixPtr.Divider;
	   tmp.y = tam;
     //tmp.x = ((matrixPtr.An * x)+(matrixPtr.Bn * y)+matrixPtr.Cn) / matrixPtr.Divider ;
 	/* YD = DX+EY+F */
     //tmp.y = ( (matrixPtr.Dn * x)+(matrixPtr.En * y)+matrixPtr.Fn)/matrixPtr.Divider ;
   }
   return tmp;
 }


 void TouchPanel_Calibrate(void)
 {
   uint8 i;
   static uint8 check = 0;
   Coordinate  Ptr;

   for(i=0;i<3;i++)
   {
	   check = 0;
	   IO_LCD_Clear(0x7FFF);
	   IO_LCD_GUI_Text(44,10,"Touch crosshair to calibrate", 0xF800, 0xFFFF);
	   Device_delay_ms(100);
	   IO_LCD_GUI_DrawCross(DisplaySample[i].x,DisplaySample[i].y);
	   while(check == 0)
	   {
		   IO_LCD_setCursor(0,0);
		   pressing_2 = getBit_LCD_IRQ();
		   if(pressing_2 == 0)
		   {
			   Ptr=Read_ADC_Pre();
			   if(Ptr.x != 0 && Ptr.y != 0)
			   {
				   check = 1;
			   }
    	  }
      }
      ScreenSample[i].x= Ptr.x;
      ScreenSample[i].y= Ptr.y;
   }

   /*
   printf_UART_SysLog("\n1 : %d, %d\r\n",ScreenSample[0].x, ScreenSample[0].y);
   printf_UART_SysLog("2 : %d, %d\r\n",ScreenSample[1].x, ScreenSample[1].y);
   printf_UART_SysLog("3 : %d, %d\r\n",ScreenSample[2].x, ScreenSample[2].y);
    */


   setCalibrationMatrix(DisplaySample,ScreenSample,&LCD_matrix_calib );
   IO_LCD_Clear(0x7FFF);
 }

void setCalibrationMatrix(Coordinate * displayPtr,Coordinate*screenPtr, Matrix * matrixPtr)
 {
   /* K竊�(X0竊뛛2) (Y1竊뛜2)竊�(X1竊뛛2) (Y0竊뛜2) */
   matrixPtr->Divider = ((screenPtr[0].x - screenPtr[2].x) * (screenPtr[1].y - screenPtr[2].y)) -
                        ((screenPtr[1].x - screenPtr[2].x) * (screenPtr[0].y - screenPtr[2].y)) ;
   if( matrixPtr->Divider != 0 )
   {
     /* A竊�((XD0竊뛛D2) (Y1竊뛜2)竊�(XD1竊뛛D2) (Y0竊뛜2))竊뢐	*/
     matrixPtr->An = ((displayPtr[0].x - displayPtr[2].x) * (screenPtr[1].y - screenPtr[2].y)) -
                     ((displayPtr[1].x - displayPtr[2].x) * (screenPtr[0].y - screenPtr[2].y)) ;
 	/* B竊�((X0竊뛛2) (XD1竊뛛D2)竊�(XD0竊뛛D2) (X1竊뛛2))竊뢐	*/
     matrixPtr->Bn = ((screenPtr[0].x - screenPtr[2].x) * (displayPtr[1].x - displayPtr[2].x)) -
                     ((displayPtr[0].x - displayPtr[2].x) * (screenPtr[1].x - screenPtr[2].x)) ;
     /* C竊�(Y0(X2XD1竊뛛1XD2)+Y1(X0XD2竊뛛2XD0)+Y2(X1XD0竊뛛0XD1))竊뢐 */
     matrixPtr->Cn = (screenPtr[2].x * displayPtr[1].x - screenPtr[1].x * displayPtr[2].x) * screenPtr[0].y +
                     (screenPtr[0].x * displayPtr[2].x - screenPtr[2].x * displayPtr[0].x) * screenPtr[1].y +
                     (screenPtr[1].x * displayPtr[0].x - screenPtr[0].x * displayPtr[1].x) * screenPtr[2].y ;
     /* D竊�((YD0竊뛜D2) (Y1竊뛜2)竊�(YD1竊뛜D2) (Y0竊뛜2))竊뢐	*/
     matrixPtr->Dn = ((displayPtr[0].y - displayPtr[2].y) * (screenPtr[1].y - screenPtr[2].y)) -
                     ((displayPtr[1].y - displayPtr[2].y) * (screenPtr[0].y - screenPtr[2].y)) ;
     /* E竊�((X0竊뛛2) (YD1竊뛜D2)竊�(YD0竊뛜D2) (X1竊뛛2))竊뢐	*/
     matrixPtr->En = ((screenPtr[0].x - screenPtr[2].x) * (displayPtr[1].y - displayPtr[2].y)) -
                     ((displayPtr[0].y - displayPtr[2].y) * (screenPtr[1].x - screenPtr[2].x)) ;
     /* F竊�(Y0(X2YD1竊뛛1YD2)+Y1(X0YD2竊뛛2YD0)+Y2(X1YD0竊뛛0YD1))竊뢐 */
     matrixPtr->Fn = (screenPtr[2].x * displayPtr[1].y - screenPtr[1].x * displayPtr[2].y) * screenPtr[0].y +
                     (screenPtr[0].x * displayPtr[2].y - screenPtr[2].x * displayPtr[0].y) * screenPtr[1].y +
                     (screenPtr[1].x * displayPtr[0].y - screenPtr[0].x * displayPtr[1].y) * screenPtr[2].y ;
   }
 }

/*
Function	Unsigned int Touch_Read_Data_X_Y(void);
Parameter	Input	None.
			Output	12-bit ADC values of X and Y axis
Descript	Read 12-bit ADC  values of X and Y axis , then apply median filter to reduce noise.
			It combine 諛쳍uch_Read_Data_X占� and 諛쳍uch_Read_Data_X占� function.
 */
Coordinate Touch_Read_Data_X_Y(void)
{
	Coordinate tmp;
	tmp.x = Read_X();
	Device_delay_us(1);
	tmp.y = Read_Y();
	return tmp;
}

/*
Function	Unsigned int Read_X(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to X axis
Descript	Read 12-bit ADC values along X axis
 */
unsigned int Read_X(void)
{
	unsigned int data = 0;
	uint8 spiTxBuffer[3] = {0x90, 0x00, 0x00}; // {command, do not care data, do not care data}
	uint8 spiRxBuffer[3] = {0, 0 , 0};		   // {do not care data, ADC high, ADC low}

	qspi0_data_communication(1, spiTxBuffer, spiRxBuffer, 3);

	data = spiRxBuffer[1]<<8;		// bit operation to extract 12-bit ADC value
	data = data|spiRxBuffer[2];
	data = data>>3;

	return data;
}

/*
Function	Unsigned int Read_Y(void);
Parameter	Input	None.
			Output	12-bit ADC values correspond to Y axis
Descript	Read 12-bit ADC values along Y axis
 */
unsigned int Read_Y(void)
 {
 	unsigned int data = 0;
 	uint8 spiTxBuffer[3] = {0xd0, 0x00, 0x00};
 	uint8 spiRxBuffer[3] = {0, 0 , 0};

 	qspi0_data_communication(1, spiTxBuffer, spiRxBuffer, 3);

 	data = spiRxBuffer[1]<<8;
 	data = data|spiRxBuffer[2];
 	data = data>>3;

 	return data;
 }


#define n	30
unsigned int m_x[n];
unsigned int m_y[n];
uint8 pressing= 0;
volatile int pressing_2 = 0;
unsigned int db_x = 0, db_y, db_z;
volatile unsigned int display_x, display_y;
Coordinate data_tmp, display;
Matrix  LCD_matrix_calib;
int i_TFT;



int IO_get_TFT_Point(void)
{
	pressing = getBit_LCD_IRQ();
	if(pressing == 0)
	{
		i_TFT = 0;
		do
		{
			IO_LCD_setCursor(0,0);
			data_tmp = Read_ADC_Post();
			db_x = data_tmp.x;
			db_y = data_tmp.y;
			display = GetDisplayPoint(db_x, db_y, LCD_matrix_calib);
			m_x[i_TFT]= display.x;
			m_y[i_TFT]= display.y;
			i_TFT++;
		}while(i_TFT < n);

		display_x = Filter_data_x(m_x, n);
		display_y = Filter_data_y(m_y, n);

		return 1;
	}
	return 0;
}

unsigned int IO_get_TFT_x(void)
{
	return display_x;
}
unsigned int IO_get_TFT_y(void)
{
	return display_y;
}
void draw_test(void)
{
	pressing = getBit_LCD_IRQ();
	if(pressing == 0)
	{
		IO_get_TFT_Point();

		TP_DrawPoint(display_x, display_y);
	}
}


void TP_DrawPoint(unsigned int  Xpos,unsigned int Ypos)
{
	IO_LCD_SetPoint(Xpos,Ypos,0x001F);     /* Center point */
	IO_LCD_SetPoint(Xpos+1,Ypos,0x001F);
	IO_LCD_SetPoint(Xpos,Ypos+1,0x001F);
	IO_LCD_SetPoint(Xpos+1,Ypos+1,0x001F);
}

