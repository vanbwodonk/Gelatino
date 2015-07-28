	.file	"optiboot.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.global	putch
	.type	putch, @function
putch:
.LFB3:
.LM1:
/* prologue: function */
/* frame size = 0 */
.LVL0:
.L2:
.LM2:
	sbis 43-32,5
	rjmp .L2
.LM3:
	out 44-32,r24
/* epilogue start */
.LM4:
	ret
.LFE3:
	.size	putch, .-putch
.global	getch
	.type	getch, @function
getch:
.LFB4:
.LM5:
/* prologue: function */
/* frame size = 0 */
.L6:
.LM6:
	sbis 43-32,7
	rjmp .L6
.LM7:
	sbic 43-32,4
	rjmp .L7
.LBB20:
.LBB21:
.LM8:
/* #APP */
 ;  822 "optiboot.c" 1
	wdr

 ;  0 "" 2
/* #NOAPP */
.L7:
.LBE21:
.LBE20:
.LM9:
	in r24,44-32
.LVL1:
.LVL2:
/* epilogue start */
.LM10:
	ret
.LFE4:
	.size	getch, .-getch
.global	watchdogConfig
	.type	watchdogConfig, @function
watchdogConfig:
.LFB9:
.LM11:
.LVL3:
/* prologue: function */
/* frame size = 0 */
.LM12:
	ldi r25,lo8(24)
	out 65-32,r25
.LM13:
	out 65-32,r24
/* epilogue start */
.LM14:
	ret
.LFE9:
	.size	watchdogConfig, .-watchdogConfig
.global	verifySpace
	.type	verifySpace, @function
verifySpace:
.LFB6:
.LM15:
/* prologue: function */
/* frame size = 0 */
.LM16:
	call getch
	cpi r24,lo8(32)
	breq .L13
.LM17:
	ldi r24,lo8(8)
	call watchdogConfig
.L14:
	rjmp .L14
.L13:
.LM18:
	ldi r24,lo8(20)
	call putch
/* epilogue start */
.LM19:
	ret
.LFE6:
	.size	verifySpace, .-verifySpace
	.type	getNch, @function
getNch:
.LFB5:
.LM20:
.LVL4:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
.LVL5:
.L17:
.LM21:
	call getch
	subi r17,lo8(-(-1))
	brne .L17
.LM22:
	call verifySpace
/* epilogue start */
.LM23:
	pop r17
.LVL6:
	ret
.LFE5:
	.size	getNch, .-getNch
.global	appStart
	.type	appStart, @function
appStart:
.LFB10:
.LM24:
.LVL7:
/* prologue: naked */
/* frame size = 0 */
.LM25:
/* #APP */
 ;  836 "optiboot.c" 1
	mov r2, r24

 ;  0 "" 2
.LM26:
/* #NOAPP */
	ldi r24,lo8(0)
.LVL8:
	call watchdogConfig
.LM27:
/* #APP */
 ;  841 "optiboot.c" 1
	ldi r30,0
clr r31
ijmp

 ;  0 "" 2
/* epilogue start */
.LM28:
/* #NOAPP */
.LFE10:
	.size	appStart, .-appStart
	.section	.init9,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB2:
.LSM0:
/* prologue: function */
/* frame size = 0 */
.LSM1:
/* #APP */
 ;  462 "optiboot.c" 1
	clr __zero_reg__
 ;  0 "" 2
.LSM2:
/* #NOAPP */
	ldi r24,lo8(1279)
	ldi r25,hi8(1279)
	out (93)+1-32,r25
	out 93-32,r24
.LSM3:
	in r25,84-32
.LVL9:
.LSM4:
	out 84-32,__zero_reg__
.LSM5:
	mov r24,r25
	andi r24,lo8(13)
	breq .L23
.LSM6:
	mov r24,r25
	call appStart
.LVL10:
.L23:
.LSM7:
	ldi r24,lo8(5)
	out 78-32,r24
.LSM8:
	ldi r24,lo8(2)
	out 43-32,r24
.LSM9:
	ldi r24,lo8(24)
	out 42-32,r24
.LSM10:
	ldi r24,lo8(6)
	out 64-32,r24
.LSM11:
	ldi r24,lo8(16)
	out 41-32,r24
.LSM12:
	ldi r24,lo8(14)
	call watchdogConfig
.LVL11:
.LSM13:
	sbi 55-32,0
	ldi r25,lo8(6)
.LVL12:
.LBB22:
.LBB23:
.LSM14:
	ldi r18,lo8(-976)
	ldi r19,hi8(-976)
.LSM15:
	ldi r21,lo8(-128)
.LSM16:
	ldi r20,lo8(1)
.L25:
.LSM17:
	out (76)+1-32,r19
	out 76-32,r18
.LSM18:
	out 88-32,r21
.L24:
.LSM19:
	in __tmp_reg__,88-32
	sbrs __tmp_reg__,7
	rjmp .L24
.LSM20:
	in r24,56-32
	eor r24,r20
	out 56-32,r24
.LBB24:
.LBB25:
.LSM21:
/* #APP */
 ;  822 "optiboot.c" 1
	wdr

 ;  0 "" 2
/* #NOAPP */
.LBE25:
.LBE24:
.LSM22:
	subi r25,lo8(-(-1))
	brne .L25
	clr r14
	clr r15
.LVL13:
.LBE23:
.LBE22:
.LBB26:
.LBB27:
.LBB28:
.LBB30:
.LSM23:
	ldi r27,lo8(3)
	mov r10,r27
.LBB32:
.LSM24:
	clr r11
	inc r11
.LBE32:
.LSM25:
	ldi r26,lo8(5)
	mov r13,r26
.LSM26:
	ldi r31,lo8(17)
	mov r12,r31
.LVL14:
.L45:
.LBE30:
.LBE28:
.LBE27:
.LBE26:
.LSM27:
	call getch
.LVL15:
.LSM28:
	cpi r24,lo8(65)
.LVL16:
	brne .L26
.LBB39:
.LSM29:
	call getch
.LVL17:
	mov r16,r24
.LVL18:
.LSM30:
	call verifySpace
.LSM31:
	cpi r16,lo8(-126)
	brne .L27
.LSM32:
	ldi r24,lo8(2)
	rjmp .L56
.L27:
.LSM33:
	cpi r16,lo8(-127)
	brne .L29
.LSM34:
	ldi r24,lo8(6)
	rjmp .L56
.L29:
.LSM35:
	ldi r24,lo8(3)
.LVL19:
.L56:
	call putch
	rjmp .L28
.LVL20:
.L26:
.LBE39:
.LSM36:
	cpi r24,lo8(66)
	brne .L30
.LSM37:
	ldi r24,lo8(20)
.LVL21:
	rjmp .L57
.LVL22:
.L30:
.LSM38:
	cpi r24,lo8(69)
	brne .L31
.LSM39:
	ldi r24,lo8(5)
.LVL23:
.L57:
	call getNch
	rjmp .L28
.LVL24:
.L31:
.LSM40:
	cpi r24,lo8(85)
	brne .L32
.LBB40:
.LSM41:
	call getch
.LVL25:
.LSM42:
	mov r14,r24
.LVL26:
	clr r15
	call getch
	mov r16,r24
.LVL27:
	ldi r17,lo8(0)
.LVL28:
	mov r17,r16
	clr r16
.LVL29:
	or r16,r14
	or r17,r15
.LSM43:
	lsl r16
	rol r17
.LSM44:
	call verifySpace
	movw r14,r16
.LVL30:
	rjmp .L28
.LVL31:
.L32:
.LBE40:
.LSM45:
	cpi r24,lo8(86)
	brne .L33
.LSM46:
	ldi r24,lo8(4)
.LVL32:
	call getNch
.LSM47:
	ldi r24,lo8(0)
	rjmp .L56
.LVL33:
.L33:
.LSM48:
	cpi r24,lo8(100)
	breq .+2
	rjmp .L34
.LBB41:
.LSM49:
	call getch
.LVL34:
	call getch
	mov r17,r24
.LSM50:
	call getch
	mov r16,r24
.LVL35:
	ldi r28,lo8(256)
	ldi r29,hi8(256)
.L35:
.LSM51:
	call getch
	st Y+,r24
.LSM52:
	cp r17,r28
	brne .L35
.LSM53:
	call verifySpace
.LBB38:
.LBB35:
.LSM54:
	cpi r16,lo8(69)
	brne .L54
.L55:
	rjmp .L55
.L54:
.LBB33:
.LSM55:
	movw r30,r14
/* #APP */
 ;  891 "optiboot.c" 1
	out 55, r10
	spm
	
 ;  0 "" 2
/* #NOAPP */
.L38:
.LBE33:
.LBE35:
.LSM56:
	in __tmp_reg__,87-32
	sbrc __tmp_reg__,0
	rjmp .L38
	movw r20,r14
	ldi r26,lo8(256)
	ldi r27,hi8(256)
.LVL36:
.L39:
.LBB36:
.LBB29:
.LBB31:
.LSM57:
	ld r18,X
	ldi r19,lo8(0)
.LVL37:
.LSM58:
	adiw r26,1
	ld r24,X
	sbiw r26,1
	ldi r25,lo8(0)
	mov r25,r24
	clr r24
	or r24,r18
	or r25,r19
.LVL38:
.LSM59:
	adiw r26,2
.LSM60:
	movw r30,r20
/* #APP */
 ;  905 "optiboot.c" 1
	movw  r0, r24
	out 55, r11
	spm
	clr  r1
	
 ;  0 "" 2
.LSM61:
/* #NOAPP */
	subi r20,lo8(-(2))
	sbci r21,hi8(-(2))
.LBE31:
.LSM62:
	cp r17,r26
	brne .L39
.LSM63:
	movw r30,r14
/* #APP */
 ;  916 "optiboot.c" 1
	out 55, r13
	spm
	
 ;  0 "" 2
.LVL39:
/* #NOAPP */
.L40:
.LBE29:
.LBE36:
.LSM64:
	in __tmp_reg__,87-32
	sbrc __tmp_reg__,0
	rjmp .L40
.LBB37:
.LBB34:
.LSM65:
/* #APP */
 ;  924 "optiboot.c" 1
	out 55, r12
	spm
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L28
.LVL40:
.L34:
.LBE34:
.LBE37:
.LBE38:
.LBE41:
.LSM66:
	cpi r24,lo8(116)
	brne .L41
.LBB42:
.LSM67:
	call getch
.LVL41:
	call getch
	mov r16,r24
.LVL42:
.LSM68:
	call getch
.LSM69:
	call verifySpace
	movw r28,r14
.LVL43:
.L42:
.LBB43:
.LBB44:
.LSM70:
	movw r30,r28
/* #APP */
 ;  964 "optiboot.c" 1
	lpm r24,Z+

 ;  0 "" 2
/* #NOAPP */
	movw r28,r30
	call putch
.LSM71:
	subi r16,lo8(-(-1))
	brne .L42
	rjmp .L28
.LVL44:
.L41:
.LBE44:
.LBE43:
.LBE42:
.LSM72:
	cpi r24,lo8(117)
	brne .L43
.LSM73:
	call verifySpace
.LVL45:
.LSM74:
	ldi r24,lo8(30)
	call putch
.LSM75:
	ldi r24,lo8(-108)
	call putch
.LSM76:
	ldi r24,lo8(4)
	rjmp .L56
.LVL46:
.L43:
.LSM77:
	cpi r24,lo8(81)
	brne .L44
.LSM78:
	ldi r24,lo8(8)
.LVL47:
	call watchdogConfig
.LVL48:
.L44:
.LSM79:
	call verifySpace
.LVL49:
.L28:
.LSM80:
	ldi r24,lo8(16)
	call putch
.LVL50:
	rjmp .L45
.LFE2:
	.size	main, .-main
.global	optiboot_version
	.section	.version,"a",@progbits
	.type	optiboot_version, @object
	.size	optiboot_version, 2
optiboot_version:
	.word	1538
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.p2align	2
.LEFDE12:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x69
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL31
	.long	.LVL32
	.word	0x1
	.byte	0x68
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x68
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL13
	.long	.LVL26
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL36
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL39
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL43
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LVL44
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL49
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LFE2
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL14
	.long	.LVL28
	.word	0x1
	.byte	0x61
	.long	.LVL31
	.long	.LVL42
	.word	0x1
	.byte	0x61
	.long	.LVL42
	.long	.LVL44
	.word	0x1
	.byte	0x60
	.long	.LVL44
	.long	.LVL49
	.word	0x1
	.byte	0x61
	.long	.LVL49
	.long	.LFE2
	.word	0x1
	.byte	0x60
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL12
	.long	.LVL15
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL14
	.long	.LVL18
	.word	0x1
	.byte	0x60
	.long	.LVL19
	.long	.LVL27
	.word	0x1
	.byte	0x60
	.long	.LVL31
	.long	.LVL42
	.word	0x1
	.byte	0x60
	.long	.LVL44
	.long	.LFE2
	.word	0x1
	.byte	0x60
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL14
	.long	.LVL43
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LFE2
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL36
	.long	.LVL40
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL38
	.long	.LVL40
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL14
	.long	.LVL27
	.word	0x1
	.byte	0x60
	.long	.LVL31
	.long	.LVL35
	.word	0x1
	.byte	0x60
	.long	.LVL40
	.long	.LVL42
	.word	0x1
	.byte	0x60
	.long	.LVL44
	.long	.LFE2
	.word	0x1
	.byte	0x60
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL14
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LVL27
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL35
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LVL42
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LFE2
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x3e4
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x70
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x7a
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x7c
	.long	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.word	0x152
	.long	0x3b
	.uleb128 0x7
	.long	.LASF35
	.byte	0x1
	.word	0x335
	.byte	0x3
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.word	0x325
	.byte	0x1
	.byte	0x3
	.long	0xb9
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.word	0x325
	.long	0x3b
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.word	0x356
	.byte	0x1
	.byte	0x3
	.long	0x11e
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.word	0x354
	.long	0x29
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.word	0x354
	.long	0x11e
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.word	0x355
	.long	0x54
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.word	0x355
	.long	0x88
	.uleb128 0xc
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.word	0x36f
	.long	0x11e
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.word	0x370
	.long	0x54
	.uleb128 0xc
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.word	0x383
	.long	0x54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.byte	0x2
	.long	0x3b
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.word	0x3a5
	.byte	0x1
	.byte	0x3
	.long	0x162
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.word	0x3a4
	.long	0x3b
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.word	0x3a4
	.long	0x54
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.word	0x3a4
	.long	0x88
	.uleb128 0xe
	.string	"ch"
	.byte	0x1
	.word	0x3a6
	.long	0x3b
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.word	0x2a4
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x189
	.uleb128 0x11
	.string	"ch"
	.byte	0x1
	.word	0x2a4
	.long	0x189
	.byte	0x1
	.byte	0x68
	.byte	0x0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x12
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x2c2
	.byte	0x1
	.long	0x3b
	.long	.LFB4
	.long	.LFE4
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x1cd
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.word	0x2c3
	.long	0x3b
	.long	.LLST2
	.uleb128 0x14
	.long	0x94
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.word	0x2f2
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.word	0x33b
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x1f3
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.word	0x33b
	.long	0x3b
	.byte	0x1
	.byte	0x68
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.word	0x31b
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.word	0x316
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x230
	.uleb128 0x17
	.long	.LASF13
	.byte	0x1
	.word	0x316
	.long	0x3b
	.long	.LLST6
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.word	0x340
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x25a
	.uleb128 0x17
	.long	.LASF25
	.byte	0x1
	.word	0x340
	.long	0x3b
	.long	.LLST8
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.word	0x1b9
	.byte	0x1
	.long	0x4d
	.long	.LFB2
	.long	.LFE2
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x3d0
	.uleb128 0x13
	.string	"ch"
	.byte	0x1
	.word	0x1ba
	.long	0x3b
	.long	.LLST10
	.uleb128 0x18
	.long	.LASF16
	.byte	0x1
	.word	0x1c2
	.long	0x54
	.long	.LLST11
	.uleb128 0x18
	.long	.LASF20
	.byte	0x1
	.word	0x1c3
	.long	0x88
	.long	.LLST12
	.uleb128 0x19
	.long	0x9d
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.word	0x200
	.long	0x2d4
	.uleb128 0x1a
	.long	0xab
	.long	.LLST13
	.uleb128 0x14
	.long	0x94
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.word	0x32f
	.byte	0x0
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x0
	.long	0x34e
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x238
	.long	0x3b
	.long	.LLST14
	.uleb128 0x18
	.long	.LASF17
	.byte	0x1
	.word	0x239
	.long	0x11e
	.long	.LLST15
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.word	0x23a
	.long	0x88
	.uleb128 0x1c
	.long	0xb9
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.word	0x27f
	.uleb128 0x1d
	.long	0xeb
	.uleb128 0x1d
	.long	0xdf
	.uleb128 0x1d
	.long	0xd3
	.uleb128 0x1d
	.long	0xc7
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1f
	.long	0xf8
	.long	.LLST16
	.uleb128 0x20
	.long	0x104
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x58
	.uleb128 0x1f
	.long	0x111
	.long	.LLST17
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	.LBB39
	.long	.LBE39
	.long	0x36c
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.word	0x209
	.long	0x46
	.long	.LLST18
	.byte	0x0
	.uleb128 0x21
	.long	.LBB40
	.long	.LBE40
	.long	0x38a
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x225
	.long	0x54
	.long	.LLST19
	.byte	0x0
	.uleb128 0x22
	.long	.LBB42
	.long	.LBE42
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.word	0x285
	.long	0x3b
	.uleb128 0x23
	.long	0x124
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x28c
	.uleb128 0x1d
	.long	0x14a
	.uleb128 0x1d
	.long	0x13e
	.uleb128 0x1d
	.long	0x132
	.uleb128 0x22
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x20
	.long	0x156
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.long	.LASF38
	.byte	0x1
	.byte	0xf0
	.long	0x3e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	optiboot_version
	.uleb128 0x25
	.long	0x5f
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x70
	.word	0x2
	.long	.Ldebug_info0
	.long	0x3e8
	.long	0x162
	.string	"putch"
	.long	0x190
	.string	"getch"
	.long	0x1cd
	.string	"watchdogConfig"
	.long	0x1f3
	.string	"verifySpace"
	.long	0x230
	.string	"appStart"
	.long	0x25a
	.string	"main"
	.long	0x3d0
	.string	"optiboot_version"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB26
	.long	.LBE26
	.long	.LBB41
	.long	.LBE41
	.long	0x0
	.long	0x0
	.long	.LBB27
	.long	.LBE27
	.long	.LBB38
	.long	.LBE38
	.long	0x0
	.long	0x0
	.long	.LBB30
	.long	.LBE30
	.long	.LBB34
	.long	.LBE34
	.long	.LBB29
	.long	.LBE29
	.long	.LBB33
	.long	.LBE33
	.long	0x0
	.long	0x0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB31
	.long	.LBE31
	.long	0x0
	.long	0x0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB9
	.long	.LFE9
	.long	.LFB6
	.long	.LFE6
	.long	.LFB5
	.long	.LFE5
	.long	.LFB10
	.long	.LFE10
	.long	.LFB2
	.long	.LFE2
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"c:/winavr-20100110/lib/gcc/../../avr/include"
	.byte	0
	.byte	0x0
	.string	"optiboot.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x3
	.sleb128 675
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x39
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x4e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0x3
	.sleb128 440
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x3
	.sleb128 305
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x5f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x3
	.sleb128 -406
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM43
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM45
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x3
	.sleb128 273
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0x38
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM57
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM59
	.byte	0x3
	.sleb128 -460
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM60
	.byte	0x3
	.sleb128 464
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM61
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM63
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM64
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM65
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM66
	.byte	0x3
	.sleb128 -280
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM67
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM68
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM69
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM70
	.byte	0x3
	.sleb128 316
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM71
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM72
	.byte	0x3
	.sleb128 -311
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM73
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM77
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM79
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM80
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"watchdogReset"
.LASF19:
	.string	"read_mem"
.LASF28:
	.string	"desttype"
.LASF23:
	.string	"watchdogConfig"
.LASF36:
	.string	"verifySpace"
.LASF15:
	.string	"mybuff"
.LASF13:
	.string	"count"
.LASF12:
	.string	"writebuffer"
.LASF37:
	.string	"getNch"
.LASF0:
	.string	"int8_t"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"putch"
.LASF30:
	.string	"which"
.LASF7:
	.string	"long unsigned int"
.LASF17:
	.string	"bufPtr"
.LASF32:
	.string	"GNU C 4.3.3"
.LASF31:
	.string	"newAddress"
.LASF24:
	.string	"appStart"
.LASF26:
	.string	"getch"
.LASF27:
	.string	"main"
.LASF5:
	.string	"unsigned int"
.LASF16:
	.string	"address"
.LASF9:
	.string	"long long unsigned int"
.LASF1:
	.string	"uint8_t"
.LASF33:
	.string	"optiboot.c"
.LASF29:
	.string	"savelength"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"char"
.LASF11:
	.string	"flash_led"
.LASF10:
	.string	"pagelen_t"
.LASF14:
	.string	"memtype"
.LASF4:
	.string	"uint16_t"
.LASF18:
	.string	"addrPtr"
.LASF38:
	.string	"optiboot_version"
.LASF6:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"C:\\\\Users\\\\ELKA\\\\Documents\\\\GitHub\\\\optiboot128"
.LASF25:
	.string	"rstFlags"
.LASF20:
	.string	"length"
