/*
  pins_arduino.h - Pin definition functions for Arduino
  Part of Arduino - http://www.arduino.cc/

  Copyright (c) 2007 David A. Mellis

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General
  Public License along with this library; if not, write to the
  Free Software Foundation, Inc., 59 Temple Place, Suite 330,
  Boston, MA  02111-1307  USA

  $Id: wiring.h 249 2007-02-03 16:52:51Z mellis $
*/

#ifndef Pins_Arduino_h
#define Pins_Arduino_h

#include <avr/pgmspace.h>

#define NUM_DIGITAL_PINS            53
#define NUM_ANALOG_INPUTS           8
#define analogInputToDigitalPin(p)  ((p < 8) ? (p) + 45 : -1)
#define digitalPinHasPWM(p)         (((p) >= 3 && (p) <= 6) || ((p) >= 12 && (p)<= 15))

static const uint8_t SS   = 8;
static const uint8_t MOSI = 10;
static const uint8_t MISO = 11;
static const uint8_t SCK  = 9;

static const uint8_t SDA = 19;
static const uint8_t SCL = 18;
static const uint8_t LED_BUILTIN = 13;

static const uint8_t A0 = 45;
static const uint8_t A1 = 46;
static const uint8_t A2 = 47;
static const uint8_t A3 = 48;
static const uint8_t A4 = 49;
static const uint8_t A5 = 50;
static const uint8_t A6 = 51;
static const uint8_t A7 = 52;

// A majority of the pins are NOT PCINTs, SO BE WARNED (i.e. you cannot use them as receive pins)
// Only pins available for RECEIVE (TRANSMIT can be on any pin):
// (I've deliberately left out pin mapping to the Hardware USARTs - seems senseless to me)
// E. Lins: changed this stuff to match the ATmega128, but it doesn't have PCINTs at all
// I eventually added the regular external interrupt stuff, but this has to be adapted in the core code
// Pins: 4, 5, 6, 7, 18, 19, 20, 21

#define digitalPinToPCICR(p)    ( (((p) >= 4) && ((p) <= 7)) ? (&EICRB) : \
                                  (((p) >= 18) && ((p) <= 21)) ? (&EICRA) : ((uint8_t *)0) )

#define digitalPinToPCICRbit(p) ( (((p) >= 4) && ((p) <= 7)) || (((p) >= 18) && ((p) <= 21)) ? 0 : 0 ) )

#define digitalPinToPCMSK(p)    ( (((p) >= 4) && ((p) <= 7)) || (((p) >= 18) && ((p) <= 21)) ? (&EIMSK) : \
                                ((uint8_t *)0) ) )

#define digitalPinToPCMSKbit(p) ( (((p) >= 4) && ((p) <= 7)) ? ((p)) : \
                                ( (((p) >= 18) && ((p) <= 21))) ? ((p - 18)) : \
                                0 )

#ifdef ARDUINO_MAIN

const uint16_t PROGMEM port_to_mode_PGM[] = {
	NOT_A_PORT,
	(uint16_t) &DDRA,
	(uint16_t) &DDRB,
	(uint16_t) &DDRC,
	(uint16_t) &DDRD,
	(uint16_t) &DDRE,
	(uint16_t) &DDRF,
	(uint16_t) &DDRG,
};

const uint16_t PROGMEM port_to_output_PGM[] = {
	NOT_A_PORT,
	(uint16_t) &PORTA,
	(uint16_t) &PORTB,
	(uint16_t) &PORTC,
	(uint16_t) &PORTD,
	(uint16_t) &PORTE,
	(uint16_t) &PORTF,
	(uint16_t) &PORTG,
};

const uint16_t PROGMEM port_to_input_PGM[] = {
	NOT_A_PIN,
	(uint16_t) &PINA,
	(uint16_t) &PINB,
	(uint16_t) &PINC,
	(uint16_t) &PIND,
	(uint16_t) &PINE,
	(uint16_t) &PINF,
	(uint16_t) &PING,
};

const uint8_t PROGMEM digital_pin_to_port_PGM[] = {
	// PORTLIST		
	// -------------------------------------------		
	PE	, // PE 0 ->  0 -> USART0_RX	
	PE	, // PE 1 ->  1 -> USART0_TX	
	PE	, // PE 2 ->  2 
	PE	, // PE 3 ->  3 -> PWM3
	PE	, // PE 4 ->  4 -> PWM4	-> INT4
	PE	, // PE 5 ->  5 -> PWM5	-> INT5
	PE	, // PE 6 ->  6 		-> INT6		
	PE	, // PE 7 ->  7 		-> INT7
	PB	, // PB 0 ->  8 -> SPI_SS
	PB	, // PB 1 ->  9 -> SPI_SCK
	PB	, // PB 2 -> 10 -> SPI_MOSI
	PB	, // PB 3 -> 11 -> SPI_MISO
	PB	, // PB 4 -> 12 -> PWM12
	PB	, // PB 5 -> 13 -> PWM13
	PB	, // PB 6 -> 14 -> PWM14
	PB	, // PB 7 -> 15 -> PWM15	
	PG	, // PG 3 -> 16
	PG	, // PG 4 -> 17 
	PD	, // PD 0 -> 18 -> I2C_SCL	-> INT0
	PD	, // PD 1 -> 19 -> I2C_SDA	-> INT1		
	PD	, // PD 2 -> 20 -> USART1_RX-> INT2
	PD	, // PD 3 -> 21 -> USART2_TX-> INT3
	PD	, // PD 4 -> 22 
	PD	, // PD 5 -> 23 
	PD	, // PD 6 -> 24 
	PD	, // PD 7 -> 25 
	PG	, // PG 0 -> 26 
	PG	, // PG 1 -> 27 
	PC	, // PC 0 -> 28 
	PC	, // PC 1 -> 29 
	PC	, // PC 2 -> 30 
	PC	, // PC 3 -> 31 
	PC	, // PC 4 -> 32 
	PC	, // PC 5 -> 33 
	PC	, // PC 6 -> 34 
	PC	, // PC 7 -> 35 
	PG	, // PG 2 -> 36 
	PA	, // PA 7 -> 37 
	PA	, // PA 6 -> 38 
	PA	, // PA 5 -> 39 
	PA	, // PA 4 -> 40 
	PA	, // PA 3 -> 41 
	PA	, // PA 2 -> 42 
	PA	, // PA 1 -> 43
	PA	, // PA 0 -> 44 
	PF	, // PF 0 -> 45 -> Analog0
	PF	, // PF 1 -> 46 -> Analog1
	PF	, // PF 2 -> 47 -> Analog2
	PF	, // PF 3 -> 48 -> Analog3
	PF	, // PF 4 -> 49 -> Analog4
	PF	, // PF 5 -> 50 -> Analog5
	PF	, // PF 6 -> 51 -> Analog6
	PF	, // PF 7 -> 52 -> Analog7
};

const uint8_t PROGMEM digital_pin_to_bit_mask_PGM[] = {
	// PIN IN PORT		
	// -------------------------------------------		
	_BV( 0 )	, // PE 0 ->  0 -> USART0_RX	
	_BV( 1 )	, // PE 1 ->  1 -> USART0_TX	
	_BV( 2 )	, // PE 2 ->  2 
	_BV( 3 )	, // PE 3 ->  3 -> PWM3
	_BV( 4 )	, // PE 4 ->  4 -> PWM4
	_BV( 5 )	, // PE 5 ->  5 -> PWM5
	_BV( 6 )	, // PE 6 ->  6
	_BV( 7 )	, // PE 7 ->  7 
	_BV( 0 )	, // PB 0 ->  8 -> SPI_SS
	_BV( 1 )	, // PB 1 ->  9 -> SPI_SCK
	_BV( 2 )	, // PB 2 -> 10 -> SPI_MOSI
	_BV( 3 )	, // PB 3 -> 11 -> SPI_MISO
	_BV( 4 )	, // PB 4 -> 12 -> PWM12
	_BV( 5 )	, // PB 5 -> 13 -> PWM13
	_BV( 6 )	, // PB 6 -> 14 -> PWM14
	_BV( 7 )	, // PB 7 -> 15 -> PWM15
	_BV( 3 )	, // PG 3 -> 16 
	_BV( 4 )	, // PG 4 -> 17 
	_BV( 0 )	, // PD 0 -> 18 -> I2C_SCL
	_BV( 1 )	, // PD 1 -> 19 -> I2C_SDA
	_BV( 2 )	, // PD 2 -> 20 -> USART1_RX
	_BV( 3 )	, // PD 3 -> 21 -> USART2_TX
	_BV( 4 )	, // PD 4 -> 22 
	_BV( 5 )	, // PD 5 -> 23 
	_BV( 6 )	, // PD 6 -> 24 
	_BV( 7 )	, // PD 7 -> 25 
	_BV( 0 )	, // PG 0 -> 26 
	_BV( 1 )	, // PG 1 -> 27
	_BV( 0 )	, // PC 0 -> 28 
	_BV( 1 )	, // PC 1 -> 29 
	_BV( 2 )	, // PC 2 -> 30 
	_BV( 3 )	, // PC 3 -> 31 
	_BV( 4 )	, // PC 4 -> 32 
	_BV( 5 )	, // PC 5 -> 33
	_BV( 6 )	, // PC 6 -> 34 
	_BV( 7 )	, // PC 7 -> 35
	_BV( 2 )	, // PG 2 -> 36 
	_BV( 7 )	, // PA 7 -> 37
	_BV( 6 )	, // PA 6 -> 38 
	_BV( 5 )	, // PA 5 -> 39 
	_BV( 4 )	, // PA 4 -> 40 
	_BV( 3 )	, // PA 3 -> 41 
	_BV( 2 )	, // PA 2 -> 42 
	_BV( 1 )	, // PA 1 -> 43 
	_BV( 0 )	, // PA 0 -> 44
	_BV( 0 )	, // PF 0 -> 45 -> Analog0
	_BV( 1 )	, // PF 1 -> 46 -> Analog1
	_BV( 2 )	, // PF 2 -> 47 -> Analog2
	_BV( 3 )	, // PF 3 -> 48 -> Analog3
	_BV( 4 )	, // PF 4 -> 49 -> Analog4
	_BV( 5 )	, // PF 5 -> 50 -> Analog5
	_BV( 6 )	, // PF 6 -> 51 -> Analog6
	_BV( 7 )	, // PF 7 -> 52 -> Analog7
};

const uint8_t PROGMEM digital_pin_to_timer_PGM[] = {
	// TIMERS		
	// -------------------------------------------		
	NOT_ON_TIMER	, // PE 0 ->  0 -> USART0_RX	
	NOT_ON_TIMER	, // PE 1 ->  1 -> USART0_TX	
	NOT_ON_TIMER	, // PE 2 ->  2 
	TIMER3A			, // PE 3 ->  3 -> PWM3
	TIMER3B			, // PE 4 ->  4 -> PWM4
	TIMER3C			, // PE 5 ->  5 -> PWM5
	NOT_ON_TIMER	, // PE 6 ->  6 
	NOT_ON_TIMER	, // PE 7 ->  7 
	NOT_ON_TIMER	, // PB 0 ->  8 -> SPI_SS
	NOT_ON_TIMER	, // PB 1 ->  9 -> SPI_SCK
	NOT_ON_TIMER	, // PB 2 -> 10 -> SPI_MOSI
	NOT_ON_TIMER	, // PB 3 -> 11 -> SPI_MISO
	TIMER0A			, // PB 4 -> 12 -> PWM12
	TIMER1A			, // PB 5 -> 13 -> PWM13
	TIMER1B			, // PB 6 -> 14 -> PWM14
	TIMER2			, // PB 7 -> 15 -> PWM15
	NOT_ON_TIMER	, // PG 0 -> 16 -> I2C_SCL
	NOT_ON_TIMER	, // PG 3 -> 17 
	NOT_ON_TIMER	, // PG 4 -> 18 
	NOT_ON_TIMER	, // PD 1 -> 19 -> I2C_SDA
	NOT_ON_TIMER	, // PD 2 -> 20 -> USART1_RX
	NOT_ON_TIMER	, // PD 3 -> 21 -> USART2_TX
	NOT_ON_TIMER	, // PD 4 -> 22 
	NOT_ON_TIMER	, // PD 5 -> 23 
	NOT_ON_TIMER	, // PD 6 -> 24 
	NOT_ON_TIMER	, // PD 7 -> 25 
	NOT_ON_TIMER	, // PG 0 -> 26
	NOT_ON_TIMER	, // PG 1 -> 27 
	NOT_ON_TIMER	, // PC 0 -> 28 
	NOT_ON_TIMER	, // PC 1 -> 29 
	NOT_ON_TIMER	, // PC 2 -> 30 
	NOT_ON_TIMER	, // PC 3 -> 31 
	NOT_ON_TIMER	, // PC 4 -> 32 
	NOT_ON_TIMER	, // PC 5 -> 33 
	NOT_ON_TIMER	, // PC 6 -> 34 
	NOT_ON_TIMER	, // PC 7 -> 35 
	NOT_ON_TIMER	, // PG 2 -> 36 
	NOT_ON_TIMER	, // PA 7 -> 37 
	NOT_ON_TIMER	, // PA 6 -> 38 
	NOT_ON_TIMER	, // PA 5 -> 39
	NOT_ON_TIMER	, // PA 4 -> 40 
	NOT_ON_TIMER	, // PA 3 -> 41 
	NOT_ON_TIMER	, // PA 2 -> 42 
	NOT_ON_TIMER	, // PA 1 -> 43 
	NOT_ON_TIMER	, // PA 0 -> 44 
	NOT_ON_TIMER	, // PF 0 -> 45 -> Analog0
	NOT_ON_TIMER	, // PF 1 -> 46 -> Analog1
	NOT_ON_TIMER	, // PF 2 -> 47 -> Analog2
	NOT_ON_TIMER	, // PF 3 -> 48 -> Analog3
	NOT_ON_TIMER	, // PF 4 -> 49 -> Analog4
	NOT_ON_TIMER	, // PF 5 -> 50 -> Analog5
	NOT_ON_TIMER	, // PF 6 -> 51 -> Analog6
	NOT_ON_TIMER	, // PF 7 -> 52 -> Analog7	
};

#endif

#endif