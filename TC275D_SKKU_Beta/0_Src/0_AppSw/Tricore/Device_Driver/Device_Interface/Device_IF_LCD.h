
#ifndef STMDEMO_H
#define STMDEMO_H 1
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>

#include "Bsp.h"
#include "System_ISR_Priority.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include <Stm/Std/IfxStm.h>
#include <Src/Std/IfxSrc.h>
#include "CpuX_Main.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "Lib_Ascii.h"


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
/* Device information */
#define  ILI9320    0  /* 0x9320 */
#define  ILI9325    1  /* 0x9325 */
#define  ILI9328    2  /* 0x9328 */
#define  ILI9331    3  /* 0x9331 */
#define  SSD1298    4  /* 0x8999 */
#define  SSD1289    5  /* 0x8989 */
#define  ST7781     6  /* 0x7783 */
#define  LGDP4531   7  /* 0x4531 */
#define  SPFD5408B  8  /* 0x5408 */
#define  R61505U    9  /* 0x1505 0x0505 */
#define  HX8347D    10 /* 0x0047 */
#define  HX8347A    11 /* 0x0047 */
#define  LGDP4535   12 /* 0x4535 */
#define  SSD2119    13 /* 3.5 LCD 0x9919 */

/* LCD Size */
//#define DISP_HOR_RESOLUTION				320
//#define DISP_VER_RESOLUTION				240

//#define DISP_ORIENTATION					0
//#define DISP_ORIENTATION					90
//#define DISP_ORIENTATION					180
#define DISP_ORIENTATION					270

#if  ( DISP_ORIENTATION == 90 ) || ( DISP_ORIENTATION == 270 )
#define  MAX_X  320
#define  MAX_Y  240
#elif  ( DISP_ORIENTATION == 0 ) || ( DISP_ORIENTATION == 180 )
#define  MAX_X  240
#define  MAX_Y  320
#endif


void IO_set_LCD(void);
void IO_LCD_writeWord_Register(unsigned int word_LCD_reg, unsigned int word_LCD_reg_value);
void IO_LCD_writeWord_Index(unsigned int word_LCD_index);
void IO_LCD_writeWord_Data(unsigned int word_LCD_data);
unsigned int IO_LCD_readWord_Data(unsigned int word_LCD_index);

void IO_LCD_Initialize(void);
void IO_LCD_Clear(unsigned int Color);
void IO_LCD_setCursor(unsigned int Xpos, unsigned int Ypos);
unsigned int IO_LCD_GetPoint(unsigned int Xpos,unsigned int Ypos);
void IO_LCD_SetPoint(unsigned int Xpos,unsigned int Ypos,unsigned int point);
void IO_LCD_GUI_DrawLine( unsigned int x1, unsigned int y1, unsigned int x2, unsigned int y2 , unsigned int color );
void IO_LCD_GUI_PutChar(unsigned int Xpos, unsigned int Ypos, unsigned char ASCI, unsigned int charColor, unsigned int bkColor);
void IO_LCD_GUI_Text(unsigned int Xpos, unsigned int Ypos, unsigned char *str, unsigned int Color, unsigned int bkColor);
unsigned int GUI_LCD_BGR2RGB(unsigned int color);
__inline void Delay_ms_LCD(unsigned int tic_ms);


// Changed by Ton
void IO_LCD_GUI_DrawCross(unsigned int Xpos, unsigned int Ypos);
void IO_LCD_Initialize_2(void);			// void IO_LCD_Initialize(void);

#endif



