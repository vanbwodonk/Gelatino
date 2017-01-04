	.file	"optiboot.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.stabs	"/home/drw/Software/builder/Gelatino/bootloaders/optiboot/",100,0,2,.Ltext0
	.stabs	"optiboot.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-32768;32767;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=@s32;r(0,3);020000000000;017777777777;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;0177777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=@s32;r(0,5);0;037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=r(0,9);0;0177777;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);4;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"short _Fract:t(0,15)=r(0,1);1;0;",128,0,0,0
	.stabs	"_Fract:t(0,16)=r(0,1);2;0;",128,0,0,0
	.stabs	"long _Fract:t(0,17)=r(0,1);4;0;",128,0,0,0
	.stabs	"long long _Fract:t(0,18)=r(0,1);8;0;",128,0,0,0
	.stabs	"unsigned short _Fract:t(0,19)=r(0,1);1;0;",128,0,0,0
	.stabs	"unsigned _Fract:t(0,20)=r(0,1);2;0;",128,0,0,0
	.stabs	"unsigned long _Fract:t(0,21)=r(0,1);4;0;",128,0,0,0
	.stabs	"unsigned long long _Fract:t(0,22)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat short _Fract:t(0,23)=r(0,1);1;0;",128,0,0,0
	.stabs	"_Sat _Fract:t(0,24)=r(0,1);2;0;",128,0,0,0
	.stabs	"_Sat long _Fract:t(0,25)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Sat long long _Fract:t(0,26)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat unsigned short _Fract:t(0,27)=r(0,1);1;0;",128,0,0,0
	.stabs	"_Sat unsigned _Fract:t(0,28)=r(0,1);2;0;",128,0,0,0
	.stabs	"_Sat unsigned long _Fract:t(0,29)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Sat unsigned long long _Fract:t(0,30)=r(0,1);8;0;",128,0,0,0
	.stabs	"short _Accum:t(0,31)=r(0,1);2;0;",128,0,0,0
	.stabs	"_Accum:t(0,32)=r(0,1);4;0;",128,0,0,0
	.stabs	"long _Accum:t(0,33)=r(0,1);8;0;",128,0,0,0
	.stabs	"long long _Accum:t(0,34)=r(0,1);8;0;",128,0,0,0
	.stabs	"unsigned short _Accum:t(0,35)=r(0,1);2;0;",128,0,0,0
	.stabs	"unsigned _Accum:t(0,36)=r(0,1);4;0;",128,0,0,0
	.stabs	"unsigned long _Accum:t(0,37)=r(0,1);8;0;",128,0,0,0
	.stabs	"unsigned long long _Accum:t(0,38)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat short _Accum:t(0,39)=r(0,1);2;0;",128,0,0,0
	.stabs	"_Sat _Accum:t(0,40)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Sat long _Accum:t(0,41)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat long long _Accum:t(0,42)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat unsigned short _Accum:t(0,43)=r(0,1);2;0;",128,0,0,0
	.stabs	"_Sat unsigned _Accum:t(0,44)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Sat unsigned long _Accum:t(0,45)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Sat unsigned long long _Accum:t(0,46)=r(0,1);8;0;",128,0,0,0
	.stabs	"void:t(0,47)=(0,47)",128,0,0,0
	.stabs	"/usr/lib/avr/include/inttypes.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/4.9.2/include/stdint.h",130,0,0,0
	.stabs	"/usr/lib/avr/include/stdint.h",130,0,0,0
	.stabs	"int8_t:t(3,1)=(0,10)",128,0,121,0
	.stabs	"uint8_t:t(3,2)=(0,11)",128,0,122,0
	.stabs	"int16_t:t(3,3)=(0,1)",128,0,123,0
	.stabs	"uint16_t:t(3,4)=(0,4)",128,0,124,0
	.stabs	"int32_t:t(3,5)=(0,3)",128,0,125,0
	.stabs	"uint32_t:t(3,6)=(0,5)",128,0,126,0
	.stabs	"int64_t:t(3,7)=(0,6)",128,0,128,0
	.stabs	"uint64_t:t(3,8)=(0,7)",128,0,129,0
	.stabs	"intptr_t:t(3,9)=(3,3)",128,0,142,0
	.stabs	"uintptr_t:t(3,10)=(3,4)",128,0,147,0
	.stabs	"int_least8_t:t(3,11)=(3,1)",128,0,159,0
	.stabs	"uint_least8_t:t(3,12)=(3,2)",128,0,164,0
	.stabs	"int_least16_t:t(3,13)=(3,3)",128,0,169,0
	.stabs	"uint_least16_t:t(3,14)=(3,4)",128,0,174,0
	.stabs	"int_least32_t:t(3,15)=(3,5)",128,0,179,0
	.stabs	"uint_least32_t:t(3,16)=(3,6)",128,0,184,0
	.stabs	"int_least64_t:t(3,17)=(3,7)",128,0,192,0
	.stabs	"uint_least64_t:t(3,18)=(3,8)",128,0,199,0
	.stabs	"int_fast8_t:t(3,19)=(3,1)",128,0,213,0
	.stabs	"uint_fast8_t:t(3,20)=(3,2)",128,0,218,0
	.stabs	"int_fast16_t:t(3,21)=(3,3)",128,0,223,0
	.stabs	"uint_fast16_t:t(3,22)=(3,4)",128,0,228,0
	.stabs	"int_fast32_t:t(3,23)=(3,5)",128,0,233,0
	.stabs	"uint_fast32_t:t(3,24)=(3,6)",128,0,238,0
	.stabs	"int_fast64_t:t(3,25)=(3,7)",128,0,246,0
	.stabs	"uint_fast64_t:t(3,26)=(3,8)",128,0,253,0
	.stabs	"intmax_t:t(3,27)=(3,7)",128,0,273,0
	.stabs	"uintmax_t:t(3,28)=(3,8)",128,0,278,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"int_farptr_t:t(1,1)=(3,5)",128,0,77,0
	.stabs	"uint_farptr_t:t(1,2)=(3,6)",128,0,81,0
	.stabn	162,0,0,0
	.stabs	"/usr/lib/avr/include/avr/io.h",130,0,0,0
	.stabs	"/usr/lib/avr/include/avr/fuse.h",130,0,0,0
	.stabs	"__fuse_t:t(5,1)=(5,2)=s3low:(0,11),0,8;high:(0,11),8,8;extended:(0,11),16,8;;",128,0,244,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/lib/avr/include/avr/pgmspace.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/4.9.2/include/stddef.h",130,0,0,0
	.stabs	"size_t:t(7,1)=(0,4)",128,0,212,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/lib/avr/include/avr/eeprom.h",130,0,0,0
	.stabs	"/usr/lib/gcc/avr/4.9.2/include/stddef.h",130,0,0,0
	.stabs	"ptrdiff_t:t(9,1)=(0,1)",128,0,147,0
	.stabs	"wchar_t:t(9,2)=(0,1)",128,0,324,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"pagelen_t:t(0,48)=(3,4)",128,0,335,0
	.stabs	"putch:F(0,47)",36,0,681,putch
	.stabs	"ch:P(0,2)",64,0,681,24
.global	putch
	.type	putch, @function
putch:
	.stabd	46,0,0
	.stabn	68,0,681,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L2:
	.stabn	68,0,683,.LM1-.LFBB1
.LM1:
	lds r25,192
	sbrs r25,5
	rjmp .L2
	.stabn	68,0,684,.LM2-.LFBB1
.LM2:
	sts 198,r24
	ret
	.size	putch, .-putch
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.stabs	"getch:F(3,2)",36,0,711,getch
.global	getch
	.type	getch, @function
getch:
	.stabd	46,0,0
	.stabn	68,0,711,.LM3-.LFBB2
.LM3:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L7:
	.stabn	68,0,748,.LM4-.LFBB2
.LM4:
	lds r24,192
	sbrs r24,7
	rjmp .L7
	.stabn	68,0,750,.LM5-.LFBB2
.LM5:
	lds r24,192
	sbrc r24,4
	rjmp .L8
.LBB6:
.LBB7:
	.stabn	68,0,827,.LM6-.LFBB2
.LM6:
/* #APP */
 ;  827 "optiboot.c" 1
	wdr

 ;  0 "" 2
/* #NOAPP */
.L8:
.LBE7:
.LBE6:
	.stabn	68,0,762,.LM7-.LFBB2
.LM7:
	lds r24,198
	.stabn	68,0,774,.LM8-.LFBB2
.LM8:
	ret
	.size	getch, .-getch
	.stabs	"ch:r(3,2)",64,0,712,24
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.stabs	"watchdogConfig:F(0,47)",36,0,832,watchdogConfig
	.stabs	"x:P(3,2)",64,0,832,24
.global	watchdogConfig
	.type	watchdogConfig, @function
watchdogConfig:
	.stabd	46,0,0
	.stabn	68,0,832,.LM9-.LFBB3
.LM9:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,833,.LM10-.LFBB3
.LM10:
	ldi r30,lo8(96)
	ldi r31,0
	ldi r25,lo8(24)
	st Z,r25
	.stabn	68,0,834,.LM11-.LFBB3
.LM11:
	st Z,r24
	ret
	.size	watchdogConfig, .-watchdogConfig
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.stabs	"verifySpace:F(0,47)",36,0,800,verifySpace
.global	verifySpace
	.type	verifySpace, @function
verifySpace:
	.stabd	46,0,0
	.stabn	68,0,800,.LM12-.LFBB4
.LM12:
.LFBB4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,801,.LM13-.LFBB4
.LM13:
	call getch
	cpi r24,lo8(32)
	breq .L12
	.stabn	68,0,802,.LM14-.LFBB4
.LM14:
	ldi r24,lo8(8)
	call watchdogConfig
.L13:
	.stabn	68,0,804,.LM15-.LFBB4
.LM15:
	rjmp .L13
.L12:
	.stabn	68,0,806,.LM16-.LFBB4
.LM16:
	ldi r24,lo8(20)
	jmp putch
	.size	verifySpace, .-verifySpace
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.stabs	"getNch:f(0,47)",36,0,795,getNch
	.stabs	"count:P(3,2)",64,0,795,28
	.type	getNch, @function
getNch:
	.stabd	46,0,0
	.stabn	68,0,795,.LM17-.LFBB5
.LM17:
.LFBB5:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.L15:
	.stabn	68,0,796,.LM18-.LFBB5
.LM18:
	call getch
	subi r28,lo8(-(-1))
	brne .L15
/* epilogue start */
	.stabn	68,0,798,.LM19-.LFBB5
.LM19:
	pop r28
	.stabn	68,0,797,.LM20-.LFBB5
.LM20:
	jmp verifySpace
	.size	getNch, .-getNch
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.stabs	"appStart:F(0,47)",36,0,837,appStart
	.stabs	"rstFlags:P(3,2)",64,0,837,24
.global	appStart
	.type	appStart, @function
appStart:
	.stabd	46,0,0
	.stabn	68,0,837,.LM21-.LFBB6
.LM21:
.LFBB6:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,841,.LM22-.LFBB6
.LM22:
/* #APP */
 ;  841 "optiboot.c" 1
	mov r2, r24

 ;  0 "" 2
	.stabn	68,0,843,.LM23-.LFBB6
.LM23:
/* #NOAPP */
	ldi r24,0
	call watchdogConfig
	.stabn	68,0,846,.LM24-.LFBB6
.LM24:
/* #APP */
 ;  846 "optiboot.c" 1
	ldi r30,0
clr r31
ijmp

 ;  0 "" 2
/* epilogue start */
	.stabn	68,0,852,.LM25-.LFBB6
.LM25:
/* #NOAPP */
	.size	appStart, .-appStart
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.section	.init9,"ax",@progbits
	.stabs	"main:F(0,1)",36,0,441,main
.global	main
	.type	main, @function
main:
	.stabd	46,0,0
	.stabn	68,0,441,.LM26-.LFBB7
.LM26:
.LFBB7:
	push __zero_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 1 */
.L__stack_usage = 1
	.stabn	68,0,462,.LM27-.LFBB7
.LM27:
/* #APP */
 ;  462 "optiboot.c" 1
	clr __zero_reg__
 ;  0 "" 2
	.stabn	68,0,477,.LM28-.LFBB7
.LM28:
/* #NOAPP */
	in r24,0x34
	.stabn	68,0,478,.LM29-.LFBB7
.LM29:
	out 0x34,__zero_reg__
	.stabn	68,0,480,.LM30-.LFBB7
.LM30:
	mov r25,r24
	andi r25,lo8(13)
	breq .L19
	.stabn	68,0,481,.LM31-.LFBB7
.LM31:
	call appStart
.L19:
	.stabn	68,0,485,.LM32-.LFBB7
.LM32:
	ldi r24,lo8(5)
	sts 129,r24
	.stabn	68,0,495,.LM33-.LFBB7
.LM33:
	ldi r24,lo8(2)
	sts 192,r24
	.stabn	68,0,496,.LM34-.LFBB7
.LM34:
	ldi r24,lo8(24)
	sts 193,r24
	.stabn	68,0,497,.LM35-.LFBB7
.LM35:
	ldi r24,lo8(6)
	sts 194,r24
	.stabn	68,0,498,.LM36-.LFBB7
.LM36:
	ldi r24,lo8(12)
	sts 196,r24
	.stabn	68,0,503,.LM37-.LFBB7
.LM37:
	ldi r24,lo8(14)
	call watchdogConfig
	.stabn	68,0,507,.LM38-.LFBB7
.LM38:
	sbi 0x4,0
	ldi r24,lo8(6)
.LBB22:
.LBB23:
	.stabn	68,0,812,.LM39-.LFBB7
.LM39:
	ldi r18,lo8(36)
	ldi r19,lo8(-3)
	.stabn	68,0,813,.LM40-.LFBB7
.LM40:
	ldi r25,lo8(1)
.L21:
	.stabn	68,0,812,.LM41-.LFBB7
.LM41:
	sts 132+1,r19
	sts 132,r18
	.stabn	68,0,813,.LM42-.LFBB7
.LM42:
	out 0x16,r25
.L20:
	.stabn	68,0,814,.LM43-.LFBB7
.LM43:
	sbis 0x16,0
	rjmp .L20
	.stabn	68,0,818,.LM44-.LFBB7
.LM44:
	sbi 0x3,0
.LBB24:
.LBB25:
	.stabn	68,0,827,.LM45-.LFBB7
.LM45:
/* #APP */
 ;  827 "optiboot.c" 1
	wdr

 ;  0 "" 2
/* #NOAPP */
	subi r24,lo8(-(-1))
.LBE25:
.LBE24:
	.stabn	68,0,821,.LM46-.LFBB7
.LM46:
	brne .L21
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.LBE23:
.LBE22:
.LBB26:
.LBB27:
.LBB28:
.LBB29:
	.stabn	68,0,896,.LM47-.LFBB7
.LM47:
	ldi r20,lo8(3)
	mov r15,r20
.LBB30:
	.stabn	68,0,910,.LM48-.LFBB7
.LM48:
	clr r14
	inc r14
.LBE30:
	.stabn	68,0,929,.LM49-.LFBB7
.LM49:
	ldi r21,lo8(17)
	mov r13,r21
.L46:
.LBE29:
.LBE28:
.LBE27:
.LBE26:
	.stabn	68,0,523,.LM50-.LFBB7
.LM50:
	call getch
	.stabn	68,0,525,.LM51-.LFBB7
.LM51:
	cpi r24,lo8(65)
	brne .L22
.LBB35:
	.stabn	68,0,526,.LM52-.LFBB7
.LM52:
	call getch
	.stabn	68,0,527,.LM53-.LFBB7
.LM53:
	std Y+1,r24
	call verifySpace
	.stabn	68,0,532,.LM54-.LFBB7
.LM54:
	ldd r24,Y+1
	cpi r24,lo8(-126)
	brne .L23
	.stabn	68,0,533,.LM55-.LFBB7
.LM55:
	ldi r24,lo8(2)
	rjmp .L61
.L23:
	.stabn	68,0,534,.LM56-.LFBB7
.LM56:
	cpi r24,lo8(-127)
	brne .L25
	.stabn	68,0,535,.LM57-.LFBB7
.LM57:
	ldi r24,lo8(6)
	rjmp .L61
.L25:
	.stabn	68,0,541,.LM58-.LFBB7
.LM58:
	ldi r24,lo8(3)
.L61:
	call putch
	rjmp .L24
.L22:
.LBE35:
	.stabn	68,0,544,.LM59-.LFBB7
.LM59:
	cpi r24,lo8(66)
	brne .L26
	.stabn	68,0,546,.LM60-.LFBB7
.LM60:
	ldi r24,lo8(20)
	rjmp .L62
.L26:
	.stabn	68,0,548,.LM61-.LFBB7
.LM61:
	cpi r24,lo8(69)
	brne .L27
	.stabn	68,0,550,.LM62-.LFBB7
.LM62:
	ldi r24,lo8(5)
.L62:
	call getNch
	rjmp .L24
.L27:
	.stabn	68,0,552,.LM63-.LFBB7
.LM63:
	cpi r24,lo8(85)
	brne .L28
.LBB36:
	.stabn	68,0,555,.LM64-.LFBB7
.LM64:
	call getch
	mov r17,r24
	.stabn	68,0,556,.LM65-.LFBB7
.LM65:
	call getch
	mov r6,r17
	mov r7,__zero_reg__
	or r7,r24
	.stabn	68,0,559,.LM66-.LFBB7
.LM66:
	mov r24,r7
	rol r24
	clr r24
	rol r24
	out __RAMPZ__,r24
	.stabn	68,0,561,.LM67-.LFBB7
.LM67:
	lsl r6
	rol r7
	rjmp .L45
.L28:
.LBE36:
	.stabn	68,0,565,.LM68-.LFBB7
.LM68:
	cpi r24,lo8(86)
	brne .L29
	.stabn	68,0,567,.LM69-.LFBB7
.LM69:
	ldi r24,lo8(4)
	call getNch
	.stabn	68,0,568,.LM70-.LFBB7
.LM70:
	ldi r24,0
	rjmp .L61
.L29:
	.stabn	68,0,571,.LM71-.LFBB7
.LM71:
	cpi r24,lo8(100)
	breq .+2
	rjmp .L30
.LBB37:
	.stabn	68,0,577,.LM72-.LFBB7
.LM72:
	call getch
	mov r16,r24
	ldi r17,0
	mov r17,r16
	clr r16
	call getch
	or r16,r24
	.stabn	68,0,579,.LM73-.LFBB7
.LM73:
	call getch
	mov r12,r24
	.stabn	68,0,577,.LM74-.LFBB7
.LM74:
	movw r10,r16
	.stabn	68,0,579,.LM75-.LFBB7
.LM75:
	mov r8,__zero_reg__
	clr r9
	inc r9
.L31:
	.stabn	68,0,583,.LM76-.LFBB7
.LM76:
	call getch
	movw r30,r8
	st Z+,r24
	movw r8,r30
	.stabn	68,0,584,.LM77-.LFBB7
.LM77:
	ldi r31,1
	sub r10,r31
	sbc r11,__zero_reg__
	brne .L31
	.stabn	68,0,587,.LM78-.LFBB7
.LM78:
	call verifySpace
.LBB34:
.LBB33:
	.stabn	68,0,860,.LM79-.LFBB7
.LM79:
	ldi r24,lo8(69)
	cpse r12,r24
	rjmp .L59
	movw r8,r16
	inc r9
	movw r10,r6
	ldi r16,0
	ldi r17,lo8(1)
.L34:
	.stabn	68,0,863,.LM80-.LFBB7
.LM80:
	cp r16,r8
	cpc r17,r9
	brne .+2
	rjmp .L24
	.stabn	68,0,864,.LM81-.LFBB7
.LM81:
	movw r30,r16
	ld r22,Z+
	movw r16,r30
	movw r24,r10
	call eeprom_write_byte
	ldi r31,-1
	sub r10,r31
	sbc r11,r31
	rjmp .L34
.L59:
.LBB32:
	.stabn	68,0,896,.LM82-.LFBB7
.LM82:
	movw r30,r6
/* #APP */
 ;  896 "optiboot.c" 1
	out 55, r15
	spm
	
 ;  0 "" 2
/* #NOAPP */
.L36:
	.stabn	68,0,898,.LM83-.LFBB7
.LM83:
	in __tmp_reg__,0x37
	sbrc __tmp_reg__,0
	rjmp .L36
	ldi r24,0
	ldi r25,0
.L37:
	movw r30,r24
	inc r31
.LBB31:
	.stabn	68,0,905,.LM84-.LFBB7
.LM84:
	ld r18,Z
	movw r30,r24
	add r30,r6
	adc r31,r7
	movw r26,r24
	subi r26,-1
	sbci r27,-2
	.stabn	68,0,906,.LM85-.LFBB7
.LM85:
	ld r20,X
	ldi r19,0
	or r19,r20
	.stabn	68,0,910,.LM86-.LFBB7
.LM86:
/* #APP */
 ;  910 "optiboot.c" 1
	movw  r0, r18
	out 55, r14
	spm
	clr  r1
	
 ;  0 "" 2
/* #NOAPP */
	adiw r24,2
.LBE31:
	.stabn	68,0,913,.LM87-.LFBB7
.LM87:
	cp r16,r24
	cpc r17,r25
	brne .L37
	.stabn	68,0,921,.LM88-.LFBB7
.LM88:
	ldi r24,lo8(5)
	movw r30,r6
/* #APP */
 ;  921 "optiboot.c" 1
	out 55, r24
	spm
	
 ;  0 "" 2
/* #NOAPP */
.L38:
	.stabn	68,0,923,.LM89-.LFBB7
.LM89:
	in __tmp_reg__,0x37
	sbrc __tmp_reg__,0
	rjmp .L38
	.stabn	68,0,929,.LM90-.LFBB7
.LM90:
/* #APP */
 ;  929 "optiboot.c" 1
	out 55, r13
	spm
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L24
.L30:
.LBE32:
.LBE33:
.LBE34:
.LBE37:
	.stabn	68,0,649,.LM91-.LFBB7
.LM91:
	cpi r24,lo8(116)
	brne .L39
.LBB38:
	.stabn	68,0,651,.LM92-.LFBB7
.LM92:
	call getch
	mov r16,r24
	ldi r17,0
	mov r17,r16
	clr r16
	call getch
	or r16,r24
	.stabn	68,0,653,.LM93-.LFBB7
.LM93:
	call getch
	.stabn	68,0,655,.LM94-.LFBB7
.LM94:
	std Y+1,r24
	call verifySpace
.LBB39:
.LBB40:
	.stabn	68,0,941,.LM95-.LFBB7
.LM95:
	ldd r24,Y+1
	movw r10,r6
	cpi r24,lo8(69)
	brne .L43
.L42:
	.stabn	68,0,946,.LM96-.LFBB7
.LM96:
	movw r24,r10
	call eeprom_read_byte
	call putch
	.stabn	68,0,947,.LM97-.LFBB7
.LM97:
	subi r16,1
	sbc r17,__zero_reg__
	ldi r31,-1
	sub r10,r31
	sbc r11,r31
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L42
	rjmp .L24
.L43:
	.stabn	68,0,971,.LM98-.LFBB7
.LM98:
	movw r30,r10
/* #APP */
 ;  966 "optiboot.c" 1
	elpm r24,Z+

 ;  0 "" 2
/* #NOAPP */
	movw r10,r30
	call putch
	.stabn	68,0,972,.LM99-.LFBB7
.LM99:
	subi r16,1
	sbc r17,__zero_reg__
	brne .L43
	rjmp .L24
.L39:
.LBE40:
.LBE39:
.LBE38:
	.stabn	68,0,661,.LM100-.LFBB7
.LM100:
	cpi r24,lo8(117)
	brne .L44
	.stabn	68,0,663,.LM101-.LFBB7
.LM101:
	call verifySpace
	.stabn	68,0,664,.LM102-.LFBB7
.LM102:
	ldi r24,lo8(30)
	call putch
	.stabn	68,0,665,.LM103-.LFBB7
.LM103:
	ldi r24,lo8(-105)
	call putch
	.stabn	68,0,666,.LM104-.LFBB7
.LM104:
	ldi r24,lo8(5)
	rjmp .L61
.L44:
	.stabn	68,0,668,.LM105-.LFBB7
.LM105:
	cpi r24,lo8(81)
	brne .L45
	.stabn	68,0,670,.LM106-.LFBB7
.LM106:
	ldi r24,lo8(8)
	call watchdogConfig
.L45:
	.stabn	68,0,675,.LM107-.LFBB7
.LM107:
	call verifySpace
.L24:
	.stabn	68,0,677,.LM108-.LFBB7
.LM108:
	ldi r24,lo8(16)
	call putch
	.stabn	68,0,678,.LM109-.LFBB7
.LM109:
	rjmp .L46
	.size	main, .-main
	.stabs	"desttype:r(3,2)",64,0,573,12
	.stabn	192,0,0,.LBB26-.LFBB7
	.stabn	224,0,0,.LBE26-.LFBB7
	.stabs	"which:r(0,11)",64,0,526,24
	.stabn	192,0,0,.LBB35-.LFBB7
	.stabn	224,0,0,.LBE35-.LFBB7
	.stabs	"newAddress:r(3,4)",64,0,554,6
	.stabn	192,0,0,.LBB36-.LFBB7
	.stabn	224,0,0,.LBE36-.LFBB7
	.stabs	"desttype:r(3,2)",64,0,573,12
	.stabn	192,0,0,.LBB37-.LFBB7
	.stabn	224,0,0,.LBE37-.LFBB7
	.stabs	"desttype:r(3,2)",64,0,650,24
	.stabn	192,0,0,.LBB38-.LFBB7
	.stabn	224,0,0,.LBE38-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
.global	optiboot_version
	.section	.version,"a",@progbits
	.type	optiboot_version, @object
	.size	optiboot_version, 2
optiboot_version:
	.word	1538
	.stabs	"optiboot_version:G(0,49)=k(0,4)",32,0,240,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.9.2"
