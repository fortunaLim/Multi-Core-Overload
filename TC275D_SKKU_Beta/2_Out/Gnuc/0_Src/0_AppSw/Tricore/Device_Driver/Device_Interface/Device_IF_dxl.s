	.file	"Device_IF_dxl.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	TX0_char
	.type	TX0_char, @function
TX0_char:
.LFB746:
	.file 1 "0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_dxl.c"
	.loc 1 52 0
.LVL0:
	.loc 1 54 0
	j	printf_UART_dxl
.LVL1:
.LFE746:
	.size	TX0_char, .-TX0_char
	.align 1
	.global	Mode_wheel
	.type	Mode_wheel, @function
Mode_wheel:
.LFB748:
	.loc 1 72 0
.LVL2:
	.loc 1 72 0
	mov	%d15, %d4
.LBB100:
.LBB101:
	.loc 1 54 0
	mov	%d4, -1
.LVL3:
	call	printf_UART_dxl
.LVL4:
.LBE101:
.LBE100:
.LBB102:
.LBB103:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL5:
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	extr	%d4, %d15, 0, 8
.LBE105:
.LBE104:
	.loc 1 81 0
	addi	%d15, %d15, 16
.LVL6:
.LBB107:
.LBB106:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL7:
.LBE106:
.LBE107:
.LBB108:
.LBB109:
	mov	%d4, 5
	call	printf_UART_dxl
.LVL8:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	mov	%d4, 3
	call	printf_UART_dxl
.LVL9:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	mov	%d4, 8
	call	printf_UART_dxl
.LVL10:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	mov	%d4, 0
	call	printf_UART_dxl
.LVL11:
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	mov	%d4, 0
	call	printf_UART_dxl
.LVL12:
.LBE117:
.LBE116:
	.loc 1 81 0
	nor	%d4, %d15, 0
.LBB118:
.LBB119:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	j	printf_UART_dxl
.LVL13:
.LBE119:
.LBE118:
.LFE748:
	.size	Mode_wheel, .-Mode_wheel
	.align 1
	.global	Mode_joint
	.type	Mode_joint, @function
Mode_joint:
.LFB749:
	.loc 1 86 0
.LVL14:
	.loc 1 86 0
	mov	%d15, %d4
.LBB120:
.LBB121:
	.loc 1 54 0
	mov	%d4, -1
.LVL15:
	call	printf_UART_dxl
.LVL16:
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL17:
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	extr	%d4, %d15, 0, 8
.LBE125:
.LBE124:
	.loc 1 95 0
	addi	%d15, %d15, 18
.LVL18:
.LBB127:
.LBB126:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL19:
.LBE126:
.LBE127:
.LBB128:
.LBB129:
	mov	%d4, 5
	call	printf_UART_dxl
.LVL20:
.LBE129:
.LBE128:
.LBB130:
.LBB131:
	mov	%d4, 3
	call	printf_UART_dxl
.LVL21:
.LBE131:
.LBE130:
.LBB132:
.LBB133:
	mov	%d4, 8
	call	printf_UART_dxl
.LVL22:
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL23:
.LBE135:
.LBE134:
.LBB136:
.LBB137:
	mov	%d4, 3
	call	printf_UART_dxl
.LVL24:
.LBE137:
.LBE136:
	.loc 1 95 0
	nor	%d4, %d15, 0
.LBB138:
.LBB139:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	j	printf_UART_dxl
.LVL25:
.LBE139:
.LBE138:
.LFE749:
	.size	Mode_joint, .-Mode_joint
	.align 1
	.global	Send_one
	.type	Send_one, @function
Send_one:
.LFB750:
	.loc 1 100 0
.LVL26:
	.loc 1 101 0
	mov	%d2, 0
	movh	%d11, hi:parasum
	mov.a	%a2, %d11
.LBB140:
.LBB141:
	.loc 1 54 0
	mov	%d4, -1
.LVL27:
.LBE141:
.LBE140:
	.loc 1 100 0
	mov	%d9, %d5
	.loc 1 101 0
	st.w	[%a2] lo:parasum, %d2
.LVL28:
	.loc 1 100 0
	mov	%d10, %d6
.LBB143:
.LBB142:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL29:
.LBE142:
.LBE143:
.LBB144:
.LBB145:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL30:
.LBE145:
.LBE144:
	.loc 1 104 0
	movh.a	%a14, hi:ID
.LBB146:
.LBB147:
	.loc 1 54 0
	ld.b	%d4, [%a14] lo:ID
.LBE147:
.LBE146:
	.loc 1 107 0
	mov	%d15, 1
.LBB149:
.LBB148:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL31:
.LBE148:
.LBE149:
.LBB150:
.LBB151:
	extr	%d4, %d9, 0, 8
.LBE151:
.LBE150:
	.loc 1 107 0
	movh.a	%a12, hi:i
.LBB153:
.LBB152:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL32:
.LBE152:
.LBE153:
.LBB154:
.LBB155:
	extr	%d4, %d10, 0, 8
	movh.a	%a13, hi:parameter
	call	printf_UART_dxl
.LVL33:
	mov.a	%a2, %d11
.LBE155:
.LBE154:
	.loc 1 107 0
	st.w	[%a12] lo:i, %d15
	addi	%d8, %d9, -2
	lea	%a13, [%a13] lo:parameter
	lea	%a12, [%a12] lo:i
	lea	%a15, [%a2] lo:parasum
	ld.w	%d2, [%a2] lo:parasum
	jz	%d8, .L6
.L8:
.LVL34:
	.loc 1 107 0 is_stmt 0 discriminator 3
	addsc.a	%a2, %a13, %d15, 0
.LBB156:
.LBB157:
	.loc 1 54 0 is_stmt 1 discriminator 3
	ld.b	%d4, [%a2]0
	call	printf_UART_dxl
.LVL35:
.LBE157:
.LBE156:
	.loc 1 107 0 discriminator 3
	ld.a	%a2, [%a12]0
	ld.w	%d15, [%a15]0
	add.a	%a2, %a13
	ld.bu	%d2, [%a2]0
	add	%d2, %d15
	ld.w	%d15, [%a12]0
	add	%d15, 1
	st.w	[%a15]0, %d2
	st.w	[%a12]0, %d15
	jge.u	%d8, %d15, .L8
.L6:
.LVL36:
	ld.bu	%d4, [%a14] lo:ID
	add	%d4, %d10
	add	%d4, %d9
	.loc 1 108 0
	add	%d2, %d4
.LVL37:
	nor	%d4, %d2, 0
.LBB158:
.LBB159:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	call	printf_UART_dxl
.LVL38:
.LBE159:
.LBE158:
	.loc 1 109 0
	mov	%d4, 30
	j	delay_ms
.LVL39:
.LFE750:
	.size	Send_one, .-Send_one
	.align 1
	.global	Turn_one
	.type	Turn_one, @function
Turn_one:
.LFB751:
	.loc 1 114 0
.LVL40:
	.loc 1 116 0
	mov	%d15, 5
	.loc 1 115 0
	movh.a	%a15, hi:ID
	st.b	[%a15] lo:ID, %d4
	.loc 1 116 0
	movh.a	%a15, hi:length
	st.b	[%a15] lo:length, %d15
	.loc 1 117 0
	mov	%d15, 3
	movh.a	%a15, hi:instruction
	.loc 1 118 0
	movh.a	%a2, hi:parameter
	.loc 1 117 0
	st.b	[%a15] lo:instruction, %d15
	.loc 1 118 0
	mov	%d15, 30
	lea	%a15, [%a2] lo:parameter
	.loc 1 121 0
	mov	%d6, 3
	.loc 1 118 0
	st.b	[%a2] lo:parameter, %d15
	.loc 1 119 0
	movh	%d15, 16474
	addi	%d15, %d15, 29710
	mul.f	%d5, %d5, %d15
.LVL41:
	movh	%d15, 15232
	mul.f	%d15, %d5, %d15
	ftoiz	%d15, %d15
	and	%d15, 255
	st.b	[%a15] 2, %d15
	.loc 1 120 0
	sh	%d15, %d15, 8
	itof	%d15, %d15
	sub.f	%d5, %d5, %d15
	ftoiz	%d5, %d5
	st.b	[%a15] 1, %d5
	.loc 1 121 0
	mov	%d5, 5
	j	Send_one
.LVL42:
.LFE751:
	.size	Turn_one, .-Turn_one
	.align 1
	.global	Turn_Speed_one
	.type	Turn_Speed_one, @function
Turn_Speed_one:
.LFB752:
	.loc 1 126 0
.LVL43:
	.loc 1 128 0
	mov	%d15, 5
	movh.a	%a14, hi:length
	.loc 1 129 0
	movh	%d9, hi:instruction
	.loc 1 128 0
	st.b	[%a14] lo:length, %d15
	.loc 1 129 0
	mov	%d15, 3
	mov.a	%a15, %d9
	.loc 1 131 0
	utof	%d5, %d5
.LVL44:
	.loc 1 129 0
	st.b	[%a15] lo:instruction, %d15
	.loc 1 130 0
	mov	%d15, 32
	movh.a	%a15, hi:parameter
	lea	%a13, [%a15] lo:parameter
	st.b	[%a15] lo:parameter, %d15
	.loc 1 131 0
	movh	%d15, 15843
	addi	%d15, %d15, 21496
	div.f	%d5, %d5, %d15
	movh	%d15, 15232
	.loc 1 127 0
	movh	%d8, hi:ID
	.loc 1 131 0
	mul.f	%d15, %d5, %d15
	.loc 1 127 0
	mov.a	%a2, %d8
	.loc 1 131 0
	ftouz	%d15, %d15
	.loc 1 134 0
	mov	%d2, 0
	.loc 1 131 0
	and	%d15, 255
	.loc 1 134 0
	movh	%d10, hi:parasum
	.loc 1 127 0
	st.b	[%a2] lo:ID, %d4
	.loc 1 131 0
	st.b	[%a13] 2, %d15
	.loc 1 132 0
	sh	%d15, %d15, 8
	itof	%d15, %d15
	.loc 1 134 0
	mov.a	%a2, %d10
	.loc 1 132 0
	sub.f	%d5, %d5, %d15
.LBB160:
.LBB161:
	.loc 1 54 0
	mov	%d4, -1
.LVL45:
.LBE161:
.LBE160:
	.loc 1 132 0
	ftouz	%d5, %d5
	.loc 1 134 0
	st.w	[%a2] lo:parasum, %d2
.LVL46:
.LBB163:
.LBB164:
	.loc 1 54 0
	mov.a	%a15, %d8
.LBE164:
.LBE163:
	.loc 1 140 0
	mov	%d15, 1
	.loc 1 132 0
	st.b	[%a13] 1, %d5
.LBB167:
.LBB162:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL47:
.LBE162:
.LBE167:
.LBB168:
.LBB169:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL48:
.LBE169:
.LBE168:
.LBB170:
.LBB165:
	ld.b	%d4, [%a15] lo:ID
.LBE165:
.LBE170:
	.loc 1 140 0
	movh.a	%a12, hi:i
.LBB171:
.LBB166:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL49:
.LBE166:
.LBE171:
.LBB172:
.LBB173:
	ld.b	%d4, [%a14] lo:length
	call	printf_UART_dxl
.LVL50:
.LBE173:
.LBE172:
.LBB174:
.LBB175:
	mov.a	%a2, %d9
	ld.b	%d4, [%a2] lo:instruction
	call	printf_UART_dxl
.LVL51:
	mov.a	%a2, %d10
.LBE175:
.LBE174:
	.loc 1 140 0
	ld.bu	%d3, [%a14] lo:length
	st.w	[%a12] lo:i, %d15
	lea	%a15, [%a2] lo:parasum
	lea	%a12, [%a12] lo:i
	lea	%a14, [%a14] lo:length
	ld.w	%d2, [%a2] lo:parasum
	jeq	%d3, 2, .L14
.L16:
.LVL52:
	.loc 1 142 0 discriminator 3
	addsc.a	%a2, %a13, %d15, 0
.LBB176:
.LBB177:
	.loc 1 54 0 discriminator 3
	ld.b	%d4, [%a2]0
	call	printf_UART_dxl
.LVL53:
.LBE177:
.LBE176:
	.loc 1 143 0 discriminator 3
	ld.a	%a2, [%a12]0
	ld.w	%d15, [%a15]0
	.loc 1 140 0 discriminator 3
	ld.bu	%d3, [%a14]0
	.loc 1 143 0 discriminator 3
	add.a	%a2, %a13
	ld.bu	%d2, [%a2]0
	.loc 1 140 0 discriminator 3
	addi	%d4, %d3, -2
	.loc 1 143 0 discriminator 3
	add	%d2, %d15
	.loc 1 140 0 discriminator 3
	ld.w	%d15, [%a12]0
	add	%d15, 1
	.loc 1 143 0 discriminator 3
	st.w	[%a15]0, %d2
	.loc 1 140 0 discriminator 3
	st.w	[%a12]0, %d15
	jge.u	%d4, %d15, .L16
.L14:
.LVL54:
	mov.a	%a2, %d9
	mov.a	%a15, %d8
	ld.bu	%d4, [%a2] lo:instruction
	ld.bu	%d15, [%a15] lo:ID
	add	%d4, %d15
	add	%d4, %d3
	.loc 1 145 0
	add	%d2, %d4
.LVL55:
	nor	%d4, %d2, 0
.LBB178:
.LBB179:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	call	printf_UART_dxl
.LVL56:
.LBE179:
.LBE178:
	.loc 1 146 0
	mov	%d4, 30
	j	delay_ms
.LVL57:
.LFE752:
	.size	Turn_Speed_one, .-Turn_Speed_one
	.align 1
	.global	Send
	.type	Send, @function
Send:
.LFB753:
	.loc 1 153 0
	.loc 1 154 0
	mov	%d2, 0
	movh	%d14, hi:parasum
	mov.a	%a2, %d14
.LBB180:
.LBB181:
	.loc 1 54 0
	mov	%d4, -1
.LBE181:
.LBE180:
	.loc 1 154 0
	st.w	[%a2] lo:parasum, %d2
.LVL58:
.LBB183:
.LBB182:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL59:
.LBE182:
.LBE183:
.LBB184:
.LBB185:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL60:
.LBE185:
.LBE184:
.LBB186:
.LBB187:
	mov	%d4, -2
	call	printf_UART_dxl
.LVL61:
.LBE187:
.LBE186:
	.loc 1 158 0
	movh	%d15, hi:length_sub
	movh	%d12, hi:ID_many
	mov.a	%a3, %d15
	mov.a	%a15, %d12
	ld.bu	%d3, [%a3] lo:length_sub
.LVL62:
	ld.bu	%d2, [%a15] lo:ID_many
	.loc 1 160 0
	movh	%d13, hi:instruction
	.loc 1 158 0
	madd	%d2, %d2, %d3, %d2
	.loc 1 162 0
	movh.a	%a13, hi:i
	movh.a	%a15, hi:j
	.loc 1 158 0
	addi	%d4, %d2, 4
.LBB188:
.LBB189:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	movh	%d8, hi:parameter
	call	printf_UART_dxl
.LVL63:
.LBE189:
.LBE188:
.LBB190:
.LBB191:
	mov	%d4, -125
	call	printf_UART_dxl
.LVL64:
.LBE191:
.LBE190:
.LBB192:
.LBB193:
	mov.a	%a2, %d13
	lea	%a15, [%a15] lo:j
	ld.b	%d4, [%a2] lo:instruction
	addi	%d8, %d8, lo:parameter
	call	printf_UART_dxl
.LVL65:
.LBE193:
.LBE192:
.LBB194:
.LBB195:
	mov.a	%a3, %d15
.LBE195:
.LBE194:
	.loc 1 164 0
	mov	%d11, 0
.LBB197:
.LBB196:
	.loc 1 54 0
	ld.b	%d4, [%a3] lo:length_sub
	call	printf_UART_dxl
.LVL66:
.LBE196:
.LBE197:
	.loc 1 162 0
	mov	%d2, 1
	mov.a	%a3, %d14
	movh.a	%a2, hi:dxl_no
	mov.d	%d4, %a2
	st.w	[%a13] lo:i, %d2
	lea	%a12, [%a3] lo:parasum
	ld.w	%d2, [%a2] lo:dxl_no
	mov.a	%a3, %d15
	mov.a	%a2, %d14
	lea	%a13, [%a13] lo:i
	addi	%d9, %d4, lo:dxl_no
	mov	%d3, 1
	lea	%a14, [%a3] lo:length_sub
	.loc 1 167 0
	mov.d	%d10, %a13
	ld.bu	%d5, [%a3] lo:length_sub
	ld.w	%d4, [%a2] lo:parasum
	.loc 1 162 0
	jz	%d2, .L20
.L23:
	mul	%d2, %d3, 10
	.loc 1 164 0
	st.w	[%a15]0, %d11
	mov	%d15, 0
.L21:
.LVL67:
	.loc 1 166 0 discriminator 3
	mov.a	%a3, %d8
	add	%d15, %d2
	addsc.a	%a2, %a3, %d15, 0
.LBB198:
.LBB199:
	.loc 1 54 0 discriminator 3
	ld.b	%d4, [%a2]0
	call	printf_UART_dxl
.LVL68:
.LBE199:
.LBE198:
	.loc 1 167 0 discriminator 3
	ld.w	%d3, [%a13]0
	ld.w	%d15, [%a15]0
	mul	%d2, %d3, 10
	mov.a	%a3, %d8
	.loc 1 164 0 discriminator 3
	ld.bu	%d5, [%a14]0
	.loc 1 167 0 discriminator 3
	add	%d15, %d2
	addsc.a	%a2, %a3, %d15, 0
	ld.w	%d15, [%a12]0
	ld.bu	%d4, [%a2]0
	add	%d4, %d15
	.loc 1 164 0 discriminator 3
	ld.w	%d15, [%a15]0
	add	%d15, 1
	.loc 1 167 0 discriminator 3
	st.w	[%a12]0, %d4
	.loc 1 164 0 discriminator 3
	st.w	[%a15]0, %d15
	jge.u	%d5, %d15, .L21
	.loc 1 162 0 discriminator 2
	add	%d3, 1
	mov.a	%a3, %d9
	mov.a	%a2, %d10
	ld.w	%d15, [%a3]0
	st.w	[%a2]0, %d3
	jge.u	%d15, %d3, .L23
.L20:
.LVL69:
	mov.a	%a15, %d13
	.loc 1 170 0
	mov.a	%a2, %d12
	ld.bu	%d15, [%a15] lo:instruction
	addi	%d15, %d15, -123
	add	%d15, %d5
	add	%d4, %d15
.LVL70:
	ld.bu	%d15, [%a2] lo:ID_many
	madd	%d15, %d15, %d5, %d15
	add	%d4, %d15
	not	%d4
.LBB200:
.LBB201:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	call	printf_UART_dxl
.LVL71:
.LBE201:
.LBE200:
	.loc 1 171 0
	mov	%d4, 30
	j	delay_ms
.LVL72:
.LFE753:
	.size	Send, .-Send
	.align 1
	.global	ID_Set
	.type	ID_Set, @function
ID_Set:
.LFB747:
	.loc 1 61 0
.LVL73:
	.loc 1 62 0
	mov	%d15, -2
	movh.a	%a15, hi:ID
	.loc 1 65 0
	movh.a	%a2, hi:parameter
	.loc 1 62 0
	st.b	[%a15] lo:ID, %d15
	.loc 1 63 0
	mov	%d15, 4
	movh.a	%a15, hi:length
	st.b	[%a15] lo:length, %d15
	.loc 1 64 0
	mov	%d15, 3
	movh.a	%a15, hi:instruction
	st.b	[%a15] lo:instruction, %d15
	.loc 1 65 0
	lea	%a15, [%a2] lo:parameter
	st.b	[%a2] lo:parameter, %d15
	.loc 1 66 0
	st.b	[%a15] 1, %d4
	.loc 1 67 0
	j	Send
.LVL74:
.LFE747:
	.size	ID_Set, .-ID_Set
	.align 1
	.global	Initial_Position
	.type	Initial_Position, @function
Initial_Position:
.LFB754:
	.loc 1 175 0
	.loc 1 176 0
	mov	%d15, 30
	movh.a	%a15, hi:instruction
	movh	%d4, hi:parameter
	st.b	[%a15] lo:instruction, %d15
	.loc 1 177 0
	mov	%d15, 2
	movh.a	%a15, hi:length_sub
	addi	%d4, %d4, lo:parameter
	st.b	[%a15] lo:length_sub, %d15
	.loc 1 178 0
	mov	%d15, 20
	movh.a	%a15, hi:ID_many
	.loc 1 183 0
	mov	%d3, 0
	.loc 1 178 0
	st.b	[%a15] lo:ID_many, %d15
	.loc 1 184 0
	mov	%d2, 2
	.loc 1 178 0
	mov	%d15, 1
	.loc 1 184 0
	lea	%a15, 19
.L28:
	.loc 1 182 0 discriminator 3
	madd	%d5, %d4, %d15, 10
	mov.a	%a2, %d5
	st.b	[%a2]0, %d15
	.loc 1 183 0 discriminator 3
	st.b	[%a2] 1, %d3
	.loc 1 184 0 discriminator 3
	st.b	[%a2] 2, %d2
	add	%d15, 1
	.loc 1 180 0 discriminator 3
	loop	%a15, .L28
	movh.a	%a15, hi:i
	st.w	[%a15] lo:i, %d15
	.loc 1 186 0
	j	Send
.LVL75:
.LFE754:
	.size	Initial_Position, .-Initial_Position
	.align 1
	.global	IO_dxl_Turn_sync
	.type	IO_dxl_Turn_sync, @function
IO_dxl_Turn_sync:
.LFB755:
	.loc 1 190 0
.LVL76:
	.loc 1 191 0
	mov	%d2, 30
	movh.a	%a15, hi:instruction
	.loc 1 193 0
	movh.a	%a2, hi:ID_many
	.loc 1 191 0
	st.b	[%a15] lo:instruction, %d2
	.loc 1 192 0
	mov	%d2, 4
	movh.a	%a15, hi:length_sub
	.loc 1 190 0
	mov	%d15, %d4
	.loc 1 192 0
	st.b	[%a15] lo:length_sub, %d2
	.loc 1 193 0
	movh.a	%a15, hi:dxl_no
	ld.w	%d2, [%a15] lo:dxl_no
	st.b	[%a2] lo:ID_many, %d2
	.loc 1 194 0
	call	Send
.LVL77:
	.loc 1 195 0
	mov	%d2, 0
	.loc 1 196 0
	ftouz	%d4, %d15
	.loc 1 195 0
	st.w	[%a15] lo:dxl_no, %d2
	.loc 1 196 0
	j	delay_ms
.LVL78:
.LFE755:
	.size	IO_dxl_Turn_sync, .-IO_dxl_Turn_sync
	.align 1
	.global	IO_dxl_Turn_sync_sub
	.type	IO_dxl_Turn_sync_sub, @function
IO_dxl_Turn_sync_sub:
.LFB756:
	.loc 1 201 0
.LVL79:
	.loc 1 203 0
	movh	%d15, 16256
	cmp.f	%d15, %d5, %d15
	mov	%d3, 1
	mov	%d7, 3
	mov	%d2, 0
	jnz.t	%d15, 0, .L32
	.loc 1 204 0
	movh	%d15, 17302
	addi	%d15, %d15, -32768
	cmp.f	%d15, %d5, %d15
	mov	%d3, 255
	mov	%d7, 127
	mov	%d2, 3
	jz.t	%d15, 2, .L35
.LVL80:
.L32:
	.loc 1 206 0
	movh.a	%a15, hi:dxl_no
	ld.w	%d15, [%a15] lo:dxl_no
	add	%d15, 1
	st.w	[%a15] lo:dxl_no, %d15
	.loc 1 207 0
	movh.a	%a15, hi:parameter
	mov.d	%d0, %a15
	addi	%d5, %d0, lo:parameter
	madd	%d0, %d5, %d15, 10
	.loc 1 210 0
	movh	%d15, 15843
	addi	%d15, %d15, 21496
	div.f	%d6, %d6, %d15
.LVL81:
	movh	%d15, 15232
	.loc 1 207 0
	mov.a	%a15, %d0
	.loc 1 210 0
	mul.f	%d15, %d6, %d15
	.loc 1 207 0
	st.b	[%a15]0, %d4
	.loc 1 210 0
	ftoiz	%d15, %d15
	.loc 1 208 0
	st.b	[%a15] 2, %d2
	.loc 1 210 0
	and	%d15, 255
	.loc 1 209 0
	st.b	[%a15] 1, %d7
	.loc 1 210 0
	st.b	[%a15] 4, %d15
	.loc 1 211 0
	sh	%d15, %d15, 8
	itof	%d15, %d15
	sub.f	%d6, %d6, %d15
	ftoiz	%d6, %d6
	st.b	[%a15] 3, %d6
	.loc 1 212 0
	movh.a	%a15, hi:angle
	lea	%a15, [%a15] lo:angle
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d3
	ret
.LVL82:
.L35:
	movh	%d15, 16474
	addi	%d15, %d15, 29710
	mul.f	%d15, %d5, %d15
	movh	%d2, 15232
	mul.f	%d2, %d15, %d2
	ftouz	%d5, %d5
.LVL83:
	ftoiz	%d2, %d2
	and	%d3, %d5, 255
	and	%d2, %d2, 255
	sh	%d7, %d2, 8
	itof	%d7, %d7
	sub.f	%d15, %d15, %d7
	ftoiz	%d15, %d15
	and	%d7, %d15, 255
	j	.L32
.LFE756:
	.size	IO_dxl_Turn_sync_sub, .-IO_dxl_Turn_sync_sub
.section .rodata,"a",@progbits
.LC0:
	.string	"IO_Set_dxl\t\t\t-> "
.section .srodata,"as",@progbits
.LC1:
	.string	"Done.\r\n"
.section .text,"ax",@progbits
	.align 1
	.global	IO_set_dxl
	.type	IO_set_dxl, @function
IO_set_dxl:
.LFB745:
	.loc 1 26 0
	.loc 1 33 0
	movh.a	%a4, hi:.LC0
	lea	%a4, [%a4] lo:.LC0
	call	printf_SysLog
.LVL84:
	.loc 1 36 0
	call	Set_UART_dxl
.LVL85:
	.loc 1 37 0
	call	setPort_GPIO_dxl
.LVL86:
	.loc 1 39 0
	mov	%d4, 1
	call	Mode_joint
.LVL87:
	.loc 1 41 0
	mov	%d4, 1
	movh	%d5, 17174
	mov	%d6, 0
	call	IO_dxl_Turn_sync_sub
.LVL88:
	.loc 1 42 0
	movh	%d4, 17402
	call	IO_dxl_Turn_sync
.LVL89:
	.loc 1 46 0
	lea	%a4, [%A0] SM:.LC1
	j	printf_SysLog
.LVL90:
.LFE745:
	.size	IO_set_dxl, .-IO_set_dxl
	.align 1
	.global	Read_Status
	.type	Read_Status, @function
Read_Status:
.LFB757:
	.loc 1 216 0
.LVL91:
	.loc 1 217 0
	mov	%d2, 0
	.loc 1 216 0
	mov	%d15, %d4
	.loc 1 217 0
	movh.a	%a15, hi:RX_data
.LBB202:
.LBB203:
	.loc 1 54 0
	mov	%d4, -1
.LVL92:
.LBE203:
.LBE202:
	.loc 1 216 0
	mov	%e8, %d6, %d5
	.loc 1 217 0
	st.b	[%a15] lo:RX_data, %d2
.LVL93:
.LBB205:
.LBB204:
	.loc 1 54 0
	call	printf_UART_dxl
.LVL94:
.LBE204:
.LBE205:
.LBB206:
.LBB207:
	mov	%d4, -1
	call	printf_UART_dxl
.LVL95:
.LBE207:
.LBE206:
.LBB208:
.LBB209:
	extr	%d4, %d15, 0, 8
	call	printf_UART_dxl
.LVL96:
.LBE209:
.LBE208:
.LBB210:
.LBB211:
	mov	%d4, 4
	call	printf_UART_dxl
.LVL97:
.LBE211:
.LBE210:
.LBB212:
.LBB213:
	mov	%d4, 2
	call	printf_UART_dxl
.LVL98:
.LBE213:
.LBE212:
.LBB214:
.LBB215:
	extr	%d4, %d8, 0, 8
	call	printf_UART_dxl
.LVL99:
.LBE215:
.LBE214:
.LBB216:
.LBB217:
	extr	%d4, %d9, 0, 8
	add	%d9, 6
.LVL100:
	add	%d8, %d9
.LVL101:
	call	printf_UART_dxl
.LVL102:
.LBE217:
.LBE216:
	.loc 1 226 0
	add	%d15, %d8
.LVL103:
	nor	%d4, %d15, 0
.LBB218:
.LBB219:
	.loc 1 54 0
	extr	%d4, %d4, 0, 8
	j	printf_UART_dxl
.LVL104:
.LBE219:
.LBE218:
.LFE757:
	.size	Read_Status, .-Read_Status
	.local	angle
.section .bss,"aw",@nobits
	.align 0
	.type		 angle,@object
	.size		 angle,21
angle:
	.space	21
	.local	RX_data
	.align 0
	.type		 RX_data,@object
	.size		 RX_data,20
RX_data:
	.space	20
	.local	parameter
	.align 0
	.type		 parameter,@object
	.size		 parameter,200
parameter:
	.space	200
	.local	instruction
	.align 0
	.type		 instruction,@object
	.size		 instruction,1
instruction:
	.space	1
	.local	length_sub
	.align 0
	.type		 length_sub,@object
	.size		 length_sub,1
length_sub:
	.space	1
	.local	length
	.align 0
	.type		 length,@object
	.size		 length,1
length:
	.space	1
	.local	dxl_no
	.align 2
	.type		 dxl_no,@object
	.size		 dxl_no,4
dxl_no:
	.space	4
	.local	j
	.align 2
	.type		 j,@object
	.size		 j,4
j:
	.space	4
	.local	i
	.align 2
	.type		 i,@object
	.size		 i,4
i:
	.space	4
	.local	parasum
	.align 2
	.type		 parasum,@object
	.size		 parasum,4
parasum:
	.space	4
	.local	ID_many
	.align 0
	.type		 ID_many,@object
	.size		 ID_many,1
ID_many:
	.space	1
	.local	ID
	.align 0
	.type		 ID,@object
	.size		 ID,1
ID:
	.space	1
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
	.uaword	.LFB746
	.uaword	.LFE746-.LFB746
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB748
	.uaword	.LFE748-.LFB748
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB749
	.uaword	.LFE749-.LFB749
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB750
	.uaword	.LFE750-.LFB750
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB751
	.uaword	.LFE751-.LFB751
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB752
	.uaword	.LFE752-.LFB752
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB753
	.uaword	.LFE753-.LFB753
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB747
	.uaword	.LFE747-.LFB747
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB754
	.uaword	.LFE754-.LFB754
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB755
	.uaword	.LFE755-.LFB755
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB756
	.uaword	.LFE756-.LFB756
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB745
	.uaword	.LFE745-.LFB745
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB757
	.uaword	.LFE757-.LFB757
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 3 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_ETH.h"
	.file 4 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_Communication/Peripherals_UART.h"
	.file 5 "./0_Src/0_AppSw/Tricore/Main/CpuX_Main.h"
	.file 6 "./0_Src/0_AppSw/Tricore/System/Systems/SysCFG_Log.h"
	.file 7 "./0_Src/0_AppSw/Tricore/Device_Driver/Driver_IO/Peripherals_GPIO.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x32bd
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -msmall-const=8 -mtc161 -g -g -O2 -fno-common -fno-short-enums -fsingle-precision-constant -fstrict-volatile-bitfields"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Device_Driver/Device_Interface/Device_IF_dxl.c"
	.string	"C:\\\\Users\\\\tpwjd\\\\workspace\\\\TC275D_SKKU_Beta"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x268
	.uleb128 0x4
	.uaword	0x268
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x284
	.uleb128 0x4
	.uaword	0x268
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x294
	.uleb128 0x4
	.uaword	0x268
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x2a4
	.uleb128 0x4
	.uaword	0x268
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x2b4
	.uleb128 0x4
	.uaword	0x268
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.uaword	0x4c6
	.uleb128 0x6
	.string	"EN0"
	.byte	0x2
	.byte	0x2f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"EN1"
	.byte	0x2
	.byte	0x30
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"EN2"
	.byte	0x2
	.byte	0x31
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"EN3"
	.byte	0x2
	.byte	0x32
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"EN4"
	.byte	0x2
	.byte	0x33
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"EN5"
	.byte	0x2
	.byte	0x34
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"EN6"
	.byte	0x2
	.byte	0x35
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"EN7"
	.byte	0x2
	.byte	0x36
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"EN8"
	.byte	0x2
	.byte	0x37
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"EN9"
	.byte	0x2
	.byte	0x38
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"EN10"
	.byte	0x2
	.byte	0x39
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"EN11"
	.byte	0x2
	.byte	0x3a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"EN12"
	.byte	0x2
	.byte	0x3b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"EN13"
	.byte	0x2
	.byte	0x3c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"EN14"
	.byte	0x2
	.byte	0x3d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"EN15"
	.byte	0x2
	.byte	0x3e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"EN16"
	.byte	0x2
	.byte	0x3f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"EN17"
	.byte	0x2
	.byte	0x40
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"EN18"
	.byte	0x2
	.byte	0x41
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"EN19"
	.byte	0x2
	.byte	0x42
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"EN20"
	.byte	0x2
	.byte	0x43
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"EN21"
	.byte	0x2
	.byte	0x44
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"EN22"
	.byte	0x2
	.byte	0x45
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.string	"EN23"
	.byte	0x2
	.byte	0x46
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"EN24"
	.byte	0x2
	.byte	0x47
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"EN25"
	.byte	0x2
	.byte	0x48
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"EN26"
	.byte	0x2
	.byte	0x49
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"EN27"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"EN28"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"EN29"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"EN30"
	.byte	0x2
	.byte	0x4d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"EN31"
	.byte	0x2
	.byte	0x4e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x2
	.byte	0x4f
	.uaword	0x2b4
	.uleb128 0x5
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x52
	.uaword	0x50a
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0x54
	.uaword	0x1a0
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x2
	.byte	0x55
	.uaword	0x4df
	.uleb128 0x5
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x58
	.uaword	0x641
	.uleb128 0x6
	.string	"EN0"
	.byte	0x2
	.byte	0x5a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"EN1"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"EN2"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"EN3"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"EN4"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"EN5"
	.byte	0x2
	.byte	0x5f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"EN6"
	.byte	0x2
	.byte	0x60
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"EN7"
	.byte	0x2
	.byte	0x61
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"EN8"
	.byte	0x2
	.byte	0x62
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"EN9"
	.byte	0x2
	.byte	0x63
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"EN10"
	.byte	0x2
	.byte	0x64
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"EN11"
	.byte	0x2
	.byte	0x65
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"EN12"
	.byte	0x2
	.byte	0x66
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"EN13"
	.byte	0x2
	.byte	0x67
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"EN14"
	.byte	0x2
	.byte	0x68
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"EN15"
	.byte	0x2
	.byte	0x69
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0x6a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_ESR_Bits"
	.byte	0x2
	.byte	0x6b
	.uaword	0x523
	.uleb128 0x5
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x6e
	.uaword	0x6a9
	.uleb128 0x6
	.string	"MODREV"
	.byte	0x2
	.byte	0x70
	.uaword	0x1a0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"MODTYPE"
	.byte	0x2
	.byte	0x71
	.uaword	0x1a0
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"MODNUMBER"
	.byte	0x2
	.byte	0x72
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_ID_Bits"
	.byte	0x2
	.byte	0x73
	.uaword	0x657
	.uleb128 0x5
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x76
	.uaword	0x7cb
	.uleb128 0x6
	.string	"P0"
	.byte	0x2
	.byte	0x78
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"P1"
	.byte	0x2
	.byte	0x79
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"P2"
	.byte	0x2
	.byte	0x7a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"P3"
	.byte	0x2
	.byte	0x7b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.string	"P4"
	.byte	0x2
	.byte	0x7c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"P5"
	.byte	0x2
	.byte	0x7d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"P6"
	.byte	0x2
	.byte	0x7e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.string	"P7"
	.byte	0x2
	.byte	0x7f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"P8"
	.byte	0x2
	.byte	0x80
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"P9"
	.byte	0x2
	.byte	0x81
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"P10"
	.byte	0x2
	.byte	0x82
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"P11"
	.byte	0x2
	.byte	0x83
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"P12"
	.byte	0x2
	.byte	0x84
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"P13"
	.byte	0x2
	.byte	0x85
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"P14"
	.byte	0x2
	.byte	0x86
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"P15"
	.byte	0x2
	.byte	0x87
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0x88
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IN_Bits"
	.byte	0x2
	.byte	0x89
	.uaword	0x6be
	.uleb128 0x5
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x8c
	.uaword	0x873
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0x8e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"PC0"
	.byte	0x2
	.byte	0x8f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.byte	0x90
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"PC1"
	.byte	0x2
	.byte	0x91
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0x92
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"PC2"
	.byte	0x2
	.byte	0x93
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x2
	.byte	0x94
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"PC3"
	.byte	0x2
	.byte	0x95
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x2
	.byte	0x96
	.uaword	0x7e0
	.uleb128 0x5
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0x99
	.uaword	0x923
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0x9b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"PC12"
	.byte	0x2
	.byte	0x9c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.byte	0x9d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"PC13"
	.byte	0x2
	.byte	0x9e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0x9f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"PC14"
	.byte	0x2
	.byte	0xa0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x2
	.byte	0xa1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"PC15"
	.byte	0x2
	.byte	0xa2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x2
	.byte	0xa3
	.uaword	0x88b
	.uleb128 0x5
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xa6
	.uaword	0x9cf
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xa8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"PC4"
	.byte	0x2
	.byte	0xa9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.byte	0xaa
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"PC5"
	.byte	0x2
	.byte	0xab
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0xac
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"PC6"
	.byte	0x2
	.byte	0xad
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x2
	.byte	0xae
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"PC7"
	.byte	0x2
	.byte	0xaf
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x2
	.byte	0xb0
	.uaword	0x93c
	.uleb128 0x5
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xb3
	.uaword	0xa7c
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xb5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"PC8"
	.byte	0x2
	.byte	0xb6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.byte	0xb7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"PC9"
	.byte	0x2
	.byte	0xb8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0xb9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"PC10"
	.byte	0x2
	.byte	0xba
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x2
	.byte	0xbb
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.string	"PC11"
	.byte	0x2
	.byte	0xbc
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x2
	.byte	0xbd
	.uaword	0x9e7
	.uleb128 0x5
	.string	"_Ifx_P_LPCR0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xc0
	.uaword	0xadc
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xc2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"PS1"
	.byte	0x2
	.byte	0xc3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x2
	.byte	0xc4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_LPCR0_Bits"
	.byte	0x2
	.byte	0xc5
	.uaword	0xa94
	.uleb128 0x5
	.string	"_Ifx_P_LPCR1_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xc8
	.uaword	0xb3c
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xca
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"PS1"
	.byte	0x2
	.byte	0xcb
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x2
	.byte	0xcc
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_LPCR1_Bits"
	.byte	0x2
	.byte	0xcd
	.uaword	0xaf4
	.uleb128 0x5
	.string	"_Ifx_P_LPCR1_P21_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xd0
	.uaword	0xbcc
	.uleb128 0x6
	.string	"RDIS_CTRL"
	.byte	0x2
	.byte	0xd2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"RX_DIS"
	.byte	0x2
	.byte	0xd3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.string	"TERM"
	.byte	0x2
	.byte	0xd4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.string	"LRXTERM"
	.byte	0x2
	.byte	0xd5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x2
	.byte	0xd6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_LPCR1_P21_Bits"
	.byte	0x2
	.byte	0xd7
	.uaword	0xb54
	.uleb128 0x5
	.string	"_Ifx_P_LPCR2_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xda
	.uaword	0xca7
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xdc
	.uaword	0x1a0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"LVDSR"
	.byte	0x2
	.byte	0xdd
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.string	"LVDSRL"
	.byte	0x2
	.byte	0xde
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"reserved_10"
	.byte	0x2
	.byte	0xdf
	.uaword	0x1a0
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"TDIS_CTRL"
	.byte	0x2
	.byte	0xe0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.string	"TX_DIS"
	.byte	0x2
	.byte	0xe1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"TX_PD"
	.byte	0x2
	.byte	0xe2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.string	"TX_PWDPD"
	.byte	0x2
	.byte	0xe3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x2
	.byte	0xe4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_LPCR2_Bits"
	.byte	0x2
	.byte	0xe5
	.uaword	0xbe8
	.uleb128 0x5
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xe8
	.uaword	0xd38
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xea
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"PCL0"
	.byte	0x2
	.byte	0xeb
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"PCL1"
	.byte	0x2
	.byte	0xec
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.string	"PCL2"
	.byte	0x2
	.byte	0xed
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.string	"PCL3"
	.byte	0x2
	.byte	0xee
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x2
	.byte	0xef
	.uaword	0x1a0
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x2
	.byte	0xf0
	.uaword	0xcbf
	.uleb128 0x5
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xf3
	.uaword	0xdbf
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xf5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"PCL12"
	.byte	0x2
	.byte	0xf6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"PCL13"
	.byte	0x2
	.byte	0xf7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"PCL14"
	.byte	0x2
	.byte	0xf8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"PCL15"
	.byte	0x2
	.byte	0xf9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x2
	.byte	0xfa
	.uaword	0xd50
	.uleb128 0x5
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x2
	.byte	0xfd
	.uaword	0xe56
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x2
	.byte	0xff
	.uaword	0x1a0
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x2
	.uahalf	0x101
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x2
	.uahalf	0x102
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x2
	.uahalf	0x103
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x2
	.uahalf	0x104
	.uaword	0x1a0
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x2
	.uahalf	0x105
	.uaword	0xdd8
	.uleb128 0xc
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x108
	.uaword	0xef1
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x10a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x2
	.uahalf	0x10b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x2
	.uahalf	0x10c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x2
	.uahalf	0x10d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x2
	.uahalf	0x10e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x2
	.uahalf	0x110
	.uaword	0xe6f
	.uleb128 0xc
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x113
	.uaword	0x104b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x115
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x2
	.uahalf	0x116
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x2
	.uahalf	0x117
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x2
	.uahalf	0x118
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x2
	.uahalf	0x119
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x2
	.uahalf	0x11a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x2
	.uahalf	0x11b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x2
	.uahalf	0x11c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x2
	.uahalf	0x11d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x2
	.uahalf	0x11e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x2
	.uahalf	0x11f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x2
	.uahalf	0x120
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x2
	.uahalf	0x121
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x2
	.uahalf	0x122
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x2
	.uahalf	0x123
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x2
	.uahalf	0x124
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x2
	.uahalf	0x125
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x2
	.uahalf	0x126
	.uaword	0xf0a
	.uleb128 0xc
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x129
	.uaword	0x1299
	.uleb128 0x9
	.string	"PS0"
	.byte	0x2
	.uahalf	0x12b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x2
	.uahalf	0x12c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x2
	.uahalf	0x12d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x2
	.uahalf	0x12e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x2
	.uahalf	0x12f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x2
	.uahalf	0x130
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x2
	.uahalf	0x131
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x2
	.uahalf	0x132
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x2
	.uahalf	0x133
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x2
	.uahalf	0x134
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x2
	.uahalf	0x135
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x2
	.uahalf	0x136
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x2
	.uahalf	0x137
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x2
	.uahalf	0x138
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x2
	.uahalf	0x139
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x2
	.uahalf	0x13a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x2
	.uahalf	0x13b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x2
	.uahalf	0x13c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x2
	.uahalf	0x13d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x2
	.uahalf	0x13e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x2
	.uahalf	0x13f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x2
	.uahalf	0x140
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x2
	.uahalf	0x142
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x2
	.uahalf	0x143
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x2
	.uahalf	0x144
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x2
	.uahalf	0x145
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x2
	.uahalf	0x146
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x2
	.uahalf	0x147
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x2
	.uahalf	0x148
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x2
	.uahalf	0x149
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR_Bits"
	.byte	0x2
	.uahalf	0x14b
	.uaword	0x1063
	.uleb128 0xc
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x14e
	.uaword	0x1323
	.uleb128 0x9
	.string	"PS0"
	.byte	0x2
	.uahalf	0x150
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x2
	.uahalf	0x151
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x2
	.uahalf	0x152
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x2
	.uahalf	0x153
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"reserved_4"
	.byte	0x2
	.uahalf	0x154
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x2
	.uahalf	0x155
	.uaword	0x12b0
	.uleb128 0xc
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x158
	.uaword	0x13bd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x15a
	.uaword	0x1a0
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x2
	.uahalf	0x15b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x2
	.uahalf	0x15c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x2
	.uahalf	0x15d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x2
	.uahalf	0x15e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x15f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x2
	.uahalf	0x160
	.uaword	0x133c
	.uleb128 0xc
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x163
	.uaword	0x1453
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x165
	.uaword	0x1a0
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x2
	.uahalf	0x166
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x2
	.uahalf	0x167
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x2
	.uahalf	0x168
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x2
	.uahalf	0x169
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x16a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x2
	.uahalf	0x16b
	.uaword	0x13d7
	.uleb128 0xc
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x16e
	.uaword	0x14ea
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x170
	.uaword	0x1a0
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x2
	.uahalf	0x171
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x2
	.uahalf	0x172
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x2
	.uahalf	0x173
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x2
	.uahalf	0x174
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x175
	.uaword	0x1a0
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x2
	.uahalf	0x176
	.uaword	0x146c
	.uleb128 0xc
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x179
	.uaword	0x1634
	.uleb128 0x9
	.string	"PS0"
	.byte	0x2
	.uahalf	0x17b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x2
	.uahalf	0x17c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x2
	.uahalf	0x17e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x2
	.uahalf	0x17f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x2
	.uahalf	0x180
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x2
	.uahalf	0x181
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x2
	.uahalf	0x182
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x2
	.uahalf	0x183
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x2
	.uahalf	0x184
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x2
	.uahalf	0x185
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x2
	.uahalf	0x186
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x2
	.uahalf	0x187
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x2
	.uahalf	0x188
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x2
	.uahalf	0x189
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x2
	.uahalf	0x18a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x2
	.uahalf	0x18c
	.uaword	0x1503
	.uleb128 0xc
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x18f
	.uaword	0x176c
	.uleb128 0x9
	.string	"P0"
	.byte	0x2
	.uahalf	0x191
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"P1"
	.byte	0x2
	.uahalf	0x192
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"P2"
	.byte	0x2
	.uahalf	0x193
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"P3"
	.byte	0x2
	.uahalf	0x194
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"P4"
	.byte	0x2
	.uahalf	0x195
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"P5"
	.byte	0x2
	.uahalf	0x196
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"P6"
	.byte	0x2
	.uahalf	0x197
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"P7"
	.byte	0x2
	.uahalf	0x198
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"P8"
	.byte	0x2
	.uahalf	0x199
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"P9"
	.byte	0x2
	.uahalf	0x19a
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"P10"
	.byte	0x2
	.uahalf	0x19b
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"P11"
	.byte	0x2
	.uahalf	0x19c
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"P12"
	.byte	0x2
	.uahalf	0x19d
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"P13"
	.byte	0x2
	.uahalf	0x19e
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"P14"
	.byte	0x2
	.uahalf	0x19f
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"P15"
	.byte	0x2
	.uahalf	0x1a0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1a1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT_Bits"
	.byte	0x2
	.uahalf	0x1a2
	.uaword	0x164c
	.uleb128 0xc
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1a5
	.uaword	0x1870
	.uleb128 0x9
	.string	"SEL0"
	.byte	0x2
	.uahalf	0x1a7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"SEL1"
	.byte	0x2
	.uahalf	0x1a8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"SEL2"
	.byte	0x2
	.uahalf	0x1a9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"SEL3"
	.byte	0x2
	.uahalf	0x1aa
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"SEL4"
	.byte	0x2
	.uahalf	0x1ab
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"SEL5"
	.byte	0x2
	.uahalf	0x1ac
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"SEL6"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"reserved_7"
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"SEL10"
	.byte	0x2
	.uahalf	0x1af
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"SEL11"
	.byte	0x2
	.uahalf	0x1b0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x2
	.uahalf	0x1b1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x2
	.uahalf	0x1b2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x2
	.uahalf	0x1b3
	.uaword	0x1783
	.uleb128 0xc
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1b6
	.uaword	0x19da
	.uleb128 0x9
	.string	"PDIS0"
	.byte	0x2
	.uahalf	0x1b8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"PDIS1"
	.byte	0x2
	.uahalf	0x1b9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"PDIS2"
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PDIS3"
	.byte	0x2
	.uahalf	0x1bb
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PDIS4"
	.byte	0x2
	.uahalf	0x1bc
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"PDIS5"
	.byte	0x2
	.uahalf	0x1bd
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"PDIS6"
	.byte	0x2
	.uahalf	0x1be
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PDIS7"
	.byte	0x2
	.uahalf	0x1bf
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PDIS8"
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"PDIS9"
	.byte	0x2
	.uahalf	0x1c1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"PDIS10"
	.byte	0x2
	.uahalf	0x1c2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PDIS11"
	.byte	0x2
	.uahalf	0x1c3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PDIS12"
	.byte	0x2
	.uahalf	0x1c4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"PDIS13"
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"PDIS14"
	.byte	0x2
	.uahalf	0x1c6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PDIS15"
	.byte	0x2
	.uahalf	0x1c7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x1c8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x2
	.uahalf	0x1c9
	.uaword	0x1888
	.uleb128 0xc
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1cc
	.uaword	0x1b0e
	.uleb128 0x9
	.string	"PD0"
	.byte	0x2
	.uahalf	0x1ce
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PL0"
	.byte	0x2
	.uahalf	0x1cf
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PD1"
	.byte	0x2
	.uahalf	0x1d0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PL1"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PD2"
	.byte	0x2
	.uahalf	0x1d2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PL2"
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PD3"
	.byte	0x2
	.uahalf	0x1d4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PL3"
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PD4"
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PL4"
	.byte	0x2
	.uahalf	0x1d7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PD5"
	.byte	0x2
	.uahalf	0x1d8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PL5"
	.byte	0x2
	.uahalf	0x1d9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PD6"
	.byte	0x2
	.uahalf	0x1da
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PL6"
	.byte	0x2
	.uahalf	0x1db
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PD7"
	.byte	0x2
	.uahalf	0x1dc
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PL7"
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x2
	.uahalf	0x1de
	.uaword	0x19f3
	.uleb128 0xc
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x2
	.uahalf	0x1e1
	.uaword	0x1c4d
	.uleb128 0x9
	.string	"PD8"
	.byte	0x2
	.uahalf	0x1e3
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"PL8"
	.byte	0x2
	.uahalf	0x1e4
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"PD9"
	.byte	0x2
	.uahalf	0x1e5
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"PL9"
	.byte	0x2
	.uahalf	0x1e6
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"PD10"
	.byte	0x2
	.uahalf	0x1e7
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"PL10"
	.byte	0x2
	.uahalf	0x1e8
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"PD11"
	.byte	0x2
	.uahalf	0x1e9
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"PL11"
	.byte	0x2
	.uahalf	0x1ea
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PD12"
	.byte	0x2
	.uahalf	0x1eb
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"PL12"
	.byte	0x2
	.uahalf	0x1ec
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"PD13"
	.byte	0x2
	.uahalf	0x1ed
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"PL13"
	.byte	0x2
	.uahalf	0x1ee
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"PD14"
	.byte	0x2
	.uahalf	0x1ef
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"PL14"
	.byte	0x2
	.uahalf	0x1f0
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"PD15"
	.byte	0x2
	.uahalf	0x1f1
	.uaword	0x1a0
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"PL15"
	.byte	0x2
	.uahalf	0x1f2
	.uaword	0x1a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x1b26
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x1fb
	.uaword	0x1c8d
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x1fe
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x200
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x202
	.uaword	0x4c6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN0"
	.byte	0x2
	.uahalf	0x203
	.uaword	0x1c65
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x206
	.uaword	0x1cca
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x209
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x20b
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x20d
	.uaword	0x50a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN1"
	.byte	0x2
	.uahalf	0x20e
	.uaword	0x1ca2
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x211
	.uaword	0x1d07
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x214
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x216
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x218
	.uaword	0x641
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ESR"
	.byte	0x2
	.uahalf	0x219
	.uaword	0x1cdf
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x21c
	.uaword	0x1d41
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x21f
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x221
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x223
	.uaword	0x6a9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ID"
	.byte	0x2
	.uahalf	0x224
	.uaword	0x1d19
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x227
	.uaword	0x1d7a
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x22a
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x22c
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x22e
	.uaword	0x7cb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IN"
	.byte	0x2
	.uahalf	0x22f
	.uaword	0x1d52
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x232
	.uaword	0x1db3
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x235
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x237
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x239
	.uaword	0x873
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR0"
	.byte	0x2
	.uahalf	0x23a
	.uaword	0x1d8b
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x23d
	.uaword	0x1def
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x240
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x242
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x244
	.uaword	0x923
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR12"
	.byte	0x2
	.uahalf	0x245
	.uaword	0x1dc7
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x248
	.uaword	0x1e2c
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x24b
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x24d
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x24f
	.uaword	0x9cf
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR4"
	.byte	0x2
	.uahalf	0x250
	.uaword	0x1e04
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x253
	.uaword	0x1e68
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x256
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x258
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x25a
	.uaword	0xa7c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR8"
	.byte	0x2
	.uahalf	0x25b
	.uaword	0x1e40
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x25e
	.uaword	0x1ea4
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x261
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x263
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x265
	.uaword	0xadc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR0"
	.byte	0x2
	.uahalf	0x266
	.uaword	0x1e7c
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x269
	.uaword	0x1eee
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x26c
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x26e
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x270
	.uaword	0xb3c
	.uleb128 0xe
	.string	"B_P21"
	.byte	0x2
	.uahalf	0x272
	.uaword	0xbcc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR1"
	.byte	0x2
	.uahalf	0x273
	.uaword	0x1eb8
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x276
	.uaword	0x1f2a
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x279
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x27b
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x27d
	.uaword	0xca7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_LPCR2"
	.byte	0x2
	.uahalf	0x27e
	.uaword	0x1f02
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x281
	.uaword	0x1f66
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x284
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x286
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x288
	.uaword	0x104b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR"
	.byte	0x2
	.uahalf	0x289
	.uaword	0x1f3e
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x28c
	.uaword	0x1fa1
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x28f
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x291
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x293
	.uaword	0xd38
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR0"
	.byte	0x2
	.uahalf	0x294
	.uaword	0x1f79
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x297
	.uaword	0x1fdd
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x29a
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x29c
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x29e
	.uaword	0xdbf
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR12"
	.byte	0x2
	.uahalf	0x29f
	.uaword	0x1fb5
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2a2
	.uaword	0x201a
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2a5
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2a7
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2a9
	.uaword	0xe56
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR4"
	.byte	0x2
	.uahalf	0x2aa
	.uaword	0x1ff2
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2ad
	.uaword	0x2056
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2b0
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2b2
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2b4
	.uaword	0xef1
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR8"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x202e
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2b8
	.uaword	0x2092
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2bb
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2bd
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2bf
	.uaword	0x1299
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR"
	.byte	0x2
	.uahalf	0x2c0
	.uaword	0x206a
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2c3
	.uaword	0x20cc
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2c6
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2c8
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2ca
	.uaword	0x1634
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR"
	.byte	0x2
	.uahalf	0x2cb
	.uaword	0x20a4
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x2107
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2d5
	.uaword	0x1323
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0"
	.byte	0x2
	.uahalf	0x2d6
	.uaword	0x20df
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2d9
	.uaword	0x2143
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2de
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2e0
	.uaword	0x13bd
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12"
	.byte	0x2
	.uahalf	0x2e1
	.uaword	0x211b
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2e4
	.uaword	0x2180
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x1453
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x2158
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2ef
	.uaword	0x21bc
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x2f6
	.uaword	0x14ea
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8"
	.byte	0x2
	.uahalf	0x2f7
	.uaword	0x2194
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x2fa
	.uaword	0x21f8
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x2fd
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x2ff
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x301
	.uaword	0x176c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT"
	.byte	0x2
	.uahalf	0x302
	.uaword	0x21d0
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x305
	.uaword	0x2232
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x30c
	.uaword	0x1870
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR"
	.byte	0x2
	.uahalf	0x30d
	.uaword	0x220a
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x310
	.uaword	0x226d
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x313
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x315
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x317
	.uaword	0x19da
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC"
	.byte	0x2
	.uahalf	0x318
	.uaword	0x2245
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x31b
	.uaword	0x22a9
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x31e
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x320
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x322
	.uaword	0x1b0e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0"
	.byte	0x2
	.uahalf	0x323
	.uaword	0x2281
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.uahalf	0x326
	.uaword	0x22e4
	.uleb128 0xe
	.string	"U"
	.byte	0x2
	.uahalf	0x329
	.uaword	0x1a0
	.uleb128 0xe
	.string	"I"
	.byte	0x2
	.uahalf	0x32b
	.uaword	0x1d1
	.uleb128 0xe
	.string	"B"
	.byte	0x2
	.uahalf	0x32d
	.uaword	0x1c4d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1"
	.byte	0x2
	.uahalf	0x32e
	.uaword	0x22bc
	.uleb128 0xf
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x2
	.uahalf	0x339
	.uaword	0x2538
	.uleb128 0x10
	.string	"OUT"
	.byte	0x2
	.uahalf	0x33b
	.uaword	0x21f8
	.byte	0
	.uleb128 0x10
	.string	"OMR"
	.byte	0x2
	.uahalf	0x33c
	.uaword	0x2092
	.byte	0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x2
	.uahalf	0x33d
	.uaword	0x1d41
	.byte	0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x2
	.uahalf	0x33e
	.uaword	0x274
	.byte	0xc
	.uleb128 0x10
	.string	"IOCR0"
	.byte	0x2
	.uahalf	0x33f
	.uaword	0x1db3
	.byte	0x10
	.uleb128 0x10
	.string	"IOCR4"
	.byte	0x2
	.uahalf	0x340
	.uaword	0x1e2c
	.byte	0x14
	.uleb128 0x10
	.string	"IOCR8"
	.byte	0x2
	.uahalf	0x341
	.uaword	0x1e68
	.byte	0x18
	.uleb128 0x10
	.string	"IOCR12"
	.byte	0x2
	.uahalf	0x342
	.uaword	0x1def
	.byte	0x1c
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x2
	.uahalf	0x343
	.uaword	0x274
	.byte	0x20
	.uleb128 0x10
	.string	"IN"
	.byte	0x2
	.uahalf	0x344
	.uaword	0x1d7a
	.byte	0x24
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x2
	.uahalf	0x345
	.uaword	0x294
	.byte	0x28
	.uleb128 0x10
	.string	"PDR0"
	.byte	0x2
	.uahalf	0x346
	.uaword	0x22a9
	.byte	0x40
	.uleb128 0x10
	.string	"PDR1"
	.byte	0x2
	.uahalf	0x347
	.uaword	0x22e4
	.byte	0x44
	.uleb128 0x10
	.string	"reserved_48"
	.byte	0x2
	.uahalf	0x348
	.uaword	0x258
	.byte	0x48
	.uleb128 0x10
	.string	"ESR"
	.byte	0x2
	.uahalf	0x349
	.uaword	0x1d07
	.byte	0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x2
	.uahalf	0x34a
	.uaword	0x284
	.byte	0x54
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x2
	.uahalf	0x34b
	.uaword	0x226d
	.byte	0x60
	.uleb128 0x10
	.string	"PCSR"
	.byte	0x2
	.uahalf	0x34c
	.uaword	0x2232
	.byte	0x64
	.uleb128 0x10
	.string	"reserved_68"
	.byte	0x2
	.uahalf	0x34d
	.uaword	0x258
	.byte	0x68
	.uleb128 0x10
	.string	"OMSR0"
	.byte	0x2
	.uahalf	0x34e
	.uaword	0x2107
	.byte	0x70
	.uleb128 0x10
	.string	"OMSR4"
	.byte	0x2
	.uahalf	0x34f
	.uaword	0x2180
	.byte	0x74
	.uleb128 0x10
	.string	"OMSR8"
	.byte	0x2
	.uahalf	0x350
	.uaword	0x21bc
	.byte	0x78
	.uleb128 0x10
	.string	"OMSR12"
	.byte	0x2
	.uahalf	0x351
	.uaword	0x2143
	.byte	0x7c
	.uleb128 0x10
	.string	"OMCR0"
	.byte	0x2
	.uahalf	0x352
	.uaword	0x1fa1
	.byte	0x80
	.uleb128 0x10
	.string	"OMCR4"
	.byte	0x2
	.uahalf	0x353
	.uaword	0x201a
	.byte	0x84
	.uleb128 0x10
	.string	"OMCR8"
	.byte	0x2
	.uahalf	0x354
	.uaword	0x2056
	.byte	0x88
	.uleb128 0x10
	.string	"OMCR12"
	.byte	0x2
	.uahalf	0x355
	.uaword	0x1fdd
	.byte	0x8c
	.uleb128 0x10
	.string	"OMSR"
	.byte	0x2
	.uahalf	0x356
	.uaword	0x20cc
	.byte	0x90
	.uleb128 0x10
	.string	"OMCR"
	.byte	0x2
	.uahalf	0x357
	.uaword	0x1f66
	.byte	0x94
	.uleb128 0x10
	.string	"reserved_98"
	.byte	0x2
	.uahalf	0x358
	.uaword	0x258
	.byte	0x98
	.uleb128 0x10
	.string	"LPCR0"
	.byte	0x2
	.uahalf	0x359
	.uaword	0x1ea4
	.byte	0xa0
	.uleb128 0x10
	.string	"LPCR1"
	.byte	0x2
	.uahalf	0x35a
	.uaword	0x1eee
	.byte	0xa4
	.uleb128 0x10
	.string	"LPCR2"
	.byte	0x2
	.uahalf	0x35b
	.uaword	0x1f2a
	.byte	0xa8
	.uleb128 0x10
	.string	"reserved_A4"
	.byte	0x2
	.uahalf	0x35c
	.uaword	0x2538
	.byte	0xac
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x2
	.uahalf	0x35d
	.uaword	0x1cca
	.byte	0xf8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x2
	.uahalf	0x35e
	.uaword	0x1c8d
	.byte	0xfc
	.byte	0
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x2548
	.uleb128 0x4
	.uaword	0x268
	.byte	0x4b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P"
	.byte	0x2
	.uahalf	0x35f
	.uaword	0x2556
	.uleb128 0x12
	.uaword	0x22f7
	.uleb128 0x13
	.byte	0x4
	.uaword	0x2548
	.uleb128 0x13
	.byte	0x4
	.uaword	0x250
	.uleb128 0x14
	.byte	0x1
	.string	"TX0_char"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uaword	0x2589
	.uleb128 0x15
	.string	"buffer"
	.byte	0x1
	.byte	0x33
	.uaword	0x250
	.byte	0
	.uleb128 0x16
	.uaword	0x2567
	.uaword	.LFB746
	.uaword	.LFE746
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x25b1
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x323e
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Mode_wheel"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.uaword	.LFB748
	.uaword	.LFE748
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x274d
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x47
	.uaword	0x1e7
	.uaword	.LLST1
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0x49
	.uaword	0x2608
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL4
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0x4a
	.uaword	0x2632
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL5
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4b
	.uaword	0x2658
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LVL7
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.byte	0x4c
	.uaword	0x2681
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x5
	.uleb128 0x1d
	.uaword	.LVL8
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0x4d
	.uaword	0x26aa
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x3
	.uleb128 0x1d
	.uaword	.LVL9
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0x4e
	.uaword	0x26d3
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x8
	.uleb128 0x1d
	.uaword	.LVL10
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0x4f
	.uaword	0x26fc
	.uleb128 0x21
	.uaword	0x257a
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL11
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0x50
	.uaword	0x2725
	.uleb128 0x21
	.uaword	0x257a
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL12
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x2567
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.uaword	0x257a
	.uleb128 0x24
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Mode_joint"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	.LFB749
	.uaword	.LFE749
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x28ea
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x55
	.uaword	0x1e7
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.byte	0x57
	.uaword	0x27a4
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL16
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.byte	0x58
	.uaword	0x27ce
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x59
	.uaword	0x27f4
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	.LVL19
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x1
	.byte	0x5a
	.uaword	0x281d
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x5
	.uleb128 0x1d
	.uaword	.LVL20
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB130
	.uaword	.LBE130
	.byte	0x1
	.byte	0x5b
	.uaword	0x2846
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x3
	.uleb128 0x1d
	.uaword	.LVL21
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0x5c
	.uaword	0x286f
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x8
	.uleb128 0x1d
	.uaword	.LVL22
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0x5d
	.uaword	0x2899
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL23
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.byte	0x5e
	.uaword	0x28c2
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x3
	.uleb128 0x1d
	.uaword	.LVL24
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x2567
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.uaword	0x257a
	.uleb128 0x24
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Send_one"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB750
	.uaword	.LFE750
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a63
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x63
	.uaword	0x1e7
	.uaword	.LLST5
	.uleb128 0x1a
	.string	"length"
	.byte	0x1
	.byte	0x63
	.uaword	0x1e7
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	.LASF8
	.byte	0x1
	.byte	0x63
	.uaword	0x1e7
	.uaword	.LLST7
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB140
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x66
	.uaword	0x2960
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL29
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.byte	0x67
	.uaword	0x298a
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL30
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB146
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x68
	.uaword	0x29b0
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	.LVL31
	.uaword	0x323e
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x69
	.uaword	0x29db
	.uleb128 0x26
	.uaword	0x257a
	.byte	0x1
	.byte	0x59
	.uleb128 0x1d
	.uaword	.LVL32
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.byte	0x6a
	.uaword	0x2a06
	.uleb128 0x26
	.uaword	0x257a
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.byte	0x6b
	.uaword	0x2a2c
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	.LVL35
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.byte	0x6c
	.uaword	0x2a52
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	.LVL38
	.uaword	0x323e
	.byte	0
	.uleb128 0x24
	.uaword	.LVL39
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Turn_one"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB751
	.uaword	.LFE751
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ab3
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x71
	.uaword	0x1e7
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0x71
	.uaword	0x197
	.uaword	.LLST12
	.uleb128 0x24
	.uaword	.LVL42
	.byte	0x1
	.uaword	0x28ea
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Turn_Speed_one"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB752
	.uaword	.LFE752
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c1c
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x7d
	.uaword	0x1e7
	.uaword	.LLST13
	.uleb128 0x1a
	.string	"value_rpm"
	.byte	0x1
	.byte	0x7d
	.uaword	0x1a0
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x87
	.uaword	0x2b23
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL47
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB163
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x89
	.uaword	0x2b49
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST15
	.uleb128 0x20
	.uaword	.LVL49
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.byte	0x88
	.uaword	0x2b73
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL48
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x8a
	.uaword	0x2b99
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	.LVL50
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.byte	0x8b
	.uaword	0x2bbf
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	.LVL51
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB176
	.uaword	.LBE176
	.byte	0x1
	.byte	0x8e
	.uaword	0x2be5
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST18
	.uleb128 0x20
	.uaword	.LVL53
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x1
	.byte	0x91
	.uaword	0x2c0b
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST19
	.uleb128 0x20
	.uaword	.LVL56
	.uaword	0x323e
	.byte	0
	.uleb128 0x24
	.uaword	.LVL57
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Send"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	.LFB753
	.uaword	.LFE753
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2da9
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x9b
	.uaword	0x2c5f
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL59
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x1
	.byte	0x9c
	.uaword	0x2c89
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL60
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x1
	.byte	0x9d
	.uaword	0x2cb3
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -2
	.uleb128 0x1d
	.uaword	.LVL61
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.byte	0x9e
	.uaword	0x2cd9
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST20
	.uleb128 0x20
	.uaword	.LVL63
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB190
	.uaword	.LBE190
	.byte	0x1
	.byte	0x9f
	.uaword	0x2d04
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -125
	.uleb128 0x1d
	.uaword	.LVL64
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0x83
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.byte	0xa0
	.uaword	0x2d2a
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST21
	.uleb128 0x20
	.uaword	.LVL65
	.uaword	0x323e
	.byte	0
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB194
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xa1
	.uaword	0x2d50
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	.LVL66
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.byte	0xa6
	.uaword	0x2d72
	.uleb128 0x23
	.uaword	0x257a
	.uleb128 0x20
	.uaword	.LVL68
	.uaword	0x323e
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0xaa
	.uaword	0x2d98
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST23
	.uleb128 0x20
	.uaword	.LVL71
	.uaword	0x323e
	.byte	0
	.uleb128 0x24
	.uaword	.LVL72
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"ID_Set"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB747
	.uaword	.LFE747
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ddd
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1e7
	.uaword	.LLST24
	.uleb128 0x18
	.uaword	.LVL74
	.byte	0x1
	.uaword	0x2c1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Initial_Position"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	.LFB754
	.uaword	.LFE754
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e0d
	.uleb128 0x18
	.uaword	.LVL75
	.byte	0x1
	.uaword	0x2c1c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IO_dxl_Turn_sync"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.uaword	.LFB755
	.uaword	.LFE755
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e63
	.uleb128 0x1a
	.string	"delay"
	.byte	0x1
	.byte	0xbd
	.uaword	0x197
	.uaword	.LLST25
	.uleb128 0x20
	.uaword	.LVL77
	.uaword	0x2c1c
	.uleb128 0x24
	.uaword	.LVL78
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x7
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x197
	.byte	0xf7
	.uleb128 0x1a0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IO_dxl_Turn_sync_sub"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.uaword	.LFB756
	.uaword	.LFE756
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2ebf
	.uleb128 0x27
	.string	"id"
	.byte	0x1
	.byte	0xc8
	.uaword	0x1e7
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.uaword	.LASF9
	.byte	0x1
	.byte	0xc8
	.uaword	0x197
	.uaword	.LLST26
	.uleb128 0x1a
	.string	"value_speed"
	.byte	0x1
	.byte	0xc8
	.uaword	0x197
	.uaword	.LLST27
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"IO_set_dxl"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	.LFB745
	.uaword	.LFE745
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2f74
	.uleb128 0x28
	.uaword	.LVL84
	.uaword	0x3277
	.uaword	0x2ef5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL85
	.uaword	0x3296
	.uleb128 0x20
	.uaword	.LVL86
	.uaword	0x32a9
	.uleb128 0x28
	.uaword	.LVL87
	.uaword	0x274d
	.uaword	0x2f1a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.uaword	.LVL88
	.uaword	0x2e63
	.uaword	0x2f45
	.uleb128 0x1e
	.byte	0x1
	.byte	0x56
	.byte	0x8
	.byte	0xf4
	.uleb128 0x197
	.byte	0x4
	.uaword	0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x8
	.byte	0xf4
	.uleb128 0x197
	.byte	0x4
	.uaword	0x43160000
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.uaword	.LVL89
	.uaword	0x2e0d
	.uaword	0x2f5f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x197
	.byte	0x4
	.uaword	0x43fa0000
	.byte	0
	.uleb128 0x24
	.uaword	.LVL90
	.byte	0x1
	.uaword	0x3277
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Read_Status"
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.uaword	.LFB757
	.uaword	.LFE757
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3117
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0xd7
	.uaword	0x1e7
	.uaword	.LLST28
	.uleb128 0x1a
	.string	"menu"
	.byte	0x1
	.byte	0xd7
	.uaword	0x1e7
	.uaword	.LLST29
	.uleb128 0x1a
	.string	"length_read"
	.byte	0x1
	.byte	0xd7
	.uaword	0x1e7
	.uaword	.LLST30
	.uleb128 0x1f
	.uaword	0x2567
	.uaword	.LBB202
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xdb
	.uaword	0x2ff3
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL94
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB206
	.uaword	.LBE206
	.byte	0x1
	.byte	0xdc
	.uaword	0x301d
	.uleb128 0x1c
	.uaword	0x257a
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL95
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB208
	.uaword	.LBE208
	.byte	0x1
	.byte	0xdd
	.uaword	0x304a
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST31
	.uleb128 0x1d
	.uaword	.LVL96
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.byte	0xde
	.uaword	0x3073
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x4
	.uleb128 0x1d
	.uaword	.LVL97
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x1
	.byte	0xdf
	.uaword	0x309c
	.uleb128 0x21
	.uaword	0x257a
	.byte	0x2
	.uleb128 0x1d
	.uaword	.LVL98
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0xe0
	.uaword	0x30c9
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST32
	.uleb128 0x1d
	.uaword	.LVL99
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x2567
	.uaword	.LBB216
	.uaword	.LBE216
	.byte	0x1
	.byte	0xe1
	.uaword	0x30ef
	.uleb128 0x17
	.uaword	0x257a
	.uaword	.LLST33
	.uleb128 0x20
	.uaword	.LVL102
	.uaword	0x323e
	.byte	0
	.uleb128 0x22
	.uaword	0x2567
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x1
	.byte	0xe2
	.uleb128 0x23
	.uaword	0x257a
	.uleb128 0x24
	.uaword	.LVL104
	.byte	0x1
	.uaword	0x323e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.string	"portLED"
	.byte	0x3
	.byte	0x21
	.uaword	0x312b
	.sleb128 -268184832
	.uleb128 0x2a
	.uaword	0x255b
	.uleb128 0x2b
	.string	"ID"
	.byte	0x1
	.byte	0xd
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	ID
	.uleb128 0x2b
	.string	"ID_many"
	.byte	0x1
	.byte	0xd
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	ID_many
	.uleb128 0x2b
	.string	"parasum"
	.byte	0x1
	.byte	0xe
	.uaword	0x1a0
	.byte	0x5
	.byte	0x3
	.uaword	parasum
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xf
	.uaword	0x1a0
	.byte	0x5
	.byte	0x3
	.uaword	i
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.byte	0xf
	.uaword	0x1a0
	.byte	0x5
	.byte	0x3
	.uaword	j
	.uleb128 0x2b
	.string	"dxl_no"
	.byte	0x1
	.byte	0xf
	.uaword	0x1a0
	.byte	0x5
	.byte	0x3
	.uaword	dxl_no
	.uleb128 0x2b
	.string	"length"
	.byte	0x1
	.byte	0x10
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	length
	.uleb128 0x2b
	.string	"length_sub"
	.byte	0x1
	.byte	0x10
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	length_sub
	.uleb128 0x2c
	.uaword	.LASF8
	.byte	0x1
	.byte	0x11
	.uaword	0x1e7
	.byte	0x5
	.byte	0x3
	.uaword	instruction
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x31ef
	.uleb128 0x4
	.uaword	0x268
	.byte	0x13
	.uleb128 0x4
	.uaword	0x268
	.byte	0x9
	.byte	0
	.uleb128 0x2b
	.string	"parameter"
	.byte	0x1
	.byte	0x12
	.uaword	0x31d9
	.byte	0x5
	.byte	0x3
	.uaword	parameter
	.uleb128 0x2b
	.string	"RX_data"
	.byte	0x1
	.byte	0x13
	.uaword	0x2a4
	.byte	0x5
	.byte	0x3
	.uaword	RX_data
	.uleb128 0x3
	.uaword	0x1e7
	.uaword	0x322b
	.uleb128 0x4
	.uaword	0x268
	.byte	0x14
	.byte	0
	.uleb128 0x2b
	.string	"angle"
	.byte	0x1
	.byte	0x14
	.uaword	0x321b
	.byte	0x5
	.byte	0x3
	.uaword	angle
	.uleb128 0x2d
	.byte	0x1
	.string	"printf_UART_dxl"
	.byte	0x4
	.byte	0x41
	.byte	0x1
	.byte	0x1
	.uaword	0x325e
	.uleb128 0x2e
	.uaword	0x250
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"delay_ms"
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uaword	0x3277
	.uleb128 0x2e
	.uaword	0x1a0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"printf_SysLog"
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uaword	0x3296
	.uleb128 0x2e
	.uaword	0x2561
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"Set_UART_dxl"
	.byte	0x4
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.byte	0x1
	.string	"setPort_GPIO_dxl"
	.byte	0x7
	.byte	0x4e
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1-.Ltext0
	.uaword	.LFE746-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2-.Ltext0
	.uaword	.LVL3-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.Ltext0
	.uaword	.LFE748-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5-.Ltext0
	.uaword	.LVL6-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6-.Ltext0
	.uaword	.LFE748-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL14-.Ltext0
	.uaword	.LVL15-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-.Ltext0
	.uaword	.LFE749-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17-.Ltext0
	.uaword	.LVL18-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18-.Ltext0
	.uaword	.LFE749-.Ltext0
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -18
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL27-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-.Ltext0
	.uaword	.LFE750-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE750-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL26-.Ltext0
	.uaword	.LVL29-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL29-1-.Ltext0
	.uaword	.LFE750-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL30-.Ltext0
	.uaword	.LVL31-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	ID
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL34-.Ltext0
	.uaword	.LVL35-1-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	parameter
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL36-.Ltext0
	.uaword	.LVL37-.Ltext0
	.uahalf	0x12
	.byte	0x3
	.uaword	ID
	.byte	0x94
	.byte	0x1
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL42-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1-.Ltext0
	.uaword	.LFE751-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL40-.Ltext0
	.uaword	.LVL41-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL41-.Ltext0
	.uaword	.LFE751-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x197
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL45-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45-.Ltext0
	.uaword	.LVL47-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	ID
	.uaword	.LVL47-1-.Ltext0
	.uaword	.LFE752-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL43-.Ltext0
	.uaword	.LVL44-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44-.Ltext0
	.uaword	.LFE752-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL48-.Ltext0
	.uaword	.LVL49-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	ID
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL49-.Ltext0
	.uaword	.LVL50-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	length
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL50-.Ltext0
	.uaword	.LVL51-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	instruction
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL52-.Ltext0
	.uaword	.LVL53-1-.Ltext0
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	parameter
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL54-.Ltext0
	.uaword	.LVL55-.Ltext0
	.uahalf	0x17
	.byte	0x3
	.uaword	instruction
	.byte	0x94
	.byte	0x1
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	ID
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL61-.Ltext0
	.uaword	.LVL62-.Ltext0
	.uahalf	0x17
	.byte	0x3
	.uaword	length_sub
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uaword	ID_many
	.byte	0x94
	.byte	0x1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL62-.Ltext0
	.uaword	.LVL63-1-.Ltext0
	.uahalf	0xd
	.byte	0x73
	.sleb128 1
	.byte	0x3
	.uaword	ID_many
	.byte	0x94
	.byte	0x1
	.byte	0x1e
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL64-.Ltext0
	.uaword	.LVL65-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	instruction
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL65-.Ltext0
	.uaword	.LVL66-1-.Ltext0
	.uahalf	0x5
	.byte	0x3
	.uaword	length_sub
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL69-.Ltext0
	.uaword	.LVL70-.Ltext0
	.uahalf	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uaword	ID_many
	.byte	0x94
	.byte	0x1
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	instruction
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x8
	.byte	0x7b
	.byte	0x1c
	.byte	0x20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL73-.Ltext0
	.uaword	.LVL74-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74-1-.Ltext0
	.uaword	.LFE747-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL76-.Ltext0
	.uaword	.LVL77-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL77-1-.Ltext0
	.uaword	.LFE755-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL80-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL82-.Ltext0
	.uaword	.LVL83-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL83-.Ltext0
	.uaword	.LFE756-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x197
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL79-.Ltext0
	.uaword	.LVL81-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL81-.Ltext0
	.uaword	.LVL82-.Ltext0
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x197
	.byte	0x9f
	.uaword	.LVL82-.Ltext0
	.uaword	.LFE756-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL92-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL92-.Ltext0
	.uaword	.LFE757-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL94-1-.Ltext0
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL94-1-.Ltext0
	.uaword	.LFE757-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL91-.Ltext0
	.uaword	.LVL94-1-.Ltext0
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL94-1-.Ltext0
	.uaword	.LFE757-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL95-.Ltext0
	.uaword	.LVL103-.Ltext0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL98-.Ltext0
	.uaword	.LVL101-.Ltext0
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL99-.Ltext0
	.uaword	.LVL100-.Ltext0
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL100-.Ltext0
	.uaword	.LFE757-.Ltext0
	.uahalf	0x3
	.byte	0x79
	.sleb128 -6
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
	.uaword	.LBB104-.Ltext0
	.uaword	.LBE104-.Ltext0
	.uaword	.LBB107-.Ltext0
	.uaword	.LBE107-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB124-.Ltext0
	.uaword	.LBE124-.Ltext0
	.uaword	.LBB127-.Ltext0
	.uaword	.LBE127-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB140-.Ltext0
	.uaword	.LBE140-.Ltext0
	.uaword	.LBB143-.Ltext0
	.uaword	.LBE143-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB146-.Ltext0
	.uaword	.LBE146-.Ltext0
	.uaword	.LBB149-.Ltext0
	.uaword	.LBE149-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB150-.Ltext0
	.uaword	.LBE150-.Ltext0
	.uaword	.LBB153-.Ltext0
	.uaword	.LBE153-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB160-.Ltext0
	.uaword	.LBE160-.Ltext0
	.uaword	.LBB167-.Ltext0
	.uaword	.LBE167-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB163-.Ltext0
	.uaword	.LBE163-.Ltext0
	.uaword	.LBB170-.Ltext0
	.uaword	.LBE170-.Ltext0
	.uaword	.LBB171-.Ltext0
	.uaword	.LBE171-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB180-.Ltext0
	.uaword	.LBE180-.Ltext0
	.uaword	.LBB183-.Ltext0
	.uaword	.LBE183-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB194-.Ltext0
	.uaword	.LBE194-.Ltext0
	.uaword	.LBB197-.Ltext0
	.uaword	.LBE197-.Ltext0
	.uaword	0
	.uaword	0
	.uaword	.LBB202-.Ltext0
	.uaword	.LBE202-.Ltext0
	.uaword	.LBB205-.Ltext0
	.uaword	.LBE205-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF4:
	.string	"reserved_2"
.LASF2:
	.string	"reserved_8"
.LASF9:
	.string	"value_angle"
.LASF7:
	.string	"reserved_12"
.LASF1:
	.string	"reserved_16"
.LASF8:
	.string	"instruction"
.LASF5:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF6:
	.string	"reserved_28"
	.extern	setPort_GPIO_dxl,STT_FUNC,0
	.extern	Set_UART_dxl,STT_FUNC,0
	.extern	printf_SysLog,STT_FUNC,0
	.extern	delay_ms,STT_FUNC,0
	.extern	printf_UART_dxl,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
