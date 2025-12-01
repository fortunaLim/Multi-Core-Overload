	.file	"Process_Queue.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	initial_Queue
	.type	initial_Queue, @function
initial_Queue:
.LFB400:
	.file 1 "0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue.c"
	.loc 1 22 0
.LVL0:
	.loc 1 24 0
	mov	%d15, 0
	.loc 1 23 0
	movh.a	%a15, hi:mode
	.loc 1 24 0
	movh.a	%a2, hi:head
	.loc 1 23 0
	st.w	[%a15] lo:mode, %d4
	.loc 1 24 0
	lea	%a15, [%a2] lo:head
	.loc 1 25 0
	st.w	[%a15] 4, %d15
	.loc 1 27 0
	movh.a	%a15, hi:old
	lea	%a15, [%a15] lo:old
	.loc 1 24 0
	st.w	[%a2] lo:head, %d15
	.loc 1 27 0
	st.h	[%a15] 8, %d15
	ret
.LFE400:
	.size	initial_Queue, .-initial_Queue
	.align 1
	.global	RQ_Sorting
	.type	RQ_Sorting, @function
RQ_Sorting:
.LFB401:
	.loc 1 31 0
.LVL1:
	.loc 1 32 0
	jeq	%d4, 1, .L4
	jeq	%d4, 2, .L5
	jz	%d4, .L8
	ret
.L8:
	.loc 1 38 0
	movh.a	%a15, hi:head
	.loc 1 35 0
	st.a	[%a5] 20, %a4
	.loc 1 38 0
	lea	%a15, [%a15] lo:head
	.loc 1 36 0
	st.a	[%a4] 24, %a5
	.loc 1 37 0
	st.w	[%a4] 20, %d4
	.loc 1 38 0
	st.a	[%a15] 4, %a4
	.loc 1 39 0
	ret
.L5:
	.loc 1 49 0
	mov	%d15, 0
	.loc 1 47 0
	st.a	[%a5] 24, %a4
	.loc 1 48 0
	st.a	[%a4] 20, %a5
	.loc 1 49 0
	st.w	[%a4] 24, %d15
	ret
.L4:
.LVL2:
.LBB4:
.LBB5:
	.loc 1 42 0
	ld.a	%a15, [%a5] 20
	.loc 1 41 0
	st.a	[%a4] 24, %a5
	.loc 1 42 0
	st.a	[%a15] 24, %a4
	.loc 1 43 0
	st.a	[%a4] 20, %a15
	.loc 1 44 0
	ld.a	%a15, [%a4] 24
	st.a	[%a15] 20, %a4
	ret
.LBE5:
.LBE4:
.LFE401:
	.size	RQ_Sorting, .-RQ_Sorting
	.align 1
	.global	RQ_enqueue
	.type	RQ_enqueue, @function
RQ_enqueue:
.LFB402:
	.loc 1 55 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 54 0
	mov.aa	%a15, %SP
	ld.hu	%d15, [%a4]0
.LVL3:
	ld.hu	%d9, [%a4] 2
.LVL4:
	ld.w	%d8, [%a4] 4
.LVL5:
	.loc 1 57 0
	mov	%d4, 28
	.loc 1 54 0
		# #chunks=2, chunksize=8, remains=0
	ld.d	%e2, [%a4+]8
	st.d	[%a15+]8, %e2
	ld.d	%e2, [%a4+]8
	st.d	[%a15+]8, %e2
.LVL6:
	.loc 1 57 0
	call	malloc
.LVL7:
	.loc 1 59 0
	mov.aa	%a3, %a2
	mov	%e2, 0
	st.d	[%a3+]8, %e2
	st.d	[%a3+]8, %e2
	st.d	[%a3+]8, %e2
	st.w	[%a3+]4, %d2
.LVL8:
	.loc 1 63 0
	st.h	[%a2] 8, %d15
	.loc 1 64 0
	st.h	[%a2] 10, %d9
	.loc 1 65 0
	st.w	[%a2] 12, %d8
	mov.a	%a4, 0
	mov.a	%a15, 7
.LVL9:
.L10:
	.loc 1 68 0 discriminator 3
	lea	%a3, [%SP] 8
	add.a	%a3, %a4
	add.a	%a5, %a2, %a4
	ld.bu	%d2, [%a3]0
	st.b	[%a5]0, %d2
.LVL10:
	add.a	%a4, 1
.LVL11:
	.loc 1 67 0 discriminator 3
	loop	%a15, .L10
	.loc 1 70 0
	movh.a	%a3, hi:head
	lea	%a4, [%a3] lo:head
.LVL12:
	ld.a	%a15, [%a4] 4
	jz.a	%a15, .L56
	.loc 1 83 0
	ld.w	%d2, [%a3] lo:head
	add	%d2, 1
	st.w	[%a3] lo:head, %d2
	.loc 1 85 0
	movh.a	%a3, hi:mode
	ld.w	%d2, [%a3] lo:mode
	jlt.u	%d2, 4, .L57
	ret
.L57:
	movh.a	%a3, hi:.L14
	lea	%a3, [%a3] lo:.L14
	addsc.a	%a3, %a3, %d2, 2
	ji	%a3
	.align 2
	.align 2
.L14:
	.code32
	j	.L13
	.code32
	j	.L15
	.code32
	j	.L16
	.code32
	j	.L17
.L16:
.LVL13:
	.loc 1 146 0
	ld.w	%d2, [%a15] 24
	jz	%d2, .L37
	ld.hu	%d4, [%a15] 8
	mov	%d2, 0
.LVL14:
.L30:
	.loc 1 159 0
	jge.u	%d15, %d4, .L33
	addi	%d3, %d2, 1
	and	%d3, %d3, 255
	.loc 1 161 0
	jeq	%d3, 1, .L54
	.loc 1 167 0
	jge.u	%d3, 2, .L52
.L33:
	.loc 1 175 0
	ld.a	%a3, [%a15] 24
	jz.a	%a3, .L50
.LVL15:
	addi	%d3, %d2, 2
	.loc 1 156 0
	and	%d3, %d3, 255
	jge.u	%d3, 2, .L58
	add	%d2, 1
.LVL16:
	j	.L30
.LVL17:
.L15:
	.loc 1 104 0
	ld.w	%d15, [%a15] 24
.LVL18:
	jz	%d15, .L20
	ld.w	%d3, [%a15] 12
	mov	%d15, 0
.LVL19:
.L21:
	.loc 1 117 0
	jge.u	%d8, %d3, .L24
	add	%d2, %d15, 1
	and	%d2, %d2, 255
	.loc 1 119 0
	jeq	%d2, 1, .L54
	.loc 1 125 0
	jge.u	%d2, 2, .L52
.L24:
	.loc 1 133 0
	ld.a	%a3, [%a15] 24
	jz.a	%a3, .L50
.LVL20:
	add	%d2, %d15, 2
	.loc 1 114 0
	and	%d2, %d2, 255
	jge.u	%d2, 2, .L59
	add	%d15, 1
.LVL21:
	j	.L21
.LVL22:
.L13:
	.loc 1 89 0
	ld.a	%a4, [%a15] 24
	mov.aa	%a3, %a4
	jnz.a	%a4, .L47
	j	.L60
.LVL23:
.L45:
	mov.aa	%a3, %a15
.LVL24:
.L47:
	ld.a	%a15, [%a3] 24
.LVL25:
	.loc 1 93 0
	jnz.a	%a15, .L45
.LVL26:
.LBB46:
.LBB47:
	.loc 1 47 0
	st.a	[%a3] 24, %a2
	.loc 1 48 0
	st.a	[%a2] 20, %a3
	.loc 1 49 0
	st.a	[%a2] 24, %a15
	ret
.LVL27:
.L17:
.LBE47:
.LBE46:
	.loc 1 187 0
	ld.w	%d2, [%a15] 24
	jz	%d2, .L37
	ld.hu	%d4, [%a15] 8
	mov	%d2, 0
.LVL28:
.L38:
	.loc 1 200 0
	jge.u	%d15, %d4, .L41
	addi	%d3, %d2, 1
	and	%d3, %d3, 255
	.loc 1 202 0
	jeq	%d3, 1, .L54
	.loc 1 208 0
	jge.u	%d3, 2, .L52
.L41:
	.loc 1 215 0
	ld.a	%a3, [%a15] 24
	jz.a	%a3, .L50
.LVL29:
	addi	%d3, %d2, 2
	.loc 1 197 0
	and	%d3, %d3, 255
	jge.u	%d3, 2, .L61
	add	%d2, 1
.LVL30:
	j	.L38
.LVL31:
.L50:
.LBB48:
.LBB49:
	.loc 1 47 0
	st.a	[%a15] 24, %a2
	.loc 1 48 0
	st.a	[%a2] 20, %a15
	.loc 1 49 0
	st.a	[%a2] 24, %a3
	ret
.LVL32:
.L54:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	.loc 1 37 0
	mov	%d15, 0
	.loc 1 35 0
	st.a	[%a15] 20, %a2
	.loc 1 36 0
	st.a	[%a2] 24, %a15
	.loc 1 37 0
	st.w	[%a2] 20, %d15
	.loc 1 38 0
	st.a	[%a4] 4, %a2
	ret
.LVL33:
.L52:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
.LBB54:
	.loc 1 41 0
	st.a	[%a2] 24, %a15
	.loc 1 42 0
	ld.a	%a15, [%a15] 20
.LVL34:
	st.a	[%a15] 24, %a2
.LVL35:
	.loc 1 43 0
	st.a	[%a2] 20, %a15
	.loc 1 44 0
	ld.a	%a15, [%a2] 24
	st.a	[%a15] 20, %a2
	ret
.LVL36:
.L56:
.LBE54:
.LBE53:
.LBE52:
	.loc 1 73 0
	mov	%d15, 1
.LVL37:
	.loc 1 74 0
	st.a	[%a2] 20, %a15
	.loc 1 75 0
	st.a	[%a2] 24, %a15
	.loc 1 73 0
	st.w	[%a3] lo:head, %d15
	.loc 1 77 0
	st.a	[%a4] 4, %a2
	ret
.LVL38:
.L37:
	.loc 1 189 0
	ld.hu	%d3, [%a15] 8
	jge.u	%d15, %d3, .L39
.LVL39:
.LBB55:
.LBB56:
	.loc 1 35 0
	st.a	[%a15] 20, %a2
	.loc 1 36 0
	st.a	[%a2] 24, %a15
	.loc 1 37 0
	st.w	[%a2] 20, %d2
	.loc 1 38 0
	st.a	[%a4] 4, %a2
	ret
.LVL40:
.L20:
.LBE56:
.LBE55:
	.loc 1 106 0
	ld.w	%d2, [%a15] 12
	jge.u	%d8, %d2, .L22
.LVL41:
.LBB57:
.LBB58:
	.loc 1 35 0
	st.a	[%a15] 20, %a2
	.loc 1 36 0
	st.a	[%a2] 24, %a15
	.loc 1 37 0
	st.w	[%a2] 20, %d15
	.loc 1 38 0
	st.a	[%a4] 4, %a2
	ret
.LVL42:
.L39:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	.loc 1 47 0
	st.a	[%a15] 24, %a2
	.loc 1 48 0
	st.a	[%a2] 20, %a15
	.loc 1 49 0
	st.w	[%a2] 24, %d2
	ret
.LVL43:
.L22:
.LBE60:
.LBE59:
.LBB61:
.LBB62:
	.loc 1 47 0
	st.a	[%a15] 24, %a2
	.loc 1 48 0
	st.a	[%a2] 20, %a15
	.loc 1 49 0
	st.w	[%a2] 24, %d15
	ret
.LVL44:
.L60:
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	.loc 1 47 0
	st.a	[%a15] 24, %a2
	.loc 1 48 0
	st.a	[%a2] 20, %a15
	.loc 1 49 0
	st.a	[%a2] 24, %a4
	ret
.LVL45:
.L59:
	ld.w	%d3, [%a3] 12
.LBE64:
.LBE63:
	.loc 1 114 0
	mov.aa	%a15, %a3
	add	%d15, 1
.LVL46:
	j	.L21
.LVL47:
.L61:
	ld.hu	%d4, [%a3] 8
	.loc 1 197 0
	mov.aa	%a15, %a3
	add	%d2, 1
.LVL48:
	j	.L38
.LVL49:
.L58:
	ld.hu	%d4, [%a3] 8
	.loc 1 156 0
	mov.aa	%a15, %a3
	add	%d2, 1
.LVL50:
	j	.L30
.LFE402:
	.size	RQ_enqueue, .-RQ_enqueue
	.align 1
	.global	RQ_dequeue
	.type	RQ_dequeue, @function
RQ_dequeue:
.LFB403:
	.loc 1 230 0
.LVL51:
	.loc 1 231 0
	movh.a	%a15, hi:head
	ld.w	%d15, [%a15] lo:head
	lea	%a3, [%a15] lo:head
	add	%d15, -1
	.loc 1 232 0
	ld.a	%a2, [%a3] 4
	movh.a	%a4, hi:ptr
	.loc 1 231 0
	st.w	[%a15] lo:head, %d15
	.loc 1 232 0
	st.a	[%a4] lo:ptr, %a2
	.loc 1 235 0
	jz	%d4, .L64
	jne	%d4, 2, .L70
	.loc 1 247 0
	ld.a	%a15, [%a2] 24
	jz.a	%a15, .L71
.L69:
	mov.aa	%a2, %a15
	.loc 1 251 0
	ld.a	%a15, [%a15] 24
	jnz.a	%a15, .L69
	.loc 1 253 0
	ld.a	%a3, [%a2] 20
	st.a	[%a4] lo:ptr, %a2
	st.a	[%a3] 24, %a15
	.loc 1 259 0
	ret
.L70:
	ret
.L64:
	.loc 1 238 0
	ld.a	%a15, [%a2] 24
	.loc 1 239 0
	st.a	[%a3] 4, %a15
	.loc 1 238 0
	jz.a	%a15, .L72
	.loc 1 243 0
	ld.w	%d15, [%a2] 20
	st.w	[%a15] 20, %d15
	ret
.L72:
	ret
.L71:
	.loc 1 248 0
	st.a	[%a3] 4, %a15
	ret
.LFE403:
	.size	RQ_dequeue, .-RQ_dequeue
	.global	data_length
.section .bss,"aw",@nobits
	.align 2
	.type	data_length, @object
	.size	data_length, 4
data_length:
	.zero	4
	.global	compare_mode
	.type	compare_mode, @object
	.size	compare_mode, 1
compare_mode:
	.zero	1
	.global	ptr
	.align 2
	.type	ptr, @object
	.size	ptr, 4
ptr:
	.zero	4
	.global	head
	.align 2
	.type	head, @object
	.size	head, 8
head:
	.zero	8
	.global	mode
	.align 2
	.type	mode, @object
	.size	mode, 4
mode:
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
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB402
	.uaword	.LFE402-.LFB402
	.byte	0x4
	.uaword	.LCFI0-.LFB402
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/0_AppSw/Tricore/System/Service_Handler/Frame_Define.h"
	.file 4 "0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue.h"
	.file 5 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x849
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue.c"
	.string	"C:\\\\Users\\\\tpwjd\\\\workspace\\\\TC275D_SKKU_Beta"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0x1a9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1d5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x205
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0x11
	.uaword	0x266
	.uleb128 0x5
	.string	"ID"
	.byte	0x3
	.byte	0x12
	.uaword	0x1c7
	.byte	0
	.uleb128 0x5
	.string	"DLC"
	.byte	0x3
	.byte	0x13
	.uaword	0x1c7
	.byte	0x2
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x14
	.uaword	0x266
	.byte	0x4
	.uleb128 0x5
	.string	"Data"
	.byte	0x3
	.byte	0x15
	.uaword	0x276
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x7
	.uaword	0x19c
	.uaword	0x286
	.uleb128 0x8
	.uaword	0x286
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"CAN_Network_Frame"
	.byte	0x3
	.byte	0x16
	.uaword	0x22d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"Queue_node_ptr"
	.byte	0x4
	.byte	0x10
	.uaword	0x2c8
	.uleb128 0x9
	.string	"Node"
	.byte	0x1c
	.byte	0x4
	.byte	0x27
	.uaword	0x345
	.uleb128 0x5
	.string	"data"
	.byte	0x4
	.byte	0x29
	.uaword	0x276
	.byte	0
	.uleb128 0x5
	.string	"priority"
	.byte	0x4
	.byte	0x2a
	.uaword	0x1c7
	.byte	0x8
	.uleb128 0x5
	.string	"DLC"
	.byte	0x4
	.byte	0x2b
	.uaword	0x1c7
	.byte	0xa
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x2c
	.uaword	0x266
	.byte	0xc
	.uleb128 0x5
	.string	"time_capture"
	.byte	0x4
	.byte	0x2d
	.uaword	0x1f7
	.byte	0x10
	.uleb128 0x5
	.string	"prev_Link"
	.byte	0x4
	.byte	0x2e
	.uaword	0x405
	.byte	0x14
	.uleb128 0x5
	.string	"next_Link"
	.byte	0x4
	.byte	0x2e
	.uaword	0x405
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"Head"
	.byte	0x8
	.byte	0x4
	.byte	0x31
	.uaword	0x36c
	.uleb128 0x5
	.string	"num"
	.byte	0x4
	.byte	0x33
	.uaword	0x1f7
	.byte	0
	.uleb128 0x5
	.string	"node"
	.byte	0x4
	.byte	0x34
	.uaword	0x40b
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.string	"_Queue_Type"
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.uaword	0x3b6
	.uleb128 0xb
	.string	"Queue_FIFO"
	.sleb128 0
	.uleb128 0xb
	.string	"Queue_EDF"
	.sleb128 1
	.uleb128 0xb
	.string	"Queue_RM"
	.sleb128 2
	.uleb128 0xb
	.string	"Queue_Proposed"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Queue_Type"
	.byte	0x4
	.byte	0x1e
	.uaword	0x36c
	.uleb128 0xa
	.string	"_Queue_Dir"
	.byte	0x4
	.byte	0x4
	.byte	0x20
	.uaword	0x405
	.uleb128 0xb
	.string	"front_queue"
	.sleb128 0
	.uleb128 0xb
	.string	"inner_queue"
	.sleb128 1
	.uleb128 0xb
	.string	"back_queue"
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uaword	0x2b2
	.uleb128 0xc
	.byte	0x4
	.uaword	0x2c8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xd
	.byte	0x4
	.uleb128 0xe
	.byte	0x1
	.string	"RQ_Sorting"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.uaword	0x488
	.uleb128 0xf
	.string	"new_node"
	.byte	0x1
	.byte	0x1e
	.uaword	0x40b
	.uleb128 0xf
	.string	"com_node"
	.byte	0x1
	.byte	0x1e
	.uaword	0x40b
	.uleb128 0xf
	.string	"ctrl"
	.byte	0x1
	.byte	0x1e
	.uaword	0x2ab
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"initial_Queue"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bf
	.uleb128 0x11
	.string	"Queue_mode"
	.byte	0x1
	.byte	0x15
	.uaword	0x2ab
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x12
	.uaword	0x446
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x507
	.uleb128 0x13
	.uaword	0x45b
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.uaword	0x46b
	.byte	0x1
	.byte	0x65
	.uleb128 0x13
	.uaword	0x47b
	.byte	0x1
	.byte	0x54
	.uleb128 0x14
	.uaword	.LBB4
	.uaword	.LBE4
	.uleb128 0x15
	.uaword	0x47b
	.byte	0x1
	.uleb128 0x13
	.uaword	0x46b
	.byte	0x1
	.byte	0x65
	.uleb128 0x13
	.uaword	0x45b
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"RQ_enqueue"
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x789
	.uleb128 0x16
	.string	"CANFrame"
	.byte	0x1
	.byte	0x36
	.uaword	0x292
	.uaword	.LLST0
	.uleb128 0x17
	.string	"temp"
	.byte	0x1
	.byte	0x38
	.uaword	0x40b
	.uaword	.LLST1
	.uleb128 0x18
	.string	"new"
	.byte	0x1
	.byte	0x39
	.uaword	0x40b
	.byte	0x1
	.byte	0x62
	.uleb128 0x19
	.byte	0x1
	.string	"malloc"
	.byte	0x5
	.byte	0
	.byte	0x1
	.uaword	0x444
	.byte	0x1
	.uaword	0x572
	.uleb128 0x1a
	.uaword	0x205
	.byte	0
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.byte	0x3d
	.uaword	0x19c
	.uaword	.LLST2
	.uleb128 0x17
	.string	"node_count"
	.byte	0x1
	.byte	0x3d
	.uaword	0x19c
	.uaword	.LLST3
	.uleb128 0x17
	.string	"sort_count"
	.byte	0x1
	.byte	0x3d
	.uaword	0x19c
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x60
	.uaword	0x5dc
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST5
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0xda
	.uaword	0x60b
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST8
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST9
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST10
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0xcd
	.uaword	0x63a
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST11
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST13
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0xd3
	.uaword	0x68e
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST16
	.uleb128 0x14
	.uaword	.LBB53
	.uaword	.LBE53
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB55
	.uaword	.LBE55
	.byte	0x1
	.byte	0xbe
	.uaword	0x6bd
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST20
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST21
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST22
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.byte	0x6b
	.uaword	0x6ec
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST23
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST24
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST25
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB59
	.uaword	.LBE59
	.byte	0x1
	.byte	0xc0
	.uaword	0x71b
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST26
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST27
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST28
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.byte	0x6d
	.uaword	0x74a
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST29
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST31
	.byte	0
	.uleb128 0x1b
	.uaword	0x446
	.uaword	.LBB63
	.uaword	.LBE63
	.byte	0x1
	.byte	0x5a
	.uaword	0x779
	.uleb128 0x1c
	.uaword	0x47b
	.uaword	.LLST32
	.uleb128 0x1c
	.uaword	0x46b
	.uaword	.LLST33
	.uleb128 0x1c
	.uaword	0x45b
	.uaword	.LLST34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL7
	.uaword	0x835
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"RQ_dequeue"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.uaword	0x40b
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7bb
	.uleb128 0x11
	.string	"ctrl"
	.byte	0x1
	.byte	0xe5
	.uaword	0x2ab
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x20
	.string	"mode"
	.byte	0x1
	.byte	0xb
	.uaword	0x3b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	mode
	.uleb128 0x20
	.string	"head"
	.byte	0x1
	.byte	0xd
	.uaword	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	head
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0xe
	.uaword	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ptr
	.uleb128 0x20
	.string	"compare_mode"
	.byte	0x1
	.byte	0x10
	.uaword	0x19c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	compare_mode
	.uleb128 0x20
	.string	"data_length"
	.byte	0x1
	.byte	0x11
	.uaword	0x1f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	data_length
	.uleb128 0x21
	.string	"old"
	.byte	0x1
	.byte	0x13
	.uaword	0x2c8
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"malloc"
	.byte	0x5
	.byte	0
	.byte	0x1
	.uaword	0x444
	.byte	0x1
	.uleb128 0x1a
	.uaword	0x205
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xe
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL5-.Ltext0
	.uahalf	0xa
	.byte	0x84
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x84
	.sleb128 2
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0xd
	.byte	0x84
	.sleb128 0
	.byte	0x93
	.uleb128 0x2
	.byte	0x84
	.sleb128 2
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0xa
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL47-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0xb
	.byte	0x5f
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL24-.Ltext0
	.uaword	.LVL25-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	head+4
	.uaword	.LVL25-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 24
	.uaword	.LVL38-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL45-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LVL12-.Ltext0
	.uahalf	0x3
	.byte	0x84
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LVL30-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL46-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL47-.Ltext0
	.uaword	.LVL48-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL50-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL36-.Ltext0
	.uaword	.LFE402-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31-.Ltext0
	.uaword	.LVL32-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL34-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x2
	.byte	0x82
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL42-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL43-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x62
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
	.string	"process_time"
	.extern	malloc,STT_FUNC,0
	.extern	old,STT_OBJECT,28
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
