	.file	"SysCFG_Log.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	IO_Set_SysLog
	.type	IO_Set_SysLog, @function
IO_Set_SysLog:
.LFB400:
	.file 1 "0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.c"
	.loc 1 14 0
	.loc 1 15 0
	j	Set_UART_SysLog
.LVL0:
.LFE400:
	.size	IO_Set_SysLog, .-IO_Set_SysLog
	.align 1
	.global	printf_SysLog
	.type	printf_SysLog, @function
printf_SysLog:
.LFB401:
	.loc 1 19 0
.LVL1:
	sub.a	%SP, 104
.LCFI0:
.LVL2:
	.loc 1 19 0
	mov.aa	%a5, %a4
	.loc 1 28 0
	lea	%a6, [%SP] 104
.LVL3:
	lea	%a4, [%SP] 4
.LVL4:
	call	vsprintf
.LVL5:
	.loc 1 35 0
	lea	%a4, [%SP] 4
	call	strlen
.LVL6:
	.loc 1 37 0
	extr	%d4, %d2, 0, 16
	lea	%a4, [%SP] 4
	j	printf_UART_SysLog
.LVL7:
.LFE401:
	.size	printf_SysLog, .-printf_SysLog
	.align 1
	.global	printf_SysLogEx
	.type	printf_SysLogEx, @function
printf_SysLogEx:
.LFB402:
	.loc 1 44 0
.LVL8:
	sub.a	%SP, 104
.LCFI1:
	.loc 1 47 0
	jeq	%d4, 2, .L3
	mov.aa	%a5, %a4
	.loc 1 59 0
	lea	%a6, [%SP] 104
	lea	%a4, [%SP] 4
.LVL9:
	mov	%d8, %d4
.LVL10:
	call	vsprintf
.LVL11:
	.loc 1 66 0
	lea	%a4, [%SP] 4
	call	strlen
.LVL12:
	extr	%d15, %d2, 0, 16
.LVL13:
	.loc 1 68 0
	jeq	%d8, 1, .L11
	.loc 1 72 0
	lea	%a4, [%SP] 4
	mov	%d4, %d15
	call	printf_UART_SysLog
.LVL14:
.L3:
	ret
.LVL15:
.L11:
.LBB2:
	.loc 1 70 0
	mov	%d4, 10
	call	delay_ms
.LVL16:
.LBE2:
	.loc 1 72 0
	lea	%a4, [%SP] 4
	mov	%d4, %d15
	call	printf_UART_SysLog
.LVL17:
	j	.L3
.LFE402:
	.size	printf_SysLogEx, .-printf_SysLogEx
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB400
	.uaword	.LFE400-.LFB400
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB401
	.uaword	.LFE401-.LFB401
	.byte	0x4
	.uaword	.LCFI0-.LFB401
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.byte	0x4
	.uaword	.LCFI1-.LFB402
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/stdarg.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h"
	.file 7 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x554
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.c"
	.string	"D:\\\\TC275\\\\eclipse\\\\workspace\\\\TC275D_SKKU_Beta"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x2
	.byte	0xd4
	.uaword	0x1a0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0x1d8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x1f7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x25e
	.uleb128 0x5
	.uaword	0x263
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x263
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x4
	.byte	0x28
	.uaword	0x2a5
	.uleb128 0x7
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x4
	.byte	0x66
	.uaword	0x28f
	.uleb128 0x8
	.byte	0x1
	.string	"IO_Set_SysLog"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f5
	.uleb128 0x9
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x4c8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"printf_SysLog"
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a3
	.uleb128 0xa
	.string	"fmt"
	.byte	0x1
	.byte	0x12
	.uaword	0x289
	.uaword	.LLST0
	.uleb128 0xb
	.uleb128 0xc
	.string	"buffer"
	.byte	0x1
	.byte	0x15
	.uaword	0x3a3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xd
	.string	"ap"
	.byte	0x1
	.byte	0x16
	.uaword	0x2b9
	.uaword	.LLST1
	.uleb128 0xd
	.string	"length"
	.byte	0x1
	.byte	0x22
	.uaword	0x1e9
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	.LVL5
	.uaword	0x4de
	.uaword	0x37b
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL6
	.uaword	0x505
	.uaword	0x390
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x10
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x520
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x263
	.uaword	0x3b3
	.uleb128 0x12
	.uaword	0x27d
	.byte	0x63
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"printf_SysLogEx"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c8
	.uleb128 0xa
	.string	"nSysLevel"
	.byte	0x1
	.byte	0x2b
	.uaword	0x1cb
	.uaword	.LLST3
	.uleb128 0xa
	.string	"fmt"
	.byte	0x1
	.byte	0x2b
	.uaword	0x289
	.uaword	.LLST4
	.uleb128 0xb
	.uleb128 0xc
	.string	"buffer"
	.byte	0x1
	.byte	0x34
	.uaword	0x3a3
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xd
	.string	"ap"
	.byte	0x1
	.byte	0x35
	.uaword	0x2b9
	.uaword	.LLST5
	.uleb128 0xd
	.string	"length"
	.byte	0x1
	.byte	0x41
	.uaword	0x1e9
	.uaword	.LLST6
	.uleb128 0x13
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x45e
	.uleb128 0x14
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x46
	.uaword	0x1b5
	.byte	0x1
	.uaword	0x44e
	.uleb128 0xb
	.byte	0
	.uleb128 0x15
	.uaword	.LVL16
	.uaword	0x548
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	.LVL11
	.uaword	0x4de
	.uaword	0x480
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL12
	.uaword	0x505
	.uaword	0x495
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0xe
	.uaword	.LVL14
	.uaword	0x520
	.uaword	0x4b0
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x15
	.uaword	.LVL17
	.uaword	0x520
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Set_UART_SysLog"
	.byte	0x7
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"vsprintf"
	.byte	0x5
	.byte	0xc4
	.byte	0x1
	.uaword	0x1b5
	.byte	0x1
	.uaword	0x505
	.uleb128 0x18
	.uaword	0x289
	.uleb128 0x18
	.uaword	0x258
	.uleb128 0x18
	.uaword	0x26b
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"strlen"
	.byte	0x6
	.byte	0x22
	.byte	0x1
	.uaword	0x192
	.byte	0x1
	.uaword	0x520
	.uleb128 0x18
	.uaword	0x258
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"printf_UART_SysLog"
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uaword	0x548
	.uleb128 0x18
	.uaword	0x289
	.uleb128 0x18
	.uaword	0x1b5
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x46
	.uaword	0x1b5
	.byte	0x1
	.uleb128 0xb
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL5-1-.Ltext0
	.uaword	.LFE401-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL5-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5-1-.Ltext0
	.uaword	.LFE401-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-1-.Ltext0
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL11-1-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14-1-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"delay_ms"
	.extern	delay_ms,STT_FUNC,0
	.extern	printf_UART_SysLog,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.extern	Set_UART_SysLog,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
