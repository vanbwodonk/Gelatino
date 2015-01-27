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

#define NUM_DIGITAL_PINS            31
#define NUM_ANALOG_INPUTS           8
#define analogInputToDigitalPin(p)  ((p < 8) ? 31 - (p) : -1)
#define digitalPinHasPWM(p)         ((p) == 3  || (p) == 12 || (p) == 13  || (p) == 15 )//(((p) >= 3 && (p) <= 6) || ((p) >= 12 && (p)<= 15))

static const uint8_t SS   = 4;
static const uint8_t MOSI = 5;
static const uint8_t MISO = 6;
static const uint8_t SCK  = 7;

static const uint8_t SDA = 17;
static const uint8_t SCL = 16;
static const uint8_t LED_BUILTIN = 15;

static const uint8_t A0 = 31;
static const uint8_t A1 = 30;
static const uint8_t A2 = 29;
static const uint8_t A3 = 28;
static const uint8_t A4 = 27;
static const uint8_t A5 = 26;
static const uint8_t A6 = 25;
static const uint8_t A7 = 24;


#ifdef ARDUINO_MAIN

const uint16_t PROGMEM port_to_mode_PGM[] = {
	NOT_A_PORT,
	(uint16_t) &DDRA,
	(uint16_t) &DDRB,
	(uint16_t) &DDRC,
	(uint16_t) &DDRD,

};

const uint16_t PROGMEM port_to_output_PGM[] = {
	NOT_A_PORT,
	(uint16_t) &PORTA,
	(uint16_t) &PORTB,
	(uint16_t) &PORTC,
	(uint16_t) &PORTD,

};

const uint16_t PROGMEM port_to_input_PGM[] = {
	NOT_A_PIN,
	(uint16_t) &PINA,
	(uint16_t) &PINB,
	(uint16_t) &PINC,
	(uint16_t) &PIND,

};

const uint8_t PROGMEM digital_pin_to_port_PGM[] = {
	// PORTLIST		
	// -------------------------------------------		
	PB	, // PB 0 **  0 ** D0
	PB	, // PB 1 **  1 ** D1
	PB	, // PB 2 **  2 ** D2
	PB	, // PB 3 **  3 ** PWM0
	PB	, // PB 4 **  4 ** SPI_SS
	PB	, // PB 5 **  5 ** SPI_MOSI
	PB	, // PB 6 **  6 ** SPI_MISO
	PB	, // PB 7 **  7 ** SPI_SCK	
	PD	, // PD 0 **  8 ** USART_RX
	PD	, // PD 1 **  9 ** USART_TX
	PD	, // PD 2 ** 10 ** D10
	PD	, // PD 3 ** 11 ** D11
	PD	, // PD 4 ** 12 ** PWM1
	PD	, // PD 5 ** 13 ** PWM2
	PD	, // PD 6 ** 14 ** D14
	PD	, // PD 7 ** 15 ** PWM3
	PC	, // PC 0 ** 16 ** I2C_SCL
	PC	, // PC 1 ** 17 ** I2C_SDA
	PC	, // PC 2 ** 18 ** D18
	PC	, // PC 3 ** 19 ** D19
	PC	, // PC 4 ** 20 ** D20
	PC	, // PC 5 ** 21 ** D21
	PC	, // PC 6 ** 22 ** D22
	PC	, // PC 7 ** 23 ** D23
	PA	, // PA 7 ** 24 ** D24
	PA	, // PA 6 ** 25 ** D25
	PA	, // PA 5 ** 26 ** D26
	PA	, // PA 4 ** 27 ** D27
	PA	, // PA 3 ** 28 ** D28
	PA	, // PA 2 ** 29 ** D29
	PA	, // PA 1 ** 30 ** D30
	PA	, // PA 0 ** 31 ** D31
};

const uint8_t PROGMEM digital_pin_to_bit_mask_PGM[] = {
	// PIN IN PORT		
	// -------------------------------------------		
	_BV( 0 )	, // PB 0 **  0 ** D0
	_BV( 1 )	, // PB 1 **  1 ** D1
	_BV( 2 )	, // PB 2 **  2 ** D2
	_BV( 3 )	, // PB 3 **  3 ** PWM0
	_BV( 4 )	, // PB 4 **  4 ** SPI_SS
	_BV( 5 )	, // PB 5 **  5 ** SPI_MOSI
	_BV( 6 )	, // PB 6 **  6 ** SPI_MISO
	_BV( 7 )	, // PB 7 **  7 ** SPI_SCK	
	_BV( 0 )	, // PD 0 **  8 ** USART_RX
	_BV( 1 )	, // PD 1 **  9 ** USART_TX
	_BV( 2 )	, // PD 2 ** 10 ** D10
	_BV( 3 )	, // PD 3 ** 11 ** D11
	_BV( 4 )	, // PD 4 ** 12 ** PWM1
	_BV( 5 )	, // PD 5 ** 13 ** PWM2
	_BV( 6 )	, // PD 6 ** 14 ** D14
	_BV( 7 )	, // PD 7 ** 15 ** PWM3
	_BV( 0 )	, // PC 0 ** 16 ** I2C_SCL
	_BV( 1 )	, // PC 1 ** 17 ** I2C_SDA
	_BV( 2 )	, // PC 2 ** 18 ** D18
	_BV( 3 )	, // PC 3 ** 19 ** D19
	_BV( 4 )	, // PC 4 ** 20 ** D20
	_BV( 5 )	, // PC 5 ** 21 ** D21
	_BV( 6 )	, // PC 6 ** 22 ** D22
	_BV( 7 )	, // PC 7 ** 23 ** D23
	_BV( 7 )	, // PA 7 ** 24 ** D24
	_BV( 6 )	, // PA 6 ** 25 ** D25
	_BV( 5 )	, // PA 5 ** 26 ** D26
	_BV( 4 )	, // PA 4 ** 27 ** D27
	_BV( 3 )	, // PA 3 ** 28 ** D28
	_BV( 2 )	, // PA 2 ** 29 ** D29
	_BV( 1 )	, // PA 1 ** 30 ** D30
	_BV( 0 )	, // PA 0 ** 31 ** D31
};

const uint8_t PROGMEM digital_pin_to_timer_PGM[] = {
	// TIMERS		
	// -------------------------------------------		
	NOT_ON_TIMER	, // PB 0 **  0 ** D0
	NOT_ON_TIMER	, // PB 1 **  1 ** D1
	NOT_ON_TIMER	, // PB 2 **  2 ** D2
	TIMER0A			, // PB 3 **  3 ** PWM0
	NOT_ON_TIMER	, // PB 4 **  4 ** SPI_SS
	NOT_ON_TIMER	, // PB 5 **  5 ** SPI_MOSI
	NOT_ON_TIMER	, // PB 6 **  6 ** SPI_MISO
	NOT_ON_TIMER	, // PB 7 **  7 ** SPI_SCK	
	NOT_ON_TIMER	, // PD 0 **  8 ** USART_RX
	NOT_ON_TIMER	, // PD 1 **  9 ** USART_TX
	NOT_ON_TIMER	, // PD 2 ** 10 ** D10
	NOT_ON_TIMER	, // PD 3 ** 11 ** D11
	TIMER1A			, // PD 4 ** 12 ** PWM1
	TIMER1B			, // PD 5 ** 13 ** PWM2
	NOT_ON_TIMER	, // PD 6 ** 14 ** D14
	TIMER2			, // PD 7 ** 15 ** PWM3
	NOT_ON_TIMER	, // PC 0 ** 16 ** I2C_SCL
	NOT_ON_TIMER	, // PC 1 ** 17 ** I2C_SDA
	NOT_ON_TIMER	, // PC 2 ** 18 ** D18
	NOT_ON_TIMER	, // PC 3 ** 19 ** D19
	NOT_ON_TIMER	, // PC 4 ** 20 ** D20
	NOT_ON_TIMER	, // PC 5 ** 21 ** D21
	NOT_ON_TIMER	, // PC 6 ** 22 ** D22
	NOT_ON_TIMER	, // PC 7 ** 23 ** D23
	NOT_ON_TIMER	, // PA 7 ** 24 ** D24
	NOT_ON_TIMER	, // PA 6 ** 25 ** D25
	NOT_ON_TIMER	, // PA 5 ** 26 ** D26
	NOT_ON_TIMER	, // PA 4 ** 27 ** D27
	NOT_ON_TIMER	, // PA 3 ** 28 ** D28
	NOT_ON_TIMER	, // PA 2 ** 29 ** D29
	NOT_ON_TIMER	, // PA 1 ** 30 ** D30
	NOT_ON_TIMER	, // PA 0 ** 31 ** D31	
};

#endif

#endif