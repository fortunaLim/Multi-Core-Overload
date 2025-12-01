	.file	"SysTools_Queue.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	initQueue
	.type	initQueue, @function
initQueue:
.LFB0:
	.file 1 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
	.loc 1 12 0
.LVL0:
	.loc 1 13 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
	.loc 1 14 0
	st.w	[%a4] 4, %d15
	ret
.LFE0:
	.size	initQueue, .-initQueue
	.align 1
	.global	enQueue
	.type	enQueue, @function
enQueue:
.LFB1:
	.loc 1 21 0
.LVL1:
	.loc 1 21 0
	mov	%d15, %d4
	.loc 1 30 0
	mov	%d4, 12
.LVL2:
	.loc 1 21 0
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	.loc 1 30 0
	call	malloc
.LVL3:
	.loc 1 35 0
	ld.a	%a3, [%a12] 4
	.loc 1 33 0
	st.w	[%a2]0, %d15
	.loc 1 35 0
	jz.a	%a3, .L11
	.loc 1 45 0
	ld.w	%d15, [%a12]0
.LVL4:
	add	%d15, 1
	st.w	[%a12]0, %d15
	.loc 1 47 0
	mov.d	%d15, %a15
	jeq	%d15, -1, .L12
	.loc 1 54 0
	jz.a	%a15, .L7
	.loc 1 70 0
	ld.a	%a3, [%a15] 8
	.loc 1 74 0
	st.a	[%a2] 4, %a15
	.loc 1 73 0
	st.a	[%a15] 8, %a2
	.loc 1 72 0
	st.a	[%a2] 8, %a3
	.loc 1 70 0
	jz.a	%a3, .L13
	.loc 1 81 0
	st.a	[%a3] 4, %a2
	ret
.LVL5:
.L9:
	mov.aa	%a3, %a15
.LVL6:
.L7:
	.loc 1 59 0
	ld.a	%a15, [%a3] 8
	jnz.a	%a15, .L9
	.loc 1 63 0
	st.a	[%a2] 4, %a3
	.loc 1 64 0
	st.a	[%a2] 8, %a15
	.loc 1 65 0
	st.a	[%a3] 8, %a2
	ret
.LVL7:
.L11:
	.loc 1 40 0
	mov	%d15, 1
.LVL8:
	.loc 1 37 0
	st.a	[%a12] 4, %a2
	.loc 1 38 0
	st.a	[%a2] 4, %a3
	.loc 1 39 0
	st.a	[%a2] 8, %a3
	.loc 1 40 0
	st.w	[%a12]0, %d15
	ret
.LVL9:
.L12:
	.loc 1 51 0
	mov	%d15, 0
.LVL10:
	.loc 1 49 0
	st.a	[%a2] 8, %a3
	.loc 1 50 0
	st.a	[%a3] 4, %a2
	.loc 1 51 0
	st.w	[%a2] 4, %d15
	.loc 1 52 0
	st.a	[%a12] 4, %a2
	ret
.LVL11:
.L13:
	ret
.LFE1:
	.size	enQueue, .-enQueue
	.align 1
	.global	deQueue
	.type	deQueue, @function
deQueue:
.LFB2:
	.loc 1 90 0
.LVL12:
	.loc 1 99 0
	ld.w	%d15, [%a4]0
	jlez	%d15, .L14
.LBB2:
	.loc 1 101 0
	add	%d15, -1
	.loc 1 104 0
	ld.a	%a2, [%a5] 8
	.loc 1 101 0
	st.w	[%a4]0, %d15
	.loc 1 104 0
	jz.a	%a2, .L20
	.loc 1 116 0
	ld.a	%a15, [%a5] 4
	jz.a	%a15, .L21
	.loc 1 123 0
	st.a	[%a15] 8, %a2
	.loc 1 124 0
	ld.a	%a2, [%a5] 8
	st.a	[%a2] 4, %a15
.L18:
	.loc 1 127 0
	mov.aa	%a4, %a5
.LVL13:
	j	free
.LVL14:
.L14:
	ret
.L20:
	.loc 1 106 0
	ld.a	%a15, [%a4] 4
	ld.w	%d15, [%a15] 8
	jz	%d15, .L22
	.loc 1 113 0
	ld.a	%a15, [%a5] 4
	.loc 1 127 0
	mov.aa	%a4, %a5
.LVL15:
	.loc 1 113 0
	st.a	[%a15] 8, %a2
	.loc 1 127 0
	j	free
.LVL16:
.L21:
	.loc 1 118 0
	st.a	[%a4] 4, %a2
	.loc 1 119 0
	st.a	[%a2] 4, %a15
	.loc 1 127 0
	mov.aa	%a4, %a5
.LVL17:
	j	free
.LVL18:
.L22:
	.loc 1 108 0
	st.w	[%a4] 4, %d15
	j	.L18
.LBE2:
.LFE2:
	.size	deQueue, .-deQueue
	.align 1
	.global	outQueue
	.type	outQueue, @function
outQueue:
.LFB3:
	.loc 1 135 0
.LVL19:
	.loc 1 142 0
	ld.a	%a5, [%a4] 4
	.loc 1 144 0
	mov	%d2, -1
	.loc 1 142 0
	jz.a	%a5, .L24
	.loc 1 148 0
	ld.w	%d15, [%a5]0
.LVL20:
	.loc 1 149 0
	call	deQueue
.LVL21:
	.loc 1 150 0
	mov	%d2, %d15
.LVL22:
.L24:
	.loc 1 152 0
	ret
.LFE3:
	.size	outQueue, .-outQueue
	.global	test
.section .bss,"aw",@nobits
	.align 2
	.type	test, @object
	.size	test, 4
test:
	.zero	4
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.h"
	.file 3 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x435
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/System/Systems/SysTools_Queue.c"
	.string	"D:\\\\TC275\\\\eclipse\\\\workspace\\\\TC275D_SKKU_Beta"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"Q_node_ptr"
	.byte	0x2
	.byte	0xd
	.uaword	0x19c
	.uleb128 0x3
	.string	"Q_node"
	.byte	0xc
	.byte	0x2
	.byte	0xe
	.uaword	0x1dd
	.uleb128 0x4
	.string	"data"
	.byte	0x2
	.byte	0x10
	.uaword	0x1dd
	.byte	0
	.uleb128 0x4
	.string	"prev_Link"
	.byte	0x2
	.byte	0x11
	.uaword	0x1e4
	.byte	0x4
	.uleb128 0x4
	.string	"next_Link"
	.byte	0x2
	.byte	0x11
	.uaword	0x1e4
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x4
	.uaword	0x18a
	.uleb128 0x3
	.string	"Q_head"
	.byte	0x8
	.byte	0x2
	.byte	0x14
	.uaword	0x216
	.uleb128 0x4
	.string	"num"
	.byte	0x2
	.byte	0x16
	.uaword	0x1dd
	.byte	0
	.uleb128 0x4
	.string	"primary"
	.byte	0x2
	.byte	0x17
	.uaword	0x216
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x19c
	.uleb128 0x2
	.string	"Q_head_ptr"
	.byte	0x2
	.byte	0x18
	.uaword	0x1ea
	.uleb128 0x7
	.byte	0x1
	.string	"initQueue"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x25b
	.uleb128 0x8
	.string	"head"
	.byte	0x1
	.byte	0xb
	.uaword	0x25b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x21c
	.uleb128 0x7
	.byte	0x1
	.string	"enQueue"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f4
	.uleb128 0x9
	.string	"head"
	.byte	0x1
	.byte	0x14
	.uaword	0x25b
	.uaword	.LLST0
	.uleb128 0x9
	.string	"pre"
	.byte	0x1
	.byte	0x14
	.uaword	0x216
	.uaword	.LLST1
	.uleb128 0x9
	.string	"data"
	.byte	0x1
	.byte	0x14
	.uaword	0x1dd
	.uaword	.LLST2
	.uleb128 0xa
	.string	"new"
	.byte	0x1
	.byte	0x1e
	.uaword	0x216
	.byte	0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0x1
	.string	"malloc"
	.byte	0x3
	.byte	0
	.byte	0x1
	.uaword	0x2f4
	.byte	0x1
	.uaword	0x2d4
	.uleb128 0xc
	.uaword	0x2f6
	.byte	0
	.uleb128 0xd
	.string	"temp"
	.byte	0x1
	.byte	0x1f
	.uaword	0x216
	.uaword	.LLST3
	.uleb128 0xe
	.uaword	.LVL3
	.uaword	0x40c
	.uleb128 0xf
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x7
	.byte	0x1
	.string	"deQueue"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3a4
	.uleb128 0x9
	.string	"head"
	.byte	0x1
	.byte	0x59
	.uaword	0x25b
	.uaword	.LLST4
	.uleb128 0x9
	.string	"old"
	.byte	0x1
	.byte	0x59
	.uaword	0x216
	.uaword	.LLST5
	.uleb128 0x11
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x12
	.byte	0x1
	.string	"free"
	.byte	0x3
	.byte	0
	.byte	0x1
	.byte	0x1
	.uaword	0x364
	.uleb128 0xc
	.uaword	0x2f4
	.byte	0
	.uleb128 0x13
	.uaword	.LVL14
	.byte	0x1
	.uaword	0x427
	.uaword	0x37a
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x13
	.uaword	.LVL16
	.byte	0x1
	.uaword	0x427
	.uaword	0x390
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x14
	.uaword	.LVL18
	.byte	0x1
	.uaword	0x427
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"outQueue"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x1dd
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3f9
	.uleb128 0x9
	.string	"head"
	.byte	0x1
	.byte	0x86
	.uaword	0x25b
	.uaword	.LLST6
	.uleb128 0xd
	.string	"output"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1dd
	.uaword	.LLST7
	.uleb128 0xe
	.uaword	.LVL21
	.uaword	0x30b
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"test"
	.byte	0x1
	.byte	0x11
	.uaword	0x216
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test
	.uleb128 0xb
	.byte	0x1
	.string	"malloc"
	.byte	0x3
	.byte	0
	.byte	0x1
	.uaword	0x2f4
	.byte	0x1
	.uaword	0x427
	.uleb128 0xc
	.uaword	0x2f6
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"free"
	.byte	0x3
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x2f4
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
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL3-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.Ltext0
	.uaword	.LVL2-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL8-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL13-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL14-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14-1-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16-1-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL18-1-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL18-1-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL21-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1-.Ltext0
	.uaword	.LFE3-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL22-.Ltext0
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
	.extern	free,STT_FUNC,0
	.extern	malloc,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
