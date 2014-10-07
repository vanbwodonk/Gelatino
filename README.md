# Gelatino #

Other Arduino Compatible Project

Gelatino is Arduino Compatible development kit, Free and Open Source. 
Gelatino built from another AVR 8-bit besides Arduino mostly used. 
Gelatino now is suported ATmega128 ,ATmega16 and ATmega32

http://code.google.com/p/gelatino/

## Variants ##

Gelatino have 3 variants:
- Gelatino16 with ATmega16 ( http://code.google.com/p/gelatino/wiki/Gelatino16 )
- Gelatino32 with ATmega32 ( http://code.google.com/p/gelatino/wiki/Gelatino32 )
- Gelatino128 with ATmega128 ( http://code.google.com/p/gelatino/wiki/Gelatino128 ) 

Gelatino's schematic is like other arduino standard. Gelatino using 16 Mhz Xtal. 
For using bootloader we need to set correct fusebit like above,

## Gelatino Pin ##

ATmega16/ATmega32

![alt tag](http://imageshack.us/a/img856/2953/fn6o.jpg)

ATmega128

![alt tag](http://img69.imageshack.us/img69/1520/tanh.jpg)

PIN	|Gelatino PIN	|Special Pin
:-- | :--: 			| --:
PE0	|0				|USART0_RX
PE1	|1				|USART0_TX
PE2	|2				|
PE3	|3				|PWM
PE4	|4				|PWM
PE5	|5				|PWM
PE6	|6				|
PE7	|7				|
PB0	|8				|SPI_SS
PB1	|9				|SPI_SCK
PB2	|10				|SPI_MOSI
PB3	|11				|SPI_MISO
PB4	|12				|PWM
PB5	|13				|PWM
PB6	|14				|PWM
PB7	|15				|PWM
PG3	|16				|
PG4	|17				|
PD0	|18				|I2C_SCL
PD1	|19				|I2C_SDA
PD2	|20				|USART1_RX
PD3	|21				|USART1_RX
PD4	|22				|
PD5	|23				|
PD6	|24				|
PD7	|25				|
PG0	|26				|
PG1	|27				|
PC0	|28				|
PC1	|29				|
PC2	|30				|
PC3	|31				|
PC4	|32				|
PC5	|33				|
PC6	|34				|
PC7	|35				|
PG2	|36				|
PA7	|37				|
PA6	|38				|
PA5	|39				|
PA4	|40				|
PA3	|41				|
PA2	|42				|
PA1	|43				|
PA0	|44				|
PF0	|45/A0			|ADC
PF1	|46/A1			|ADC
PF2	|47/A2			|ADC
PF3	|48/A3			|ADC
PF4	|49/A4			|ADC
PF5	|50/A5			|ADC
PF6	|51/A6			|ADC
PF7	|52/A7			|ADC

## Fusebit Setting ##

Gelatino16
- low_fuses=0xFF
- high_fuses=0xD8

Gelatino32
- low_fuses=0xFF
- high_fuses=0xDA

Gelatino128
- low_fuses=0xFF
- high_fuses=0xCA
- extended_fuses=0xFF


Then burn correct bootloader in the bootloader Folder.

## Contact me ##

If you have questions to ask me personally, feel free to contact me via email or maybe via hangout if i'm online
arif.pens@gmail.com
