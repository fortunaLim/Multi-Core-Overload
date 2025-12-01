#include "GUI.h"
#include "Device_IF.h"
#include "Application.h"

char text[30];
int point_x=0, point_y=0;
int click_flage;
int i;


int _State = 0;
int _point_x_pre = 0, _point_y_pre = 0;
int __point_x = 0, __point_y = 0;
int click_flag = 0;
int _miss = 0;

pBT Home;
pBT Menu1;
pBT Menu2;
pBT Menu3;
pBT M1sub1;
pBT M1sub2;
pBT M1sub3;
pBT M3sub1;
pBT LED1; int LEDtog0 = 0;
pBT LED2; int LEDtog1 = 0;
pBT LED3; int LEDtog2 = 0;
pBT LED4; int LEDtog3 = 0;
pGRAPH Graph;
extern int f_ADC_graph;

/* Home Button Default Setting */
pBT _Home(int x, int y)
{
	Home.rect.width = 50;																/* Button Width */
	Home.rect.height = 25;																/* Button Height */
	Home.rect.x1 = x; 	Home.rect.y1 = y;												/* Button X1 Coordinate, Y1 Coordinate */
	Home.rect.x2 = x + Home.rect.width; 	Home.rect.y2 = y + Home.rect.height;		/* Button X2 Coordinate, Y2 Coordinate */
	Home.button_color = White; Home.guide_color = White;								/* Button Color: White, Button Border Color: White */
	Home.name = "Home";	Home.name_color = Blue;											/* Button Name: Home, Button Text Color: Blue */
	Home.h_guide_color = Yellow;

	return Home;
}


pBT _Menu1(int x, int y)
{
	Menu1.rect.width = 100;
	Menu1.rect.height = 50;
	Menu1.rect.x1 = x; 	Menu1.rect.y1 = y;
	Menu1.rect.x2 = x+Menu1.rect.width; 	Menu1.rect.y2 = y+Menu1.rect.height;
	Menu1.button_color = Blue; Menu1.guide_color = White;
	Menu1.name = "Menu1";	Menu1.name_color = White;
	Menu1.h_guide_color = Yellow;

	return Menu1;
}


pBT _Menu2(int x, int y)
{
	Menu2.rect.width = 100;
	Menu2.rect.height = 50;
	Menu2.rect.x1 = x; 	Menu2.rect.y1 = y;
	Menu2.rect.x2 = x+Menu2.rect.width; 	Menu2.rect.y2 = y+Menu2.rect.height;
	Menu2.button_color = Blue; Menu2.guide_color = White;
	Menu2.name = "Menu2";	Menu2.name_color = White;
	Menu2.h_guide_color = Yellow;

	return Menu2;
}

pBT _Menu3(int x, int y)
{
	Menu3.rect.width = 100;
	Menu3.rect.height = 50;
	Menu3.rect.x1 = x; 	Menu3.rect.y1 = y;
	Menu3.rect.x2 = x+Menu3.rect.width; 	Menu3.rect.y2 = y+Menu3.rect.height;
	Menu3.button_color = Blue; Menu3.guide_color = White;
	Menu3.name = "Menu3";	Menu3.name_color = White;
	Menu3.h_guide_color = Yellow;

	return Menu3;
}


pBT _M1sub1(int x, int y)
{
	M1sub1.rect.width = 100;
	M1sub1.rect.height = 50;
	M1sub1.rect.x1 = x; 	M1sub1.rect.y1 = y;
	M1sub1.rect.x2 = x+M1sub1.rect.width; 	M1sub1.rect.y2 = y+M1sub1.rect.height;
	M1sub1.button_color = Blue; M1sub1.guide_color = White;
	M1sub1.name = "M1sub1";	M1sub1.name_color = White;
	M1sub1.h_guide_color = Yellow;

	return M1sub1;
}


pBT _M1sub2(int x, int y)
{
	M1sub2.rect.width = 100;
	M1sub2.rect.height = 50;
	M1sub2.rect.x1 = x; 	M1sub2.rect.y1 = y; M1sub2.rect.x2 = x+M1sub2.rect.width; 	M1sub2.rect.y2 = y+M1sub2.rect.height;
	M1sub2.button_color = Blue; M1sub2.guide_color = White;
	M1sub2.name = "M1sub2";	M1sub2.name_color = White;
	M1sub2.h_guide_color = Yellow;

	return M1sub2;
}

pBT _M3sub1(int x, int y)
{
	M3sub1.rect.width = 100;
	M3sub1.rect.height = 50;
	M3sub1.rect.x1 = x; 	M3sub1.rect.y1 = y; M3sub1.rect.x2 = x+M3sub1.rect.width; 	M3sub1.rect.y2 = y+M3sub1.rect.height;
	M3sub1.button_color = Blue; M3sub1.guide_color = White;
	M3sub1.name = "M3sub1";	M3sub1.name_color = White;
	M3sub1.h_guide_color = Yellow;

	return M3sub1;
}


pBT _LED1(int x, int y)
{
	LED1.rect.width = 50;
	LED1.rect.height = 50;
	LED1.rect.x1 = x; 	LED1.rect.y1 = y;
	LED1.rect.x2 = x+LED1.rect.width; 	LED1.rect.y2 = y+LED1.rect.height;
	LED1.button_color = Blue; LED1.guide_color = White;
	LED1.name = "LED1";	LED1.name_color = White;
	LED1.h_guide_color = Yellow;

	return LED1;
}


pBT _LED2(int x, int y)
{
	LED2.rect.width = 50;
	LED2.rect.height = 50;
	LED2.rect.x1 = x; 	LED2.rect.y1 = y;
	LED2.rect.x2 = x+LED2.rect.width; 	LED2.rect.y2 = y+LED2.rect.height;
	LED2.button_color = Blue; LED2.guide_color = White;
	LED2.name = "LED2";	LED2.name_color = White;
	LED2.h_guide_color = Yellow;

	return LED2;
}


pBT _LED3(int x, int y)
{
	LED3.rect.width = 50;
	LED3.rect.height = 50;
	LED3.rect.x1 = x; 	LED3.rect.y1 = y;
	LED3.rect.x2 = x+LED3.rect.width; 	LED3.rect.y2 = y+LED3.rect.height;
	LED3.button_color = Blue; LED3.guide_color = White;
	LED3.name = "LED3";	LED3.name_color = White;
	LED3.h_guide_color = Yellow;

	return LED3;
}


pBT _LED4(int x, int y)
{
	LED4.rect.width = 50;
	LED4.rect.height = 50;
	LED4.rect.x1 = x; 	LED4.rect.y1 = y;
	LED4.rect.x2 = x+LED4.rect.width; 	LED4.rect.y2 = y+LED4.rect.height;
	LED4.button_color = Blue; LED4.guide_color = White;
	LED4.name = "LED4";	LED4.name_color = White;
	LED4.h_guide_color = Yellow;

	return LED4;
}

pGRAPH _Graph(int x, int y)
{
	Graph.rect.width = 220;
	Graph.rect.height = 120;
	Graph.rect.x1 = x;	Graph.rect.y1 = y;
	Graph.rect.x2 = x+Graph.rect.width;	Graph.rect.y2 = y+Graph.rect.height;
	Graph.guide_color = White;	Graph.line_color = White;
	Graph.name_color = White; Graph.value_color = White;
	Graph.inside_color = Black; Graph.mark_color = Red;

	for(i=0; i<200; i++)
	{
		Graph.Data[i] = 0;
	}

	return Graph;
}
////////////////////////////////////////////////////////////////////

void GUI_Start(void)
{
	page_home();

//  page_App_Bar_graphB();



}

int page_App_CHAT(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - App_Chatting");

	pRect msgBox;
	msgBox.x1 = 5;
	msgBox.x2 = 315;
	msgBox.y1 = 235;
	msgBox.y2 = 35;

	GUI_DrawRect(msgBox, White);
	IO_LCD_GUI_DrawLine(5,205,315,205,White);

	IO_LCD_GUI_Text(20,212,"Type a message here",Olive,Black);


	GUI_set_Location(App_CHAT);
	return App_CHAT;
}


int page_App_Bar_graphB(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - App_BarGraph_B");

	pRect barGraphBox;
	barGraphBox.x1 = 5;
	barGraphBox.x2 = 315;
	barGraphBox.y1 = 235;
	barGraphBox.y2 = 35;

	GUI_DrawRect(barGraphBox, White);

	IO_LCD_GUI_Text(20, 70,  "Sens1", White, Black);
	IO_LCD_GUI_Text(20, 110, "Sens2", White, Black);
	IO_LCD_GUI_Text(20, 150, "Sens3", White, Black);
	IO_LCD_GUI_Text(20, 190, "Sens4", White, Black);

	Bar_Graph3(12.34, 12.34, 12.34, 12.34);


	GUI_set_Location(App_BarGR_B);
	return App_BarGR_B;
}

void Bar_Graph3(float val1, float val2, float val3, float val4)
{
	int temp1, temp2, temp3, temp4;
	if(val1 < 0.0) val1 = 0;
	if(val2 < 0.0) val2 = 0;
	if(val3 < 0.0) val3 = 0;
	if(val4 < 0.0) val4 = 0;

	if(val1 >= 150.0) val1 = 150;
	if(val2 >= 150.0) val2 = 150;
	if(val3 >= 150.0) val3 = 150;
	if(val4 >= 150.0) val4 = 150;

	temp1 = val1 + 70;
	temp2 = val2 + 70;
	temp3 = val3 + 70;
	temp4 = val4 + 70;


	pRect barGraphbar1;
	barGraphbar1.x1 = 70;
	barGraphbar1.x2 = temp1;
	barGraphbar1.y1 = 60;
	barGraphbar1.y2 = 90;
	GUI_DrawRect_full(barGraphbar1, Black, Blue);

	pRect barGraphbar2;
	barGraphbar2.x1 = 70;
	barGraphbar2.x2 = temp2;
	barGraphbar2.y1 = 100;
	barGraphbar2.y2 = 130;
	GUI_DrawRect_full(barGraphbar2, Black, Blue);

	pRect barGraphbar3;
	barGraphbar3.x1 = 70;
	barGraphbar3.x2 = temp3;
	barGraphbar3.y1 = 140;
	barGraphbar3.y2 = 170;
	GUI_DrawRect_full(barGraphbar3, Black, Blue);

	pRect barGraphbar4;
	barGraphbar4.x1 = 70;
	barGraphbar4.x2 = temp4;
	barGraphbar4.y1 = 180;
	barGraphbar4.y2 = 210;
	GUI_DrawRect_full(barGraphbar4, Black, Blue);


	pRect barGraphbar1_;
	barGraphbar1_.x1 = temp1;
	barGraphbar1_.x2 = 220;
	barGraphbar1_.y1 = 60;
	barGraphbar1_.y2 = 90;
	GUI_DrawRect_full(barGraphbar1_, Black, Black);

	pRect barGraphbar2_;
	barGraphbar2_.x1 = temp2;
	barGraphbar2_.x2 = 220;
	barGraphbar2_.y1 = 100;
	barGraphbar2_.y2 = 130;
	GUI_DrawRect_full(barGraphbar2_, Black, Black);

	pRect barGraphbar3_;
	barGraphbar3_.x1 = temp3;
	barGraphbar3_.x2 = 220;
	barGraphbar3_.y1 = 140;
	barGraphbar3_.y2 = 170;
	GUI_DrawRect_full(barGraphbar3_, Black, Black);

	pRect barGraphbar4_;
	barGraphbar4_.x1 = temp4;
	barGraphbar4_.x2 = 220;
	barGraphbar4_.y1 = 180;
	barGraphbar4_.y2 = 210;
	GUI_DrawRect_full(barGraphbar4_, Black, Black);

	char bar_val[4][6];
	bar_val[0][5] = 0;
	bar_val[1][5] = 0;
	bar_val[2][5] = 0;
	bar_val[3][5] = 0;

	int _val1, _val2, _val3, _val4;
	_val1 = val1 * 100;
	_val2 = val2 * 100;
	_val3 = val3 * 100;
	_val4 = val4 * 100;

	bar_val[0][0] = (int)((_val1 % 10000) / 1000) + '0';
	bar_val[0][1] = (int)((_val1 %  1000) /  100) + '0';
	bar_val[0][2] = '.';
	bar_val[0][3] = (int)((_val1 %   100) /   10) + '0';
	bar_val[0][4] = (int)((_val1 %    10) /    1) + '0';

	bar_val[1][0] = (int)((_val2 % 10000) / 1000) + '0';
	bar_val[1][1] = (int)((_val2 %  1000) /  100) + '0';
	bar_val[1][2] = '.';
	bar_val[1][3] = (int)((_val2 %   100) /   10) + '0';
	bar_val[1][4] = (int)((_val2 %    10) /    1) + '0';

	bar_val[2][0] = (int)((_val3 % 10000) / 1000) + '0';
	bar_val[2][1] = (int)((_val3 %  1000) /  100) + '0';
	bar_val[2][2] = '.';
	bar_val[2][3] = (int)((_val3 %   100) /   10) + '0';
	bar_val[2][4] = (int)((_val3 %    10) /    1) + '0';

	bar_val[3][0] = (int)((_val4 % 10000) / 1000) + '0';
	bar_val[3][1] = (int)((_val4 %  1000) /  100) + '0';
	bar_val[3][2] = '.';
	bar_val[3][3] = (int)((_val4 %   100) /   10) + '0';
	bar_val[3][4] = (int)((_val4 %    10) /    1) + '0';

	IO_LCD_GUI_Text(220,  70, bar_val[0], White, Black);
	IO_LCD_GUI_Text(220, 110, bar_val[1], White, Black);
	IO_LCD_GUI_Text(220, 150, bar_val[2], White, Black);
	IO_LCD_GUI_Text(220, 190, bar_val[3], White, Black);

}

int page_App_Bar_graphC(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - App_BarGraph_C");

	GUI_set_Location(App_BarGR_C);

	return App_BarGR_C;
}



/* Indicator Bar on Top */
void IndicatorBar(unsigned char *str)
{
	pRect rect;

	rect.x1 = 0, rect.y1 = 0;
	rect.x2 = 320, rect.y2 = 25;

	/* Draw a Rectangle */
	GUI_DrawRect_full(rect, Blue, Blue);

	/* Print out text str */
	IO_LCD_GUI_Text(5,5, str, White, Blue);

	if(str != "Location - Home")
	{	/* Current location is not home */
		GUI_formatBT(_Home(270, 0));
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////������ ����//////////////////////////////////////////////////////////////////////////////////
int page_test(void)
{
	IO_LCD_Clear(Black);
	text[0] = 'T';
	text[1] = 'E';
	text[2] = 'S';
	text[3] = 'T';
	text[4] = ' ';
	text[5] = (point_x/1000)+0x30;
	text[6] = ((point_x%1000)/100)+0x30;
	text[7] = ((point_x%100)/10)+0x30;
	text[8] = (point_x%10)+0x30;
	text[9] = ',';
	text[10] = ' ';
	text[11] = (point_y/1000)+0x30;
	text[12] = ((point_y%1000)/100)+0x30;
	text[13] = ((point_y%100)/10)+0x30;
	text[14] = (point_y%10)+0x30;
	text[15] = 0;
	text[16] = 0;
	IO_LCD_GUI_Text(point_x, point_y, text, White, Black);
	text[15] = '\r';
	text[16] = '\n';
	printf(text);

	GUI_set_Location(TEST);
	return TEST;
}

void UserInterface_Initalize()
{
	page_home();
	printf("GUI Start!");
}

int page_home(void)
{
	IO_LCD_Clear(Black);

	IndicatorBar("Location - Home");

	GUI_formatBT(_Menu1(50, 180));
	GUI_formatBT(_Menu2(200, 180));
	GUI_formatBT(_Menu3(50, 100));


	GUI_set_Location(HOME);
	return HOME;
}



int page_menu1(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu1");
	GUI_formatBT(_M1sub1(200, 180));

	GUI_set_Location(MENU_1);
	return MENU_1;
}

int page_menu2(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu2");
	GUI_formatBT(_M1sub2(200, 180));

	GUI_set_Location(MENU_3);
	return MENU_3;
}

int page_menu3(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu3");
	GUI_formatBT(_M3sub1(200, 180));

	GUI_set_Location(MENU_3);
	return MENU_3;
}

int page_menu1_sub1(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu1_Sub1");

	GUI_formatBT(_LED1(30, 50));
	GUI_formatBT(_LED2(100, 50));
	GUI_formatBT(_LED3(170, 50));
	GUI_formatBT(_LED4(240, 50));

	GUI_set_Location(MENU_1_SUB1);
	return MENU_1_SUB1;
}
char _ch[10];
int page_menu2_sub1(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu2_Sub1");
	GUI_setGraphInitialize(_Graph(10,40), 50);


	GUI_set_Location(MENU_2_SUB1);
	return MENU_2_SUB1;
}

int page_menu3_sub1(void)
{
	IO_LCD_Clear(Black);
	IndicatorBar("Location - Menu3_Sub1");

	GUI_formatBT(_LED1(30, 50));
	GUI_formatBT(_LED2(100, 50));
	GUI_formatBT(_LED3(170, 50));
	GUI_formatBT(_LED4(240, 50));

	GUI_set_Location(MENU_3_SUB1);
	return MENU_3_SUB1;
}



////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////

int j;
char pre,temp;
void GUI_Grpaph(int value, int target)
{
	pre = Graph.Data[199];

	for(j=198; j>=0; j--)
	{
		temp = (int)Graph.Data[j];
		Graph.Data[j] = (char)pre;
		pre = temp;
	}
	GUI_setGraphValue(Graph, 50+value, target);
	Graph.Data[199]=(char)(50+value);

}
////////////////////////////////////////////////////////////////////


unsigned int TFT_x, TFT_y;

void IO_run_TFTLCD(void)
{
	if(IO_get_TFT_Point())
	{
		TFT_x = IO_get_TFT_x();
		TFT_y = IO_get_TFT_y();
		if( (_abs(TFT_x-_point_x_pre) <= 3) && (_abs(TFT_y-_point_y_pre) <= 3) )
		{
			click_flag++;
			__point_x = TFT_x; __point_y = TFT_y;
			_miss=0;
		}
		else
			click_flag = 0;

		_point_x_pre = TFT_x; _point_y_pre = TFT_y;

		InputProcessing_down(__point_x, __point_y, GUI_get_Location());
	}
	else
	{
		_miss++;
		if( ( click_flag >= 1 ) && ( _miss >= 5 ) )
		{
			if(InputProcessing(__point_x, __point_y, GUI_get_Location()))
			{
				__point_x=0; __point_y=0;
				_point_x_pre=0; _point_y_pre=0;
			}
			click_flag = 0; _miss = 0;
		}
	}
}


////////////////////////////////////////////////////////////////////
int InputProcessing_down(int x, int y, int CurrentPageState)
{
	point_x = x;
	point_y = y;
	switch(CurrentPageState)
	{
		case HOME :
		{
			if( 1 == GUI_xyRead(x, y, Menu1.rect ) ) { GUI_h_formatBT(Menu1,1); }
			else { GUI_h_formatBT(Menu1,0); }
			if( 1 == GUI_xyRead(x, y, Menu2.rect ) ) { GUI_h_formatBT(Menu2,1); }
			else { GUI_h_formatBT(Menu2,0); }
			if( 1 == GUI_xyRead(x, y, Menu3.rect ) ) { GUI_h_formatBT(Menu3,1); }
			else { GUI_h_formatBT(Menu3,0); }
		} break;

		case MENU_1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { GUI_DrawRect(Home.rect, Home.h_guide_color); }
			else { GUI_DrawRect(Home.rect, Home.guide_color); }
			if( 1 == GUI_xyRead(x, y, M1sub1.rect ) ) { GUI_DrawRect(M1sub1.rect, M1sub1.h_guide_color); }
			else { GUI_DrawRect(M1sub1.rect, M1sub1.guide_color); }

		} break;

		case MENU_2 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { GUI_DrawRect(Home.rect, Home.h_guide_color); }
			else { GUI_DrawRect(Home.rect, Home.guide_color); }
			if( 1 == GUI_xyRead(x, y, M1sub2.rect ) ) { GUI_DrawRect(M1sub2.rect, M1sub2.h_guide_color); }
			else { GUI_DrawRect(M1sub2.rect, M1sub2.guide_color); }
		} break;

		case MENU_3 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { GUI_DrawRect(Home.rect, Home.h_guide_color); }
			else { GUI_DrawRect(Home.rect, Home.guide_color); }
			if( 1 == GUI_xyRead(x, y, M3sub1.rect ) ) { GUI_DrawRect(M3sub1.rect, M3sub1.h_guide_color); }
			else { GUI_DrawRect(M3sub1.rect, M3sub1.guide_color); }
		} break;

		case MENU_1_SUB1 :
		{
			if( 1 == GUI_xyRead(x, y, LED1.rect ) ) { GUI_DrawRect(LED1.rect, LED1.h_guide_color); }
			else { GUI_DrawRect(LED1.rect, LED1.guide_color); }
			if( 1 == GUI_xyRead(x, y, LED2.rect ) ) { GUI_DrawRect(LED2.rect, LED2.h_guide_color); }
			else { GUI_DrawRect(LED2.rect, LED2.guide_color); }
			if( 1 == GUI_xyRead(x, y, LED3.rect ) ) { GUI_DrawRect(LED3.rect, LED3.h_guide_color); }
			else { GUI_DrawRect(LED3.rect, LED3.guide_color); }
			if( 1 == GUI_xyRead(x, y, LED4.rect ) ) { GUI_DrawRect(LED4.rect, LED4.h_guide_color); }
			else { GUI_DrawRect(LED4.rect, LED4.guide_color); }
		} break;

		case MENU_2_SUB1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { GUI_DrawRect(Home.rect, Home.h_guide_color); }
			else { GUI_DrawRect(Home.rect, Home.guide_color); }
		} break;

		case MENU_3_SUB1 :
				{
					if( 1 == GUI_xyRead(x, y, LED1.rect ) ) { GUI_DrawRect(LED1.rect, LED1.h_guide_color); }
					else { GUI_DrawRect(LED1.rect, LED1.guide_color); }
					if( 1 == GUI_xyRead(x, y, LED2.rect ) ) { GUI_DrawRect(LED2.rect, LED2.h_guide_color); }
					else { GUI_DrawRect(LED2.rect, LED2.guide_color); }
					if( 1 == GUI_xyRead(x, y, LED3.rect ) ) { GUI_DrawRect(LED3.rect, LED3.h_guide_color); }
					else { GUI_DrawRect(LED3.rect, LED3.guide_color); }
					if( 1 == GUI_xyRead(x, y, LED4.rect ) ) { GUI_DrawRect(LED4.rect, LED4.h_guide_color); }
					else { GUI_DrawRect(LED4.rect, LED4.guide_color); }
				} break;

		default :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { GUI_DrawRect(Home.rect, Home.h_guide_color); }
			else { GUI_DrawRect(Home.rect, Home.guide_color); }
		} break;
	}

	return 0;
}
////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////
int InputProcessing(int x, int y, int CurrentPageState)
{
	point_x = x;
	point_y = y;
	switch(CurrentPageState)
	{
		case TEST :
		{page_test(); return 1;
		}break;

		case HOME :
		{
			if( 1 == GUI_xyRead(x, y, Menu1.rect ) ) { page_menu1(); return 1; }
			else if( 1 == GUI_xyRead(x, y, Menu2.rect ) ) { page_menu2(); return 1; }
			else if( 1 == GUI_xyRead(x, y, Menu3.rect ) ) { page_menu3(); return 1; }
			else {return 0;}
		} break;

		case MENU_1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else if( 1 == GUI_xyRead(x, y, M1sub1.rect ) ) { page_menu1_sub1(); return 1; }
			else {return 0;}
		} break;

		case MENU_2 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else if( 1 == GUI_xyRead(x, y, M1sub2.rect ) ) { page_menu2_sub1(); return 1; }
			else {return 0;}
		} break;
		case MENU_3 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else if( 1 == GUI_xyRead(x, y, M3sub1.rect ) ) { page_menu3_sub1(); return 1; }
			else {return 0;}
		} break;

		case MENU_1_SUB1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else if( 1 == GUI_xyRead(x, y, LED1.rect ) )
			{
				IO_setBit_LED(0,LEDtog0);
				if(LEDtog0) LEDtog0 = 0;
				else 		LEDtog0 = 1;


				GUI_DrawRect(LED1.rect, LED1.guide_color);
				return 0;
			}
			else if( 1 == GUI_xyRead(x, y, LED2.rect ) )
			{
				IO_setBit_LED(1,LEDtog1);
				if(LEDtog1) LEDtog1 = 0;
				else 		LEDtog1 = 1;

				GUI_DrawRect(LED2.rect, LED2.guide_color);
				return 0;
			}
			else if( 1 == GUI_xyRead(x, y, LED3.rect ) )
			{
				IO_setBit_LED(2,LEDtog2);
				if(LEDtog2) LEDtog2 = 0;
				else 		LEDtog2 = 1;

				GUI_DrawRect(LED3.rect, LED3.guide_color);
				return 0;
			}
			else if( 1 == GUI_xyRead(x, y, LED4.rect ) )
			{

				IO_setBit_LED(3,LEDtog3);
				if(LEDtog3) LEDtog3 = 0;
				else 		LEDtog3 = 1;

				GUI_DrawRect(LED4.rect, LED4.guide_color);
				return 0;
			}
			else {return 0;}
		} break;

		case MENU_2_SUB1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else {return 0;}
		} break;

		default :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home();   return 1; }
			else {return 0;}
		} break;


		case MENU_3_SUB1 :
		{
			if( 1 == GUI_xyRead(x, y, Home.rect ) ) { page_home(); return 1; }
			else if( 1 == GUI_xyRead(x, y, LED1.rect ) )
			{
						IO_setBit_LED(4,LEDtog0);
						if(LEDtog0) LEDtog0 = 0;
						else 		LEDtog0 = 1;


						GUI_DrawRect(LED1.rect, LED1.guide_color);
						return 0;
					}
					else if( 1 == GUI_xyRead(x, y, LED2.rect ) )
					{
						IO_setBit_LED(5,LEDtog1);
						if(LEDtog1) LEDtog1 = 0;
						else 		LEDtog1 = 1;

						GUI_DrawRect(LED2.rect, LED2.guide_color);
						return 0;
					}
					else if( 1 == GUI_xyRead(x, y, LED3.rect ) )
					{
						IO_setBit_LED(6,LEDtog2);
						if(LEDtog2) LEDtog2 = 0;
						else 		LEDtog2 = 1;

						GUI_DrawRect(LED3.rect, LED3.guide_color);
						return 0;
					}
					else if( 1 == GUI_xyRead(x, y, LED4.rect ) )
					{

						IO_setBit_LED(7,LEDtog3);
						if(LEDtog3) LEDtog3 = 0;
						else 		LEDtog3 = 1;

						GUI_DrawRect(LED4.rect, LED4.guide_color);
						return 0;
					}
					else {return 0;}
				} break;
	}
}
////////////////////////////////////////////////////////////////////
