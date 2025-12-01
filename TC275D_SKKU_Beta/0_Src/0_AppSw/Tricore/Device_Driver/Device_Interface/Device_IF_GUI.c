

#include "Device_IF.h"
#include "Device_IF_GUI.h"

int Page_State=0;
int Button_State=0;
int i_grpah_init = 0;


void GUI_DrawRect(pRect rect, unsigned int color)
{
	int i;
	int x1, x2, y1, y2;

	x1 = rect.x1, y1 = rect.y1;
	x2 = rect.x2, y2 = rect.y2;

	for(i = 0; i < 3; i++)
	{
		IO_LCD_GUI_DrawLine(x1 + i,	 y1 + i,	x2 - i,		y1 + i,		color);
		IO_LCD_GUI_DrawLine(x2 - i,	 y1 + i,	x2 - i,		y2 - i,		color);
		IO_LCD_GUI_DrawLine(x2 - i,	 y2 - i,	x1 + i,		y2 - i,		color);
		IO_LCD_GUI_DrawLine(x1 + i,	 y2 - i,	x1 + i,		y1 + i,		color);
	}
}


void GUI_DrawRect_full(pRect rect, unsigned int color_border ,  unsigned int color_in)
{
	int i;
	int x1, x2, y1, y2;

	x1 = rect.x1, y1 = rect.y1;
	x2 = rect.x2, y2 = rect.y2;

	GUI_DrawRect(rect, color_border);

	for(i = 2; i < y2 - y1 - 1; i++)
	{
		IO_LCD_GUI_DrawLine(x1 + 1, y1 + i, x2 - 1, y1 + i, color_in);
	}
}


void GUI_set_Location(int loc) { Page_State = loc; }

int GUI_get_Location(void) { return Page_State; }

int _abs(int x) {	if(x<0) {return x * -1;} 	else return x; }

void GUI_Delay (unsigned int nCount)
{
	int i, j;
  for(i=0; i <= nCount; i++)
		for(j=0; j <= 8000; j++);
}

int GUI_xyRead(int Current_x, int Current_y, pRect rect)
{
	if((Current_x>rect.x1)&&(Current_x<rect.x2))
	{
		if((Current_y>rect.y1)&&(Current_y<rect.y2)) { return 1;	}
		else return 0;
	}
	else return 0;
}

/* Button Format based on BT Structure */

void GUI_formatBT(pBT BT)
{
	GUI_DrawRect_full(BT.rect, BT.guide_color, BT.button_color);
	IO_LCD_GUI_Text(BT.rect.x1 + (BT.rect.x2-BT.rect.x1) / 2 - 20, BT.rect.y1 + (BT.rect.y2 - BT.rect.y1) / 2 - 10, BT.name, BT.name_color, BT.button_color);
}

void GUI_h_formatBT(pBT BT, int check)
{
	if(check ==1)
	{
		GUI_DrawRect(BT.rect, BT.h_guide_color);
	}
	if(check ==0)
	{
		GUI_DrawRect(BT.rect, BT.guide_color);
	}
}

void GUI_setGraphInitialize(pGRAPH GP, int target)
{
	GUI_DrawRect_full(GP.rect, Black, Black);

	// tip line		|-		-|
	IO_LCD_GUI_DrawLine(GP.rect.x1, GP.rect.y1+11, GP.rect.x1+10, GP.rect.y1+11, GP.mark_color);
	IO_LCD_GUI_DrawLine(GP.rect.x1+GP.rect.width-10, GP.rect.y1+60, GP.rect.x2, GP.rect.y1+60, GP.mark_color);

	// mid line		|-		-|
	IO_LCD_GUI_DrawLine(GP.rect.x1, GP.rect.y1+60, GP.rect.x1+10, GP.rect.y1+60, GP.mark_color);
	IO_LCD_GUI_DrawLine(GP.rect.x1+GP.rect.width-10, GP.rect.y1+60, GP.rect.x2, GP.rect.y1+60, GP.mark_color);

	// mid line 	|--------|
	//IO_LCD_GUI_DrawLine(GP.rect.x1, GP.rect.y1+60, GP.rect.x2, GP.rect.y1+60, GP.mark_color);
	//IO_LCD_GUI_DrawLine(GP.rect.x1+GP.rect.width-10, GP.rect.y1+60, GP.rect.x2, GP.rect.y1+60, GP.mark_color);

	// bottom line	|-		-|
	IO_LCD_GUI_DrawLine(GP.rect.x1, GP.rect.y1+109, GP.rect.x1+10, GP.rect.y1+109, GP.mark_color);
	IO_LCD_GUI_DrawLine(GP.rect.x1+GP.rect.width-10, GP.rect.y1+60, GP.rect.x2, GP.rect.y1+60, GP.mark_color);


	//IO_LCD_GUI_DrawLine(GP.rect.x1, GP.rect.y1+10+100-target, GP.rect.x2, GP.rect.y1+10+100-target, Blue);
	GUI_DrawRect(GP.rect,GP.guide_color);
	i_grpah_init = 0;
}

void GUI_setGraphValue(pGRAPH GP, int value, int target)
{
	int g;

//	if(i_grpah_init < 198)
//	{
//		i_grpah_init++;
//		//IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-(int)GP.Data[0], GP.inside_color);
//		IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-value, GP.value_color);
//		for(g = i_grpah_init; g >= 1; g--)
//		{
//			IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g-1], GP.inside_color);
//			IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g], GP.value_color);
//		}
//	}
//	else
//	{
//		IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-(int)GP.Data[i_grpah_init], GP.inside_color);
//		IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-value, GP.value_color);
//		for(g = 198; g >= 1; g--)
//		{
//			IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g-1], GP.inside_color);
//			IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g], GP.value_color);
//		}
//	}

//	IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-(int)GP.Data[198], GP.inside_color);
//	IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-value, GP.value_color);
//
//	for(g = 198; g >= 1; g--)
//	{
//		IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g-1], GP.inside_color);
//		IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g], GP.value_color);
//	}


	IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-(int)GP.Data[198], GP.inside_color);
	IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-value, GP.value_color);

	for(g = 198; g >= (198 - i_grpah_init + 1); g--)
	{
		IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g-1], GP.inside_color);
		IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g], GP.value_color);
	}
	if(i_grpah_init < 198)
		i_grpah_init++;

//	if(GP.Data[198]!=target)IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-(int)GP.Data[198], GP.inside_color);
//	if(value!=target)IO_LCD_SetPoint(GP.rect.x1+209, GP.rect.y1+10+100-value, GP.value_color);
//
//	for(g = 198; g >= (198 - i_grpah_init + 1); g--)
//	{
//		if(GP.Data[g-1]!=target)IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g-1], GP.inside_color);
//		if(GP.Data[g]!=target)IO_LCD_SetPoint(GP.rect.x1+10+g, GP.rect.y1+10+100-(int)GP.Data[g], GP.value_color);
//	}
//	if(i_grpah_init < 198)
//		i_grpah_init++;
}




void GUI_setGraphClear(pGRAPH GP)
{
	int g;

	for(g=0; g<200; g++)
	{
		GP.Data[g]=0;
		IO_LCD_GUI_DrawLine(GP.rect.x1+g, GP.rect.y1+10, GP.rect.x1+g, GP.rect.y2-10, GP.inside_color);
	}
}

