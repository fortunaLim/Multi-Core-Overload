# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.c"
# 1 "C:\\Users\\tpwjd\\workspace\\TC275D_SKKU_Beta//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.c"







# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 1
# 11 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h"
# 1 "./0_Src/0_AppSw/Tricore/System/System_Configuration.h" 1
# 13 "./0_Src/0_AppSw/Tricore/System/System_Configuration.h"
void Configuration_System(void);
# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h" 1
# 12 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h"
# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h" 1
# 13 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 58 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 2
# 59 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 89 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef sint64 Ifx_TickTime;
# 56 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 128 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;







typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count = 6
} Ifx_Pwm_Mode;
# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 160 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 14 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h" 2
# 1 "./0_Src/0_AppSw/Config/Common/Configuration.h" 1
# 34 "./0_Src/0_AppSw/Config/Common/Configuration.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 35 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 1 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h" 1
# 30 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_cpu1 = 1,
    IfxSrc_Tos_cpu2 = 2,
    IfxSrc_Tos_dma = 3
} IfxSrc_Tos;
# 31 "./0_Src/0_AppSw/Tricore/System/System_ISR_Priority.h" 2
# 36 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxGlobal_cfg.h" 1
# 37 "./0_Src/0_AppSw/Config/Common/Configuration.h" 2
# 15 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h" 2
# 1 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 1
# 221 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
# 1 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 1
# 45 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxAsclin_cfg.h" 1
# 46 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 1
# 106 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_bf.h" 1
# 37 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_bf.h" 1
# 38 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1411 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 107 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 47 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 48 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 2





typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int BAUD1DIV : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int ADCCLKSEL : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    unsigned int CPU1DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    unsigned int CPU2DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    unsigned int ADCDIV : 6;
    unsigned int ADCSEL : 2;
    unsigned int reserved_8 : 21;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 20;
    unsigned int reserved_24 : 7;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVR33CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR33OFF : 1;
    unsigned int BPEVR33OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR33CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int ADC33V : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRDVSTAT_Bits
{
    unsigned int DVS13TRIM : 8;
    unsigned int reserved_8 : 8;
    unsigned int DVS33TRIM : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRDVSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 2;
    unsigned int EVR33OVMOD : 2;
    unsigned int reserved_10 : 2;
    unsigned int EVR33UVMOD : 2;
    unsigned int reserved_14 : 2;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROSCCTRL_Bits
{
    unsigned int OSCTRIM : 10;
    unsigned int OSCPTAT : 6;
    unsigned int OSCANASEL : 4;
    unsigned int HPBGTRIM : 7;
    unsigned int HPBGCLKEN : 1;
    unsigned int OSC3V3 : 1;
    unsigned int reserved_29 : 2;
    unsigned int LCK : 1;
} Ifx_SCU_EVROSCCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int EVR33OVVAL : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int RST13TRIM : 8;
    unsigned int reserved_8 : 16;
    unsigned int RST13OFF : 1;
    unsigned int BPRST13OFF : 1;
    unsigned int RST33OFF : 1;
    unsigned int BPRST33OFF : 1;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF1_Bits
{
    unsigned int SD5P : 8;
    unsigned int SD5I : 8;
    unsigned int SD5D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF1_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 8;
    unsigned int SD33I : 8;
    unsigned int SD33D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF3_Bits
{
    unsigned int CT5REG0 : 8;
    unsigned int CT5REG1 : 8;
    unsigned int CT5REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF3_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF4_Bits
{
    unsigned int CT5REG3 : 8;
    unsigned int CT5REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF4_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF5_Bits
{
    unsigned int CT33REG0 : 8;
    unsigned int CT33REG1 : 8;
    unsigned int CT33REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF5_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF6_Bits
{
    unsigned int CT33REG3 : 8;
    unsigned int CT33REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF6_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 16;
    unsigned int SDFREQ : 8;
    unsigned int SDSTEP : 4;
    unsigned int reserved_28 : 2;
    unsigned int SDSAMPLE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int DRVP : 8;
    unsigned int SDMINMAXDC : 8;
    unsigned int DRVN : 8;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDPWMPRE : 8;
    unsigned int SDPID : 8;
    unsigned int SDVOKLVL : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL4_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int SYNCDIV : 3;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL4_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int EVR33 : 1;
    unsigned int OV33 : 1;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int UV33 : 1;
    unsigned int UVSWD : 1;
    unsigned int EXTPASS13 : 1;
    unsigned int EXTPASS33 : 1;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 21;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRTRIM_Bits
{
    unsigned int EVR13TRIM : 8;
    unsigned int reserved_8 : 22;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRTRIM_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int EVR33UVVAL : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int CAP0EN : 1;
    unsigned int CAP1EN : 1;
    unsigned int CAP2EN : 1;
    unsigned int CAP3EN : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 2;
    unsigned int TRISTEN : 1;
    unsigned int TRISTREQ : 1;
    unsigned int PORSTDF : 1;
    unsigned int PWRWKEN : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int CPUIDLSEL : 3;
    unsigned int reserved_11 : 1;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 11;
    unsigned int CPUSEL : 3;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int PWRWKP : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int TRIST : 1;
    unsigned int reserved_16 : 4;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int PWRWKEN : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int PWRWKPCLR : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR33CON_Bits B;
} Ifx_SCU_EVR33CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRDVSTAT_Bits B;
} Ifx_SCU_EVRDVSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROSCCTRL_Bits B;
} Ifx_SCU_EVROSCCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF1_Bits B;
} Ifx_SCU_EVRSDCOEFF1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF3_Bits B;
} Ifx_SCU_EVRSDCOEFF3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF4_Bits B;
} Ifx_SCU_EVRSDCOEFF4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF5_Bits B;
} Ifx_SCU_EVRSDCOEFF5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF6_Bits B;
} Ifx_SCU_EVRSDCOEFF6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL4_Bits B;
} Ifx_SCU_EVRSDCTRL4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRTRIM_Bits B;
} Ifx_SCU_EVRTRIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLCON_Bits B;
} Ifx_SCU_LCLCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 2251 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 2277 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    Ifx_SCU_CCUCON7 CCUCON7;
    Ifx_SCU_CCUCON8 CCUCON8;
    Ifx_SCU_CCUCON9 CCUCON9;
    unsigned char reserved_90[12];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    Ifx_SCU_EVRDVSTAT EVRDVSTAT;
    Ifx_SCU_EVR13CON EVR13CON;
    Ifx_SCU_EVR33CON EVR33CON;
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[3];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[3];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON LCLCON0;
    Ifx_SCU_LCLCON LCLCON1;
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[8];
    Ifx_SCU_EVRTRIM EVRTRIM;
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    Ifx_SCU_EVRSDCTRL4 EVRSDCTRL4;
    Ifx_SCU_EVRSDCOEFF1 EVRSDCOEFF1;
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    Ifx_SCU_EVRSDCOEFF3 EVRSDCOEFF3;
    Ifx_SCU_EVRSDCOEFF4 EVRSDCOEFF4;
    Ifx_SCU_EVRSDCOEFF5 EVRSDCOEFF5;
    Ifx_SCU_EVRSDCOEFF6 EVRSDCOEFF6;
    Ifx_SCU_EVROSCCTRL EVROSCCTRL;
    unsigned char reserved_1DC[4];
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[436];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 2
# 49 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 50 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 59 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 86 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 99 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, IfxScuWdt_Config *config);
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, IfxScuWdt_Config *config);
# 135 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 148 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 160 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 171 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 187 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 199 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 209 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 219 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 239 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 254 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 268 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 279 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 289 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 300 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 310 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 320 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 330 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 340 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 349 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);
# 358 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 368 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 378 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);







static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;

    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)((*(Ifx_SCU *)0xF0036000u)).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;


    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}
# 108 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
# 48 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}
# 94 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 184 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 384 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 436 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 470 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 532 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1167 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1238 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1291 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1337 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1422 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
# 1450 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
  sint32 ie;
  uint32 retval = 1;
  ie = __disable_and_save();
  if (condition == *address)
  {
     __swap((void *)address,value );
 retval = 0;
  }
  __restore(ie);
  return retval;

}
# 1474 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}



static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}
# 37 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 65 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" (cx),"i" (16),"i" (4) : "memory"); res; });
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (28),"i" (4) : "memory"); res; }) << 16;
    seg_idx = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (6),"i" (16) : "memory"); res; });
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 1
# 54 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1487 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1534 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 55 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 2
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = 0,
    IfxCpu_ResourceCpu_1 = 1,
    IfxCpu_ResourceCpu_2 = 2,
    IfxCpu_ResourceCpu_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(3)];
# 49 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 2;
    unsigned int reserved_13 : 3;
    unsigned int ECC : 6;
    unsigned int reserved_22 : 2;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 89 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_AGBT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_AGBT;


typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CIF
{
    Ifx_SRC_SRCR MI;
    Ifx_SRC_SRCR MIEP;
    Ifx_SRC_SRCR ISP;
    Ifx_SRC_SRCR MJPEG;
} Ifx_SRC_CIF;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DAM
{
    Ifx_SRC_SRCR SR[6];
} Ifx_SRC_DAM;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[64];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_DSADC
{
    Ifx_SRC_SRCR SRM;
    Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_FCE
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[16];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    Ifx_SRC_SRCR ARUIRQ[3];
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR BRCIRQ;
    Ifx_SRC_SRCR CMPIRQ;
    Ifx_SRC_SRCR SPEIRQ[2];
    unsigned char reserved_24[8];
    Ifx_SRC_SRCR PSM[1][8];
    unsigned char reserved_4C[88];
    Ifx_SRC_SRCR DPLL[27];
    unsigned char reserved_110[96];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[4][8];
    unsigned char reserved_200[384];
    Ifx_SRC_SRCR MCS[4][8];
    unsigned char reserved_400[384];
    Ifx_SRC_SRCR TOM[3][8];
    unsigned char reserved_5E0[416];
    Ifx_SRC_SRCR ATOM[5][4];
    unsigned char reserved_7D0[304];
    Ifx_SRC_SRCR MCSW0[4];
    unsigned char reserved_910[48];
    Ifx_SRC_SRCR MCSW1[4];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSCT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_HSSL
{
    Ifx_SRC_SRCR COK;
    Ifx_SRC_SRCR RDI;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL;


typedef volatile struct _Ifx_SRC_I2C
{
    Ifx_SRC_SRCR BREQ;
    Ifx_SRC_SRCR LBREQ;
    Ifx_SRC_SRCR SREQ;
    Ifx_SRC_SRCR LSREQ;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR P;
    unsigned char reserved_18[56];
} Ifx_SRC_I2C;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_MSC
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    Ifx_SRC_SRCR SR4;
} Ifx_SRC_MSC;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_PSI5
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5;


typedef volatile struct _Ifx_SRC_PSI5S
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[10];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 385 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GAGBT
{
    Ifx_SRC_AGBT AGBT[1];
} Ifx_SRC_GAGBT;


typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[4];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCIF
{
    Ifx_SRC_CIF CIF[1];
} Ifx_SRC_GCIF;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[3];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDAM
{
    Ifx_SRC_DAM DAM[1];
} Ifx_SRC_GDAM;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GDSADC
{
    Ifx_SRC_DSADC DSADC[6];
} Ifx_SRC_GDSADC;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GFCE
{
    Ifx_SRC_FCE FCE[1];
} Ifx_SRC_GFCE;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[3];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSCT
{
    Ifx_SRC_HSCT HSCT[1];
} Ifx_SRC_GHSCT;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GHSSL
{
    Ifx_SRC_HSSL HSSL[4];
    Ifx_SRC_SRCR EXI;
} Ifx_SRC_GHSSL;


typedef volatile struct _Ifx_SRC_GI2C
{
    Ifx_SRC_I2C I2C[1];
} Ifx_SRC_GI2C;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GMSC
{
    Ifx_SRC_MSC MSC[2];
} Ifx_SRC_GMSC;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GPSI5
{
    Ifx_SRC_PSI5 PSI5[1];
} Ifx_SRC_GPSI5;


typedef volatile struct _Ifx_SRC_GPSI5S
{
    Ifx_SRC_PSI5S PSI5S[1];
} Ifx_SRC_GPSI5S;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[3];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[8];
    unsigned char reserved_80[160];
    Ifx_SRC_VADCCG CG[2];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 602 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    unsigned char reserved_C[20];
    Ifx_SRC_GEMEM EMEM;
    Ifx_SRC_GAGBT AGBT;
    unsigned char reserved_28[24];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_B0[224];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[160];
    Ifx_SRC_GHSCT HSCT;
    unsigned char reserved_294[12];
    Ifx_SRC_GHSSL HSSL;
    unsigned char reserved_2E4[28];
    Ifx_SRC_GI2C I2C;
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_378[104];
    Ifx_SRC_GMSC MSC;
    unsigned char reserved_408[24];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    unsigned char reserved_4A8[8];
    Ifx_SRC_GFCE FCE;
    unsigned char reserved_4B4[60];
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_600[752];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_940[64];
    Ifx_SRC_GVADC VADC;
    unsigned char reserved_AC0[144];
    Ifx_SRC_GDSADC DSADC;
    unsigned char reserved_B80[96];
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[20];
    Ifx_SRC_GPSI5 PSI5;
    unsigned char reserved_D50[32];
    Ifx_SRC_GDAM DAM;
    unsigned char reserved_D88[24];
    Ifx_SRC_GCIF CIF;
    unsigned char reserved_DB0[48];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[12];
    Ifx_SRC_GPSI5S PSI5S;
    unsigned char reserved_E10[496];
    Ifx_SRC_GGPSR GPSR;
    unsigned char reserved_1060[1440];
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1F50[176];
} Ifx_SRC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 2
# 50 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2



# 1 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 1
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 90 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;
# 104 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 130 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 163 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void);




static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 178 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 198 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);





extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 219 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 228 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 237 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 254 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 264 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 284 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 302 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 311 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 333 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 344 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 361 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 374 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 395 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 427 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 444 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 453 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 488 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 506 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 533 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address)
{
    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));
    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address)
{
    Ifx_CPU_CCNT ccnt;

    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;
    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    ((*(Ifx_SCU *)0xF0036000u)).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 109 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 1
# 42 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int MSTART0 : 5;
    unsigned int reserved_13 : 3;
    unsigned int MSIZE1 : 5;
    unsigned int reserved_21 : 3;
    unsigned int MSTART1 : 5;
    unsigned int reserved_29 : 3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL : 32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN : 1;
    unsigned int CMP0IR : 1;
    unsigned int CMP0OS : 1;
    unsigned int reserved_3 : 1;
    unsigned int CMP1EN : 1;
    unsigned int CMP1IR : 1;
    unsigned int CMP1OS : 1;
    unsigned int reserved_7 : 25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR : 1;
    unsigned int CMP0IRS : 1;
    unsigned int CMP1IRR : 1;
    unsigned int CMP1IRS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4 : 32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8 : 32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12 : 32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16 : 32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20 : 32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32 : 32;
} Ifx_STM_TIM6_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 495 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 43 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 2
# 110 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int VLD1 : 1;
    unsigned int VLD2 : 1;
    unsigned int VLD3 : 1;
    unsigned int VLD4 : 1;
    unsigned int VLD5 : 1;
    unsigned int VLD6 : 1;
    unsigned int VLD7 : 1;
    unsigned int VLD8 : 1;
    unsigned int VLD9 : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS : 8;
    unsigned int reserved_8 : 24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int DECENCDIS : 1;
    unsigned int PECENCDIS : 1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH : 4;
    unsigned int WSECPF : 2;
    unsigned int WSDFLASH : 6;
    unsigned int WSECDF : 3;
    unsigned int IDLE : 1;
    unsigned int ESLDIS : 1;
    unsigned int SLEEP : 1;
    unsigned int NSAFECC : 1;
    unsigned int STALL : 1;
    unsigned int RES21 : 2;
    unsigned int RES23 : 2;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int PROERM : 1;
    unsigned int reserved_27 : 3;
    unsigned int PR5V : 1;
    unsigned int EOBM : 1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP : 1;
    unsigned int PRODISP : 1;
    unsigned int PROIND : 1;
    unsigned int PRODISD : 1;
    unsigned int PROINHSMCOTP : 1;
    unsigned int RES5 : 1;
    unsigned int PROINOTP : 1;
    unsigned int RES7 : 1;
    unsigned int PROINDBG : 1;
    unsigned int PRODISDBG : 1;
    unsigned int PROINHSM : 1;
    unsigned int reserved_11 : 5;
    unsigned int DCFP : 1;
    unsigned int DDFP : 1;
    unsigned int DDFPX : 1;
    unsigned int reserved_19 : 1;
    unsigned int DDFD : 1;
    unsigned int reserved_21 : 1;
    unsigned int ENPE : 2;
    unsigned int reserved_24 : 8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY : 1;
    unsigned int D0BUSY : 1;
    unsigned int D1BUSY : 1;
    unsigned int P0BUSY : 1;
    unsigned int P1BUSY : 1;
    unsigned int RES5 : 1;
    unsigned int RES6 : 1;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int PFPAGE : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int PROER : 1;
    unsigned int PFSBER : 1;
    unsigned int PFDBER : 1;
    unsigned int PFMBER : 1;
    unsigned int RES17 : 1;
    unsigned int DFSBER : 1;
    unsigned int DFDBER : 1;
    unsigned int DFTBER : 1;
    unsigned int DFMBER : 1;
    unsigned int SRIADDERR : 1;
    unsigned int reserved_23 : 2;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int SLM : 1;
    unsigned int reserved_29 : 1;
    unsigned int ORIER : 1;
    unsigned int reserved_31 : 1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB : 2;
    unsigned int reserved_2 : 22;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int reserved_26 : 5;
    unsigned int EOBM : 1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int D1BUSY : 1;
    unsigned int reserved_3 : 4;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int reserved_9 : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int reserved_13 : 12;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int reserved_28 : 4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SELD1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN : 1;
    unsigned int SELD0 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 10;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0 : 1;
    unsigned int SELP1 : 1;
    unsigned int RES2 : 1;
    unsigned int RES3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L : 1;
    unsigned int NSAFECC : 1;
    unsigned int RAMIN : 2;
    unsigned int RAMINSEL : 4;
    unsigned int OSCCFG : 1;
    unsigned int MODE : 2;
    unsigned int APREN : 1;
    unsigned int CAP0EN : 1;
    unsigned int CAP1EN : 1;
    unsigned int CAP2EN : 1;
    unsigned int CAP3EN : 1;
    unsigned int ESR0CNT : 12;
    unsigned int RES29 : 2;
    unsigned int RES30 : 1;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int EDM : 2;
    unsigned int reserved_4 : 28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int TSTIFLCK : 1;
    unsigned int HSMTSTDIS : 1;
    unsigned int RES15 : 12;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN : 1;
    unsigned int SSWWAIT : 1;
    unsigned int HSMDX : 1;
    unsigned int HSM6X : 1;
    unsigned int HSM16X : 1;
    unsigned int HSM17X : 1;
    unsigned int S6ROM : 1;
    unsigned int HSMENPINS : 2;
    unsigned int HSMENRES : 2;
    unsigned int DESTDBG : 2;
    unsigned int BLKFLAN : 1;
    unsigned int reserved_14 : 2;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int reserved_18 : 14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM : 1;
    unsigned int S1ROM : 1;
    unsigned int S2ROM : 1;
    unsigned int S3ROM : 1;
    unsigned int S4ROM : 1;
    unsigned int S5ROM : 1;
    unsigned int S6ROM : 1;
    unsigned int S7ROM : 1;
    unsigned int S8ROM : 1;
    unsigned int S9ROM : 1;
    unsigned int S10ROM : 1;
    unsigned int S11ROM : 1;
    unsigned int S12ROM : 1;
    unsigned int S13ROM : 1;
    unsigned int S14ROM : 1;
    unsigned int S15ROM : 1;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int S18ROM : 1;
    unsigned int S19ROM : 1;
    unsigned int S20ROM : 1;
    unsigned int S21ROM : 1;
    unsigned int S22ROM : 1;
    unsigned int S23ROM : 1;
    unsigned int S24ROM : 1;
    unsigned int S25ROM : 1;
    unsigned int S26ROM : 1;
    unsigned int reserved_27 : 2;
    unsigned int BML : 2;
    unsigned int TP : 1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L : 1;
    unsigned int S1L : 1;
    unsigned int S2L : 1;
    unsigned int S3L : 1;
    unsigned int S4L : 1;
    unsigned int S5L : 1;
    unsigned int S6L : 1;
    unsigned int S7L : 1;
    unsigned int S8L : 1;
    unsigned int S9L : 1;
    unsigned int S10L : 1;
    unsigned int S11L : 1;
    unsigned int S12L : 1;
    unsigned int S13L : 1;
    unsigned int S14L : 1;
    unsigned int S15L : 1;
    unsigned int S16L : 1;
    unsigned int S17L : 1;
    unsigned int S18L : 1;
    unsigned int S19L : 1;
    unsigned int S20L : 1;
    unsigned int S21L : 1;
    unsigned int S22L : 1;
    unsigned int S23L : 1;
    unsigned int S24L : 1;
    unsigned int S25L : 1;
    unsigned int S26L : 1;
    unsigned int reserved_27 : 4;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP : 1;
    unsigned int S1WOP : 1;
    unsigned int S2WOP : 1;
    unsigned int S3WOP : 1;
    unsigned int S4WOP : 1;
    unsigned int S5WOP : 1;
    unsigned int S6WOP : 1;
    unsigned int S7WOP : 1;
    unsigned int S8WOP : 1;
    unsigned int S9WOP : 1;
    unsigned int S10WOP : 1;
    unsigned int S11WOP : 1;
    unsigned int S12WOP : 1;
    unsigned int S13WOP : 1;
    unsigned int S14WOP : 1;
    unsigned int S15WOP : 1;
    unsigned int S16WOP : 1;
    unsigned int S17WOP : 1;
    unsigned int S18WOP : 1;
    unsigned int S19WOP : 1;
    unsigned int S20WOP : 1;
    unsigned int S21WOP : 1;
    unsigned int S22WOP : 1;
    unsigned int S23WOP : 1;
    unsigned int S24WOP : 1;
    unsigned int S25WOP : 1;
    unsigned int S26WOP : 1;
    unsigned int reserved_27 : 4;
    unsigned int DATM : 1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int reserved_1 : 31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 1072 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
} Ifx_FLASH_UBAB;
# 1106 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[2];
    unsigned char reserved_1028[8];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[2];
    unsigned char reserved_1040[8];
    Ifx_FLASH_PROCONWOP PROCONWOP[2];
    unsigned char reserved_1050[8];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[2];
    unsigned char reserved_1078[24];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[2];
    unsigned char reserved_109C[8];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[2];
    unsigned char reserved_10CC[24];
    Ifx_FLASH_UBAB UBAB[2];
    unsigned char reserved_10FC[68];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 2
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 2

# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 1
# 84 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR0_Bits;


typedef struct _Ifx_P_LPCR1_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR1_Bits;


typedef struct _Ifx_P_LPCR1_P21_Bits
{
    unsigned int RDIS_CTRL : 1;
    unsigned int RX_DIS : 1;
    unsigned int TERM : 1;
    unsigned int LRXTERM : 5;
    unsigned int reserved_8 : 24;
} Ifx_P_LPCR1_P21_Bits;


typedef struct _Ifx_P_LPCR2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int LVDSR : 1;
    unsigned int LVDSRL : 1;
    unsigned int reserved_10 : 2;
    unsigned int TDIS_CTRL : 1;
    unsigned int TX_DIS : 1;
    unsigned int TX_PD : 1;
    unsigned int TX_PWDPD : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_LPCR2_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int SEL0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int SEL3 : 1;
    unsigned int SEL4 : 1;
    unsigned int SEL5 : 1;
    unsigned int SEL6 : 1;
    unsigned int reserved_7 : 3;
    unsigned int SEL10 : 1;
    unsigned int SEL11 : 1;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR0_Bits B;
} Ifx_P_LPCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR1_Bits B;

    Ifx_P_LPCR1_P21_Bits B_P21;
} Ifx_P_LPCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR2_Bits B;
} Ifx_P_LPCR2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 825 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_68[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[8];
    Ifx_P_LPCR0 LPCR0;
    Ifx_P_LPCR1 LPCR1;
    Ifx_P_LPCR2 LPCR2;
    unsigned char reserved_A4[76];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 85 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 2
# 42 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(16)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(16)];
# 44 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 55 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_ControlledBy_port = 0,
    IfxPort_ControlledBy_hsct = 1
} IfxPort_ControlledBy;



typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_lvdsSpeed1 = 4,
    IfxPort_PadDriver_lvdsSpeed2 = 5,
    IfxPort_PadDriver_lvdsSpeed3 = 6,
    IfxPort_PadDriver_lvdsSpeed4 = 7,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;



typedef enum
{
    IfxPort_PadSupply_5v = 0,
    IfxPort_PadSupply_3v = 1
} IfxPort_PadSupply;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 170 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 208 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 223 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 238 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 252 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 267 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 283 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 298 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 321 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 339 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 355 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 370 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 394 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 413 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 423 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern sint32 IfxPort_getIndex(Ifx_P *port);
# 439 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 456 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 472 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 481 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsMedium(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver lvdsPadDriver, IfxPort_PadSupply padSupply);
# 490 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsHigh(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode, IfxPort_ControlledBy enablePortControlled);
# 507 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 518 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 2





typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P32_2_OUT;
extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P33_13_OUT;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P32_4_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG1EVR33_P14_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG6_P14_4_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ4_P10_7_IN;
extern IfxScu_Req_In IfxScu_REQ5_P10_8_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT1LCK_P20_7_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT2LCK_P20_6_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 145 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Dcdcsync_Out *IfxScu_Dcdcsync_Out_pinTable[1][2];


extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][3];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][7];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][4];
# 113 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 129 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 143 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;





typedef enum
{
    IfxScuCcu_AdcClockSelection_noClock = 0,
    IfxScuCcu_AdcClockSelection_fpll2 = 1,
    IfxScuCcu_AdcClockSelection_fPLL2ERAY = 2,
    IfxScuCcu_AdcClockSelection_backup = 3
} IfxScuCcu_AdcClockSelection;
# 719 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
    IfxScuCcu_CcuconRegConfig ccucon7;
    IfxScuCcu_CcuconRegConfig ccucon8;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 814 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);
# 847 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getAdcFrequency(void);





extern float32 IfxScuCcu_getBaud1Frequency(void);





extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);





extern void IfxScuCcu_selectAdcClock(IfxScuCcu_AdcClockSelection adcClkSel);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2ErayFrequency(float32 pll2ErayFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 1007 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 1016 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 1031 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1056 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1067 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1076 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void)
{
    float32 pll2ErayFrequency;

    pll2ErayFrequency = IfxScuCcu_getPllErayVcoFrequency() / ((*(volatile Ifx_SCU_PLLERAYCON1 *)0xF003602Cu).B.K3DIV + 1);

    return pll2ErayFrequency;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1 *)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV;
}
# 47 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 2


# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_reg.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h"
typedef struct _Ifx_ASCLIN_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_ASCLIN_ACCEN0_Bits;


typedef struct _Ifx_ASCLIN_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ASCLIN_ACCEN1_Bits;


typedef struct _Ifx_ASCLIN_BITCON_Bits
{
    unsigned int PRESCALER : 12;
    unsigned int reserved_12 : 4;
    unsigned int OVERSAMPLING : 4;
    unsigned int reserved_20 : 4;
    unsigned int SAMPLEPOINT : 4;
    unsigned int reserved_28 : 3;
    unsigned int SM : 1;
} Ifx_ASCLIN_BITCON_Bits;


typedef struct _Ifx_ASCLIN_BRD_Bits
{
    unsigned int LOWERLIMIT : 8;
    unsigned int UPPERLIMIT : 8;
    unsigned int MEASURED : 12;
    unsigned int reserved_28 : 4;
} Ifx_ASCLIN_BRD_Bits;


typedef struct _Ifx_ASCLIN_BRG_Bits
{
    unsigned int DENOMINATOR : 12;
    unsigned int reserved_12 : 4;
    unsigned int NUMERATOR : 12;
    unsigned int reserved_28 : 4;
} Ifx_ASCLIN_BRG_Bits;


typedef struct _Ifx_ASCLIN_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_ASCLIN_CLC_Bits;


typedef struct _Ifx_ASCLIN_CSR_Bits
{
    unsigned int CLKSEL : 5;
    unsigned int reserved_5 : 26;
    unsigned int CON : 1;
} Ifx_ASCLIN_CSR_Bits;


typedef struct _Ifx_ASCLIN_DATCON_Bits
{
    unsigned int DATLEN : 4;
    unsigned int reserved_4 : 9;
    unsigned int HO : 1;
    unsigned int RM : 1;
    unsigned int CSM : 1;
    unsigned int RESPONSE : 8;
    unsigned int reserved_24 : 8;
} Ifx_ASCLIN_DATCON_Bits;


typedef struct _Ifx_ASCLIN_FLAGS_Bits
{
    unsigned int TH : 1;
    unsigned int TR : 1;
    unsigned int RH : 1;
    unsigned int RR : 1;
    unsigned int reserved_4 : 1;
    unsigned int FED : 1;
    unsigned int RED : 1;
    unsigned int reserved_7 : 6;
    unsigned int TWRQ : 1;
    unsigned int THRQ : 1;
    unsigned int TRRQ : 1;
    unsigned int PE : 1;
    unsigned int TC : 1;
    unsigned int FE : 1;
    unsigned int HT : 1;
    unsigned int RT : 1;
    unsigned int BD : 1;
    unsigned int LP : 1;
    unsigned int LA : 1;
    unsigned int LC : 1;
    unsigned int CE : 1;
    unsigned int RFO : 1;
    unsigned int RFU : 1;
    unsigned int RFL : 1;
    unsigned int reserved_29 : 1;
    unsigned int TFO : 1;
    unsigned int TFL : 1;
} Ifx_ASCLIN_FLAGS_Bits;


typedef struct _Ifx_ASCLIN_FLAGSCLEAR_Bits
{
    unsigned int THC : 1;
    unsigned int TRC : 1;
    unsigned int RHC : 1;
    unsigned int RRC : 1;
    unsigned int reserved_4 : 1;
    unsigned int FEDC : 1;
    unsigned int REDC : 1;
    unsigned int reserved_7 : 6;
    unsigned int TWRQC : 1;
    unsigned int THRQC : 1;
    unsigned int TRRQC : 1;
    unsigned int PEC : 1;
    unsigned int TCC : 1;
    unsigned int FEC : 1;
    unsigned int HTC : 1;
    unsigned int RTC : 1;
    unsigned int BDC : 1;
    unsigned int LPC : 1;
    unsigned int LAC : 1;
    unsigned int LCC : 1;
    unsigned int CEC : 1;
    unsigned int RFOC : 1;
    unsigned int RFUC : 1;
    unsigned int RFLC : 1;
    unsigned int reserved_29 : 1;
    unsigned int TFOC : 1;
    unsigned int TFLC : 1;
} Ifx_ASCLIN_FLAGSCLEAR_Bits;


typedef struct _Ifx_ASCLIN_FLAGSENABLE_Bits
{
    unsigned int THE : 1;
    unsigned int TRE : 1;
    unsigned int RHE : 1;
    unsigned int RRE : 1;
    unsigned int reserved_4 : 1;
    unsigned int FEDE : 1;
    unsigned int REDE : 1;
    unsigned int reserved_7 : 9;
    unsigned int PEE : 1;
    unsigned int TCE : 1;
    unsigned int FEE : 1;
    unsigned int HTE : 1;
    unsigned int RTE : 1;
    unsigned int BDE : 1;
    unsigned int LPE : 1;
    unsigned int ABE : 1;
    unsigned int LCE : 1;
    unsigned int CEE : 1;
    unsigned int RFOE : 1;
    unsigned int RFUE : 1;
    unsigned int RFLE : 1;
    unsigned int reserved_29 : 1;
    unsigned int TFOE : 1;
    unsigned int TFLE : 1;
} Ifx_ASCLIN_FLAGSENABLE_Bits;


typedef struct _Ifx_ASCLIN_FLAGSSET_Bits
{
    unsigned int THS : 1;
    unsigned int TRS : 1;
    unsigned int RHS : 1;
    unsigned int RRS : 1;
    unsigned int reserved_4 : 1;
    unsigned int FEDS : 1;
    unsigned int REDS : 1;
    unsigned int reserved_7 : 6;
    unsigned int TWRQS : 1;
    unsigned int THRQS : 1;
    unsigned int TRRQS : 1;
    unsigned int PES : 1;
    unsigned int TCS : 1;
    unsigned int FES : 1;
    unsigned int HTS : 1;
    unsigned int RTS : 1;
    unsigned int BDS : 1;
    unsigned int LPS : 1;
    unsigned int LAS : 1;
    unsigned int LCS : 1;
    unsigned int CES : 1;
    unsigned int RFOS : 1;
    unsigned int RFUS : 1;
    unsigned int RFLS : 1;
    unsigned int reserved_29 : 1;
    unsigned int TFOS : 1;
    unsigned int TFLS : 1;
} Ifx_ASCLIN_FLAGSSET_Bits;


typedef struct _Ifx_ASCLIN_FRAMECON_Bits
{
    unsigned int reserved_0 : 6;
    unsigned int IDLE : 3;
    unsigned int STOP : 3;
    unsigned int LEAD : 3;
    unsigned int reserved_15 : 1;
    unsigned int MODE : 2;
    unsigned int reserved_18 : 10;
    unsigned int MSB : 1;
    unsigned int CEN : 1;
    unsigned int PEN : 1;
    unsigned int ODD : 1;
} Ifx_ASCLIN_FRAMECON_Bits;


typedef struct _Ifx_ASCLIN_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ASCLIN_ID_Bits;


typedef struct _Ifx_ASCLIN_IOCR_Bits
{
    unsigned int ALTI : 3;
    unsigned int reserved_3 : 1;
    unsigned int DEPTH : 6;
    unsigned int reserved_10 : 6;
    unsigned int CTS : 2;
    unsigned int reserved_18 : 7;
    unsigned int RCPOL : 1;
    unsigned int CPOL : 1;
    unsigned int SPOL : 1;
    unsigned int LB : 1;
    unsigned int CTSEN : 1;
    unsigned int RXM : 1;
    unsigned int TXM : 1;
} Ifx_ASCLIN_IOCR_Bits;


typedef struct _Ifx_ASCLIN_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ASCLIN_KRST0_Bits;


typedef struct _Ifx_ASCLIN_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ASCLIN_KRST1_Bits;


typedef struct _Ifx_ASCLIN_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ASCLIN_KRSTCLR_Bits;


typedef struct _Ifx_ASCLIN_LIN_BTIMER_Bits
{
    unsigned int BREAK : 6;
    unsigned int reserved_6 : 26;
} Ifx_ASCLIN_LIN_BTIMER_Bits;


typedef struct _Ifx_ASCLIN_LIN_CON_Bits
{
    unsigned int reserved_0 : 23;
    unsigned int CSI : 1;
    unsigned int reserved_24 : 1;
    unsigned int CSEN : 1;
    unsigned int MS : 1;
    unsigned int ABD : 1;
    unsigned int reserved_28 : 4;
} Ifx_ASCLIN_LIN_CON_Bits;


typedef struct _Ifx_ASCLIN_LIN_HTIMER_Bits
{
    unsigned int HEADER : 8;
    unsigned int reserved_8 : 24;
} Ifx_ASCLIN_LIN_HTIMER_Bits;


typedef struct _Ifx_ASCLIN_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_ASCLIN_OCS_Bits;


typedef struct _Ifx_ASCLIN_RXDATA_Bits
{
    unsigned int DATA : 32;
} Ifx_ASCLIN_RXDATA_Bits;


typedef struct _Ifx_ASCLIN_RXDATAD_Bits
{
    unsigned int DATA : 32;
} Ifx_ASCLIN_RXDATAD_Bits;


typedef struct _Ifx_ASCLIN_RXFIFOCON_Bits
{
    unsigned int FLUSH : 1;
    unsigned int ENI : 1;
    unsigned int reserved_2 : 4;
    unsigned int OUTW : 2;
    unsigned int INTLEVEL : 4;
    unsigned int reserved_12 : 4;
    unsigned int FILL : 5;
    unsigned int reserved_21 : 10;
    unsigned int BUF : 1;
} Ifx_ASCLIN_RXFIFOCON_Bits;


typedef struct _Ifx_ASCLIN_TXDATA_Bits
{
    unsigned int DATA : 32;
} Ifx_ASCLIN_TXDATA_Bits;


typedef struct _Ifx_ASCLIN_TXFIFOCON_Bits
{
    unsigned int FLUSH : 1;
    unsigned int ENO : 1;
    unsigned int reserved_2 : 4;
    unsigned int INW : 2;
    unsigned int INTLEVEL : 4;
    unsigned int reserved_12 : 4;
    unsigned int FILL : 5;
    unsigned int reserved_21 : 11;
} Ifx_ASCLIN_TXFIFOCON_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_ACCEN0_Bits B;
} Ifx_ASCLIN_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_ACCEN1_Bits B;
} Ifx_ASCLIN_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_BITCON_Bits B;
} Ifx_ASCLIN_BITCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_BRD_Bits B;
} Ifx_ASCLIN_BRD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_BRG_Bits B;
} Ifx_ASCLIN_BRG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_CLC_Bits B;
} Ifx_ASCLIN_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_CSR_Bits B;
} Ifx_ASCLIN_CSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_DATCON_Bits B;
} Ifx_ASCLIN_DATCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_FLAGS_Bits B;
} Ifx_ASCLIN_FLAGS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_FLAGSCLEAR_Bits B;
} Ifx_ASCLIN_FLAGSCLEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_FLAGSENABLE_Bits B;
} Ifx_ASCLIN_FLAGSENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_FLAGSSET_Bits B;
} Ifx_ASCLIN_FLAGSSET;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_FRAMECON_Bits B;
} Ifx_ASCLIN_FRAMECON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_ID_Bits B;
} Ifx_ASCLIN_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_IOCR_Bits B;
} Ifx_ASCLIN_IOCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_KRST0_Bits B;
} Ifx_ASCLIN_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_KRST1_Bits B;
} Ifx_ASCLIN_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_KRSTCLR_Bits B;
} Ifx_ASCLIN_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_LIN_BTIMER_Bits B;
} Ifx_ASCLIN_LIN_BTIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_LIN_CON_Bits B;
} Ifx_ASCLIN_LIN_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_LIN_HTIMER_Bits B;
} Ifx_ASCLIN_LIN_HTIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_OCS_Bits B;
} Ifx_ASCLIN_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_RXDATA_Bits B;
} Ifx_ASCLIN_RXDATA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_RXDATAD_Bits B;
} Ifx_ASCLIN_RXDATAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_RXFIFOCON_Bits B;
} Ifx_ASCLIN_RXFIFOCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_TXDATA_Bits B;
} Ifx_ASCLIN_TXDATA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ASCLIN_TXFIFOCON_Bits B;
} Ifx_ASCLIN_TXFIFOCON;
# 728 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h"
typedef volatile struct _Ifx_ASCLIN_LIN
{
    Ifx_ASCLIN_LIN_CON CON;
    Ifx_ASCLIN_LIN_BTIMER BTIMER;
    Ifx_ASCLIN_LIN_HTIMER HTIMER;
} Ifx_ASCLIN_LIN;
# 746 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h"
typedef volatile struct _Ifx_ASCLIN
{
    Ifx_ASCLIN_CLC CLC;
    Ifx_ASCLIN_IOCR IOCR;
    Ifx_ASCLIN_ID ID;
    Ifx_ASCLIN_TXFIFOCON TXFIFOCON;
    Ifx_ASCLIN_RXFIFOCON RXFIFOCON;
    Ifx_ASCLIN_BITCON BITCON;
    Ifx_ASCLIN_FRAMECON FRAMECON;
    Ifx_ASCLIN_DATCON DATCON;
    Ifx_ASCLIN_BRG BRG;
    Ifx_ASCLIN_BRD BRD;
    Ifx_ASCLIN_LIN LIN;
    Ifx_ASCLIN_FLAGS FLAGS;
    Ifx_ASCLIN_FLAGSSET FLAGSSET;
    Ifx_ASCLIN_FLAGSCLEAR FLAGSCLEAR;
    Ifx_ASCLIN_FLAGSENABLE FLAGSENABLE;
    Ifx_ASCLIN_TXDATA TXDATA;
    Ifx_ASCLIN_RXDATA RXDATA;
    Ifx_ASCLIN_CSR CSR;
    Ifx_ASCLIN_RXDATAD RXDATAD;
    unsigned char reserved_54[148];
    Ifx_ASCLIN_OCS OCS;
    Ifx_ASCLIN_KRSTCLR KRSTCLR;
    Ifx_ASCLIN_KRST1 KRST1;
    Ifx_ASCLIN_KRST0 KRST0;
    Ifx_ASCLIN_ACCEN1 ACCEN1;
    Ifx_ASCLIN_ACCEN0 ACCEN0;
} Ifx_ASCLIN;
# 46 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_reg.h" 2
# 50 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 2
# 1 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 1
# 95 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 96 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 113 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 122 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 131 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) unsigned char IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 140 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) unsigned char IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 149 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 167 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 176 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 185 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 217 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) unsigned char IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 51 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.h" 2







typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxAsclin_Cts_In;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxAsclin_Rx_In;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Rts_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Sclk_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Slso_Out;


typedef const struct
{
    Ifx_ASCLIN* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxAsclin_Tx_Out;

extern IfxAsclin_Cts_In IfxAsclin0_CTSA_P14_9_IN;
extern IfxAsclin_Cts_In IfxAsclin1_CTSA_P20_7_IN;
extern IfxAsclin_Cts_In IfxAsclin1_CTSB_P32_4_IN;
extern IfxAsclin_Cts_In IfxAsclin2_CTSA_P10_7_IN;
extern IfxAsclin_Cts_In IfxAsclin2_CTSB_P33_5_IN;
extern IfxAsclin_Cts_In IfxAsclin3_CTSA_P00_12_IN;
extern IfxAsclin_Rts_Out IfxAsclin0_RTS_P14_7_OUT;
extern IfxAsclin_Rts_Out IfxAsclin1_RTS_P20_6_OUT;
extern IfxAsclin_Rts_Out IfxAsclin1_RTS_P23_1_OUT;
extern IfxAsclin_Rts_Out IfxAsclin2_RTS_P10_8_OUT;
extern IfxAsclin_Rts_Out IfxAsclin2_RTS_P33_4_OUT;
extern IfxAsclin_Rts_Out IfxAsclin3_RTS_P00_9_OUT;
extern IfxAsclin_Rx_In IfxAsclin0_RXA_P14_1_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXB_P15_3_IN;
extern IfxAsclin_Rx_In IfxAsclin0_RXD_P34_2_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXA_P15_1_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXB_P15_5_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXC_P20_9_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXD_P14_8_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXE_P11_10_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXF_P33_13_IN;
extern IfxAsclin_Rx_In IfxAsclin1_RXG_P02_3_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXA_P14_3_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXB_P02_1_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXC_P02_10_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXD_P10_6_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXE_P33_8_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXF_P32_6_IN;
extern IfxAsclin_Rx_In IfxAsclin2_RXG_P02_0_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXA_P15_7_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXB_P11_0_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXC_P20_3_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXD_P32_2_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXE_P00_1_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXF_P21_6_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXG_P21_2_IN;
extern IfxAsclin_Rx_In IfxAsclin3_RXG_P21_3_IN;
extern IfxAsclin_Sclk_Out IfxAsclin0_SCLK_P14_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin0_SCLK_P15_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P15_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P20_10_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P33_11_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin1_SCLK_P33_12_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P02_4_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P10_6_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P14_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P33_7_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin2_SCLK_P33_9_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P00_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P00_2_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P11_1_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P11_4_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P15_6_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P15_8_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P20_0_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P21_5_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P21_7_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P32_3_OUT;
extern IfxAsclin_Sclk_Out IfxAsclin3_SCLK_P33_2_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P14_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P20_8_OUT;
extern IfxAsclin_Slso_Out IfxAsclin1_SLSO_P33_10_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P02_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P10_5_OUT;
extern IfxAsclin_Slso_Out IfxAsclin2_SLSO_P33_6_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P00_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P12_1_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P14_3_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P21_2_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P21_6_OUT;
extern IfxAsclin_Slso_Out IfxAsclin3_SLSO_P33_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P14_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P14_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P15_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P15_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin0_TX_P34_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P02_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P11_12_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P14_10_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_4_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P15_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P20_10_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P33_12_OUT;
extern IfxAsclin_Tx_Out IfxAsclin1_TX_P33_13_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P02_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P02_9_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P10_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P14_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P14_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P32_5_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P33_8_OUT;
extern IfxAsclin_Tx_Out IfxAsclin2_TX_P33_9_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P00_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P00_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P11_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P11_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P15_6_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P15_7_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P20_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P20_3_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P21_7_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P22_0_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P22_1_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P32_2_OUT;
extern IfxAsclin_Tx_Out IfxAsclin3_TX_P32_3_OUT;
# 205 "./0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.h"
extern const IfxAsclin_Cts_In *IfxAsclin_Cts_In_pinTable[4][2];


extern const IfxAsclin_Rts_Out *IfxAsclin_Rts_Out_pinTable[4][2];


extern const IfxAsclin_Rx_In *IfxAsclin_Rx_In_pinTable[4][7];


extern const IfxAsclin_Sclk_Out *IfxAsclin_Sclk_Out_pinTable[4][11];


extern const IfxAsclin_Slso_Out *IfxAsclin_Slso_Out_pinTable[4][6];


extern const IfxAsclin_Tx_Out *IfxAsclin_Tx_Out_pinTable[4][13];
# 52 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h" 2
# 62 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
typedef enum
{
    IfxAsclin_Checksum_classic = 0,
    IfxAsclin_Checksum_enhanced = 1
} IfxAsclin_Checksum;




typedef enum
{
    IfxAsclin_ChecksumInjection_notWritten = 0,
    IfxAsclin_ChecksumInjection_written = 1
} IfxAsclin_ChecksumInjection;





typedef enum
{
    IfxAsclin_ClockPolarity_idleLow = 0,
    IfxAsclin_ClockPolarity_idleHigh = 1
} IfxAsclin_ClockPolarity;




typedef enum
{
    IfxAsclin_ClockSource_noClock = 0,
    IfxAsclin_ClockSource_kernelClock = 1,
    IfxAsclin_ClockSource_oscillatorClock = 2,
    IfxAsclin_ClockSource_flexRayClock = 4,
    IfxAsclin_ClockSource_ascFastClock = 8,
    IfxAsclin_ClockSource_ascSlowClock = 16
} IfxAsclin_ClockSource;




typedef enum
{
    IfxAsclin_CtsInputSelect_0,
    IfxAsclin_CtsInputSelect_1,
    IfxAsclin_CtsInputSelect_2,
    IfxAsclin_CtsInputSelect_3
} IfxAsclin_CtsInputSelect;




typedef enum
{
    IfxAsclin_DataLength_1 = 0,
    IfxAsclin_DataLength_2,
    IfxAsclin_DataLength_3,
    IfxAsclin_DataLength_4,
    IfxAsclin_DataLength_5,
    IfxAsclin_DataLength_6,
    IfxAsclin_DataLength_7,
    IfxAsclin_DataLength_8,
    IfxAsclin_DataLength_9,
    IfxAsclin_DataLength_10,
    IfxAsclin_DataLength_11,
    IfxAsclin_DataLength_12,
    IfxAsclin_DataLength_13,
    IfxAsclin_DataLength_14,
    IfxAsclin_DataLength_15,
    IfxAsclin_DataLength_16
} IfxAsclin_DataLength;




typedef enum
{
    IfxAsclin_FrameMode_initialise = 0,
    IfxAsclin_FrameMode_asc = 1,
    IfxAsclin_FrameMode_spi = 2,
    IfxAsclin_FrameMode_lin = 3
} IfxAsclin_FrameMode;




typedef enum
{
    IfxAsclin_HeaderResponseSelect_headerAndResponse = 0,
    IfxAsclin_HeaderResponseSelect_headerOnly = 1
} IfxAsclin_HeaderResponseSelect;






typedef enum
{
    IfxAsclin_IdleDelay_0,
    IfxAsclin_IdleDelay_1,
    IfxAsclin_IdleDelay_2,
    IfxAsclin_IdleDelay_3,
    IfxAsclin_IdleDelay_4,
    IfxAsclin_IdleDelay_5,
    IfxAsclin_IdleDelay_6,
    IfxAsclin_IdleDelay_7
} IfxAsclin_IdleDelay;





typedef enum
{
    IfxAsclin_LeadDelay_0,
    IfxAsclin_LeadDelay_1,
    IfxAsclin_LeadDelay_2,
    IfxAsclin_LeadDelay_3,
    IfxAsclin_LeadDelay_4,
    IfxAsclin_LeadDelay_5,
    IfxAsclin_LeadDelay_6,
    IfxAsclin_LeadDelay_7
} IfxAsclin_LeadDelay;




typedef enum
{
    IfxAsclin_LinMode_slave = 0,
    IfxAsclin_LinMode_master = 1
} IfxAsclin_LinMode;




typedef enum
{
    IfxAsclin_LinResponseTimeoutMode_frameTimeout = 0,
    IfxAsclin_LinResponseTimeoutMode_responseTimeout = 1
} IfxAsclin_LinResponseTimeoutMode;




typedef enum
{
    IfxAsclin_OversamplingFactor_4 = 3,
    IfxAsclin_OversamplingFactor_5 = 4,
    IfxAsclin_OversamplingFactor_6 = 5,
    IfxAsclin_OversamplingFactor_7 = 6,
    IfxAsclin_OversamplingFactor_8 = 7,
    IfxAsclin_OversamplingFactor_9 = 8,
    IfxAsclin_OversamplingFactor_10 = 9,
    IfxAsclin_OversamplingFactor_11 = 10,
    IfxAsclin_OversamplingFactor_12 = 11,
    IfxAsclin_OversamplingFactor_13 = 12,
    IfxAsclin_OversamplingFactor_14 = 13,
    IfxAsclin_OversamplingFactor_15 = 14,
    IfxAsclin_OversamplingFactor_16 = 15
} IfxAsclin_OversamplingFactor;




typedef enum
{
    IfxAsclin_ParityType_even = 0,
    IfxAsclin_ParityType_odd = 1
} IfxAsclin_ParityType;




typedef enum
{
    IfxAsclin_ReceiveBufferMode_rxFifo = 0,
    IfxAsclin_ReceiveBufferMode_rxBuffer = 1
} IfxAsclin_ReceiveBufferMode;




typedef enum
{
    IfxAsclin_RtsCtsPolarity_activeHigh = 0,
    IfxAsclin_RtsCtsPolarity_activeLow = 1
} IfxAsclin_RtsCtsPolarity;




typedef enum
{
    IfxAsclin_RxFifoInterruptLevel_1,
    IfxAsclin_RxFifoInterruptLevel_2,
    IfxAsclin_RxFifoInterruptLevel_3,
    IfxAsclin_RxFifoInterruptLevel_4,
    IfxAsclin_RxFifoInterruptLevel_5,
    IfxAsclin_RxFifoInterruptLevel_6,
    IfxAsclin_RxFifoInterruptLevel_7,
    IfxAsclin_RxFifoInterruptLevel_8,
    IfxAsclin_RxFifoInterruptLevel_9,
    IfxAsclin_RxFifoInterruptLevel_10,
    IfxAsclin_RxFifoInterruptLevel_11,
    IfxAsclin_RxFifoInterruptLevel_12,
    IfxAsclin_RxFifoInterruptLevel_13,
    IfxAsclin_RxFifoInterruptLevel_14,
    IfxAsclin_RxFifoInterruptLevel_15,
    IfxAsclin_RxFifoInterruptLevel_16
} IfxAsclin_RxFifoInterruptLevel;




typedef enum
{
    IfxAsclin_RxFifoOutletWidth_0,
    IfxAsclin_RxFifoOutletWidth_1,
    IfxAsclin_RxFifoOutletWidth_2,
    IfxAsclin_RxFifoOutletWidth_3
} IfxAsclin_RxFifoOutletWidth;




typedef enum
{
    IfxAsclin_RxInputSelect_0,
    IfxAsclin_RxInputSelect_1,
    IfxAsclin_RxInputSelect_2,
    IfxAsclin_RxInputSelect_3,
    IfxAsclin_RxInputSelect_4,
    IfxAsclin_RxInputSelect_5,
    IfxAsclin_RxInputSelect_6,
    IfxAsclin_RxInputSelect_7
} IfxAsclin_RxInputSelect;




typedef enum
{
    IfxAsclin_SamplePointPosition_1 = 1,
    IfxAsclin_SamplePointPosition_2 = 2,
    IfxAsclin_SamplePointPosition_3 = 3,
    IfxAsclin_SamplePointPosition_4 = 4,
    IfxAsclin_SamplePointPosition_5 = 5,
    IfxAsclin_SamplePointPosition_6 = 6,
    IfxAsclin_SamplePointPosition_7 = 7,
    IfxAsclin_SamplePointPosition_8 = 8,
    IfxAsclin_SamplePointPosition_9 = 9,
    IfxAsclin_SamplePointPosition_10 = 10,
    IfxAsclin_SamplePointPosition_11 = 11,
    IfxAsclin_SamplePointPosition_12 = 12,
    IfxAsclin_SamplePointPosition_13 = 13,
    IfxAsclin_SamplePointPosition_14 = 14,
    IfxAsclin_SamplePointPosition_15 = 15
} IfxAsclin_SamplePointPosition;




typedef enum
{
    IfxAsclin_SamplesPerBit_one = 0,
    IfxAsclin_SamplesPerBit_three = 1
} IfxAsclin_SamplesPerBit;





typedef enum
{
    IfxAsclin_ShiftDirection_lsbFirst = 0,
    IfxAsclin_ShiftDirection_msbFirst = 1
} IfxAsclin_ShiftDirection;





typedef enum
{
    IfxAsclin_SlavePolarity_idleLow = 0,
    IfxAsclin_SlavePolarity_idlehigh = 1
} IfxAsclin_SlavePolarity;




typedef enum
{
    IfxAsclin_SleepMode_enable = 0,
    IfxAsclin_SleepMode_disable = 1
} IfxAsclin_SleepMode;



typedef enum
{
    IfxAsclin_Status_configurationError = 0,
    IfxAsclin_Status_noError = 1
} IfxAsclin_Status;




typedef enum
{
    IfxAsclin_StopBit_0,
    IfxAsclin_StopBit_1,
    IfxAsclin_StopBit_2,
    IfxAsclin_StopBit_3,
    IfxAsclin_StopBit_4,
    IfxAsclin_StopBit_5,
    IfxAsclin_StopBit_6,
    IfxAsclin_StopBit_7
} IfxAsclin_StopBit;




typedef enum
{
    IfxAsclin_TxFifoInletWidth_0,
    IfxAsclin_TxFifoInletWidth_1,
    IfxAsclin_TxFifoInletWidth_2,
    IfxAsclin_TxFifoInletWidth_3
} IfxAsclin_TxFifoInletWidth;




typedef enum
{
    IfxAsclin_TxFifoInterruptLevel_0,
    IfxAsclin_TxFifoInterruptLevel_1,
    IfxAsclin_TxFifoInterruptLevel_2,
    IfxAsclin_TxFifoInterruptLevel_3,
    IfxAsclin_TxFifoInterruptLevel_4,
    IfxAsclin_TxFifoInterruptLevel_5,
    IfxAsclin_TxFifoInterruptLevel_6,
    IfxAsclin_TxFifoInterruptLevel_7,
    IfxAsclin_TxFifoInterruptLevel_8,
    IfxAsclin_TxFifoInterruptLevel_9,
    IfxAsclin_TxFifoInterruptLevel_10,
    IfxAsclin_TxFifoInterruptLevel_11,
    IfxAsclin_TxFifoInterruptLevel_12,
    IfxAsclin_TxFifoInterruptLevel_13,
    IfxAsclin_TxFifoInterruptLevel_14,
    IfxAsclin_TxFifoInterruptLevel_15
} IfxAsclin_TxFifoInterruptLevel;
# 431 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_clearAllFlags(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearBreakDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearFrameErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearHeaderTimeoutFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearKernelResetStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinChecksumErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinParityErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearParityErrorFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearResponseTimeoutFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoFillLevelFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoOverflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoUnderflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxHeaderEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxResponseEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTransmissionCompletedFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoFillLevelFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoOverflowFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxHeaderEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxResponseEndFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_flushRxFifo(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_flushTxFifo(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdLowerlimt(Ifx_ASCLIN *asclin, uint8 limit);






static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdUpperlimt(Ifx_ASCLIN *asclin, uint8 limit);






static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumInjection(Ifx_ASCLIN *asclin, IfxAsclin_ChecksumInjection csi);






static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumMode(Ifx_ASCLIN *asclin, IfxAsclin_Checksum mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setDataLength(Ifx_ASCLIN *asclin, IfxAsclin_DataLength length);






static inline __attribute__ ((always_inline)) void IfxAsclin_setDenominator(Ifx_ASCLIN *asclin, uint16 denominator);





static inline __attribute__ ((always_inline)) void IfxAsclin_setDisableModuleRequest(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setEnableModuleRequest(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setFilterDepth(Ifx_ASCLIN *asclin, uint8 depth);






static inline __attribute__ ((always_inline)) void IfxAsclin_setHeaderResponseSelect(Ifx_ASCLIN *asclin, IfxAsclin_HeaderResponseSelect type);






static inline __attribute__ ((always_inline)) void IfxAsclin_setIdleDelay(Ifx_ASCLIN *asclin, IfxAsclin_IdleDelay delay);





static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetOne(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetZero(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLeadDelay(Ifx_ASCLIN *asclin, IfxAsclin_LeadDelay delay);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinBreakLength(Ifx_ASCLIN *asclin, uint8 length);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinHeaderTimeout(Ifx_ASCLIN *asclin, uint8 timeout);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinMode(Ifx_ASCLIN *asclin, IfxAsclin_LinMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutMode(Ifx_ASCLIN *asclin, IfxAsclin_LinResponseTimeoutMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutThreshold(Ifx_ASCLIN *asclin, uint16 threshold);






static inline __attribute__ ((always_inline)) void IfxAsclin_setNumerator(Ifx_ASCLIN *asclin, uint16 numerator);






static inline __attribute__ ((always_inline)) void IfxAsclin_setOversampling(Ifx_ASCLIN *asclin, IfxAsclin_OversamplingFactor ovsFactor);






static inline __attribute__ ((always_inline)) void IfxAsclin_setParityType(Ifx_ASCLIN *asclin, IfxAsclin_ParityType type);






static inline __attribute__ ((always_inline)) void IfxAsclin_setPrescaler(Ifx_ASCLIN *asclin, uint16 prescaler);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxBufferMode(Ifx_ASCLIN *asclin, IfxAsclin_ReceiveBufferMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoInterruptLevel level);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoOutletWidth(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoOutletWidth width);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSampleMode(Ifx_ASCLIN *asclin, IfxAsclin_SamplesPerBit medianFilter);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSamplePointPosition(Ifx_ASCLIN *asclin, IfxAsclin_SamplePointPosition spPosition);






static inline __attribute__ ((always_inline)) void IfxAsclin_setShiftDirection(Ifx_ASCLIN *asclin, IfxAsclin_ShiftDirection dir);






static inline __attribute__ ((always_inline)) void IfxAsclin_setStopBit(Ifx_ASCLIN *asclin, IfxAsclin_StopBit stopBit);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitHeaderRequestFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitResponseRequestFlag(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitWakeRequestFlag(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInletWidth(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInletWidth width);






static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInterruptLevel level);
# 828 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getBreakDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getClockSource(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getClockStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getCollisionDetectionErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getFallingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getFrameErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getHeaderTimeoutFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getKernelResetStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinAutoBaudDetectionErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinChecksumErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinParityErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getModuleStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getParityErrorFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getPrescaler(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRaisingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getReceiveSignalStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getResponseTimeoutFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoFillLevel(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoOutletWidth(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoUnderflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxHeaderEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxResponseEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTransmissionCompletedFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTransmitSignalStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoFillLevel(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoInletWidth(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxHeaderEndFlagStatus(Ifx_ASCLIN *asclin);





static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxResponseEndFlagStatus(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSleepMode(Ifx_ASCLIN *asclin, IfxAsclin_SleepMode mode);
# 1031 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
extern float32 IfxAsclin_getFaFrequency(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getOvsFrequency(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getPdFrequency(Ifx_ASCLIN *asclin);





extern float32 IfxAsclin_getShiftFrequency(Ifx_ASCLIN *asclin);





extern void IfxAsclin_resetModule(Ifx_ASCLIN *asclin);
# 1070 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_disableAllFlags(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableAutoBaudrateDetection(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableBreakDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetection(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableCts(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableFrameErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableHardwareChecksum(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableHeaderTimeoutFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinChecksumErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinParityErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableLoopBackMode(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableParity(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableParityErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableResponseTimeoutFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoFillLevelFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoInlet(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoOverflowFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoUnderflowFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxHeaderEndFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxResponseEndFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTransmissionCompletedFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoFillLevelFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOutlet(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOverflowFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxHeaderEndFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxResponseEndFlag(Ifx_ASCLIN *asclin, unsigned char enable);






static inline __attribute__ ((always_inline)) void IfxAsclin_setClockPolarity(Ifx_ASCLIN *asclin, IfxAsclin_ClockPolarity cpol);






static inline __attribute__ ((always_inline)) void IfxAsclin_setCtsInput(Ifx_ASCLIN *asclin, IfxAsclin_CtsInputSelect ctsi);






static inline __attribute__ ((always_inline)) void IfxAsclin_setFrameMode(Ifx_ASCLIN *asclin, IfxAsclin_FrameMode mode);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRtsCtsPolarity(Ifx_ASCLIN *asclin, IfxAsclin_RtsCtsPolarity rcpol);






static inline __attribute__ ((always_inline)) void IfxAsclin_setRxInput(Ifx_ASCLIN *asclin, IfxAsclin_RxInputSelect alti);






static inline __attribute__ ((always_inline)) void IfxAsclin_setSlavePolarity(Ifx_ASCLIN *asclin, IfxAsclin_SlavePolarity spol);
# 1331 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
extern unsigned char IfxAsclin_setBitTiming(Ifx_ASCLIN *asclin, float32 baudrate, IfxAsclin_OversamplingFactor oversampling, IfxAsclin_SamplePointPosition samplepoint, IfxAsclin_SamplesPerBit medianFilter);
# 1348 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
extern void IfxAsclin_enableAscErrorFlags(Ifx_ASCLIN *asclin, unsigned char parEnable, unsigned char rfoEnable);





extern void IfxAsclin_enableModule(Ifx_ASCLIN *asclin);





extern sint32 IfxAsclin_getIndex(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerEr(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerRx(Ifx_ASCLIN *asclin);




extern volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerTx(Ifx_ASCLIN *asclin);







extern uint32 IfxAsclin_read16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count);







extern uint32 IfxAsclin_read32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count);







extern uint32 IfxAsclin_read8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count);
# 1409 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
extern void IfxAsclin_setBaudrateBitFields(Ifx_ASCLIN *asclin, uint16 prescaler, uint16 numerator, uint16 denominator, IfxAsclin_OversamplingFactor oversampling);






extern void IfxAsclin_setClockSource(Ifx_ASCLIN *asclin, IfxAsclin_ClockSource clockSource);







extern uint32 IfxAsclin_write16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count);







extern uint32 IfxAsclin_write32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count);







extern uint32 IfxAsclin_write8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count);
# 1462 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_initCtsPin(const IfxAsclin_Cts_In *cts, IfxPort_InputMode inputMode);







static inline __attribute__ ((always_inline)) void IfxAsclin_initRtsPin(const IfxAsclin_Rts_Out *rts, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1483 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) void IfxAsclin_initRxPin(const IfxAsclin_Rx_In *rx, IfxPort_InputMode inputMode);







static inline __attribute__ ((always_inline)) void IfxAsclin_initSclkPin(const IfxAsclin_Sclk_Out *sclk, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initSlsoPin(const IfxAsclin_Slso_Out *slso, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxAsclin_initTxPin(const IfxAsclin_Tx_Out *tx, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1519 "./0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
static inline __attribute__ ((always_inline)) uint32 IfxAsclin_readRxData(Ifx_ASCLIN *asclin);






static inline __attribute__ ((always_inline)) void IfxAsclin_writeTxData(Ifx_ASCLIN *asclin, uint32 data);





static inline __attribute__ ((always_inline)) void IfxAsclin_clearAllFlags(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.U = 0xFFFFFFFF;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearBreakDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.BDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.CEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.FEDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearFrameErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.FEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearHeaderTimeoutFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.HTC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearKernelResetStatus(Ifx_ASCLIN *asclin)
{
    asclin->KRSTCLR.B.CLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LAC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinChecksumErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LCC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearLinParityErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.LPC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearParityErrorFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.PEC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.REDC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearResponseTimeoutFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RTC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoFillLevelFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFLC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoOverflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFOC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxFifoUnderflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RFUC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxHeaderEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RHC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearRxResponseEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.RRC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTransmissionCompletedFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TCC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoFillLevelFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TFLC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxFifoOverflowFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TFOC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxHeaderEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.THC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_clearTxResponseEndFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSCLEAR.B.TRC = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_disableAllFlags(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSENABLE.U = 0x00000000;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableAutoBaudrateDetection(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->LIN.CON.B.ABD = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableBreakDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.BDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetection(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FRAMECON.B.CEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCollisionDetectionErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.CEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableCts(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->IOCR.B.CTSEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableFallingEdgeDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.FEDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableFrameErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.FEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableHardwareChecksum(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->LIN.CON.B.CSEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableHeaderTimeoutFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.HTE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinAutoBaudDetectionErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.ABE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinChecksumErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.LCE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLinParityErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.LPE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableLoopBackMode(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->IOCR.B.LB = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableParity(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FRAMECON.B.PEN = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableParityErrorFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.PEE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRaisingEdgeDetectedFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.REDE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableResponseTimeoutFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RTE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoFillLevelFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RFLE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoInlet(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->RXFIFOCON.B.ENI = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoOverflowFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RFOE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxFifoUnderflowFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RFUE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxHeaderEndFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RHE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableRxResponseEndFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.RRE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTransmissionCompletedFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.TCE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoFillLevelFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.TFLE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOutlet(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->TXFIFOCON.B.ENO = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxFifoOverflowFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.TFOE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxHeaderEndFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.THE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_enableTxResponseEndFlag(Ifx_ASCLIN *asclin, unsigned char enable)
{
    asclin->FLAGSENABLE.B.TRE = enable ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_flushRxFifo(Ifx_ASCLIN *asclin)
{
    asclin->RXFIFOCON.B.FLUSH = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_flushTxFifo(Ifx_ASCLIN *asclin)
{
    asclin->TXFIFOCON.B.FLUSH = 1;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getBreakDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.BD;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getClockSource(Ifx_ASCLIN *asclin)
{
    return asclin->CSR.B.CLKSEL;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getClockStatus(Ifx_ASCLIN *asclin)
{
    return asclin->CSR.B.CON;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getCollisionDetectionErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.CE;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getFallingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.FED;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getFrameErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.FE;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getHeaderTimeoutFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.HT;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getKernelResetStatus(Ifx_ASCLIN *asclin)
{
    return asclin->KRST0.B.RSTSTAT;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinAutoBaudDetectionErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LA;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinChecksumErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LC;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getLinParityErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.LP;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getModuleStatus(Ifx_ASCLIN *asclin)
{
    return asclin->CLC.B.DISS;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getParityErrorFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.PE;
}


static inline __attribute__ ((always_inline)) uint16 IfxAsclin_getPrescaler(Ifx_ASCLIN *asclin)
{
    return asclin->BITCON.B.PRESCALER + 1;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRaisingEdgeDetectedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RED;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getReceiveSignalStatus(Ifx_ASCLIN *asclin)
{
    return asclin->IOCR.B.RXM;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getResponseTimeoutFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RT;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoFillLevel(Ifx_ASCLIN *asclin)
{
    return asclin->RXFIFOCON.B.FILL;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFL;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getRxFifoOutletWidth(Ifx_ASCLIN *asclin)
{
    return asclin->RXFIFOCON.B.OUTW;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFO;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxFifoUnderflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RFU;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxHeaderEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RH;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getRxResponseEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.RR;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTransmissionCompletedFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TC;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTransmitSignalStatus(Ifx_ASCLIN *asclin)
{
    return asclin->IOCR.B.TXM;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoFillLevel(Ifx_ASCLIN *asclin)
{
    return asclin->TXFIFOCON.B.FILL;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxFifoFillLevelFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TFL;
}


static inline __attribute__ ((always_inline)) uint8 IfxAsclin_getTxFifoInletWidth(Ifx_ASCLIN *asclin)
{
    return asclin->TXFIFOCON.B.INW;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxFifoOverflowFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TFO;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxHeaderEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TH;
}


static inline __attribute__ ((always_inline)) unsigned char IfxAsclin_getTxResponseEndFlagStatus(Ifx_ASCLIN *asclin)
{
    return asclin->FLAGS.B.TR;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initCtsPin(const IfxAsclin_Cts_In *cts, IfxPort_InputMode inputMode)
{
    IfxPort_setPinModeInput(cts->pin.port, cts->pin.pinIndex, inputMode);
    IfxAsclin_enableCts(cts->module, 1);
    IfxAsclin_setCtsInput(cts->module, (IfxAsclin_CtsInputSelect)cts->select);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initRtsPin(const IfxAsclin_Rts_Out *rts, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(rts->pin.port, rts->pin.pinIndex, outputMode, rts->select);
    IfxPort_setPinPadDriver(rts->pin.port, rts->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initRxPin(const IfxAsclin_Rx_In *rx, IfxPort_InputMode inputMode)
{
    IfxPort_setPinModeInput(rx->pin.port, rx->pin.pinIndex, inputMode);
    IfxAsclin_setRxInput(rx->module, (IfxAsclin_RxInputSelect)rx->select);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initSclkPin(const IfxAsclin_Sclk_Out *sclk, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(sclk->pin.port, sclk->pin.pinIndex, outputMode, sclk->select);
    IfxPort_setPinPadDriver(sclk->pin.port, sclk->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initSlsoPin(const IfxAsclin_Slso_Out *slso, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(slso->pin.port, slso->pin.pinIndex, outputMode, slso->select);
    IfxPort_setPinPadDriver(slso->pin.port, slso->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_initTxPin(const IfxAsclin_Tx_Out *tx, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(tx->pin.port, tx->pin.pinIndex, outputMode, tx->select);
    IfxPort_setPinPadDriver(tx->pin.port, tx->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) uint32 IfxAsclin_readRxData(Ifx_ASCLIN *asclin)
{
    return asclin->RXDATA.U;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdLowerlimt(Ifx_ASCLIN *asclin, uint8 limit)
{
    asclin->BRD.B.LOWERLIMIT = limit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setBrdUpperlimt(Ifx_ASCLIN *asclin, uint8 limit)
{
    asclin->BRD.B.UPPERLIMIT = limit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumInjection(Ifx_ASCLIN *asclin, IfxAsclin_ChecksumInjection csi)
{
    asclin->LIN.CON.B.CSI = csi;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setChecksumMode(Ifx_ASCLIN *asclin, IfxAsclin_Checksum mode)
{
    asclin->DATCON.B.CSM = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setClockPolarity(Ifx_ASCLIN *asclin, IfxAsclin_ClockPolarity cpol)
{
    asclin->IOCR.B.CPOL = cpol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setCtsInput(Ifx_ASCLIN *asclin, IfxAsclin_CtsInputSelect ctsi)
{
    asclin->IOCR.B.CTS = ctsi;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDataLength(Ifx_ASCLIN *asclin, IfxAsclin_DataLength length)
{
    asclin->DATCON.B.DATLEN = length;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDenominator(Ifx_ASCLIN *asclin, uint16 denominator)
{
    asclin->BRG.B.DENOMINATOR = denominator;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setDisableModuleRequest(Ifx_ASCLIN *asclin)
{
    asclin->CLC.B.DISR = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setEnableModuleRequest(Ifx_ASCLIN *asclin)
{
    asclin->CLC.B.DISR = 0;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setFilterDepth(Ifx_ASCLIN *asclin, uint8 depth)
{
    asclin->IOCR.B.DEPTH = __minu(depth, 63);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setFrameMode(Ifx_ASCLIN *asclin, IfxAsclin_FrameMode mode)
{
    asclin->FRAMECON.B.MODE = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setHeaderResponseSelect(Ifx_ASCLIN *asclin, IfxAsclin_HeaderResponseSelect type)
{
    asclin->DATCON.B.HO = type;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setIdleDelay(Ifx_ASCLIN *asclin, IfxAsclin_IdleDelay delay)
{
    asclin->FRAMECON.B.IDLE = delay;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetOne(Ifx_ASCLIN *asclin)
{
    asclin->KRST1.B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setKernelResetZero(Ifx_ASCLIN *asclin)
{
    asclin->KRST0.B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLeadDelay(Ifx_ASCLIN *asclin, IfxAsclin_LeadDelay delay)
{
    asclin->FRAMECON.B.LEAD = delay;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinBreakLength(Ifx_ASCLIN *asclin, uint8 length)
{
    asclin->LIN.BTIMER.B.BREAK = length;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinHeaderTimeout(Ifx_ASCLIN *asclin, uint8 timeout)
{
    asclin->LIN.HTIMER.B.HEADER = timeout;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinMode(Ifx_ASCLIN *asclin, IfxAsclin_LinMode mode)
{
    asclin->LIN.CON.B.MS = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutMode(Ifx_ASCLIN *asclin, IfxAsclin_LinResponseTimeoutMode mode)
{
    asclin->DATCON.B.RM = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setLinResponseTimeoutThreshold(Ifx_ASCLIN *asclin, uint16 threshold)
{
    asclin->DATCON.B.RESPONSE = __minu(threshold, 256);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setNumerator(Ifx_ASCLIN *asclin, uint16 numerator)
{
    asclin->BRG.B.NUMERATOR = numerator;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setOversampling(Ifx_ASCLIN *asclin, IfxAsclin_OversamplingFactor ovsFactor)
{
    asclin->BITCON.B.OVERSAMPLING = ovsFactor;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setParityType(Ifx_ASCLIN *asclin, IfxAsclin_ParityType type)
{
    asclin->FRAMECON.B.ODD = type;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setPrescaler(Ifx_ASCLIN *asclin, uint16 prescaler)
{
    asclin->BITCON.B.PRESCALER = prescaler - 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRtsCtsPolarity(Ifx_ASCLIN *asclin, IfxAsclin_RtsCtsPolarity rcpol)
{
    asclin->IOCR.B.RCPOL = rcpol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxBufferMode(Ifx_ASCLIN *asclin, IfxAsclin_ReceiveBufferMode mode)
{
    asclin->RXFIFOCON.B.BUF = mode;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoInterruptLevel level)
{
    asclin->RXFIFOCON.B.INTLEVEL = __minu(level, 15);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxFifoOutletWidth(Ifx_ASCLIN *asclin, IfxAsclin_RxFifoOutletWidth width)
{
    asclin->RXFIFOCON.B.OUTW = width;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setRxInput(Ifx_ASCLIN *asclin, IfxAsclin_RxInputSelect alti)
{
    asclin->IOCR.B.ALTI = alti;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSampleMode(Ifx_ASCLIN *asclin, IfxAsclin_SamplesPerBit medianFilter)
{
    asclin->BITCON.B.SM = medianFilter;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSamplePointPosition(Ifx_ASCLIN *asclin, IfxAsclin_SamplePointPosition spPosition)
{
    asclin->BITCON.B.SAMPLEPOINT = __minu(spPosition, asclin->BITCON.B.OVERSAMPLING);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setShiftDirection(Ifx_ASCLIN *asclin, IfxAsclin_ShiftDirection dir)
{
    asclin->FRAMECON.B.MSB = dir;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSlavePolarity(Ifx_ASCLIN *asclin, IfxAsclin_SlavePolarity spol)
{
    asclin->IOCR.B.SPOL = spol;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setSleepMode(Ifx_ASCLIN *asclin, IfxAsclin_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    asclin->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setStopBit(Ifx_ASCLIN *asclin, IfxAsclin_StopBit stopBit)
{
    asclin->FRAMECON.B.STOP = stopBit;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitHeaderRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.THRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitResponseRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.TRRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTransmitWakeRequestFlag(Ifx_ASCLIN *asclin)
{
    asclin->FLAGSSET.B.TWRQS = 1;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInletWidth(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInletWidth width)
{
    asclin->TXFIFOCON.B.INW = width;
}


static inline __attribute__ ((always_inline)) void IfxAsclin_setTxFifoInterruptLevel(Ifx_ASCLIN *asclin, IfxAsclin_TxFifoInterruptLevel level)
{
    asclin->TXFIFOCON.B.INTLEVEL = __minu(level, 15);
}


static inline __attribute__ ((always_inline)) void IfxAsclin_writeTxData(Ifx_ASCLIN *asclin, uint32 data)
{
    asclin->TXDATA.U = data;
}
# 222 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
typedef struct
{
    Ifx_SizeT count;
    sint32 readerWaitx;
    sint32 writerWaitx;
    Ifx_SizeT maxcount;
} Ifx_Fifo_Shared;






typedef struct _Fifo
{
    void *buffer;
    Ifx_Fifo_Shared shared;
    Ifx_SizeT startIndex;
    Ifx_SizeT endIndex;
    Ifx_SizeT size;
    Ifx_SizeT elementSize;
    volatile unsigned char eventReader;
    volatile unsigned char eventWriter;
} Ifx_Fifo;
# 75 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern unsigned char Ifx_Fifo_canReadCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);
# 87 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern unsigned char Ifx_Fifo_canWriteCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);







extern void Ifx_Fifo_clear(Ifx_Fifo *fifo);
# 108 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_create(Ifx_SizeT size, Ifx_SizeT elementSize);
# 119 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern void Ifx_Fifo_destroy(Ifx_Fifo *fifo);
# 134 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_init(void *buffer, Ifx_SizeT size, Ifx_SizeT elementSize);
# 148 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_read(Ifx_Fifo *fifo, void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 160 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_write(Ifx_Fifo *fifo, const void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 169 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) unsigned char Ifx_Fifo_flush(Ifx_Fifo *fifo, Ifx_TickTime timeout)
{
    return Ifx_Fifo_canWriteCount(fifo, fifo->size, timeout);
}
# 186 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_readCount(Ifx_Fifo *fifo)
{
    return fifo->shared.count;
}
# 202 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_writeCount(Ifx_Fifo *fifo)
{
    return (Ifx_SizeT)(fifo->size - Ifx_Fifo_readCount(fifo));
}
# 215 "./0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) unsigned char Ifx_Fifo_isEmpty(Ifx_Fifo *fifo)
{
    return (Ifx_Fifo_readCount(fifo) != 0) ? 0 : 1;
}
# 223 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h" 1
# 40 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
# 1 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h" 1
# 119 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxStm_cfg.h" 1
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxStm_cfg.h"
typedef enum
{
    IfxStm_ResourceStm_0 = 0,
    IfxStm_ResourceStm_1,
    IfxStm_ResourceStm_2,
    IfxStm_ResourceStm_none = -1
} IfxStm_ResourceStm;
# 81 "./0_Src/4_McHal/Tricore/_Impl/IfxStm_cfg.h"
extern const IfxModule_IndexMap IfxStm_cfg_indexMap[3];
# 120 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h" 2
# 131 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
typedef enum
{
    IfxStm_Comparator_0 = 0,
    IfxStm_Comparator_1
} IfxStm_Comparator;



typedef enum
{
    IfxStm_ComparatorInterrupt_ir0 = 0,
    IfxStm_ComparatorInterrupt_ir1 = 1
} IfxStm_ComparatorInterrupt;



typedef enum
{
    IfxStm_ComparatorOffset_0 = 0,
    IfxStm_ComparatorOffset_1,
    IfxStm_ComparatorOffset_2,
    IfxStm_ComparatorOffset_3,
    IfxStm_ComparatorOffset_4,
    IfxStm_ComparatorOffset_5,
    IfxStm_ComparatorOffset_6,
    IfxStm_ComparatorOffset_7,
    IfxStm_ComparatorOffset_8,
    IfxStm_ComparatorOffset_9,
    IfxStm_ComparatorOffset_10,
    IfxStm_ComparatorOffset_11,
    IfxStm_ComparatorOffset_12,
    IfxStm_ComparatorOffset_13,
    IfxStm_ComparatorOffset_14,
    IfxStm_ComparatorOffset_15,
    IfxStm_ComparatorOffset_16,
    IfxStm_ComparatorOffset_17,
    IfxStm_ComparatorOffset_18,
    IfxStm_ComparatorOffset_19,
    IfxStm_ComparatorOffset_20,
    IfxStm_ComparatorOffset_21,
    IfxStm_ComparatorOffset_22,
    IfxStm_ComparatorOffset_23,
    IfxStm_ComparatorOffset_24,
    IfxStm_ComparatorOffset_25,
    IfxStm_ComparatorOffset_26,
    IfxStm_ComparatorOffset_27,
    IfxStm_ComparatorOffset_28,
    IfxStm_ComparatorOffset_29,
    IfxStm_ComparatorOffset_30,
    IfxStm_ComparatorOffset_31
} IfxStm_ComparatorOffset;



typedef enum
{
    IfxStm_ComparatorSize_1Bit = 0,
    IfxStm_ComparatorSize_2Bits = 1,
    IfxStm_ComparatorSize_3Bits = 2,
    IfxStm_ComparatorSize_4Bits = 3,
    IfxStm_ComparatorSize_5Bits = 4,
    IfxStm_ComparatorSize_6Bits = 5,
    IfxStm_ComparatorSize_7Bits = 6,
    IfxStm_ComparatorSize_8Bits = 7,
    IfxStm_ComparatorSize_9Bits = 8,
    IfxStm_ComparatorSize_10Bits = 9,
    IfxStm_ComparatorSize_11Bits = 10,
    IfxStm_ComparatorSize_12Bits = 11,
    IfxStm_ComparatorSize_13Bits = 12,
    IfxStm_ComparatorSize_14Bits = 13,
    IfxStm_ComparatorSize_15Bits = 14,
    IfxStm_ComparatorSize_16Bits = 15,
    IfxStm_ComparatorSize_17Bits = 16,
    IfxStm_ComparatorSize_18Bits = 17,
    IfxStm_ComparatorSize_19Bits = 18,
    IfxStm_ComparatorSize_20Bits = 19,
    IfxStm_ComparatorSize_21Bits = 20,
    IfxStm_ComparatorSize_22Bits = 21,
    IfxStm_ComparatorSize_23Bits = 22,
    IfxStm_ComparatorSize_24Bits = 23,
    IfxStm_ComparatorSize_25Bits = 24,
    IfxStm_ComparatorSize_26Bits = 25,
    IfxStm_ComparatorSize_27Bits = 26,
    IfxStm_ComparatorSize_28Bits = 27,
    IfxStm_ComparatorSize_29Bits = 28,
    IfxStm_ComparatorSize_30Bits = 29,
    IfxStm_ComparatorSize_31Bits = 30,
    IfxStm_ComparatorSize_32Bits = 31
} IfxStm_ComparatorSize;




typedef enum
{
    IfxStm_SleepMode_enable = 0,
    IfxStm_SleepMode_disable = 1
} IfxStm_SleepMode;
# 240 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
typedef struct
{
    IfxStm_Comparator comparator;
    IfxStm_ComparatorInterrupt comparatorInterrupt;
    IfxStm_ComparatorOffset compareOffset;
    IfxStm_ComparatorSize compareSize;
    uint32 ticks;
    Ifx_Priority triggerPriority;
    IfxSrc_Tos typeOfService;
} IfxStm_CompareConfig;
# 264 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm);
# 280 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_enableOcdsSuspend(Ifx_STM *stm);





extern IfxStm_ResourceStm IfxStm_getIndex(Ifx_STM *stm);
# 301 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm);






static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset);







static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks);
# 368 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds);







static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);







static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);
# 409 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_clearCompareFlag(Ifx_STM *stm, IfxStm_Comparator comparator);






extern unsigned char IfxStm_initCompare(Ifx_STM *stm, IfxStm_CompareConfig *config);





extern void IfxStm_initCompareConfig(IfxStm_CompareConfig *config);






extern void IfxStm_enableComparatorInterrupt(Ifx_STM *stm, IfxStm_Comparator comparator);
# 442 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode);
# 452 "./0_Src/4_McHal/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_resetModule(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm)
{
    uint64 result;

    result = stm->TIM0.U;
    result |= ((uint64)stm->CAP.U) << 32;

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator)
{
    return stm->CMP[comparator].B.CMPVAL;
}


static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm)
{
    float32 result;

    result = IfxScuCcu_getStmFrequency();

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm)
{
    return stm->TIM0.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm)
{
    return stm->TIM3.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm)
{
    return stm->TIM4.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm)
{
    return stm->TIM5.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm)
{
    return stm->TIM6.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm)
{
    return stm->TIM1.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm)
{
    return stm->TIM2.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset)
{
    uint64 now;

    now = IfxStm_get(stm);

    return (uint32)(now >> offset);
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000000)) * microSeconds;
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000)) * milliSeconds;
}


static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = stm->CMP[comparator].B.CMPVAL + ticks;
}


static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    stm->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = ticks;
}


static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks)
{
    uint32 beginTime;

    beginTime = IfxStm_getLower(stm);




    while ((IfxStm_getLower(stm) - beginTime) < ticks)
    {}
}
# 41 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h" 2

# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h" 1
# 43 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h" 2
# 58 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) unsigned char areInterruptsEnabled(void);
static inline __attribute__ ((always_inline)) unsigned char disableInterrupts(void);
static inline __attribute__ ((always_inline)) void enableInterrupts(void);
static inline __attribute__ ((always_inline)) void restoreInterrupts(unsigned char enabled);
static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void);
# 77 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) unsigned char areInterruptsEnabled(void)
{
    return IfxCpu_areInterruptsEnabled();
}
# 90 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) unsigned char disableInterrupts(void)
{
    return IfxCpu_disableInterrupts();
}







static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void)
{
    IfxCpu_forceDisableInterrupts();
}





static inline __attribute__ ((always_inline)) void enableInterrupts(void)
{
    IfxCpu_enableInterrupts();
}
# 124 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void restoreInterrupts(unsigned char enabled)
{
    IfxCpu_restoreInterrupts(enabled);
}
# 150 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
extern Ifx_TickTime TimeConst[(11)];
# 159 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b);
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since);
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline);
extern void initTime(void);
static inline __attribute__ ((always_inline)) unsigned char isDeadLine(Ifx_TickTime deadLine);
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void);
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void);
static inline __attribute__ ((always_inline)) unsigned char poll(volatile unsigned char *test, Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, unsigned char interruptEnabled);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(unsigned char *interruptEnabled);
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout);
extern void waitPoll(void);
extern void waitTime(Ifx_TickTime timeout);


typedef void (*WaitTimeFunction)(Ifx_TickTime timeout);
# 203 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void)
{
    Ifx_TickTime stmNow;
    unsigned char interruptState;

    interruptState = disableInterrupts();
    stmNow = (Ifx_TickTime)IfxStm_get((&((*(Ifx_STM *)0xF0000000u)))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    restoreInterrupts(interruptState);

    return stmNow;
}
# 222 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void)
{
    Ifx_TickTime stmNow;

    stmNow = (Ifx_TickTime)IfxStm_get((&((*(Ifx_STM *)0xF0000000u)))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);

    return stmNow;
}
# 239 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b)
{
    Ifx_TickTime result;

    if ((a == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)) || (b == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)))
    {
        result = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        result = a + b;
    }

    return result;
}
# 262 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since)
{
    return now() - since;
}
# 274 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine;

    if (timeout == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        deadLine = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        deadLine = now() + timeout;
    }

    return deadLine;
}
# 297 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline)
{
    Ifx_TickTime timeout;

    if (deadline == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        timeout = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        timeout = deadline - now();
    }

    return timeout;
}
# 321 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) unsigned char isDeadLine(Ifx_TickTime deadLine)
{
    unsigned char result;

    if (deadLine == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        result = 0;
    }
    else
    {
        result = now() >= deadLine;
    }

    return result;
}
# 346 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) unsigned char poll(volatile unsigned char *test, Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while ((*test == 0) && (isDeadLine(deadLine) == 0))
    {}

    return *test;
}
# 368 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, unsigned char interruptEnabled)
{
    Ifx_TickTime stmNow;

    stmNow = nowWithoutCriticalSection();
    restoreInterrupts(interruptEnabled);

    return stmNow - since;
}
# 387 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(unsigned char *interruptEnabled)
{
    *interruptEnabled = disableInterrupts();

    return nowWithoutCriticalSection();
}
# 401 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while (isDeadLine(deadLine) == 0)
    {}
}
# 224 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h" 1
# 44 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
# 1 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h" 1
# 97 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 45 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h" 2






typedef struct IfxStdIf_DPipe_ IfxStdIf_DPipe;

typedef volatile unsigned char *IfxStdIf_DPipe_WriteEvent;
typedef volatile unsigned char *IfxStdIf_DPipe_ReadEvent;
# 72 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef unsigned char (*IfxStdIf_DPipe_Write)(IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 87 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef unsigned char (*IfxStdIf_DPipe_Read)(IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);







typedef sint32 (*IfxStdIf_DPipe_GetReadCount)(IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_ReadEvent (*IfxStdIf_DPipe_GetReadEvent)(IfxStdIf_InterfaceDriver driver);







typedef uint32 (*IfxStdIf_DPipe_GetSendCount)(IfxStdIf_InterfaceDriver driver);







typedef Ifx_TickTime (*IfxStdIf_DPipe_GetTxTimeStamp)(IfxStdIf_InterfaceDriver driver);







typedef sint32 (*IfxStdIf_DPipe_GetWriteCount)(IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_WriteEvent (*IfxStdIf_DPipe_GetWriteEvent)(IfxStdIf_InterfaceDriver driver);
# 146 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef unsigned char (*IfxStdIf_DPipe_CanReadCount)(IfxStdIf_InterfaceDriver driver, Ifx_SizeT count, Ifx_TickTime timeout);
# 157 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef unsigned char (*IfxStdIf_DPipe_CanWriteCount)(IfxStdIf_InterfaceDriver driver, Ifx_SizeT count, Ifx_TickTime timeout);
# 166 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef unsigned char (*IfxStdIf_DPipe_FlushTx)(IfxStdIf_InterfaceDriver driver, Ifx_TickTime timeout);






typedef void (*IfxStdIf_DPipe_ClearRx)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ClearTx)(IfxStdIf_InterfaceDriver driver);







typedef void (*IfxStdIf_DPipe_OnReceive)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnTransmit)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnError)(IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ResetSendCount)(IfxStdIf_InterfaceDriver driver);



struct IfxStdIf_DPipe_
{
    IfxStdIf_InterfaceDriver driver;
    unsigned char txDisabled;


    IfxStdIf_DPipe_Write write;
    IfxStdIf_DPipe_Read read;
    IfxStdIf_DPipe_GetReadCount getReadCount;
    IfxStdIf_DPipe_GetReadEvent getReadEvent;
    IfxStdIf_DPipe_GetWriteCount getWriteCount;
    IfxStdIf_DPipe_GetWriteEvent getWriteEvent;
    IfxStdIf_DPipe_CanReadCount canReadCount;
    IfxStdIf_DPipe_CanWriteCount canWriteCount;
    IfxStdIf_DPipe_FlushTx flushTx;
    IfxStdIf_DPipe_ClearTx clearTx;
    IfxStdIf_DPipe_ClearRx clearRx;
    IfxStdIf_DPipe_OnReceive onReceive;
    IfxStdIf_DPipe_OnTransmit onTransmit;
    IfxStdIf_DPipe_OnError onError;

    IfxStdIf_DPipe_GetSendCount getSendCount;
    IfxStdIf_DPipe_GetTxTimeStamp getTxTimeStamp;
    IfxStdIf_DPipe_ResetSendCount resetSendCount;
};




static inline __attribute__ ((always_inline)) unsigned char IfxStdIf_DPipe_write(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->write(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) unsigned char IfxStdIf_DPipe_read(IfxStdIf_DPipe *stdif, void *data, Ifx_SizeT *count, Ifx_TickTime timeout)
{
    return stdif->read(stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getReadCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getWriteCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) unsigned char IfxStdIf_DPipe_canReadCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canReadCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) unsigned char IfxStdIf_DPipe_canWriteCount(IfxStdIf_DPipe *stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canWriteCount(stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_ReadEvent IfxStdIf_DPipe_getReadEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getReadEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_WriteEvent IfxStdIf_DPipe_getWriteEvent(IfxStdIf_DPipe *stdif)
{
    return stdif->getWriteEvent(stdif->driver);
}




static inline __attribute__ ((always_inline)) unsigned char IfxStdIf_DPipe_flushTx(IfxStdIf_DPipe *stdif, Ifx_TickTime timeout)
{
    return stdif->flushTx(stdif->driver, timeout);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearTx(IfxStdIf_DPipe *stdif)
{
    stdif->clearTx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearRx(IfxStdIf_DPipe *stdif)
{
    stdif->clearRx(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onReceive(IfxStdIf_DPipe *stdif)
{
    stdif->onReceive(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onTransmit(IfxStdIf_DPipe *stdif)
{
    stdif->onTransmit(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onError(IfxStdIf_DPipe *stdif)
{
    stdif->onError(stdif->driver);
}




static inline __attribute__ ((always_inline)) uint32 IfxStdIf_DPipe_getSendCount(IfxStdIf_DPipe *stdif)
{
    return stdif->getSendCount(stdif->driver);
}




static inline __attribute__ ((always_inline)) Ifx_TickTime IfxStdIf_DPipe_getTxTimeStamp(IfxStdIf_DPipe *stdif)
{
    return stdif->getTxTimeStamp(stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_resetSendCount(IfxStdIf_DPipe *stdif)
{
    stdif->resetSendCount(stdif->driver);
}


extern void IfxStdIf_DPipe_print(IfxStdIf_DPipe *stdif, pchar format, ...);
# 225 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
char *rindex (const char *, int);
char *stpcpy (char *, const char *);
char *stpncpy (char *, const char *, size_t);
int strcasecmp (const char *, const char *);
char *strcasestr (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 226 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h" 2







typedef struct
{
    uint8 parityError : 1;
    uint8 frameError : 1;
    uint8 rxFifoOverflow : 1;
    uint8 rxFifoUnderflow : 1;
    uint8 txFifoOverflow : 1;
} IfxAsclin_Asc_ErrorFlags;





typedef struct
{
    float32 baudrate;
    uint16 prescaler;
    IfxAsclin_OversamplingFactor oversampling;
} IfxAsclin_Asc_BaudRate;



typedef struct
{
    IfxAsclin_SamplesPerBit medianFilter;
    IfxAsclin_SamplePointPosition samplePointPosition;
} IfxAsclin_Asc_BitTimingControl;



typedef struct
{
    IfxAsclin_TxFifoInletWidth inWidth;
    IfxAsclin_RxFifoOutletWidth outWidth;
    IfxAsclin_TxFifoInterruptLevel txFifoInterruptLevel;
    IfxAsclin_RxFifoInterruptLevel rxFifoInterruptLevel;
    IfxAsclin_ReceiveBufferMode buffMode;
} IfxAsclin_Asc_FifoControl;



typedef struct
{
    IfxAsclin_IdleDelay idleDelay;
    IfxAsclin_StopBit stopBit;
    IfxAsclin_FrameMode frameMode;
    IfxAsclin_ShiftDirection shiftDir;
    IfxAsclin_ParityType parityType;
    IfxAsclin_DataLength dataLength;
    unsigned char parityBit;
} IfxAsclin_Asc_FrameControl;



typedef struct
{
    uint16 txPriority;
    uint16 rxPriority;
    uint16 erPriority;
    IfxSrc_Tos typeOfService;
} IfxAsclin_Asc_InterruptConfig;



typedef struct
{
    const IfxAsclin_Cts_In *cts;
    IfxPort_InputMode ctsMode;
    const IfxAsclin_Rx_In *rx;
    IfxPort_InputMode rxMode;
    const IfxAsclin_Rts_Out *rts;
    IfxPort_OutputMode rtsMode;
    const IfxAsclin_Tx_Out *tx;
    IfxPort_OutputMode txMode;
    IfxPort_PadDriver pinDriver;
} IfxAsclin_Asc_Pins;





typedef union
{
    uint8 ALL;
    IfxAsclin_Asc_ErrorFlags flags;
} IfxAsclin_Asc_ErrorFlagsUnion;





typedef struct
{
    Ifx_ASCLIN *asclin;
    Ifx_Fifo *tx;
    Ifx_Fifo *rx;
    volatile unsigned char txInProgress;
    volatile unsigned char rxSwFifoOverflow;
    IfxAsclin_Asc_ErrorFlagsUnion errorFlags;
    Ifx_DataBufferMode dataBufferMode;
    volatile uint32 sendCount;
    volatile Ifx_TickTime txTimestamp;
} IfxAsclin_Asc;



typedef struct
{
    Ifx_ASCLIN *asclin;
    IfxAsclin_Asc_BaudRate baudrate;
    IfxAsclin_Asc_BitTimingControl bitTiming;
    IfxAsclin_Asc_FrameControl frame;
    IfxAsclin_Asc_FifoControl fifo;
    IfxAsclin_Asc_InterruptConfig interrupt;
    const IfxAsclin_Asc_Pins *pins;
    IfxAsclin_ClockSource clockSource;
    IfxAsclin_Asc_ErrorFlagsUnion errorFlags;
    Ifx_SizeT txBufferSize;
    void *txBuffer;




    Ifx_SizeT rxBufferSize;
    void *rxBuffer;




    unsigned char loopBack;
    Ifx_DataBufferMode dataBufferMode;
} IfxAsclin_Asc_Config;
# 383 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_isrError(IfxAsclin_Asc *asclin);






extern void IfxAsclin_Asc_isrReceive(IfxAsclin_Asc *asclin);






extern void IfxAsclin_Asc_isrTransmit(IfxAsclin_Asc *asclin);
# 415 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern uint8 IfxAsclin_Asc_blockingRead(IfxAsclin_Asc *asclin);
# 425 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern unsigned char IfxAsclin_Asc_blockingWrite(IfxAsclin_Asc *asclin, uint8 data);
# 442 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern unsigned char IfxAsclin_Asc_canReadCount(IfxAsclin_Asc *asclin, Ifx_SizeT count, Ifx_TickTime timeout);







extern unsigned char IfxAsclin_Asc_canWriteCount(IfxAsclin_Asc *asclin, Ifx_SizeT count, Ifx_TickTime timeout);





extern void IfxAsclin_Asc_clearRx(IfxAsclin_Asc *asclin);





extern void IfxAsclin_Asc_clearTx(IfxAsclin_Asc *asclin);






extern unsigned char IfxAsclin_Asc_flushTx(IfxAsclin_Asc *asclin, Ifx_TickTime timeout);





extern sint32 IfxAsclin_Asc_getReadCount(IfxAsclin_Asc *asclin);





extern IfxStdIf_DPipe_ReadEvent IfxAsclin_Asc_getReadEvent(IfxAsclin_Asc *asclin);





extern uint32 IfxAsclin_Asc_getSendCount(IfxAsclin_Asc *asclin);





extern Ifx_TickTime IfxAsclin_Asc_getTxTimeStamp(IfxAsclin_Asc *asclin);





extern sint32 IfxAsclin_Asc_getWriteCount(IfxAsclin_Asc *asclin);





extern IfxStdIf_DPipe_WriteEvent IfxAsclin_Asc_getWriteEvent(IfxAsclin_Asc *asclin);
# 518 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern unsigned char IfxAsclin_Asc_read(IfxAsclin_Asc *asclin, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);





extern void IfxAsclin_Asc_resetSendCount(IfxAsclin_Asc *asclin);
# 537 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern unsigned char IfxAsclin_Asc_write(IfxAsclin_Asc *asclin, void *data, Ifx_SizeT *count, Ifx_TickTime timeout);
# 552 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_disableModule(IfxAsclin_Asc *asclin);
# 562 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern IfxAsclin_Status IfxAsclin_Asc_initModule(IfxAsclin_Asc *asclin, const IfxAsclin_Asc_Config *config);
# 572 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_initModuleConfig(IfxAsclin_Asc_Config *config, Ifx_ASCLIN *asclin);
# 587 "./0_Src/4_McHal/Tricore/Asclin/Asc/IfxAsclin_Asc.h"
extern void IfxAsclin_Asc_initiateTransmission(IfxAsclin_Asc *asclin);






extern unsigned char IfxAsclin_Asc_stdIfDPipeInit(IfxStdIf_DPipe *stdif, IfxAsclin_Asc *asclin);
# 16 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h" 2




typedef struct
{
    uint8 tx[64 + sizeof(Ifx_Fifo) + 8];
    uint8 rx[64 + sizeof(Ifx_Fifo) + 8];
} AppAscBuffer;

typedef struct
{
    AppAscBuffer ascBuffer;
    struct
    {
        IfxAsclin_Asc asc0;
    } drivers;

    uint8 txData[5];
    uint8 rxData[5];
    Ifx_SizeT count;
} App_AsclinAsc;






extern App_AsclinAsc pUART_SysLog;
extern void Set_UART_SysLog(void);
extern void printf_UART_SysLog(char *buffer, int length);






extern App_AsclinAsc pUART_WiFi;
extern void Set_UART_WiFi(void);
extern void printf_UART_WiFi(char *, ...);
extern void recieve_UART_WiFi(char *buffer);






extern App_AsclinAsc pUART_dxl;
extern void Set_UART_dxl(void);
extern void printf_UART_dxl(char data);



__inline void delay_UART(unsigned int tic);
# 13 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h" 2






void printf_SysLog(char *fmt, ...);
void IO_Set_SysLog(void);
# 13 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LED.h" 1
# 16 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LED.h"
void IO_set_LED(void);
void IO_setByte_LED(uint8 byte_LED);
void IO_setBit_LED(uint8 num_LED, uint8 Bit_LED);
void printf_SysLog_state_LED();
# 14 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PBSW.h" 1
# 13 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PBSW.h"
void IO_set_PBSW(void);
char IO_get_PBSW(int number, char direction);
# 15 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_dxl.h" 1
# 11 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_dxl.h"
void IO_set_dxl(void);
void TX0_char(char buffer);


void ID_Set(unsigned char id);
void Mode_wheel(unsigned char id);
void Mode_joint(unsigned char id);
void Send_one(unsigned char id, unsigned char length, unsigned char instruction);
void Turn_one(unsigned char id, float value_angle);

void Turn_Speed_one(unsigned char id, unsigned int value_rpm);

void Send(void);
void IO_dxl_Turn_sync_sub(unsigned char id, float value_angle, float value_speed);

void IO_dxl_Turn_sync(float delay);

void Initial_Position(void);
void Read_Status(unsigned char id, unsigned char menu, unsigned char length_read);
# 16 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.h" 1
# 14 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.h"
typedef struct CAN_Sig
{
 uint32 data;
 uint8 pAddr;
 uint8 nLength;
 uint8 mType;
 float64 vFactor;
 float64 vOffset;
}pCAN_Sig;

typedef struct CAN_Msg
{
 uint16 nID;
 uint8 nDLC;
 uint8 dData[8];
 uint32 tCycletime;
 uint32 tTimeout;
 pCAN_Sig dSig[10];
 uint8 nSig;
 uint8 nCh;
 uint8 nObj;
}pCAN_Msg;
# 88 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_CAN.h"
void IO_set_CAN(void);
void IO_set_CAN_Module_Enable(void);
void IO_set_CAN_Enable(uint8 num_ch, uint8 FD);
void IO_set_CAN_Bit(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate);
void IO_set_CAN_BitTiming( uint8 num_ch,
       uint32 nom_SJW, uint32 nom_SP,
       uint32 fast_SJW, uint32 fast_SP,
       uint8 LDO);
void IO_set_CAN_msgObject( uint8 num_msgObj, uint8 num_ch, uint32 ID,
       uint8 size_frame, uint8 FD_on);
pCAN_Sig Set_CAN_Sig(uint8 addr, uint8 length, uint8 type, float64 factor, float64 offset);
pCAN_Msg set_CAN_DB_msgObject(uint8 nObj, uint8 nCh, uint16 nID, uint8 nDLC, uint8 nSig, float64 tCycletime, float64 tTimeout);
void Set_CAN_DB(void);
extern void IO_Send_CAN(uint8 number_MsgObj, uint8 *data, uint8 size);
extern pCAN_Msg Send_CAN_DB_msgObject(pCAN_Msg msg);
extern void printf_CAN(uint8 number_MsgObj, uint8 *fmt, ...);
extern void IO_Send_CAN(uint8 number_MsgObj, uint8 *buffer, uint8 size);
void IO_set_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);
void ISR_set_CAN_Rx(uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
     uint8 frame_extend, uint8 FD_on,
     void *isrFuncPointer, uint16 priority, uint8 core);

uint32 IO_get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);
# 17 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_ETH.h" 1
# 13 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_ETH.h"
enum Eth_FrameNo
{
 Eth_DesAddr_1 = 0,
 Eth_DesAddr_2,
 Eth_DesAddr_3,
 Eth_DesAddr_4,
 Eth_DesAddr_5,
 Eth_DesAddr_6,
 Eth_SrcAddr_1,
 Eth_SrcAddr_2,
 Eth_SrcAddr_3,
 Eth_SrcAddr_4,
 Eth_SrcAddr_5,
 Eth_SrcAddr_6,
 Eth_MacType_1,
 Eth_MacType_2,
 Eth_LlcDsap,
 Eth_LlcSsap,
 Eth_LlcCtrl,
 Eth_SnapOui_1,
 Eth_SnapOui_2,
 Eth_SnapOui_3,
 Eth_SnapType_1,
 Eth_SnapType_2,
 Eth_Data_Start,
 Eth_CAN_Frame_Start
};

enum Eth_Snap_Type
{
 Eth_Snap_XNS = 0x0600,
 Eth_Snap_IP = 0x0800,
 Eth_Snap_X25 = 0x0805,
 Eth_Snap_ARP = 0x0806,
 Eth_Snap_RARP = 0x0835,
 Eth_Snap_IPX = 0x8137,
 Eth_Snap_NetBIOS = 0x8191,



 Eth_Snap_S19s = 0x9000

};

enum Eth_DSAP_Type
{
 Eth_DSAP_IP = 0x08,
 Eth_DSAP_BPDU = 0x42,
 Eth_DSAP_SNAP = 0xAA,
 Eth_DSAP_NetwareIPX = 0xE0,
 Eth_DSAP_NetBIOS = 0xF0
};

void IO_Set_ETH(void);
uint8 GetEth_MAC_Des(int Index);
uint8 GetEth_MAC_Src(int Index);
# 18 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.h" 1
# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.h"
void IO_set_WiFi(void);
extern void printf_WiFi(char *fmt, ...);
void IO_WiFi_Server_open(void);

__inline void Delay_ms_WiFi(unsigned int tic_ms);
# 19 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 1
# 9 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h"
# 1 "./0_Src/1_SrvSw/SysSe/Bsp/Bsp.h" 1
# 10 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 2

# 1 "./0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.h" 1
# 67 "./0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.h"
extern void IfxCpu_Irq_installInterruptHandler(void *isrFuncPointer, uint32 serviceReqPrioNumber);

static inline __attribute__ ((always_inline)) void interruptHandlerInstall(uint32 srpn, uint32 addr)
{
    IfxCpu_Irq_installInterruptHandler((void *)addr, srpn);
}
# 84 "./0_Src/4_McHal/Tricore/Cpu/Irq/IfxCpu_Irq.h"
static inline __attribute__ ((always_inline)) IfxSrc_Tos IfxCpu_Irq_getTos(IfxCpu_ResourceCpu coreId)
{
    return (IfxSrc_Tos)coreId;
}
# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 2
# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 13 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 2


# 1 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 1
# 32 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h"
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 33 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 2


# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_System/SysCFG_Cores.h" 1
# 21 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_System/SysCFG_Cores.h"
# 1 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 1
# 22 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_System/SysCFG_Cores.h" 2
# 79 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_System/SysCFG_Cores.h"
void Initialize_Task_Cores(void);

void Enable_STM_Task00(void);
void Enable_STM_Task01(void);
void Enable_STM_Task10(void);
void Enable_STM_Task11(void);
void Enable_STM_Task20(void);
void Enable_STM_Task21(void);

void ISR_STM_Task00(void);
void ISR_STM_Task01(void);
void ISR_STM_Task10(void);
void ISR_STM_Task11(void);
void ISR_STM_Task20(void);
void ISR_STM_Task21(void);

extern unsigned int IO_getSTM0Tic(void);
extern unsigned int IO_getSTM0Max(void);
extern unsigned int IO_getSTM1Tic(void);
extern unsigned int IO_getSTM2Tic(void);
# 36 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 2

# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 1
# 20 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
# 1 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 1
# 37 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
# 1 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 1
# 45 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEth_cfg.h" 1
# 46 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef struct _Ifx_ETH_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_ETH_ACCEN0_Bits;


typedef struct _Ifx_ETH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ETH_ACCEN1_Bits;


typedef struct _Ifx_ETH_AHB_OR_AXI_STATUS_Bits
{
    unsigned int AXWHSTS : 1;
    unsigned int AXIRDSTS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_AHB_OR_AXI_STATUS_Bits;


typedef struct _Ifx_ETH_BUS_MODE_Bits
{
    unsigned int SWR : 1;
    unsigned int DA : 1;
    unsigned int DSL : 5;
    unsigned int ATDS : 1;
    unsigned int PBL : 6;
    unsigned int PR : 2;
    unsigned int FB : 1;
    unsigned int RPBL : 6;
    unsigned int USP : 1;
    unsigned int PBLx8 : 1;
    unsigned int AAL : 1;
    unsigned int MB : 1;
    unsigned int TXPR : 1;
    unsigned int PRWG : 2;
    unsigned int reserved_30 : 2;
} Ifx_ETH_BUS_MODE_Bits;


typedef struct _Ifx_ETH_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_CLC_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits
{
    unsigned int CURRBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits
{
    unsigned int CURRDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits
{
    unsigned int CURTBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits
{
    unsigned int CURTDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_DEBUG_Bits
{
    unsigned int RPESTS : 1;
    unsigned int RFCFCSTS : 2;
    unsigned int reserved_3 : 1;
    unsigned int RWCSTS : 1;
    unsigned int RRCSTS : 2;
    unsigned int reserved_7 : 1;
    unsigned int RXFSTS : 2;
    unsigned int reserved_10 : 6;
    unsigned int TPESTS : 1;
    unsigned int TFCSTS : 2;
    unsigned int TXPAUSED : 1;
    unsigned int TRCSTS : 2;
    unsigned int TWCSTS : 1;
    unsigned int reserved_23 : 1;
    unsigned int TXFSTS : 1;
    unsigned int TXSTSFSTS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_DEBUG_Bits;


typedef struct _Ifx_ETH_FLOW_CONTROL_Bits
{
    unsigned int FCA_BPA : 1;
    unsigned int TFE : 1;
    unsigned int RFE : 1;
    unsigned int UP : 1;
    unsigned int PLT : 2;
    unsigned int reserved_6 : 1;
    unsigned int DZPQ : 1;
    unsigned int reserved_8 : 8;
    unsigned int PT : 16;
} Ifx_ETH_FLOW_CONTROL_Bits;


typedef struct _Ifx_ETH_GMII_ADDRESS_Bits
{
    unsigned int GB : 1;
    unsigned int GW : 1;
    unsigned int CR : 4;
    unsigned int GR : 5;
    unsigned int PA : 5;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_ADDRESS_Bits;


typedef struct _Ifx_ETH_GMII_DATA_Bits
{
    unsigned int GD : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_DATA_Bits;


typedef struct _Ifx_ETH_GPCTL_Bits
{
    unsigned int ALTI0 : 2;
    unsigned int ALTI1 : 2;
    unsigned int ALTI2 : 2;
    unsigned int ALTI3 : 2;
    unsigned int ALTI4 : 2;
    unsigned int ALTI5 : 2;
    unsigned int ALTI6 : 2;
    unsigned int ALTI7 : 2;
    unsigned int ALTI8 : 2;
    unsigned int ALTI9 : 2;
    unsigned int ALTI10 : 2;
    unsigned int reserved_22 : 2;
    unsigned int EPR : 1;
    unsigned int DIV : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_GPCTL_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_HIGH_Bits
{
    unsigned int HTH : 32;
} Ifx_ETH_HASH_TABLE_HIGH_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_LOW_Bits
{
    unsigned int HTL : 32;
} Ifx_ETH_HASH_TABLE_LOW_Bits;


typedef struct _Ifx_ETH_HW_FEATURE_Bits
{
    unsigned int MIISEL : 1;
    unsigned int GMIISEL : 1;
    unsigned int HDSEL : 1;
    unsigned int EXTHASHEN : 1;
    unsigned int HASHSEL : 1;
    unsigned int ADDMACADRSEL : 1;
    unsigned int PCSSEL : 1;
    unsigned int L3L4FLTREN : 1;
    unsigned int SMASEL : 1;
    unsigned int RWKSEL : 1;
    unsigned int MGKSEL : 1;
    unsigned int MMCSEL : 1;
    unsigned int TSVER1SEL : 1;
    unsigned int TSVER2SEL : 1;
    unsigned int EEESEL : 1;
    unsigned int AVSEL : 1;
    unsigned int TXCOESEL : 1;
    unsigned int RXTYP1COE : 1;
    unsigned int RXTYP2COE : 1;
    unsigned int RXFIFOSIZE : 1;
    unsigned int RXCHCNT : 2;
    unsigned int TXCHCNT : 2;
    unsigned int ENHDESSEL : 1;
    unsigned int INTTSEN : 1;
    unsigned int FLEXIPPSEN : 1;
    unsigned int SAVLANINS : 1;
    unsigned int ACTPHYIF : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_HW_FEATURE_Bits;


typedef struct _Ifx_ETH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ETH_ID_Bits;


typedef struct _Ifx_ETH_INTERRUPT_ENABLE_Bits
{
    unsigned int TIE : 1;
    unsigned int TSE : 1;
    unsigned int TUE : 1;
    unsigned int TJE : 1;
    unsigned int OVE : 1;
    unsigned int UNE : 1;
    unsigned int RIE : 1;
    unsigned int RUE : 1;
    unsigned int RSE : 1;
    unsigned int RWE : 1;
    unsigned int ETE : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBE : 1;
    unsigned int ERE : 1;
    unsigned int AIE : 1;
    unsigned int NIE : 1;
    unsigned int reserved_17 : 15;
} Ifx_ETH_INTERRUPT_ENABLE_Bits;


typedef struct _Ifx_ETH_INTERRUPT_MASK_Bits
{
    unsigned int RGSMIIIM : 1;
    unsigned int PCSLCHGIM : 1;
    unsigned int PCSANCIM : 1;
    unsigned int PMTIM : 1;
    unsigned int reserved_4 : 5;
    unsigned int TSIM : 1;
    unsigned int LPIIM : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_INTERRUPT_STATUS_Bits
{
    unsigned int RGSMIIIS : 1;
    unsigned int PCSLCHGIS : 1;
    unsigned int PCSANCIS : 1;
    unsigned int PMTIS : 1;
    unsigned int MMCIS : 1;
    unsigned int MMCRXIS : 1;
    unsigned int MMCTXIS : 1;
    unsigned int MMCRXIPIS : 1;
    unsigned int reserved_8 : 1;
    unsigned int TSIS : 1;
    unsigned int LPIIS : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_STATUS_Bits;


typedef struct _Ifx_ETH_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_KRST0_Bits;


typedef struct _Ifx_ETH_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRST1_Bits;


typedef struct _Ifx_ETH_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRSTCLR_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_HIGH_Bits
{
    unsigned int ADDRHI : 16;
    unsigned int reserved_16 : 8;
    unsigned int MBC : 6;
    unsigned int SA : 1;
    unsigned int AE : 1;
} Ifx_ETH_MAC_ADDRESS_HIGH_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_LOW_Bits
{
    unsigned int ADDRLO : 32;
} Ifx_ETH_MAC_ADDRESS_LOW_Bits;


typedef struct _Ifx_ETH_MAC_CONFIGURATION_Bits
{
    unsigned int PRELEN : 2;
    unsigned int RE : 1;
    unsigned int TE : 1;
    unsigned int DC : 1;
    unsigned int BL : 2;
    unsigned int ACS : 1;
    unsigned int LUD : 1;
    unsigned int DR : 1;
    unsigned int IPC : 1;
    unsigned int DM : 1;
    unsigned int LM : 1;
    unsigned int DO : 1;
    unsigned int FES : 1;
    unsigned int PS : 1;
    unsigned int DCRS : 1;
    unsigned int IFG : 3;
    unsigned int JE : 1;
    unsigned int BE : 1;
    unsigned int JD : 1;
    unsigned int WD : 1;
    unsigned int TC : 1;
    unsigned int CST : 1;
    unsigned int SFTERR : 1;
    unsigned int TWOKPE : 1;
    unsigned int SARC : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_MAC_CONFIGURATION_Bits;


typedef struct _Ifx_ETH_MAC_FRAME_FILTER_Bits
{
    unsigned int PR : 1;
    unsigned int HUC : 1;
    unsigned int HMC : 1;
    unsigned int DAIF : 1;
    unsigned int PM : 1;
    unsigned int DBF : 1;
    unsigned int PCF : 2;
    unsigned int SAIF : 1;
    unsigned int SAF : 1;
    unsigned int HPF : 1;
    unsigned int reserved_11 : 5;
    unsigned int VTFE : 1;
    unsigned int reserved_17 : 3;
    unsigned int IPFE : 1;
    unsigned int DNTU : 1;
    unsigned int reserved_22 : 9;
    unsigned int RA : 1;
} Ifx_ETH_MAC_FRAME_FILTER_Bits;


typedef struct _Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits
{
    unsigned int MISFRMCNT : 16;
    unsigned int MISCNTOVF : 1;
    unsigned int OVFFRMCNT : 11;
    unsigned int OVFCNTOVF : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits;


typedef struct _Ifx_ETH_MMC_CONTROL_Bits
{
    unsigned int CNTRST : 1;
    unsigned int CNTSTOPRO : 1;
    unsigned int RSTONRD : 1;
    unsigned int CNTFREEZ : 1;
    unsigned int CNTPRST : 1;
    unsigned int CNTPRSTLVL : 1;
    unsigned int reserved_6 : 2;
    unsigned int UCDBC : 1;
    unsigned int reserved_9 : 23;
} Ifx_ETH_MMC_CONTROL_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXIPV4GFIS : 1;
    unsigned int RXIPV4HERFIS : 1;
    unsigned int RXIPV4NOPAYFIS : 1;
    unsigned int RXIPV4FRAGFIS : 1;
    unsigned int RXIPV4UDSBLFIS : 1;
    unsigned int RXIPV6GFIS : 1;
    unsigned int RXIPV6HERFIS : 1;
    unsigned int RXIPV6NOPAYFIS : 1;
    unsigned int RXUDPGFIS : 1;
    unsigned int RXUDPERFIS : 1;
    unsigned int RXTCPGFIS : 1;
    unsigned int RXTCPERFIS : 1;
    unsigned int RXICMPGFIS : 1;
    unsigned int RXICMPERFIS : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIS : 1;
    unsigned int RXIPV4HEROIS : 1;
    unsigned int RXIPV4NOPAYOIS : 1;
    unsigned int RXIPV4FRAGOIS : 1;
    unsigned int RXIPV4UDSBLOIS : 1;
    unsigned int RXIPV6GOIS : 1;
    unsigned int RXIPV6HEROIS : 1;
    unsigned int RXIPV6NOPAYOIS : 1;
    unsigned int RXUDPGOIS : 1;
    unsigned int RXUDPEROIS : 1;
    unsigned int RXTCPGOIS : 1;
    unsigned int RXTCPEROIS : 1;
    unsigned int RXICMPGOIS : 1;
    unsigned int RXICMPEROIS : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXIPV4GFIM : 1;
    unsigned int RXIPV4HERFIM : 1;
    unsigned int RXIPV4NOPAYFIM : 1;
    unsigned int RXIPV4FRAGFIM : 1;
    unsigned int RXIPV4UDSBLFIM : 1;
    unsigned int RXIPV6GFIM : 1;
    unsigned int RXIPV6HERFIM : 1;
    unsigned int RXIPV6NOPAYFIM : 1;
    unsigned int RXUDPGFIM : 1;
    unsigned int RXUDPERFIM : 1;
    unsigned int RXTCPGFIM : 1;
    unsigned int RXTCPERFIM : 1;
    unsigned int RXICMPGFIM : 1;
    unsigned int RXICMPERFIM : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIM : 1;
    unsigned int RXIPV4HEROIM : 1;
    unsigned int RXIPV4NOPAYOIM : 1;
    unsigned int RXIPV4FRAGOIM : 1;
    unsigned int RXIPV4UDSBLOIM : 1;
    unsigned int RXIPV6GOIM : 1;
    unsigned int RXIPV6HEROIM : 1;
    unsigned int RXIPV6NOPAYOIM : 1;
    unsigned int RXUDPGOIM : 1;
    unsigned int RXUDPEROIM : 1;
    unsigned int RXTCPGOIM : 1;
    unsigned int RXTCPEROIM : 1;
    unsigned int RXICMPGOIM : 1;
    unsigned int RXICMPEROIM : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXGBFRMIS : 1;
    unsigned int RXGBOCTIS : 1;
    unsigned int RXGOCTIS : 1;
    unsigned int RXBCGFIS : 1;
    unsigned int RXMCGFIS : 1;
    unsigned int RXCRCERFIS : 1;
    unsigned int RXALGNERFIS : 1;
    unsigned int RXRUNTFIS : 1;
    unsigned int RXJABERFIS : 1;
    unsigned int RXUSIZEGFIS : 1;
    unsigned int RXOSIZEGFIS : 1;
    unsigned int RX64OCTGBFIS : 1;
    unsigned int RX65T127OCTGBFIS : 1;
    unsigned int RX128T255OCTGBFIS : 1;
    unsigned int RX256T511OCTGBFIS : 1;
    unsigned int RX512T1023OCTGBFIS : 1;
    unsigned int RX1024TMAXOCTGBFIS : 1;
    unsigned int RXUCGFIS : 1;
    unsigned int RXLENERFIS : 1;
    unsigned int RXORANGEFIS : 1;
    unsigned int RXPAUSFIS : 1;
    unsigned int RXFOVFIS : 1;
    unsigned int RXVLANGBFIS : 1;
    unsigned int RXWDOGFIS : 1;
    unsigned int RXRCVERRFIS : 1;
    unsigned int RXCTRLFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXGBFRMIM : 1;
    unsigned int RXGBOCTIM : 1;
    unsigned int RXGOCTIM : 1;
    unsigned int RXBCGFIM : 1;
    unsigned int RXMCGFIM : 1;
    unsigned int RXCRCERFIM : 1;
    unsigned int RXALGNERFIM : 1;
    unsigned int RXRUNTFIM : 1;
    unsigned int RXJABERFIM : 1;
    unsigned int RXUSIZEGFIM : 1;
    unsigned int RXOSIZEGFIM : 1;
    unsigned int RX64OCTGBFIM : 1;
    unsigned int RX65T127OCTGBFIM : 1;
    unsigned int RX128T255OCTGBFIM : 1;
    unsigned int RX256T511OCTGBFIM : 1;
    unsigned int RX512T1023OCTGBFIM : 1;
    unsigned int RX1024TMAXOCTGBFIM : 1;
    unsigned int RXUCGFIM : 1;
    unsigned int RXLENERFIM : 1;
    unsigned int RXORANGEFIM : 1;
    unsigned int RXPAUSFIM : 1;
    unsigned int RXFOVFIM : 1;
    unsigned int RXVLANGBFIM : 1;
    unsigned int RXWDOGFIM : 1;
    unsigned int RXRCVERRFIM : 1;
    unsigned int RXCTRLFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits
{
    unsigned int TXGBOCTIS : 1;
    unsigned int TXGBFRMIS : 1;
    unsigned int TXBCGFIS : 1;
    unsigned int TXMCGFIS : 1;
    unsigned int TX64OCTGBFIS : 1;
    unsigned int TX65T127OCTGBFIS : 1;
    unsigned int TX128T255OCTGBFIS : 1;
    unsigned int TX256T511OCTGBFIS : 1;
    unsigned int TX512T1023OCTGBFIS : 1;
    unsigned int TX1024TMAXOCTGBFIS : 1;
    unsigned int TXUCGBFIS : 1;
    unsigned int TXMCGBFIS : 1;
    unsigned int TXBCGBFIS : 1;
    unsigned int TXUFLOWERFIS : 1;
    unsigned int TXSCOLGFIS : 1;
    unsigned int TXMCOLGFIS : 1;
    unsigned int TXDEFFIS : 1;
    unsigned int TXLATCOLFIS : 1;
    unsigned int TXEXCOLFIS : 1;
    unsigned int TXCARERFIS : 1;
    unsigned int TXGOCTIS : 1;
    unsigned int TXGFRMIS : 1;
    unsigned int TXEXDEFFIS : 1;
    unsigned int TXPAUSFIS : 1;
    unsigned int TXVLANGFIS : 1;
    unsigned int TXOSIZEGFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits
{
    unsigned int TXGBOCTIM : 1;
    unsigned int TXGBFRMIM : 1;
    unsigned int TXBCGFIM : 1;
    unsigned int TXMCGFIM : 1;
    unsigned int TX64OCTGBFIM : 1;
    unsigned int TX65T127OCTGBFIM : 1;
    unsigned int TX128T255OCTGBFIM : 1;
    unsigned int TX256T511OCTGBFIM : 1;
    unsigned int TX512T1023OCTGBFIM : 1;
    unsigned int TX1024TMAXOCTGBFIM : 1;
    unsigned int TXUCGBFIM : 1;
    unsigned int TXMCGBFIM : 1;
    unsigned int TXBCGBFIM : 1;
    unsigned int TXUFLOWERFIM : 1;
    unsigned int TXSCOLGFIM : 1;
    unsigned int TXMCOLGFIM : 1;
    unsigned int TXDEFFIM : 1;
    unsigned int TXLATCOLFIM : 1;
    unsigned int TXEXCOLFIM : 1;
    unsigned int TXCARERFIM : 1;
    unsigned int TXGOCTIM : 1;
    unsigned int TXGFRMIM : 1;
    unsigned int TXEXDEFFIM : 1;
    unsigned int TXPAUSFIM : 1;
    unsigned int TXVLANGFIM : 1;
    unsigned int TXOSIZEGFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_OPERATION_MODE_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SR : 1;
    unsigned int OSF : 1;
    unsigned int RTC : 2;
    unsigned int reserved_5 : 1;
    unsigned int FUF : 1;
    unsigned int FEF : 1;
    unsigned int EFC : 1;
    unsigned int RFA : 2;
    unsigned int RFD : 2;
    unsigned int ST : 1;
    unsigned int TTC : 3;
    unsigned int reserved_17 : 3;
    unsigned int FTF : 1;
    unsigned int TSF : 1;
    unsigned int RFD_2 : 1;
    unsigned int RFA_2 : 1;
    unsigned int DFF : 1;
    unsigned int RSF : 1;
    unsigned int DT : 1;
    unsigned int reserved_27 : 5;
} Ifx_ETH_OPERATION_MODE_Bits;


typedef struct _Ifx_ETH_PMT_CONTROL_STATUS_Bits
{
    unsigned int PWRDWN : 1;
    unsigned int MGKPKTEN : 1;
    unsigned int RWKPKTEN : 1;
    unsigned int reserved_3 : 2;
    unsigned int MGKPRCVD : 1;
    unsigned int RWKPRCVD : 1;
    unsigned int reserved_7 : 2;
    unsigned int GLBLUCAST : 1;
    unsigned int reserved_10 : 21;
    unsigned int RWKFILTRST : 1;
} Ifx_ETH_PMT_CONTROL_STATUS_Bits;


typedef struct _Ifx_ETH_PPS_CONTROL_Bits
{
    unsigned int PPSCTRL_PPSCMD : 4;
    unsigned int PPSEN0 : 1;
    unsigned int TRGTMODSEL0 : 2;
    unsigned int reserved_7 : 1;
    unsigned int PPSCMD1 : 3;
    unsigned int reserved_11 : 2;
    unsigned int TRGTMODSEL1 : 2;
    unsigned int reserved_15 : 1;
    unsigned int PPSCMD2 : 3;
    unsigned int reserved_19 : 2;
    unsigned int TRGTMODSEL2 : 2;
    unsigned int reserved_23 : 1;
    unsigned int PPSCMD3 : 3;
    unsigned int reserved_27 : 2;
    unsigned int TRGTMODSEL3 : 2;
    unsigned int reserved_31 : 1;
} Ifx_ETH_PPS_CONTROL_Bits;


typedef struct _Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int RDESLA : 30;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits
{
    unsigned int RIWT : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits;


typedef struct _Ifx_ETH_RECEIVE_POLL_DEMAND_Bits
{
    unsigned int RPD : 32;
} Ifx_ETH_RECEIVE_POLL_DEMAND_Bits;


typedef struct _Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits
{
    unsigned int WKUPFRMFTR : 32;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits;



typedef struct _Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX1024_MAXOCTGB : 32;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX128_255OCTGB : 32;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX256_511OCTGB : 32;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX512_1023OCTGB : 32;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX64OCTGB : 32;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX65_127OCTGB : 32;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits
{
    unsigned int RXALGNERR : 32;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int RXBCASTG : 32;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits
{
    unsigned int RXCTRLG : 32;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits
{
    unsigned int RXCRCERR : 32;
} Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits
{
    unsigned int RXFIFOOVFL : 32;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits
{
    unsigned int RXFRMGB : 32;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits
{
    unsigned int RXJABERR : 32;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits
{
    unsigned int RXLENERR : 32;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int RXMCASTG : 32;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int RXOCTGB : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits
{
    unsigned int RXOCTG : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits
{
    unsigned int RXOUTOFRNG : 32;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXOVERSZG : 32;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_PAUSE_FRAMES_Bits
{
    unsigned int RXPAUSEFRM : 32;
} Ifx_ETH_RX_PAUSE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits
{
    unsigned int RXRCVERR : 32;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits
{
    unsigned int RXRUNTERR : 32;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXUNDERSZG : 32;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits
{
    unsigned int RXUCASTG : 32;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits
{
    unsigned int RXVLANFRGB : 32;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits
{
    unsigned int RXWDGERR : 32;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_FRAMES_Bits
{
    unsigned int RXICMPERRFRM : 32;
} Ifx_ETH_RXICMP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_OCTETS_Bits
{
    unsigned int RXICMPERROCT : 32;
} Ifx_ETH_RXICMP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_FRAMES_Bits
{
    unsigned int RXICMPGDFRM : 32;
} Ifx_ETH_RXICMP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_OCTETS_Bits
{
    unsigned int RXICMPGDOCT : 32;
} Ifx_ETH_RXICMP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits
{
    unsigned int RXIPV4FRAGFRM : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits
{
    unsigned int RXIPV4FRAGOCT : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits
{
    unsigned int RXIPV4GDFRM : 32;
} Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits
{
    unsigned int RXIPV4GDOCT : 32;
} Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV4HDRERRFRM : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV4HDRERROCT : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV4NOPAYFRM : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV4NOPAYOCT : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits
{
    unsigned int RXIPV4UDSBLOCT : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits;



typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits
{
    unsigned int RXIPV4UDSBLFRM : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits
{
    unsigned int RXIPV6GDFRM : 32;
} Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits
{
    unsigned int RXIPV6GDOCT : 32;
} Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV6HDRERRFRM : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV6HDRERROCT : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV6NOPAYFRM : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV6NOPAYOCT : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_FRAMES_Bits
{
    unsigned int RXTCPERRFRM : 32;
} Ifx_ETH_RXTCP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_OCTETS_Bits
{
    unsigned int RXTCPERROCT : 32;
} Ifx_ETH_RXTCP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_FRAMES_Bits
{
    unsigned int RXTCPGDFRM : 32;
} Ifx_ETH_RXTCP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_OCTETS_Bits
{
    unsigned int RXTCPGDOCT : 32;
} Ifx_ETH_RXTCP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_FRAMES_Bits
{
    unsigned int RXUDPERRFRM : 32;
} Ifx_ETH_RXUDP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_OCTETS_Bits
{
    unsigned int RXUDPERROCT : 32;
} Ifx_ETH_RXUDP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_FRAMES_Bits
{
    unsigned int RXUDPGDFRM : 32;
} Ifx_ETH_RXUDP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_OCTETS_Bits
{
    unsigned int RXUDPGDOCT : 32;
} Ifx_ETH_RXUDP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_STATUS_Bits
{
    unsigned int TI : 1;
    unsigned int TPS : 1;
    unsigned int TU : 1;
    unsigned int TJT : 1;
    unsigned int OVF : 1;
    unsigned int UNF : 1;
    unsigned int RI : 1;
    unsigned int RU : 1;
    unsigned int RPS : 1;
    unsigned int RWT : 1;
    unsigned int ETI : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBI : 1;
    unsigned int ERI : 1;
    unsigned int AIS : 1;
    unsigned int NIS : 1;
    unsigned int RS : 3;
    unsigned int TS : 3;
    unsigned int EB : 3;
    unsigned int GLI : 1;
    unsigned int GMI : 1;
    unsigned int GPI : 1;
    unsigned int TTI : 1;
    unsigned int GLPII : 1;
    unsigned int reserved_31 : 1;
} Ifx_ETH_STATUS_Bits;


typedef struct _Ifx_ETH_SUB_SECOND_INCREMENT_Bits
{
    unsigned int SSINC : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_SUB_SECOND_INCREMENT_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits
{
    unsigned int TSHWR : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits
{
    unsigned int TSSS : 31;
    unsigned int reserved_31 : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits
{
    unsigned int TSSS : 31;
    unsigned int ADDSUB : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits
{
    unsigned int TTSLO : 31;
    unsigned int TRGTBUSY : 1;
} Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_SECONDS_Bits
{
    unsigned int TSTR : 32;
} Ifx_ETH_TARGET_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_ADDEND_Bits
{
    unsigned int TSAR : 32;
} Ifx_ETH_TIMESTAMP_ADDEND_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_CONTROL_Bits
{
    unsigned int TSENA : 1;
    unsigned int TSCFUPDT : 1;
    unsigned int TSINIT : 1;
    unsigned int TSUPDT : 1;
    unsigned int TSTRIG : 1;
    unsigned int TSADDREG : 1;
    unsigned int reserved_6 : 2;
    unsigned int TSENALL : 1;
    unsigned int TSCTRLSSR : 1;
    unsigned int TSVER2ENA : 1;
    unsigned int TSIPENA : 1;
    unsigned int TSIPV6ENA : 1;
    unsigned int TSIPV4ENA : 1;
    unsigned int TSEVNTENA : 1;
    unsigned int TSMSTRENA : 1;
    unsigned int SNAPTYPSEL : 2;
    unsigned int TSENMACADDR : 1;
    unsigned int reserved_19 : 5;
    unsigned int ATSFC : 1;
    unsigned int ATSEN0 : 1;
    unsigned int ATSEN1 : 1;
    unsigned int ATSEN2 : 1;
    unsigned int ATSEN3 : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_TIMESTAMP_CONTROL_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_STATUS_Bits
{
    unsigned int TSSOVF : 1;
    unsigned int TSTARGT : 1;
    unsigned int AUXTSTRIG : 1;
    unsigned int TSTRGTERR : 1;
    unsigned int TSTARGT1 : 1;
    unsigned int TSTRGTERR1 : 1;
    unsigned int TSTARGT2 : 1;
    unsigned int TSTRGTERR2 : 1;
    unsigned int TSTARGT3 : 1;
    unsigned int TSTRGTERR3 : 1;
    unsigned int reserved_10 : 6;
    unsigned int ATSSTN : 4;
    unsigned int reserved_20 : 4;
    unsigned int ATSSTM : 1;
    unsigned int ATSNS : 5;
    unsigned int reserved_30 : 2;
} Ifx_ETH_TIMESTAMP_STATUS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int TDESLA : 30;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits
{
    unsigned int TPD : 32;
} Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits;



typedef struct _Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX1024_MAXOCTGB : 32;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX128_255OCTGB : 32;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX256_511OCTGB : 32;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX512_1023OCTGB : 32;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX64OCTGB : 32;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX65_127OCTGB : 32;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXBCASTGB : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int TXBCASTG : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits
{
    unsigned int TXCARR : 32;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_DEFERRED_FRAMES_Bits
{
    unsigned int TXDEFRD : 32;
} Ifx_ETH_TX_DEFERRED_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits
{
    unsigned int TXEXSCOL : 32;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits
{
    unsigned int TXEXSDEF : 32;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits
{
    unsigned int TXFRMGB : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits
{
    unsigned int TXFRMG : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits
{
    unsigned int TXLATECOL : 32;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXMCASTGB : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int TXMCASTG : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits;



typedef struct _Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXMULTCOLG : 32;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int TXOCTGB : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits
{
    unsigned int TXOCTG : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits
{
    unsigned int TXOSIZG : 32;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_PAUSE_FRAMES_Bits
{
    unsigned int TXPAUSE : 32;
} Ifx_ETH_TX_PAUSE_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXSNGLCOLG : 32;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits
{
    unsigned int TXUNDRFLW : 32;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXUCASTGB : 32;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits
{
    unsigned int TXVLANG : 32;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_VERSION_Bits
{
    unsigned int SNPSVER : 8;
    unsigned int USERVER : 8;
    unsigned int reserved_16 : 16;
} Ifx_ETH_VERSION_Bits;


typedef struct _Ifx_ETH_VLAN_TAG_Bits
{
    unsigned int VL : 16;
    unsigned int ETV : 1;
    unsigned int VTIM : 1;
    unsigned int ESVL : 1;
    unsigned int VTHM : 1;
    unsigned int reserved_20 : 12;
} Ifx_ETH_VLAN_TAG_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ACCEN0_Bits B;
} Ifx_ETH_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ACCEN1_Bits B;
} Ifx_ETH_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_AHB_OR_AXI_STATUS_Bits B;
} Ifx_ETH_AHB_OR_AXI_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_BUS_MODE_Bits B;
} Ifx_ETH_BUS_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CLC_Bits B;
} Ifx_ETH_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_DEBUG_Bits B;
} Ifx_ETH_DEBUG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_FLOW_CONTROL_Bits B;
} Ifx_ETH_FLOW_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GMII_ADDRESS_Bits B;
} Ifx_ETH_GMII_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GMII_DATA_Bits B;
} Ifx_ETH_GMII_DATA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_GPCTL_Bits B;
} Ifx_ETH_GPCTL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HASH_TABLE_HIGH_Bits B;
} Ifx_ETH_HASH_TABLE_HIGH;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HASH_TABLE_LOW_Bits B;
} Ifx_ETH_HASH_TABLE_LOW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_HW_FEATURE_Bits B;
} Ifx_ETH_HW_FEATURE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_ID_Bits B;
} Ifx_ETH_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_ENABLE_Bits B;
} Ifx_ETH_INTERRUPT_ENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_MASK_Bits B;
} Ifx_ETH_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_INTERRUPT_STATUS_Bits B;
} Ifx_ETH_INTERRUPT_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRST0_Bits B;
} Ifx_ETH_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRST1_Bits B;
} Ifx_ETH_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_KRSTCLR_Bits B;
} Ifx_ETH_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_ADDRESS_HIGH_Bits B;
} Ifx_ETH_MAC_ADDRESS_HIGH;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_ADDRESS_LOW_Bits B;
} Ifx_ETH_MAC_ADDRESS_LOW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_CONFIGURATION_Bits B;
} Ifx_ETH_MAC_CONFIGURATION;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MAC_FRAME_FILTER_Bits B;
} Ifx_ETH_MAC_FRAME_FILTER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits B;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_CONTROL_Bits B;
} Ifx_ETH_MMC_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_OPERATION_MODE_Bits B;
} Ifx_ETH_OPERATION_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_PMT_CONTROL_STATUS_Bits B;
} Ifx_ETH_PMT_CONTROL_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_PPS_CONTROL_Bits B;
} Ifx_ETH_PPS_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits B;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RECEIVE_POLL_DEMAND_Bits B;
} Ifx_ETH_RECEIVE_POLL_DEMAND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits B;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_CRC_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits B;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits B;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_RX_PAUSE_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXICMP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXICMP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXICMP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXICMP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXICMP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXTCP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXTCP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXTCP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXTCP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXTCP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXUDP_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXUDP_ERROR_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXUDP_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_RXUDP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXUDP_GOOD_OCTETS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_STATUS_Bits B;
} Ifx_ETH_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SUB_SECOND_INCREMENT_Bits B;
} Ifx_ETH_SUB_SECOND_INCREMENT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_NANOSECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TARGET_TIME_SECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_SECONDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_ADDEND_Bits B;
} Ifx_ETH_TIMESTAMP_ADDEND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_CONTROL_Bits B;
} Ifx_ETH_TIMESTAMP_CONTROL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TIMESTAMP_STATUS_Bits B;
} Ifx_ETH_TIMESTAMP_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits B;
} Ifx_ETH_TRANSMIT_POLL_DEMAND;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_DEFERRED_FRAMES_Bits B;
} Ifx_ETH_TX_DEFERRED_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits B;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_TX_PAUSE_FRAMES;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_VERSION_Bits B;
} Ifx_ETH_VERSION;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ETH_VLAN_TAG_Bits B;
} Ifx_ETH_VLAN_TAG;
# 2955 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH_MAC_ADDRESS
{
    Ifx_ETH_MAC_ADDRESS_HIGH HIGH;
    Ifx_ETH_MAC_ADDRESS_LOW LOW;
} Ifx_ETH_MAC_ADDRESS;
# 2972 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH
{
    Ifx_ETH_CLC CLC;
    Ifx_ETH_ID ID;
    Ifx_ETH_GPCTL GPCTL;
    Ifx_ETH_ACCEN0 ACCEN0;
    Ifx_ETH_ACCEN1 ACCEN1;
    Ifx_ETH_KRST0 KRST0;
    Ifx_ETH_KRST1 KRST1;
    Ifx_ETH_KRSTCLR KRSTCLR;
    unsigned char reserved_20[4064];
    Ifx_ETH_MAC_CONFIGURATION MAC_CONFIGURATION;
    Ifx_ETH_MAC_FRAME_FILTER MAC_FRAME_FILTER;
    Ifx_ETH_HASH_TABLE_HIGH HASH_TABLE_HIGH;
    Ifx_ETH_HASH_TABLE_LOW HASH_TABLE_LOW;
    Ifx_ETH_GMII_ADDRESS GMII_ADDRESS;
    Ifx_ETH_GMII_DATA GMII_DATA;
    Ifx_ETH_FLOW_CONTROL FLOW_CONTROL;
    Ifx_ETH_VLAN_TAG VLAN_TAG;
    Ifx_ETH_VERSION VERSION;
    Ifx_ETH_DEBUG DEBUG;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER REMOTE_WAKE_UP_FRAME_FILTER;
    Ifx_ETH_PMT_CONTROL_STATUS PMT_CONTROL_STATUS;
    unsigned char reserved_1030[8];
    Ifx_ETH_INTERRUPT_STATUS INTERRUPT_STATUS;
    Ifx_ETH_INTERRUPT_MASK INTERRUPT_MASK;
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G0[16];
    unsigned char reserved_10C0[64];
    Ifx_ETH_MMC_CONTROL MMC_CONTROL;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT MMC_RECEIVE_INTERRUPT;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT MMC_TRANSMIT_INTERRUPT;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK MMC_RECEIVE_INTERRUPT_MASK;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK MMC_TRANSMIT_INTERRUPT_MASK;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD TX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD TX_FRAME_COUNT_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD TX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD TX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD TX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD TX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD TX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD TX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD TX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD TX_UNICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD TX_MULTICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD TX_BROADCAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES TX_UNDERFLOW_ERROR_FRAMES;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES TX_SINGLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES TX_MULTIPLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_DEFERRED_FRAMES TX_DEFERRED_FRAMES;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES TX_LATE_COLLISION_FRAMES;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES TX_EXCESSIVE_COLLISION_FRAMES;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES TX_CARRIER_ERROR_FRAMES;
    Ifx_ETH_TX_OCTET_COUNT_GOOD TX_OCTET_COUNT_GOOD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD TX_FRAME_COUNT_GOOD;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR TX_EXCESSIVE_DEFERRAL_ERROR;
    Ifx_ETH_TX_PAUSE_FRAMES TX_PAUSE_FRAMES;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD TX_VLAN_FRAMES_GOOD;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD TX_OSIZE_FRAMES_GOOD;
    unsigned char reserved_117C[4];
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD RX_FRAMES_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD RX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD RX_OCTET_COUNT_GOOD;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD RX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD RX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_RX_CRC_ERROR_FRAMES RX_CRC_ERROR_FRAMES;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES RX_ALIGNMENT_ERROR_FRAMES;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES RX_RUNT_ERROR_FRAMES;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES RX_JABBER_ERROR_FRAMES;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD RX_UNDERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD RX_OVERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD RX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD RX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD RX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD RX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD RX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD RX_UNICAST_FRAMES_GOOD;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES RX_LENGTH_ERROR_FRAMES;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES RX_OUT_OF_RANGE_TYPE_FRAMES;
    Ifx_ETH_RX_PAUSE_FRAMES RX_PAUSE_FRAMES;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES RX_FIFO_OVERFLOW_FRAMES;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD RX_VLAN_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES RX_WATCHDOG_ERROR_FRAMES;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES RX_RECEIVE_ERROR_FRAMES;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD RX_CONTROL_FRAMES_GOOD;
    unsigned char reserved_11E8[24];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK MMC_IPC_RECEIVE_INTERRUPT_MASK;
    unsigned char reserved_1204[4];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT MMC_IPC_RECEIVE_INTERRUPT;
    unsigned char reserved_120C[4];
    Ifx_ETH_RXIPV4_GOOD_FRAMES RXIPV4_GOOD_FRAMES;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES RXIPV4_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES RXIPV4_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES RXIPV4_FRAGMENTED_FRAMES;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;
    Ifx_ETH_RXIPV6_GOOD_FRAMES RXIPV6_GOOD_FRAMES;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES RXIPV6_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES RXIPV6_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXUDP_GOOD_FRAMES RXUDP_GOOD_FRAMES;
    Ifx_ETH_RXUDP_ERROR_FRAMES RXUDP_ERROR_FRAMES;
    Ifx_ETH_RXTCP_GOOD_FRAMES RXTCP_GOOD_FRAMES;
    Ifx_ETH_RXTCP_ERROR_FRAMES RXTCP_ERROR_FRAMES;
    Ifx_ETH_RXICMP_GOOD_FRAMES RXICMP_GOOD_FRAMES;
    Ifx_ETH_RXICMP_ERROR_FRAMES RXICMP_ERROR_FRAMES;
    unsigned char reserved_1248[8];
    Ifx_ETH_RXIPV4_GOOD_OCTETS RXIPV4_GOOD_OCTETS;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS RXIPV4_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS RXIPV4_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS RXIPV4_FRAGMENTED_OCTETS;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;
    Ifx_ETH_RXIPV6_GOOD_OCTETS RXIPV6_GOOD_OCTETS;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS RXIPV6_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS RXIPV6_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXUDP_GOOD_OCTETS RXUDP_GOOD_OCTETS;
    Ifx_ETH_RXUDP_ERROR_OCTETS RXUDP_ERROR_OCTETS;
    Ifx_ETH_RXTCP_GOOD_OCTETS RXTCP_GOOD_OCTETS;
    Ifx_ETH_RXTCP_ERROR_OCTETS RXTCP_ERROR_OCTETS;
    Ifx_ETH_RXICMP_GOOD_OCTETS RXICMP_GOOD_OCTETS;
    Ifx_ETH_RXICMP_ERROR_OCTETS RXICMP_ERROR_OCTETS;
    unsigned char reserved_1288[1144];
    Ifx_ETH_TIMESTAMP_CONTROL TIMESTAMP_CONTROL;
    Ifx_ETH_SUB_SECOND_INCREMENT SUB_SECOND_INCREMENT;
    Ifx_ETH_SYSTEM_TIME_SECONDS SYSTEM_TIME_SECONDS;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS SYSTEM_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE SYSTEM_TIME_SECONDS_UPDATE;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE SYSTEM_TIME_NANOSECONDS_UPDATE;
    Ifx_ETH_TIMESTAMP_ADDEND TIMESTAMP_ADDEND;
    Ifx_ETH_TARGET_TIME_SECONDS TARGET_TIME_SECONDS;
    Ifx_ETH_TARGET_TIME_NANOSECONDS TARGET_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS SYSTEM_TIME_HIGHER_WORD_SECONDS;
    Ifx_ETH_TIMESTAMP_STATUS TIMESTAMP_STATUS;
    Ifx_ETH_PPS_CONTROL PPS_CONTROL;
    unsigned char reserved_1730[208];
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G1[16];
    unsigned char reserved_1880[1920];
    Ifx_ETH_BUS_MODE BUS_MODE;
    Ifx_ETH_TRANSMIT_POLL_DEMAND TRANSMIT_POLL_DEMAND;
    Ifx_ETH_RECEIVE_POLL_DEMAND RECEIVE_POLL_DEMAND;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS RECEIVE_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS TRANSMIT_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_STATUS STATUS;
    Ifx_ETH_OPERATION_MODE OPERATION_MODE;
    Ifx_ETH_INTERRUPT_ENABLE INTERRUPT_ENABLE;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER RECEIVE_INTERRUPT_WATCHDOG_TIMER;
    unsigned char reserved_2028[4];
    Ifx_ETH_AHB_OR_AXI_STATUS AHB_OR_AXI_STATUS;
    unsigned char reserved_2030[24];
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR CURRENT_HOST_TRANSMIT_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR CURRENT_HOST_RECEIVE_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;
    Ifx_ETH_HW_FEATURE HW_FEATURE;
    unsigned char reserved_205C[164];
} Ifx_ETH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 2
# 48 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_bf.h" 1
# 49 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2







typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crs_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crsdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Refclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Txclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxd_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Col_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Mdc_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel inSelect;
    IfxPort_OutputIdx outSelect;
} IfxEth_Mdio_InOut;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txd_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txen_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txer_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxer_In;

extern IfxEth_Col_In IfxEth_COL_P11_15_IN;
extern IfxEth_Crs_In IfxEth_CRSA_P11_14_IN;
extern IfxEth_Crs_In IfxEth_CRSB_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVB_P11_14_IN;
extern IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P12_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_0_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOA_P00_0_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOC_P12_1_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIOD_P21_3_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIO_P21_1_INOUT;
extern IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKB_P11_4_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKC_P12_0_IN;
extern IfxEth_Rxd_In IfxEth_RXD0_P11_10_IN;
extern IfxEth_Rxd_In IfxEth_RXD1_P11_9_IN;
extern IfxEth_Rxd_In IfxEth_RXD2_P11_8_IN;
extern IfxEth_Rxd_In IfxEth_RXD3_P11_7_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVB_P11_14_IN;
extern IfxEth_Rxer_In IfxEth_RXERA_P11_13_IN;
extern IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKA_P11_5_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN;
extern IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT;
extern IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT;
extern IfxEth_Txd_Out IfxEth_TXD2_P11_1_OUT;
extern IfxEth_Txd_Out IfxEth_TXD3_P11_0_OUT;
extern IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT;
extern IfxEth_Txer_Out IfxEth_TXER_P11_4_OUT;
# 203 "./0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
extern const IfxEth_Col_In *IfxEth_Col_In_pinTable[1][1];


extern const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[1][2];


extern const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[1][2];


extern const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[1][4];


extern const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[1][7];


extern const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[1][1];


extern const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[1][3];


extern const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[1][1];


extern const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[1][2];


extern const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[1][2];


extern const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[1][2];


extern const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[1][4];


extern const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[1][1];


extern const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[1][1];
# 50 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h" 2
# 95 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
typedef enum
{
    IfxEth_ChecksumMode_bypass = 0,
    IfxEth_ChecksumMode_ipv4 = 1,
    IfxEth_ChecksumMode_tcpUdpIcmpSegment = 2,
    IfxEth_ChecksumMode_tcpUdpIcmpFull = 3
} IfxEth_ChecksumMode;



typedef enum
{
    IfxEth_PhyInterfaceMode_mii,
    IfxEth_PhyInterfaceMode_rmii
} IfxEth_PhyInterfaceMode;



typedef enum
{
    IfxEth_ReceiveProcessState_reset,
    IfxEth_ReceiveProcessState_fetching,
    IfxEth_ReceiveProcessState_none,
    IfxEth_ReceiveProcessState_waiting,
    IfxEth_ReceiveProcessState_suspended,
    IfxEth_ReceiveProcessState_closing,
    IfxEth_ReceiveProcessState_timestampWrite,
    IfxEth_ReceiveProcessState_transfering
} IfxEth_ReceiveProcessState;



typedef enum
{
    IfxEth_TransmitProcessState_reset,
    IfxEth_TransmitProcessState_fetching,
    IfxEth_TransmitProcessState_waiting,
    IfxEth_TransmitProcessState_reading,
    IfxEth_TransmitProcessState_timestampWrite,
    IfxEth_TransmitProcessState_none,
    IfxEth_TransmitProcessState_suspended,
    IfxEth_TransmitProcessState_closing
} IfxEth_TransmitProcessState;
# 149 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
typedef struct
{
    uint32 ext : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_AltRxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 13;
    uint32 resv1 : 1;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 RBS2 : 13;
    uint32 resv : 2;
    uint32 DIC : 1;
} IfxEth_AltRxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 2;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 CIC : 2;
    uint32 resv1 : 1;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 DC : 1;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
    uint32 OWN : 1;
} IfxEth_AltTxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 13;
    uint32 resv1 : 3;
    uint32 TBS2 : 13;
    uint32 resv2 : 3;
} IfxEth_AltTxDescr1_Bits;







typedef union
{
    IfxEth_AltRxDescr0_Bits A;
    uint32 U;
} IfxEth_RxDescr0;



typedef union
{
    IfxEth_AltRxDescr1_Bits A;
    uint32 U;
} IfxEth_RxDescr1;



typedef union
{
    uint32 U;
} IfxEth_RxDescr2;



typedef union
{
    uint32 U;
} IfxEth_RxDescr3;



typedef union
{
    IfxEth_AltTxDescr0_Bits A;
    uint32 U;
} IfxEth_TxDescr0;



typedef union
{
    IfxEth_AltTxDescr1_Bits A;
    uint32 U;
} IfxEth_TxDescr1;



typedef union
{
    uint32 U;
} IfxEth_TxDescr2;



typedef union
{
    uint32 U;
} IfxEth_TxDescr3;







typedef struct
{
    IfxEth_RxDescr0 RDES0;
    IfxEth_RxDescr1 RDES1;
    IfxEth_RxDescr2 RDES2;
    IfxEth_RxDescr3 RDES3;
} IfxEth_RxDescr;



typedef struct
{
    IfxEth_TxDescr0 TDES0;
    IfxEth_TxDescr1 TDES1;
    IfxEth_TxDescr2 TDES2;
    IfxEth_TxDescr3 TDES3;
} IfxEth_TxDescr;







typedef struct
{
    IfxEth_Crs_In *crs;
    IfxEth_Col_In *col;
    IfxEth_Txclk_In *txClk;
    IfxEth_Rxclk_In *rxClk;
    IfxEth_Rxdv_In *rxDv;
    IfxEth_Rxer_In *rxEr;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Rxd_In *rxd2;
    IfxEth_Rxd_In *rxd3;
    IfxEth_Txen_Out *txEn;
    IfxEth_Txer_Out *txEr;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txd_Out *txd2;
    IfxEth_Txd_Out *txd3;
} IfxEth_MiiPins;



typedef struct
{
    IfxEth_Crsdv_In *crsDiv;
    IfxEth_Refclk_In *refClk;
    IfxEth_Rxd_In *rxd0;
    IfxEth_Rxd_In *rxd1;
    IfxEth_Mdc_Out *mdc;
    IfxEth_Mdio_InOut *mdio;
    IfxEth_Txd_Out *txd0;
    IfxEth_Txd_Out *txd1;
    IfxEth_Txen_Out *txEn;
} IfxEth_RmiiPins;





typedef union
{
    IfxEth_RxDescr items[8];
    uint32 U[8][4];
} IfxEth_RxDescrList;

typedef union
{
    IfxEth_TxDescr items[16];
    uint32 U[16][4];
} IfxEth_TxDescrList;







typedef struct
{
    uint8 macAddress[6];
    uint32 (*phyInit)(void);
    unsigned char (*phyLink)(void);
    IfxEth_PhyInterfaceMode phyInterfaceMode;
    const IfxEth_RmiiPins *rmiiPins;
    const IfxEth_MiiPins *miiPins;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    Ifx_ETH *ethSfr;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
} IfxEth_Config;







typedef struct
{
    Ifx_ETH_STATUS status;
    uint32 rxCount;
    uint32 txCount;
    uint32 error;
    sint32 isrRxCount;
    sint32 isrTxCount;
    sint32 txDiff;
    sint32 rxDiff;
    sint32 isrCount;
    IfxEth_Config config;
    IfxEth_RxDescrList *rxDescr;
    IfxEth_TxDescrList *txDescr;
    IfxEth_RxDescr *pRxDescr;
    IfxEth_TxDescr *pTxDescr;
    Ifx_ETH *ethSfr;
} IfxEth;



typedef struct
{
    uint32 PCE : 1;
    uint32 CE : 1;
    uint32 DBE : 1;
    uint32 RE : 1;
    uint32 RWT : 1;
    uint32 FT : 1;
    uint32 LC : 1;
    uint32 IPC : 1;
    uint32 LS : 1;
    uint32 FS : 1;
    uint32 VLAN : 1;
    uint32 OE : 1;
    uint32 LE : 1;
    uint32 SAF : 1;
    uint32 DE : 1;
    uint32 ES : 1;
    uint32 FL : 14;
    uint32 AFM : 1;
    uint32 OWN : 1;
} IfxEth_RxDescr0_Bits;



typedef struct
{
    uint32 RBS1 : 11;
    uint32 RBS2 : 11;
    uint32 resv : 2;
    uint32 RCH : 1;
    uint32 RER : 1;
    uint32 resv2 : 5;
    uint32 DIC : 1;
} IfxEth_RxDescr1_Bits;



typedef struct
{
    uint32 DB : 1;
    uint32 UF : 1;
    uint32 ED : 1;
    uint32 CC : 4;
    uint32 VLAN : 1;
    uint32 EC : 1;
    uint32 LC : 1;
    uint32 NC : 1;
    uint32 LOC : 1;
    uint32 PCE : 1;
    uint32 FF : 1;
    uint32 JT : 1;
    uint32 ES : 1;
    uint32 IHE : 1;
    uint32 TTSS : 1;
    uint32 resv : 13;
    uint32 OWN : 1;
} IfxEth_TxDescr0_Bits;



typedef struct
{
    uint32 TBS1 : 11;
    uint32 TBS2 : 11;
    uint32 TTSE : 1;
    uint32 DP : 1;
    uint32 TCH : 1;
    uint32 TER : 1;
    uint32 DC : 1;
    uint32 CIC : 2;
    uint32 FS : 1;
    uint32 LS : 1;
    uint32 IC : 1;
} IfxEth_TxDescr1_Bits;
# 511 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) unsigned char IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr);






static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer);





static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) unsigned char IfxEth_isSoftwareResetDone(IfxEth *eth);






static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, unsigned char loopbackMode);






static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode);






static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address);






static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address);






static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth);
# 598 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_freeReceiveBuffer(IfxEth *eth);
# 607 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_sendTransmitBuffer(IfxEth *eth, uint16 len);






extern void IfxEth_setMacAddress(IfxEth *eth, const uint8 *macAddress);





extern void IfxEth_startReceiver(IfxEth *eth);
# 630 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_writeHeader(IfxEth *eth, uint8 *txBuffer, uint8 *destinationAddress, uint8 *sourceAddress, uint32 packetSize);
# 645 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr);





static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth);



static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth);




static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth);





static inline __attribute__ ((always_inline)) unsigned char IfxEth_getLoopbackMode(IfxEth *eth);




static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth);





static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth);





static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth);






static inline __attribute__ ((always_inline)) unsigned char IfxEth_isLinkActive(IfxEth *eth);




static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxChecksumError(IfxEth *eth);






static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxDataAvailable(IfxEth *eth);





static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) unsigned char IfxEth_isTxInterrupt(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_shuffleRxDescriptor(IfxEth *eth);





static inline __attribute__ ((always_inline)) void IfxEth_shuffleTxDescriptor(IfxEth *eth);
# 768 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_enableModule(void);







extern void *IfxEth_getReceiveBuffer(IfxEth *eth);






extern void *IfxEth_getTransmitBuffer(IfxEth *eth);






extern void IfxEth_readMacAddress(IfxEth *eth, uint8 *macAddress);






extern void IfxEth_setAndSendTransmitBuffer(IfxEth *eth, void *buffer, uint16 len);






extern void IfxEth_setupChecksumEngine(IfxEth *eth, IfxEth_ChecksumMode mode);





extern void IfxEth_startTransmitter(IfxEth *eth);





extern void IfxEth_stopTransmitter(IfxEth *eth);





extern void IfxEth_wakeupReceiver(IfxEth *eth);





extern void IfxEth_wakeupTransmitter(IfxEth *eth);
# 846 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, unsigned char firstSegment, unsigned char lastSegment);
# 857 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern void IfxEth_init(IfxEth *eth, const IfxEth_Config *config);






extern void IfxEth_initConfig(IfxEth_Config *config, Ifx_ETH *ethSfr);





extern void IfxEth_initReceiveDescriptors(IfxEth *eth);





extern void IfxEth_initTransmitDescriptors(IfxEth *eth);






extern void IfxEth_setupMiiInputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupMiiOutputPins(IfxEth *eth, const IfxEth_MiiPins *miiPins);






extern void IfxEth_setupRmiiInputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);






extern void IfxEth_setupRmiiOutputPins(IfxEth *eth, const IfxEth_RmiiPins *rmiiPins);
# 914 "./0_Src/4_McHal/Tricore/Eth/Std/IfxEth.h"
extern uint8 IfxEth_rxBuffer[8][1536];

extern IfxEth_RxDescrList IfxEth_rxDescr;



extern uint8 IfxEth_txBuffer[16][1536];

extern IfxEth_TxDescrList IfxEth_txDescr;





static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_RxDescr_getNext(IfxEth_RxDescr *descr)
{
    return (IfxEth_RxDescr *)(descr->RDES3.U);
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_release(IfxEth_RxDescr *descr)
{
    descr->RDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_RxDescr_setBuffer(IfxEth_RxDescr *descr, void *buffer)
{
    descr->RDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_TxDescr_getNext(IfxEth_TxDescr *descr)
{
    return (IfxEth_TxDescr *)(descr->TDES3.U);
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_TxDescr_isAvailable(IfxEth_TxDescr *descr)
{
    return (descr->TDES0.A.OWN == 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_release(IfxEth_TxDescr *descr)
{
    descr->TDES0.A.OWN = 1U;
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setBuffer(IfxEth_TxDescr *descr, void *buffer)
{
    descr->TDES2.U = (uint32)((((((unsigned)(buffer) & 0xF0000000) == 0xD0000000) ? ((((unsigned)(buffer) & 0x000fffff) | 0x70000000) - ((IfxCpu_getCoreId()) * 0x10000000)) : (unsigned)(buffer))));
}


static inline __attribute__ ((always_inline)) void IfxEth_TxDescr_setup(IfxEth_TxDescr *descr, uint16 length, unsigned char firstSegment, unsigned char lastSegment)
{
    IfxEth_TxDescr0 tdes0;

    tdes0.U = descr->TDES0.U;
    tdes0.A.FS = firstSegment;
    tdes0.A.LS = lastSegment;
    descr->TDES0.U = tdes0.U;
    descr->TDES1.U = length;
}


static inline __attribute__ ((always_inline)) void IfxEth_applySoftwareReset(IfxEth *eth)
{
    (void)eth;
    (*(volatile Ifx_ETH_BUS_MODE *)0xF001F000u).B.SWR = 1;
}


static inline __attribute__ ((always_inline)) void IfxEth_clearRxInterrupt(IfxEth *eth)
{
    (void)eth;
    ((*(Ifx_ETH *)0xF001D000u)).STATUS.U = (uint32)((1 << (16)) | (1 << (6)));
}


static inline __attribute__ ((always_inline)) void IfxEth_clearTxInterrupt(IfxEth *eth)
{
    (void)eth;
    ((*(Ifx_ETH *)0xF001D000u)).STATUS.U = (uint32)((1 << (16)) | (1 << (0)));
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getActualRxDescriptor(IfxEth *eth)
{
    return eth->pRxDescr;
}


static inline __attribute__ ((always_inline)) uint32 IfxEth_getActualRxIndex(IfxEth *eth)
{
    uint32 offset = (uint32)eth->pRxDescr - (uint32)IfxEth_getBaseRxDescriptor(eth);
    return offset / sizeof(IfxEth_RxDescr);
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getActualTxDescriptor(IfxEth *eth)
{
    return eth->pTxDescr;
}


static inline __attribute__ ((always_inline)) IfxEth_RxDescr *IfxEth_getBaseRxDescriptor(IfxEth *eth)
{
    return eth->rxDescr->items;
}


static inline __attribute__ ((always_inline)) IfxEth_TxDescr *IfxEth_getBaseTxDescriptor(IfxEth *eth)
{
    return eth->txDescr->items;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_getLoopbackMode(IfxEth *eth)
{
    (void)eth;
    return ((*(volatile Ifx_ETH_MAC_CONFIGURATION *)0xF001E000u).B.LM != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void *IfxEth_getMacAddressPointer(IfxEth *eth)
{
    return (void *)eth->config.macAddress;
}


static inline __attribute__ ((always_inline)) IfxEth_ReceiveProcessState IfxEth_getReceiveProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_ReceiveProcessState)((*(Ifx_ETH *)0xF001D000u)).STATUS.B.RS;
}


static inline __attribute__ ((always_inline)) uint16 IfxEth_getRxDataLength(IfxEth *eth)
{
    uint16 length = 0;

    if (IfxEth_isRxDataAvailable(eth) != 0)
    {
        length = (uint16)IfxEth_getActualRxDescriptor(eth)->RDES0.A.FL;
    }

    return length;
}


static inline __attribute__ ((always_inline)) IfxEth_TransmitProcessState IfxEth_getTransmitProcessState(IfxEth *eth)
{
    (void)eth;
    return (IfxEth_TransmitProcessState)((*(Ifx_ETH *)0xF001D000u)).STATUS.B.TS;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isLinkActive(IfxEth *eth)
{
    return eth->config.phyLink() != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxChecksumError(IfxEth *eth)
{
    IfxEth_RxDescr *descr = IfxEth_getActualRxDescriptor(eth);
    unsigned char error = (descr->RDES0.A.IPC != 0);
    descr->RDES0.A.IPC = 0;

    return error;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxDataAvailable(IfxEth *eth)
{

    return IfxEth_getActualRxDescriptor(eth)->RDES0.A.OWN == 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isRxInterrupt(IfxEth *eth)
{
    (void)eth;

    return ((*(Ifx_ETH *)0xF001D000u)).STATUS.B.RI != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isSoftwareResetDone(IfxEth *eth)
{
    (void)eth;
    return (*(volatile Ifx_ETH_BUS_MODE *)0xF001F000u).B.SWR == 0 ? 1 : 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEth_isTxInterrupt(IfxEth *eth)
{
    (void)eth;

    return ((*(Ifx_ETH *)0xF001D000u)).STATUS.B.TI != 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_readAllFlags(IfxEth *eth)
{
    eth->status.U = (*(volatile Ifx_ETH_STATUS *)0xF001F014u).U;
}


static inline __attribute__ ((always_inline)) void IfxEth_setLoopbackMode(IfxEth *eth, unsigned char loopbackMode)
{
    (void)eth;
    (*(volatile Ifx_ETH_MAC_CONFIGURATION *)0xF001E000u).B.LM = loopbackMode ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxEth_setPhyInterfaceMode(IfxEth *eth, IfxEth_PhyInterfaceMode mode)
{
    (void)eth;
    (*(volatile Ifx_ETH_GPCTL *)0xF001D008u).B.EPR = mode;
}


static inline __attribute__ ((always_inline)) void IfxEth_setReceiveDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->RECEIVE_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_setTransmitDescriptorAddress(Ifx_ETH *eth, void *address)
{
    eth->TRANSMIT_DESCRIPTOR_LIST_ADDRESS.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxEth_shuffleRxDescriptor(IfxEth *eth)
{
    eth->pRxDescr = IfxEth_RxDescr_getNext(eth->pRxDescr);
}


static inline __attribute__ ((always_inline)) void IfxEth_shuffleTxDescriptor(IfxEth *eth)
{
    eth->pTxDescr = IfxEth_TxDescr_getNext(eth->pTxDescr);
}


static inline __attribute__ ((always_inline)) void *IfxEth_waitTransmitBuffer(IfxEth *eth)
{
    void *tx;

    do
    {
        tx = IfxEth_getTransmitBuffer(eth);
    } while (tx == ((void *)0));

    return tx;
}
# 38 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h" 2
# 48 "./0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h"
extern uint32 IfxEth_Phy_Pef7071_init(void);




extern unsigned char IfxEth_Phy_Pef7071_link(void);




extern void IfxEth_Phy_Pef7071_read_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 *pdata);




extern void IfxEth_Phy_Pef7071_write_mdio_reg(uint32 layeraddr, uint32 regaddr, uint32 data);







extern uint32 IfxEth_Phy_Pef7071_iPhyInitDone;
# 21 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h" 2
# 33 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
static Ifx_P * const portLED = (Ifx_P *)&((*(Ifx_P *)0xF003D300u));
extern int tem;
# 45 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
typedef struct
{
    struct
    {
        IfxEth eth;
    }drivers;
} App_Eth;





extern App_Eth g_Eth;
extern uint8 messageType;
extern uint8* pRxBuf;




void setPort_ETH(void);
void setFrame_ETH(uint8 *buf);
void EthISR(void);
extern void printf_ETH(uint8 *SRC_MAC, uint8 *DES_MAC, uint8 *ETH_TYPE, char *fmt, ...);
# 38 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 2
# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.h" 1
# 15 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.h"
# 1 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h" 1
# 751 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
# 1 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 1
# 45 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxMultican_cfg.h" 1
# 61 "./0_Src/4_McHal/Tricore/_Impl/IfxMultican_cfg.h"
typedef enum
{
    IfxMultican_NodeId_none = -1,
    IfxMultican_NodeId_0 = 0,
    IfxMultican_NodeId_1,
    IfxMultican_NodeId_2,
    IfxMultican_NodeId_3
} IfxMultican_NodeId;



typedef enum
{
    IfxMultican_SrcId_0 = 0,
    IfxMultican_SrcId_1,
    IfxMultican_SrcId_2,
    IfxMultican_SrcId_3,
    IfxMultican_SrcId_4,
    IfxMultican_SrcId_5,
    IfxMultican_SrcId_6,
    IfxMultican_SrcId_7,
    IfxMultican_SrcId_8,
    IfxMultican_SrcId_9,
    IfxMultican_SrcId_10,
    IfxMultican_SrcId_11,
    IfxMultican_SrcId_12,
    IfxMultican_SrcId_13,
    IfxMultican_SrcId_14,
    IfxMultican_SrcId_15
} IfxMultican_SrcId;
# 46 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2

# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef struct _Ifx_CAN_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_CAN_ACCEN0_Bits;


typedef struct _Ifx_CAN_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CAN_ACCEN1_Bits;


typedef struct _Ifx_CAN_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_CAN_CLC_Bits;


typedef struct _Ifx_CAN_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int reserved_16 : 16;
} Ifx_CAN_FDR_Bits;


typedef struct _Ifx_CAN_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_CAN_ID_Bits;


typedef struct _Ifx_CAN_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_CAN_KRST0_Bits;


typedef struct _Ifx_CAN_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRST1_Bits;


typedef struct _Ifx_CAN_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRSTCLR_Bits;


typedef struct _Ifx_CAN_LIST_Bits
{
    unsigned int BEGIN : 8;
    unsigned int END : 8;
    unsigned int SIZE : 8;
    unsigned int EMPTY : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_LIST_Bits;


typedef struct _Ifx_CAN_MCR_Bits
{
    unsigned int CLKSEL : 4;
    unsigned int reserved_4 : 8;
    unsigned int MPSEL : 4;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MCR_Bits;


typedef struct _Ifx_CAN_MECR_Bits
{
    unsigned int TH : 16;
    unsigned int INP : 4;
    unsigned int NODE : 3;
    unsigned int reserved_23 : 1;
    unsigned int ANYED : 1;
    unsigned int CAPEIE : 1;
    unsigned int reserved_26 : 1;
    unsigned int DEPTH : 3;
    unsigned int SOF : 1;
    unsigned int reserved_31 : 1;
} Ifx_CAN_MECR_Bits;


typedef struct _Ifx_CAN_MESTAT_Bits
{
    unsigned int CAPT : 16;
    unsigned int CAPRED : 1;
    unsigned int CAPE : 1;
    unsigned int reserved_18 : 14;
} Ifx_CAN_MESTAT_Bits;


typedef struct _Ifx_CAN_MITR_Bits
{
    unsigned int IT : 16;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MITR_Bits;


typedef struct _Ifx_CAN_MO_AMR_Bits
{
    unsigned int AM : 29;
    unsigned int MIDE : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_MO_AMR_Bits;


typedef struct _Ifx_CAN_MO_AR_Bits
{
    unsigned int ID : 29;
    unsigned int IDE : 1;
    unsigned int PRI : 2;
} Ifx_CAN_MO_AR_Bits;


typedef struct _Ifx_CAN_MO_CTR_Bits
{
    unsigned int RESRXPND : 1;
    unsigned int RESTXPND : 1;
    unsigned int RESRXUPD : 1;
    unsigned int RESNEWDAT : 1;
    unsigned int RESMSGLST : 1;
    unsigned int RESMSGVAL : 1;
    unsigned int RESRTSEL : 1;
    unsigned int RESRXEN : 1;
    unsigned int RESTXRQ : 1;
    unsigned int RESTXEN0 : 1;
    unsigned int RESTXEN1 : 1;
    unsigned int RESDIR : 1;
    unsigned int reserved_12 : 4;
    unsigned int SETRXPND : 1;
    unsigned int SETTXPND : 1;
    unsigned int SETRXUPD : 1;
    unsigned int SETNEWDAT : 1;
    unsigned int SETMSGLST : 1;
    unsigned int SETMSGVAL : 1;
    unsigned int SETRTSEL : 1;
    unsigned int SETRXEN : 1;
    unsigned int SETTXRQ : 1;
    unsigned int SETTXEN0 : 1;
    unsigned int SETTXEN1 : 1;
    unsigned int SETDIR : 1;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_CTR_Bits;


typedef struct _Ifx_CAN_MO_DATAH_Bits
{
    unsigned int DB4 : 8;
    unsigned int DB5 : 8;
    unsigned int DB6 : 8;
    unsigned int DB7 : 8;
} Ifx_CAN_MO_DATAH_Bits;


typedef struct _Ifx_CAN_MO_DATAL_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_DATAL_Bits;


typedef struct _Ifx_CAN_MO_EDATA0_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA0_Bits;


typedef struct _Ifx_CAN_MO_EDATA1_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA1_Bits;


typedef struct _Ifx_CAN_MO_EDATA2_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA2_Bits;


typedef struct _Ifx_CAN_MO_EDATA3_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA3_Bits;


typedef struct _Ifx_CAN_MO_EDATA4_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA4_Bits;


typedef struct _Ifx_CAN_MO_EDATA5_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA5_Bits;


typedef struct _Ifx_CAN_MO_EDATA6_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA6_Bits;


typedef struct _Ifx_CAN_MO_FCR_Bits
{
    unsigned int MMC : 4;
    unsigned int RXTOE : 1;
    unsigned int BRS : 1;
    unsigned int FDF : 1;
    unsigned int reserved_7 : 1;
    unsigned int GDFS : 1;
    unsigned int IDC : 1;
    unsigned int DLCC : 1;
    unsigned int DATC : 1;
    unsigned int reserved_12 : 4;
    unsigned int RXIE : 1;
    unsigned int TXIE : 1;
    unsigned int OVIE : 1;
    unsigned int reserved_19 : 1;
    unsigned int FRREN : 1;
    unsigned int RMM : 1;
    unsigned int SDT : 1;
    unsigned int STT : 1;
    unsigned int DLC : 4;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_FCR_Bits;


typedef struct _Ifx_CAN_MO_FGPR_Bits
{
    unsigned int BOT : 8;
    unsigned int TOP : 8;
    unsigned int CUR : 8;
    unsigned int SEL : 8;
} Ifx_CAN_MO_FGPR_Bits;


typedef struct _Ifx_CAN_MO_IPR_Bits
{
    unsigned int RXINP : 4;
    unsigned int TXINP : 4;
    unsigned int MPN : 8;
    unsigned int CFCVAL : 16;
} Ifx_CAN_MO_IPR_Bits;


typedef struct _Ifx_CAN_MO_STAT_Bits
{
    unsigned int RXPND : 1;
    unsigned int TXPND : 1;
    unsigned int RXUPD : 1;
    unsigned int NEWDAT : 1;
    unsigned int MSGLST : 1;
    unsigned int MSGVAL : 1;
    unsigned int RTSEL : 1;
    unsigned int RXEN : 1;
    unsigned int TXRQ : 1;
    unsigned int TXEN0 : 1;
    unsigned int TXEN1 : 1;
    unsigned int DIR : 1;
    unsigned int LIST : 4;
    unsigned int PPREV : 8;
    unsigned int PNEXT : 8;
} Ifx_CAN_MO_STAT_Bits;


typedef struct _Ifx_CAN_MSID_Bits
{
    unsigned int INDEX : 6;
    unsigned int reserved_6 : 26;
} Ifx_CAN_MSID_Bits;


typedef struct _Ifx_CAN_MSIMASK_Bits
{
    unsigned int IM : 32;
} Ifx_CAN_MSIMASK_Bits;


typedef struct _Ifx_CAN_MSPND_Bits
{
    unsigned int PND : 32;
} Ifx_CAN_MSPND_Bits;


typedef struct _Ifx_CAN_N_BTEVR_Bits
{
    unsigned int BRP : 6;
    unsigned int reserved_6 : 2;
    unsigned int SJW : 4;
    unsigned int reserved_12 : 3;
    unsigned int DIV8 : 1;
    unsigned int TSEG2 : 5;
    unsigned int reserved_21 : 1;
    unsigned int TSEG1 : 6;
    unsigned int reserved_28 : 4;
} Ifx_CAN_N_BTEVR_Bits;


typedef struct _Ifx_CAN_N_BTR_Bits
{
    unsigned int BRP : 6;
    unsigned int SJW : 2;
    unsigned int TSEG1 : 4;
    unsigned int TSEG2 : 3;
    unsigned int DIV8 : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_BTR_Bits;


typedef struct _Ifx_CAN_N_CR_Bits
{
    unsigned int INIT : 1;
    unsigned int TRIE : 1;
    unsigned int LECIE : 1;
    unsigned int ALIE : 1;
    unsigned int CANDIS : 1;
    unsigned int TXDIS : 1;
    unsigned int CCE : 1;
    unsigned int CALM : 1;
    unsigned int SUSEN : 1;
    unsigned int FDEN : 1;
    unsigned int reserved_10 : 22;
} Ifx_CAN_N_CR_Bits;


typedef struct _Ifx_CAN_N_ECNT_Bits
{
    unsigned int REC : 8;
    unsigned int TEC : 8;
    unsigned int EWRNLVL : 8;
    unsigned int LETD : 1;
    unsigned int LEINC : 1;
    unsigned int reserved_26 : 6;
} Ifx_CAN_N_ECNT_Bits;


typedef struct _Ifx_CAN_N_FBTR_Bits
{
    unsigned int FBRP : 6;
    unsigned int FSJW : 2;
    unsigned int FTSEG1 : 4;
    unsigned int FTSEG2 : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_FBTR_Bits;


typedef struct _Ifx_CAN_N_FCR_Bits
{
    unsigned int CFC : 16;
    unsigned int CFSEL : 3;
    unsigned int CFMOD : 2;
    unsigned int reserved_21 : 1;
    unsigned int CFCIE : 1;
    unsigned int CFCOV : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_FCR_Bits;


typedef struct _Ifx_CAN_N_IPR_Bits
{
    unsigned int ALINP : 4;
    unsigned int LECINP : 4;
    unsigned int TRINP : 4;
    unsigned int CFCINP : 4;
    unsigned int TEINP : 4;
    unsigned int reserved_20 : 12;
} Ifx_CAN_N_IPR_Bits;


typedef struct _Ifx_CAN_N_PCR_Bits
{
    unsigned int RXSEL : 3;
    unsigned int reserved_3 : 5;
    unsigned int LBM : 1;
    unsigned int reserved_9 : 23;
} Ifx_CAN_N_PCR_Bits;


typedef struct _Ifx_CAN_N_SR_Bits
{
    unsigned int LEC : 3;
    unsigned int TXOK : 1;
    unsigned int RXOK : 1;
    unsigned int ALERT : 1;
    unsigned int EWRN : 1;
    unsigned int BOFF : 1;
    unsigned int LLE : 1;
    unsigned int LOE : 1;
    unsigned int SUSACK : 1;
    unsigned int RESI : 1;
    unsigned int FLEC : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_SR_Bits;


typedef struct _Ifx_CAN_N_TCCR_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int TPSC : 4;
    unsigned int reserved_12 : 6;
    unsigned int TRIGSRC : 3;
    unsigned int reserved_21 : 11;
} Ifx_CAN_N_TCCR_Bits;


typedef struct _Ifx_CAN_N_TDCR_Bits
{
    unsigned int TDCV : 5;
    unsigned int reserved_5 : 3;
    unsigned int TDCO : 4;
    unsigned int reserved_12 : 3;
    unsigned int TDC : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_TDCR_Bits;


typedef struct _Ifx_CAN_N_TRTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int reserved_16 : 6;
    unsigned int TEIE : 1;
    unsigned int TE : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_TRTR_Bits;


typedef struct _Ifx_CAN_N_TTTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int TXMO : 8;
    unsigned int STRT : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_N_TTTR_Bits;


typedef struct _Ifx_CAN_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_OCS_Bits;


typedef struct _Ifx_CAN_PANCTR_Bits
{
    unsigned int PANCMD : 8;
    unsigned int BUSY : 1;
    unsigned int RBUSY : 1;
    unsigned int reserved_10 : 6;
    unsigned int PANAR1 : 8;
    unsigned int PANAR2 : 8;
} Ifx_CAN_PANCTR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_ACCEN0_Bits B;
} Ifx_CAN_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_ACCEN1_Bits B;
} Ifx_CAN_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_CLC_Bits B;
} Ifx_CAN_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_FDR_Bits B;
} Ifx_CAN_FDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_ID_Bits B;
} Ifx_CAN_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_KRST0_Bits B;
} Ifx_CAN_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_KRST1_Bits B;
} Ifx_CAN_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_KRSTCLR_Bits B;
} Ifx_CAN_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_LIST_Bits B;
} Ifx_CAN_LIST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MCR_Bits B;
} Ifx_CAN_MCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MECR_Bits B;
} Ifx_CAN_MECR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MESTAT_Bits B;
} Ifx_CAN_MESTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MITR_Bits B;
} Ifx_CAN_MITR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_AMR_Bits B;
} Ifx_CAN_MO_AMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_AR_Bits B;
} Ifx_CAN_MO_AR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_CTR_Bits B;
} Ifx_CAN_MO_CTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_DATAH_Bits B;
} Ifx_CAN_MO_DATAH;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_DATAL_Bits B;
} Ifx_CAN_MO_DATAL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA0_Bits B;
} Ifx_CAN_MO_EDATA0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA1_Bits B;
} Ifx_CAN_MO_EDATA1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA2_Bits B;
} Ifx_CAN_MO_EDATA2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA3_Bits B;
} Ifx_CAN_MO_EDATA3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA4_Bits B;
} Ifx_CAN_MO_EDATA4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA5_Bits B;
} Ifx_CAN_MO_EDATA5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_EDATA6_Bits B;
} Ifx_CAN_MO_EDATA6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_FCR_Bits B;
} Ifx_CAN_MO_FCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_FGPR_Bits B;
} Ifx_CAN_MO_FGPR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_IPR_Bits B;
} Ifx_CAN_MO_IPR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MO_STAT_Bits B;
} Ifx_CAN_MO_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MSID_Bits B;
} Ifx_CAN_MSID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MSIMASK_Bits B;
} Ifx_CAN_MSIMASK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_MSPND_Bits B;
} Ifx_CAN_MSPND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_BTEVR_Bits B;
} Ifx_CAN_N_BTEVR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_BTR_Bits B;
} Ifx_CAN_N_BTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_CR_Bits B;
} Ifx_CAN_N_CR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_ECNT_Bits B;
} Ifx_CAN_N_ECNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_FBTR_Bits B;
} Ifx_CAN_N_FBTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_FCR_Bits B;
} Ifx_CAN_N_FCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_IPR_Bits B;
} Ifx_CAN_N_IPR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_PCR_Bits B;
} Ifx_CAN_N_PCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_SR_Bits B;
} Ifx_CAN_N_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_TCCR_Bits B;
} Ifx_CAN_N_TCCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_TDCR_Bits B;
} Ifx_CAN_N_TDCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_TRTR_Bits B;
} Ifx_CAN_N_TRTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_N_TTTR_Bits B;
} Ifx_CAN_N_TTTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_OCS_Bits B;
} Ifx_CAN_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CAN_PANCTR_Bits B;
} Ifx_CAN_PANCTR;
# 1106 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_MO
{
    union
    {
        Ifx_CAN_MO_EDATA0 EDATA0;
        Ifx_CAN_MO_FCR FCR;
    };

    union
    {
        Ifx_CAN_MO_EDATA1 EDATA1;
        Ifx_CAN_MO_FGPR FGPR;
    };

    union
    {
        Ifx_CAN_MO_EDATA2 EDATA2;
        Ifx_CAN_MO_IPR IPR;
    };

    union
    {
        Ifx_CAN_MO_AMR AMR;
        Ifx_CAN_MO_EDATA3 EDATA3;
    };

    union
    {
        Ifx_CAN_MO_DATAL DATAL;
        Ifx_CAN_MO_EDATA4 EDATA4;
    };

    union
    {
        Ifx_CAN_MO_DATAH DATAH;
        Ifx_CAN_MO_EDATA5 EDATA5;
    };

    union
    {
        Ifx_CAN_MO_AR AR;
        Ifx_CAN_MO_EDATA6 EDATA6;
    };

    union
    {
        Ifx_CAN_MO_CTR CTR;
        Ifx_CAN_MO_STAT STAT;
    };
} Ifx_CAN_MO;


typedef volatile struct _Ifx_CAN_N
{
    Ifx_CAN_N_CR CR;
    Ifx_CAN_N_SR SR;
    Ifx_CAN_N_IPR IPR;
    Ifx_CAN_N_PCR PCR;
    union
    {
        Ifx_CAN_N_BTEVR BTEVR;
        Ifx_CAN_N_BTR BTR;
    };

    Ifx_CAN_N_ECNT ECNT;
    Ifx_CAN_N_FCR FCR;
    Ifx_CAN_N_TCCR TCCR;
    Ifx_CAN_N_TRTR TRTR;
    Ifx_CAN_N_TTTR TATTR;
    Ifx_CAN_N_TTTR TBTTR;
    Ifx_CAN_N_TTTR TCTTR;
    unsigned char reserved_30[8];
    Ifx_CAN_N_FBTR FBTR;
    Ifx_CAN_N_TDCR TDCR;
    unsigned char reserved_40[192];
} Ifx_CAN_N;
# 1194 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN
{
    Ifx_CAN_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_CAN_ID ID;
    Ifx_CAN_FDR FDR;
    unsigned char reserved_10[216];
    Ifx_CAN_OCS OCS;
    Ifx_CAN_KRSTCLR KRSTCLR;
    Ifx_CAN_KRST1 KRST1;
    Ifx_CAN_KRST0 KRST0;
    Ifx_CAN_ACCEN1 ACCEN1;
    Ifx_CAN_ACCEN0 ACCEN0;
    Ifx_CAN_LIST LIST[16];
    Ifx_CAN_MSPND MSPND[8];
    unsigned char reserved_160[32];
    Ifx_CAN_MSID MSID[8];
    unsigned char reserved_1A0[32];
    Ifx_CAN_MSIMASK MSIMASK;
    Ifx_CAN_PANCTR PANCTR;
    Ifx_CAN_MCR MCR;
    Ifx_CAN_MITR MITR;
    Ifx_CAN_MECR MECR;
    Ifx_CAN_MESTAT MESTAT;
    unsigned char reserved_1D8[40];
    Ifx_CAN_N N[4];
    unsigned char reserved_600[2560];
    Ifx_CAN_MO MO[256];
    unsigned char reserved_3000[4096];
} Ifx_CAN;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h" 2







typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxMultican_Rxd_In;


typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMultican_Txd_Out;

extern IfxMultican_Rxd_In IfxMultican_RXD0A_P02_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0B_P20_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0C_P12_0_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0D_P02_4_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0E_P33_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0G_P34_2_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1A_P15_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1B_P14_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1C_P01_4_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1D_P00_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1E_P02_10_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2A_P15_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2B_P02_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2C_P32_6_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2D_P14_8_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2E_P10_2_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD3A_P00_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD3B_P32_2_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD3C_P20_0_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD3D_P11_10_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD3E_P20_9_IN;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_5_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P12_1_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P20_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P33_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P34_1_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P00_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P01_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P02_9_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P14_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P15_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P02_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P10_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P14_10_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P15_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P32_5_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD3_P00_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD3_P11_12_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD3_P20_10_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD3_P20_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD3_P32_3_OUT;
# 107 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h"
extern const IfxMultican_Rxd_In *IfxMultican_Rxd_In_pinTable[1][4][7];


extern const IfxMultican_Txd_Out *IfxMultican_Txd_Out_pinTable[1][4][6];
# 48 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 1
# 50 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_bf.h" 1
# 51 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 59 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef sint32 IfxMultican_MsgObjId;
# 69 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef enum
{
    IfxMultican_ClockSelect_noClock = 0,
    IfxMultican_ClockSelect_fclc = 1,
    IfxMultican_ClockSelect_fosc0 = 2,
    IfxMultican_ClockSelect_fErayPll = 4
} IfxMultican_ClockSelect;




typedef enum
{
    IfxMultican_DataLengthCode_0 = 0,
    IfxMultican_DataLengthCode_1,
    IfxMultican_DataLengthCode_2,
    IfxMultican_DataLengthCode_3,
    IfxMultican_DataLengthCode_4,
    IfxMultican_DataLengthCode_5,
    IfxMultican_DataLengthCode_6,
    IfxMultican_DataLengthCode_7,
    IfxMultican_DataLengthCode_8,
    IfxMultican_DataLengthCode_12 = 9,
    IfxMultican_DataLengthCode_16 = 10,
    IfxMultican_DataLengthCode_20 = 11,
    IfxMultican_DataLengthCode_24 = 12,
    IfxMultican_DataLengthCode_32 = 13,
    IfxMultican_DataLengthCode_48 = 14,
    IfxMultican_DataLengthCode_64 = 15
} IfxMultican_DataLengthCode;



typedef enum
{
    IfxMultican_Frame_receive,
    IfxMultican_Frame_transmit,
    IfxMultican_Frame_remoteRequest,
    IfxMultican_Frame_remoteAnswer
} IfxMultican_Frame;




typedef enum
{
    IfxMultican_FrameCounterMode_frameCountMode = 0,

    IfxMultican_FrameCounterMode_timeStampMode = 1,

    IfxMultican_FrameCounterMode_bitTimingMode = 2,

    IfxMultican_FrameCounterMode_errorCountMode = 3


} IfxMultican_FrameCounterMode;




typedef enum
{
    IfxMultican_MsgObjGroup_0 = 0,
    IfxMultican_MsgObjGroup_1,
    IfxMultican_MsgObjGroup_2,
    IfxMultican_MsgObjGroup_3,
    IfxMultican_MsgObjGroup_4,
    IfxMultican_MsgObjGroup_5,
    IfxMultican_MsgObjGroup_6,
    IfxMultican_MsgObjGroup_7
} IfxMultican_MsgObjGroup;



typedef enum
{
    IfxMultican_MsgObjMode_standard = 0,
    IfxMultican_MsgObjMode_receiveFifoBase = 1,
    IfxMultican_MsgObjMode_transmitFifoBase = 2,
    IfxMultican_MsgObjMode_transmitFifoSlave = 3,
    IfxMultican_MsgObjMode_gatewaySource = 4,
    IfxMultican_MsgObjMode_canFD64 = 5
} IfxMultican_MsgObjMode;




typedef enum
{
    IfxMultican_MsgObjStatusFlag_receivePending = (0),
    IfxMultican_MsgObjStatusFlag_transmitPending = (1),
    IfxMultican_MsgObjStatusFlag_receiveUpdating = (2),
    IfxMultican_MsgObjStatusFlag_newData = (3),
    IfxMultican_MsgObjStatusFlag_messageLost = (4),
    IfxMultican_MsgObjStatusFlag_messageValid = (5),
    IfxMultican_MsgObjStatusFlag_receiveTransmitSelected = (6),
    IfxMultican_MsgObjStatusFlag_receiveEnable = (7),
    IfxMultican_MsgObjStatusFlag_transmitRequest = (8),
    IfxMultican_MsgObjStatusFlag_transmitEnable0 = (9),
    IfxMultican_MsgObjStatusFlag_transmitEnable1 = (10),
    IfxMultican_MsgObjStatusFlag_messageDirection = (11)
} IfxMultican_MsgObjStatusFlag;



typedef enum
{
    IfxMultican_Priority_ListOrder = 1,
    IfxMultican_Priority_CAN_ID = 2
} IfxMultican_Priority;




typedef enum
{
    IfxMultican_SleepMode_enable = 0,
    IfxMultican_SleepMode_disable = 1
} IfxMultican_SleepMode;



typedef enum
{
    IfxMultican_Status_ok = 0x00000000,
    IfxMultican_Status_notInitialised = 0x00000001,
    IfxMultican_Status_wrongParam = 0x00000002,
    IfxMultican_Status_wrongPin = 0x00000004,
    IfxMultican_Status_busHeavy = 0x00000008,
    IfxMultican_Status_busOff = 0x00000010,
    IfxMultican_Status_notSentBusy = 0x00000020,
    IfxMultican_Status_receiveEmpty = 0x00000040,
    IfxMultican_Status_messageLost = 0x00000080,
    IfxMultican_Status_newData = 0x00000100,
    IfxMultican_Status_newDataButOneLost = IfxMultican_Status_messageLost | IfxMultican_Status_newData
} IfxMultican_Status;
# 214 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef struct
{
    uint32 id;
    IfxMultican_DataLengthCode lengthCode;
    uint32 data[2];
    unsigned char fastBitRate;
} IfxMultican_Message;



typedef union
{
    Ifx_CAN_MO_STAT_Bits B;
    unsigned int U;
} IfxMultican_MsgObjStat;
# 241 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list);





static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) unsigned char IfxMultican_isModuleEnabled(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue);






static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect);






static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask);






static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode);





static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan);
# 352 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setFastBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 363 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setNominalBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);






extern void IfxMultican_deinit(Ifx_CAN *mcan);





extern void IfxMultican_resetModule(Ifx_CAN *can);
# 385 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_setListCommand(Ifx_CAN *mcan, uint32 cmd, uint32 arg2, uint32 arg1);
# 400 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, unsigned char mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, unsigned char mode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value);
# 587 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_deinit(Ifx_CAN_N *hwNode);
# 596 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern unsigned char IfxMultican_Node_initRxPin(Ifx_CAN_N *hwNode, IfxMultican_Rxd_In *rxd, IfxPort_InputMode mode);
# 605 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern unsigned char IfxMultican_Node_initTxPin(Ifx_CAN_N *hwNode, IfxMultican_Txd_Out *txd, IfxPort_OutputMode mode);





extern IfxMultican_Status IfxMultican_Node_recoverBusOff(Ifx_CAN_N *hwNode);
# 622 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 632 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_calcTimingFromBTR(float32 moduleFreq, uint32 btr, uint32 *baudrate, uint16 *samplePoint, uint16 *synchJumpWidth);
# 651 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode);
# 660 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, unsigned char fastBitRate);
# 675 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj);






static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, unsigned char extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, unsigned char enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, unsigned char extension);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, unsigned char matchingId);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, unsigned char extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);
# 939 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern unsigned char IfxMultican_MsgObj_cancelSend(Ifx_CAN_MO *hwObj);






extern void IfxMultican_MsgObj_clearStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);







extern void IfxMultican_MsgObj_deinit(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






extern IfxMultican_MsgObjId IfxMultican_MsgObj_getPendingId(Ifx_CAN *mcan, IfxMultican_MsgObjGroup msgObjGroup);





extern IfxMultican_MsgObjStat IfxMultican_MsgObj_getStatus(Ifx_CAN_MO *hwObj);






extern unsigned char IfxMultican_MsgObj_getStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 986 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);
# 996 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg);
# 1006 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_sendLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);







extern IfxMultican_Status IfxMultican_MsgObj_sendMessage(Ifx_CAN_MO *hwObj, const IfxMultican_Message *msg);
# 1023 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_MsgObj_setFilter(Ifx_CAN_MO *hwObj, unsigned char extend, uint32 id, uint32 accMask);






extern void IfxMultican_MsgObj_setStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 1046 "./0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern volatile Ifx_SRC_SRCR *IfxMultican_getSrcPointer(Ifx_CAN *mcan, IfxMultican_SrcId srcId);







static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode)
{
    msg->id = id;
    msg->data[0] = dataLow;
    msg->data[1] = dataHigh;
    msg->lengthCode = lengthCode;

    msg->fastBitRate = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, unsigned char fastBitRate)
{
    msg->id = id;
    msg->data[0] = 0;
    msg->data[1] = 0;
    msg->lengthCode = lengthCode;
    msg->fastBitRate = fastBitRate;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj)
{
    hwObj->DATAL.U = 0;
    hwObj->DATAH.U = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj)
{
    hwObj->FGPR.U = 0x0000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receivePending);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitPending);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->FGPR.B.BOT);
}


static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_DataLengthCode)(hwObj->FCR.B.DLC);
}


static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj)
{
    Ifx_CAN_MO_AR ar;
    ar.U = hwObj->AR.U;
    return ar.B.ID >> ((ar.B.IDE != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->STAT.B.PNEXT);
}


static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId)
{
    return &(mcan->MO[msgObjId]);
}


static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj)
{
    return hwObj->AR.B.IDE != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.RXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.TXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, unsigned char extendedFrame)
{
    hwObj->AMR.B.AM = mask << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.BRS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.BOT = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.CUR = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.DATC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code)
{
    hwObj->FCR.B.DLC = code;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.DLCC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.FDF = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.GDFS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.IDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, unsigned char extension)
{
    hwObj->AR.B.IDE = extension;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, unsigned char matchingId)
{
    hwObj->AMR.B.MIDE = matchingId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, unsigned char extendedFrame)
{
    hwObj->AR.B.ID = messageId << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode)
{
    hwObj->FCR.B.MMC = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber)
{
    hwObj->IPR.B.MPN = messageNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.OVIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority)
{
    hwObj->AR.B.PRI = priority;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.RXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.RXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.RMM = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.SEL = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.SDT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.STT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.TOP = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, unsigned char enabled)
{
    hwObj->FCR.B.TXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.TXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 1U;
}


static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node)
{
    return &(mcan->N[node]);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode)
{
    hwNode->CR.U = 0x00000041U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode)
{
    hwNode->ECNT.U = 0x00600000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode)
{
    hwNode->IPR.U = 0x00000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->CR.B.ALIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.ALINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, unsigned char mode)
{
    hwNode->CR.B.CALM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level)
{
    hwNode->ECNT.B.EWRNLVL = level;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->CR.B.INIT = 1;
    hwNode->CR.B.FDEN = enabled ? 1 : 0;
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->FCR.B.CFCIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.CFCINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode)
{
    hwNode->FCR.B.CFMOD = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->CR.B.LECIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.LECINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, unsigned char mode)
{
    hwNode->PCR.B.LBM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.REC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TEINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->TDCR.B.TDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value)
{
    hwNode->TDCR.B.TDCO = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, unsigned char enabled)
{
    hwNode->CR.B.TRIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TRINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.TEC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan)
{
    mcan->MCR.B.MPSEL = 0x0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list)
{
    mcan->MSPND[list].U = 0x0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 0U;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan)
{
    return mcan->FDR.B.DM;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan)
{
    return mcan->FDR.B.STEP;
}


static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan)
{
    return (IfxMultican_ClockSelect)mcan->MCR.B.CLKSEL;
}


static inline __attribute__ ((always_inline)) unsigned char IfxMultican_isModuleEnabled(Ifx_CAN *mcan)
{
    return mcan->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode)
{
    mcan->FDR.B.DM = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue)
{
    mcan->FDR.B.STEP = stepValue;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect)
{
    mcan->MCR.B.CLKSEL = clockSelect;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask)
{
    mcan->MSIMASK.U = mask;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    can->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan)
{
    while (mcan->PANCTR.B.BUSY != 0)
    {}
}
# 752 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 1
# 754 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h" 2
# 763 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
typedef struct
{
    uint32 nominalBaudrate;
    uint16 nominalSynchJumpWidth;
    uint16 nominalSamplePoint;
    uint32 fastBaudrate;
    uint16 fastSynchJumpWidth;
    uint16 fastSamplePoint;
    uint16 loopDelayOffset;
} IfxMultican_Can_FdConfig;



typedef struct
{
    uint32 copyDataLengthCode : 1;
    uint32 copyData : 1;
    uint32 copyId : 1;
    uint32 enableTransmit : 1;
    IfxMultican_MsgObjId gatewayDstObjId;
} IfxMultican_Can_GatewayConfig;



typedef struct
{
    uint16 priority;
    IfxSrc_Tos typeOfService;
} IfxMultican_Can_InterruptConfig;



typedef struct
{
    unsigned char enabled;
    IfxMultican_SrcId srcId;
} IfxMultican_Can_InterruptSource;



typedef struct
{
    uint32 singleDataTransfer : 1;
    uint32 singleTransmitTrial : 1;
    IfxMultican_DataLengthCode messageLen;
    uint32 extendedFrame : 1;
    uint32 matchingId : 1;
    IfxMultican_MsgObjId topMsgObjId;
    IfxMultican_MsgObjId bottomMsgObjId;
    uint32 fastBitRate : 1;
} IfxMultican_Can_MsgObjControl;



typedef struct
{
    Ifx_CAN *mcan;
    Ifx_CAN_N *node;
    IfxMultican_NodeId nodeId;
    unsigned char fastNode;
} IfxMultican_Can_Node;







typedef struct
{
    Ifx_CAN *mcan;
} IfxMultican_Can;



typedef struct
{
    Ifx_CAN *module;
    IfxMultican_ClockSelect clockSelect;
    float32 moduleFreq;
    IfxMultican_Can_InterruptConfig nodePointer[(16)];
} IfxMultican_Can_Config;



typedef struct
{
    IfxMultican_Can_Node *node;
    IfxMultican_MsgObjId msgObjId;
    uint16 msgObjCount;
    IfxMultican_MsgObjId fifoPointer;
} IfxMultican_Can_MsgObj;



typedef struct
{
    IfxMultican_Can_Node *node;
    IfxMultican_MsgObjId msgObjId;
    uint16 msgObjCount;
    IfxMultican_Can_MsgObjControl control;
    IfxMultican_Frame frame;
    uint32 acceptanceMask;
    uint32 messageId;
    IfxMultican_Priority priority;
    IfxMultican_Can_InterruptSource rxInterrupt;
    IfxMultican_Can_InterruptSource txInterrupt;
    uint32 gatewayTransfers : 1;
    IfxMultican_Can_GatewayConfig gatewayConfig;
    IfxMultican_MsgObjId firstSlaveObjId;
} IfxMultican_Can_MsgObjConfig;



typedef struct
{
    Ifx_CAN *module;
    IfxMultican_NodeId nodeId;
    unsigned char analyzerMode;
    unsigned char loopBackMode;
    uint32 baudrate;
    uint16 samplePoint;
    uint16 synchJumpWidth;
    unsigned char flexibleDataRate;
    IfxMultican_Can_FdConfig fdConfig;
    IfxMultican_Rxd_In *rxPin;
    IfxPort_InputMode rxPinMode;
    IfxMultican_Txd_Out *txPin;
    IfxPort_OutputMode txPinMode;
    uint8 errorWarningLevel;
    IfxMultican_Can_InterruptSource transferInterrupt;
    IfxMultican_Can_InterruptSource lastErrorCodeInterrupt;
    IfxMultican_Can_InterruptSource alertInterrupt;
    IfxMultican_Can_InterruptSource frameCounterInterrupt;
    IfxMultican_Can_InterruptSource timerInterrupt;
} IfxMultican_Can_NodeConfig;
# 914 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_deinit(IfxMultican_Can *mcan);
# 925 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_getConfig(IfxMultican_Can *mcan, IfxMultican_Can_Config *config);





extern float32 IfxMultican_Can_getModuleFrequency(IfxMultican_Can *mcan);
# 946 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_initModule(IfxMultican_Can *mcan, const IfxMultican_Can_Config *config);
# 956 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_initModuleConfig(IfxMultican_Can_Config *config, Ifx_CAN *mcan);
# 971 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_activate(IfxMultican_Can_Node *node);





static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deactivate(IfxMultican_Can_Node *node);





static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deinit(IfxMultican_Can_Node *node);
# 997 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_Node_recoverBusOff(IfxMultican_Can_Node *node);
# 1008 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_getConfig(IfxMultican_Can_Node *node, IfxMultican_Can_NodeConfig *config);
# 1018 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_Node_init(IfxMultican_Can_Node *node, IfxMultican_Can_NodeConfig *config);
# 1028 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_initConfig(IfxMultican_Can_NodeConfig *config, IfxMultican_Can *mcan);
# 1037 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_sendToBusOff(IfxMultican_Can_Node *node);
# 1053 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) unsigned char IfxMultican_Can_MsgObj_cancelSend(IfxMultican_Can_MsgObj *msgObj);
# 1062 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearRxPending(IfxMultican_Can_MsgObj *msgObj);
# 1071 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearTxPending(IfxMultican_Can_MsgObj *msgObj);






static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_deinit(IfxMultican_Can_MsgObj *msgObj);






static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_Can_MsgObj_getPendingId(IfxMultican_Can_MsgObj *msgObj, IfxMultican_MsgObjGroup msgObjGroup);
# 1094 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_MsgObjStat IfxMultican_Can_MsgObj_getStatus(IfxMultican_Can_MsgObj *msgObj);
# 1108 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_readLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data);
# 1120 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_sendLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data);
# 1131 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_MsgObj_getConfig(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Can_MsgObjConfig *config);
# 1141 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_init(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Can_MsgObjConfig *config);
# 1151 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_MsgObj_initConfig(IfxMultican_Can_MsgObjConfig *config, IfxMultican_Can_Node *node);





extern unsigned char IfxMultican_Can_MsgObj_isRxPending(IfxMultican_Can_MsgObj *msgObj);





extern unsigned char IfxMultican_Can_MsgObj_isTxPending(IfxMultican_Can_MsgObj *msgObj);
# 1176 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_readMessage(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg);
# 1187 "./0_Src/4_McHal/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_sendMessage(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Message *msg);







static inline __attribute__ ((always_inline)) unsigned char IfxMultican_Can_MsgObj_cancelSend(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    return IfxMultican_MsgObj_cancelSend(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearRxPending(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    IfxMultican_MsgObj_clearRxPending(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearTxPending(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    IfxMultican_MsgObj_clearTxPending(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_deinit(IfxMultican_Can_MsgObj *msgObj)
{
    IfxMultican_MsgObj_deinit(msgObj->node->mcan, msgObj->msgObjId);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_Can_MsgObj_getPendingId(IfxMultican_Can_MsgObj *msgObj, IfxMultican_MsgObjGroup msgObjGroup)
{
    return IfxMultican_MsgObj_getPendingId(msgObj->node->mcan, msgObjGroup);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjStat IfxMultican_Can_MsgObj_getStatus(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    return IfxMultican_MsgObj_getStatus(hwObj);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_readLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data)
{
    return IfxMultican_MsgObj_readLongFrame(msgObj->node->mcan, msgObj->msgObjId, msg, data);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_sendLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data)
{
    return IfxMultican_MsgObj_sendLongFrame(msgObj->node->mcan, msgObj->msgObjId, msg, data);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_activate(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    IfxMultican_Node_activate(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deactivate(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);
    IfxMultican_Node_deactivate(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deinit(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    IfxMultican_Node_deinit(hwNode);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_Node_recoverBusOff(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    return IfxMultican_Node_recoverBusOff(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_deinit(IfxMultican_Can *mcan)
{
    IfxMultican_deinit(mcan->mcan);
}
# 16 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.h" 2
# 24 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_CAN.h"
typedef struct
{
    struct
    {
        IfxMultican_Can can;
        IfxMultican_Can_Node canSrcNode;
        IfxMultican_Can_Node canDstNode;
        IfxMultican_Can_MsgObj canDstMsgObj;
        IfxMultican_Can_MsgObj canSrcMsgObj;
    }drivers;
} pMultiCAN;

typedef struct
{
    struct
    {
        IfxMultican_Can can;
        IfxMultican_Can_Node canNode[4];
        IfxMultican_Can_MsgObj canMsgObj[16];
    } drivers;

    uint32 txData[16];
    uint32 rxData[16];
} App_MulticanFd;



extern pMultiCAN pCAN[4];
extern App_MulticanFd pMultican;

extern void Set_CAN_Module(void);
extern void Set_CAN_Enable(uint8 num_ch, uint8 FD);
extern void Set_CAN_BitRate(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate);
extern void Set_CAN_BitTiming( uint8 num_ch,
         uint32 nom_SJW, uint32 nom_SP,
         uint32 fast_SJW, uint32 fast_SP,
         uint8 _LDO);
extern void Set_CAN_msgObject( uint8 num_msgObj, uint8 num_ch, uint32 ID,
         uint8 size_frame, uint8 FD_on);
extern void Set_CAN_MessageObject(void);
extern void Set_CAN_MsgObj_0(Ifx_CAN*);
extern void Set_CAN_MsgObj_1(Ifx_CAN*);
extern void IO_Send_Duplicate_CAN(uint8 number_MsgObj, uint8 *data, uint8 size);
extern void IO_Send_CAN(uint8 number_MsgObj, uint8 *buffer, uint8 size);
extern void printf_CAN(uint8 number_MsgObj, uint8 *fmt, ...);
extern void Set_CAN_Rx( uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
       uint8 Frame_extend, uint8 FD_on, void *isrFuncPointer, uint16 priority, uint8 num_core);
extern uint32 Get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);
extern void Isr_MsgObj0_TX_IntHandler(void);
extern void Isr_MsgObj1_RX_IntHandler(void);
# 39 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h" 2

typedef struct
{
    float32 sysFreq;
    float32 cpuFreq;
    float32 pllFreq;
    float32 stmFreq;
} AppInfo;



__inline void delay_tic(unsigned int tic);
__inline void delay_ms(unsigned int tic_ms);
__inline void delay1_ms(unsigned int tic_ms);
__inline void delay2_ms(unsigned int tic_ms);
# 16 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 2

# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Library/Lib_Ascii.h" 1
# 13 "./0_Src/0_AppSw/Tricore/Device_Driver/Library/Lib_Ascii.h"
void GetASCIICode(unsigned char* pBuffer,unsigned char ASCII);
# 18 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h" 2
# 57 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_LCD.h"
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



void IO_LCD_GUI_DrawCross(unsigned int Xpos, unsigned int Ypos);
void IO_LCD_Initialize_2(void);
# 20 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h" 1
# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_QSPI.h" 1
# 16 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_QSPI.h"
# 1 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 1
# 310 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
# 1 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 1
# 431 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxDma_cfg.h" 1
# 83 "./0_Src/4_McHal/Tricore/_Impl/IfxDma_cfg.h"
typedef enum
{
    IfxDma_ChannelId_none = -1,
    IfxDma_ChannelId_0 = 0,
    IfxDma_ChannelId_1,
    IfxDma_ChannelId_2,
    IfxDma_ChannelId_3,
    IfxDma_ChannelId_4,
    IfxDma_ChannelId_5,
    IfxDma_ChannelId_6,
    IfxDma_ChannelId_7,
    IfxDma_ChannelId_8,
    IfxDma_ChannelId_9,
    IfxDma_ChannelId_10,
    IfxDma_ChannelId_11,
    IfxDma_ChannelId_12,
    IfxDma_ChannelId_13,
    IfxDma_ChannelId_14,
    IfxDma_ChannelId_15,
    IfxDma_ChannelId_16,
    IfxDma_ChannelId_17,
    IfxDma_ChannelId_18,
    IfxDma_ChannelId_19,
    IfxDma_ChannelId_20,
    IfxDma_ChannelId_21,
    IfxDma_ChannelId_22,
    IfxDma_ChannelId_23,
    IfxDma_ChannelId_24,
    IfxDma_ChannelId_25,
    IfxDma_ChannelId_26,
    IfxDma_ChannelId_27,
    IfxDma_ChannelId_28,
    IfxDma_ChannelId_29,
    IfxDma_ChannelId_30,
    IfxDma_ChannelId_31,
    IfxDma_ChannelId_32,
    IfxDma_ChannelId_33,
    IfxDma_ChannelId_34,
    IfxDma_ChannelId_35,
    IfxDma_ChannelId_36,
    IfxDma_ChannelId_37,
    IfxDma_ChannelId_38,
    IfxDma_ChannelId_39,
    IfxDma_ChannelId_40,
    IfxDma_ChannelId_41,
    IfxDma_ChannelId_42,
    IfxDma_ChannelId_43,
    IfxDma_ChannelId_44,
    IfxDma_ChannelId_45,
    IfxDma_ChannelId_46,
    IfxDma_ChannelId_47,
    IfxDma_ChannelId_48,
    IfxDma_ChannelId_49,
    IfxDma_ChannelId_50,
    IfxDma_ChannelId_51,
    IfxDma_ChannelId_52,
    IfxDma_ChannelId_53,
    IfxDma_ChannelId_54,
    IfxDma_ChannelId_55,
    IfxDma_ChannelId_56,
    IfxDma_ChannelId_57,
    IfxDma_ChannelId_58,
    IfxDma_ChannelId_59,
    IfxDma_ChannelId_60,
    IfxDma_ChannelId_61,
    IfxDma_ChannelId_62,
    IfxDma_ChannelId_63
} IfxDma_ChannelId;
# 432 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 1 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 1
# 50 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_bf.h" 1
# 51 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef struct _Ifx_DMA_ACCEN00_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN00_Bits;


typedef struct _Ifx_DMA_ACCEN01_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN01_Bits;


typedef struct _Ifx_DMA_ACCEN10_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN10_Bits;


typedef struct _Ifx_DMA_ACCEN11_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN11_Bits;


typedef struct _Ifx_DMA_ACCEN20_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN20_Bits;


typedef struct _Ifx_DMA_ACCEN21_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN21_Bits;


typedef struct _Ifx_DMA_ACCEN30_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN30_Bits;


typedef struct _Ifx_DMA_ACCEN31_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN31_Bits;


typedef struct _Ifx_DMA_BLK_CLRE_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int CSER : 1;
    unsigned int CDER : 1;
    unsigned int reserved_18 : 2;
    unsigned int CSPBER : 1;
    unsigned int CSRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int CRAMER : 1;
    unsigned int CSLLER : 1;
    unsigned int CDLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_CLRE_Bits;


typedef struct _Ifx_DMA_BLK_EER_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int ESER : 1;
    unsigned int EDER : 1;
    unsigned int reserved_18 : 6;
    unsigned int ERER : 1;
    unsigned int reserved_25 : 1;
    unsigned int ELER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_EER_Bits;


typedef struct _Ifx_DMA_BLK_ERRSR_Bits
{
    unsigned int LEC : 7;
    unsigned int reserved_7 : 9;
    unsigned int SER : 1;
    unsigned int DER : 1;
    unsigned int reserved_18 : 2;
    unsigned int SPBER : 1;
    unsigned int SRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int RAMER : 1;
    unsigned int SLLER : 1;
    unsigned int DLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_ERRSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_BLK_ME_ADICR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHCR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_BLK_ME_CHCR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int reserved_24 : 8;
} Ifx_DMA_BLK_ME_CHSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_BLK_ME_DADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_R0_Bits
{
    unsigned int RD00 : 8;
    unsigned int RD01 : 8;
    unsigned int RD02 : 8;
    unsigned int RD03 : 8;
} Ifx_DMA_BLK_ME_R0_Bits;


typedef struct _Ifx_DMA_BLK_ME_R1_Bits
{
    unsigned int RD10 : 8;
    unsigned int RD11 : 8;
    unsigned int RD12 : 8;
    unsigned int RD13 : 8;
} Ifx_DMA_BLK_ME_R1_Bits;


typedef struct _Ifx_DMA_BLK_ME_R2_Bits
{
    unsigned int RD20 : 8;
    unsigned int RD21 : 8;
    unsigned int RD22 : 8;
    unsigned int RD23 : 8;
} Ifx_DMA_BLK_ME_R2_Bits;


typedef struct _Ifx_DMA_BLK_ME_R3_Bits
{
    unsigned int RD30 : 8;
    unsigned int RD31 : 8;
    unsigned int RD32 : 8;
    unsigned int RD33 : 8;
} Ifx_DMA_BLK_ME_R3_Bits;


typedef struct _Ifx_DMA_BLK_ME_R4_Bits
{
    unsigned int RD40 : 8;
    unsigned int RD41 : 8;
    unsigned int RD42 : 8;
    unsigned int RD43 : 8;
} Ifx_DMA_BLK_ME_R4_Bits;


typedef struct _Ifx_DMA_BLK_ME_R5_Bits
{
    unsigned int RD50 : 8;
    unsigned int RD51 : 8;
    unsigned int RD52 : 8;
    unsigned int RD53 : 8;
} Ifx_DMA_BLK_ME_R5_Bits;


typedef struct _Ifx_DMA_BLK_ME_R6_Bits
{
    unsigned int RD60 : 8;
    unsigned int RD61 : 8;
    unsigned int RD62 : 8;
    unsigned int RD63 : 8;
} Ifx_DMA_BLK_ME_R6_Bits;


typedef struct _Ifx_DMA_BLK_ME_R7_Bits
{
    unsigned int RD70 : 8;
    unsigned int RD71 : 8;
    unsigned int RD72 : 8;
    unsigned int RD73 : 8;
} Ifx_DMA_BLK_ME_R7_Bits;


typedef struct _Ifx_DMA_BLK_ME_RDCRC_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_BLK_ME_RDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_BLK_ME_SADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SDCRC_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_BLK_ME_SDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_BLK_ME_SHADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SR_Bits
{
    unsigned int RS : 1;
    unsigned int reserved_1 : 3;
    unsigned int WS : 1;
    unsigned int reserved_5 : 11;
    unsigned int CH : 7;
    unsigned int reserved_23 : 9;
} Ifx_DMA_BLK_ME_SR_Bits;


typedef struct _Ifx_DMA_CH_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_CH_ADICR_Bits;


typedef struct _Ifx_DMA_CH_CHCFGR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_CH_CHCFGR_Bits;


typedef struct _Ifx_DMA_CH_CHCSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int SWB : 1;
    unsigned int CWRP : 1;
    unsigned int CICH : 1;
    unsigned int SIT : 1;
    unsigned int reserved_28 : 3;
    unsigned int SCH : 1;
} Ifx_DMA_CH_CHCSR_Bits;


typedef struct _Ifx_DMA_CH_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_CH_DADR_Bits;


typedef struct _Ifx_DMA_CH_RDCRCR_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_CH_RDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_CH_SADR_Bits;


typedef struct _Ifx_DMA_CH_SDCRCR_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_CH_SDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_CH_SHADR_Bits;


typedef struct _Ifx_DMA_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_DMA_CLC_Bits;


typedef struct _Ifx_DMA_ERRINTR_Bits
{
    unsigned int SIT : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_ERRINTR_Bits;


typedef struct _Ifx_DMA_HRR_Bits
{
    unsigned int HRP : 2;
    unsigned int reserved_2 : 30;
} Ifx_DMA_HRR_Bits;


typedef struct _Ifx_DMA_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_DMA_ID_Bits;


typedef struct _Ifx_DMA_MEMCON_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int INTERR : 1;
    unsigned int reserved_3 : 1;
    unsigned int RMWERR : 1;
    unsigned int reserved_5 : 1;
    unsigned int DATAERR : 1;
    unsigned int reserved_7 : 1;
    unsigned int PMIC : 1;
    unsigned int ERRDIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_DMA_MEMCON_Bits;


typedef struct _Ifx_DMA_MODE_Bits
{
    unsigned int MODE : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_MODE_Bits;


typedef struct _Ifx_DMA_OTSS_Bits
{
    unsigned int TGS : 4;
    unsigned int reserved_4 : 3;
    unsigned int BS : 1;
    unsigned int reserved_8 : 24;
} Ifx_DMA_OTSS_Bits;


typedef struct _Ifx_DMA_PRR0_Bits
{
    unsigned int PAT00 : 8;
    unsigned int PAT01 : 8;
    unsigned int PAT02 : 8;
    unsigned int PAT03 : 8;
} Ifx_DMA_PRR0_Bits;


typedef struct _Ifx_DMA_PRR1_Bits
{
    unsigned int PAT10 : 8;
    unsigned int PAT11 : 8;
    unsigned int PAT12 : 8;
    unsigned int PAT13 : 8;
} Ifx_DMA_PRR1_Bits;


typedef struct _Ifx_DMA_SUSACR_Bits
{
    unsigned int SUSAC : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSACR_Bits;


typedef struct _Ifx_DMA_SUSENR_Bits
{
    unsigned int SUSEN : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSENR_Bits;


typedef struct _Ifx_DMA_TIME_Bits
{
    unsigned int COUNT : 32;
} Ifx_DMA_TIME_Bits;


typedef struct _Ifx_DMA_TSR_Bits
{
    unsigned int RST : 1;
    unsigned int HTRE : 1;
    unsigned int TRL : 1;
    unsigned int CH : 1;
    unsigned int reserved_4 : 4;
    unsigned int HLTREQ : 1;
    unsigned int HLTACK : 1;
    unsigned int reserved_10 : 6;
    unsigned int ECH : 1;
    unsigned int DCH : 1;
    unsigned int CTL : 1;
    unsigned int reserved_19 : 5;
    unsigned int HLTCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_DMA_TSR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN00_Bits B;
} Ifx_DMA_ACCEN00;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN01_Bits B;
} Ifx_DMA_ACCEN01;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN10_Bits B;
} Ifx_DMA_ACCEN10;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN11_Bits B;
} Ifx_DMA_ACCEN11;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN20_Bits B;
} Ifx_DMA_ACCEN20;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN21_Bits B;
} Ifx_DMA_ACCEN21;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN30_Bits B;
} Ifx_DMA_ACCEN30;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN31_Bits B;
} Ifx_DMA_ACCEN31;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_CLRE_Bits B;
} Ifx_DMA_BLK_CLRE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_EER_Bits B;
} Ifx_DMA_BLK_EER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ERRSR_Bits B;
} Ifx_DMA_BLK_ERRSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_ADICR_Bits B;
} Ifx_DMA_BLK_ME_ADICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_CHCR_Bits B;
} Ifx_DMA_BLK_ME_CHCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_CHSR_Bits B;
} Ifx_DMA_BLK_ME_CHSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_DADR_Bits B;
} Ifx_DMA_BLK_ME_DADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R0_Bits B;
} Ifx_DMA_BLK_ME_R0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R1_Bits B;
} Ifx_DMA_BLK_ME_R1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R2_Bits B;
} Ifx_DMA_BLK_ME_R2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R3_Bits B;
} Ifx_DMA_BLK_ME_R3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R4_Bits B;
} Ifx_DMA_BLK_ME_R4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R5_Bits B;
} Ifx_DMA_BLK_ME_R5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R6_Bits B;
} Ifx_DMA_BLK_ME_R6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R7_Bits B;
} Ifx_DMA_BLK_ME_R7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_RDCRC_Bits B;
} Ifx_DMA_BLK_ME_RDCRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SADR_Bits B;
} Ifx_DMA_BLK_ME_SADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SDCRC_Bits B;
} Ifx_DMA_BLK_ME_SDCRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SHADR_Bits B;
} Ifx_DMA_BLK_ME_SHADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SR_Bits B;
} Ifx_DMA_BLK_ME_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_ADICR_Bits B;
} Ifx_DMA_CH_ADICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_CHCFGR_Bits B;
} Ifx_DMA_CH_CHCFGR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_CHCSR_Bits B;
} Ifx_DMA_CH_CHCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_DADR_Bits B;
} Ifx_DMA_CH_DADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_RDCRCR_Bits B;
} Ifx_DMA_CH_RDCRCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SADR_Bits B;
} Ifx_DMA_CH_SADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SDCRCR_Bits B;
} Ifx_DMA_CH_SDCRCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SHADR_Bits B;
} Ifx_DMA_CH_SHADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CLC_Bits B;
} Ifx_DMA_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ERRINTR_Bits B;
} Ifx_DMA_ERRINTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_HRR_Bits B;
} Ifx_DMA_HRR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ID_Bits B;
} Ifx_DMA_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_MEMCON_Bits B;
} Ifx_DMA_MEMCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_MODE_Bits B;
} Ifx_DMA_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_OTSS_Bits B;
} Ifx_DMA_OTSS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_PRR0_Bits B;
} Ifx_DMA_PRR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_PRR1_Bits B;
} Ifx_DMA_PRR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_SUSACR_Bits B;
} Ifx_DMA_SUSACR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_SUSENR_Bits B;
} Ifx_DMA_SUSENR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_TIME_Bits B;
} Ifx_DMA_TIME;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_TSR_Bits B;
} Ifx_DMA_TSR;
# 1187 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK_ME
{
    Ifx_DMA_BLK_ME_SR SR;
    unsigned char reserved_4[12];
    Ifx_DMA_BLK_ME_R0 R0;
    Ifx_DMA_BLK_ME_R1 R1;
    Ifx_DMA_BLK_ME_R2 R2;
    Ifx_DMA_BLK_ME_R3 R3;
    Ifx_DMA_BLK_ME_R4 R4;
    Ifx_DMA_BLK_ME_R5 R5;
    Ifx_DMA_BLK_ME_R6 R6;
    Ifx_DMA_BLK_ME_R7 R7;
    unsigned char reserved_30[32];
    Ifx_DMA_BLK_ME_RDCRC RDCRC;
    Ifx_DMA_BLK_ME_SDCRC SDCRC;
    Ifx_DMA_BLK_ME_SADR SADR;
    Ifx_DMA_BLK_ME_DADR DADR;
    Ifx_DMA_BLK_ME_ADICR ADICR;
    Ifx_DMA_BLK_ME_CHCR CHCR;
    Ifx_DMA_BLK_ME_SHADR SHADR;
    Ifx_DMA_BLK_ME_CHSR CHSR;
} Ifx_DMA_BLK_ME;
# 1221 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK
{
    Ifx_DMA_BLK_EER EER;
    Ifx_DMA_BLK_ERRSR ERRSR;
    Ifx_DMA_BLK_CLRE CLRE;
    unsigned char reserved_C[4];
    Ifx_DMA_BLK_ME ME;
} Ifx_DMA_BLK;


typedef volatile struct _Ifx_DMA_CH
{
    Ifx_DMA_CH_RDCRCR RDCRCR;
    Ifx_DMA_CH_SDCRCR SDCRCR;
    Ifx_DMA_CH_SADR SADR;
    Ifx_DMA_CH_DADR DADR;
    Ifx_DMA_CH_ADICR ADICR;
    Ifx_DMA_CH_CHCFGR CHCFGR;
    Ifx_DMA_CH_SHADR SHADR;
    Ifx_DMA_CH_CHCSR CHCSR;
} Ifx_DMA_CH;
# 1254 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA
{
    Ifx_DMA_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_DMA_ID ID;
    unsigned char reserved_C[20];
    Ifx_DMA_MEMCON MEMCON;
    unsigned char reserved_24[28];
    Ifx_DMA_ACCEN00 ACCEN00;
    Ifx_DMA_ACCEN01 ACCEN01;
    Ifx_DMA_ACCEN10 ACCEN10;
    Ifx_DMA_ACCEN11 ACCEN11;
    Ifx_DMA_ACCEN20 ACCEN20;
    Ifx_DMA_ACCEN21 ACCEN21;
    Ifx_DMA_ACCEN30 ACCEN30;
    Ifx_DMA_ACCEN31 ACCEN31;
    unsigned char reserved_60[192];
    Ifx_DMA_BLK BLK0;
    unsigned char reserved_1A0[3968];
    Ifx_DMA_BLK BLK1;
    unsigned char reserved_11A0[96];
    Ifx_DMA_OTSS OTSS;
    Ifx_DMA_ERRINTR ERRINTR;
    Ifx_DMA_PRR0 PRR0;
    Ifx_DMA_PRR1 PRR1;
    Ifx_DMA_TIME TIME;
    unsigned char reserved_1214[236];
    Ifx_DMA_MODE MODE[4];
    unsigned char reserved_1310[1264];
    Ifx_DMA_HRR HRR[64];
    unsigned char reserved_1900[256];
    Ifx_DMA_SUSENR SUSENR[64];
    unsigned char reserved_1B00[256];
    Ifx_DMA_SUSACR SUSACR[64];
    unsigned char reserved_1D00[256];
    Ifx_DMA_TSR TSR[64];
    unsigned char reserved_1F00[256];
    Ifx_DMA_CH CH[64];
    unsigned char reserved_2800[6144];
} Ifx_DMA;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h" 2
# 53 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 2
# 66 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
typedef enum
{
    IfxDma_BusMasterMode_user = 0,
    IfxDma_BusMasterMode_supervisor = 1
} IfxDma_BusMasterMode;



typedef enum
{
    IfxDma_ChannelBusPriority_low = 0,
    IfxDma_ChannelBusPriority_medium = 1,
    IfxDma_ChannelBusPriority_high = 2
} IfxDma_ChannelBusPriority;




typedef enum
{
    IfxDma_ChannelIncrementCircular_none = 0,
    IfxDma_ChannelIncrementCircular_2 = 1,
    IfxDma_ChannelIncrementCircular_4 = 2,
    IfxDma_ChannelIncrementCircular_8 = 3,
    IfxDma_ChannelIncrementCircular_16 = 4,
    IfxDma_ChannelIncrementCircular_32 = 5,
    IfxDma_ChannelIncrementCircular_64 = 6,
    IfxDma_ChannelIncrementCircular_128 = 7,
    IfxDma_ChannelIncrementCircular_256 = 8,
    IfxDma_ChannelIncrementCircular_512 = 9,
    IfxDma_ChannelIncrementCircular_1024 = 10,
    IfxDma_ChannelIncrementCircular_2048 = 11,
    IfxDma_ChannelIncrementCircular_4096 = 12,
    IfxDma_ChannelIncrementCircular_8192 = 13,
    IfxDma_ChannelIncrementCircular_16384 = 14,
    IfxDma_ChannelIncrementCircular_32768 = 15
} IfxDma_ChannelIncrementCircular;




typedef enum
{
    IfxDma_ChannelIncrementDirection_negative = 0,
    IfxDma_ChannelIncrementDirection_positive = 1
} IfxDma_ChannelIncrementDirection;




typedef enum
{
    IfxDma_ChannelIncrementStep_1 = 0,
    IfxDma_ChannelIncrementStep_2 = 1,
    IfxDma_ChannelIncrementStep_4 = 2,
    IfxDma_ChannelIncrementStep_8 = 3,
    IfxDma_ChannelIncrementStep_16 = 4,
    IfxDma_ChannelIncrementStep_32 = 5,
    IfxDma_ChannelIncrementStep_64 = 6,
    IfxDma_ChannelIncrementStep_128 = 7
} IfxDma_ChannelIncrementStep;




typedef enum
{
    IfxDma_ChannelInterruptControl_thresholdLimitMatch = 0,
    IfxDma_ChannelInterruptControl_transferCountDecremented = 1
} IfxDma_ChannelInterruptControl;




typedef enum
{
    IfxDma_ChannelMove_1 = 0,
    IfxDma_ChannelMove_2 = 1,
    IfxDma_ChannelMove_4 = 2,
    IfxDma_ChannelMove_8 = 3,
    IfxDma_ChannelMove_16 = 4,
    IfxDma_ChannelMove_3 = 5,
    IfxDma_ChannelMove_5 = 6,
    IfxDma_ChannelMove_9 = 7
} IfxDma_ChannelMove;




typedef enum
{
    IfxDma_ChannelMoveSize_8bit = 0,
    IfxDma_ChannelMoveSize_16bit = 1,
    IfxDma_ChannelMoveSize_32bit = 2,
    IfxDma_ChannelMoveSize_64bit = 3,
    IfxDma_ChannelMoveSize_128bit = 4,
    IfxDma_ChannelMoveSize_256bit = 5
} IfxDma_ChannelMoveSize;




typedef enum
{
    IfxDma_ChannelOperationMode_single = 0,
    IfxDma_ChannelOperationMode_continuous = 1
} IfxDma_ChannelOperationMode;




typedef enum
{
    IfxDma_ChannelPattern_0_disable = 0,
    IfxDma_ChannelPattern_0_mode1 = 1,
    IfxDma_ChannelPattern_0_mode2 = 2,
    IfxDma_ChannelPattern_0_mode3 = 3,
    IfxDma_ChannelPattern_1_disable = 4,
    IfxDma_ChannelPattern_1_mode1 = 5,
    IfxDma_ChannelPattern_1_mode2 = 6,
    IfxDma_ChannelPattern_1_mode3 = 7
} IfxDma_ChannelPattern;



typedef enum
{
    IfxDma_ChannelPriority_low = 0,
    IfxDma_ChannelPriority_medium = 1,
    IfxDma_ChannelPriority_high = 2
} IfxDma_ChannelPriority;




typedef enum
{
    IfxDma_ChannelRequestMode_oneTransferPerRequest = 0,
    IfxDma_ChannelRequestMode_completeTransactionPerRequest = 1
} IfxDma_ChannelRequestMode;




typedef enum
{
    IfxDma_ChannelRequestSource_peripheral = 0,
    IfxDma_ChannelRequestSource_daisyChain = 1
} IfxDma_ChannelRequestSource;




typedef enum
{
    IfxDma_ChannelShadow_none = 0,
    IfxDma_ChannelShadow_src = 1,
    IfxDma_ChannelShadow_dst = 2,
    IfxDma_ChannelShadow_srcDirectWrite = 5,
    IfxDma_ChannelShadow_dstDirectWrite = 6,
    IfxDma_ChannelShadow_doubleSourceBufferingSwSwitch = 8,
    IfxDma_ChannelShadow_doubleSourceBufferingHwSwSwitch = 9,
    IfxDma_ChannelShadow_doubleDestinationBufferingSwSwitch = 10,
    IfxDma_ChannelShadow_doubleDestinationBufferingHwSwSwitch = 11,
    IfxDma_ChannelShadow_linkedList = 12,
    IfxDma_ChannelShadow_accumulatedLinkedList = 13,
    IfxDma_ChannelShadow_safeLinkedList = 14,
    IfxDma_ChannelShadow_conditionalLinkedList = 15
} IfxDma_ChannelShadow;

typedef enum
{
    IfxDma_HardwareResourcePartition_0 = 0,
    IfxDma_HardwareResourcePartition_1,
    IfxDma_HardwareResourcePartition_2,
    IfxDma_HardwareResourcePartition_3
} IfxDma_HardwareResourcePartition;



typedef enum
{
    IfxDma_MoveEngine_0 = 0,
    IfxDma_MoveEngine_1 = 1
} IfxDma_MoveEngine;




typedef enum
{
    IfxDma_SleepMode_enable = 0,
    IfxDma_SleepMode_disable = 1
} IfxDma_SleepMode;
# 287 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 300 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 322 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 332 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 345 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 386 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 399 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 415 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);





static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range);
# 432 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 448 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode);
# 465 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 495 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask);
# 505 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 519 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 529 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 543 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 585 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 607 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 619 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 640 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 651 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma);
# 662 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode);
# 673 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 684 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address);
# 697 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);
# 708 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize);
# 723 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow);
# 734 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 745 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 756 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 781 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address);
# 799 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);
# 837 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount);
# 850 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 863 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 885 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 898 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 911 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 934 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 950 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 962 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 975 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 994 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1006 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1018 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1036 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1053 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1070 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1087 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1098 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1114 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1126 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1139 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId);







static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.CICH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.CTL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.CLRE.U = mask;
    }
    else
    {
        dma->BLK0.CLRE.U = mask;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT &= ~(1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.DCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.EDER = 0;
    }
    else
    {
        dma->BLK0.EER.B.EDER = 0;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.ESER = 0;
    }
    else
    {
        dma->BLK0.EER.B.ESER = 0;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT |= (1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.ECH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.EDER = 1;
    }
    else
    {
        dma->BLK0.EER.B.EDER = 1;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.ESER = 1;
    }
    else
    {
        dma->BLK0.EER.B.ESER = 1;
    }
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.ICH != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.IPM != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.WRPD != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.WRPS != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].DADR.U;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HLTACK != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.ICH;

    return result;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.LXO != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].SADR.U;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.TRL != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.TCOUNT;
}


static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range)
{
    return (IfxDma_ChannelIncrementCircular)(31 - __builtin_clz((uint32)range));
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    unsigned char result;

    result = dma->CH[channelId].CHCSR.B.FROZEN != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.FROZEN = 0;
    }

    return result;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.BUFFER != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        return dma->BLK1.ERRSR.U;
    }
    else
    {
        return dma->BLK0.ERRSR.U;
    }
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{

    return &((*(Ifx_SRC *)0xF0038000u)).DMA.DMA[0].CH[channelId];
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma)
{
    return dma->TIME.U;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.RST != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HTRE != 0;
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.CH != 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.U = 0U << (23);
}


static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode)
{
    dma->CH[channelId].CHCFGR.B.BLKM = blockMode;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address)
{
    dma->CH[channelId].DADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_CH_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.DMF = incStep;
    adicr.B.INCD = direction;
    adicr.B.CBLD = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTREQ = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize)
{
    dma->CH[channelId].CHCFGR.B.CHDW = moveSize;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow)
{
    dma->CH[channelId].ADICR.B.SHCT = shadow;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address)
{
    dma->CH[channelId].SADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_CH_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.SMF = incStep;
    adicr.B.INCS = direction;
    adicr.B.CBLS = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount)
{
    dma->CH[channelId].CHCFGR.B.TREL = transferCount;
}


static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    dma->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SWB = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT &= ~(3 << 2);
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT |= (1 << 2);
    dma->CH[channelId].ADICR.B.SHCT &= ~(1 << 3);
}
# 433 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 443 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma;







typedef struct
{
    Ifx_DMA *dma;
    IfxDma_ChannelId channelId;
    Ifx_DMA_CH *channel;
} IfxDma_Dma_Channel;



typedef struct
{
    IfxDma_Dma *module;
    IfxDma_ChannelId channelId;
    uint32 sourceAddress;
    uint32 destinationAddress;
    uint32 shadowAddress;
    uint32 readDataCrc;
    uint32 sourceDestinationAddressCrc;
    uint16 transferCount;
    IfxDma_ChannelMove blockMode;
    IfxDma_ChannelRequestMode requestMode;
    IfxDma_ChannelOperationMode operationMode;
    IfxDma_ChannelMoveSize moveSize;
    IfxDma_ChannelPattern pattern;
    IfxDma_ChannelRequestSource requestSource;
    IfxDma_ChannelBusPriority busPriority;
    unsigned char hardwareRequestEnabled;
    IfxDma_ChannelIncrementStep sourceAddressIncrementStep;
    IfxDma_ChannelIncrementDirection sourceAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular sourceAddressCircularRange;
    IfxDma_ChannelIncrementStep destinationAddressIncrementStep;
    IfxDma_ChannelIncrementDirection destinationAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular destinationAddressCircularRange;
    IfxDma_ChannelShadow shadowControl;
    unsigned char sourceCircularBufferEnabled;
    unsigned char destinationCircularBufferEnabled;
    unsigned char timestampEnabled;
    unsigned char wrapSourceInterruptEnabled;
    unsigned char wrapDestinationInterruptEnabled;
    unsigned char channelInterruptEnabled;
    IfxDma_ChannelInterruptControl channelInterruptControl;
    uint8 interruptRaiseThreshold;
    unsigned char transactionRequestLostInterruptEnabled;
    Ifx_Priority channelInterruptPriority;
    IfxSrc_Tos channelInterruptTypeOfService;
} IfxDma_Dma_ChannelConfig;



typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma_Config;
# 529 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_createModuleHandle(IfxDma_Dma *dmaHandle, Ifx_DMA *dma);





extern void IfxDma_Dma_deInitModule(IfxDma_Dma *dma);
# 545 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModule(IfxDma_Dma *dma, IfxDma_Dma_Config *config);
# 555 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModuleConfig(IfxDma_Dma_Config *config, Ifx_DMA *dma);
# 574 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannel(IfxDma_Dma_Channel *channel, IfxDma_Dma_ChannelConfig *config);
# 584 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannelConfig(IfxDma_Dma_ChannelConfig *config, IfxDma_Dma *dma);
# 599 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel);
# 613 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initLinkedListEntry(void *ptrToAddress, IfxDma_Dma_ChannelConfig *config);
# 628 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel);






static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel);
# 652 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel);
# 662 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 672 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 682 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount);
# 691 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    IfxDma_clearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getAndClearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getSrcPointer(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) unsigned char IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel)
{
    return IfxDma_isChannelTransactionPending(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelDestinationAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelSourceAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount)
{
    IfxDma_setChannelTransferCount(channel->dma, channel->channelId, transferCount);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel)
{
    channel->channel->CHCSR.U = 0;
    IfxDma_startChannelTransaction(channel->dma, channel->channelId);
}
# 311 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 2
# 1 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h" 1
# 43 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxQspi_cfg.h" 1
# 44 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h" 2

# 1 "./0_Src/1_SrvSw/If/SpiIf.h" 1
# 49 "./0_Src/1_SrvSw/If/SpiIf.h"
typedef enum
{
    SpiIf_Status_ok,
    SpiIf_Status_busy,
    SpiIf_Status_unknown
} SpiIf_Status;


typedef enum
{
    SpiIf_SlsoTiming_0 = 0,
    SpiIf_SlsoTiming_1,
    SpiIf_SlsoTiming_2,
    SpiIf_SlsoTiming_3,
    SpiIf_SlsoTiming_4,
    SpiIf_SlsoTiming_5,
    SpiIf_SlsoTiming_6,
    SpiIf_SlsoTiming_7
} SpiIf_SlsoTiming;


typedef enum
{
    SpiIf_DataHeading_lsbFirst = 0,
    SpiIf_DataHeading_msbFirst
} SpiIf_DataHeading;


typedef enum
{
    SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge = 0,
    SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge
} SpiIf_ShiftClock;


typedef enum
{
    SpiIf_ClockPolarity_idleLow = 0,
    SpiIf_ClockPolarity_idleHigh
} SpiIf_ClockPolarity;





typedef struct SpiIf_Ch_ SpiIf_Ch;
typedef struct SpiIf_ChConfig_ SpiIf_ChConfig;
typedef struct SpiIf_ SpiIf;

typedef volatile struct
{
    uint32 onTransfer : 1;
    uint32 byteAccess : 1;
} SpiIf_Flags;

typedef struct
{
    void *data;
    Ifx_SizeT remaining;
} SpiIf_Job;


typedef enum
{
    SpiIf_Mode_master,
    SpiIf_Mode_slave,
    SpiIf_Mode_undefined
} SpiIf_Mode;

typedef SpiIf_Status (*SpiIf_Exchange)(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData);
typedef SpiIf_Status (*SpiIf_GetStatus)(SpiIf_Ch *handle);
typedef void (*SpiIf_OnEvent)(SpiIf *handle);

typedef struct
{
    SpiIf_Exchange exchange;
    SpiIf_GetStatus getStatus;
    SpiIf_OnEvent onTx;
    SpiIf_OnEvent onRx;
    SpiIf_OnEvent onError;
} SpiIf_funcs;

struct SpiIf_
{
    pvoid driver;
    uint32 sending;
    SpiIf_Ch *activeChannel;
    uint32 txCount;
    uint32 rxCount;
    SpiIf_funcs functions;
};

typedef struct
{
    SpiIf_Mode mode;
    Ifx_Priority rxPriority;
    Ifx_Priority txPriority;
    Ifx_Priority erPriority;
    IfxSrc_Tos isrProvider;
    Ifx_SizeT bufferSize;
    void *buffer;




    float32 maximumBaudrate;
} SpiIf_Config;

typedef struct
{
    uint32 baudrate : 1;
    uint32 phase : 1;
    uint32 receive : 1;
    uint32 transmit : 1;
    uint32 reserved : 28;
} Spi_ErrorChecks;


typedef struct
{
    uint32 enabled : 1;
    uint32 autoCS : 1;
    uint32 loopback : 1;
    uint32 clockPolarity : 1;
    uint32 shiftClock : 1;
    uint32 dataHeading : 1;
    uint32 dataWidth : 6;

    uint32 csActiveLevel : 1;
    uint32 csLeadDelay : 3;
    uint32 csTrailDelay : 3;
    uint32 csInactiveDelay : 3;
    uint32 parityCheck : 1;
    uint32 parityMode : 1;
} SpiIf_ChMode;


typedef void (*SpiIf_Cbk)(void *data);
typedef void (*TxRxHandler)(SpiIf_Ch *handle);

struct SpiIf_Ch_
{
    SpiIf *driver;
    SpiIf_Flags flags;
    Spi_ErrorChecks errorChecks;
    sint32 baudrate;
    SpiIf_Job tx;
    SpiIf_Job rx;
    SpiIf_Cbk onExchangeEnd;
    void *callbackData;
    TxRxHandler txHandler;
    TxRxHandler rxHandler;
};

struct SpiIf_ChConfig_
{
    SpiIf *driver;
    float32 baudrate;
    SpiIf_ChMode mode;
    Spi_ErrorChecks errorChecks;
};







static inline __attribute__ ((always_inline)) void SpiIf_wait(SpiIf_Ch *handle);
extern void SpiIf_initConfig(SpiIf_Config *config);
extern void SpiIf_initChannelConfig(SpiIf_ChConfig *config, SpiIf *driver);




static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_exchange(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData);
static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_getStatus(SpiIf_Ch *handle);
# 234 "./0_Src/1_SrvSw/If/SpiIf.h"
static inline __attribute__ ((always_inline)) void SpiIf_wait(SpiIf_Ch *handle)
{
    while (handle->flags.onTransfer != 0)
    {}
}
# 249 "./0_Src/1_SrvSw/If/SpiIf.h"
static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_exchange(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData)
{
    return handle->driver->functions.exchange(handle, src, dest, numOfData);
}






static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_getStatus(SpiIf_Ch *handle)
{
    return handle->driver->functions.getStatus(handle);
}
# 46 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h" 2


# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_reg.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    unsigned int LAST : 1;
    unsigned int IPRE : 3;
    unsigned int IDLE : 3;
    unsigned int LPRE : 3;
    unsigned int LEAD : 3;
    unsigned int TPRE : 3;
    unsigned int TRAIL : 3;
    unsigned int PARTYP : 1;
    unsigned int UINT : 1;
    unsigned int MSB : 1;
    unsigned int BYTE : 1;
    unsigned int DL : 5;
    unsigned int CS : 4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    unsigned int Q : 6;
    unsigned int A : 2;
    unsigned int B : 2;
    unsigned int C : 2;
    unsigned int CPH : 1;
    unsigned int CPOL : 1;
    unsigned int PAREN : 1;
    unsigned int reserved_15 : 17;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    unsigned int ERRORCLEARS : 9;
    unsigned int TXC : 1;
    unsigned int RXC : 1;
    unsigned int PT1C : 1;
    unsigned int PT2C : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRC : 1;
    unsigned int reserved_16 : 16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    unsigned int ERRORENS : 9;
    unsigned int TXEN : 1;
    unsigned int RXEN : 1;
    unsigned int PT1EN : 1;
    unsigned int PT2EN : 1;
    unsigned int reserved_13 : 2;
    unsigned int USREN : 1;
    unsigned int TXFIFOINT : 2;
    unsigned int RXFIFOINT : 2;
    unsigned int PT1 : 3;
    unsigned int PT2 : 3;
    unsigned int TXFM : 2;
    unsigned int RXFM : 2;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    unsigned int TQ : 8;
    unsigned int reserved_8 : 1;
    unsigned int SI : 1;
    unsigned int EXPECT : 4;
    unsigned int LB : 1;
    unsigned int DEL0 : 1;
    unsigned int STROBE : 5;
    unsigned int SRF : 1;
    unsigned int STIP : 1;
    unsigned int reserved_23 : 1;
    unsigned int EN : 1;
    unsigned int MS : 2;
    unsigned int AREN : 1;
    unsigned int RESETS : 4;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    unsigned int MRIS : 3;
    unsigned int reserved_3 : 1;
    unsigned int SRIS : 3;
    unsigned int reserved_7 : 1;
    unsigned int SCIS : 3;
    unsigned int reserved_11 : 1;
    unsigned int SLSIS : 3;
    unsigned int reserved_15 : 17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    unsigned int AOL : 16;
    unsigned int OEN : 16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    unsigned int BITCOUNT : 8;
    unsigned int reserved_8 : 20;
    unsigned int BRDEN : 1;
    unsigned int BRD : 1;
    unsigned int SPDEN : 1;
    unsigned int SPD : 1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    unsigned int ERRORFLAGS : 9;
    unsigned int TXF : 1;
    unsigned int RXF : 1;
    unsigned int PT1F : 1;
    unsigned int PT2F : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRF : 1;
    unsigned int TXFIFOLEVEL : 3;
    unsigned int RXFIFOLEVEL : 3;
    unsigned int SLAVESEL : 4;
    unsigned int RPV : 1;
    unsigned int TPV : 1;
    unsigned int PHASE : 4;
} Ifx_QSPI_STATUS_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;
# 554 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
    Ifx_QSPI_CLC CLC;
    Ifx_QSPI_PISEL PISEL;
    Ifx_QSPI_ID ID;
    unsigned char reserved_C[4];
    Ifx_QSPI_GLOBALCON GLOBALCON;
    Ifx_QSPI_GLOBALCON1 GLOBALCON1;
    Ifx_QSPI_BACON BACON;
    unsigned char reserved_1C[4];
    Ifx_QSPI_ECON ECON[8];
    Ifx_QSPI_STATUS STATUS;
    Ifx_QSPI_STATUS1 STATUS1;
    Ifx_QSPI_SSOC SSOC;
    unsigned char reserved_4C[8];
    Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
    unsigned char reserved_58[4];
    Ifx_QSPI_MIXENTRY MIXENTRY;
    Ifx_QSPI_BACONENTRY BACONENTRY;
    Ifx_QSPI_DATAENTRY DATAENTRY[8];
    unsigned char reserved_84[12];
    Ifx_QSPI_RXEXIT RXEXIT;
    Ifx_QSPI_RXEXITD RXEXITD;
    unsigned char reserved_98[80];
    Ifx_QSPI_OCS OCS;
    Ifx_QSPI_KRSTCLR KRSTCLR;
    Ifx_QSPI_KRST1 KRST1;
    Ifx_QSPI_KRST0 KRST0;
    Ifx_QSPI_ACCEN1 ACCEN1;
    Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 46 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.h" 2







typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mrst_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mtsr_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Sclk_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Slsi_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Hsicin_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mrst_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mtsr_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Sclk_Out;


typedef const struct
{
    Ifx_QSPI* module;
    sint32 slsoNr;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Slso_Out;

extern IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTB_P22_9_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTC_P22_6_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTCN_P21_2_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTCP_P21_3_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTD_P34_4_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTB_P10_7_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTC_P01_5_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTD_P33_13_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTE_P22_1_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTFN_P21_2_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTFP_P21_3_IN;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P22_6_OUT;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P22_9_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P34_4_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P01_5_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P10_7_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P22_1_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P33_13_OUT;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRB_P22_10_IN;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRC_P22_5_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRC_P10_4_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRD_P34_5_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRC_P01_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRD_P33_12_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRE_P22_0_IN;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_10_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P22_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_4_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSRN_P13_2_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSRP_P13_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P34_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSRN_P22_2_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSRP_P22_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P01_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P22_0_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P33_12_OUT;
extern IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN;
extern IfxQspi_Sclk_In IfxQspi0_SCLKB_P22_8_IN;
extern IfxQspi_Sclk_In IfxQspi0_SCLKC_P22_7_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKD_P33_14_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKB_P10_8_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKC_P01_7_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKD_P33_11_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKE_P22_3_IN;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P22_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLKN_P13_0_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLKP_P13_1_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P33_14_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLKN_P22_0_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLKP_P22_1_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P01_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P10_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P22_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P33_11_OUT;
extern IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN;
extern IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN;
extern IfxQspi_Slsi_In IfxQspi1_SLSIA_P11_10_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIB_P01_3_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIC_P33_10_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSID_P22_2_IN;
extern IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO10_P22_11_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO11_P23_6_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO10_P10_0_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO8_P10_4_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO11_P33_15_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO12_P32_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO6_P33_13_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO10_P01_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO11_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO12_P22_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO13_P23_1_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO1_P33_9_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO2_P33_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO4_P23_5_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO5_P23_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P33_7_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO9_P01_3_OUT;
# 290 "./0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.h"
extern const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[4][6];


extern const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[4][5];


extern const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[4][5];


extern const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[4][7];


extern const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[4][5];


extern const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[4][7];


extern const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[4][4];


extern const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[4][14][2];
# 49 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_reg.h" 1
# 50 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h" 2
# 59 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
typedef enum
{
    IfxQspi_ChannelId_0,
    IfxQspi_ChannelId_1,
    IfxQspi_ChannelId_2,
    IfxQspi_ChannelId_3,
    IfxQspi_ChannelId_4,
    IfxQspi_ChannelId_5,
    IfxQspi_ChannelId_6,
    IfxQspi_ChannelId_7,
    IfxQspi_ChannelId_8,
    IfxQspi_ChannelId_9,
    IfxQspi_ChannelId_10,
    IfxQspi_ChannelId_11,
    IfxQspi_ChannelId_12,
    IfxQspi_ChannelId_13,
    IfxQspi_ChannelId_14
} IfxQspi_ChannelId;



typedef enum
{
    IfxQspi_DataLengthUnit_bit = 0,
    IfxQspi_DataLengthUnit_byte = 1
} IfxQspi_DataLengthUnit;



typedef enum
{
    IfxQspi_ExpectTimeout_64 = 0,
    IfxQspi_ExpectTimeout_128 = 1,
    IfxQspi_ExpectTimeout_256 = 2,
    IfxQspi_ExpectTimeout_512 = 3,
    IfxQspi_ExpectTimeout_1024 = 4,
    IfxQspi_ExpectTimeout_2048 = 5,
    IfxQspi_ExpectTimeout_4096 = 6,
    IfxQspi_ExpectTimeout_8192 = 7,
    IfxQspi_ExpectTimeout_16384 = 8,
    IfxQspi_ExpectTimeout_32768 = 9,
    IfxQspi_ExpectTimeout_65536 = 10,
    IfxQspi_ExpectTimeout_131072 = 11,
    IfxQspi_ExpectTimeout_262144 = 12,
    IfxQspi_ExpectTimeout_524288 = 13,
    IfxQspi_ExpectTimeout_1048576 = 14,
    IfxQspi_ExpectTimeout_2097152 = 15
} IfxQspi_ExpectTimeout;



typedef enum
{
    IfxQspi_Mode_master = 0,
    IfxQspi_Mode_pwmOverQspi = 1,
    IfxQspi_Mode_slave = 2
} IfxQspi_Mode;



typedef enum
{
    IfxQspi_PauseRunTransition_pause = 0,
    IfxQspi_PauseRunTransition_run = 1
} IfxQspi_PauseRunTransition;



typedef enum
{
    IfxQspi_Phase_wait = 0,
    IfxQspi_Phase_idleA = 1,
    IfxQspi_Phase_idleB = 2,
    IfxQspi_Phase_lead = 3,
    IfxQspi_Phase_data = 4,
    IfxQspi_Phase_trail = 5,
    IfxQspi_Phase_expect = 6,
    IfxQspi_Phase_leadStrobe = 7,
    IfxQspi_Phase_trailStrobe = 8
} IfxQspi_Phase;



typedef enum
{
    IfxQspi_RxFifoInt_0,
    IfxQspi_RxFifoInt_1,
    IfxQspi_RxFifoInt_2,
    IfxQspi_RxFifoInt_3
} IfxQspi_RxFifoInt;




typedef enum
{
    IfxQspi_SleepMode_enable = 0,
    IfxQspi_SleepMode_disable = 1
} IfxQspi_SleepMode;



typedef enum
{
    IfxQspi_StrobeDelay_1,
    IfxQspi_StrobeDelay_2,
    IfxQspi_StrobeDelay_3,
    IfxQspi_StrobeDelay_4,
    IfxQspi_StrobeDelay_5,
    IfxQspi_StrobeDelay_6,
    IfxQspi_StrobeDelay_7,
    IfxQspi_StrobeDelay_8,
    IfxQspi_StrobeDelay_9,
    IfxQspi_StrobeDelay_10,
    IfxQspi_StrobeDelay_11,
    IfxQspi_StrobeDelay_12,
    IfxQspi_StrobeDelay_13,
    IfxQspi_StrobeDelay_14,
    IfxQspi_StrobeDelay_15,
    IfxQspi_StrobeDelay_16,
    IfxQspi_StrobeDelay_17,
    IfxQspi_StrobeDelay_18,
    IfxQspi_StrobeDelay_19,
    IfxQspi_StrobeDelay_20,
    IfxQspi_StrobeDelay_21,
    IfxQspi_StrobeDelay_22,
    IfxQspi_StrobeDelay_23,
    IfxQspi_StrobeDelay_24,
    IfxQspi_StrobeDelay_25,
    IfxQspi_StrobeDelay_26,
    IfxQspi_StrobeDelay_27,
    IfxQspi_StrobeDelay_28,
    IfxQspi_StrobeDelay_29,
    IfxQspi_StrobeDelay_30,
    IfxQspi_StrobeDelay_31,
    IfxQspi_StrobeDelay_32
} IfxQspi_StrobeDelay;



typedef enum
{
    IfxQspi_TxFifoInt_1,
    IfxQspi_TxFifoInt_2,
    IfxQspi_TxFifoInt_3,
    IfxQspi_TxFifoInt_4
} IfxQspi_TxFifoInt;
# 220 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_clearRxReq(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_clearTxReq(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint32 IfxQspi_getErrorFlags(Ifx_QSPI *qspi);







static inline __attribute__ ((always_inline)) void IfxQspi_pause(Ifx_QSPI *qspi);




static inline __attribute__ ((always_inline)) uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_run(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data);
# 276 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_read16(Ifx_QSPI *qspi, uint16 *data, Ifx_SizeT count);







extern void IfxQspi_read32(Ifx_QSPI *qspi, uint32 *data, Ifx_SizeT count);







extern void IfxQspi_read8(Ifx_QSPI *qspi, uint8 *data, Ifx_SizeT count);
# 301 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write16(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint16 *data, Ifx_SizeT count);
# 310 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write32(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 *data, Ifx_SizeT count);
# 319 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write8(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 *data, Ifx_SizeT count);
# 334 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_flushReceiveFifo(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_flushTransmitFifo(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) unsigned char IfxQspi_isModuleEnabled(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt);






static inline __attribute__ ((always_inline)) void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode);






static inline __attribute__ ((always_inline)) void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal);







static inline __attribute__ ((always_inline)) void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal);
# 462 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern float IfxQspi_calcRealBaudrate(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId);
# 471 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern uint32 IfxQspi_calculateBasicConfigurationValue(Ifx_QSPI *qspi, const IfxQspi_ChannelId channelId, const SpiIf_ChMode *chMode, const float baudrate);







extern uint32 IfxQspi_calculateExtendedConfigurationValue(Ifx_QSPI *qspi, const uint8 cs, const SpiIf_ChConfig *chConfig);






extern uint32 IfxQspi_calculatePrescaler(Ifx_QSPI *qspi, float baudrate);






extern uint32 IfxQspi_calculateTimeQuantumLength(Ifx_QSPI *qspi, float maxBaudrate);
# 502 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern uint32 IfxQspi_recalcBasicConfiguration(uint32 oldBACON, Ifx_SizeT numOfData, unsigned char shortData, unsigned char lastData);
# 511 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_setSlaveSelectOutputControl(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, unsigned char outputEnable, unsigned char activeLevel);
# 526 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint32 IfxQspi_getIndex(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi);
# 560 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode);
# 614 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex);
# 626 "./0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_resetModule(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.U = 0xFFFFU;
}


static inline __attribute__ ((always_inline)) void IfxQspi_clearRxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.RXC = 1U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_clearTxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.TXC = 1U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_flushReceiveFifo(Ifx_QSPI *qspi)
{

    qspi->GLOBALCON.B.RESETS = 4;
}


static inline __attribute__ ((always_inline)) void IfxQspi_flushTransmitFifo(Ifx_QSPI *qspi)
{

    qspi->GLOBALCON.B.RESETS = 2;
}


static inline __attribute__ ((always_inline)) uint32 IfxQspi_getErrorFlags(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.ERRORFLAGS;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &((*(Ifx_SRC *)0xF0038000u)).QSPI.QSPI[index].ERR;
}


static inline __attribute__ ((always_inline)) uint32 IfxQspi_getIndex(Ifx_QSPI *qspi)
{
    uint32 base = (uint32)&((*(Ifx_QSPI *)0xF0001C00u));
    uint32 singleDistance = ((uint32)&((*(Ifx_QSPI *)0xF0001D00u))) - base;
    uint32 distance = ((uint32)qspi) - base;
    uint32 index = distance / singleDistance;
    return index;
}


static inline __attribute__ ((always_inline)) IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi)
{
    return (IfxQspi_Mode)qspi->GLOBALCON.B.MS;
}


static inline __attribute__ ((always_inline)) float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi)
{
    return IfxScuCcu_getMaxFrequency();
}


static inline __attribute__ ((always_inline)) IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi)
{
    return (IfxQspi_Phase)qspi->STATUS.B.PHASE;
}


static inline __attribute__ ((always_inline)) uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.RXFIFOLEVEL;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &((*(Ifx_SRC *)0xF0038000u)).QSPI.QSPI[index].RX;
}


static inline __attribute__ ((always_inline)) float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi)
{
    return IfxQspi_getModuleFrequency(qspi) / (qspi->GLOBALCON.B.TQ + 1);
}


static inline __attribute__ ((always_inline)) uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.TXFIFOLEVEL;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &((*(Ifx_SRC *)0xF0038000u)).QSPI.QSPI[index].TX;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode)
{
    IfxPort_setPinModeInput(mrstIn->pin.port, mrstIn->pin.pinIndex, mrstInMode);
    mrstIn->module->PISEL.B.MRIS = mrstIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mrstOut->pin.port, mrstOut->pin.pinIndex, mrstOutMode, mrstOut->select);
    IfxPort_setPinPadDriver(mrstOut->pin.port, mrstOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode)
{
    IfxPort_setPinModeInput(mtsrIn->pin.port, mtsrIn->pin.pinIndex, mtsrInMode);
    mtsrIn->module->PISEL.B.SRIS = mtsrIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mtsrOut->pin.port, mtsrOut->pin.pinIndex, mtsrOutMode, mtsrOut->select);
    IfxPort_setPinPadDriver(mtsrOut->pin.port, mtsrOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode)
{
    IfxPort_setPinModeInput(sclkIn->pin.port, sclkIn->pin.pinIndex, sclkInMode);
    sclkIn->module->PISEL.B.SCIS = sclkIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(sclkOut->pin.port, sclkOut->pin.pinIndex, sclkOutMode, sclkOut->select);
    IfxPort_setPinPadDriver(sclkOut->pin.port, sclkOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode)
{
    IfxPort_setPinModeInput(slsi->pin.port, slsi->pin.pinIndex, slsiMode);

    slsi->module->PISEL.B.SLSIS = slsi->select + 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex)
{
    IfxPort_setPinModeOutput(slso->pin.port, slso->pin.pinIndex, slsoMode, outIndex);
    IfxPort_setPinPadDriver(slso->pin.port, slso->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) unsigned char IfxQspi_isModuleEnabled(Ifx_QSPI *qspi)
{
    return (qspi->CLC.B.DISS == 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxQspi_pause(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 0;

    while (IfxQspi_getPhase(qspi) != IfxQspi_Phase_wait)
    {}
}


static inline __attribute__ ((always_inline)) uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi)
{
    return qspi->RXEXIT.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_run(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 0;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt)
{
    qspi->GLOBALCON1.B.RXFIFOINT = rxFifoInt;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode)
{
    qspi->CLC.B.EDIS = mode;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt)
{
    qspi->GLOBALCON1.B.TXFIFOINT = txFifoInt;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal)
{
    qspi->BACONENTRY.U = baconVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = baconVal;
    bacon.B.LAST = 0;

    qspi->BACONENTRY.U = bacon.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = baconVal;
    bacon.B.LAST = 1;

    qspi->BACONENTRY.U = bacon.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal)
{
    int cs = channelId % 8;
    qspi->ECON[cs].U = econVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal)
{
    qspi->MIXENTRY.U = mixEntryVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data)
{
    qspi->DATAENTRY[0].U = data;
}
# 312 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 2






typedef struct IfxQspi_SpiMaster_Channel_s IfxQspi_SpiMaster_Channel;

typedef void (*IfxQspi_SpiMaster_AutoSlso)(IfxQspi_SpiMaster_Channel *chHandle);





typedef enum
{
    IfxQspi_SpiMaster_ChannelBasedCs_disabled = 0,
    IfxQspi_SpiMaster_ChannelBasedCs_enabled = 1
} IfxQspi_SpiMaster_ChannelBasedCs;
# 340 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
typedef struct
{
    const IfxQspi_Slsi_In *pin;
    IfxPort_InputMode mode;
} IfxQspi_SpiMaster_Input;



typedef struct
{
    const IfxQspi_Slso_Out *pin;
    IfxPort_OutputMode mode;
    IfxPort_PadDriver driver;
} IfxQspi_SpiMaster_Output;







typedef struct
{
    IfxDma_Dma_Channel rxDmaChannel;
    IfxDma_Dma_Channel txDmaChannel;
    IfxDma_ChannelId rxDmaChannelId;
    IfxDma_ChannelId txDmaChannelId;
    unsigned char useDma;
} IfxQspi_SpiMaster_Dma;



typedef struct
{
    IfxDma_ChannelId rxDmaChannelId;
    IfxDma_ChannelId txDmaChannelId;
    unsigned char useDma;
} IfxQspi_SpiMaster_DmaConfig;



typedef union
{
    IfxQspi_SpiMaster_Input input;
    IfxQspi_SpiMaster_Output output;
} IfxQspi_SpiMaster_InputOutput;



typedef struct
{
    const IfxQspi_Sclk_Out *sclk;
    IfxPort_OutputMode sclkMode;
    const IfxQspi_Mtsr_Out *mtsr;
    IfxPort_OutputMode mtsrMode;
    const IfxQspi_Mrst_In *mrst;
    IfxPort_InputMode mrstMode;
    IfxPort_PadDriver pinDriver;
} IfxQspi_SpiMaster_Pins;







typedef struct
{
    SpiIf base;
    Ifx_QSPI *qspi;
    IfxQspi_SpiMaster_Dma dma;
} IfxQspi_SpiMaster;



typedef struct
{
    SpiIf_ChConfig base;
    IfxQspi_SpiMaster_InputOutput sls;
    IfxQspi_SpiMaster_ChannelBasedCs channelBasedCs;
} IfxQspi_SpiMaster_ChannelConfig;



struct IfxQspi_SpiMaster_Channel_s
{
    SpiIf_Ch base;
    Ifx_QSPI_BACON bacon;
    IfxPort_Pin slso;
    IfxQspi_SpiMaster_AutoSlso activateSlso;
    IfxQspi_SpiMaster_AutoSlso deactivateSlso;
    IfxQspi_ChannelId channelId;
    Ifx_ActiveState slsoActiveState;
    uint8 dataWidth;
    unsigned char firstWrite;
    IfxQspi_SpiMaster_ChannelBasedCs channelBasedCs;
};



typedef struct
{
    SpiIf_Config base;
    Ifx_QSPI *qspi;
    unsigned char allowSleepMode;
    unsigned char pauseOnBaudrateSpikeErrors;
    IfxQspi_PauseRunTransition pauseRunTransition;
    IfxQspi_TxFifoInt txFifoThreshold;
    IfxQspi_RxFifoInt rxFifoThreshold;
    const IfxQspi_SpiMaster_Pins *pins;
    IfxQspi_SpiMaster_DmaConfig dma;
} IfxQspi_SpiMaster_Config;
# 470 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initModule(IfxQspi_SpiMaster *handle, const IfxQspi_SpiMaster_Config *config);
# 480 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initModuleConfig(IfxQspi_SpiMaster_Config *config, Ifx_QSPI *qspi);
# 499 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_initChannel(IfxQspi_SpiMaster_Channel *chHandle, const IfxQspi_SpiMaster_ChannelConfig *chConfig);
# 509 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initChannelConfig(IfxQspi_SpiMaster_ChannelConfig *chConfig, IfxQspi_SpiMaster *handle);
# 530 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_exchange(IfxQspi_SpiMaster_Channel *chHandle, const void *src, void *dest, Ifx_SizeT count);
# 539 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_getStatus(IfxQspi_SpiMaster_Channel *chHandle);
# 554 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_isrDmaReceive(IfxQspi_SpiMaster *qspiHandle);





extern void IfxQspi_SpiMaster_isrDmaTransmit(IfxQspi_SpiMaster *qspiHandle);





extern void IfxQspi_SpiMaster_isrError(IfxQspi_SpiMaster *handle);





extern void IfxQspi_SpiMaster_isrReceive(IfxQspi_SpiMaster *handle);





extern void IfxQspi_SpiMaster_isrTransmit(IfxQspi_SpiMaster *handle);
# 593 "./0_Src/4_McHal/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
static inline __attribute__ ((always_inline)) uint32 IfxQspi_SpiMaster_readReceiveFifo(IfxQspi_SpiMaster *handle);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeBasicConfiguration(IfxQspi_SpiMaster *handle, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeExtendedConfiguration(IfxQspi_SpiMaster_Channel *chHandle, uint32 econVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeMixedDataConfiguration(IfxQspi_SpiMaster *handle, uint32 mixEntryVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeTransmitFifo(IfxQspi_SpiMaster_Channel *chHandle, uint32 data);







static inline __attribute__ ((always_inline)) uint32 IfxQspi_SpiMaster_readReceiveFifo(IfxQspi_SpiMaster *handle)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    uint32 data = IfxQspi_readReceiveFifo(qspiSFR);
    return data;
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeBasicConfiguration(IfxQspi_SpiMaster *handle, uint32 baconVal)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    IfxQspi_writeBasicConfiguration(qspiSFR, baconVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeExtendedConfiguration(IfxQspi_SpiMaster_Channel *chHandle, uint32 econVal)
{
    IfxQspi_SpiMaster *handle = (IfxQspi_SpiMaster *)chHandle->base.driver;
    IfxQspi_writeExtendedConfiguration(handle->qspi, chHandle->channelId, econVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeMixedDataConfiguration(IfxQspi_SpiMaster *handle, uint32 mixEntryVal)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    IfxQspi_writeMixedDataTransmitFifo(qspiSFR, mixEntryVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeTransmitFifo(IfxQspi_SpiMaster_Channel *chHandle, uint32 data)
{
    IfxQspi_SpiMaster *handle = (IfxQspi_SpiMaster *)chHandle->base.driver;
    IfxQspi_writeTransmitFifo(handle->qspi, data);
}
# 17 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_QSPI.h" 2


# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h" 1
# 14 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h" 1
# 15 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h" 2
# 24 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
void setPort_GPIO_LED(void);
int setByte_GPIO_LED(uint8 value);
int setBit_GPIO_LED(uint8 number, uint8 value);
int getState_LED(void);
# 37 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
void setPort_GPIO_PBSW(void);
int getState_PBSW(uint8 number);
# 48 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
void setPort_GPIO_LCD(void);
uint16 getWord_GPIO_LCD_d(void);
uint16 setWord_GPIO_LCD_d(uint16 value);
int setBit_GPIO_LCD_d(uint8 number, uint8 value);
int setBit_GPIO_LCD_ctl(uint8 number, uint8 value);
int setBit_GPIO_LCD_bl(uint8 number, uint8 value);
int getBit_LCD_IRQ(void);



void f_Cs(int bit);
void f_Rs(int bit);
void f_nWr(int bit);
void f_nRd(int bit);
void f_reset(int bit);
void f_BLCNT(int bit);
void f_chip_select(int bit);


void config_chip_select_IO(void);
# 78 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
void setPort_GPIO_dxl(void);
int setBit_GPIO_dxl(uint8 value);






__inline void Delay_ms_GPIO(unsigned int tic_ms);
# 20 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_QSPI.h" 2
# 30 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_QSPI.h"
void qspi0TxISR (void);
void qspi0RxISR (void);
void qspi0ErISR (void);


void set_SPI_CS(void);
void set_SPI_MISO(uint8 bit);
void f_SPI_CS(uint8 n_slave, int bit);
void f_SPI_MISO(uint8 bit);
void qspi0_master_module_initialisation(void);
void qspi0_master_channel_initialisation(void);
void qspi0_data_communication(uint8 n_slave, uint8*data_tx, uint8*data_rx, uint8 num_of_data);
unsigned int spi_send(void);
void Peripheral_delay_us(unsigned int tic_us);
# 13 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h" 2

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
# 38 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
void Touch_qspi_Config(void);
# 47 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
void TouchPanel_Calibrate(void);
# 56 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
Coordinate Read_ADC_Post(void);
# 67 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
Coordinate GetDisplayPoint(unsigned int x, unsigned int y, Matrix matrixPtr);
# 77 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
unsigned int Filter_data_x(unsigned int *data, int n);
# 86 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
unsigned int Filter_data_y(unsigned int *data, int n);
# 96 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
void Device_delay_us(unsigned int tic_us);







void Device_delay_ms(unsigned int tic_ms);
# 113 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
Coordinate Read_ADC_Pre(void);
# 123 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
void setCalibrationMatrix(Coordinate * displayPtr,Coordinate*screenPtr, Matrix * matrixPtr);
# 132 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_TFT.h"
Coordinate Touch_Read_Data_X_Y(void);







unsigned int Read_X(void);







unsigned int Read_Y(void);

int IO_get_TFT_Point(void);
unsigned int IO_get_TFT_x(void);
unsigned int IO_get_TFT_y(void);

void draw_test(void);
void TP_DrawPoint(unsigned int Xpos,unsigned int Ypos);




void IO_set_TFT(void);
# 21 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PWM.h" 1
# 14 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_PWM.h"
void IO_set_PWM(void);
void IO_setPort_StepperMotor(unsigned int freq, char direction);
void IO_setPort_UltraSonic_Trig(void);
# 22 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_ADC.h" 1
# 16 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_ADC.h"
void IO_set_ADC(void);
int IO_ADC_getValue(int module, int channel);
int IO_ADC_getValueCurrent(void);
int IO_ADC_getValueBNC(int channel);
int IO_ADC_getValueVR(void);
int IO_ADC_getValueIR(void);
# 23 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_Sensor_US.h" 1
# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_Sensor_US.h"
void IO_set_Sensor_US(void);
unsigned int IO_get_USvalue(void);
# 24 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "./0_Src/0_AppSw/Tricore/System/Service_Handler/Event_Trigger.h" 1
# 16 "./0_Src/0_AppSw/Tricore/System/Service_Handler/Event_Trigger.h"
extern void ISR_UART_Rx_SysCom(char *buffer);
extern void ISR_SCUERU_SWinput(void);
extern void ISR_EtherNet_Rx(int len, char *buffer);
extern void ISR_UART_Rx_WiFi(int len, char *buffer);

extern void ISR_CAN_msgObj_0(void);
extern void ISR_CAN_msgObj_1(void);
extern void ISR_CAN_msgObj_2(void);
extern void ISR_CAN_msgObj_3(void);
extern void ISR_CAN_msgObj_4(void);
extern void ISR_CAN_msgObj_5(void);
extern void ISR_CAN_msgObj_6(void);
extern void ISR_CAN_msgObj_7(void);
# 25 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2
# 1 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ERAY.h" 1
# 14 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ERAY.h"
# 1 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 1
# 501 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
# 1 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 1
# 49 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h" 1
# 55 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h"
typedef enum
{
    IfxEray_NodeId_a = 0,
    IfxEray_NodeId_b = 1,
    IfxEray_NodeId_none = -1
} IfxEray_NodeId;
# 50 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h"
typedef struct _Ifx_ERAY_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_ERAY_ACCEN0_Bits;


typedef struct _Ifx_ERAY_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ERAY_ACCEN1_Bits;


typedef struct _Ifx_ERAY_ACS_Bits
{
    unsigned int VFRA : 1;
    unsigned int SEDA : 1;
    unsigned int CEDA : 1;
    unsigned int CIA : 1;
    unsigned int SBVA : 1;
    unsigned int reserved_5 : 3;
    unsigned int VFRB : 1;
    unsigned int SEDB : 1;
    unsigned int CEDB : 1;
    unsigned int CIB : 1;
    unsigned int SBVB : 1;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_ACS_Bits;


typedef struct _Ifx_ERAY_CCEV_Bits
{
    unsigned int CCFC : 4;
    unsigned int reserved_4 : 2;
    unsigned int ERRM : 2;
    unsigned int PTAC : 5;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_CCEV_Bits;


typedef struct _Ifx_ERAY_CCSV_Bits
{
    unsigned int POCS : 6;
    unsigned int FSI : 1;
    unsigned int HRQ : 1;
    unsigned int SLM : 2;
    unsigned int reserved_10 : 2;
    unsigned int CSNI : 1;
    unsigned int CSAI : 1;
    unsigned int CSI : 1;
    unsigned int reserved_15 : 1;
    unsigned int WSV : 3;
    unsigned int RCA : 5;
    unsigned int PSL : 6;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_CCSV_Bits;


typedef struct _Ifx_ERAY_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 4;
    unsigned int RMC : 3;
    unsigned int reserved_11 : 21;
} Ifx_ERAY_CLC_Bits;


typedef struct _Ifx_ERAY_CREL_Bits
{
    unsigned int DAY : 8;
    unsigned int MON : 8;
    unsigned int YEAR : 4;
    unsigned int SUBSTEP : 4;
    unsigned int STEP : 4;
    unsigned int REL : 4;
} Ifx_ERAY_CREL_Bits;


typedef struct _Ifx_ERAY_CUST1_Bits
{
    unsigned int INT0 : 1;
    unsigned int OEN : 1;
    unsigned int IEN : 1;
    unsigned int IBFS : 1;
    unsigned int IBF1PAG : 1;
    unsigned int reserved_5 : 2;
    unsigned int IBF2PAG : 1;
    unsigned int reserved_8 : 2;
    unsigned int RISA : 2;
    unsigned int RISB : 2;
    unsigned int STPWTS : 2;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_CUST1_Bits;


typedef struct _Ifx_ERAY_CUST3_Bits
{
    unsigned int TO : 32;
} Ifx_ERAY_CUST3_Bits;


typedef struct _Ifx_ERAY_EIER_Bits
{
    unsigned int PEMCE : 1;
    unsigned int CNAE : 1;
    unsigned int SFBME : 1;
    unsigned int SFOE : 1;
    unsigned int CCFE : 1;
    unsigned int CCLE : 1;
    unsigned int EERRE : 1;
    unsigned int RFOE : 1;
    unsigned int EFAE : 1;
    unsigned int IIBAE : 1;
    unsigned int IOBAE : 1;
    unsigned int MHFE : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAE : 1;
    unsigned int LTVAE : 1;
    unsigned int TABAE : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBE : 1;
    unsigned int LTVBE : 1;
    unsigned int TABBE : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIER_Bits;


typedef struct _Ifx_ERAY_EIES_Bits
{
    unsigned int PEMCE : 1;
    unsigned int CNAE : 1;
    unsigned int SFBME : 1;
    unsigned int SFOE : 1;
    unsigned int CCFE : 1;
    unsigned int CCLE : 1;
    unsigned int EERRE : 1;
    unsigned int RFOE : 1;
    unsigned int EFAE : 1;
    unsigned int IIBAE : 1;
    unsigned int IOBAE : 1;
    unsigned int MHFE : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAE : 1;
    unsigned int LTVAE : 1;
    unsigned int TABAE : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBE : 1;
    unsigned int LTVBE : 1;
    unsigned int TABBE : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIES_Bits;


typedef struct _Ifx_ERAY_EILS_Bits
{
    unsigned int PEMCL : 1;
    unsigned int CNAL : 1;
    unsigned int SFBML : 1;
    unsigned int SFOL : 1;
    unsigned int CCFL : 1;
    unsigned int CCLL : 1;
    unsigned int EERRL : 1;
    unsigned int RFOL : 1;
    unsigned int EFAL : 1;
    unsigned int IIBAL : 1;
    unsigned int IOBAL : 1;
    unsigned int MHFL : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAL : 1;
    unsigned int LTVAL : 1;
    unsigned int TABAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBL : 1;
    unsigned int LTVBL : 1;
    unsigned int TABBL : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EILS_Bits;


typedef struct _Ifx_ERAY_EIR_Bits
{
    unsigned int PEMC : 1;
    unsigned int CNA : 1;
    unsigned int SFBM : 1;
    unsigned int SFO : 1;
    unsigned int CCF : 1;
    unsigned int CCL : 1;
    unsigned int EERR : 1;
    unsigned int RFO : 1;
    unsigned int EFA : 1;
    unsigned int IIBA : 1;
    unsigned int IOBA : 1;
    unsigned int MHF : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDA : 1;
    unsigned int LTVA : 1;
    unsigned int TABA : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDB : 1;
    unsigned int LTVB : 1;
    unsigned int TABB : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIR_Bits;


typedef struct _Ifx_ERAY_ENDN_Bits
{
    unsigned int ETV : 32;
} Ifx_ERAY_ENDN_Bits;


typedef struct _Ifx_ERAY_ESID_Bits
{
    unsigned int EID : 10;
    unsigned int reserved_10 : 4;
    unsigned int RXEA : 1;
    unsigned int RXEB : 1;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_ESID_Bits;


typedef struct _Ifx_ERAY_FCL_Bits
{
    unsigned int CL : 8;
    unsigned int reserved_8 : 24;
} Ifx_ERAY_FCL_Bits;


typedef struct _Ifx_ERAY_FRF_Bits
{
    unsigned int CH : 2;
    unsigned int FID : 11;
    unsigned int reserved_13 : 3;
    unsigned int CYF : 7;
    unsigned int RSS : 1;
    unsigned int RNF : 1;
    unsigned int reserved_25 : 7;
} Ifx_ERAY_FRF_Bits;


typedef struct _Ifx_ERAY_FRFM_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int MFID : 11;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_FRFM_Bits;


typedef struct _Ifx_ERAY_FSR_Bits
{
    unsigned int RFNE : 1;
    unsigned int RFCL : 1;
    unsigned int RFO : 1;
    unsigned int reserved_3 : 5;
    unsigned int RFFL : 8;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_FSR_Bits;


typedef struct _Ifx_ERAY_GTUC01_Bits
{
    unsigned int UT : 20;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_GTUC01_Bits;


typedef struct _Ifx_ERAY_GTUC02_Bits
{
    unsigned int MPC : 14;
    unsigned int reserved_14 : 2;
    unsigned int SNM : 4;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_GTUC02_Bits;


typedef struct _Ifx_ERAY_GTUC03_Bits
{
    unsigned int UIOA : 8;
    unsigned int UIOB : 8;
    unsigned int MIOA : 7;
    unsigned int reserved_23 : 1;
    unsigned int MIOB : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_GTUC03_Bits;


typedef struct _Ifx_ERAY_GTUC04_Bits
{
    unsigned int NIT : 14;
    unsigned int reserved_14 : 2;
    unsigned int OCS : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_GTUC04_Bits;


typedef struct _Ifx_ERAY_GTUC05_Bits
{
    unsigned int DCA : 8;
    unsigned int DCB : 8;
    unsigned int CDD : 5;
    unsigned int reserved_21 : 3;
    unsigned int DEC : 8;
} Ifx_ERAY_GTUC05_Bits;


typedef struct _Ifx_ERAY_GTUC06_Bits
{
    unsigned int ASR : 11;
    unsigned int reserved_11 : 5;
    unsigned int MOD : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC06_Bits;


typedef struct _Ifx_ERAY_GTUC07_Bits
{
    unsigned int SSL : 10;
    unsigned int reserved_10 : 6;
    unsigned int NSS : 10;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_GTUC07_Bits;


typedef struct _Ifx_ERAY_GTUC08_Bits
{
    unsigned int MSL : 6;
    unsigned int reserved_6 : 10;
    unsigned int NMS : 13;
    unsigned int reserved_29 : 3;
} Ifx_ERAY_GTUC08_Bits;


typedef struct _Ifx_ERAY_GTUC09_Bits
{
    unsigned int APO : 6;
    unsigned int reserved_6 : 2;
    unsigned int MAPO : 5;
    unsigned int reserved_13 : 3;
    unsigned int DSI : 2;
    unsigned int reserved_18 : 14;
} Ifx_ERAY_GTUC09_Bits;


typedef struct _Ifx_ERAY_GTUC10_Bits
{
    unsigned int MOC : 14;
    unsigned int reserved_14 : 2;
    unsigned int MRC : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC10_Bits;


typedef struct _Ifx_ERAY_GTUC11_Bits
{
    unsigned int EOCC : 2;
    unsigned int reserved_2 : 6;
    unsigned int ERCC : 2;
    unsigned int reserved_10 : 6;
    unsigned int EOC : 3;
    unsigned int reserved_19 : 5;
    unsigned int ERC : 3;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC11_Bits;


typedef struct _Ifx_ERAY_IBCM_Bits
{
    unsigned int LHSH : 1;
    unsigned int LDSH : 1;
    unsigned int STXRH : 1;
    unsigned int reserved_3 : 13;
    unsigned int LHSS : 1;
    unsigned int LDSS : 1;
    unsigned int STXRS : 1;
    unsigned int reserved_19 : 13;
} Ifx_ERAY_IBCM_Bits;


typedef struct _Ifx_ERAY_IBCR_Bits
{
    unsigned int IBRH : 7;
    unsigned int reserved_7 : 8;
    unsigned int IBSYH : 1;
    unsigned int IBRS : 7;
    unsigned int reserved_23 : 8;
    unsigned int IBSYS : 1;
} Ifx_ERAY_IBCR_Bits;


typedef struct _Ifx_ERAY_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ERAY_ID_Bits;


typedef struct _Ifx_ERAY_ILE_Bits
{
    unsigned int EINT0 : 1;
    unsigned int EINT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_ERAY_ILE_Bits;


typedef struct _Ifx_ERAY_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ERAY_KRST0_Bits;


typedef struct _Ifx_ERAY_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ERAY_KRST1_Bits;


typedef struct _Ifx_ERAY_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ERAY_KRSTCLR_Bits;


typedef struct _Ifx_ERAY_LCK_Bits
{
    unsigned int CLK : 8;
    unsigned int TMK : 8;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_LCK_Bits;


typedef struct _Ifx_ERAY_LDTS_Bits
{
    unsigned int LDTA : 11;
    unsigned int reserved_11 : 5;
    unsigned int LDTB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_LDTS_Bits;


typedef struct _Ifx_ERAY_MBS_Bits
{
    unsigned int VFRA : 1;
    unsigned int VFRB : 1;
    unsigned int SEOA : 1;
    unsigned int SEOB : 1;
    unsigned int CEOA : 1;
    unsigned int CEOB : 1;
    unsigned int SVOA : 1;
    unsigned int SVOB : 1;
    unsigned int TCIA : 1;
    unsigned int TCIB : 1;
    unsigned int ESA : 1;
    unsigned int ESB : 1;
    unsigned int MLST : 1;
    unsigned int reserved_13 : 1;
    unsigned int FTA : 1;
    unsigned int FTB : 1;
    unsigned int CCS : 6;
    unsigned int reserved_22 : 2;
    unsigned int RCIS : 1;
    unsigned int SFIS : 1;
    unsigned int SYNS : 1;
    unsigned int NFIS : 1;
    unsigned int PPIS : 1;
    unsigned int RESS : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_MBS_Bits;


typedef struct _Ifx_ERAY_MBSC1_Bits
{
    unsigned int MBC0 : 1;
    unsigned int MBC1 : 1;
    unsigned int MBC2 : 1;
    unsigned int MBC3 : 1;
    unsigned int MBC4 : 1;
    unsigned int MBC5 : 1;
    unsigned int MBC6 : 1;
    unsigned int MBC7 : 1;
    unsigned int MBC8 : 1;
    unsigned int MBC9 : 1;
    unsigned int MBC10 : 1;
    unsigned int MBC11 : 1;
    unsigned int MBC12 : 1;
    unsigned int MBC13 : 1;
    unsigned int MBC14 : 1;
    unsigned int MBC15 : 1;
    unsigned int MBC16 : 1;
    unsigned int MBC17 : 1;
    unsigned int MBC18 : 1;
    unsigned int MBC19 : 1;
    unsigned int MBC20 : 1;
    unsigned int MBC21 : 1;
    unsigned int MBC22 : 1;
    unsigned int MBC23 : 1;
    unsigned int MBC24 : 1;
    unsigned int MBC25 : 1;
    unsigned int MBC26 : 1;
    unsigned int MBC27 : 1;
    unsigned int MBC28 : 1;
    unsigned int MBC29 : 1;
    unsigned int MBC30 : 1;
    unsigned int MBC31 : 1;
} Ifx_ERAY_MBSC1_Bits;


typedef struct _Ifx_ERAY_MBSC2_Bits
{
    unsigned int MBC32 : 1;
    unsigned int MBC33 : 1;
    unsigned int MBC34 : 1;
    unsigned int MBC35 : 1;
    unsigned int MBC36 : 1;
    unsigned int MBC37 : 1;
    unsigned int MBC38 : 1;
    unsigned int MBC39 : 1;
    unsigned int MBC40 : 1;
    unsigned int MBC41 : 1;
    unsigned int MBC42 : 1;
    unsigned int MBC43 : 1;
    unsigned int MBC44 : 1;
    unsigned int MBC45 : 1;
    unsigned int MBC46 : 1;
    unsigned int MBC47 : 1;
    unsigned int MBC48 : 1;
    unsigned int MBC49 : 1;
    unsigned int MBC50 : 1;
    unsigned int MBC51 : 1;
    unsigned int MBC52 : 1;
    unsigned int MBC53 : 1;
    unsigned int MBC54 : 1;
    unsigned int MBC55 : 1;
    unsigned int MBC56 : 1;
    unsigned int MBC57 : 1;
    unsigned int MBC58 : 1;
    unsigned int MBC59 : 1;
    unsigned int MBC60 : 1;
    unsigned int MBC61 : 1;
    unsigned int MBC62 : 1;
    unsigned int MBC63 : 1;
} Ifx_ERAY_MBSC2_Bits;


typedef struct _Ifx_ERAY_MBSC3_Bits
{
    unsigned int MBC64 : 1;
    unsigned int MBC65 : 1;
    unsigned int MBC66 : 1;
    unsigned int MBC67 : 1;
    unsigned int MBC68 : 1;
    unsigned int MBC69 : 1;
    unsigned int MBC70 : 1;
    unsigned int MBC71 : 1;
    unsigned int MBC72 : 1;
    unsigned int MBC73 : 1;
    unsigned int MBC74 : 1;
    unsigned int MBC75 : 1;
    unsigned int MBC76 : 1;
    unsigned int MBC77 : 1;
    unsigned int MBC78 : 1;
    unsigned int MBC79 : 1;
    unsigned int MBC80 : 1;
    unsigned int MBC81 : 1;
    unsigned int MBC82 : 1;
    unsigned int MBC83 : 1;
    unsigned int MBC84 : 1;
    unsigned int MBC85 : 1;
    unsigned int MBC86 : 1;
    unsigned int MBC87 : 1;
    unsigned int MBC88 : 1;
    unsigned int MBC89 : 1;
    unsigned int MBC90 : 1;
    unsigned int MBC91 : 1;
    unsigned int MBC92 : 1;
    unsigned int MBC93 : 1;
    unsigned int MBC94 : 1;
    unsigned int MBC95 : 1;
} Ifx_ERAY_MBSC3_Bits;


typedef struct _Ifx_ERAY_MBSC4_Bits
{
    unsigned int MBC96 : 1;
    unsigned int MBC97 : 1;
    unsigned int MBC98 : 1;
    unsigned int MBC99 : 1;
    unsigned int MBC100 : 1;
    unsigned int MBC101 : 1;
    unsigned int MBC102 : 1;
    unsigned int MBC103 : 1;
    unsigned int MBC104 : 1;
    unsigned int MBC105 : 1;
    unsigned int MBC106 : 1;
    unsigned int MBC107 : 1;
    unsigned int MBC108 : 1;
    unsigned int MBC109 : 1;
    unsigned int MBC110 : 1;
    unsigned int MBC111 : 1;
    unsigned int MBC112 : 1;
    unsigned int MBC113 : 1;
    unsigned int MBC114 : 1;
    unsigned int MBC115 : 1;
    unsigned int MBC116 : 1;
    unsigned int MBC117 : 1;
    unsigned int MBC118 : 1;
    unsigned int MBC119 : 1;
    unsigned int MBC120 : 1;
    unsigned int MBC121 : 1;
    unsigned int MBC122 : 1;
    unsigned int MBC123 : 1;
    unsigned int MBC124 : 1;
    unsigned int MBC125 : 1;
    unsigned int MBC126 : 1;
    unsigned int MBC127 : 1;
} Ifx_ERAY_MBSC4_Bits;


typedef struct _Ifx_ERAY_MHDC_Bits
{
    unsigned int SFDL : 7;
    unsigned int reserved_7 : 9;
    unsigned int SLT : 13;
    unsigned int reserved_29 : 3;
} Ifx_ERAY_MHDC_Bits;


typedef struct _Ifx_ERAY_MHDF_Bits
{
    unsigned int SNUA : 1;
    unsigned int SNUB : 1;
    unsigned int FNFA : 1;
    unsigned int FNFB : 1;
    unsigned int TBFA : 1;
    unsigned int TBFB : 1;
    unsigned int TNSA : 1;
    unsigned int TNSB : 1;
    unsigned int WAHP : 1;
    unsigned int reserved_9 : 23;
} Ifx_ERAY_MHDF_Bits;


typedef struct _Ifx_ERAY_MHDS_Bits
{
    unsigned int EIBF : 1;
    unsigned int EOBF : 1;
    unsigned int EMR : 1;
    unsigned int ETBF1 : 1;
    unsigned int ETBF2 : 1;
    unsigned int FMBD : 1;
    unsigned int MFMB : 1;
    unsigned int CRAM : 1;
    unsigned int FMB : 7;
    unsigned int reserved_15 : 1;
    unsigned int MBT : 7;
    unsigned int reserved_23 : 1;
    unsigned int MBU : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_MHDS_Bits;


typedef struct _Ifx_ERAY_MRC_Bits
{
    unsigned int FDB : 8;
    unsigned int FFB : 8;
    unsigned int LCB : 8;
    unsigned int SEC : 2;
    unsigned int SPLM : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_MRC_Bits;


typedef struct _Ifx_ERAY_MSIC1_Bits
{
    unsigned int MSIP0 : 1;
    unsigned int MSIP1 : 1;
    unsigned int MSIP2 : 1;
    unsigned int MSIP3 : 1;
    unsigned int MSIP4 : 1;
    unsigned int MSIP5 : 1;
    unsigned int MSIP6 : 1;
    unsigned int MSIP7 : 1;
    unsigned int MSIP8 : 1;
    unsigned int MSIP9 : 1;
    unsigned int MSIP10 : 1;
    unsigned int MSIP11 : 1;
    unsigned int MSIP12 : 1;
    unsigned int MSIP13 : 1;
    unsigned int MSIP14 : 1;
    unsigned int MSIP15 : 1;
    unsigned int MSIP16 : 1;
    unsigned int MSIP17 : 1;
    unsigned int MSIP18 : 1;
    unsigned int MSIP19 : 1;
    unsigned int MSIP20 : 1;
    unsigned int MSIP21 : 1;
    unsigned int MSIP22 : 1;
    unsigned int MSIP23 : 1;
    unsigned int MSIP24 : 1;
    unsigned int MSIP25 : 1;
    unsigned int MSIP26 : 1;
    unsigned int MSIP27 : 1;
    unsigned int MSIP28 : 1;
    unsigned int MSIP29 : 1;
    unsigned int MSIP30 : 1;
    unsigned int MSIP31 : 1;
} Ifx_ERAY_MSIC1_Bits;


typedef struct _Ifx_ERAY_MSIC2_Bits
{
    unsigned int MSIP32 : 1;
    unsigned int MSIP33 : 1;
    unsigned int MSIP34 : 1;
    unsigned int MSIP35 : 1;
    unsigned int MSIP36 : 1;
    unsigned int MSIP37 : 1;
    unsigned int MSIP38 : 1;
    unsigned int MSIP39 : 1;
    unsigned int MSIP40 : 1;
    unsigned int MSIP41 : 1;
    unsigned int MSIP42 : 1;
    unsigned int MSIP43 : 1;
    unsigned int MSIP44 : 1;
    unsigned int MSIP45 : 1;
    unsigned int MSIP46 : 1;
    unsigned int MSIP47 : 1;
    unsigned int MSIP48 : 1;
    unsigned int MSIP49 : 1;
    unsigned int MSIP50 : 1;
    unsigned int MSIP51 : 1;
    unsigned int MSIP52 : 1;
    unsigned int MSIP53 : 1;
    unsigned int MSIP54 : 1;
    unsigned int MSIP55 : 1;
    unsigned int MSIP56 : 1;
    unsigned int MSIP57 : 1;
    unsigned int MSIP58 : 1;
    unsigned int MSIP59 : 1;
    unsigned int MSIP60 : 1;
    unsigned int MSIP61 : 1;
    unsigned int MSIP62 : 1;
    unsigned int MSIP63 : 1;
} Ifx_ERAY_MSIC2_Bits;


typedef struct _Ifx_ERAY_MSIC3_Bits
{
    unsigned int MSIP64 : 1;
    unsigned int MSIP65 : 1;
    unsigned int MSIP66 : 1;
    unsigned int MSIP67 : 1;
    unsigned int MSIP68 : 1;
    unsigned int MSIP69 : 1;
    unsigned int MSIP70 : 1;
    unsigned int MSIP71 : 1;
    unsigned int MSIP72 : 1;
    unsigned int MSIP73 : 1;
    unsigned int MSIP74 : 1;
    unsigned int MSIP75 : 1;
    unsigned int MSIP76 : 1;
    unsigned int MSIP77 : 1;
    unsigned int MSIP78 : 1;
    unsigned int MSIP79 : 1;
    unsigned int MSIP80 : 1;
    unsigned int MSIP81 : 1;
    unsigned int MSIP82 : 1;
    unsigned int MSIP83 : 1;
    unsigned int MSIP84 : 1;
    unsigned int MSIP85 : 1;
    unsigned int MSIP86 : 1;
    unsigned int MSIP87 : 1;
    unsigned int MSIP88 : 1;
    unsigned int MSIP89 : 1;
    unsigned int MSIP90 : 1;
    unsigned int MSIP91 : 1;
    unsigned int MSIP92 : 1;
    unsigned int MSIP93 : 1;
    unsigned int MSIP94 : 1;
    unsigned int MSIP95 : 1;
} Ifx_ERAY_MSIC3_Bits;


typedef struct _Ifx_ERAY_MSIC4_Bits
{
    unsigned int MSIP96 : 1;
    unsigned int MSIP97 : 1;
    unsigned int MSIP98 : 1;
    unsigned int MSIP99 : 1;
    unsigned int MSIP100 : 1;
    unsigned int MSIP101 : 1;
    unsigned int MSIP102 : 1;
    unsigned int MSIP103 : 1;
    unsigned int MSIP104 : 1;
    unsigned int MSIP105 : 1;
    unsigned int MSIP106 : 1;
    unsigned int MSIP107 : 1;
    unsigned int MSIP108 : 1;
    unsigned int MSIP109 : 1;
    unsigned int MSIP110 : 1;
    unsigned int MSIP111 : 1;
    unsigned int MSIP112 : 1;
    unsigned int MSIP113 : 1;
    unsigned int MSIP114 : 1;
    unsigned int MSIP115 : 1;
    unsigned int MSIP116 : 1;
    unsigned int MSIP117 : 1;
    unsigned int MSIP118 : 1;
    unsigned int MSIP119 : 1;
    unsigned int MSIP120 : 1;
    unsigned int MSIP121 : 1;
    unsigned int MSIP122 : 1;
    unsigned int MSIP123 : 1;
    unsigned int MSIP124 : 1;
    unsigned int MSIP125 : 1;
    unsigned int MSIP126 : 1;
    unsigned int MSIP127 : 1;
} Ifx_ERAY_MSIC4_Bits;


typedef struct _Ifx_ERAY_MTCCV_Bits
{
    unsigned int MTV : 14;
    unsigned int reserved_14 : 2;
    unsigned int CCV : 6;
    unsigned int reserved_22 : 10;
} Ifx_ERAY_MTCCV_Bits;


typedef struct _Ifx_ERAY_NDAT1_Bits
{
    unsigned int ND0 : 1;
    unsigned int ND1 : 1;
    unsigned int ND2 : 1;
    unsigned int ND3 : 1;
    unsigned int ND4 : 1;
    unsigned int ND5 : 1;
    unsigned int ND6 : 1;
    unsigned int ND7 : 1;
    unsigned int ND8 : 1;
    unsigned int ND9 : 1;
    unsigned int ND10 : 1;
    unsigned int ND11 : 1;
    unsigned int ND12 : 1;
    unsigned int ND13 : 1;
    unsigned int ND14 : 1;
    unsigned int ND15 : 1;
    unsigned int ND16 : 1;
    unsigned int ND17 : 1;
    unsigned int ND18 : 1;
    unsigned int ND19 : 1;
    unsigned int ND20 : 1;
    unsigned int ND21 : 1;
    unsigned int ND22 : 1;
    unsigned int ND23 : 1;
    unsigned int ND24 : 1;
    unsigned int ND25 : 1;
    unsigned int ND26 : 1;
    unsigned int ND27 : 1;
    unsigned int ND28 : 1;
    unsigned int ND29 : 1;
    unsigned int ND30 : 1;
    unsigned int ND31 : 1;
} Ifx_ERAY_NDAT1_Bits;


typedef struct _Ifx_ERAY_NDAT2_Bits
{
    unsigned int ND32 : 1;
    unsigned int ND33 : 1;
    unsigned int ND34 : 1;
    unsigned int ND35 : 1;
    unsigned int ND36 : 1;
    unsigned int ND37 : 1;
    unsigned int ND38 : 1;
    unsigned int ND39 : 1;
    unsigned int ND40 : 1;
    unsigned int ND41 : 1;
    unsigned int ND42 : 1;
    unsigned int ND43 : 1;
    unsigned int ND44 : 1;
    unsigned int ND45 : 1;
    unsigned int ND46 : 1;
    unsigned int ND47 : 1;
    unsigned int ND48 : 1;
    unsigned int ND49 : 1;
    unsigned int ND50 : 1;
    unsigned int ND51 : 1;
    unsigned int ND52 : 1;
    unsigned int ND53 : 1;
    unsigned int ND54 : 1;
    unsigned int ND55 : 1;
    unsigned int ND56 : 1;
    unsigned int ND57 : 1;
    unsigned int ND58 : 1;
    unsigned int ND59 : 1;
    unsigned int ND60 : 1;
    unsigned int ND61 : 1;
    unsigned int ND62 : 1;
    unsigned int ND63 : 1;
} Ifx_ERAY_NDAT2_Bits;


typedef struct _Ifx_ERAY_NDAT3_Bits
{
    unsigned int ND64 : 1;
    unsigned int ND65 : 1;
    unsigned int ND66 : 1;
    unsigned int ND67 : 1;
    unsigned int ND68 : 1;
    unsigned int ND69 : 1;
    unsigned int ND70 : 1;
    unsigned int ND71 : 1;
    unsigned int ND72 : 1;
    unsigned int ND73 : 1;
    unsigned int ND74 : 1;
    unsigned int ND75 : 1;
    unsigned int ND76 : 1;
    unsigned int ND77 : 1;
    unsigned int ND78 : 1;
    unsigned int ND79 : 1;
    unsigned int ND80 : 1;
    unsigned int ND81 : 1;
    unsigned int ND82 : 1;
    unsigned int ND83 : 1;
    unsigned int ND84 : 1;
    unsigned int ND85 : 1;
    unsigned int ND86 : 1;
    unsigned int ND87 : 1;
    unsigned int ND88 : 1;
    unsigned int ND89 : 1;
    unsigned int ND90 : 1;
    unsigned int ND91 : 1;
    unsigned int ND92 : 1;
    unsigned int ND93 : 1;
    unsigned int ND94 : 1;
    unsigned int ND95 : 1;
} Ifx_ERAY_NDAT3_Bits;


typedef struct _Ifx_ERAY_NDAT4_Bits
{
    unsigned int ND96 : 1;
    unsigned int ND97 : 1;
    unsigned int ND98 : 1;
    unsigned int ND99 : 1;
    unsigned int ND100 : 1;
    unsigned int ND101 : 1;
    unsigned int ND102 : 1;
    unsigned int ND103 : 1;
    unsigned int ND104 : 1;
    unsigned int ND105 : 1;
    unsigned int ND106 : 1;
    unsigned int ND107 : 1;
    unsigned int ND108 : 1;
    unsigned int ND109 : 1;
    unsigned int ND110 : 1;
    unsigned int ND111 : 1;
    unsigned int ND112 : 1;
    unsigned int ND113 : 1;
    unsigned int ND114 : 1;
    unsigned int ND115 : 1;
    unsigned int ND116 : 1;
    unsigned int ND117 : 1;
    unsigned int ND118 : 1;
    unsigned int ND119 : 1;
    unsigned int ND120 : 1;
    unsigned int ND121 : 1;
    unsigned int ND122 : 1;
    unsigned int ND123 : 1;
    unsigned int ND124 : 1;
    unsigned int ND125 : 1;
    unsigned int ND126 : 1;
    unsigned int ND127 : 1;
} Ifx_ERAY_NDAT4_Bits;


typedef struct _Ifx_ERAY_NDIC1_Bits
{
    unsigned int NDIP0 : 1;
    unsigned int NDIP1 : 1;
    unsigned int NDIP2 : 1;
    unsigned int NDIP3 : 1;
    unsigned int NDIP4 : 1;
    unsigned int NDIP5 : 1;
    unsigned int NDIP6 : 1;
    unsigned int NDIP7 : 1;
    unsigned int NDIP8 : 1;
    unsigned int NDIP9 : 1;
    unsigned int NDIP10 : 1;
    unsigned int NDIP11 : 1;
    unsigned int NDIP12 : 1;
    unsigned int NDIP13 : 1;
    unsigned int NDIP14 : 1;
    unsigned int NDIP15 : 1;
    unsigned int NDIP16 : 1;
    unsigned int NDIP17 : 1;
    unsigned int NDIP18 : 1;
    unsigned int NDIP19 : 1;
    unsigned int NDIP20 : 1;
    unsigned int NDIP21 : 1;
    unsigned int NDIP22 : 1;
    unsigned int NDIP23 : 1;
    unsigned int NDIP24 : 1;
    unsigned int NDIP25 : 1;
    unsigned int NDIP26 : 1;
    unsigned int NDIP27 : 1;
    unsigned int NDIP28 : 1;
    unsigned int NDIP29 : 1;
    unsigned int NDIP30 : 1;
    unsigned int NDIP31 : 1;
} Ifx_ERAY_NDIC1_Bits;


typedef struct _Ifx_ERAY_NDIC2_Bits
{
    unsigned int NDIP32 : 1;
    unsigned int NDIP33 : 1;
    unsigned int NDIP34 : 1;
    unsigned int NDIP35 : 1;
    unsigned int NDIP36 : 1;
    unsigned int NDIP37 : 1;
    unsigned int NDIP38 : 1;
    unsigned int NDIP39 : 1;
    unsigned int NDIP40 : 1;
    unsigned int NDIP41 : 1;
    unsigned int NDIP42 : 1;
    unsigned int NDIP43 : 1;
    unsigned int NDIP44 : 1;
    unsigned int NDIP45 : 1;
    unsigned int NDIP46 : 1;
    unsigned int NDIP47 : 1;
    unsigned int NDIP48 : 1;
    unsigned int NDIP49 : 1;
    unsigned int NDIP50 : 1;
    unsigned int NDIP51 : 1;
    unsigned int NDIP52 : 1;
    unsigned int NDIP53 : 1;
    unsigned int NDIP54 : 1;
    unsigned int NDIP55 : 1;
    unsigned int NDIP56 : 1;
    unsigned int NDIP57 : 1;
    unsigned int NDIP58 : 1;
    unsigned int NDIP59 : 1;
    unsigned int NDIP60 : 1;
    unsigned int NDIP61 : 1;
    unsigned int NDIP62 : 1;
    unsigned int NDIP63 : 1;
} Ifx_ERAY_NDIC2_Bits;


typedef struct _Ifx_ERAY_NDIC3_Bits
{
    unsigned int NDIP64 : 1;
    unsigned int NDIP65 : 1;
    unsigned int NDIP66 : 1;
    unsigned int NDIP67 : 1;
    unsigned int NDIP68 : 1;
    unsigned int NDIP69 : 1;
    unsigned int NDIP70 : 1;
    unsigned int NDIP71 : 1;
    unsigned int NDIP72 : 1;
    unsigned int NDIP73 : 1;
    unsigned int NDIP74 : 1;
    unsigned int NDIP75 : 1;
    unsigned int NDIP76 : 1;
    unsigned int NDIP77 : 1;
    unsigned int NDIP78 : 1;
    unsigned int NDIP79 : 1;
    unsigned int NDIP80 : 1;
    unsigned int NDIP81 : 1;
    unsigned int NDIP82 : 1;
    unsigned int NDIP83 : 1;
    unsigned int NDIP84 : 1;
    unsigned int NDIP85 : 1;
    unsigned int NDIP86 : 1;
    unsigned int NDIP87 : 1;
    unsigned int NDIP88 : 1;
    unsigned int NDIP89 : 1;
    unsigned int NDIP90 : 1;
    unsigned int NDIP91 : 1;
    unsigned int NDIP92 : 1;
    unsigned int NDIP93 : 1;
    unsigned int NDIP94 : 1;
    unsigned int NDIP95 : 1;
} Ifx_ERAY_NDIC3_Bits;


typedef struct _Ifx_ERAY_NDIC4_Bits
{
    unsigned int NDIP96 : 1;
    unsigned int NDIP97 : 1;
    unsigned int NDIP98 : 1;
    unsigned int NDIP99 : 1;
    unsigned int NDIP100 : 1;
    unsigned int NDIP101 : 1;
    unsigned int NDIP102 : 1;
    unsigned int NDIP103 : 1;
    unsigned int NDIP104 : 1;
    unsigned int NDIP105 : 1;
    unsigned int NDIP106 : 1;
    unsigned int NDIP107 : 1;
    unsigned int NDIP108 : 1;
    unsigned int NDIP109 : 1;
    unsigned int NDIP110 : 1;
    unsigned int NDIP111 : 1;
    unsigned int NDIP112 : 1;
    unsigned int NDIP113 : 1;
    unsigned int NDIP114 : 1;
    unsigned int NDIP115 : 1;
    unsigned int NDIP116 : 1;
    unsigned int NDIP117 : 1;
    unsigned int NDIP118 : 1;
    unsigned int NDIP119 : 1;
    unsigned int NDIP120 : 1;
    unsigned int NDIP121 : 1;
    unsigned int NDIP122 : 1;
    unsigned int NDIP123 : 1;
    unsigned int NDIP124 : 1;
    unsigned int NDIP125 : 1;
    unsigned int NDIP126 : 1;
    unsigned int NDIP127 : 1;
} Ifx_ERAY_NDIC4_Bits;


typedef struct _Ifx_ERAY_NEMC_Bits
{
    unsigned int NML : 4;
    unsigned int reserved_4 : 28;
} Ifx_ERAY_NEMC_Bits;


typedef struct _Ifx_ERAY_NMV_Bits
{
    unsigned int NM : 32;
} Ifx_ERAY_NMV_Bits;


typedef struct _Ifx_ERAY_OBCM_Bits
{
    unsigned int RHSS : 1;
    unsigned int RDSS : 1;
    unsigned int reserved_2 : 14;
    unsigned int RHSH : 1;
    unsigned int RDSH : 1;
    unsigned int reserved_18 : 14;
} Ifx_ERAY_OBCM_Bits;


typedef struct _Ifx_ERAY_OBCR_Bits
{
    unsigned int OBRS : 7;
    unsigned int reserved_7 : 1;
    unsigned int VIEW : 1;
    unsigned int REQ : 1;
    unsigned int reserved_10 : 5;
    unsigned int OBSYS : 1;
    unsigned int OBRH : 7;
    unsigned int reserved_23 : 9;
} Ifx_ERAY_OBCR_Bits;


typedef struct _Ifx_ERAY_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_OCS_Bits;


typedef struct _Ifx_ERAY_OCV_Bits
{
    unsigned int OCV : 19;
    unsigned int reserved_19 : 13;
} Ifx_ERAY_OCV_Bits;


typedef struct _Ifx_ERAY_OSID_Bits
{
    unsigned int OID : 10;
    unsigned int reserved_10 : 4;
    unsigned int RXOA : 1;
    unsigned int RXOB : 1;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_OSID_Bits;


typedef struct _Ifx_ERAY_OTSS_Bits
{
    unsigned int OTGB0 : 2;
    unsigned int reserved_2 : 6;
    unsigned int OTGB1 : 2;
    unsigned int reserved_10 : 6;
    unsigned int OTGB2 : 1;
    unsigned int reserved_17 : 15;
} Ifx_ERAY_OTSS_Bits;


typedef struct _Ifx_ERAY_PRTC1_Bits
{
    unsigned int TSST : 4;
    unsigned int CASM : 7;
    unsigned int reserved_11 : 1;
    unsigned int SPP : 2;
    unsigned int BRP : 2;
    unsigned int RXW : 9;
    unsigned int reserved_25 : 1;
    unsigned int RWP : 6;
} Ifx_ERAY_PRTC1_Bits;


typedef struct _Ifx_ERAY_PRTC2_Bits
{
    unsigned int RXI : 6;
    unsigned int reserved_6 : 2;
    unsigned int RXL : 6;
    unsigned int reserved_14 : 2;
    unsigned int TXI : 8;
    unsigned int TXL : 6;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_PRTC2_Bits;


typedef struct _Ifx_ERAY_RCV_Bits
{
    unsigned int RCV : 12;
    unsigned int reserved_12 : 20;
} Ifx_ERAY_RCV_Bits;


typedef struct _Ifx_ERAY_RDDS_Bits
{
    unsigned int MDRB0 : 8;
    unsigned int MDRB1 : 8;
    unsigned int MDRB2 : 8;
    unsigned int MDRB3 : 8;
} Ifx_ERAY_RDDS_Bits;


typedef struct _Ifx_ERAY_RDHS1_Bits
{
    unsigned int FID : 11;
    unsigned int reserved_11 : 5;
    unsigned int CYC : 7;
    unsigned int reserved_23 : 1;
    unsigned int CHA : 1;
    unsigned int CHB : 1;
    unsigned int CFG : 1;
    unsigned int PPIT : 1;
    unsigned int TXM : 1;
    unsigned int MBI : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_RDHS1_Bits;


typedef struct _Ifx_ERAY_RDHS2_Bits
{
    unsigned int CRC : 11;
    unsigned int reserved_11 : 5;
    unsigned int PLC : 7;
    unsigned int reserved_23 : 1;
    unsigned int PLR : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_RDHS2_Bits;


typedef struct _Ifx_ERAY_RDHS3_Bits
{
    unsigned int DP : 11;
    unsigned int reserved_11 : 5;
    unsigned int RCC : 6;
    unsigned int reserved_22 : 2;
    unsigned int RCI : 1;
    unsigned int SFI : 1;
    unsigned int SYN : 1;
    unsigned int NFI : 1;
    unsigned int PPI : 1;
    unsigned int RES : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_RDHS3_Bits;


typedef struct _Ifx_ERAY_SCV_Bits
{
    unsigned int SCCA : 11;
    unsigned int reserved_11 : 5;
    unsigned int SCCB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_SCV_Bits;


typedef struct _Ifx_ERAY_SFS_Bits
{
    unsigned int VSAE : 4;
    unsigned int VSAO : 4;
    unsigned int VSBE : 4;
    unsigned int VSBO : 4;
    unsigned int MOCS : 1;
    unsigned int OCLR : 1;
    unsigned int MRCS : 1;
    unsigned int RCLR : 1;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_SFS_Bits;


typedef struct _Ifx_ERAY_SIER_Bits
{
    unsigned int WSTE : 1;
    unsigned int CASE : 1;
    unsigned int CYCSE : 1;
    unsigned int TXIE : 1;
    unsigned int RXIE : 1;
    unsigned int RFNEE : 1;
    unsigned int RFCLE : 1;
    unsigned int NMVCE : 1;
    unsigned int TI0E : 1;
    unsigned int TI1E : 1;
    unsigned int TIBCE : 1;
    unsigned int TOBCE : 1;
    unsigned int SWEE : 1;
    unsigned int SUCSE : 1;
    unsigned int MBSIE : 1;
    unsigned int SDSE : 1;
    unsigned int WUPAE : 1;
    unsigned int MTSAE : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBE : 1;
    unsigned int MTSBE : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIER_Bits;


typedef struct _Ifx_ERAY_SIES_Bits
{
    unsigned int WSTE : 1;
    unsigned int CASE : 1;
    unsigned int CYCSE : 1;
    unsigned int TXIE : 1;
    unsigned int RXIE : 1;
    unsigned int RFNEE : 1;
    unsigned int RFCLE : 1;
    unsigned int NMVCE : 1;
    unsigned int TI0E : 1;
    unsigned int TI1E : 1;
    unsigned int TIBCE : 1;
    unsigned int TOBCE : 1;
    unsigned int SWEE : 1;
    unsigned int SUCSE : 1;
    unsigned int MBSIE : 1;
    unsigned int SDSE : 1;
    unsigned int WUPAE : 1;
    unsigned int MTSAE : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBE : 1;
    unsigned int MTSBE : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIES_Bits;


typedef struct _Ifx_ERAY_SILS_Bits
{
    unsigned int WSTL : 1;
    unsigned int CASL : 1;
    unsigned int CYCSL : 1;
    unsigned int TXIL : 1;
    unsigned int RXIL : 1;
    unsigned int RFNEL : 1;
    unsigned int RFCLL : 1;
    unsigned int NMVCL : 1;
    unsigned int TI0L : 1;
    unsigned int TI1L : 1;
    unsigned int TIBCL : 1;
    unsigned int TOBCL : 1;
    unsigned int SWEL : 1;
    unsigned int SUCSL : 1;
    unsigned int MBSIL : 1;
    unsigned int SDSL : 1;
    unsigned int WUPAL : 1;
    unsigned int MTSAL : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBL : 1;
    unsigned int MTSBL : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SILS_Bits;


typedef struct _Ifx_ERAY_SIR_Bits
{
    unsigned int WST : 1;
    unsigned int CAS : 1;
    unsigned int CYCS : 1;
    unsigned int TXI : 1;
    unsigned int RXI : 1;
    unsigned int RFNE : 1;
    unsigned int RFCL : 1;
    unsigned int NMVC : 1;
    unsigned int TI0 : 1;
    unsigned int TI1 : 1;
    unsigned int TIBC : 1;
    unsigned int TOBC : 1;
    unsigned int SWE : 1;
    unsigned int SUCS : 1;
    unsigned int MBSI : 1;
    unsigned int SDS : 1;
    unsigned int WUPA : 1;
    unsigned int MTSA : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPB : 1;
    unsigned int MTSB : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIR_Bits;


typedef struct _Ifx_ERAY_STPW1_Bits
{
    unsigned int ESWT : 1;
    unsigned int SWMS : 1;
    unsigned int EDGE : 1;
    unsigned int SSWT : 1;
    unsigned int EETP : 1;
    unsigned int EINT0 : 1;
    unsigned int EINT1 : 1;
    unsigned int reserved_7 : 1;
    unsigned int SCCV : 6;
    unsigned int reserved_14 : 2;
    unsigned int SMTV : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_STPW1_Bits;


typedef struct _Ifx_ERAY_STPW2_Bits
{
    unsigned int SSCVA : 11;
    unsigned int reserved_11 : 5;
    unsigned int SSCVB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_STPW2_Bits;


typedef struct _Ifx_ERAY_SUCC1_Bits
{
    unsigned int CMD : 4;
    unsigned int reserved_4 : 3;
    unsigned int PBSY : 1;
    unsigned int TXST : 1;
    unsigned int TXSY : 1;
    unsigned int reserved_10 : 1;
    unsigned int CSA : 5;
    unsigned int PTA : 5;
    unsigned int WUCS : 1;
    unsigned int TSM : 1;
    unsigned int HCSE : 1;
    unsigned int MTSA : 1;
    unsigned int MTSB : 1;
    unsigned int CCHA : 1;
    unsigned int CCHB : 1;
    unsigned int reserved_28 : 4;
} Ifx_ERAY_SUCC1_Bits;


typedef struct _Ifx_ERAY_SUCC2_Bits
{
    unsigned int LT : 21;
    unsigned int reserved_21 : 3;
    unsigned int LTN : 4;
    unsigned int reserved_28 : 4;
} Ifx_ERAY_SUCC2_Bits;


typedef struct _Ifx_ERAY_SUCC3_Bits
{
    unsigned int WCP : 4;
    unsigned int WCF : 4;
    unsigned int reserved_8 : 24;
} Ifx_ERAY_SUCC3_Bits;


typedef struct _Ifx_ERAY_SWNIT_Bits
{
    unsigned int SESA : 1;
    unsigned int SBSA : 1;
    unsigned int TCSA : 1;
    unsigned int SESB : 1;
    unsigned int SBSB : 1;
    unsigned int TCSB : 1;
    unsigned int MTSA : 1;
    unsigned int MTSB : 1;
    unsigned int SENA : 1;
    unsigned int SBNA : 1;
    unsigned int SENB : 1;
    unsigned int SBNB : 1;
    unsigned int reserved_12 : 20;
} Ifx_ERAY_SWNIT_Bits;


typedef struct _Ifx_ERAY_T0C_Bits
{
    unsigned int T0RC : 1;
    unsigned int T0MS : 1;
    unsigned int reserved_2 : 6;
    unsigned int T0CC : 7;
    unsigned int reserved_15 : 1;
    unsigned int T0MO : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_T0C_Bits;


typedef struct _Ifx_ERAY_T1C_Bits
{
    unsigned int T1RC : 1;
    unsigned int T1MS : 1;
    unsigned int reserved_2 : 14;
    unsigned int T1MC : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_T1C_Bits;


typedef struct _Ifx_ERAY_TEST1_Bits
{
    unsigned int WRTEN : 1;
    unsigned int ELBE : 1;
    unsigned int reserved_2 : 2;
    unsigned int TMC : 2;
    unsigned int reserved_6 : 2;
    unsigned int AOA : 1;
    unsigned int AOB : 1;
    unsigned int reserved_10 : 6;
    unsigned int RXA : 1;
    unsigned int RXB : 1;
    unsigned int TXA : 1;
    unsigned int TXB : 1;
    unsigned int TXENA : 1;
    unsigned int TXENB : 1;
    unsigned int reserved_22 : 2;
    unsigned int CERA : 4;
    unsigned int CERB : 4;
} Ifx_ERAY_TEST1_Bits;


typedef struct _Ifx_ERAY_TEST2_Bits
{
    unsigned int RS : 3;
    unsigned int reserved_3 : 1;
    unsigned int SSEL : 3;
    unsigned int reserved_7 : 7;
    unsigned int WRECC : 1;
    unsigned int reserved_15 : 17;
} Ifx_ERAY_TEST2_Bits;


typedef struct _Ifx_ERAY_TXRQ1_Bits
{
    unsigned int TXR0 : 1;
    unsigned int TXR1 : 1;
    unsigned int TXR2 : 1;
    unsigned int TXR3 : 1;
    unsigned int TXR4 : 1;
    unsigned int TXR5 : 1;
    unsigned int TXR6 : 1;
    unsigned int TXR7 : 1;
    unsigned int TXR8 : 1;
    unsigned int TXR9 : 1;
    unsigned int TXR10 : 1;
    unsigned int TXR11 : 1;
    unsigned int TXR12 : 1;
    unsigned int TXR13 : 1;
    unsigned int TXR14 : 1;
    unsigned int TXR15 : 1;
    unsigned int TXR16 : 1;
    unsigned int TXR17 : 1;
    unsigned int TXR18 : 1;
    unsigned int TXR19 : 1;
    unsigned int TXR20 : 1;
    unsigned int TXR21 : 1;
    unsigned int TXR22 : 1;
    unsigned int TXR23 : 1;
    unsigned int TXR24 : 1;
    unsigned int TXR25 : 1;
    unsigned int TXR26 : 1;
    unsigned int TXR27 : 1;
    unsigned int TXR28 : 1;
    unsigned int TXR29 : 1;
    unsigned int TXR30 : 1;
    unsigned int TXR31 : 1;
} Ifx_ERAY_TXRQ1_Bits;


typedef struct _Ifx_ERAY_TXRQ2_Bits
{
    unsigned int TXR32 : 1;
    unsigned int TXR33 : 1;
    unsigned int TXR34 : 1;
    unsigned int TXR35 : 1;
    unsigned int TXR36 : 1;
    unsigned int TXR37 : 1;
    unsigned int TXR38 : 1;
    unsigned int TXR39 : 1;
    unsigned int TXR40 : 1;
    unsigned int TXR41 : 1;
    unsigned int TXR42 : 1;
    unsigned int TXR43 : 1;
    unsigned int TXR44 : 1;
    unsigned int TXR45 : 1;
    unsigned int TXR46 : 1;
    unsigned int TXR47 : 1;
    unsigned int TXR48 : 1;
    unsigned int TXR49 : 1;
    unsigned int TXR50 : 1;
    unsigned int TXR51 : 1;
    unsigned int TXR52 : 1;
    unsigned int TXR53 : 1;
    unsigned int TXR54 : 1;
    unsigned int TXR55 : 1;
    unsigned int TXR56 : 1;
    unsigned int TXR57 : 1;
    unsigned int TXR58 : 1;
    unsigned int TXR59 : 1;
    unsigned int TXR60 : 1;
    unsigned int TXR61 : 1;
    unsigned int TXR62 : 1;
    unsigned int TXR63 : 1;
} Ifx_ERAY_TXRQ2_Bits;


typedef struct _Ifx_ERAY_TXRQ3_Bits
{
    unsigned int TXR64 : 1;
    unsigned int TXR65 : 1;
    unsigned int TXR66 : 1;
    unsigned int TXR67 : 1;
    unsigned int TXR68 : 1;
    unsigned int TXR69 : 1;
    unsigned int TXR70 : 1;
    unsigned int TXR71 : 1;
    unsigned int TXR72 : 1;
    unsigned int TXR73 : 1;
    unsigned int TXR74 : 1;
    unsigned int TXR75 : 1;
    unsigned int TXR76 : 1;
    unsigned int TXR77 : 1;
    unsigned int TXR78 : 1;
    unsigned int TXR79 : 1;
    unsigned int TXR80 : 1;
    unsigned int TXR81 : 1;
    unsigned int TXR82 : 1;
    unsigned int TXR83 : 1;
    unsigned int TXR84 : 1;
    unsigned int TXR85 : 1;
    unsigned int TXR86 : 1;
    unsigned int TXR87 : 1;
    unsigned int TXR88 : 1;
    unsigned int TXR89 : 1;
    unsigned int TXR90 : 1;
    unsigned int TXR91 : 1;
    unsigned int TXR92 : 1;
    unsigned int TXR93 : 1;
    unsigned int TXR94 : 1;
    unsigned int TXR95 : 1;
} Ifx_ERAY_TXRQ3_Bits;


typedef struct _Ifx_ERAY_TXRQ4_Bits
{
    unsigned int TXR96 : 1;
    unsigned int TXR97 : 1;
    unsigned int TXR98 : 1;
    unsigned int TXR99 : 1;
    unsigned int TXR100 : 1;
    unsigned int TXR101 : 1;
    unsigned int TXR102 : 1;
    unsigned int TXR103 : 1;
    unsigned int TXR104 : 1;
    unsigned int TXR105 : 1;
    unsigned int TXR106 : 1;
    unsigned int TXR107 : 1;
    unsigned int TXR108 : 1;
    unsigned int TXR109 : 1;
    unsigned int TXR110 : 1;
    unsigned int TXR111 : 1;
    unsigned int TXR112 : 1;
    unsigned int TXR113 : 1;
    unsigned int TXR114 : 1;
    unsigned int TXR115 : 1;
    unsigned int TXR116 : 1;
    unsigned int TXR117 : 1;
    unsigned int TXR118 : 1;
    unsigned int TXR119 : 1;
    unsigned int TXR120 : 1;
    unsigned int TXR121 : 1;
    unsigned int TXR122 : 1;
    unsigned int TXR123 : 1;
    unsigned int TXR124 : 1;
    unsigned int TXR125 : 1;
    unsigned int TXR126 : 1;
    unsigned int TXR127 : 1;
} Ifx_ERAY_TXRQ4_Bits;


typedef struct _Ifx_ERAY_WRDS_Bits
{
    unsigned int MDWB0 : 8;
    unsigned int MDWB1 : 8;
    unsigned int MDWB2 : 8;
    unsigned int MDWB3 : 8;
} Ifx_ERAY_WRDS_Bits;


typedef struct _Ifx_ERAY_WRHS1_Bits
{
    unsigned int FID : 11;
    unsigned int reserved_11 : 5;
    unsigned int CYC : 7;
    unsigned int reserved_23 : 1;
    unsigned int CHA : 1;
    unsigned int CHB : 1;
    unsigned int CFG : 1;
    unsigned int PPIT : 1;
    unsigned int TXM : 1;
    unsigned int MBI : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_WRHS1_Bits;


typedef struct _Ifx_ERAY_WRHS2_Bits
{
    unsigned int CRC : 11;
    unsigned int reserved_11 : 5;
    unsigned int PLC : 7;
    unsigned int reserved_23 : 9;
} Ifx_ERAY_WRHS2_Bits;


typedef struct _Ifx_ERAY_WRHS3_Bits
{
    unsigned int DP : 11;
    unsigned int reserved_11 : 21;
} Ifx_ERAY_WRHS3_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ACCEN0_Bits B;
} Ifx_ERAY_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ACCEN1_Bits B;
} Ifx_ERAY_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ACS_Bits B;
} Ifx_ERAY_ACS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CCEV_Bits B;
} Ifx_ERAY_CCEV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CCSV_Bits B;
} Ifx_ERAY_CCSV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CLC_Bits B;
} Ifx_ERAY_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CREL_Bits B;
} Ifx_ERAY_CREL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CUST1_Bits B;
} Ifx_ERAY_CUST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_CUST3_Bits B;
} Ifx_ERAY_CUST3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_EIER_Bits B;
} Ifx_ERAY_EIER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_EIES_Bits B;
} Ifx_ERAY_EIES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_EILS_Bits B;
} Ifx_ERAY_EILS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_EIR_Bits B;
} Ifx_ERAY_EIR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ENDN_Bits B;
} Ifx_ERAY_ENDN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ESID_Bits B;
} Ifx_ERAY_ESID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_FCL_Bits B;
} Ifx_ERAY_FCL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_FRF_Bits B;
} Ifx_ERAY_FRF;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_FRFM_Bits B;
} Ifx_ERAY_FRFM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_FSR_Bits B;
} Ifx_ERAY_FSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC01_Bits B;
} Ifx_ERAY_GTUC01;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC02_Bits B;
} Ifx_ERAY_GTUC02;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC03_Bits B;
} Ifx_ERAY_GTUC03;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC04_Bits B;
} Ifx_ERAY_GTUC04;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC05_Bits B;
} Ifx_ERAY_GTUC05;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC06_Bits B;
} Ifx_ERAY_GTUC06;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC07_Bits B;
} Ifx_ERAY_GTUC07;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC08_Bits B;
} Ifx_ERAY_GTUC08;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC09_Bits B;
} Ifx_ERAY_GTUC09;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC10_Bits B;
} Ifx_ERAY_GTUC10;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_GTUC11_Bits B;
} Ifx_ERAY_GTUC11;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_IBCM_Bits B;
} Ifx_ERAY_IBCM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_IBCR_Bits B;
} Ifx_ERAY_IBCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ID_Bits B;
} Ifx_ERAY_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_ILE_Bits B;
} Ifx_ERAY_ILE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_KRST0_Bits B;
} Ifx_ERAY_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_KRST1_Bits B;
} Ifx_ERAY_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_KRSTCLR_Bits B;
} Ifx_ERAY_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_LCK_Bits B;
} Ifx_ERAY_LCK;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_LDTS_Bits B;
} Ifx_ERAY_LDTS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MBS_Bits B;
} Ifx_ERAY_MBS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MBSC1_Bits B;
} Ifx_ERAY_MBSC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MBSC2_Bits B;
} Ifx_ERAY_MBSC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MBSC3_Bits B;
} Ifx_ERAY_MBSC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MBSC4_Bits B;
} Ifx_ERAY_MBSC4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MHDC_Bits B;
} Ifx_ERAY_MHDC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MHDF_Bits B;
} Ifx_ERAY_MHDF;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MHDS_Bits B;
} Ifx_ERAY_MHDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MRC_Bits B;
} Ifx_ERAY_MRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MSIC1_Bits B;
} Ifx_ERAY_MSIC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MSIC2_Bits B;
} Ifx_ERAY_MSIC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MSIC3_Bits B;
} Ifx_ERAY_MSIC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MSIC4_Bits B;
} Ifx_ERAY_MSIC4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_MTCCV_Bits B;
} Ifx_ERAY_MTCCV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDAT1_Bits B;
} Ifx_ERAY_NDAT1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDAT2_Bits B;
} Ifx_ERAY_NDAT2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDAT3_Bits B;
} Ifx_ERAY_NDAT3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDAT4_Bits B;
} Ifx_ERAY_NDAT4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDIC1_Bits B;
} Ifx_ERAY_NDIC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDIC2_Bits B;
} Ifx_ERAY_NDIC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDIC3_Bits B;
} Ifx_ERAY_NDIC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NDIC4_Bits B;
} Ifx_ERAY_NDIC4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NEMC_Bits B;
} Ifx_ERAY_NEMC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_NMV_Bits B;
} Ifx_ERAY_NMV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OBCM_Bits B;
} Ifx_ERAY_OBCM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OBCR_Bits B;
} Ifx_ERAY_OBCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OCS_Bits B;
} Ifx_ERAY_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OCV_Bits B;
} Ifx_ERAY_OCV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OSID_Bits B;
} Ifx_ERAY_OSID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_OTSS_Bits B;
} Ifx_ERAY_OTSS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_PRTC1_Bits B;
} Ifx_ERAY_PRTC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_PRTC2_Bits B;
} Ifx_ERAY_PRTC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_RCV_Bits B;
} Ifx_ERAY_RCV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_RDDS_Bits B;
} Ifx_ERAY_RDDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_RDHS1_Bits B;
} Ifx_ERAY_RDHS1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_RDHS2_Bits B;
} Ifx_ERAY_RDHS2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_RDHS3_Bits B;
} Ifx_ERAY_RDHS3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SCV_Bits B;
} Ifx_ERAY_SCV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SFS_Bits B;
} Ifx_ERAY_SFS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SIER_Bits B;
} Ifx_ERAY_SIER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SIES_Bits B;
} Ifx_ERAY_SIES;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SILS_Bits B;
} Ifx_ERAY_SILS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SIR_Bits B;
} Ifx_ERAY_SIR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_STPW1_Bits B;
} Ifx_ERAY_STPW1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_STPW2_Bits B;
} Ifx_ERAY_STPW2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SUCC1_Bits B;
} Ifx_ERAY_SUCC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SUCC2_Bits B;
} Ifx_ERAY_SUCC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SUCC3_Bits B;
} Ifx_ERAY_SUCC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_SWNIT_Bits B;
} Ifx_ERAY_SWNIT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_T0C_Bits B;
} Ifx_ERAY_T0C;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_T1C_Bits B;
} Ifx_ERAY_T1C;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TEST1_Bits B;
} Ifx_ERAY_TEST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TEST2_Bits B;
} Ifx_ERAY_TEST2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TXRQ1_Bits B;
} Ifx_ERAY_TXRQ1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TXRQ2_Bits B;
} Ifx_ERAY_TXRQ2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TXRQ3_Bits B;
} Ifx_ERAY_TXRQ3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_TXRQ4_Bits B;
} Ifx_ERAY_TXRQ4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_WRDS_Bits B;
} Ifx_ERAY_WRDS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_WRHS1_Bits B;
} Ifx_ERAY_WRHS1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_WRHS2_Bits B;
} Ifx_ERAY_WRHS2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_ERAY_WRHS3_Bits B;
} Ifx_ERAY_WRHS3;
# 2936 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h"
typedef volatile struct _Ifx_ERAY
{
    Ifx_ERAY_CLC CLC;
    Ifx_ERAY_CUST1 CUST1;
    Ifx_ERAY_ID ID;
    Ifx_ERAY_CUST3 CUST3;
    Ifx_ERAY_TEST1 TEST1;
    Ifx_ERAY_TEST2 TEST2;
    unsigned char reserved_18[4];
    Ifx_ERAY_LCK LCK;
    Ifx_ERAY_EIR EIR;
    Ifx_ERAY_SIR SIR;
    Ifx_ERAY_EILS EILS;
    Ifx_ERAY_SILS SILS;
    Ifx_ERAY_EIES EIES;
    Ifx_ERAY_EIER EIER;
    Ifx_ERAY_SIES SIES;
    Ifx_ERAY_SIER SIER;
    Ifx_ERAY_ILE ILE;
    Ifx_ERAY_T0C T0C;
    Ifx_ERAY_T1C T1C;
    Ifx_ERAY_STPW1 STPW1;
    Ifx_ERAY_STPW2 STPW2;
    unsigned char reserved_54[44];
    Ifx_ERAY_SUCC1 SUCC1;
    Ifx_ERAY_SUCC2 SUCC2;
    Ifx_ERAY_SUCC3 SUCC3;
    Ifx_ERAY_NEMC NEMC;
    Ifx_ERAY_PRTC1 PRTC1;
    Ifx_ERAY_PRTC2 PRTC2;
    Ifx_ERAY_MHDC MHDC;
    unsigned char reserved_9C[4];
    Ifx_ERAY_GTUC01 GTUC01;
    Ifx_ERAY_GTUC02 GTUC02;
    Ifx_ERAY_GTUC03 GTUC03;
    Ifx_ERAY_GTUC04 GTUC04;
    Ifx_ERAY_GTUC05 GTUC05;
    Ifx_ERAY_GTUC06 GTUC06;
    Ifx_ERAY_GTUC07 GTUC07;
    Ifx_ERAY_GTUC08 GTUC08;
    Ifx_ERAY_GTUC09 GTUC09;
    Ifx_ERAY_GTUC10 GTUC10;
    Ifx_ERAY_GTUC11 GTUC11;
    unsigned char reserved_CC[52];
    Ifx_ERAY_CCSV CCSV;
    Ifx_ERAY_CCEV CCEV;
    unsigned char reserved_108[8];
    Ifx_ERAY_SCV SCV;
    Ifx_ERAY_MTCCV MTCCV;
    Ifx_ERAY_RCV RCV;
    Ifx_ERAY_OCV OCV;
    Ifx_ERAY_SFS SFS;
    Ifx_ERAY_SWNIT SWNIT;
    Ifx_ERAY_ACS ACS;
    unsigned char reserved_12C[4];
    Ifx_ERAY_ESID ESID_1S[15];
    unsigned char reserved_16C[4];
    Ifx_ERAY_OSID OSID_1S[15];
    unsigned char reserved_1AC[4];
    Ifx_ERAY_NMV NMV_1S[3];
    unsigned char reserved_1BC[324];
    Ifx_ERAY_MRC MRC;
    Ifx_ERAY_FRF FRF;
    Ifx_ERAY_FRFM FRFM;
    Ifx_ERAY_FCL FCL;
    Ifx_ERAY_MHDS MHDS;
    Ifx_ERAY_LDTS LDTS;
    Ifx_ERAY_FSR FSR;
    Ifx_ERAY_MHDF MHDF;
    Ifx_ERAY_TXRQ1 TXRQ1;
    Ifx_ERAY_TXRQ2 TXRQ2;
    Ifx_ERAY_TXRQ3 TXRQ3;
    Ifx_ERAY_TXRQ4 TXRQ4;
    Ifx_ERAY_NDAT1 NDAT1;
    Ifx_ERAY_NDAT2 NDAT2;
    Ifx_ERAY_NDAT3 NDAT3;
    Ifx_ERAY_NDAT4 NDAT4;
    Ifx_ERAY_MBSC1 MBSC1;
    Ifx_ERAY_MBSC2 MBSC2;
    Ifx_ERAY_MBSC3 MBSC3;
    Ifx_ERAY_MBSC4 MBSC4;
    unsigned char reserved_350[88];
    Ifx_ERAY_NDIC1 NDIC1;
    Ifx_ERAY_NDIC2 NDIC2;
    Ifx_ERAY_NDIC3 NDIC3;
    Ifx_ERAY_NDIC4 NDIC4;
    Ifx_ERAY_MSIC1 MSIC1;
    Ifx_ERAY_MSIC2 MSIC2;
    Ifx_ERAY_MSIC3 MSIC3;
    Ifx_ERAY_MSIC4 MSIC4;
    unsigned char reserved_3C8[40];
    Ifx_ERAY_CREL CREL;
    Ifx_ERAY_ENDN ENDN;
    unsigned char reserved_3F8[8];
    Ifx_ERAY_WRDS WRDS_1S[64];
    Ifx_ERAY_WRHS1 WRHS1;
    Ifx_ERAY_WRHS2 WRHS2;
    Ifx_ERAY_WRHS3 WRHS3;
    unsigned char reserved_50C[4];
    Ifx_ERAY_IBCM IBCM;
    Ifx_ERAY_IBCR IBCR;
    unsigned char reserved_518[232];
    Ifx_ERAY_RDDS RDDS_1S[64];
    Ifx_ERAY_RDHS1 RDHS1;
    Ifx_ERAY_RDHS2 RDHS2;
    Ifx_ERAY_RDHS3 RDHS3;
    Ifx_ERAY_MBS MBS;
    Ifx_ERAY_OBCM OBCM;
    Ifx_ERAY_OBCR OBCR;
    unsigned char reserved_718[344];
    Ifx_ERAY_OTSS OTSS;
    unsigned char reserved_874[116];
    Ifx_ERAY_OCS OCS;
    Ifx_ERAY_KRSTCLR KRSTCLR;
    Ifx_ERAY_KRST1 KRST1;
    Ifx_ERAY_KRST0 KRST0;
    Ifx_ERAY_ACCEN1 ACCEN1;
    Ifx_ERAY_ACCEN0 ACCEN0;
    unsigned char reserved_900[1792];
} Ifx_ERAY;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2







typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEray_Rxd_In;


typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEray_Txd_Out;


typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEray_Txen_Out;

extern IfxEray_Rxd_In IfxEray0_RXDA0_P14_8_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA1_P11_9_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA2_P02_1_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA3_P14_1_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB0_P14_7_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB1_P11_10_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB2_P02_3_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB3_P14_1_IN;
extern IfxEray_Txd_Out IfxEray0_TXDA_P02_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDA_P11_3_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDA_P14_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDA_P14_10_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P02_2_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P11_12_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P14_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P14_5_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENA_P02_4_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENA_P11_6_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENA_P14_9_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P02_5_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P11_11_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P11_6_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P14_6_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P14_9_OUT;
# 99 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
extern const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[1][2][4];


extern const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[1][2][4];


extern const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[1][2][5];
# 51 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 1
# 52 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 62 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
typedef enum
{
    IfxEray_Baudrate_10 = 0,
    IfxEray_Baudrate_5 = 1,
    IfxEray_Baudrate_2_5 = 2
} IfxEray_Baudrate;



typedef enum
{
    IfxEray_BufferDirection_receive = 0,
    IfxEray_BufferDirection_transmit = 1
} IfxEray_BufferDirection;



typedef enum
{
    IfxEray_Channel_a = 0,
    IfxEray_Channel_b = 1
} IfxEray_Channel;



typedef enum
{
    IfxEray_ClearErrorFlag_pemc = 1,
    IfxEray_ClearErrorFlag_cna = 2,
    IfxEray_ClearErrorFlag_sfbm = 4,
    IfxEray_ClearErrorFlag_sfo = 8,
    IfxEray_ClearErrorFlag_ccf = 16,
    IfxEray_ClearErrorFlag_ccl = 32,
    IfxEray_ClearErrorFlag_eerr = 64,
    IfxEray_ClearErrorFlag_rfo = 128,
    IfxEray_ClearErrorFlag_efa = 256,
    IfxEray_ClearErrorFlag_iiba = 512,
    IfxEray_ClearErrorFlag_ioba = 1024,
    IfxEray_ClearErrorFlag_mhf = 2048,
    IfxEray_ClearErrorFlag_eda = 65536,
    IfxEray_ClearErrorFlag_ltva = 131072,
    IfxEray_ClearErrorFlag_taba = 262144,
    IfxEray_ClearErrorFlag_edb = 16777216,
    IfxEray_ClearErrorFlag_ltvb = 33554432,
    IfxEray_ClearErrorFlag_tabb = 67108864
} IfxEray_ClearErrorFlag;



typedef enum
{
    IfxEray_ClearStatusFlag_wst = 1,
    IfxEray_ClearStatusFlag_cas = 2,
    IfxEray_ClearStatusFlag_cycs = 4,
    IfxEray_ClearStatusFlag_txi = 8,
    IfxEray_ClearStatusFlag_rxi = 16,
    IfxEray_ClearStatusFlag_rfne = 32,
    IfxEray_ClearStatusFlag_rfcl = 64,
    IfxEray_ClearStatusFlag_nmvc = 128,
    IfxEray_ClearStatusFlag_ti0 = 256,
    IfxEray_ClearStatusFlag_ti1 = 512,
    IfxEray_ClearStatusFlag_tibc = 1024,
    IfxEray_ClearStatusFlag_tobc = 2048,
    IfxEray_ClearStatusFlag_swe = 4096,
    IfxEray_ClearStatusFlag_sucs = 8192,
    IfxEray_ClearStatusFlag_mbsi = 16384,
    IfxEray_ClearStatusFlag_sds = 32768,
    IfxEray_ClearStatusFlag_wupa = 65536,
    IfxEray_ClearStatusFlag_mtsa = 131072,
    IfxEray_ClearStatusFlag_wupb = 16777216,
    IfxEray_ClearStatusFlag_mtsb = 33554432
} IfxEray_ClearStatusFlag;



typedef enum
{
    IfxEray_ClockDivider_none = 0,
    IfxEray_ClockDivider_1 = 1,
    IfxEray_ClockDivider_2,
    IfxEray_ClockDivider_3,
    IfxEray_ClockDivider_4,
    IfxEray_ClockDivider_5,
    IfxEray_ClockDivider_6,
    IfxEray_ClockDivider_7
} IfxEray_ClockDivider;



typedef enum
{
    IfxEray_ExternalOffset_noCorrection = 1,
    IfxEray_ExternalOffset_correctionSubtracted = 2,
    IfxEray_ExternalOffset_correctionAdded = 3
} IfxEray_ExternalOffset;



typedef enum
{
    IfxEray_ExternalOffsetCorrection_0 = 0,
    IfxEray_ExternalOffsetCorrection_1,
    IfxEray_ExternalOffsetCorrection_2,
    IfxEray_ExternalOffsetCorrection_3,
    IfxEray_ExternalOffsetCorrection_4,
    IfxEray_ExternalOffsetCorrection_5,
    IfxEray_ExternalOffsetCorrection_6,
    IfxEray_ExternalOffsetCorrection_7
} IfxEray_ExternalOffsetCorrection;



typedef enum
{
    IfxEray_ExternalRate_noCorrection = 1,
    IfxEray_ExternalRate_correctionSubtracted = 2,
    IfxEray_ExternalRate_correctionAdded = 3
} IfxEray_ExternalRate;



typedef enum
{
    IfxEray_ExternalRateCorrection_0 = 0,
    IfxEray_ExternalRateCorrection_1,
    IfxEray_ExternalRateCorrection_2,
    IfxEray_ExternalRateCorrection_3,
    IfxEray_ExternalRateCorrection_4,
    IfxEray_ExternalRateCorrection_5,
    IfxEray_ExternalRateCorrection_6,
    IfxEray_ExternalRateCorrection_7
} IfxEray_ExternalRateCorrection;



typedef enum
{
    IfxEray_IdleDynamicSlots_0 = 0,
    IfxEray_IdleDynamicSlots_1,
    IfxEray_IdleDynamicSlots_2
} IfxEray_IdleDynamicSlots;



typedef enum
{
    IfxEray_ListenTimeOutNoise_2 = 1,
    IfxEray_ListenTimeOutNoise_3,
    IfxEray_ListenTimeOutNoise_4,
    IfxEray_ListenTimeOutNoise_5,
    IfxEray_ListenTimeOutNoise_6,
    IfxEray_ListenTimeOutNoise_7,
    IfxEray_ListenTimeOutNoise_8,
    IfxEray_ListenTimeOutNoise_9,
    IfxEray_ListenTimeOutNoise_10,
    IfxEray_ListenTimeOutNoise_11,
    IfxEray_ListenTimeOutNoise_12,
    IfxEray_ListenTimeOutNoise_13,
    IfxEray_ListenTimeOutNoise_14,
    IfxEray_ListenTimeOutNoise_15,
    IfxEray_ListenTimeOutNoise_16
} IfxEray_ListenTimeOutNoise;



typedef enum
{
    IfxEray_MaxSynchFrames_2 = 2,
    IfxEray_MaxSynchFrames_3,
    IfxEray_MaxSynchFrames_4,
    IfxEray_MaxSynchFrames_5,
    IfxEray_MaxSynchFrames_6,
    IfxEray_MaxSynchFrames_7,
    IfxEray_MaxSynchFrames_8,
    IfxEray_MaxSynchFrames_9,
    IfxEray_MaxSynchFrames_10,
    IfxEray_MaxSynchFrames_11,
    IfxEray_MaxSynchFrames_12,
    IfxEray_MaxSynchFrames_13,
    IfxEray_MaxSynchFrames_14,
    IfxEray_MaxSynchFrames_15
} IfxEray_MaxSynchFrames;



typedef enum
{
    IfxEray_PocCommand_notAccepted = 0,
    IfxEray_PocCommand_config = 1,
    IfxEray_PocCommand_ready = 2,
    IfxEray_PocCommand_wakeup = 3,
    IfxEray_PocCommand_run = 4,
    IfxEray_PocCommand_allSlots = 5,
    IfxEray_PocCommand_halt = 6,
    IfxEray_PocCommand_freeze = 7,
    IfxEray_PocCommand_sendMts = 8,
    IfxEray_PocCommand_coldStart = 9,
    IfxEray_PocCommand_reset = 10,
    IfxEray_PocCommand_monitor = 11,
    IfxEray_PocCommand_clearRam = 12
} IfxEray_PocCommand;



typedef enum
{
    IfxEray_PocState_defaultConfig = 0,
    IfxEray_PocState_ready = 1,
    IfxEray_PocState_normalActive = 2,
    IfxEray_PocState_normalPassive = 3,
    IfxEray_PocState_halt = 4,
    IfxEray_PocState_monitor = 5,
    IfxEray_PocState_config = 15,
    IfxEray_PocState_wakeupStandby = 16,
    IfxEray_PocState_wakeupListen = 17,
    IfxEray_PocState_wakeupSend = 18,
    IfxEray_PocState_wakeupDetect = 19,
    IfxEray_PocState_startup = 32,
    IfxEray_PocState_coldStartListen = 33,
    IfxEray_PocState_collisionResolution = 34,
    IfxEray_PocState_consistencyCheck = 35,
    IfxEray_PocState_gap = 36,
    IfxEray_PocState_join = 37,
    IfxEray_PocState_integrationCheck = 38,
    IfxEray_PocState_integrationListen = 39,
    IfxEray_PocState_integrationConsistencyCheck = 40,
    IfxEray_PocState_initializeSchedule = 41,
    IfxEray_PocState_staruAborted = 42,
    IfxEray_PocState_startupSucced = 43
} IfxEray_PocState;



typedef enum
{
    IfxEray_ReceiveChannel_both = 0,
    IfxEray_ReceiveChannel_b = 1,
    IfxEray_ReceiveChannel_a = 2,
    IfxEray_ReceiveChannel_none = 3
} IfxEray_ReceiveChannel;




typedef enum
{
    IfxEray_SleepMode_enable = 0,
    IfxEray_SleepMode_disable = 1
} IfxEray_SleepMode;



typedef enum
{
    IfxEray_StrobePosition_5 = 0,
    IfxEray_StrobePosition_4 = 1,
    IfxEray_StrobePosition_6 = 2
} IfxEray_StrobePosition;



typedef enum
{
    IfxEray_TransmissionMode_continuous = 0,
    IfxEray_TransmissionMode_singleShot = 1
} IfxEray_TransmissionMode;



typedef enum
{
    IfxEray_TransmissionSlotMode_all = 0,
    IfxEray_TransmissionSlotMode_single = 1
} IfxEray_TransmissionSlotMode;



typedef enum
{
    IfxEray_WakeupChannel_a = 0,
    IfxEray_WakeupChannel_b = 1,
    IfxEray_WakeupChannel_none=2
} IfxEray_WakeupChannel;
# 356 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
typedef struct
{
    uint16 frameId;
    uint8 cycleCode;
    unsigned char channelAFiltered;
    unsigned char channelBFiltered;
    IfxEray_BufferDirection bufferDirection;
    unsigned char transmitPayloadIndicatior;
    IfxEray_TransmissionMode transmissionMode;
    unsigned char bufferServiceEnabled;
    uint8 payloadLength;
    uint16 dataPointer;
    unsigned char startupFrameIndicator;
    unsigned char syncFrameIndicator;
} IfxEray_Header;



typedef struct
{
    uint16 frameId : 11;
    uint8 payloadLength : 7;
    uint16 headerCrc : 11;
    uint8 reservedBit : 1;
    uint8 nullFrameIndicator : 1;
    uint8 syncFrame : 1;
    uint8 startupFrame : 1;
    uint8 cycleNumber : 7;
    uint8 payloadPreambleIndicator : 1;
} IfxEray_ReceivedHeader;



typedef struct
{
    unsigned char headerTransfered;
    unsigned char dataTransfered;
    unsigned char transferRequested;
    uint8 bufferIndex;
} IfxEray_SlotConfig;
# 411 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_clearErrorFlag(Ifx_ERAY *eray, IfxEray_ClearErrorFlag errorFlag);






static inline __attribute__ ((always_inline)) void IfxEray_clearStatusFlag(Ifx_ERAY *eray, IfxEray_ClearStatusFlag statusFlag);





static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_getErrorInterrupts(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInputBufferBusySrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine1SrcPtr(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) unsigned char IfxEray_getMessageBufferInterruptStatus(Ifx_ERAY *eray, uint8 messageBuffer);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus1SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt1SrcPtr(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) unsigned char IfxEray_getNewDataInterruptStatus(Ifx_ERAY *eray, uint8 ndat);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getOutputBufferBusySrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_getStatusInterrupts(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt1SrcPtr(Ifx_ERAY *eray);
# 514 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_clearAllFlags(Ifx_ERAY *eray);





extern void IfxEray_enableInterruptLines(Ifx_ERAY *eray);







extern void IfxEray_setMessageBufferInterruptDestination(Ifx_ERAY *eray, uint8 messageBuffer, uint8 messageBufferDestination);







extern void IfxEray_setNewDataInterruptDestination(Ifx_ERAY *eray, uint8 ndat, uint8 ndatDestination);
# 552 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_initRxPin(const IfxEray_Rxd_In *rx, IfxPort_InputMode rxMode);







static inline __attribute__ ((always_inline)) void IfxEray_initTxEnPin(const IfxEray_Txen_Out *txEn, IfxPort_OutputMode txEnMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxEray_initTxPin(const IfxEray_Txd_Out *tx, IfxPort_OutputMode txMode, IfxPort_PadDriver padDriver);
# 583 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_enableModule(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_setSleepMode(Ifx_ERAY *eray, IfxEray_SleepMode mode);
# 600 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_resetModule(Ifx_ERAY *eray);
# 615 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) Ifx_ERAY_FSR IfxEray_getFifoStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) unsigned char IfxEray_getInputBufferBusyHostStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) uint8 IfxEray_getInputBufferBusyShadowStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) uint8 IfxEray_getOutputBuffer(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) unsigned char IfxEray_getOutputBufferBusyShadowStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_getPocState(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_getWakeupPatternReceivedChannel(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_waitForPocState(Ifx_ERAY *eray, IfxEray_PocState pocState);
# 669 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern unsigned char IfxEray_changePocState(Ifx_ERAY *eray, IfxEray_PocCommand pocCommand);





extern void IfxEray_setPocReady(Ifx_ERAY *eray);
# 691 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_receiveHeader(Ifx_ERAY *eray, unsigned char headerReceived);






static inline __attribute__ ((always_inline)) void IfxEray_sendHeader(Ifx_ERAY *eray, unsigned char headerTransfered);






static inline __attribute__ ((always_inline)) void IfxEray_setActiveCyclePairs(Ifx_ERAY *eray, uint8 numberOfCyclePairsForActive);





static inline __attribute__ ((always_inline)) void IfxEray_setAutoDelayBuffers(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_setBaudrate(Ifx_ERAY *eray, IfxEray_Baudrate baudrate);






static inline __attribute__ ((always_inline)) void IfxEray_setBufferReconfigSecure(Ifx_ERAY *eray, uint8 secureValue);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelAInitialOffsets(Ifx_ERAY *eray, uint8 channelAMicrotickInitialOffset, uint8 channelAMacrotickInitialOffset);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelBInitialOffsets(Ifx_ERAY *eray, uint8 channelBMicrotickInitialOffset, uint8 channelBMacrotickInitialOffset);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelsReceiveDelay(Ifx_ERAY *eray, uint8 channelAReceptionDelay, uint8 channelBReceptionDelay);







static inline __attribute__ ((always_inline)) void IfxEray_setClockCorrectionCycles(Ifx_ERAY *eray, uint8 clockCorrectionCyclesPassive, uint8 clockCorrectionCyclesHalt);






static inline __attribute__ ((always_inline)) void IfxEray_setClockSynchErrorHalt(Ifx_ERAY *eray, unsigned char clockSyncErrorHalt);







static inline __attribute__ ((always_inline)) void IfxEray_setClusterDriftValues(Ifx_ERAY *eray, uint8 clusterDrift, uint16 maxDriftOffset);






static inline __attribute__ ((always_inline)) void IfxEray_setClusterStartupDeviation(Ifx_ERAY *eray, uint16 acceptedStartupDeviation);






static inline __attribute__ ((always_inline)) void IfxEray_setCollisionAvoidanceDuration(Ifx_ERAY *eray, uint8 collisionAvoidanceDuration);






static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMacroticks(Ifx_ERAY *eray, uint16 macroticks);






static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMicroticks(Ifx_ERAY *eray, uint32 microticks);






static inline __attribute__ ((always_inline)) void IfxEray_setDecodingCorrectionValue(Ifx_ERAY *eray, uint8 decodingCorrection);
# 816 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setDynamicSlots(Ifx_ERAY *eray, uint8 dynamicSlotLength, uint16 dynamicSlotCount, IfxEray_IdleDynamicSlots idleDynamicSlots);







static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionControl(Ifx_ERAY *eray, IfxEray_ExternalOffset externalOffset, IfxEray_ExternalRate externalRate);







static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionValues(Ifx_ERAY *eray, IfxEray_ExternalOffsetCorrection externalOffsetCorrection, IfxEray_ExternalRateCorrection externalRateCorrection);






static inline __attribute__ ((always_inline)) void IfxEray_setFifoBufferStartIndex(Ifx_ERAY *eray, uint8 fifoBufferStartIndex);
# 849 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setFifoFilterConfigurations(Ifx_ERAY *eray, uint16 rejectedFrameId, uint8 filteredCycleNumber, unsigned char fifoNullFramesRejected, uint16 frameIdFilter);
# 858 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setFifoMessageBufferConfigurations(Ifx_ERAY *eray, IfxEray_ReceiveChannel receiveChannel, unsigned char staticFifoDisabled, uint8 fifoDepth);






static inline __attribute__ ((always_inline)) void IfxEray_setFirstDynamicBuffer(Ifx_ERAY *eray, uint8 firstDynamicBuffer);







static inline __attribute__ ((always_inline)) void IfxEray_setListenTimeOuts(Ifx_ERAY *eray, uint32 listenTimeOut, IfxEray_ListenTimeOutNoise listenTimeOutNoise);






static inline __attribute__ ((always_inline)) void IfxEray_setMaxColdStartAttempts(Ifx_ERAY *eray, uint8 maxColdStartAttempts);







static inline __attribute__ ((always_inline)) void IfxEray_setMaxCorrectionValues(Ifx_ERAY *eray, uint16 maxOffsetCorrection, uint16 maxRateCorrection);






static inline __attribute__ ((always_inline)) void IfxEray_setMaxSynchFrames(Ifx_ERAY *eray, IfxEray_MaxSynchFrames maxSyncFrames);






static inline __attribute__ ((always_inline)) void IfxEray_setMessageBufferCount(Ifx_ERAY *eray, uint8 numberOfMessageBuffers);







static inline __attribute__ ((always_inline)) void IfxEray_setMessageHandlerConfigurations(Ifx_ERAY *eray, uint8 staticFramepayload, uint8 latestTransmissionStart);






static inline __attribute__ ((always_inline)) void IfxEray_setNetworkStartIdleTime(Ifx_ERAY *eray, uint16 networkStartIdleTime);






static inline __attribute__ ((always_inline)) void IfxEray_setNetworkVectorLength(Ifx_ERAY *eray, uint32 networkVectorLength);







static inline __attribute__ ((always_inline)) void IfxEray_setNodeChannels(Ifx_ERAY *eray, unsigned char channelAConnectedNode, unsigned char channelBConnectedNode);






static inline __attribute__ ((always_inline)) void IfxEray_setOffsetCorrection(Ifx_ERAY *eray, uint16 correctionOffset);






static inline __attribute__ ((always_inline)) void IfxEray_setReceiveRequest(Ifx_ERAY *eray, unsigned char receiveRequested);
# 955 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setReceiveWakeupTimes(Ifx_ERAY *eray, uint8 receiveWakeupTestDuration, uint8 receiveWakeupIdleTime, uint8 receiveWakeupLowTime);






static inline __attribute__ ((always_inline)) void IfxEray_setRxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex);







static inline __attribute__ ((always_inline)) void IfxEray_setSlotActionPoints(Ifx_ERAY *eray, uint8 staticActionPoint, uint8 dynamicActionPoint);







static inline __attribute__ ((always_inline)) void IfxEray_setStaticSlots(Ifx_ERAY *eray, uint16 staticSlotLength, uint16 staticSlotsCount);






static inline __attribute__ ((always_inline)) void IfxEray_setStrobePosition(Ifx_ERAY *eray, IfxEray_StrobePosition strobePosition);







static inline __attribute__ ((always_inline)) void IfxEray_setSymbolChannels(Ifx_ERAY *eray, unsigned char channelASymbolTransmitted, unsigned char channelBSymbolTransmitted);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionSlotMode(Ifx_ERAY *eray, IfxEray_TransmissionSlotMode transmissionSlotMode);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionStartTime(Ifx_ERAY *eray, uint16 transmissionStartTime);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmitRequest(Ifx_ERAY *eray, unsigned char transferRequested);
# 1023 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setTransmitWakeupTimes(Ifx_ERAY *eray, uint8 transmitWakeupRepetitions, uint8 transmitWakeupIdleTime, uint8 transmitWakeupLowTime);







static inline __attribute__ ((always_inline)) void IfxEray_setTransmittedFrames(Ifx_ERAY *eray, unsigned char startupFrameTransmitted, unsigned char synchFrameTransmitted);






static inline __attribute__ ((always_inline)) void IfxEray_setTxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex);






static inline __attribute__ ((always_inline)) void IfxEray_setViewData(Ifx_ERAY *eray, unsigned char swapRequested);






static inline __attribute__ ((always_inline)) void IfxEray_setWakeupPatternChannel(Ifx_ERAY *eray, IfxEray_WakeupChannel wakeupPatternChannel);
# 1068 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_receiveData(Ifx_ERAY *eray, unsigned char dataReceived);






static inline __attribute__ ((always_inline)) void IfxEray_sendData(Ifx_ERAY *eray, unsigned char dataTransfered);
# 1088 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern uint16 IfxEray_calcHeaderCrc(uint8 payloadLength, uint16 frameId, unsigned char startupFrameIndicator, unsigned char syncFrameIndicator);







extern void IfxEray_readData(Ifx_ERAY *eray, uint32 *data, uint8 payloadLength);

extern void IfxEray_readData_Byte(Ifx_ERAY *eray, uint8 *data, uint8 payloadLength);
# 1107 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_readFrame(Ifx_ERAY *eray, IfxEray_ReceivedHeader *header, uint32 *data, Ifx_SizeT maxPayloadLength);
# 1116 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_setSlot(Ifx_ERAY *eray, IfxEray_Header *header, uint32 *data, IfxEray_SlotConfig *slotConfig);







extern void IfxEray_writeData(Ifx_ERAY *eray, uint32 *data, uint8 payloadLength);
# 1136 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) uint8 IfxEray_getFifoIndex(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) void IfxEray_clearErrorFlag(Ifx_ERAY *eray, IfxEray_ClearErrorFlag errorFlag)
{
    eray->EIR.U = errorFlag;
}


static inline __attribute__ ((always_inline)) void IfxEray_clearStatusFlag(Ifx_ERAY *eray, IfxEray_ClearStatusFlag statusFlag)
{
    eray->SIR.U = statusFlag;
}


static inline __attribute__ ((always_inline)) void IfxEray_enableModule(Ifx_ERAY *eray)
{

    eray->CLC.U = 0x00000100;


    if (eray->CLC.U)
    {}
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_getErrorInterrupts(Ifx_ERAY *eray)
{
    Ifx_ERAY_EIR interruptFlags;
    interruptFlags.U = eray->EIR.U;
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getFifoIndex(Ifx_ERAY *eray)
{
    return eray->MRC.B.FFB;
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_FSR IfxEray_getFifoStatus(Ifx_ERAY *eray)
{
    Ifx_ERAY_FSR fifoStatus;
    fifoStatus.U = eray->FSR.U;
    return fifoStatus;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_getInputBufferBusyHostStatus(Ifx_ERAY *eray)
{
    return (eray->IBCR.B.IBSYH == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getInputBufferBusyShadowStatus(Ifx_ERAY *eray)
{
    return (eray->IBCR.B.IBSYS == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInputBufferBusySrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].IBUSY;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine0SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].INT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine1SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].INT[1];
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_getMessageBufferInterruptStatus(Ifx_ERAY *eray, uint8 messageBuffer)
{
    uint8 ix = messageBuffer / 32;
    uint32 mask = 1 << (messageBuffer % 32);
    Ifx_ERAY_MBSC1 *mbscSFR = (Ifx_ERAY_MBSC1 *)((uint32)&eray->MBSC1 + 4 * ix);
    unsigned char messageBufferInterrupt = (mbscSFR->U & mask) ? 1 : 0;

    return messageBufferInterrupt;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus0SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].MBSC[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus1SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].MBSC[1];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt0SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].NDAT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt1SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].NDAT[1];
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_getNewDataInterruptStatus(Ifx_ERAY *eray, uint8 ndat)
{
    uint8 ix = ndat / 32;
    uint32 mask = 1 << (ndat % 32);
    Ifx_ERAY_NDAT1 *ndatSFR = (Ifx_ERAY_NDAT1 *)((uint32)&eray->NDAT1 + 4 * ix);
    unsigned char ndatInterrupt = (ndatSFR->U & mask) ? 1 : 0;

    return ndatInterrupt;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getOutputBuffer(Ifx_ERAY *eray)
{
    return eray->OBCR.B.OBRH;
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_getOutputBufferBusyShadowStatus(Ifx_ERAY *eray)
{
    return (eray->OBCR.B.OBSYS == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getOutputBufferBusySrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].OBUSY;
}


static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_getPocState(Ifx_ERAY *eray)
{
    return (IfxEray_PocState)eray->CCSV.B.POCS;
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_getStatusInterrupts(Ifx_ERAY *eray)
{
    Ifx_ERAY_SIR interruptFlags;
    interruptFlags.U = eray->SIR.U;
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt0SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].TINT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt1SrcPtr(Ifx_ERAY *eray)
{
    return &((*(Ifx_SRC *)0xF0038000u)).ERAY.ERAY[0].TINT[1];
}


static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_getWakeupPatternReceivedChannel(Ifx_ERAY *eray)
{
    IfxEray_WakeupChannel wakeupChannel;

    wakeupChannel=IfxEray_WakeupChannel_none;

    if (eray->SIR.B.WUPA == 1)
    {
        wakeupChannel = IfxEray_WakeupChannel_a;
    }
    else if (eray->SIR.B.WUPB == 1)
    {
        wakeupChannel = IfxEray_WakeupChannel_b;
    }

    return wakeupChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_initRxPin(const IfxEray_Rxd_In *rx, IfxPort_InputMode rxMode)
{
    IfxPort_setPinModeInput(rx->pin.port, rx->pin.pinIndex, rxMode);

    if (rx->nodeId == IfxEray_NodeId_a)
    {
        rx->module->CUST1.B.RISA = rx->select;
    }
    else
    {
        rx->module->CUST1.B.RISB = rx->select;
    }
}


static inline __attribute__ ((always_inline)) void IfxEray_initTxEnPin(const IfxEray_Txen_Out *txEn, IfxPort_OutputMode txEnMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(txEn->pin.port, txEn->pin.pinIndex, txEnMode, txEn->select);
    IfxPort_setPinPadDriver(txEn->pin.port, txEn->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxEray_initTxPin(const IfxEray_Txd_Out *tx, IfxPort_OutputMode txMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(tx->pin.port, tx->pin.pinIndex, txMode, tx->select);
    IfxPort_setPinPadDriver(tx->pin.port, tx->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxEray_receiveData(Ifx_ERAY *eray, unsigned char dataReceived)
{
    eray->OBCM.B.RDSS = dataReceived;
}


static inline __attribute__ ((always_inline)) void IfxEray_receiveHeader(Ifx_ERAY *eray, unsigned char headerReceived)
{
    eray->OBCM.B.RHSS = headerReceived;
}


static inline __attribute__ ((always_inline)) void IfxEray_sendData(Ifx_ERAY *eray, unsigned char dataTransfered)
{
    eray->IBCM.B.LDSH = dataTransfered;
}


static inline __attribute__ ((always_inline)) void IfxEray_sendHeader(Ifx_ERAY *eray, unsigned char headerTransfered)
{
    eray->IBCM.B.LHSH = headerTransfered;
}


static inline __attribute__ ((always_inline)) void IfxEray_setActiveCyclePairs(Ifx_ERAY *eray, uint8 numberOfCyclePairsForActive)
{
    eray->SUCC1.B.PTA = numberOfCyclePairsForActive;
}


static inline __attribute__ ((always_inline)) void IfxEray_setAutoDelayBuffers(Ifx_ERAY *eray)
{
    eray->CUST1.B.IEN = 1;
    eray->CUST1.B.OEN = 1;
    eray->CUST3.U = 0xFFFFFFFF;
}


static inline __attribute__ ((always_inline)) void IfxEray_setBaudrate(Ifx_ERAY *eray, IfxEray_Baudrate baudrate)
{
    eray->PRTC1.B.BRP = baudrate;
}


static inline __attribute__ ((always_inline)) void IfxEray_setBufferReconfigSecure(Ifx_ERAY *eray, uint8 secureValue)
{
    eray->MRC.B.SEC = secureValue;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelAInitialOffsets(Ifx_ERAY *eray, uint8 channelAMicrotickInitialOffset, uint8 channelAMacrotickInitialOffset)
{
    eray->GTUC03.B.UIOA = channelAMicrotickInitialOffset;
    eray->GTUC03.B.MIOA = channelAMacrotickInitialOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelBInitialOffsets(Ifx_ERAY *eray, uint8 channelBMicrotickInitialOffset, uint8 channelBMacrotickInitialOffset)
{
    eray->GTUC03.B.UIOB = channelBMicrotickInitialOffset;
    eray->GTUC03.B.MIOB = channelBMacrotickInitialOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelsReceiveDelay(Ifx_ERAY *eray, uint8 channelAReceptionDelay, uint8 channelBReceptionDelay)
{
    eray->GTUC05.B.DCA = channelAReceptionDelay;
    eray->GTUC05.B.DCB = channelBReceptionDelay;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClockCorrectionCycles(Ifx_ERAY *eray, uint8 clockCorrectionCyclesPassive, uint8 clockCorrectionCyclesHalt)
{
    Ifx_ERAY_SUCC3 succ3;
    succ3.U = 0;
    succ3.B.WCP = clockCorrectionCyclesPassive;
    succ3.B.WCF = clockCorrectionCyclesHalt;
    eray->SUCC3.U = succ3.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClockSynchErrorHalt(Ifx_ERAY *eray, unsigned char clockSyncErrorHalt)
{
    eray->SUCC1.B.HCSE = clockSyncErrorHalt;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClusterDriftValues(Ifx_ERAY *eray, uint8 clusterDrift, uint16 maxDriftOffset)
{
    eray->GTUC05.B.CDD = clusterDrift;
    eray->GTUC06.B.MOD = maxDriftOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClusterStartupDeviation(Ifx_ERAY *eray, uint16 acceptedStartupDeviation)
{
    eray->GTUC06.B.ASR = acceptedStartupDeviation;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCollisionAvoidanceDuration(Ifx_ERAY *eray, uint8 collisionAvoidanceDuration)
{
    eray->PRTC1.B.CASM = collisionAvoidanceDuration;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMacroticks(Ifx_ERAY *eray, uint16 macroticks)
{
    eray->GTUC02.B.MPC = macroticks;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMicroticks(Ifx_ERAY *eray, uint32 microticks)
{
    eray->GTUC01.U = microticks;
}


static inline __attribute__ ((always_inline)) void IfxEray_setDecodingCorrectionValue(Ifx_ERAY *eray, uint8 decodingCorrection)
{
    eray->GTUC05.B.DEC = decodingCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setDynamicSlots(Ifx_ERAY *eray, uint8 dynamicSlotLength, uint16 dynamicSlotCount, IfxEray_IdleDynamicSlots idleDynamicSlots)
{
    eray->GTUC08.B.MSL = dynamicSlotLength;
    eray->GTUC08.B.NMS = dynamicSlotCount;
    eray->GTUC09.B.DSI = idleDynamicSlots;
}


static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionControl(Ifx_ERAY *eray, IfxEray_ExternalOffset externalOffset, IfxEray_ExternalRate externalRate)
{
    eray->GTUC11.B.EOCC = externalOffset;
    eray->GTUC11.B.ERCC = externalRate;
}


static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionValues(Ifx_ERAY *eray, IfxEray_ExternalOffsetCorrection externalOffsetCorrection, IfxEray_ExternalRateCorrection externalRateCorrection)
{
    eray->GTUC11.B.EOC = externalOffsetCorrection;
    eray->GTUC11.B.ERC = externalRateCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoBufferStartIndex(Ifx_ERAY *eray, uint8 fifoBufferStartIndex)
{

    eray->MRC.B.FFB = fifoBufferStartIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoFilterConfigurations(Ifx_ERAY *eray, uint16 rejectedFrameId, uint8 filteredCycleNumber, unsigned char fifoNullFramesRejected, uint16 frameIdFilter)
{
    eray->FRF.B.FID = rejectedFrameId;
    eray->FRF.B.CYF = filteredCycleNumber;
    eray->FRF.B.RNF = fifoNullFramesRejected;
    eray->FRFM.B.MFID = frameIdFilter;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoMessageBufferConfigurations(Ifx_ERAY *eray, IfxEray_ReceiveChannel receiveChannel, unsigned char staticFifoDisabled, uint8 fifoDepth)
{
    eray->FRF.B.CH = receiveChannel;
    eray->FRF.B.RSS = staticFifoDisabled;
    eray->FCL.U = fifoDepth;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFirstDynamicBuffer(Ifx_ERAY *eray, uint8 firstDynamicBuffer)
{

    eray->MRC.B.FDB = firstDynamicBuffer;
}


static inline __attribute__ ((always_inline)) void IfxEray_setListenTimeOuts(Ifx_ERAY *eray, uint32 listenTimeOut, IfxEray_ListenTimeOutNoise listenTimeOutNoise)
{
    Ifx_ERAY_SUCC2 succ2;
    succ2.U = 0;
    succ2.B.LT = listenTimeOut;
    succ2.B.LTN = listenTimeOutNoise;
    eray->SUCC2.U = succ2.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxColdStartAttempts(Ifx_ERAY *eray, uint8 maxColdStartAttempts)
{
    eray->SUCC1.B.CSA = maxColdStartAttempts;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxCorrectionValues(Ifx_ERAY *eray, uint16 maxOffsetCorrection, uint16 maxRateCorrection)
{
    eray->GTUC10.B.MOC = maxOffsetCorrection;
    eray->GTUC10.B.MRC = maxRateCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxSynchFrames(Ifx_ERAY *eray, IfxEray_MaxSynchFrames maxSyncFrames)
{
    eray->GTUC02.B.SNM = maxSyncFrames;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMessageBufferCount(Ifx_ERAY *eray, uint8 numberOfMessageBuffers)
{
    eray->MRC.B.LCB = numberOfMessageBuffers - 1;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMessageHandlerConfigurations(Ifx_ERAY *eray, uint8 staticFramepayload, uint8 latestTransmissionStart)
{
    Ifx_ERAY_MHDC mhdc;
    mhdc.U = 0;
    mhdc.B.SFDL = staticFramepayload;
    mhdc.B.SLT = latestTransmissionStart;
    eray->MHDC.U = mhdc.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNetworkStartIdleTime(Ifx_ERAY *eray, uint16 networkStartIdleTime)
{
    eray->GTUC04.B.NIT = networkStartIdleTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNetworkVectorLength(Ifx_ERAY *eray, uint32 networkVectorLength)
{
    eray->NEMC.U = networkVectorLength;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNodeChannels(Ifx_ERAY *eray, unsigned char channelAConnectedNode, unsigned char channelBConnectedNode)
{
    eray->SUCC1.B.CCHA = channelAConnectedNode;
    eray->SUCC1.B.CCHB = channelBConnectedNode;
}


static inline __attribute__ ((always_inline)) void IfxEray_setOffsetCorrection(Ifx_ERAY *eray, uint16 correctionOffset)
{
    eray->GTUC04.B.OCS = correctionOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setReceiveRequest(Ifx_ERAY *eray, unsigned char receiveRequested)
{
    eray->OBCR.B.REQ = receiveRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setReceiveWakeupTimes(Ifx_ERAY *eray, uint8 receiveWakeupTestDuration, uint8 receiveWakeupIdleTime, uint8 receiveWakeupLowTime)
{
    eray->PRTC1.B.RXW = receiveWakeupTestDuration;
    eray->PRTC2.B.RXI = receiveWakeupIdleTime;
    eray->PRTC2.B.RXL = receiveWakeupLowTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setRxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex)
{
    eray->OBCR.B.OBRS = bufferIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setSleepMode(Ifx_ERAY *eray, IfxEray_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    eray->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxEray_setSlotActionPoints(Ifx_ERAY *eray, uint8 staticActionPoint, uint8 dynamicActionPoint)
{
    eray->GTUC09.B.MAPO = dynamicActionPoint;
    eray->GTUC09.B.APO = staticActionPoint;
}


static inline __attribute__ ((always_inline)) void IfxEray_setStaticSlots(Ifx_ERAY *eray, uint16 staticSlotLength, uint16 staticSlotsCount)
{
    eray->GTUC07.B.SSL = staticSlotLength;
    eray->GTUC07.B.NSS = staticSlotsCount;
}


static inline __attribute__ ((always_inline)) void IfxEray_setStrobePosition(Ifx_ERAY *eray, IfxEray_StrobePosition strobePosition)
{
    eray->PRTC1.B.SPP = strobePosition;
}


static inline __attribute__ ((always_inline)) void IfxEray_setSymbolChannels(Ifx_ERAY *eray, unsigned char channelASymbolTransmitted, unsigned char channelBSymbolTransmitted)
{
    eray->SUCC1.B.MTSA = channelASymbolTransmitted;
    eray->SUCC1.B.MTSB = channelBSymbolTransmitted;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionSlotMode(Ifx_ERAY *eray, IfxEray_TransmissionSlotMode transmissionSlotMode)
{
    eray->SUCC1.B.TSM = transmissionSlotMode;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionStartTime(Ifx_ERAY *eray, uint16 transmissionStartTime)
{
    eray->PRTC1.B.TSST = transmissionStartTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmitRequest(Ifx_ERAY *eray, unsigned char transferRequested)
{
    eray->IBCM.B.STXRH = transferRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmitWakeupTimes(Ifx_ERAY *eray, uint8 transmitWakeupRepetitions, uint8 transmitWakeupIdleTime, uint8 transmitWakeupLowTime)
{
    eray->PRTC1.B.RWP = transmitWakeupRepetitions;
    eray->PRTC2.B.TXI = transmitWakeupIdleTime;
    eray->PRTC2.B.TXL = transmitWakeupLowTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmittedFrames(Ifx_ERAY *eray, unsigned char startupFrameTransmitted, unsigned char synchFrameTransmitted)
{
    eray->SUCC1.B.TXST = startupFrameTransmitted;
    eray->SUCC1.B.TXSY = synchFrameTransmitted;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex)
{
    eray->IBCR.B.IBRH = bufferIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setViewData(Ifx_ERAY *eray, unsigned char swapRequested)
{
    eray->OBCR.B.VIEW = swapRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setWakeupPatternChannel(Ifx_ERAY *eray, IfxEray_WakeupChannel wakeupPatternChannel)
{
    eray->SUCC1.B.WUCS = wakeupPatternChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_waitForPocState(Ifx_ERAY *eray, IfxEray_PocState pocState)
{
    while (eray->CCSV.B.POCS != (uint8)pocState)
    {}
}
# 502 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 2
# 514 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
typedef struct
{
    uint32 microticksPerCycle;
} IfxEray_Eray_Gtu01Config;



typedef struct
{
    uint16 macroticksPerCycle;
    uint8 maxSyncFrames;
} IfxEray_Eray_Gtu02Config;



typedef struct
{
    uint8 channelAMicrotickInitialOffset;
    uint8 channelBMicrotickInitialOffset;
    uint8 channelAMacrotickInitialOffset;
    uint8 channelBMacrotickInitialOffset;
} IfxEray_Eray_Gtu03Config;



typedef struct
{
    uint16 networkStartIdleTime;
    uint16 correctionOffset;
} IfxEray_Eray_Gtu04Config;



typedef struct
{
    uint8 channelAReceptionDelay;
    uint8 channelBReceptionDelay;
    uint8 clusterDrift;
    uint8 decodingCorrection;
} IfxEray_Eray_Gtu05Config;



typedef struct
{
    uint16 acceptedStartupDeviation;
    uint16 maxDriftOffset;
} IfxEray_Eray_Gtu06Config;



typedef struct
{
    uint16 staticSlotLength;
    uint16 staticSlotsCount;
} IfxEray_Eray_Gtu07Config;



typedef struct
{
    uint8 dynamicSlotLength;
    uint16 dynamicSlotCount;
} IfxEray_Eray_Gtu08Config;



typedef struct
{
    uint8 staticActionPoint;
    uint8 dynamicActionPoint;
    IfxEray_IdleDynamicSlots idleDynamicSlots;
} IfxEray_Eray_Gtu09Config;



typedef struct
{
    uint16 maxOffsetCorrection;
    uint16 maxRateCorrection;
} IfxEray_Eray_Gtu10Config;



typedef struct
{
    IfxEray_ExternalOffsetCorrection externalOffsetCorrection;
    IfxEray_ExternalRateCorrection externalRateCorrection;
    IfxEray_ExternalOffset externalOffset;
    IfxEray_ExternalRate externalRate;
} IfxEray_Eray_Gtu11Config;







typedef struct
{
    IfxEray_Eray_Gtu01Config gtu01Config;
    IfxEray_Eray_Gtu02Config gtu02Config;
    IfxEray_Eray_Gtu03Config gtu03Config;
    IfxEray_Eray_Gtu04Config gtu04Config;
    IfxEray_Eray_Gtu05Config gtu05Config;
    IfxEray_Eray_Gtu06Config gtu06Config;
    IfxEray_Eray_Gtu07Config gtu07Config;
    IfxEray_Eray_Gtu08Config gtu08Config;
    IfxEray_Eray_Gtu09Config gtu09Config;
    IfxEray_Eray_Gtu10Config gtu10Config;
    IfxEray_Eray_Gtu11Config gtu11Config;
} IfxEray_Eray_GTUConfig;



typedef struct
{
    IfxPort_InputMode rxInMode;
    IfxPort_OutputMode txOutMode;
    IfxPort_PadDriver pinDriver;
    IfxPort_OutputMode txEnOutMode;
    const IfxEray_Rxd_In *rxIn;
    const IfxEray_Txd_Out *txOut;
    const IfxEray_Txen_Out *txEnOut;
} IfxEray_Eray_NodeA;



typedef struct
{
    IfxPort_InputMode rxInMode;
    IfxPort_OutputMode txOutMode;
    IfxPort_PadDriver pinDriver;
    IfxPort_OutputMode txEnOutMode;
    const IfxEray_Rxd_In *rxIn;
    const IfxEray_Txd_Out *txOut;
    const IfxEray_Txen_Out *txEnOut;
} IfxEray_Eray_NodeB;



typedef struct
{
    uint8 collisionAvoidanceDuration;
    IfxEray_StrobePosition strobePosition;
    IfxEray_Baudrate baudrate;
    uint8 receiveWakeupTestDuration;
    uint8 transmitWakeupRepetitions;
    uint16 transmissionStartTime;
} IfxEray_Eray_Prtc1Control;



typedef struct
{
    uint8 receiveWakeupIdleTime;
    uint8 receiveWakeupLowTime;
    uint8 transmitWakeupIdleTime;
    uint8 transmitWakeupLowTime;
} IfxEray_Eray_Prtc2Control;



typedef struct
{
    unsigned char startupFrameTransmitted;
    unsigned char syncFrameTransmitted;
    uint8 maxColdStartAttempts;
    uint8 numberOfCyclePairsForActive;
    IfxEray_WakeupChannel wakeupPatternChannel;
    IfxEray_TransmissionSlotMode transmissionSlotMode;
    unsigned char clockSyncErrorHalt;
    unsigned char channelASymbolTransmitted;
    unsigned char channelBSymbolTransmitted;
    unsigned char channelAConnectedNode;
    unsigned char channelBConnectedNode;
} IfxEray_Eray_Succ1Config;



typedef struct
{
    uint32 listenTimeOut;
    IfxEray_ListenTimeOutNoise listenTimeOutNoise;
} IfxEray_Eray_Succ2Config;



typedef struct
{
    uint8 clockCorrectionCyclesPassive;
    uint8 clockCorrectionCyclesHalt;
} IfxEray_Eray_Succ3Config;







typedef struct
{
    uint32 networkVectorLength;
    uint8 staticFramepayload;
    uint8 latestTransmissionStart;
    IfxEray_Eray_GTUConfig gtuConfig;
    IfxEray_Eray_Succ1Config succ1Config;
    IfxEray_Eray_Succ2Config succ2Config;
    IfxEray_Eray_Succ3Config succ3Config;
    IfxEray_Eray_Prtc1Control prtc1Control;
    IfxEray_Eray_Prtc2Control prtc2Control;
} IfxEray_Eray_ControllerConfig;



typedef struct
{
    uint16 int0Priority;
    uint16 int1Priority;
    uint16 tint0Priority;
    uint16 tint1Priority;
    uint16 ndat0Priority;
    uint16 ndat1Priority;
    uint16 mbsc0Priority;
    uint16 mbsc1Priority;
    uint16 ibusyPriority;
    uint16 obusyPriority;
    IfxSrc_Tos int0IsrProvider;
    IfxSrc_Tos int1IsrProvider;
    IfxSrc_Tos tint0IsrProvider;
    IfxSrc_Tos tint1IsrProvider;
    IfxSrc_Tos ndat0IsrProvider;
    IfxSrc_Tos ndat1IsrProvider;
    IfxSrc_Tos mbsc0IsrProvider;
    IfxSrc_Tos mbsc1IsrProvider;
    IfxSrc_Tos ibusyIsrProvider;
    IfxSrc_Tos obusyIsrProvider;
} IfxEray_Eray_Interrupt;



typedef struct
{
    uint8 firstDynamicBuffer;
    uint8 numberOfMessageBuffers;
    uint32 fifoBufferStartIndex;
    uint8 fifoDepth;
    uint16 frameIdFilter;
    IfxEray_ReceiveChannel receiveChannel;
    uint16 rejectedFrameId;
    uint8 filteredCycleNumber;
    unsigned char staticFifoDisabled;
    unsigned char fifoNullFramesRejected;
    unsigned char bufferReconfigEnabled;
    unsigned char fifoConfigured;
    IfxEray_Header *header[128];
    IfxEray_SlotConfig *slotControl[128];
    uint32 *data[128];
} IfxEray_Eray_MessageRAMConfig;







typedef struct
{
    const IfxEray_Eray_NodeA *nodeAPins;
    const IfxEray_Eray_NodeB *nodeBPins;
} IfxEray_Eray_Pins;







typedef struct
{
    Ifx_ERAY *eray;
} IfxEray_Eray;



typedef struct
{
    IfxEray_Header *header;
    uint32 data[64];
    IfxEray_SlotConfig *slotControl;
} IfxEray_Eray_BufferReconfig;



typedef struct
{
    Ifx_ERAY *module;
    IfxEray_Eray_Interrupt interrupt;
} IfxEray_Eray_Config;



typedef struct
{
    IfxEray_Eray_MessageRAMConfig messageRAMConfig;
    IfxEray_Eray_ControllerConfig controllerConfig;
    const IfxEray_Eray_Pins *pins;
} IfxEray_Eray_NodeConfig;



typedef struct
{
    unsigned char headerReceived;
    unsigned char dataReceived;
    unsigned char swapRequested;
    unsigned char receiveRequested;
    uint8 bufferIndex;
} IfxEray_Eray_ReceiveControl;



typedef struct
{
    IfxEray_ReceivedHeader header;
    uint32 data[64];
} IfxEray_Eray_ReceivedFrame;



typedef struct
{
    unsigned char headerTransfered;
    unsigned char dataTransfered;
    unsigned char transferRequested;
    uint8 bufferIndex;
} IfxEray_Eray_TransmitControl;
# 868 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_deInitModule(IfxEray_Eray *eray);
# 882 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_initModule(IfxEray_Eray *eray, const IfxEray_Eray_Config *config);
# 892 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_initModuleConfig(IfxEray_Eray_Config *config, Ifx_ERAY *eray);
# 911 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_Node_init(IfxEray_Eray *eray, IfxEray_Eray_NodeConfig *config);
# 920 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_Node_initConfig(IfxEray_Eray_NodeConfig *config);
# 938 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_allowColdStart(IfxEray_Eray *eray);
# 948 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_bufferReconfig(IfxEray_Eray *eray, IfxEray_Eray_BufferReconfig *reconfigBuffer);






static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_changePocState(IfxEray_Eray *eray, IfxEray_PocCommand PocCommand);







static inline __attribute__ ((always_inline)) void IfxEray_Eray_readData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength);
# 974 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_readFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceivedFrame *frame, Ifx_SizeT maxPayloadLength);
# 983 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_setPocAllSlots(IfxEray_Eray *eray);
# 992 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_startCommunication(IfxEray_Eray *eray);
# 1002 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_wakeUpChannel(IfxEray_Eray *eray, IfxEray_Channel channel);
# 1011 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_wakeUpCluster(IfxEray_Eray *eray);
# 1022 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_writeData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength);
# 1036 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_receiveFifoFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config);
# 1046 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_receiveFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config);
# 1056 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_transmitFrame(IfxEray_Eray *eray, IfxEray_Eray_TransmitControl *transmitControl);
# 1071 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_Eray_getPocState(IfxEray_Eray *eray);
# 1080 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_Eray_getWakeupPatternReceivedChannel(IfxEray_Eray *eray);
# 1096 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearErrorFlag(IfxEray_Eray *eray, IfxEray_ClearErrorFlag errorFlag);






static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearStatusFlag(IfxEray_Eray *eray, IfxEray_ClearStatusFlag statusFlag);





static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_Eray_getErrorInterrupts(IfxEray_Eray *eray);






static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getMessageBufferInterruptStatus(IfxEray_Eray *eray, uint8 messageBuffer);






static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getNewDataInterruptStatus(IfxEray_Eray *eray, uint8 ndat);





static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_Eray_getStatusInterrupts(IfxEray_Eray *eray);
# 1140 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_setMessageBufferInterruptDestination(IfxEray_Eray *eray, uint8 messageBuffer, uint8 messageBufferDestination);
# 1151 "./0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_setNewDataInterruptDestination(IfxEray_Eray *eray, uint8 ndat, uint8 ndatDestination);







static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_allowColdStart(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_coldStart);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_bufferReconfig(IfxEray_Eray *eray, IfxEray_Eray_BufferReconfig *reconfigBuffer)
{
    IfxEray_setSlot(eray->eray, reconfigBuffer->header, reconfigBuffer->data, reconfigBuffer->slotControl);
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_changePocState(IfxEray_Eray *eray, IfxEray_PocCommand PocCommand)
{
    unsigned char status = IfxEray_changePocState(eray->eray, PocCommand);
    return status;
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearErrorFlag(IfxEray_Eray *eray, IfxEray_ClearErrorFlag errorFlag)
{
    IfxEray_clearErrorFlag(eray->eray, errorFlag);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearStatusFlag(IfxEray_Eray *eray, IfxEray_ClearStatusFlag statusFlag)
{
    IfxEray_clearStatusFlag(eray->eray, statusFlag);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_deInitModule(IfxEray_Eray *eray)
{

    IfxEray_resetModule(eray->eray);
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_Eray_getErrorInterrupts(IfxEray_Eray *eray)
{
    Ifx_ERAY_EIR interruptFlags;
    interruptFlags = IfxEray_getErrorInterrupts(eray->eray);
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getMessageBufferInterruptStatus(IfxEray_Eray *eray, uint8 messageBuffer)
{
    uint8 messageBufferInterrupt = IfxEray_getMessageBufferInterruptStatus(eray->eray, messageBuffer);
    return messageBufferInterrupt;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getNewDataInterruptStatus(IfxEray_Eray *eray, uint8 ndat)
{
    uint8 ndatInterrupt = IfxEray_getNewDataInterruptStatus(eray->eray, ndat);
    return ndatInterrupt;
}


static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_Eray_getPocState(IfxEray_Eray *eray)
{
    return IfxEray_getPocState(eray->eray);
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_Eray_getStatusInterrupts(IfxEray_Eray *eray)
{
    Ifx_ERAY_SIR statusInterrupts = IfxEray_getStatusInterrupts(eray->eray);
    return statusInterrupts;
}


static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_Eray_getWakeupPatternReceivedChannel(IfxEray_Eray *eray)
{
    IfxEray_WakeupChannel rxWakeupChannel;
    rxWakeupChannel = IfxEray_getWakeupPatternReceivedChannel(eray->eray);

    return rxWakeupChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_readData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength)
{
    IfxEray_readData(eray->eray, data, payloadLength);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_readFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceivedFrame *frame, Ifx_SizeT maxPayloadLength)
{
    IfxEray_readFrame(eray->eray, &(frame->header), frame->data, maxPayloadLength);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_setMessageBufferInterruptDestination(IfxEray_Eray *eray, uint8 messageBuffer, uint8 messageBufferDestination)
{
    IfxEray_setMessageBufferInterruptDestination(eray->eray, messageBuffer, messageBufferDestination);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_setNewDataInterruptDestination(IfxEray_Eray *eray, uint8 ndat, uint8 ndatDestination)
{
    IfxEray_setNewDataInterruptDestination(eray->eray, ndat, ndatDestination);
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_setPocAllSlots(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_allSlots);
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_startCommunication(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_run);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_wakeUpChannel(IfxEray_Eray *eray, IfxEray_Channel channel)
{
    Ifx_ERAY *eraySFR = eray->eray;
    unsigned char result = IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);

    if (result == 1)
    {
        eraySFR->SUCC1.B.WUCS = channel;
        IfxEray_setPocReady(eray->eray);
    }
}


static inline __attribute__ ((always_inline)) unsigned char IfxEray_Eray_wakeUpCluster(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_wakeup);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_writeData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength)
{
    IfxEray_writeData(eray->eray, data, payloadLength);
}
# 15 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ERAY.h" 2

# 1 "./0_Src/0_AppSw/Tricore/Application/Application.h" 1
# 11 "./0_Src/0_AppSw/Tricore/Application/Application.h"
extern uint8 Map_STM_Runn[3][2];

extern void (*Process_Mapping[12])(void);
extern void (*Process_Core1_free[])(void);


typedef enum{

 TASK1_exe = 1,
 TASK2_exe = 2,
 TASK3_exe = 3,
 TASK4_exe = 4

}task_priority__;
int SetMCU(void);
void Core0_free(void);
void Core1_free(void);
void Core2_free(void);
void Runn00(void);
void Runn01(void);
void Runn10(void);
void Runn11(void);
void Runn20(void);
void Runn21(void);
void Runn_Dummy(void);


void fnc_test1(void);
void fnc_test2(void);
void fnc_test3(void);
void fnc_test4(void);
void fnc_test5(void);
void fnc_test6(void);
void fnc_test7(void);
void fnc_test8(void);
void fnc_QSPI_test(void);
# 17 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ERAY.h" 2
# 37 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ERAY.h"
typedef struct
{
    IfxEray_Eray eray;
    IfxEray_Eray_Config erayModuleConfig;
    IfxEray_Eray_NodeConfig nodeConfig;
    volatile unsigned ndatCount;
     volatile unsigned errors;

    uint32 receivedData[63][0];

} App_Eray;

extern App_Eray g_Eray;

extern void IfxErayDemo_init(void);
extern void IfxErayDemo_run(void);
extern void Print_Flexray(App_Eray *eray_pointer, uint32 *data, uint8 buffer_ID);
void ERAY_irqNdat1Handler(void);
void Print_Flexray(App_Eray *eray_pointer, uint32 *data, uint8 buffer_ID);
# 26 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF.h" 2


void Device_IF_Setup(void);
# 9 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.c" 2

# 1 "./0_Src/0_AppSw/Config/Common/stdarg.h" 1
# 40 "./0_Src/0_AppSw/Config/Common/stdarg.h"
typedef __builtin_va_list __gnuc_va_list;
# 102 "./0_Src/0_AppSw/Config/Common/stdarg.h"
typedef __gnuc_va_list va_list;
# 11 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 1 3
# 34 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);






int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);




int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 317 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 342 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int dprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *, size_t, const char *);


FILE * open_memstream (char **, size_t *);



int vdprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 539 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3

# 12 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_WiFi.c" 2





void IO_set_WiFi(void)
{





 printf_SysLog("IO_Set_WiFi\t\t\t-> ");


 Set_UART_WiFi();
 IO_WiFi_Server_open();


 printf_SysLog("Done.\r\n");

}



void IO_WiFi_Server_open(void)
{
 printf_UART_WiFi("AT+RST\r\n");
 Delay_ms_WiFi(1000);


 printf_UART_WiFi("AT+CWQAP\r\n");
 Delay_ms_WiFi(100);
 printf_UART_WiFi("AT+CWMODE=2\r\n");
 Delay_ms_WiFi(100);
 printf_UART_WiFi("%s", "AT+CWSAP=");
 printf_UART_WiFi("%c%s%c%c", '"', "ESP-07", '"', ',');
 printf_UART_WiFi("%c%s%c", '"', "12345678", '"');
 printf_UART_WiFi("%s", ",5,3\r\n");
 Delay_ms_WiFi(100);
 printf_UART_WiFi("%s", "AT+CIPMUX=1\r\n");
 Delay_ms_WiFi(100);
 printf_UART_WiFi("%s", "AT+CIPSERVER=1,80\r\n");
}


void printf_WiFi(char *fmt, ...)
{

 char buffer[100];
 va_list ap;


 __builtin_va_start(ap,fmt);


 vsprintf(buffer, fmt, ap);


 __builtin_va_end(ap);


 sint16 length = 0;
 length = strlen(buffer);

 printf_UART_WiFi("AT+CIPSEND=0,%d\r\n", length);
 Delay_ms_WiFi(100);
 printf_UART_WiFi("%s\r\n", buffer);
}




__inline void Delay_ms_WiFi(unsigned int tic_ms)
{




 unsigned int tic_sub1, tic_sub2, tic_sub3;
  for( tic_sub1 = 0; tic_sub1 < tic_ms; tic_sub1++ )
   for( tic_sub2 = 0; tic_sub2 < 1000; tic_sub2++ )
    for( tic_sub3 = 0; tic_sub3 < 61; tic_sub3++ )
    __nop();
}
