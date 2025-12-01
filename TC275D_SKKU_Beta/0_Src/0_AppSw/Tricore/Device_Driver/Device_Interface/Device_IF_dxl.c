/*
 * Device_IF_dxl.c
 *
 */


#include "Device_IF.h"
#include "Peripherals_UART.h"

#define UNIT_ANGLE	1024.0/300
#define UNIT_RPM	0.111

static unsigned char ID,ID_many;
static unsigned int parasum;
static unsigned int i, j, dxl_no;
static unsigned char length,length_sub;
static unsigned char instruction;
static unsigned char parameter[20][10];
static unsigned char RX_data[20];
static unsigned char angle[21];



/* Initialize Device of dynamixel --------------------------------------------*/
void IO_set_dxl(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Device setting for dynamixel line. -------------------------*/


	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("IO_Set_dxl\t\t\t-> ");
	#endif /*-----------------------------------------------------------------*/

	Set_UART_dxl();
	setPort_GPIO_dxl();

	Mode_joint(1);

	IO_dxl_Turn_sync_sub(1,150,0);
	IO_dxl_Turn_sync(500);


	#if SysLog /* System Log -------------------------------------------------*/
	printf_SysLog("Done.\r\n");
	#endif /*-----------------------------------------------------------------*/
}
/*----------------------------------------------------------------------------*/

void TX0_char(char buffer)
{
	/* To Do : UART Transmit 1 Byte */
	printf_UART_dxl(buffer);
}
/*----------------------------------------------------------------------------*/



void ID_Set(unsigned char id)
{
	ID = 0xFE;
	length = 0x04;
	instruction = 0x03;
	parameter[0][0] = 0x03;
	parameter[0][1] = id;
	Send();
}
/*----------------------------------------------------------------------------*/

void Mode_wheel(unsigned char id)
{
	TX0_char(0xff);							//START
	TX0_char(0xff);							//START
	TX0_char(id);							//ID
	TX0_char(0x05);							//LENGTH
	TX0_char(0x03);							//WRITE
	TX0_char(0x08);							//ADDRESS
	TX0_char(0x00);							//토크의 하위바이트 (0으로 설정)
	TX0_char(0x00);							//토크의 상위바이트 (0으로 설정)
	TX0_char(~(id+0x5+0x3+0x8));			//CHECKSUM
}
/*----------------------------------------------------------------------------*/

void Mode_joint(unsigned char id)
{
	TX0_char(0xff);							//START
	TX0_char(0xff);							//START
	TX0_char(id);							//ID
	TX0_char(0x05);							//LENGTH
	TX0_char(0x03);							//WRITE
	TX0_char(0x08);							//ADDRESS
	TX0_char(0xff);							//토크의 하위바이트 (최고값으로 설정)
	TX0_char(0x03);							//토크의 상위바이트 (최고값으로 설정)
	TX0_char(~(id+0x5+0x3+0x8+0xff+0x03));	//CHECKSUM
}
/*----------------------------------------------------------------------------*/

void Send_one(unsigned char id, unsigned char length, unsigned char instruction)
{
	parasum=0;
	TX0_char(0xff); //시작
	TX0_char(0xff); //시작
	TX0_char(ID);	//ID
	TX0_char(length); //길이
	TX0_char(instruction); //종류
	for(i=1; i<=length-2; i++){TX0_char(parameter[0][i]);parasum = parasum + parameter[0][i];}
	TX0_char(~(ID+length+instruction+parasum)); //CHECKSUM
	delay_ms(30);
}
/*----------------------------------------------------------------------------*/

void Turn_one(unsigned char id, float value_angle)
{
	ID = id;
	length = 0x05;
	instruction = 0x03;
	parameter[0][0] = 0x1E;
	parameter[0][2] = (char)((UNIT_ANGLE * value_angle)/256);
	parameter[0][1] = (char)((UNIT_ANGLE * value_angle)-(parameter[0][2]*256));
	Send_one(ID, length, instruction);
}
/*----------------------------------------------------------------------------*/

void Turn_Speed_one(unsigned char id, unsigned int value_rpm)
{
	ID = id;
	length = 0x05;
	instruction = 0x03;
	parameter[0][0] = 0x20;
	parameter[0][2] = (value_rpm / UNIT_RPM)/256;
	parameter[0][1] = (value_rpm / UNIT_RPM)-(parameter[0][2]*256);

	parasum=0;
	TX0_char(0xff); //시작
	TX0_char(0xff); //시작
	TX0_char(ID);	//ID
	TX0_char(length); //길이
	TX0_char(instruction); //종류
	for(i=1; i<=length-2; i++)
	{
		TX0_char(parameter[0][i]);
		parasum = parasum + parameter[0][i];
	}
	TX0_char(~(ID+length+instruction+parasum)); //CHECKSUM
	delay_ms(30);
}



// send the frame
void Send(void)
{
	parasum=0;
	TX0_char(0xff);							//시작
	TX0_char(0xff);							//시작
	TX0_char(0xFE);							//동시제어시 브로드캐스트 ID = 0xFE
	TX0_char(((length_sub+1)*ID_many)+4);	//이후 패킷의 총길이
	TX0_char(0x83);							//동시제어 Instruction
	TX0_char(instruction);					//사용할 명령 Instruction
	TX0_char(length_sub);					//parameter의 길이
	for(i=1; i<=dxl_no; i++)
	{
		for(j=0; j<=length_sub; j++)
		{
			TX0_char(parameter[i][j]);
			parasum = parasum + parameter[i][j];
		}
	}
	TX0_char(~(0xFE + (((length_sub+1)*ID_many)+4) + 0x83 + instruction + length_sub + parasum)); //CHECKSUM
	delay_ms(30);
}

void Initial_Position(void)
{
	instruction = 0x1E;
	length_sub = 2;
	ID_many = 20;

	for(i=1; i<=20; i++)
	{
		parameter[i][0]=i;
		parameter[i][1]=0x00;
		parameter[i][2]=0x02;
	}
	Send();
}

void IO_dxl_Turn_sync(float delay)
{
	instruction = 0x1E;		//사용할 명령 Instruction 무슨 명령인지
	length_sub = 4;			//parameter의 길이
	ID_many = dxl_no;		//동시제어할 다이나믹셀의 갯수
	Send();
	dxl_no=0;
	delay_ms(delay);
}


void IO_dxl_Turn_sync_sub(unsigned char id, float value_angle, float value_speed)
{

	if(value_angle <   1)		value_angle = 1;
	else if(value_angle > 299)	value_angle = 299;

	dxl_no++;;
	parameter[dxl_no][0] = id;																//ID
	parameter[dxl_no][2] = (char)(((UNIT_ANGLE) * value_angle)/256);						//목표위치의 상위바이트
	parameter[dxl_no][1] = (char)(((UNIT_ANGLE) * value_angle)-(parameter[dxl_no][2]*256));	//목표위치의 하위바이트
	parameter[dxl_no][4] = (char)((value_speed/UNIT_RPM)/256);								//모터속도의 상위바이트
	parameter[dxl_no][3] = (char)((value_speed/UNIT_RPM)-(parameter[dxl_no][4]*256));		//모터속도의 하위바이트
	angle[id] = value_angle;																//각 모터의 위치
}

void Read_Status(unsigned char id, unsigned char menu, unsigned char length_read)
{
	RX_data[0] = 0;

	TX0_char(0xFF);									//시작
	TX0_char(0xFF);									//시작
	TX0_char(id);									//데이터를 읽을 다이나믹셀 ID
	TX0_char(0x04);									//이후 패킷 길이
	TX0_char(0x02);									//Instruction Read
	TX0_char(menu);									//읽을 다이나믹셀의 데이터 주소
	TX0_char(length_read);							//읽을 데이터의 길이(unit_Byte)
	TX0_char(~(id + 0x06 + menu + length_read));	//CHECKSUM
}
