/*
 * Device_IF_LCD.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */


#include "Device_IF.h"
#include "Peripherals_GPIO.h"
#include "Device_IF_LCD.h"

static unsigned char LCD_Code;
#define RGB565CONVERT(red, green, blue) (int) (((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3))
/* Initialize Device of LCD --------------------------------------------------*/
void IO_set_LCD(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for LCD line. -------------------------------*/

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_LCD\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	/* IO Settings for LCD ---------------------------------------------------*/
	setPort_GPIO_LCD();

	IO_LCD_Initialize();

	Delay_ms_LCD(10);
	IO_LCD_Clear(0x0000);
	IO_LCD_GUI_Text(20,80, "This is Automotive Embedded System.",0xFFFF,0x0000);
	IO_LCD_GUI_Text(20,100,"Created by Automation Lab.",0xFFFF,0x0000);
	IO_LCD_GUI_Text(20,120,"HYUNDAI NGV Corperation.",0xFFFF,0x0000);
	IO_LCD_GUI_Text(100,160,"Please wait!",0xFFFF,0x0000);

	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LCD Index by Word unit -----------------------------------------------*/
void IO_LCD_writeWord_Register(unsigned int word_LCD_reg, unsigned int word_LCD_reg_value)
{
	/* Input	: Word value for LCD Register and LCD Register value. --------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Write LCD Register value to LCD Register. ------------------*/

	/* Enter byte data to LCD Register ---------------------------------------*/
	/* Write 16-bit Index, then Write Register -------------------------------*/
	f_Cs(0);
	IO_LCD_writeWord_Index(word_LCD_reg);
	/* Write 16-bit Register -------------------------------------------------*/
	IO_LCD_writeWord_Data(word_LCD_reg_value);
	f_Cs(1);

	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
	printf_SysLog("WriteWord_LCD_Register\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LCD Index by Word unit -----------------------------------------------*/
void IO_LCD_writeWord_Index(unsigned int word_LCD_index)
{
	/* Input	: Word value for LCD Index. ----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Write value to LCD Index. ----------------------------------*/

	/* Enter byte data to LCD Index ------------------------------------------*/
	f_Rs(0);
	f_BLCNT(1);
	Delay_ms_LCD(0);
	setWord_GPIO_LCD_d(word_LCD_index);
	Delay_ms_LCD(0);
	f_nWr(0);
	f_nWr(1);

	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
	printf_SysLog("WriteWord_LCD_Index\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LCD Data by Word unit ------------------------------------------------*/
void IO_LCD_writeWord_Data(unsigned int word_LCD_data)
{
	/* Input	: Word value for LCD Data. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Write value to LCD Data. -----------------------------------*/

	/* Enter byte data to LCD Data -------------------------------------------*/
	f_Rs(1);
	Delay_ms_LCD(0);
	setWord_GPIO_LCD_d(word_LCD_data);
	Delay_ms_LCD(0);
	f_nWr(0);
	f_nWr(1);

	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
	printf_SysLog("WriteWord_LCD_Data\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Sets LCD Data by Word unit ------------------------------------------------*/
unsigned int IO_LCD_readWord_Data(unsigned int word_LCD_index)
{
	/* Input	: Word value for LCD Index. ----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Read value from LCD Data. ----------------------------------*/

	/* Enter byte data to LCD Data -------------------------------------------*/

	/* Write 16-bit Index (then Read Register) -------------------------------*/
	f_Cs(0);
	IO_LCD_writeWord_Index(word_LCD_index);
	/* Read 16-bit Register --------------------------------------------------*/
	word_LCD_index = getWord_GPIO_LCD_d();
	f_Cs(1);

	return word_LCD_index;

	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
	printf_SysLog("ReadWord_LCD Data\t-> x \r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

/* Initialize LCD ------------------------------------------------------------*/
void IO_LCD_Initialize(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Initialize LCD Parameter. ----------------------------------*/

//	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
//	printf_SysLog("IO_LCD_Initilize\t -> Start\r\n");
//	#endif /*-----------------------------------------------------------------*/

	// Original
//	f_reset(0);	Delay_ms_LCD(10);
//	f_reset(1);	Delay_ms_LCD(10);
//	setBit_GPIO_LCD_bl(4, 1);	Delay_ms_LCD(10);

// Changed by Ton
	f_reset(1);
	Delay_ms_LCD(5);
	f_reset(0);
	Delay_ms_LCD(5);
	f_reset(1);
	f_Cs(0);
	f_nRd(1);
	f_nWr(1);
	Delay_ms_LCD(5);
	f_BLCNT(1);


	/* Set MN(multipliers) of PLL, VCO = crystal frequency * (N+1) -----------*/
	/* PLL frequency = VCO/M with 250MHz < VCO < 800MHz ----------------------*/
	/* The max PLL frequency is around 120MHz.
	 * To obtain 120MHz as the PLL frequency ---------------------------------*/

	/* Set MN(multipliers) of PLL, VCO = crystal frequency * (N+1) -----------*/
	/* PLL frequency = VCO/M with 250MHz < VCO < 800MHz ----------------------*/
	/* The max PLL frequency is around 120MHz.
	 * To obtain 120MHz as the PLL frequency ---------------------------------*/

	/* Read LCD ID	----------------------------------------------------------*/
	//unsigned int DeviceCode;
	//DeviceCode = LCD_ReadReg(0x0000);
	//DeviceCode = 0x9325;

	/* Start Initialize LCD --------------------------------------------------*/
	LCD_Code = ILI9325;
	IO_LCD_writeWord_Register(0x00e7,0x0010);
	IO_LCD_writeWord_Register(0x0000,0x0001);  	/* Start Internal OSC --------*/

	IO_LCD_writeWord_Register(0x0001,(0<<10)|(1<<8));

	IO_LCD_writeWord_Register(0x0002,0x0700); 	/* Power On Sequence ---------*/
	#if (DISP_ORIENTATION == 0)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(1<<5)|(1<<4)|(0<<3));
	#elif (DISP_ORIENTATION == 90)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(0<<5)|(1<<4)|(1<<3));
	#elif (DISP_ORIENTATION == 180)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(0<<5)|(0<<4)|(0<<3));
	#elif (DISP_ORIENTATION == 270)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(1<<5)|(0<<4)|(1<<3));
	#endif
	IO_LCD_writeWord_Register(0x0004,0x0000);
	IO_LCD_writeWord_Register(0x0008,0x0207);
	IO_LCD_writeWord_Register(0x0009,0x0000);
	IO_LCD_writeWord_Register(0x000a,0x0000); 	/* Display Setting -----------*/
	IO_LCD_writeWord_Register(0x000c,0x0001);	/* Display Setting -----------*/
	IO_LCD_writeWord_Register(0x000d,0x0000);
	IO_LCD_writeWord_Register(0x000f,0x0000);

	/* Power On Sequence -----------------------------------------------------*/
	IO_LCD_writeWord_Register(0x0010,0x0000);
	IO_LCD_writeWord_Register(0x0011,0x0007);
	IO_LCD_writeWord_Register(0x0012,0x0000);
	IO_LCD_writeWord_Register(0x0013,0x0000);
	Delay_ms_LCD(5);

	IO_LCD_writeWord_Register(0x0010,0x1590);
	IO_LCD_writeWord_Register(0x0011,0x0227);
	Delay_ms_LCD(5);

	IO_LCD_writeWord_Register(0x0012,0x009c);
	Delay_ms_LCD(5);

	IO_LCD_writeWord_Register(0x0013,0x1900);
	IO_LCD_writeWord_Register(0x0029,0x0023);
	IO_LCD_writeWord_Register(0x002b,0x000e);
	Delay_ms_LCD(10);

	IO_LCD_writeWord_Register(0x0030,0x0007);
	IO_LCD_writeWord_Register(0x0031,0x0707);
	IO_LCD_writeWord_Register(0x0032,0x0006);
	IO_LCD_writeWord_Register(0x0035,0x0704);
	IO_LCD_writeWord_Register(0x0036,0x1f04);
	IO_LCD_writeWord_Register(0x0037,0x0004);
	IO_LCD_writeWord_Register(0x0038,0x0000);
	IO_LCD_writeWord_Register(0x0039,0x0706);
	IO_LCD_writeWord_Register(0x003c,0x0701);
	IO_LCD_writeWord_Register(0x003d,0x000f);
	Delay_ms_LCD(5);

	IO_LCD_writeWord_Register(0x0050,0x0000);
	IO_LCD_writeWord_Register(0x0051,0x00ef);
	IO_LCD_writeWord_Register(0x0052,0x0000);
	IO_LCD_writeWord_Register(0x0053,0x013f);
	IO_LCD_writeWord_Register(0x0060,0xa700);
 	IO_LCD_writeWord_Register(0x0061,0x0001);
	IO_LCD_writeWord_Register(0x006a,0x0000);
	IO_LCD_writeWord_Register(0x0080,0x0000);
	IO_LCD_writeWord_Register(0x0081,0x0000);
	IO_LCD_writeWord_Register(0x0082,0x0000);
	IO_LCD_writeWord_Register(0x0083,0x0000);
	IO_LCD_writeWord_Register(0x0084,0x0000);
	IO_LCD_writeWord_Register(0x0085,0x0000);
	IO_LCD_writeWord_Register(0x0090,0x0010);
	IO_LCD_writeWord_Register(0x0092,0x0600);
	IO_LCD_writeWord_Register(0x0093,0x0003);
	IO_LCD_writeWord_Register(0x0095,0x0110);
	IO_LCD_writeWord_Register(0x0097,0x0000);
	IO_LCD_writeWord_Register(0x0098,0x0000);

	/* Display On Sequence ---------------------------------------------------*/
	IO_LCD_writeWord_Register(0x0007,0x0133);
    Delay_ms_LCD(10);

	#if SysLog_state_LCD /* System Log state of LCD --------------------------*/
    printf_SysLog("IO_LCD_Initilize\t -> Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}

// Changed by Ton
void IO_LCD_Initialize_2(void)
{
//	unsigned int DeviceCode;

	f_reset(1);
	Delay_ms_LCD(5);
	f_reset(0);
	Delay_ms_LCD(5);
	f_reset(1);
	f_Cs(0);
	f_nRd(1);
	f_nWr(1);
	Delay_ms_LCD(5);
	f_BLCNT(1);
	//DeviceCode = LCD_ReadReg(0x0000);		/* Read LCD ID	*/
	//	DeviceCode = 0x9325;

	LCD_Code = ILI9325;
	IO_LCD_writeWord_Register(0x00e7,0x0010);
	IO_LCD_writeWord_Register(0x0000,0x0001);  	/* start internal osc */

	IO_LCD_writeWord_Register(0x0001,(0<<10)|(1<<8));

	IO_LCD_writeWord_Register(0x0002,0x0700); 	/* power on sequence */
	#if (DISP_ORIENTATION == 0)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(1<<5)|(1<<4)|(0<<3));
	#elif (DISP_ORIENTATION == 90)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(0<<5)|(1<<4)|(1<<3));
	#elif (DISP_ORIENTATION == 180)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(0<<5)|(0<<4)|(0<<3));
	#elif (DISP_ORIENTATION == 270)
		IO_LCD_writeWord_Register(0x0003,(1<<12)|(1<<5)|(0<<4)|(1<<3));
	#endif
		IO_LCD_writeWord_Register(0x0004,0x0000);
		IO_LCD_writeWord_Register(0x0008,0x0207);
		IO_LCD_writeWord_Register(0x0009,0x0000);
		IO_LCD_writeWord_Register(0x000a,0x0000); 	/* display setting */
		IO_LCD_writeWord_Register(0x000c,0x0001);	/* display setting */
		IO_LCD_writeWord_Register(0x000d,0x0000);
		IO_LCD_writeWord_Register(0x000f,0x0000);

	/* Power On sequence */
		IO_LCD_writeWord_Register(0x0010,0x0000);
		IO_LCD_writeWord_Register(0x0011,0x0007);
		IO_LCD_writeWord_Register(0x0012,0x0000);
		IO_LCD_writeWord_Register(0x0013,0x0000);

	Delay_ms_LCD(50);  /* delay 50 ms */

	IO_LCD_writeWord_Register(0x0010,0x1590);
	IO_LCD_writeWord_Register(0x0011,0x0227);

	Delay_ms_LCD(50);  /* delay 50 ms */

	IO_LCD_writeWord_Register(0x0012,0x009c);

	Delay_ms_LCD(50);  /* delay 50 ms */

	IO_LCD_writeWord_Register(0x0013,0x1900);
	IO_LCD_writeWord_Register(0x0029,0x0023);
	IO_LCD_writeWord_Register(0x002b,0x000e);

	Delay_ms_LCD(50);  /* delay 50 ms */
	Delay_ms_LCD(50);  /* delay 50 ms */

	IO_LCD_writeWord_Register(0x0030,0x0007);
	IO_LCD_writeWord_Register(0x0031,0x0707);
	IO_LCD_writeWord_Register(0x0032,0x0006);
	IO_LCD_writeWord_Register(0x0035,0x0704);
	IO_LCD_writeWord_Register(0x0036,0x1f04);
	IO_LCD_writeWord_Register(0x0037,0x0004);
	IO_LCD_writeWord_Register(0x0038,0x0000);
	IO_LCD_writeWord_Register(0x0039,0x0706);
	IO_LCD_writeWord_Register(0x003c,0x0701);
	IO_LCD_writeWord_Register(0x003d,0x000f);

	Delay_ms_LCD(50);  /* delay 50 ms */

	IO_LCD_writeWord_Register(0x0050,0x0000);
	IO_LCD_writeWord_Register(0x0051,0x00ef);
	IO_LCD_writeWord_Register(0x0052,0x0000);
	IO_LCD_writeWord_Register(0x0053,0x013f);
	IO_LCD_writeWord_Register(0x0060,0xa700);
	IO_LCD_writeWord_Register(0x0061,0x0001);
	IO_LCD_writeWord_Register(0x006a,0x0000);
	IO_LCD_writeWord_Register(0x0080,0x0000);
	IO_LCD_writeWord_Register(0x0081,0x0000);
	IO_LCD_writeWord_Register(0x0082,0x0000);
	IO_LCD_writeWord_Register(0x0083,0x0000);
	IO_LCD_writeWord_Register(0x0084,0x0000);
	IO_LCD_writeWord_Register(0x0085,0x0000);
	IO_LCD_writeWord_Register(0x0090,0x0010);
	IO_LCD_writeWord_Register(0x0092,0x0600);
	IO_LCD_writeWord_Register(0x0093,0x0003);
	IO_LCD_writeWord_Register(0x0095,0x0110);
	IO_LCD_writeWord_Register(0x0097,0x0000);
	IO_LCD_writeWord_Register(0x0098,0x0000);

	/* display on sequence */
	IO_LCD_writeWord_Register(0x0007,0x0133);
    Delay_ms_LCD(10);


}




/*----------------------------------------------------------------------------*/

/* IO LCD Clear --------------------------------------------------------------*/
void IO_LCD_Clear(unsigned int Color)
{
	unsigned int index = 0;

	if( LCD_Code == HX8347D || LCD_Code == HX8347A )
	{
		IO_LCD_writeWord_Register(0x02,0x00);
		IO_LCD_writeWord_Register(0x03,0x00);

		IO_LCD_writeWord_Register(0x04,0x00);
		IO_LCD_writeWord_Register(0x05,0xEF);

		IO_LCD_writeWord_Register(0x06,0x00);
		IO_LCD_writeWord_Register(0x07,0x00);

		IO_LCD_writeWord_Register(0x08,0x01);
		IO_LCD_writeWord_Register(0x09,0x3F);
	}
	else
	{
		IO_LCD_setCursor(0,0);
	}
	setBit_GPIO_LCD_ctl(0,0);
	IO_LCD_writeWord_Index(0x0022);
	for( index = 0; index < MAX_X * MAX_Y; index++ )
	{
		IO_LCD_writeWord_Data(Color); Delay_ms_LCD(0);
	}
	setBit_GPIO_LCD_ctl(0,1);
}
/*----------------------------------------------------------------------------*/

/* IO Set LCD Cursor ---------------------------------------------------------*/
void IO_LCD_setCursor(unsigned int Xpos, unsigned int Ypos)
{
	/* Input	: Position X and Y on LCD. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Set Cursor on LCD. -----------------------------------------*/

	unsigned int temp;

	#if (DISP_ORIENTATION == 0)

	#elif (DISP_ORIENTATION == 90)
		temp = Xpos;
		Xpos = Ypos;
		Ypos = MAX_X - 1 - temp;
	#elif (DISP_ORIENTATION == 180)
		Xpos = MAX_X - 1 - Xpos;
		Ypos = MAX_Y - 1 - Ypos;
	#elif (DISP_ORIENTATION == 270)
		temp = Ypos;
		Ypos = Xpos;
		Xpos = MAX_Y - 1 - temp;
	#endif

	if (LCD_Code == SSD1289)
	{
		IO_LCD_writeWord_Register(0x004e, Xpos);
	    IO_LCD_writeWord_Register(0x004f, Ypos);
	}
	else
	{
		IO_LCD_writeWord_Register(0x0020, Xpos);
		IO_LCD_writeWord_Register(0x0021, Ypos);
	}
}
/*----------------------------------------------------------------------------*/

/* IO Get LCD Point ----------------------------------------------------------*/
unsigned int IO_LCD_GetPoint(unsigned int Xpos,unsigned int Ypos)
{
	/* Input	: Position X and Y on LCD. -----------------------------------*/
	/* Output	: Point on Position(x,y) of LCD. -----------------------------*/
	/* Jobs		: Get Point on LCD. ------------------------------------------*/

	unsigned int dummy;

	IO_LCD_setCursor(Xpos,Ypos);

	f_Cs(0);
	IO_LCD_writeWord_Index(0x0022);

	switch(LCD_Code)
	{
		case ST7781:
		case LGDP4531:
		case LGDP4535:
		case SSD1289:
		case SSD1298:
			dummy = getWord_GPIO_LCD_d();
			dummy = getWord_GPIO_LCD_d();
			f_Cs(1);
			return  dummy;
		case HX8347A:
		case HX8347D:
		{
			unsigned char red,green,blue;
			red = getWord_GPIO_LCD_d()>>3;
			green = getWord_GPIO_LCD_d()>>3;
			blue = getWord_GPIO_LCD_d()>>2;
			dummy = ( green << 11 ) | (blue << 5 ) | red;
		}
		f_Cs(1);
		return  dummy;
		default: /* 0x9320 0x9325 0x9328 0x9331 0x5408 0x1505 0x0505 0x9919 --*/
			dummy = getWord_GPIO_LCD_d();
			dummy = getWord_GPIO_LCD_d();
			f_Cs(1);
			return  GUI_LCD_BGR2RGB( dummy );
	}
}
/*----------------------------------------------------------------------------*/

/* IO Set LCD Point ----------------------------------------------------------*/
void IO_LCD_SetPoint(unsigned int Xpos, unsigned int Ypos, unsigned int point)
{
	/* Input	: Position X and Y on LCD and Point Value --------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Set Point on LCD. ------------------------------------------*/

	if( Xpos >= MAX_X || Ypos >= MAX_Y )
	{
		return;
	}

	IO_LCD_setCursor(Xpos, Ypos);
	IO_LCD_writeWord_Register(0x0022, point);
}
/*----------------------------------------------------------------------------*/

/* IO DrawLine on LCD --------------------------------------------------------*/
void IO_LCD_GUI_DrawLine( unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2 , unsigned int color )
{
	/* Input	: Position x1, y1, x2, y2 and Color of Line ------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Draw Line on LCD. ------------------------------------------*/

	short dx, dy;
	short temp;

	if( x1 > x2 )
	{	/* To make x2 larger than x1 always ----------------------------------*/
		temp = x2;
		x2 = x1;
		x1 = temp;
	}

	if( y1 > y2 )
	{	/* To make x2 larger than x1 always ----------------------------------*/
		temp = y2;
		y2 = y1;
		y1 = temp;
	}

	dx = x2 - x1;	/* Delta of X Coordinate ---------------------------------*/
	dy = y2 - y1;	/* Delta of Y Coordinate ---------------------------------*/

	if( dx == 0 )
	{	/* When x1 == x2, Draw a vertical line -------------------------------*/
		do
		{
			IO_LCD_SetPoint(x1, y1++, color);
		}
		while( y2 >= y1 );

		return;
	}

	if( dy == 0 )
	{	/* When y1 == y2, Draw a horizontal line -----------------------------*/
		do
		{
			IO_LCD_SetPoint(x1++, y1, color);
		}
		while( x2 >= x1 );

		return;
	}

	/* Bresenham's Line Algorithm --------------------------------------------*/
	temp = 2 * dy - dx;

	while( x1 != x2 )
	{
		IO_LCD_SetPoint(x1++, y1, color);

		if( temp > 0 )
		{	/* When Y coordinate increases */
			y1++;
			temp += 2 * dy - 2 * dx;
		}
		else
		{	/* Y coordinate remains constant */
			temp += 2 * dy;
		}
	}
	IO_LCD_SetPoint(x1, y1, color);
}
/*----------------------------------------------------------------------------*/

void IO_LCD_GUI_DrawCross(unsigned int Xpos, unsigned int Ypos)
{
	IO_LCD_GUI_DrawLine(Xpos-15,Ypos,Xpos-2,Ypos,0xF800);
	IO_LCD_GUI_DrawLine(Xpos+2,Ypos,Xpos+15,Ypos,0xF800);
	IO_LCD_GUI_DrawLine(Xpos,Ypos-15,Xpos,Ypos-2,0xF800);
	IO_LCD_GUI_DrawLine(Xpos,Ypos+2,Xpos,Ypos+15,0xF800);

	IO_LCD_GUI_DrawLine(Xpos-15,Ypos+15,Xpos-7,Ypos+15,RGB565CONVERT(184,158,131));
	IO_LCD_GUI_DrawLine(Xpos-15,Ypos+7,Xpos-15,Ypos+15,RGB565CONVERT(184,158,131));

	IO_LCD_GUI_DrawLine(Xpos-15,Ypos-15,Xpos-7,Ypos-15,RGB565CONVERT(184,158,131));
	IO_LCD_GUI_DrawLine(Xpos-15,Ypos-7,Xpos-15,Ypos-15,RGB565CONVERT(184,158,131));

	IO_LCD_GUI_DrawLine(Xpos+7,Ypos+15,Xpos+15,Ypos+15,RGB565CONVERT(184,158,131));
	IO_LCD_GUI_DrawLine(Xpos+15,Ypos+7,Xpos+15,Ypos+15,RGB565CONVERT(184,158,131));

	IO_LCD_GUI_DrawLine(Xpos+7,Ypos-15,Xpos+15,Ypos-15,RGB565CONVERT(184,158,131));
	IO_LCD_GUI_DrawLine(Xpos+15,Ypos-15,Xpos+15,Ypos-7,RGB565CONVERT(184,158,131));
}

/* IO Write Character on LCD Point -------------------------------------------*/
void IO_LCD_GUI_PutChar(unsigned int Xpos, unsigned int Ypos,
						unsigned char ASCI, unsigned int charColor, unsigned int bkColor )
{
	/* Input	: Position x, y and Character with Color ---------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Write Character on LCD. ------------------------------------*/

	unsigned int i, j;
    unsigned char buffer[16], tmp_char;

    GetASCIICode(buffer,ASCI);

    for(i = 0; i < 16; i++)
    {
        tmp_char = buffer[i];

        for(j = 0; j < 8; j++)
        {
            if((tmp_char >> 7 - j) & 0x01 == 0x01)
            {	/* If the bit is 1, Color a Point with charColor. ------------*/
                IO_LCD_SetPoint(Xpos + j, Ypos + i, charColor);
            }
            else
            {	/* If the bit is 0, Color a Point with bkColor. --------------*/
                IO_LCD_SetPoint(Xpos + j, Ypos + i, bkColor);
            }
        }
    }
}
/*----------------------------------------------------------------------------*/

void IO_LCD_GUI_Text(unsigned int Xpos, unsigned int Ypos, unsigned char *str, unsigned int Color, unsigned int bkColor)
{
	/* Input	: Position x, y and Text with Color --------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Write Text on LCD. -----------------------------------------*/

    unsigned char TempChar;
    do
    {
        TempChar = *str++;
        IO_LCD_GUI_PutChar( Xpos, Ypos, TempChar, Color, bkColor );	/* Print out a character */

        if( Xpos < MAX_X - 8 )
        {
            Xpos += 8;
        }
        else if ( Ypos < MAX_Y - 16 )
        {
            Xpos = 0;
            Ypos += 16;
        }
        else
        {
            Xpos = 0;
            Ypos = 0;
        }
    }
    while ( *str != 0 );	/* Repeat it until all the characters are printed */
}
/*----------------------------------------------------------------------------*/

/* Transfer BGR to RGB -------------------------------------------------------*/
unsigned int GUI_LCD_BGR2RGB(unsigned int color)
{
	/* Input	: BGR Color. -------------------------------------------------*/
	/* Output	: RGB Color. -------------------------------------------------*/
	/* Jobs		: Transfer Color BGR to RGB. ---------------------------------*/

	unsigned int  r, g, b, rgb;

	b = ( color>>0 )  & 0x1f;
	g = ( color>>5 )  & 0x3f;
	r = ( color>>11 ) & 0x1f;

	rgb =  (b<<11) + (g<<5) + (r<<0);

	return rgb;
}
/*----------------------------------------------------------------------------*/

/* Delay by unit ms ----------------------------------------------------------*/
__inline void Delay_ms_LCD(unsigned int tic_ms)
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

