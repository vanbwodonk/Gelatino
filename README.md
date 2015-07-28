# Gelatino #

Other Arduino Compatible Core Project

Gelatino is Arduino core for another AVR 8-bit besides Arduino mostly used. 
Gelatino now is suported ATmega128 ,ATmega16, ,ATmega162 and ATmega32
Download this patch and copy hardware folder, paste and overwrite in /Arduino 1.6.4/hardware

## Variants ##

Gelatino have 3 variants:
- Gelatino16  with ATmega16
- Gelatino162 with ATmega162
- Gelatino32  with ATmega32
- Gelatino128 with ATmega128

## Gelatino ATmega16/ATmega32 Pinlist ##

PIN	|Gelatino PIN	|Peripheral Pin
:-- | :--: 			| --:
PB0	|0				|
PB1	|1				|
PB2	|2				|
PB3	|3				|PWM|
PB4	|4				|SPI_SS|
PB5	|5				|SPI_MOSI|
PB6	|6				|SPI_MISO|
PB7	|7				|SPI_SCK|
PD0	|8				|USART_RX|
PD1	|9				|USART_TX|
PD2	|10				|
PD3	|11				|
PD4	|12				|PWM|
PD5	|13				|PWM|
PD6	|14				|
PD7	|15				|PWM
PC0	|16				|I2C_SCL
PC1	|17				|I2C_SDA
PC2	|18				|
PC3	|19				|
PC4	|20				|
PC5	|21				|
PC6	|22				|
PC7	|23				|
PA7	|24/A7			|ADC
PA6	|25/A6			|ADC
PA5	|26/A5			|ADC
PA4	|27/A4			|ADC
PA3	|28/A3			|ADC
PA2	|29/A2			|ADC
PA1	|30/A1			|ADC
PA0	|31/A0			|ADC

## Gelatino ATmega128 Pinlist ##

PIN	|Gelatino PIN	|Peripheral Pin
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

Gelatino's schematic is like arduino duemilanove, upload firmware via FTDI. Gelatino using 16 Mhz Xtal. 
For using bootloader we need to set correct fusebit like above,

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
