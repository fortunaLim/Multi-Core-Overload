#include <Ifx_Types.h>
#include "Device_IF_GUI.h"

#define HOME						1
#define MENU_1						21
#define MENU_2						22
#define MENU_3						23
#define MENU_1_SUB1					211
#define MENU_2_SUB1					221
#define MENU_3_SUB1					223
#define TEST						999
#define App_CHAT					311
#define App_BarGR_B					321
#define App_BarGR_C					331

#define CLICK_DOWN 11111
#define CLICK_UP 22222


IFX_EXTERN void GUI_Start(void);
void UserInterface_Initalize(void);
void IndicatorBar(unsigned char *str);
int page_test(void);
int page_home(void);
int page_menu1(void);
int page_menu2(void);
int page_menu1_sub1(void);
int page_menu2_sub1(void);
int page_menu3_sub1(void);

void graphtest(int value);

int page_App_CHAT(void);

int page_App_Bar_graphB(void);
void Bar_Graph3(float val1, float val2, float val3, float val4);

int page_App_Bar_graphC(void);

IFX_EXTERN void GUI_Grpaph(int value, int target);
IFX_EXTERN void IO_run_TFTLCD(void);


