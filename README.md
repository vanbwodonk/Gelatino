# Gelatino #

Other Arduino Compatible Core Project.

Gelatino is Arduino core for another AVR 8-bit which is not available in Arduino IDE. 
Gelatino Cores now  supported ATmega128 ,ATmega16,ATmega32, ATmega1284 and ATmega162. All AVR chips in my current office.

*Last tested on arduino-1.8.0

## Variants ##

Gelatino have 5 variants:
- Gelatino16  with ATmega16
- Gelatino162 with ATmega162
- Gelatino32  with ATmega32
- Gelatino128 with ATmega128
- Gelatino1284 with ATmega1284

## Gelatino Pinlist ##

See pinlist on arduino variant folder (hardware/arduino/avr/variants).
Now have new macros same with AVR pin, no need to remember what number and where is digital pin. Example below,
```
pinMode(PB_5, OUTPUT);  //set PinB.5 as output
digitalWrite(PB_5, HIGH); //set PinB.5 High
```

## How to install ##
#### Online Instalation
This installation method requires Arduino IDE version 1.6.4 or greater.
* Open the Arduino IDE.
* Open the **File > Preferences** menu item.
* Enter the following URL in **Additional Boards Manager URLs**:
```
https://raw.githubusercontent.com/vanbwodonk/Gelatino.github.io/master/package_Gelatino_1.6.x_index.json
```
* Open the **Tools > Board > Boards Manager...** menu item.
* Wait for the platform indexes to finish downloading.
* Scroll down until you see the **Gelatino** entry and click on it.
  * **Note**: If you are using Arduino IDE 1.6.6 then you may need to close **Boards Manager** and then reopen it before the **Gelatino** entry will appear.
* Click **Install**.
* After installation is complete close the **Boards Manager** window.

#### Manual Installation
* Click on the "Download ZIP" button 
* Exctract the ZIP and open extracted folder then delete boards.txt and platform.txt
* Rename boards_origin.txt to boards.txt
* Rename platform_origin.txt to platform.txt
* overwrite all files in arduino-1.6.x/hardware/arduino/avr folder. 

## Contact me ##

If you have questions to ask me personally, feel free to contact me via email or maybe via hangout if i'm online
arif.pens@gmail.com 
