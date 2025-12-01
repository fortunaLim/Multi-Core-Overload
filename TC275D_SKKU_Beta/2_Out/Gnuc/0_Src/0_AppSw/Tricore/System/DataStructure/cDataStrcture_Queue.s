	.file	"cDataStrcture_Queue.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	ResetNode
	.type	ResetNode, @function
ResetNode:
.LFB0:
	.file 1 "0_Src/0_AppSw/Tricore/System/DataStructure/cDataStrcture_Queue.c"
	.loc 1 37 0
.LVL0:
	.loc 1 38 0
	mov	%d15, 0
	st.w	[%a4] 12, %d15
	.loc 1 39 0
	st.w	[%a4] 16, %d15
	.loc 1 40 0
	st.w	[%a4] 20, %d15
	.loc 1 41 0
	st.w	[%a4]0, %d15
	.loc 1 42 0
	st.w	[%a4] 4, %d15
	.loc 1 43 0
	st.w	[%a4] 8, %d15
	ret
.LFE0:
	.size	ResetNode, .-ResetNode
	.align 1
	.global	PutFreeBufferNode
	.type	PutFreeBufferNode, @function
PutFreeBufferNode:
.LFB1:
	.loc 1 47 0
.LVL1:
	.loc 1 48 0
	movh.a	%a15, hi:g_stp_FreeBuffer
	ld.w	%d15, [%a15] lo:g_stp_FreeBuffer
	jz	%d15, .L5
	.loc 1 54 0
	st.w	[%a4] 16, %d15
.L5:
	.loc 1 55 0
	st.a	[%a15] lo:g_stp_FreeBuffer, %a4
	.loc 1 58 0
	movh.a	%a15, hi:g_n_FreeBufferCnt
	ld.w	%d15, [%a15] lo:g_n_FreeBufferCnt
	add	%d15, 1
	st.w	[%a15] lo:g_n_FreeBufferCnt, %d15
	ret
.LFE1:
	.size	PutFreeBufferNode, .-PutFreeBufferNode
	.align 1
	.global	GetFreeBufferNode
	.type	GetFreeBufferNode, @function
GetFreeBufferNode:
.LFB2:
	.loc 1 62 0
.LVL2:
	.loc 1 65 0
	movh.a	%a15, hi:g_stp_FreeBuffer
	ld.a	%a2, [%a15] lo:g_stp_FreeBuffer
	jz.a	%a2, .L8
.LVL3:
	.loc 1 72 0
	ld.w	%d15, [%a2] 16
	st.w	[%a15] lo:g_stp_FreeBuffer, %d15
	.loc 1 75 0
	movh.a	%a15, hi:g_n_FreeBufferCnt
	ld.w	%d15, [%a15] lo:g_n_FreeBufferCnt
	add	%d15, -1
	st.w	[%a15] lo:g_n_FreeBufferCnt, %d15
.LVL4:
.L8:
	.loc 1 78 0
	ret
.LFE2:
	.size	GetFreeBufferNode, .-GetFreeBufferNode
	.align 1
	.global	CheckPrev
	.type	CheckPrev, @function
CheckPrev:
.LFB3:
	.loc 1 82 0
.LVL5:
	.loc 1 83 0
	movh.a	%a15, hi:g_n_ListCnt
	ld.w	%d3, [%a15] lo:g_n_ListCnt
	.loc 1 88 0
	sh	%d15, %d4, -31
	or.ge	%d15, %d4, %d3
	.loc 1 90 0
	mov	%d2, 0
	.loc 1 88 0
	jnz	%d15, .L13
	.loc 1 93 0 discriminator 1
	eq	%d2, %d3, 0
	and.ne	%d2, %d4, 0
	xor	%d2, %d2, 1
.L13:
	.loc 1 99 0
	ret
.LFE3:
	.size	CheckPrev, .-CheckPrev
	.global	abort
	.align 1
	.global	CreateNode
	.type	CreateNode, @function
CreateNode:
.LFB4:
	.loc 1 102 0
	.loc 1 105 0
	movh.a	%a15, hi:g_st_ListSetting
	ld.bu	%d15, [%a15] lo:g_st_ListSetting
	jz	%d15, .L16
	.loc 1 107 0
	movh.a	%a15, hi:g_n_FreeBufferCnt
	ld.w	%d15, [%a15] lo:g_n_FreeBufferCnt
	jz	%d15, .L16
.LVL6:
.LBB16:
.LBB17:
	.loc 1 65 0
	movh.a	%a3, hi:g_stp_FreeBuffer
	ld.a	%a2, [%a3] lo:g_stp_FreeBuffer
	jz.a	%a2, .L19
.LVL7:
	.loc 1 75 0
	add	%d15, -1
	.loc 1 72 0
	ld.w	%d2, [%a2] 16
	st.w	[%a3] lo:g_stp_FreeBuffer, %d2
	.loc 1 75 0
	st.w	[%a15] lo:g_n_FreeBufferCnt, %d15
.LVL8:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	.loc 1 38 0
	mov	%d15, 0
	st.w	[%a2] 12, %d15
	.loc 1 39 0
	st.w	[%a2] 16, %d15
	.loc 1 40 0
	st.w	[%a2] 20, %d15
	.loc 1 41 0
	st.w	[%a2]0, %d15
	.loc 1 42 0
	st.w	[%a2] 4, %d15
	.loc 1 43 0
	st.w	[%a2] 8, %d15
	ret
.LVL9:
.L19:
	.loc 1 38 0
	st.a	0x0000000c, %a2
	call	abort
.LVL10:
.L16:
	mov	%d15, 0
.LBE19:
.LBE18:
	.loc 1 118 0
	mov	%d4, 24
	call	malloc
.LVL11:
.LBB21:
.LBB20:
	.loc 1 38 0
	st.w	[%a2] 12, %d15
	.loc 1 39 0
	st.w	[%a2] 16, %d15
	.loc 1 40 0
	st.w	[%a2] 20, %d15
	.loc 1 41 0
	st.w	[%a2]0, %d15
	.loc 1 42 0
	st.w	[%a2] 4, %d15
	.loc 1 43 0
	st.w	[%a2] 8, %d15
	ret
.LBE20:
.LBE21:
.LFE4:
	.size	CreateNode, .-CreateNode
	.align 1
	.global	DeleteNode
	.type	DeleteNode, @function
DeleteNode:
.LFB5:
	.loc 1 127 0
.LVL12:
	.loc 1 128 0
	movh.a	%a15, hi:g_st_ListSetting
	ld.bu	%d15, [%a15] lo:g_st_ListSetting
	lea	%a3, [%a15] lo:g_st_ListSetting
	jz	%d15, .L22
	.loc 1 130 0
	movh.a	%a2, hi:g_n_FreeBufferCnt
	ld.w	%d2, [%a2] lo:g_n_FreeBufferCnt
	ld.w	%d15, [%a3] 4
	jge	%d2, %d15, .L22
.LVL13:
.LBB26:
.LBB27:
.LBB28:
	.loc 1 48 0
	movh.a	%a15, hi:g_stp_FreeBuffer
	ld.w	%d15, [%a15] lo:g_stp_FreeBuffer
	jz	%d15, .L29
	.loc 1 54 0
	st.w	[%a4] 16, %d15
.L29:
	.loc 1 58 0
	add	%d2, 1
	.loc 1 55 0
	st.a	[%a15] lo:g_stp_FreeBuffer, %a4
	.loc 1 58 0
	st.w	[%a2] lo:g_n_FreeBufferCnt, %d2
	ret
.LVL14:
.L22:
.LBE28:
.LBE27:
.LBE26:
	.loc 1 132 0
	j	free
.LVL15:
.LFE5:
	.size	DeleteNode, .-DeleteNode
	.align 1
	.global	PutData
	.type	PutData, @function
PutData:
.LFB6:
	.loc 1 146 0
.LVL16:
	.loc 1 147 0
	mov.aa	%a3, %a4
	mov	%e2, 0
	st.d	[%a3+]8, %e2
	st.d	[%a3+]8, %e2
	st.d	[%a3+]8, %e2
.LVL17:
	.loc 1 150 0
	ld.w	%d2, [%a5] 4
	st.w	[%a4] 4, %d2
.LVL18:
	.loc 1 151 0
	ld.w	%d3, [%a5] 8
	.loc 1 152 0
	ld.w	%d15, [%a5] 12
	.loc 1 154 0
	ld.w	%d2, [%a5]0
.LVL19:
	.loc 1 146 0
	mov.aa	%a2, %a4
	.loc 1 151 0
	st.w	[%a4] 8, %d3
.LVL20:
	.loc 1 152 0
	st.w	[%a4] 12, %d15
.LVL21:
	.loc 1 154 0
	st.w	[%a4]0, %d2
	.loc 1 155 0
	ret
.LFE6:
	.size	PutData, .-PutData
	.align 1
	.global	Pop_back
	.type	Pop_back, @function
Pop_back:
.LFB7:
	.loc 1 159 0
.LVL22:
	.loc 1 163 0
	movh.a	%a13, hi:g_n_ListCnt
	.loc 1 160 0
	mov.aa	%a2, %a4
	.loc 1 163 0
	ld.w	%d15, [%a13] lo:g_n_ListCnt
	.loc 1 160 0
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
.LVL23:
	.loc 1 159 0
	mov.aa	%a15, %a4
	.loc 1 163 0
	jnz	%d15, .L38
	.loc 1 187 0
	mov.aa	%a2, %a15
	ret
.L38:
	.loc 1 168 0
	movh.a	%a14, hi:g_stp_Tail
	ld.a	%a12, [%a14] lo:g_stp_Tail
.LVL24:
	.loc 1 169 0
	mov.aa	%a5, %a12
	call	PutData
.LVL25:
	.loc 1 171 0
	ld.a	%a2, [%a12] 20
	jz.a	%a2, .L33
	.loc 1 173 0
	mov	%d2, 0
	.loc 1 174 0
	st.a	[%a14] lo:g_stp_Tail, %a2
	.loc 1 173 0
	st.w	[%a2] 16, %d2
.L34:
	.loc 1 184 0
	add	%d15, -1
	.loc 1 182 0
	mov.aa	%a4, %a12
	call	DeleteNode
.LVL26:
	.loc 1 187 0
	mov.aa	%a2, %a15
	.loc 1 184 0
	st.w	[%a13] lo:g_n_ListCnt, %d15
	.loc 1 187 0
	ret
.L33:
	.loc 1 178 0
	movh.a	%a3, hi:g_stp_Head
	st.a	[%a3] lo:g_stp_Head, %a2
	.loc 1 179 0
	st.a	[%a14] lo:g_stp_Tail, %a2
	j	.L34
.LFE7:
	.size	Pop_back, .-Pop_back
	.align 1
	.global	Pop_front
	.type	Pop_front, @function
Pop_front:
.LFB8:
	.loc 1 190 0
.LVL27:
	.loc 1 194 0
	movh.a	%a13, hi:g_n_ListCnt
	.loc 1 191 0
	mov.aa	%a2, %a4
	.loc 1 194 0
	ld.w	%d15, [%a13] lo:g_n_ListCnt
	.loc 1 191 0
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
.LVL28:
	.loc 1 190 0
	mov.aa	%a15, %a4
	.loc 1 194 0
	jnz	%d15, .L46
	.loc 1 217 0
	mov.aa	%a2, %a15
	ret
.L46:
	.loc 1 199 0
	movh.a	%a14, hi:g_stp_Head
	ld.a	%a12, [%a14] lo:g_stp_Head
.LVL29:
	.loc 1 200 0
	mov.aa	%a5, %a12
	call	PutData
.LVL30:
	.loc 1 202 0
	ld.a	%a2, [%a12] 16
	jz.a	%a2, .L41
	.loc 1 204 0
	mov	%d2, 0
	.loc 1 205 0
	st.a	[%a14] lo:g_stp_Head, %a2
	.loc 1 204 0
	st.w	[%a2] 20, %d2
.L42:
	.loc 1 214 0
	add	%d15, -1
	.loc 1 212 0
	mov.aa	%a4, %a12
	call	DeleteNode
.LVL31:
	.loc 1 217 0
	mov.aa	%a2, %a15
	.loc 1 214 0
	st.w	[%a13] lo:g_n_ListCnt, %d15
	.loc 1 217 0
	ret
.L41:
	.loc 1 210 0
	movh.a	%a3, hi:g_stp_Tail
	.loc 1 209 0
	st.a	[%a14] lo:g_stp_Head, %a2
	.loc 1 210 0
	st.a	[%a3] lo:g_stp_Tail, %a2
	j	.L42
.LFE8:
	.size	Pop_front, .-Pop_front
	.align 1
	.global	Pop_front_value
	.type	Pop_front_value, @function
Pop_front_value:
.LFB9:
	.loc 1 219 0
.LVL32:
	.loc 1 223 0
	movh.a	%a13, hi:g_n_ListCnt
	ld.w	%d15, [%a13] lo:g_n_ListCnt
	.loc 1 219 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 225 0
	mov	%d2, -1
	.loc 1 223 0
	jz	%d15, .L48
	.loc 1 228 0
	movh.a	%a12, hi:g_stp_Head
	ld.a	%a15, [%a12] lo:g_stp_Head
.LVL33:
	.loc 1 229 0
	mov.aa	%a4, %SP
	mov.aa	%a5, %a15
	call	PutData
.LVL34:
	.loc 1 231 0
	ld.a	%a2, [%a15] 16
	.loc 1 229 0
	ld.w	%d8, [%SP] 12
.LVL35:
	.loc 1 231 0
	jz.a	%a2, .L49
	.loc 1 233 0
	mov	%d2, 0
	.loc 1 234 0
	st.a	[%a12] lo:g_stp_Head, %a2
	.loc 1 233 0
	st.w	[%a2] 20, %d2
.L50:
	.loc 1 243 0
	add	%d15, -1
	.loc 1 241 0
	mov.aa	%a4, %a15
	call	DeleteNode
.LVL36:
	.loc 1 245 0
	mov	%d2, %d8
	.loc 1 243 0
	st.w	[%a13] lo:g_n_ListCnt, %d15
.LVL37:
.L48:
	.loc 1 246 0
	ret
.LVL38:
.L49:
	.loc 1 239 0
	movh.a	%a3, hi:g_stp_Tail
	.loc 1 238 0
	st.a	[%a12] lo:g_stp_Head, %a2
	.loc 1 239 0
	st.a	[%a3] lo:g_stp_Tail, %a2
	j	.L50
.LFE9:
	.size	Pop_front_value, .-Pop_front_value
	.align 1
	.global	InitDoublyLinkedList
	.type	InitDoublyLinkedList, @function
InitDoublyLinkedList:
.LFB10:
	.loc 1 249 0
.LVL39:
	.loc 1 250 0
	movh.a	%a2, hi:g_st_ListSetting
	lea	%a15, [%a2] lo:g_st_ListSetting
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L55
	ret
.L55:
	.loc 1 255 0
	st.b	[%a2] lo:g_st_ListSetting, %d4
	.loc 1 256 0
	st.w	[%a15] 4, %d5
	.loc 1 258 0
	call	CreateNode
.LVL40:
	movh.a	%a3, hi:g_stp_Head
	st.a	[%a3] lo:g_stp_Head, %a2
	.loc 1 259 0
	call	CreateNode
.LVL41:
	movh.a	%a3, hi:g_stp_Tail
	.loc 1 262 0
	mov	%d15, 1
	.loc 1 259 0
	st.a	[%a3] lo:g_stp_Tail, %a2
	.loc 1 260 0
	call	CreateNode
.LVL42:
	movh.a	%a3, hi:g_stp_FreeBuffer
	st.a	[%a3] lo:g_stp_FreeBuffer, %a2
	.loc 1 262 0
	st.b	[%a15] 8, %d15
	ret
.LFE10:
	.size	InitDoublyLinkedList, .-InitDoublyLinkedList
	.align 1
	.global	GetListCount
	.type	GetListCount, @function
GetListCount:
.LFB11:
	.loc 1 266 0
	.loc 1 268 0
	movh.a	%a15, hi:g_n_ListCnt
	ld.w	%d2, [%a15] lo:g_n_ListCnt
	ret
.LFE11:
	.size	GetListCount, .-GetListCount
	.align 1
	.global	Push_front
	.type	Push_front, @function
Push_front:
.LFB13:
	.loc 1 312 0
.LVL43:
	.loc 1 312 0
	mov	%d15, %d4
	.loc 1 317 0
	movh.a	%a15, hi:g_n_ListCnt
	.loc 1 313 0
	call	CreateNode
.LVL44:
	.loc 1 317 0
	ld.w	%d2, [%a15] lo:g_n_ListCnt
	.loc 1 315 0
	st.w	[%a2] 12, %d15
	.loc 1 318 0
	movh.a	%a3, hi:g_stp_Head
	.loc 1 317 0
	jz	%d2, .L60
	.loc 1 322 0
	ld.a	%a4, [%a3] lo:g_stp_Head
	.loc 1 327 0
	add	%d2, 1
	.loc 1 324 0
	st.a	[%a3] lo:g_stp_Head, %a2
	.loc 1 322 0
	st.a	[%a2] 16, %a4
	.loc 1 323 0
	st.a	[%a4] 20, %a2
	.loc 1 327 0
	st.w	[%a15] lo:g_n_ListCnt, %d2
	.loc 1 328 0
	ret
.L60:
	.loc 1 327 0
	add	%d2, 1
	.loc 1 318 0
	st.a	[%a3] lo:g_stp_Head, %a2
	.loc 1 319 0
	movh.a	%a3, hi:g_stp_Tail
	st.a	[%a3] lo:g_stp_Tail, %a2
	.loc 1 327 0
	st.w	[%a15] lo:g_n_ListCnt, %d2
	.loc 1 328 0
	ret
.LFE13:
	.size	Push_front, .-Push_front
	.align 1
	.global	Push_front_Node
	.type	Push_front_Node, @function
Push_front_Node:
.LFB14:
	.loc 1 331 0
	sub.a	%SP, 48
.LCFI1:
	.loc 1 330 0
	lea	%a13, [%SP] 24
	mov.aa	%a2, %a13
		# #chunks=3, chunksize=8, remains=0
	lea	%a3, 3-1
	0:
	ld.d	%e2, [%a4+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 332 0
	call	CreateNode
.LVL45:
	.loc 1 334 0
	mov.aa	%a4, %SP
	mov.aa	%a5, %a13
	.loc 1 332 0
	mov.aa	%a15, %a2
.LVL46:
	.loc 1 334 0
	call	PutData
.LVL47:
	mov.aa	%a2, %a15
	mov.aa	%a12, %SP
		# #chunks=3, chunksize=8, remains=0
	lea	%a3, 3-1
	0:
	ld.d	%e2, [%a12+]8
	st.d	[%a2+]8, %e2
	loop	%a3, 0b
	.loc 1 336 0
	movh.a	%a2, hi:g_n_ListCnt
	ld.w	%d2, [%a2] lo:g_n_ListCnt
	.loc 1 337 0
	movh.a	%a3, hi:g_stp_Head
	.loc 1 336 0
	jz	%d2, .L64
	.loc 1 341 0
	ld.a	%a4, [%a3] lo:g_stp_Head
	.loc 1 346 0
	add	%d2, 1
	.loc 1 343 0
	st.a	[%a3] lo:g_stp_Head, %a15
	.loc 1 341 0
	st.a	[%a15] 16, %a4
	.loc 1 342 0
	st.a	[%a4] 20, %a15
	.loc 1 346 0
	st.w	[%a2] lo:g_n_ListCnt, %d2
	.loc 1 347 0
	ret
.L64:
	.loc 1 346 0
	add	%d2, 1
	.loc 1 337 0
	st.a	[%a3] lo:g_stp_Head, %a15
	.loc 1 338 0
	movh.a	%a3, hi:g_stp_Tail
	st.a	[%a3] lo:g_stp_Tail, %a15
	.loc 1 346 0
	st.w	[%a2] lo:g_n_ListCnt, %d2
	.loc 1 347 0
	ret
.LFE14:
	.size	Push_front_Node, .-Push_front_Node
	.align 1
	.global	Push_back
	.type	Push_back, @function
Push_back:
.LFB15:
	.loc 1 350 0
.LVL48:
	.loc 1 350 0
	mov	%d15, %d4
	.loc 1 355 0
	movh.a	%a15, hi:g_n_ListCnt
	.loc 1 351 0
	call	CreateNode
.LVL49:
	.loc 1 355 0
	ld.w	%d2, [%a15] lo:g_n_ListCnt
	.loc 1 353 0
	st.w	[%a2] 12, %d15
	.loc 1 355 0
	jz	%d2, .L68
	.loc 1 360 0
	movh.a	%a3, hi:g_stp_Tail
	ld.a	%a4, [%a3] lo:g_stp_Tail
	.loc 1 365 0
	add	%d2, 1
	.loc 1 362 0
	st.a	[%a3] lo:g_stp_Tail, %a2
	.loc 1 360 0
	st.a	[%a2] 20, %a4
	.loc 1 361 0
	st.a	[%a4] 16, %a2
	.loc 1 365 0
	st.w	[%a15] lo:g_n_ListCnt, %d2
	.loc 1 367 0
	ret
.L68:
	.loc 1 365 0
	add	%d2, 1
	.loc 1 356 0
	movh.a	%a3, hi:g_stp_Head
	st.a	[%a3] lo:g_stp_Head, %a2
	.loc 1 357 0
	movh.a	%a3, hi:g_stp_Tail
	st.a	[%a3] lo:g_stp_Tail, %a2
	.loc 1 365 0
	st.w	[%a15] lo:g_n_ListCnt, %d2
	.loc 1 367 0
	ret
.LFE15:
	.size	Push_back, .-Push_back
	.align 1
	.global	GetAt
	.type	GetAt, @function
GetAt:
.LFB17:
	.loc 1 412 0
.LVL50:
.LBB29:
.LBB30:
	.loc 1 83 0
	movh.a	%a15, hi:g_n_ListCnt
	ld.w	%d15, [%a15] lo:g_n_ListCnt
	.loc 1 88 0
	sh	%d2, %d4, -31
	or.ge	%d2, %d4, %d15
.LBE30:
.LBE29:
	.loc 1 415 0
	mov.a	%a2, 0
.LBB32:
.LBB31:
	.loc 1 88 0
	jnz	%d2, .L70
.LVL51:
.LBE31:
.LBE32:
	.loc 1 422 0
	sha	%d2, %d15, -1
	jge	%d2, %d4, .L71
	.loc 1 424 0
	movh.a	%a15, hi:g_stp_Tail
	ld.a	%a3, [%a15] lo:g_stp_Tail
.LVL52:
	.loc 1 426 0
	not	%d4
.LVL53:
	add	%d15, %d4
.LVL54:
	.loc 1 424 0
	mov.aa	%a2, %a3
	.loc 1 428 0
	jlez	%d15, .L70
	.loc 1 428 0 is_stmt 0 discriminator 3
	mov.a	%a15, %d15
	add.a	%a15, -1
.LVL55:
.L72:
	.loc 1 430 0 is_stmt 1 discriminator 3
	ld.a	%a3, [%a3] 20
.LVL56:
	.loc 1 428 0 discriminator 3
	loop	%a15, .L72
	.loc 1 439 0
	mov.aa	%a2, %a3
.LVL57:
.L70:
	.loc 1 444 0
	ret
.LVL58:
.L71:
	.loc 1 435 0
	movh.a	%a15, hi:g_stp_Head
	ld.a	%a3, [%a15] lo:g_stp_Head
.LVL59:
	mov.aa	%a2, %a3
	.loc 1 437 0
	jz	%d4, .L70
	.loc 1 437 0 is_stmt 0 discriminator 3
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL60:
.L73:
	.loc 1 439 0 is_stmt 1 discriminator 3
	ld.a	%a3, [%a3] 16
.LVL61:
	.loc 1 437 0 discriminator 3
	loop	%a15, .L73
	.loc 1 439 0
	mov.aa	%a2, %a3
	j	.L70
.LFE17:
	.size	GetAt, .-GetAt
	.align 1
	.global	Insert
	.type	Insert, @function
Insert:
.LFB12:
	.loc 1 271 0
.LVL62:
.LBB33:
.LBB34:
	.loc 1 83 0
	movh.a	%a12, hi:g_n_ListCnt
	ld.w	%d8, [%a12] lo:g_n_ListCnt
	.loc 1 88 0
	sh	%d15, %d4, -31
	or.ge	%d15, %d4, %d8
.LBE34:
.LBE33:
	.loc 1 274 0
	mov	%d2, 0
.LBB36:
.LBB35:
	.loc 1 88 0
	jnz	%d15, .L82
	mov	%d10, %d5
	mov	%d15, %d6
	mov	%d9, %d4
.LBE35:
.LBE36:
	.loc 1 277 0
	call	CreateNode
.LVL63:
	.loc 1 280 0
	st.w	[%a2] 12, %d10
	.loc 1 289 0
	mov	%d4, %d9
	.loc 1 277 0
	mov.aa	%a15, %a2
.LVL64:
	.loc 1 289 0
	call	GetAt
.LVL65:
	.loc 1 291 0
	jnz	%d15, .L86
	.loc 1 299 0
	ld.a	%a3, [%a2] 16
	st.a	[%a3] 20, %a15
	.loc 1 300 0
	st.a	[%a15] 20, %a2
	.loc 1 301 0
	st.a	[%a2] 16, %a15
.L84:
	.loc 1 306 0
	add	%d8, 1
	.loc 1 308 0
	mov	%d2, 1
	.loc 1 306 0
	st.w	[%a12] lo:g_n_ListCnt, %d8
.LVL66:
.L82:
	.loc 1 309 0
	ret
.LVL67:
.L86:
	.loc 1 293 0
	ld.a	%a3, [%a2] 20
	st.a	[%a3] 16, %a15
	.loc 1 294 0
	st.a	[%a15] 16, %a2
	.loc 1 295 0
	st.a	[%a2] 20, %a15
	j	.L84
.LFE12:
	.size	Insert, .-Insert
	.align 1
	.global	RemoveAt
	.type	RemoveAt, @function
RemoveAt:
.LFB16:
	.loc 1 370 0
.LVL68:
.LBB37:
.LBB38:
	.loc 1 83 0
	movh.a	%a12, hi:g_n_ListCnt
	ld.w	%d8, [%a12] lo:g_n_ListCnt
	ge	%d2, %d4, %d8
	or.lt	%d2, %d4, 0
	.loc 1 88 0
	jnz	%d2, .L96
	.loc 1 93 0
	eq	%d3, %d8, 0
	and.ne	%d3, %d4, 0
	jnz	%d3, .L97
.LBE38:
.LBE37:
	.loc 1 376 0
	call	GetAt
.LVL69:
	mov.aa	%a4, %a2
.LVL70:
	.loc 1 378 0
	jeq	%d8, 1, .L92
	.loc 1 384 0
	ld.a	%a2, [%a4] 16
.LVL71:
	.loc 1 387 0
	ld.a	%a15, [%a4] 20
	.loc 1 384 0
	jz.a	%a2, .L101
	.loc 1 390 0
	jz.a	%a15, .L102
	.loc 1 399 0
	st.a	[%a15] 16, %a2
	.loc 1 400 0
	ld.a	%a2, [%a4] 16
	st.a	[%a2] 20, %a15
.L92:
	.loc 1 406 0
	add	%d8, -1
	.loc 1 403 0
	call	DeleteNode
.LVL72:
	.loc 1 408 0
	mov	%d2, 1
	.loc 1 406 0
	st.w	[%a12] lo:g_n_ListCnt, %d8
	.loc 1 408 0
	ret
.LVL73:
.L97:
	.loc 1 409 0
	ret
.L96:
	.loc 1 373 0
	mov	%d2, 0
	ret
.LVL74:
.L101:
	.loc 1 387 0
	st.a	[%a15] 16, %a2
	.loc 1 388 0
	movh.a	%a2, hi:g_stp_Tail
	st.a	[%a2] lo:g_stp_Tail, %a15
	j	.L92
.L102:
	.loc 1 393 0
	st.a	[%a2] 20, %a15
	.loc 1 394 0
	movh.a	%a15, hi:g_stp_Head
	st.a	[%a15] lo:g_stp_Head, %a2
	j	.L92
.LFE16:
	.size	RemoveAt, .-RemoveAt
	.local	g_n_FreeBufferCnt
.section .bss,"aw",@nobits
	.align 2
	.type		 g_n_FreeBufferCnt,@object
	.size		 g_n_FreeBufferCnt,4
g_n_FreeBufferCnt:
	.space	4
	.local	g_n_ListCnt
	.align 2
	.type		 g_n_ListCnt,@object
	.size		 g_n_ListCnt,4
g_n_ListCnt:
	.space	4
	.local	g_st_ListSetting
	.align 2
	.type		 g_st_ListSetting,@object
	.size		 g_st_ListSetting,12
g_st_ListSetting:
	.space	12
	.local	g_stp_FreeBuffer
	.align 2
	.type		 g_stp_FreeBuffer,@object
	.size		 g_stp_FreeBuffer,4
g_stp_FreeBuffer:
	.space	4
	.local	g_stp_Tail
	.align 2
	.type		 g_stp_Tail,@object
	.size		 g_stp_Tail,4
g_stp_Tail:
	.space	4
	.local	g_stp_Head
	.align 2
	.type		 g_stp_Head,@object
	.size		 g_stp_Head,4
g_stp_Head:
	.space	4
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.byte	0x4
	.uaword	.LCFI0-.LFB9
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.byte	0x4
	.uaword	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "0_Src/0_AppSw/Tricore/System/DataStructure/cDataStrcture_Queue.h"
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb0f
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/System/DataStructure/cDataStrcture_Queue.c"
	.string	"D:\\\\TC275\\\\eclipse\\\\workspace\\\\TC275D_SKKU_Beta"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x1a3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"_Node_Data"
	.byte	0xc
	.byte	0x2
	.byte	0x2a
	.uaword	0x2a2
	.uleb128 0x6
	.string	"nID"
	.byte	0x2
	.byte	0x2c
	.uaword	0x1fb
	.byte	0
	.uleb128 0x6
	.string	"nTimeOut"
	.byte	0x2
	.byte	0x2d
	.uaword	0x1fb
	.byte	0x4
	.uleb128 0x6
	.string	"pFuncName"
	.byte	0x2
	.byte	0x2e
	.uaword	0x255
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"Node_Data_t"
	.byte	0x2
	.byte	0x30
	.uaword	0x25f
	.uleb128 0x5
	.string	"_Node"
	.byte	0x18
	.byte	0x2
	.byte	0x32
	.uaword	0x2f9
	.uleb128 0x6
	.string	"stData"
	.byte	0x2
	.byte	0x34
	.uaword	0x2a2
	.byte	0
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x2
	.byte	0x35
	.uaword	0x1fb
	.byte	0xc
	.uleb128 0x6
	.string	"Next"
	.byte	0x2
	.byte	0x36
	.uaword	0x2f9
	.byte	0x10
	.uleb128 0x6
	.string	"Prev"
	.byte	0x2
	.byte	0x37
	.uaword	0x2f9
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2b5
	.uleb128 0x2
	.string	"Node_t"
	.byte	0x2
	.byte	0x38
	.uaword	0x2b5
	.uleb128 0x5
	.string	"_List_Setting"
	.byte	0xc
	.byte	0x2
	.byte	0x3a
	.uaword	0x359
	.uleb128 0x6
	.string	"bIsUseFreeBuffer"
	.byte	0x2
	.byte	0x3c
	.uaword	0x359
	.byte	0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x2
	.byte	0x3d
	.uaword	0x1fb
	.byte	0x4
	.uleb128 0x6
	.string	"bIsInit"
	.byte	0x2
	.byte	0x3e
	.uaword	0x359
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.string	"_Bool"
	.uleb128 0x2
	.string	"List_Setting_t"
	.byte	0x2
	.byte	0x40
	.uaword	0x30d
	.uleb128 0x9
	.byte	0x1
	.string	"GetFreeBufferNode"
	.byte	0x1
	.byte	0x3d
	.uaword	0x3a7
	.byte	0x1
	.uaword	0x3a7
	.uleb128 0xa
	.string	"tmpNode"
	.byte	0x1
	.byte	0x3f
	.uaword	0x3a7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2ff
	.uleb128 0xb
	.byte	0x1
	.string	"ResetNode"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.byte	0x1
	.uaword	0x3cd
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x24
	.uaword	0x3a7
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"PutFreeBufferNode"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uaword	0x3f5
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2e
	.uaword	0x3a7
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"DeleteNode"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uaword	0x416
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7e
	.uaword	0x3a7
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"CheckPrev"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x359
	.byte	0x1
	.uaword	0x43a
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x51
	.uaword	0x1fb
	.byte	0
	.uleb128 0xe
	.uaword	0x3ad
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x456
	.uleb128 0xf
	.uaword	0x3c1
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xe
	.uaword	0x3cd
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x472
	.uleb128 0xf
	.uaword	0x3e9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xe
	.uaword	0x378
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x490
	.uleb128 0x10
	.uaword	0x397
	.uaword	.LLST0
	.byte	0
	.uleb128 0xe
	.uaword	0x416
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ac
	.uleb128 0xf
	.uaword	0x42e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"CreateNode"
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.uaword	0x3a7
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x532
	.uleb128 0x12
	.uaword	.LASF4
	.byte	0x1
	.byte	0x67
	.uaword	0x3a7
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	0x378
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0x71
	.uaword	0x505
	.uleb128 0x14
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x10
	.uaword	0x397
	.uaword	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x15
	.uaword	0x3ad
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x79
	.uaword	0x522
	.uleb128 0x16
	.uaword	0x3c1
	.uaword	.LLST1
	.byte	0
	.uleb128 0x17
	.uaword	.LVL11
	.uaword	0xae6
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xe
	.uaword	0x3f5
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58a
	.uleb128 0x16
	.uaword	0x40a
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0x57f
	.uleb128 0x16
	.uaword	0x40a
	.uaword	.LLST5
	.uleb128 0x1a
	.uaword	0x3cd
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x88
	.uleb128 0x16
	.uaword	0x3e9
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL15
	.byte	0x1
	.uaword	0xb01
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"PutData"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.uaword	0x2ff
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c6
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x91
	.uaword	0x3a7
	.byte	0x1
	.byte	0x65
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x1
	.byte	0x93
	.uaword	0x2ff
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Pop_back"
	.byte	0x1
	.byte	0x9e
	.uaword	0x2ff
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x629
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa0
	.uaword	0x2ff
	.uaword	.LLST7
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.byte	0xa1
	.uaword	0x3a7
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	.LVL25
	.uaword	0x58a
	.uaword	0x618
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL26
	.uaword	0x3f5
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Pop_front"
	.byte	0x1
	.byte	0xbd
	.uaword	0x2ff
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x68d
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xbf
	.uaword	0x2ff
	.uaword	.LLST9
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc0
	.uaword	0x3a7
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	.LVL30
	.uaword	0x58a
	.uaword	0x67c
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL31
	.uaword	0x3f5
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Pop_front_value"
	.byte	0x1
	.byte	0xda
	.uaword	0x1fb
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fd
	.uleb128 0x12
	.uaword	.LASF6
	.byte	0x1
	.byte	0xdc
	.uaword	0x2ff
	.uaword	.LLST11
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x1
	.byte	0xdd
	.uaword	0x3a7
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	.LVL34
	.uaword	0x58a
	.uaword	0x6ec
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.uaword	.LVL36
	.uaword	0x3f5
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"InitDoublyLinkedList"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x76d
	.uleb128 0x22
	.string	"nIsUseFreeBuffer"
	.byte	0x1
	.byte	0xf8
	.uaword	0x359
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf8
	.uaword	0x1fb
	.uaword	.LLST14
	.uleb128 0x24
	.uaword	.LVL40
	.uaword	0x4ac
	.uleb128 0x24
	.uaword	.LVL41
	.uaword	0x4ac
	.uleb128 0x24
	.uaword	.LVL42
	.uaword	0x4ac
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"GetListCount"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x1fb
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"Push_front"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7da
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1fb
	.uaword	.LLST15
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x139
	.uaword	0x3a7
	.byte	0x1
	.byte	0x62
	.uleb128 0x24
	.uaword	.LVL44
	.uaword	0x4ac
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Push_front_Node"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x845
	.uleb128 0x29
	.string	"stNode"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x2ff
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x3a7
	.uaword	.LLST16
	.uleb128 0x24
	.uaword	.LVL45
	.uaword	0x4ac
	.uleb128 0x17
	.uaword	.LVL47
	.uaword	0x58a
	.uleb128 0x18
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Push_back"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	0x1fb
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x890
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x1fb
	.uaword	.LLST17
	.uleb128 0x28
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x3a7
	.byte	0x1
	.byte	0x62
	.uleb128 0x24
	.uaword	.LVL49
	.uaword	0x4ac
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"GetAt"
	.byte	0x1
	.uahalf	0x19b
	.byte	0x1
	.uaword	0x3a7
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x912
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x1fb
	.uaword	.LLST18
	.uleb128 0x2b
	.string	"n"
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x1fb
	.uaword	.LLST19
	.uleb128 0x2b
	.string	"tmpIndex"
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x1fb
	.uaword	.LLST20
	.uleb128 0x2b
	.string	"TempNode"
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x3a7
	.uaword	.LLST21
	.uleb128 0x2c
	.uaword	0x416
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x19d
	.uleb128 0x16
	.uaword	0x42e
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"Insert"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	0x359
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x9bf
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x1fb
	.uaword	.LLST23
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x1fb
	.uaword	.LLST24
	.uleb128 0x2d
	.string	"bIsFront"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x359
	.uaword	.LLST25
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x115
	.uaword	0x3a7
	.uaword	.LLST26
	.uleb128 0x2a
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x116
	.uaword	0x3a7
	.uaword	.LLST27
	.uleb128 0x2e
	.uaword	0x416
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x110
	.uaword	0x9a5
	.uleb128 0x16
	.uaword	0x42e
	.uaword	.LLST23
	.byte	0
	.uleb128 0x24
	.uaword	.LVL63
	.uaword	0x4ac
	.uleb128 0x17
	.uaword	.LVL65
	.uaword	0x890
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"RemoveAt"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.uaword	0x359
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa42
	.uleb128 0x27
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x171
	.uaword	0x1fb
	.uaword	.LLST29
	.uleb128 0x2b
	.string	"tmpNode"
	.byte	0x1
	.uahalf	0x178
	.uaword	0x3a7
	.uaword	.LLST30
	.uleb128 0x2f
	.uaword	0x416
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x173
	.uaword	0xa23
	.uleb128 0x16
	.uaword	0x42e
	.uaword	.LLST29
	.byte	0
	.uleb128 0x20
	.uaword	.LVL69
	.uaword	0x890
	.uaword	0xa38
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x24
	.uaword	.LVL72
	.uaword	0x3f5
	.byte	0
	.uleb128 0x30
	.string	"g_stp_Head"
	.byte	0x1
	.byte	0xe
	.uaword	0x3a7
	.byte	0x5
	.byte	0x3
	.uaword	g_stp_Head
	.uleb128 0x30
	.string	"g_stp_Tail"
	.byte	0x1
	.byte	0xf
	.uaword	0x3a7
	.byte	0x5
	.byte	0x3
	.uaword	g_stp_Tail
	.uleb128 0x30
	.string	"g_stp_FreeBuffer"
	.byte	0x1
	.byte	0x10
	.uaword	0x3a7
	.byte	0x5
	.byte	0x3
	.uaword	g_stp_FreeBuffer
	.uleb128 0x30
	.string	"g_st_ListSetting"
	.byte	0x1
	.byte	0x11
	.uaword	0x362
	.byte	0x5
	.byte	0x3
	.uaword	g_st_ListSetting
	.uleb128 0x30
	.string	"g_n_ListCnt"
	.byte	0x1
	.byte	0x12
	.uaword	0x1fb
	.byte	0x5
	.byte	0x3
	.uaword	g_n_ListCnt
	.uleb128 0x30
	.string	"g_n_FreeBufferCnt"
	.byte	0x1
	.byte	0x13
	.uaword	0x1fb
	.byte	0x5
	.byte	0x3
	.uaword	g_n_FreeBufferCnt
	.uleb128 0x31
	.byte	0x1
	.string	"malloc"
	.byte	0x4
	.byte	0x58
	.byte	0x1
	.uaword	0x255
	.byte	0x1
	.uaword	0xb01
	.uleb128 0x32
	.uaword	0x195
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"free"
	.byte	0x4
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.uaword	0x255
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3-.Ltext0
	.uaword	.LVL4-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11-.Ltext0
	.uaword	.LFE4-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6-.Ltext0
	.uaword	.LVL7-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.Ltext0
	.uaword	.LVL9-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL9-.Ltext0
	.uaword	.LVL10-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12-.Ltext0
	.uaword	.LVL15-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1-.Ltext0
	.uaword	.LFE5-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL13-.Ltext0
	.uaword	.LVL14-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22-.Ltext0
	.uaword	.LVL25-1-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL25-1-.Ltext0
	.uaword	.LFE7-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL23-.Ltext0
	.uaword	.LVL24-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24-.Ltext0
	.uaword	.LFE7-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27-.Ltext0
	.uaword	.LVL30-1-.Ltext0
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL30-1-.Ltext0
	.uaword	.LFE8-.Ltext0
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28-.Ltext0
	.uaword	.LVL29-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29-.Ltext0
	.uaword	.LFE8-.Ltext0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL35-.Ltext0
	.uahalf	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL35-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x7
	.byte	0x93
	.uleb128 0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE9-.Ltext0
	.uahalf	0x7
	.byte	0x93
	.uleb128 0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32-.Ltext0
	.uaword	.LVL33-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL38-.Ltext0
	.uaword	.LFE9-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40-1-.Ltext0
	.uaword	.LFE10-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL39-.Ltext0
	.uaword	.LVL40-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL40-1-.Ltext0
	.uaword	.LFE10-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44-1-.Ltext0
	.uaword	.LFE13-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL46-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE14-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1-.Ltext0
	.uaword	.LFE15-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL57-.Ltext0
	.uaword	.LVL58-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL58-.Ltext0
	.uaword	.LFE17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59-.Ltext0
	.uaword	.LVL60-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL51-.Ltext0
	.uaword	.LVL53-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53-.Ltext0
	.uaword	.LVL54-.Ltext0
	.uahalf	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.Ltext0
	.uaword	.LFE17-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL57-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL59-.Ltext0
	.uaword	.LFE17-.Ltext0
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63-1-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE12-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL63-1-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL66-.Ltext0
	.uaword	.LVL67-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE12-.Ltext0
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL63-1-.Ltext0
	.uaword	.LFE12-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-1-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL65-1-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE12-.Ltext0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-.Ltext0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL67-.Ltext0
	.uaword	.LFE12-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL68-.Ltext0
	.uaword	.LVL69-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL69-1-.Ltext0
	.uaword	.LVL73-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-.Ltext0
	.uaword	.LFE16-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL70-.Ltext0
	.uaword	.LVL71-.Ltext0
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL71-.Ltext0
	.uaword	.LVL72-1-.Ltext0
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-.Ltext0
	.uaword	.LFE16-.Ltext0
	.uahalf	0x1
	.byte	0x64
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
	.uaword	.LBB18-.Ltext0
	.uaword	.LBE18-.Ltext0
	.uaword	.LBB21-.Ltext0
	.uaword	.LBE21-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB29-.Ltext0
	.uaword	.LBE29-.Ltext0
	.uaword	.LBB32-.Ltext0
	.uaword	.LBE32-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB33-.Ltext0
	.uaword	.LBE33-.Ltext0
	.uaword	.LBB36-.Ltext0
	.uaword	.LBE36-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"nFreeBufferSize"
.LASF3:
	.string	"nIndex"
.LASF6:
	.string	"RstNode"
.LASF0:
	.string	"nValue"
.LASF5:
	.string	"TmpNode"
.LASF4:
	.string	"new_node"
.LASF2:
	.string	"pNode"
	.extern	free,STT_FUNC,0
	.extern	malloc,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
