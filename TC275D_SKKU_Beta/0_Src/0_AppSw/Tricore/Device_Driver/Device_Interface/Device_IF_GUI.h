#include <Ifx_Types.h>

/* LCD color */
#define White			0xFFFF
#define Black			0x0000
#define Grey			0xF7DE
#define Blue			0x001F
#define Blue2			0x051F
#define Red				0xF800
#define Magenta			0xF81F
#define Green			0x07E0
#define Cyan			0x7FFF
#define Yellow			0xFFE0
#define Olive			0x7BE0
#define Purple          0x780F

#define LSP_Toppic_font	Blue
#define LSP_font		White
#define LSP_Button_font	Black
#define LSP_TIMER_font 	Yellow

#define RGB565CONVERT(red, green, blue) (int) (((red >> 3) << 11) | ((green >> 2) << 5) | (blue >> 3))


typedef struct Rect
{
	int x1, y1, x2, y2;
	int width, height;
}pRect ;

/* Button */
typedef struct Button
{
	pRect rect;						/* Button Shape: Rectangle */
	unsigned char *name;			/* Name of the Button */
	unsigned int guide_color;		/* */
	unsigned int button_color;		/* Button Background Color*/
	unsigned int name_color;
	unsigned int h_guide_color;
}pBT ;

typedef struct Graph
{
	pRect rect;
	unsigned char *name;
	unsigned int guide_color;
	unsigned int line_color;
	unsigned int name_color;
	unsigned int value_color;
	unsigned int inside_color;
	unsigned int mark_color;
	char Data[200];
}pGRAPH ;

IFX_EXTERN void GUI_DrawRect(pRect rect, unsigned int color );
IFX_EXTERN void GUI_DrawRect_full(pRect rect, unsigned int color ,  unsigned int color_in);

IFX_EXTERN void GUI_formatBT(pBT BT);
IFX_EXTERN void GUI_h_formatBT(pBT BT, int check);

IFX_EXTERN void GUI_setGraphInitialize(pGRAPH GP, int target);
IFX_EXTERN void GUI_setGraphValue(pGRAPH GP, int value, int target);
IFX_EXTERN void GUI_setGraphClear(pGRAPH GP);

IFX_EXTERN void GUI_Delay (unsigned int nCount);
IFX_EXTERN int _abs(int x);
IFX_EXTERN void GUI_Button(int x1, int y1, int x2, int y2, unsigned int color ,  unsigned int color_in, unsigned char *str, unsigned int tcolor);
IFX_EXTERN int GUI_xyRead(int Current_x, int Current_y, pRect rect);

IFX_EXTERN int GUI_InputProcessing(int x, int y, int CurrentPageState);
IFX_EXTERN int GUI_InputProcessing_down(int x, int y, int CurrentPageState);

IFX_EXTERN void GUI_set_Location(int loc);
IFX_EXTERN int GUI_get_Location(void);




