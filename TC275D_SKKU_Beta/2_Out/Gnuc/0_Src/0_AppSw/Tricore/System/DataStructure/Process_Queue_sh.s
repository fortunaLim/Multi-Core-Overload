	.file	"Process_Queue_sh.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	init_queue
	.type	init_queue, @function
init_queue:
.LFB400:
	.file 1 "0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue_sh.c"
	.loc 1 16 0
.LVL0:
	.loc 1 17 0
	mov	%d15, 0
	st.w	[%a4] 1412, %d15
	st.w	[%a4] 1408, %d15
	.loc 1 18 0
	st.w	[%a4] 1416, %d15
	ret
.LFE400:
	.size	init_queue, .-init_queue
	.align 1
	.global	is_empty
	.type	is_empty, @function
is_empty:
.LFB401:
	.loc 1 22 0
.LVL1:
	.loc 1 24 0
	ld.w	%d2, [%a4] 1408
	ld.w	%d15, [%a4] 1412
	.loc 1 25 0
	eq	%d2, %d2, %d15
	ret
.LFE401:
	.size	is_empty, .-is_empty
	.align 1
	.global	is_full
	.type	is_full, @function
is_full:
.LFB402:
	.loc 1 28 0
.LVL2:
	.loc 1 30 0
	ld.w	%d15, [%a4] 1412
	ld.w	%d2, [%a4] 1408
	add	%d15, 1
	and	%d15, %d15, 31
	.loc 1 31 0
	eq	%d2, %d2, %d15
	ret
.LFE402:
	.size	is_full, .-is_full
.section .rodata,"a",@progbits
.LC0:
	.string	"enqueue_full\r\n"
.section .text,"ax",@progbits
	.align 1
	.global	enqueue
	.type	enqueue, @function
enqueue:
.LFB403:
	.loc 1 35 0
.LVL3:
	sub.a	%SP, 48
.LCFI0:
	.loc 1 35 0
	lea	%a15, [%SP] 4
	mov.aa	%a2, %a15
.LBB41:
.LBB42:
	.loc 1 30 0
	ld.w	%d15, [%a4] 1412
.LBE42:
.LBE41:
	.loc 1 35 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e2, [%a5+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	ld.w	%d2, [%a5+]4
	st.w	[%a2+]4, %d2
.LVL4:
.LBB45:
.LBB43:
	.loc 1 30 0
	add	%d15, 1
.LBE43:
.LBE45:
	.loc 1 36 0
	ld.w	%d2, [%a4] 1408
.LBB46:
.LBB44:
	.loc 1 30 0
	and	%d15, %d15, 31
.LBE44:
.LBE46:
	.loc 1 36 0
	jeq	%d2, %d15, .L8
	.loc 1 44 0
	ld.w	%d2, [%a4] 1416
	.loc 1 45 0
	st.w	[%a4] 1412, %d15
	.loc 1 44 0
	add	%d2, 1
	st.w	[%a4] 1416, %d2
	.loc 1 46 0
	mul	%d2, %d15, 44
	addsc.a	%a2, %a4, %d2, 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a2+]4, %d2
	ret
.L8:
	mov.aa	%a15, %a4
.LVL5:
.LBB47:
.LBB48:
	.loc 1 37 0
	movh.a	%a4, hi:.LC0
.LVL6:
	lea	%a4, [%a4] lo:.LC0
	call	printf_SysLog
.LVL7:
	.loc 1 38 0
	ld.w	%d15, [%a15] 1420
	add	%d15, 1
	st.w	[%a15] 1420, %d15
	ret
.LBE48:
.LBE47:
.LFE403:
	.size	enqueue, .-enqueue
.section .rodata,"a",@progbits
.LC1:
	.string	"Queue is full \n"
.section .text,"ax",@progbits
	.align 1
	.global	enqueue_front
	.type	enqueue_front, @function
enqueue_front:
.LFB404:
	.loc 1 53 0
.LVL8:
	sub.a	%SP, 48
.LCFI1:
	.loc 1 52 0
	lea	%a15, [%SP] 4
	mov.aa	%a2, %a15
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e2, [%a5+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	ld.w	%d2, [%a5+]4
	st.w	[%a2+]4, %d2
.LVL9:
.LBB57:
.LBB58:
	.loc 1 30 0
	ld.w	%d2, [%a4] 1412
	ld.w	%d15, [%a4] 1408
	add	%d2, 1
	and	%d2, %d2, 31
.LBE58:
.LBE57:
	.loc 1 55 0
	jeq	%d15, %d2, .L11
	.loc 1 61 0
	mul	%d2, %d15, 44
	.loc 1 62 0
	add	%d15, -1
	and	%d15, %d15, 31
	.loc 1 61 0
	addsc.a	%a2, %a4, %d2, 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a2+]4, %d2
	.loc 1 62 0
	st.w	[%a4] 1408, %d15
	.loc 1 63 0
	ld.w	%d15, [%a4] 1416
	add	%d15, 1
	st.w	[%a4] 1416, %d15
	ret
.L11:
.LVL10:
.LBB59:
.LBB60:
.LBB61:
	.loc 1 56 0
	movh.a	%a4, hi:.LC1
.LVL11:
	lea	%a4, [%a4] lo:.LC1
	call	printf_SysLog
.LVL12:
	.loc 1 57 0
	mov	%d4, 3
.LBE61:
.LBE60:
.LBE59:
	.loc 1 65 0
	lea	%SP, [%SP] 48
.LBB64:
.LBB63:
.LBB62:
	.loc 1 57 0
	j	delay_ms
.LVL13:
.LBE62:
.LBE63:
.LBE64:
.LFE404:
	.size	enqueue_front, .-enqueue_front
.section .rodata,"a",@progbits
.LC2:
	.string	"Offset is full \n"
.section .text,"ax",@progbits
	.align 1
	.global	enqueue_offset
	.type	enqueue_offset, @function
enqueue_offset:
.LFB405:
	.loc 1 68 0
.LVL14:
	sub.a	%SP, 48
.LCFI2:
	.loc 1 67 0
	lea	%a3, [%SP] 4
	mov.aa	%a2, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a15, 5-1
	0:
	ld.d	%e2, [%a5+]8
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	ld.w	%d2, [%a5+]4
	st.w	[%a2+]4, %d2
.LVL15:
.LBB65:
.LBB66:
	.loc 1 30 0
	ld.w	%d3, [%a4] 1412
	ld.w	%d2, [%a4] 1408
	add	%d15, %d3, 1
	and	%d15, %d15, 31
.LBE66:
.LBE65:
	.loc 1 70 0
	jeq	%d2, %d15, .L17
	add	%d2, 1
	.loc 1 74 0
	add	%d4, %d2
.LVL16:
	and	%d5, %d4, 31
	jeq	%d5, %d3, .L18
	.loc 1 81 0
	ld.w	%d2, [%a4] 1416
	.loc 1 82 0
	st.w	[%a4] 1412, %d15
	.loc 1 81 0
	add	%d2, 1
	add	%d15, -1
	st.w	[%a4] 1416, %d2
.LVL17:
.L15:
	.loc 1 86 0 discriminator 1
	add	%d2, %d15, 1
	and	%d2, %d2, 31
	mul	%d3, %d2, 44
	and	%d2, %d15, 31
	addsc.a	%a15, %a4, %d3, 0
	mul	%d3, %d2, 44
	addsc.a	%a2, %a4, %d3, 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a5, 5-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	loop	%a5, 0b
	ld.w	%d2, [%a2+]4
	st.w	[%a15+]4, %d2
.LVL18:
	.loc 1 88 0 discriminator 1
	xor	%d2, %d4, %d15
	and	%d2, %d2, 31
	add	%d15, -1
.LVL19:
	jnz	%d2, .L15
	.loc 1 89 0
	mul	%d3, %d5, 44
	addsc.a	%a4, %a4, %d3, 0
.LVL20:
		# #chunks=5, chunksize=8, remains=4
	lea	%a2, 5-1
	0:
	ld.d	%e2, [%a3+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a3+]4
	st.w	[%a4+]4, %d2
	ret
.LVL21:
.L17:
.LBB67:
	.loc 1 72 0
	movh.a	%a4, hi:.LC1
.LVL22:
.LBE67:
	.loc 1 93 0
.LBB68:
	.loc 1 72 0
	lea	%a4, [%a4] lo:.LC1
.LBE68:
	.loc 1 93 0
	lea	%SP, [%SP] 48
.LBB69:
	.loc 1 72 0
	j	printf_SysLog
.LVL23:
.L18:
.LBE69:
.LBB70:
	.loc 1 76 0
	movh.a	%a4, hi:.LC2
.LVL24:
.LBE70:
	.loc 1 93 0
.LBB71:
	.loc 1 76 0
	lea	%a4, [%a4] lo:.LC2
.LBE71:
	.loc 1 93 0
	lea	%SP, [%SP] 48
.LBB72:
	.loc 1 76 0
	j	printf_SysLog
.LVL25:
.LBE72:
.LFE405:
	.size	enqueue_offset, .-enqueue_offset
	.align 1
	.global	dequeue
	.type	dequeue, @function
dequeue:
.LFB406:
	.loc 1 97 0
.LVL26:
	sub.a	%SP, 48
.LCFI3:
	.loc 1 99 0
	lea	%a15, [%SP] 4
	mov.aa	%a3, %a15
	.loc 1 97 0
	mov.aa	%a2, %a4
	.loc 1 99 0
	mov	%e2, 0
	lea	%a4, 5-1
	0:
	st.d	[%a3+]8, %e2
	loop	%a4, 0b
	st.w	[%a3+]4, %d2
.LVL27:
.LBB73:
.LBB74:
	.loc 1 24 0
	ld.w	%d15, [%a5] 1408
.LBE74:
.LBE73:
	.loc 1 100 0
	ld.w	%d2, [%a5] 1412
	jeq	%d15, %d2, .L22
	.loc 1 107 0
	ld.w	%d2, [%a5] 1424
	.loc 1 108 0
	add	%d15, 1
	.loc 1 107 0
	add	%d2, 1
	.loc 1 108 0
	and	%d15, %d15, 31
	.loc 1 110 0
	mov.aa	%a3, %a15
	.loc 1 107 0
	st.w	[%a5] 1424, %d2
	.loc 1 109 0
	ld.w	%d2, [%a5] 1416
	.loc 1 108 0
	st.w	[%a5] 1408, %d15
	.loc 1 109 0
	add	%d2, -1
	st.w	[%a5] 1416, %d2
	.loc 1 110 0
	mul	%d2, %d15, 44
	addsc.a	%a5, %a5, %d2, 0
.LVL28:
	mov.aa	%a4, %a5
		# #chunks=5, chunksize=8, remains=4
	lea	%a6, 5-1
	0:
	ld.d	%e2, [%a4+]8
	st.d	[%a3+]8, %e2
	loop	%a6, 0b
	ld.w	%d2, [%a4+]4
	st.w	[%a3+]4, %d2
	.loc 1 112 0
	mov.aa	%a4, %a2
	.loc 1 111 0
	mov	%d2, 0
	lea	%a3, 44-1
	0:
	st.b	[%a5+]1, %d2
	loop	%a3, 0b
	.loc 1 112 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a6, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a6, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
	.loc 1 114 0
	ret
.LVL29:
.L22:
	.loc 1 102 0
	mov.aa	%a6, %a2
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a6+]8, %e2
	loop	%a3, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a6+]4, %d2
	ret
.LFE406:
	.size	dequeue, .-dequeue
	.align 1
	.global	dequeue_back
	.type	dequeue_back, @function
dequeue_back:
.LFB407:
	.loc 1 116 0
.LVL30:
	sub.a	%SP, 48
.LCFI4:
	.loc 1 118 0
	lea	%a15, [%SP] 4
	mov.aa	%a3, %a15
	.loc 1 116 0
	mov.aa	%a2, %a4
	.loc 1 118 0
	mov	%e2, 0
	lea	%a4, 5-1
	0:
	st.d	[%a3+]8, %e2
	loop	%a4, 0b
	st.w	[%a3+]4, %d2
.LVL31:
.LBB75:
.LBB76:
	.loc 1 24 0
	ld.w	%d15, [%a5] 1412
.LBE76:
.LBE75:
	.loc 1 119 0
	ld.w	%d2, [%a5] 1408
	jeq	%d2, %d15, .L26
	.loc 1 126 0
	ld.w	%d2, [%a5] 1416
	.loc 1 127 0
	mov.aa	%a4, %a15
	.loc 1 126 0
	add	%d2, -1
	st.w	[%a5] 1416, %d2
	.loc 1 127 0
	mul	%d2, %d15, 44
	addsc.a	%a3, %a5, %d2, 0
	mov.aa	%a6, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a7, 5-1
	0:
	ld.d	%e2, [%a6+]8
	st.d	[%a4+]8, %e2
	loop	%a7, 0b
	ld.w	%d2, [%a6+]4
	st.w	[%a4+]4, %d2
	.loc 1 128 0
	mov	%d2, 0
	lea	%a4, 44-1
	0:
	st.b	[%a3+]1, %d2
	loop	%a4, 0b
	.loc 1 129 0
	ld.w	%d15, [%a5] 1412
	add	%d15, -1
	and	%d15, %d15, 31
	st.w	[%a5] 1412, %d15
.L26:
	.loc 1 130 0
	mov.aa	%a6, %a2
		# #chunks=5, chunksize=8, remains=4
	lea	%a7, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a6+]8, %e2
	loop	%a7, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a6+]4, %d2
	.loc 1 132 0
	ret
.LFE407:
	.size	dequeue_back, .-dequeue_back
	.align 1
	.global	read_queue_front
	.type	read_queue_front, @function
read_queue_front:
.LFB408:
	.loc 1 136 0
.LVL32:
	.loc 1 154 0
	ld.w	%d15, [%a5] 1408
	mov.aa	%a3, %a4
	add	%d15, 1
	and	%d15, %d15, 31
	mul	%d2, %d15, 44
	.loc 1 136 0
	mov.aa	%a2, %a4
	.loc 1 154 0
	addsc.a	%a5, %a5, %d2, 0
.LVL33:
		# #chunks=5, chunksize=8, remains=4
	lea	%a15, 5-1
	0:
	ld.d	%e2, [%a5+]8
	st.d	[%a3+]8, %e2
	loop	%a15, 0b
	ld.w	%d2, [%a5+]4
	st.w	[%a3+]4, %d2
	.loc 1 155 0
	ret
.LFE408:
	.size	read_queue_front, .-read_queue_front
	.align 1
	.global	read_queue_offset
	.type	read_queue_offset, @function
read_queue_offset:
.LFB409:
	.loc 1 157 0
.LVL34:
	sub.a	%SP, 48
.LCFI5:
	.loc 1 159 0
	lea	%a15, [%SP] 4
	mov.aa	%a3, %a15
	.loc 1 157 0
	mov.aa	%a2, %a4
	.loc 1 159 0
	mov	%e2, 0
	lea	%a4, 5-1
	0:
	st.d	[%a3+]8, %e2
	loop	%a4, 0b
	st.w	[%a3+]4, %d2
.LVL35:
.LBB77:
.LBB78:
	.loc 1 24 0
	ld.w	%d15, [%a5] 1408
.LBE78:
.LBE77:
	.loc 1 160 0
	ld.w	%d2, [%a5] 1412
	jeq	%d15, %d2, .L29
	add	%d15, 1
	.loc 1 165 0
	add	%d4, %d15
.LVL36:
	and	%d4, %d4, 31
	mul	%d2, %d4, 44
	mov.aa	%a3, %a2
	addsc.a	%a5, %a5, %d2, 0
.LVL37:
		# #chunks=5, chunksize=8, remains=4
	lea	%a4, 5-1
	0:
	ld.d	%e4, [%a5+]8
	st.d	[%a3+]8, %e4
	loop	%a4, 0b
	ld.w	%d4, [%a5+]4
	st.w	[%a3+]4, %d4
	ret
.LVL38:
.L29:
	.loc 1 168 0
	mov.aa	%a3, %a2
		# #chunks=5, chunksize=8, remains=4
	lea	%a4, 5-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a3+]8, %e2
	loop	%a4, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a3+]4, %d2
	.loc 1 169 0
	ret
.LFE409:
	.size	read_queue_offset, .-read_queue_offset
.section .srodata,"as",@progbits
.LC3:
	.string	"Queue:\n"
.LC4:
	.string	"_%d\r\n"
.LC5:
	.string	"P_END"
.section .text,"ax",@progbits
	.align 1
	.global	print_queue
	.type	print_queue, @function
print_queue:
.LFB410:
	.loc 1 172 0
.LVL39:
	.loc 1 173 0
	ld.w	%d2, [%a4] 1408
	ld.w	%d15, [%a4] 1412
	.loc 1 172 0
	sub.a	%SP, 8
.LCFI6:
	.loc 1 173 0
	jeq	%d2, %d15, .L31
	mov.aa	%a15, %a4
.LBB79:
	.loc 1 177 0
	lea	%a4, [%A0] SM:.LC3
.LVL40:
	call	printf_SysLog
.LVL41:
	.loc 1 178 0
	ld.w	%d2, [%a15] 1412
.LBB80:
.LBB81:
	.loc 1 24 0
	ld.w	%d15, [%a15] 1408
.LBE81:
.LBE80:
	.loc 1 178 0
	jeq	%d15, %d2, .L31
.LVL42:
	movh.a	%a12, hi:temp_string
	lea	%a12, [%a12] lo:temp_string
	j	.L36
.L38:
.LBB82:
	.loc 1 186 0
	ld.w	%d2, [%a15] 1408
	jeq	%d15, %d2, .L35
.LVL43:
.L36:
.LBB83:
	.loc 1 181 0
	add	%d15, 1
.LVL44:
	sha	%d2, %d15, -31
	sh	%d2, %d2, -27
	add	%d15, %d2
.LVL45:
	and	%d15, %d15, 31
	sub	%d15, %d2
.LVL46:
	.loc 1 182 0
	mul	%d2, %d15, 44
	mov.aa	%a4, %a12
	lea	%a5, [%A0] SM:.LC4
	addsc.a	%a2, %a15, %d2, 0
	ld.w	%d2, [%a2] 20
	st.w	[%SP]0, %d2
	call	sprintf
.LVL47:
	.loc 1 183 0
	mov.aa	%a4, %a12
	call	printf_SysLog
.LVL48:
	.loc 1 184 0
	ld.w	%d2, [%a15] 1412
	jne	%d15, %d2, .L38
.L35:
.LBE83:
.LBE82:
.LBE79:
	.loc 1 190 0
.LBB86:
.LBB84:
	.loc 1 187 0
	lea	%a4, [%A0] SM:.LC5
.LBE84:
.LBE86:
	.loc 1 190 0
	lea	%SP, [%SP] 8
.LBB87:
.LBB85:
	.loc 1 187 0
	j	printf_SysLog
.LVL49:
.L31:
	ret
.LBE85:
.LBE87:
.LFE410:
	.size	print_queue, .-print_queue
	.align 1
	.global	set_end_task
	.type	set_end_task, @function
set_end_task:
.LFB411:
	.loc 1 193 0
.LVL50:
	.loc 1 194 0
	ld.w	%d15, [%a4] 1408
	add	%d15, 1
	mul	%d2, %d15, 44
	mov	%d15, 1
	addsc.a	%a4, %a4, %d2, 0
.LVL51:
	st.b	[%a4] 40, %d15
	ret
.LFE411:
	.size	set_end_task, .-set_end_task
	.align 1
	.global	get_task_info
	.type	get_task_info, @function
get_task_info:
.LFB412:
	.loc 1 199 0
.LVL52:
	.loc 1 201 0
	ld.bu	%d15, [%a4]0
	add	%d15, -1
	jge.u	%d15, 8, .L41
	movh.a	%a15, hi:.L43
	lea	%a15, [%a15] lo:.L43
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L43:
	.code32
	j	.L42
	.code32
	j	.L44
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L50
.L48:
	.loc 1 233 0
	mov	%d15, 3170
	.loc 1 234 0
	movh.a	%a15, hi:time_offset2
	ld.w	%d2, [%a15] lo:time_offset2
	.loc 1 233 0
	st.w	[%a4] 16, %d15
	.loc 1 234 0
	mul	%d15, %d2, 60
	.loc 1 235 0
	and	%d2, %d2, 255
	.loc 1 234 0
	st.w	[%a4] 24, %d15
	.loc 1 235 0
	st.b	[%a4] 1, %d2
.L41:
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L49:
	.loc 1 238 0
	mov	%d15, 100
	.loc 1 239 0
	movh.a	%a15, hi:time_offset2
	.loc 1 238 0
	st.w	[%a4] 16, %d15
	.loc 1 239 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 15
	.loc 1 240 0
	sh	%d15, 1
	and	%d15, 255
	.loc 1 239 0
	st.w	[%a4] 24, %d2
	.loc 1 240 0
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L50:
	.loc 1 243 0
	mov	%d15, 250
	.loc 1 244 0
	movh.a	%a15, hi:time_offset2
	ld.w	%d2, [%a15] lo:time_offset2
	.loc 1 243 0
	st.w	[%a4] 16, %d15
	.loc 1 244 0
	mul	%d15, %d2, 25
	.loc 1 245 0
	and	%d2, %d2, 255
	.loc 1 244 0
	st.w	[%a4] 24, %d15
	.loc 1 245 0
	st.b	[%a4] 1, %d2
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L42:
	.loc 1 203 0
	mov	%d15, 80
	.loc 1 204 0
	movh.a	%a15, hi:time_offset2
	.loc 1 203 0
	st.w	[%a4] 16, %d15
	.loc 1 204 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 10
	.loc 1 205 0
	mul	%d15, %d15, 11
	.loc 1 204 0
	st.w	[%a4] 24, %d2
	.loc 1 205 0
	and	%d15, 255
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L44:
	.loc 1 209 0
	mov	%d15, 175
	.loc 1 210 0
	movh.a	%a15, hi:time_offset2
	.loc 1 209 0
	st.w	[%a4] 16, %d15
	.loc 1 210 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 20
	.loc 1 211 0
	mul	%d15, %d15, 11
	.loc 1 210 0
	st.w	[%a4] 24, %d2
	.loc 1 211 0
	and	%d15, 255
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L45:
	.loc 1 215 0
	mov	%d15, 390
	.loc 1 216 0
	movh.a	%a15, hi:time_offset2
	.loc 1 215 0
	st.w	[%a4] 16, %d15
	.loc 1 216 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 30
	.loc 1 217 0
	sh	%d15, 3
	and	%d15, 255
	.loc 1 216 0
	st.w	[%a4] 24, %d2
	.loc 1 217 0
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L46:
	.loc 1 221 0
	mov	%d15, 820
	.loc 1 222 0
	movh.a	%a15, hi:time_offset2
	.loc 1 221 0
	st.w	[%a4] 16, %d15
	.loc 1 222 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 40
	.loc 1 223 0
	mul	%d15, %d15, 5
	.loc 1 222 0
	st.w	[%a4] 24, %d2
	.loc 1 223 0
	and	%d15, 255
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.L47:
	.loc 1 227 0
	mov	%d15, 1580
	.loc 1 228 0
	movh.a	%a15, hi:time_offset2
	.loc 1 227 0
	st.w	[%a4] 16, %d15
	.loc 1 228 0
	ld.w	%d15, [%a15] lo:time_offset2
	mul	%d2, %d15, 50
	.loc 1 229 0
	mul	%d15, %d15, 3
	.loc 1 228 0
	st.w	[%a4] 24, %d2
	.loc 1 229 0
	and	%d15, 255
	st.b	[%a4] 1, %d15
	.loc 1 251 0
	ld.w	%d15, [%a4] 24
	ld.w	%d2, [%a4] 16
	addi	%d15, %d15, 5000
	sub	%d15, %d2
	st.w	[%a4] 20, %d15
	ret
.LFE412:
	.size	get_task_info, .-get_task_info
	.align 1
	.global	Sort_By_EDF
	.type	Sort_By_EDF, @function
Sort_By_EDF:
.LFB413:
	.loc 1 312 0
.LVL53:
	.loc 1 317 0
	mov	%d15, 1436
	mul	%d15, %d4
	.loc 1 312 0
	sub.a	%SP, 48
.LCFI7:
	.loc 1 318 0
	addi	%d3, %d15, 1436
	.loc 1 317 0
	addsc.a	%a15, %a4, %d15, 0
	.loc 1 318 0
	addsc.a	%a12, %a4, %d3, 0
	.loc 1 317 0
	ld.w	%d2, [%a15] 1412
	.loc 1 318 0
	ld.w	%d3, [%a12] 1412
	.loc 1 317 0
	mul	%d0, %d2, 44
	.loc 1 318 0
	mul	%d6, %d3, 44
	.loc 1 317 0
	addsc.a	%a3, %a15, %d0, 0
	.loc 1 318 0
	addsc.a	%a2, %a12, %d6, 0
	.loc 1 317 0
	ld.w	%d2, [%a3] 20
.LVL54:
	.loc 1 318 0
	ld.w	%d3, [%a2] 20
	ld.w	%d6, [%a2] 16
	add	%d3, %d6
.LVL55:
	.loc 1 322 0
	sub	%d6, %d5, %d4
	jeq	%d6, 1, .L51
	.loc 1 334 0
	ld.w	%d7, [%a15] 1408
	ld.w	%d6, [%a3] 20
	mul	%d0, %d7, 44
	mov.aa	%a13, %a4
	addsc.a	%a2, %a15, %d0, 0
	ld.w	%d7, [%a2] 20
	jlt.u	%d7, %d6, .L54
	mov.d	%d6, %a15
	mov.d	%d0, %a12
	sub	%d10, %d15, %d6
	sub	%d9, %d15, %d0
	add	%d5, -2
.LVL56:
	sub	%d8, %d5, %d4
	mov	%d15, 0
	addi	%d10, %d10, 1436
	addi	%d9, %d9, 2872
.LVL57:
.L56:
	.loc 1 341 0
	jlt.u	%d2, %d3, .L63
.LVL58:
.L57:
	addsc.a	%a15, %a15, %d10, 0
	addsc.a	%a12, %a12, %d9, 0
	add.a	%a15, %a13
	.loc 1 317 0
	ld.w	%d2, [%a15] 1412
	add.a	%a12, %a13
	mul	%d3, %d2, 44
	addsc.a	%a3, %a15, %d3, 0
	.loc 1 318 0
	ld.w	%d3, [%a12] 1412
	.loc 1 317 0
	ld.w	%d2, [%a3] 20
.LVL59:
	.loc 1 318 0
	mul	%d4, %d3, 44
	addsc.a	%a2, %a12, %d4, 0
	ld.w	%d3, [%a2] 20
	ld.w	%d4, [%a2] 16
	add	%d3, %d4
.LVL60:
	.loc 1 322 0
	jeq	%d15, %d8, .L51
	.loc 1 334 0
	ld.w	%d4, [%a15] 1408
	ld.w	%d6, [%a3] 20
	mul	%d5, %d4, 44
	add	%d15, 1
.LVL61:
	addsc.a	%a2, %a15, %d5, 0
	ld.w	%d7, [%a2] 20
	jge.u	%d7, %d6, .L56
.LVL62:
.L54:
	.loc 1 336 0
	lea	%a4, [%SP] 4
	mov.aa	%a5, %a15
	call	dequeue_back
.LVL63:
	.loc 1 337 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	.loc 1 338 0
	j	enqueue_front
.LVL64:
.L63:
	.loc 1 343 0
	lea	%a4, [%SP] 4
	mov.aa	%a5, %a15
	call	dequeue_back
.LVL65:
	.loc 1 344 0
	mov.aa	%a4, %a12
	lea	%a5, [%SP] 4
	call	enqueue
.LVL66:
	j	.L57
.LVL67:
.L51:
	ret
.LFE413:
	.size	Sort_By_EDF, .-Sort_By_EDF
	.align 1
	.global	Sort_By_EDF1
	.type	Sort_By_EDF1, @function
Sort_By_EDF1:
.LFB414:
	.loc 1 353 0
.LVL68:
	.loc 1 359 0
	ld.w	%d8, [%a4] 1408
	.loc 1 353 0
	sub.a	%SP, 224
.LCFI8:
	.loc 1 359 0
	addi	%d2, %d8, 1
	and	%d2, %d2, 31
	mul	%d11, %d2, 44
	lea	%a15, [%SP] 136
	.loc 1 353 0
	mov.d	%d15, %a4
	.loc 1 359 0
	addsc.a	%a2, %a4, %d11, 0
	addi	%d10, %d4, -1
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e6, [%a2+]8
	st.d	[%a15+]8, %e6
	loop	%a3, 0b
	ld.w	%d6, [%a2+]4
	st.w	[%a15+]4, %d6
.LVL69:
	.loc 1 361 0
	mov	%d9, 0
	mov	%d0, 0
	lea	%a5, [%SP] 48
	lea	%a4, [%SP] 92
.LVL70:
	.loc 1 367 0
	lea	%a3, [%SP] 4
	.loc 1 361 0
	jlez	%d4, .L65
.LVL71:
.L66:
	.loc 1 362 0 discriminator 1
	sub	%d0, %d10, %d0
	mov	%d2, 0
	jlez	%d0, .L69
.LVL72:
.L72:
	.loc 1 363 0
	and	%d3, %d2, 255
	add	%d3, %d8
	addi	%d5, %d3, 1
	and	%d5, %d5, 31
	madd	%d6, %d15, %d5, 44
	.loc 1 364 0
	add	%d3, 2
	and	%d3, %d3, 31
	.loc 1 363 0
	mov.a	%a7, %d6
	.loc 1 364 0
	madd	%d5, %d15, %d3, 44
	.loc 1 363 0
	mov.aa	%a6, %a5
	mov.a	%a2, %d6
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	.loc 1 364 0
	mov.a	%a7, %d5
	mov.aa	%a6, %a4
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	mov.a	%a15, %d5
	.loc 1 365 0
	ld.w	%d5, [%SP] 64
	ld.w	%d6, [%SP] 108
	and	%d1, %d2, 255
.LVL73:
	jge.u	%d6, %d5, .L67
	.loc 1 367 0
	mov.aa	%a7, %a2
	mov.aa	%a6, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	.loc 1 368 0
	mov.aa	%a6, %a15
		# #chunks=5, chunksize=8, remains=4
	lea	%a7, 5-1
	0:
	ld.d	%e6, [%a6+]8
	st.d	[%a2+]8, %e6
	loop	%a7, 0b
	ld.w	%d6, [%a6+]4
	st.w	[%a2+]4, %d6
	.loc 1 369 0
	mov.aa	%a12, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a2, 5-1
	0:
	ld.d	%e6, [%a12+]8
	st.d	[%a15+]8, %e6
	loop	%a2, 0b
	ld.w	%d6, [%a12+]4
	st.w	[%a15+]4, %d6
.L67:
.LVL74:
	addi	%d3, %d1, 1
	.loc 1 362 0 discriminator 2
	and	%d3, %d3, 255
	add	%d2, 1
	jlt	%d3, %d0, .L72
.LVL75:
.L69:
	addi	%d2, %d9, 1
	.loc 1 361 0
	and	%d0, %d2, 255
	mov	%d9, %d2
.LVL76:
	jlt	%d0, %d4, .L66
.LVL77:
.L65:
	.loc 1 374 0
	mov.a	%a3, %d15
	lea	%a15, [%SP] 180
	addsc.a	%a2, %a3, %d11, 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a6, 5-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	loop	%a6, 0b
	ld.w	%d2, [%a2+]4
	st.w	[%a15+]4, %d2
	.loc 1 375 0
	ld.bu	%d3, [%SP] 136
	ld.bu	%d2, [%SP] 180
	jeq	%d3, %d2, .L64
	.loc 1 377 0
	ld.w	%d2, [%a3] 1428
	addi	%d3, %d2, 1
	st.w	[%a3] 1428, %d3
.L64:
	ret
.LFE414:
	.size	Sort_By_EDF1, .-Sort_By_EDF1
	.align 1
	.global	Sort_By_LLF
	.type	Sort_By_LLF, @function
Sort_By_LLF:
.LFB415:
	.loc 1 407 0
.LVL78:
	.loc 1 413 0
	ld.w	%d8, [%a4] 1408
	.loc 1 407 0
	sub.a	%SP, 224
.LCFI9:
	.loc 1 413 0
	addi	%d2, %d8, 1
	and	%d2, %d2, 31
	mul	%d11, %d2, 44
	lea	%a15, [%SP] 136
	.loc 1 407 0
	mov.d	%d15, %a4
	.loc 1 413 0
	addsc.a	%a2, %a4, %d11, 0
	addi	%d10, %d4, -1
		# #chunks=5, chunksize=8, remains=4
	lea	%a3, 5-1
	0:
	ld.d	%e6, [%a2+]8
	st.d	[%a15+]8, %e6
	loop	%a3, 0b
	ld.w	%d6, [%a2+]4
	st.w	[%a15+]4, %d6
.LVL79:
	.loc 1 415 0
	mov	%d9, 0
	mov	%d0, 0
	lea	%a5, [%SP] 48
	lea	%a4, [%SP] 92
.LVL80:
	.loc 1 421 0
	lea	%a3, [%SP] 4
	.loc 1 415 0
	jlez	%d4, .L75
.LVL81:
.L76:
	.loc 1 416 0 discriminator 1
	sub	%d0, %d10, %d0
	mov	%d2, 0
	jlez	%d0, .L79
.LVL82:
.L82:
	.loc 1 417 0
	and	%d3, %d2, 255
	add	%d3, %d8
	addi	%d5, %d3, 1
	and	%d5, %d5, 31
	madd	%d6, %d15, %d5, 44
	.loc 1 418 0
	add	%d3, 2
	and	%d3, %d3, 31
	.loc 1 417 0
	mov.a	%a7, %d6
	.loc 1 418 0
	madd	%d5, %d15, %d3, 44
	.loc 1 417 0
	mov.aa	%a6, %a5
	mov.a	%a2, %d6
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	.loc 1 418 0
	mov.a	%a7, %d5
	mov.aa	%a6, %a4
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	mov.a	%a15, %d5
	.loc 1 419 0
	ld.w	%d6, [%SP] 68
	ld.w	%d5, [%SP] 112
	and	%d1, %d2, 255
.LVL83:
	jge.u	%d6, %d5, .L77
	.loc 1 421 0
	mov.aa	%a7, %a2
	mov.aa	%a6, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a12, 5-1
	0:
	ld.d	%e6, [%a7+]8
	st.d	[%a6+]8, %e6
	loop	%a12, 0b
	ld.w	%d6, [%a7+]4
	st.w	[%a6+]4, %d6
	.loc 1 422 0
	mov.aa	%a6, %a15
		# #chunks=5, chunksize=8, remains=4
	lea	%a7, 5-1
	0:
	ld.d	%e6, [%a6+]8
	st.d	[%a2+]8, %e6
	loop	%a7, 0b
	ld.w	%d6, [%a6+]4
	st.w	[%a2+]4, %d6
	.loc 1 423 0
	mov.aa	%a12, %a3
		# #chunks=5, chunksize=8, remains=4
	lea	%a2, 5-1
	0:
	ld.d	%e6, [%a12+]8
	st.d	[%a15+]8, %e6
	loop	%a2, 0b
	ld.w	%d6, [%a12+]4
	st.w	[%a15+]4, %d6
.L77:
.LVL84:
	addi	%d3, %d1, 1
	.loc 1 416 0 discriminator 2
	and	%d3, %d3, 255
	add	%d2, 1
	jlt	%d3, %d0, .L82
.LVL85:
.L79:
	addi	%d2, %d9, 1
	.loc 1 415 0
	and	%d0, %d2, 255
	mov	%d9, %d2
.LVL86:
	jlt	%d0, %d4, .L76
.LVL87:
.L75:
	.loc 1 428 0
	mov.a	%a3, %d15
	lea	%a15, [%SP] 180
	addsc.a	%a2, %a3, %d11, 0
		# #chunks=5, chunksize=8, remains=4
	lea	%a6, 5-1
	0:
	ld.d	%e2, [%a2+]8
	st.d	[%a15+]8, %e2
	loop	%a6, 0b
	ld.w	%d2, [%a2+]4
	st.w	[%a15+]4, %d2
	.loc 1 429 0
	ld.bu	%d3, [%SP] 136
	ld.bu	%d2, [%SP] 180
	jeq	%d3, %d2, .L74
	.loc 1 431 0
	ld.w	%d2, [%a3] 1428
	addi	%d3, %d2, 1
	st.w	[%a3] 1428, %d3
.L74:
	ret
.LFE415:
	.size	Sort_By_LLF, .-Sort_By_LLF
	.align 1
	.global	increase_deadline
	.type	increase_deadline, @function
increase_deadline:
.LFB416:
	.loc 1 437 0
.LVL88:
	.loc 1 445 0
	ld.w	%d15, [%a4] 1416
	jlt.u	%d15, 2, .L84
	ld.w	%d4, [%a4] 1408
	mov	%d3, 0
	add	%d4, 1
	mov	%d15, 1
.LVL89:
.L87:
	.loc 1 447 0
	add	%d15, %d4
	and	%d15, %d15, 31
	mul	%d2, %d15, 44
	addsc.a	%a15, %a4, %d2, 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L86
	.loc 1 448 0
	ld.w	%d15, [%a15] 20
	add	%d15, 1
	st.w	[%a15] 20, %d15
.L86:
.LVL90:
	add	%d15, %d3, 2
	.loc 1 445 0 discriminator 2
	ld.w	%d2, [%a4] 1416
	and	%d15, 255
	add	%d3, 1
.LVL91:
	jlt.u	%d15, %d2, .L87
.LVL92:
.L84:
	ret
.LFE416:
	.size	increase_deadline, .-increase_deadline
	.global	time_offset2
.section .data,"aw",@progbits
	.align 2
	.type	time_offset2, @object
	.size	time_offset2, 4
time_offset2:
	.word	8
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
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB403
	.uaword	.LFE403-.LFB403
	.byte	0x4
	.uaword	.LCFI0-.LFB403
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB404
	.uaword	.LFE404-.LFB404
	.byte	0x4
	.uaword	.LCFI1-.LFB404
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB405
	.uaword	.LFE405-.LFB405
	.byte	0x4
	.uaword	.LCFI2-.LFB405
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB406
	.uaword	.LFE406-.LFB406
	.byte	0x4
	.uaword	.LCFI3-.LFB406
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB407
	.uaword	.LFE407-.LFB407
	.byte	0x4
	.uaword	.LCFI4-.LFB407
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB408
	.uaword	.LFE408-.LFB408
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB409
	.uaword	.LFE409-.LFB409
	.byte	0x4
	.uaword	.LCFI5-.LFB409
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB410
	.uaword	.LFE410-.LFB410
	.byte	0x4
	.uaword	.LCFI6-.LFB410
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB411
	.uaword	.LFE411-.LFB411
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB412
	.uaword	.LFE412-.LFB412
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB413
	.uaword	.LFE413-.LFB413
	.byte	0x4
	.uaword	.LCFI7-.LFB413
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB414
	.uaword	.LFE414-.LFB414
	.byte	0x4
	.uaword	.LCFI8-.LFB414
	.byte	0xe
	.uleb128 0xe0
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB415
	.uaword	.LFE415-.LFB415
	.byte	0x4
	.uaword	.LCFI9-.LFB415
	.byte	0xe
	.uleb128 0xe0
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB416
	.uaword	.LFE416-.LFB416
	.align 2
.LEFDE32:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue_sh.h"
	.file 4 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xdc6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/System/DataStructure/Process_Queue_sh.c"
	.string	"C:\\\\Users\\\\sh970\\\\tc275_work\\\\EX1\\\\TC275D_SKKU_Beta"
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
	.uaword	0x1b2
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
	.uaword	0x1de
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
	.uaword	0x20e
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1b2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.uaword	0x1a5
	.uaword	0x265
	.uleb128 0x5
	.uaword	0x265
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.uaword	0x1a5
	.uleb128 0x7
	.string	"_task_info"
	.byte	0x2c
	.byte	0x3
	.byte	0x11
	.uaword	0x365
	.uleb128 0x8
	.string	"task_num"
	.byte	0x3
	.byte	0x13
	.uaword	0x278
	.byte	0
	.uleb128 0x8
	.string	"utill"
	.byte	0x3
	.byte	0x13
	.uaword	0x278
	.byte	0x1
	.uleb128 0x8
	.string	"data"
	.byte	0x3
	.byte	0x14
	.uaword	0x255
	.byte	0x2
	.uleb128 0x8
	.string	"rm_priority"
	.byte	0x3
	.byte	0x15
	.uaword	0x1d0
	.byte	0xa
	.uleb128 0x8
	.string	"edf_priority"
	.byte	0x3
	.byte	0x16
	.uaword	0x1d0
	.byte	0xc
	.uleb128 0x8
	.string	"deadline"
	.byte	0x3
	.byte	0x17
	.uaword	0x365
	.byte	0x10
	.uleb128 0x8
	.string	"deadline_"
	.byte	0x3
	.byte	0x18
	.uaword	0x365
	.byte	0x14
	.uleb128 0x8
	.string	"end_of_count"
	.byte	0x3
	.byte	0x19
	.uaword	0x365
	.byte	0x18
	.uleb128 0x8
	.string	"DLC"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1d0
	.byte	0x1c
	.uleb128 0x8
	.string	"process_time"
	.byte	0x3
	.byte	0x1b
	.uaword	0x245
	.byte	0x20
	.uleb128 0x8
	.string	"time_capture"
	.byte	0x3
	.byte	0x1c
	.uaword	0x200
	.byte	0x24
	.uleb128 0x8
	.string	"end_flag"
	.byte	0x3
	.byte	0x1d
	.uaword	0x36a
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.uaword	0x200
	.uleb128 0x6
	.uaword	0x236
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x3
	.byte	0x1e
	.uaword	0x27d
	.uleb128 0xa
	.string	"_QueueType"
	.uahalf	0x59c
	.byte	0x3
	.byte	0x20
	.uaword	0x421
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x3
	.byte	0x21
	.uaword	0x421
	.byte	0
	.uleb128 0xc
	.string	"front"
	.byte	0x3
	.byte	0x22
	.uaword	0x200
	.uahalf	0x580
	.uleb128 0xc
	.string	"rear"
	.byte	0x3
	.byte	0x22
	.uaword	0x200
	.uahalf	0x584
	.uleb128 0xc
	.string	"queue_count"
	.byte	0x3
	.byte	0x23
	.uaword	0x365
	.uahalf	0x588
	.uleb128 0xc
	.string	"queue_full"
	.byte	0x3
	.byte	0x24
	.uaword	0x365
	.uahalf	0x58c
	.uleb128 0xc
	.string	"queue_end"
	.byte	0x3
	.byte	0x25
	.uaword	0x365
	.uahalf	0x590
	.uleb128 0xc
	.string	"queue_premp"
	.byte	0x3
	.byte	0x26
	.uaword	0x365
	.uahalf	0x594
	.uleb128 0xc
	.string	"queue_deadmiss"
	.byte	0x3
	.byte	0x27
	.uaword	0x365
	.uahalf	0x598
	.byte	0
	.uleb128 0x4
	.uaword	0x36f
	.uaword	0x431
	.uleb128 0x5
	.uaword	0x265
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"QueueType"
	.byte	0x3
	.byte	0x28
	.uaword	0x37a
	.uleb128 0xd
	.string	"_Task_Num"
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.uaword	0x497
	.uleb128 0xe
	.string	"Task1"
	.sleb128 1
	.uleb128 0xe
	.string	"Task2"
	.sleb128 2
	.uleb128 0xe
	.string	"Task3"
	.sleb128 3
	.uleb128 0xe
	.string	"Task4"
	.sleb128 4
	.uleb128 0xe
	.string	"Task5"
	.sleb128 5
	.uleb128 0xe
	.string	"Task6"
	.sleb128 6
	.uleb128 0xe
	.string	"ATask1"
	.sleb128 7
	.uleb128 0xe
	.string	"ATask2"
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0xf
	.byte	0x4
	.uaword	0x4c8
	.uleb128 0x10
	.uaword	0x4cd
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xf
	.byte	0x4
	.uaword	0x4cd
	.uleb128 0x11
	.byte	0x1
	.string	"is_full"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	0x271
	.byte	0x1
	.uaword	0x4fb
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x1c
	.uaword	0x4fb
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x431
	.uleb128 0x13
	.byte	0x1
	.string	"enqueue"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uaword	0x53a
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x23
	.uaword	0x4fb
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.byte	0x23
	.uaword	0x36f
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"enqueue_front"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uaword	0x5a1
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x34
	.uaword	0x4fb
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.byte	0x34
	.uaword	0x36f
	.uleb128 0x18
	.string	"idx"
	.byte	0x1
	.byte	0x36
	.uaword	0x1d0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x36
	.uaword	0x1d0
	.uleb128 0x15
	.uleb128 0x19
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0
	.uaword	0x58f
	.uleb128 0x17
	.uleb128 0x17
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x39
	.uaword	0x271
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"is_empty"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	0x271
	.byte	0x1
	.uaword	0x5c2
	.uleb128 0x12
	.string	"q"
	.byte	0x1
	.byte	0x16
	.uaword	0x4fb
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"init_queue"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.uaword	.LFB400
	.uaword	.LFE400
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5ed
	.uleb128 0x1b
	.string	"q"
	.byte	0x1
	.byte	0x10
	.uaword	0x4fb
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	0x5a1
	.uaword	.LFB401
	.uaword	.LFE401
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x609
	.uleb128 0x1d
	.uaword	0x5b8
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	0x4db
	.uaword	.LFB402
	.uaword	.LFE402
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x625
	.uleb128 0x1d
	.uaword	0x4f1
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.uaword	0x501
	.uaword	.LFB403
	.uaword	.LFE403
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69b
	.uleb128 0x1e
	.uaword	0x513
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	0x51c
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x1f
	.uaword	0x4db
	.uaword	.LBB41
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uaword	0x667
	.uleb128 0x1e
	.uaword	0x4f1
	.uaword	.LLST1
	.byte	0
	.uleb128 0x20
	.uaword	.LBB47
	.uaword	.LBE47
	.uleb128 0x21
	.uaword	0x51c
	.uleb128 0x1d
	.uaword	0x513
	.byte	0x1
	.byte	0x6f
	.uleb128 0x20
	.uaword	.LBB48
	.uaword	.LBE48
	.uleb128 0x22
	.uaword	.LVL7
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x53a
	.uaword	.LFB404
	.uaword	.LFE404
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x73a
	.uleb128 0x1e
	.uaword	0x552
	.uaword	.LLST2
	.uleb128 0x1d
	.uaword	0x55b
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x24
	.uaword	0x566
	.uleb128 0x25
	.uaword	0x571
	.byte	0
	.uleb128 0x26
	.uaword	0x4db
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.byte	0x37
	.uaword	0x6e8
	.uleb128 0x1e
	.uaword	0x4f1
	.uaword	.LLST3
	.byte	0
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1e
	.uaword	0x552
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	0x55b
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x24
	.uaword	0x566
	.uleb128 0x24
	.uaword	0x571
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x28
	.uaword	.LVL12
	.uaword	0xd85
	.uaword	0x726
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0x29
	.uaword	.LVL13
	.byte	0x1
	.uaword	0xd98
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"enqueue_offset"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB405
	.uaword	.LFE405
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x815
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0x43
	.uaword	0x4fb
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	.LASF1
	.byte	0x1
	.byte	0x43
	.uaword	0x36f
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x2a
	.string	"offset"
	.byte	0x1
	.byte	0x43
	.uaword	0x271
	.uaword	.LLST6
	.uleb128 0x2c
	.string	"idx"
	.byte	0x1
	.byte	0x45
	.uaword	0x200
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	0x4db
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.byte	0x46
	.uaword	0x7b6
	.uleb128 0x1e
	.uaword	0x4f1
	.uaword	.LLST8
	.byte	0
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0x7e7
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0x1
	.uaword	0x7d2
	.uleb128 0x17
	.byte	0
	.uleb128 0x29
	.uaword	.LVL23
	.byte	0x1
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0x1
	.uaword	0x7ff
	.uleb128 0x17
	.byte	0
	.uleb128 0x29
	.uaword	.LVL25
	.byte	0x1
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"dequeue"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x36f
	.uaword	.LFB406
	.uaword	.LFE406
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x86a
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0x61
	.uaword	0x4fb
	.uaword	.LLST9
	.uleb128 0x30
	.uaword	.LASF4
	.byte	0x1
	.byte	0x62
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.uaword	0x5a1
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	0x5b8
	.uaword	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"dequeue_back"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	0x36f
	.uaword	.LFB407
	.uaword	.LFE407
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8c0
	.uleb128 0x1b
	.string	"q"
	.byte	0x1
	.byte	0x74
	.uaword	0x4fb
	.byte	0x1
	.byte	0x65
	.uleb128 0x30
	.uaword	.LASF4
	.byte	0x1
	.byte	0x75
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.uaword	0x5a1
	.uaword	.LBB75
	.uaword	.LBE75
	.byte	0x1
	.byte	0x77
	.uleb128 0x1d
	.uaword	0x5b8
	.byte	0x1
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"read_queue_front"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x36f
	.uaword	.LFB408
	.uaword	.LFE408
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8f7
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0x88
	.uaword	0x4fb
	.uaword	.LLST11
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"read_queue_offset"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	0x36f
	.uaword	.LFB409
	.uaword	.LFE409
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x969
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0x9d
	.uaword	0x4fb
	.uaword	.LLST12
	.uleb128 0x2a
	.string	"offset"
	.byte	0x1
	.byte	0x9d
	.uaword	0x271
	.uaword	.LLST13
	.uleb128 0x32
	.string	"temp"
	.byte	0x1
	.byte	0x9e
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.uaword	0x5a1
	.uaword	.LBB77
	.uaword	.LBE77
	.byte	0x1
	.byte	0xa0
	.uleb128 0x1e
	.uaword	0x5b8
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"print_queue"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	.LFB410
	.uaword	.LFE410
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa68
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0xac
	.uaword	0x4fb
	.uaword	.LLST15
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0x1
	.uaword	0x9ae
	.uleb128 0x17
	.byte	0
	.uleb128 0x26
	.uaword	0x5a1
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.byte	0xb2
	.uaword	0x9cb
	.uleb128 0x1e
	.uaword	0x5b8
	.uaword	.LLST16
	.byte	0
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x98
	.uaword	0xa53
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.uaword	0x271
	.uaword	.LLST17
	.uleb128 0x33
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0xa3e
	.uleb128 0x34
	.byte	0x1
	.string	"sprintf"
	.byte	0x4
	.byte	0
	.byte	0x1
	.uaword	0x271
	.byte	0x1
	.uaword	0xa10
	.uleb128 0x35
	.uaword	0x4d5
	.uleb128 0x35
	.uaword	0x4c2
	.uleb128 0x17
	.byte	0
	.uleb128 0x28
	.uaword	.LVL47
	.uaword	0xdab
	.uaword	0xa2d
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL48
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL49
	.byte	0x1
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LVL41
	.uaword	0xd85
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"set_end_task"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	.LFB411
	.uaword	.LFE411
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa97
	.uleb128 0x2a
	.string	"q"
	.byte	0x1
	.byte	0xc0
	.uaword	0x4fb
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"get_task_info"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	.LFB412
	.uaword	.LFE412
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xacb
	.uleb128 0x1b
	.string	"in_task"
	.byte	0x1
	.byte	0xc6
	.uaword	0xacb
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x36f
	.uleb128 0x36
	.byte	0x1
	.string	"Sort_By_EDF"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB413
	.uaword	.LFE413
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbbc
	.uleb128 0x37
	.string	"idx"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x271
	.uaword	.LLST19
	.uleb128 0x37
	.string	"PQ_SIZE"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x271
	.uaword	.LLST20
	.uleb128 0x37
	.string	"priority"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x4fb
	.uaword	.LLST21
	.uleb128 0x38
	.string	"f"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x200
	.uaword	.LLST22
	.uleb128 0x38
	.string	"b"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x200
	.uaword	.LLST23
	.uleb128 0x39
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.uaword	.LVL63
	.uaword	0x86a
	.uaword	0xb70
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3a
	.uaword	.LVL64
	.byte	0x1
	.uaword	0x53a
	.uaword	0xb8b
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.uaword	.LVL65
	.uaword	0x86a
	.uaword	0xba5
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.uaword	.LVL66
	.uaword	0x501
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Sort_By_EDF1"
	.byte	0x1
	.uahalf	0x160
	.byte	0x1
	.uaword	.LFB414
	.uaword	.LFE414
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc60
	.uleb128 0x3b
	.string	"idx"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x271
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"q"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x4fb
	.uaword	.LLST24
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x1a5
	.uaword	.LLST25
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x1a5
	.uaword	.LLST26
	.uleb128 0x39
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x163
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x3c
	.string	"a"
	.byte	0x1
	.uahalf	0x164
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3c
	.string	"b"
	.byte	0x1
	.uahalf	0x164
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x3c
	.string	"be"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.string	"af"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"Sort_By_LLF"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.uaword	.LFB415
	.uaword	.LFE415
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd03
	.uleb128 0x3b
	.string	"idx"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x271
	.byte	0x1
	.byte	0x54
	.uleb128 0x37
	.string	"q"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x4fb
	.uaword	.LLST27
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x1a5
	.uaword	.LLST28
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x1a5
	.uaword	.LLST29
	.uleb128 0x39
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x199
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x3c
	.string	"a"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3c
	.string	"b"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x3c
	.string	"be"
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x36f
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.string	"af"
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x36f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"increase_deadline"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.uaword	.LFB416
	.uaword	.LFE416
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xd45
	.uleb128 0x3b
	.string	"q"
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x4fb
	.byte	0x1
	.byte	0x64
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.uahalf	0x1b6
	.uaword	0x1a5
	.uaword	.LLST30
	.byte	0
	.uleb128 0x4
	.uaword	0x4cd
	.uaword	0xd55
	.uleb128 0x5
	.uaword	0x265
	.byte	0x1d
	.byte	0
	.uleb128 0x3d
	.string	"temp_string"
	.byte	0x1
	.byte	0xc
	.uaword	0xd45
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.string	"time_offset2"
	.byte	0x1
	.byte	0xd
	.uaword	0x271
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	time_offset2
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF2
	.byte	0x1
	.byte	0x25
	.uaword	0x271
	.byte	0x1
	.uaword	0xd98
	.uleb128 0x17
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.uaword	.LASF3
	.byte	0x1
	.byte	0x39
	.uaword	0x271
	.byte	0x1
	.uaword	0xdab
	.uleb128 0x17
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"sprintf"
	.byte	0x4
	.byte	0
	.byte	0x1
	.uaword	0x271
	.byte	0x1
	.uleb128 0x35
	.uaword	0x4d5
	.uleb128 0x35
	.uaword	0x4c2
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE403-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10-.Ltext0
	.uaword	.LVL11-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE404-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL16-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL23-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-1-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL17-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x84
	.sleb128 1412
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18-.Ltext0
	.uaword	.LVL19-.Ltext0
	.uahalf	0x8
	.byte	0x84
	.sleb128 1412
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL19-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x84
	.sleb128 1412
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x584
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15-.Ltext0
	.uaword	.LVL20-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-.Ltext0
	.uaword	.LVL21-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21-.Ltext0
	.uaword	.LVL22-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL23-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE405-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LFE406-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL28-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LFE406-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-.Ltext0
	.uaword	.LFE408-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE409-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL36-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE409-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL37-.Ltext0
	.uaword	.LVL38-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE409-.Ltext0
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL49-.Ltext0
	.uaword	.LFE410-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL41-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL42-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL49-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-.Ltext0
	.uaword	.LFE411-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58-.Ltext0
	.uaword	.LVL61-.Ltext0
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL56-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL56-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x3
	.byte	0x75
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL57-.Ltext0
	.uaword	.LFE413-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE413-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-1-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE413-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL55-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL60-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-1-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE413-.Ltext0
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL70-.Ltext0
	.uaword	.LFE414-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL75-.Ltext0
	.uaword	.LVL76-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74-.Ltext0
	.uaword	.LVL75-.Ltext0
	.uahalf	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL78-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL80-.Ltext0
	.uaword	.LFE415-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL85-.Ltext0
	.uaword	.LVL86-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL86-.Ltext0
	.uaword	.LVL87-.Ltext0
	.uahalf	0x3
	.byte	0x72
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83-.Ltext0
	.uaword	.LVL84-.Ltext0
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84-.Ltext0
	.uaword	.LVL85-.Ltext0
	.uahalf	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL88-.Ltext0
	.uaword	.LVL89-.Ltext0
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL89-.Ltext0
	.uaword	.LVL90-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL90-.Ltext0
	.uaword	.LVL91-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
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
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB41-.Ltext0
	.uaword	.LBE41-.Ltext0
	.uaword	.LBB45-.Ltext0
	.uaword	.LBE45-.Ltext0
	.uaword	.LBB46-.Ltext0
	.uaword	.LBE46-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB59-.Ltext0
	.uaword	.LBE59-.Ltext0
	.uaword	.LBB64-.Ltext0
	.uaword	.LBE64-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB67-.Ltext0
	.uaword	.LBE67-.Ltext0
	.uaword	.LBB68-.Ltext0
	.uaword	.LBE68-.Ltext0
	.uaword	.LBB69-.Ltext0
	.uaword	.LBE69-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB70-.Ltext0
	.uaword	.LBE70-.Ltext0
	.uaword	.LBB71-.Ltext0
	.uaword	.LBE71-.Ltext0
	.uaword	.LBB72-.Ltext0
	.uaword	.LBE72-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB79-.Ltext0
	.uaword	.LBE79-.Ltext0
	.uaword	.LBB86-.Ltext0
	.uaword	.LBE86-.Ltext0
	.uaword	.LBB87-.Ltext0
	.uaword	.LBE87-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB82-.Ltext0
	.uaword	.LBE82-.Ltext0
	.uaword	.LBB84-.Ltext0
	.uaword	.LBE84-.Ltext0
	.uaword	.LBB85-.Ltext0
	.uaword	.LBE85-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"task_data"
.LASF2:
	.string	"printf_SysLog"
.LASF0:
	.string	"task_info"
.LASF3:
	.string	"delay_ms"
.LASF4:
	.string	"task_temp"
	.extern	sprintf,STT_FUNC,0
	.extern	temp_string,STT_OBJECT,30
	.extern	delay_ms,STT_FUNC,0
	.extern	printf_SysLog,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
