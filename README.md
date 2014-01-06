Gelatino
========
Other Arduino Compatible Project

Gelatino is Arduino Compatible development kit, Free and Open Source. 
Gelatino built from another AVR 8-bit besides Arduino mostly used. 
Gelatino now is suported ATmega128 ,ATmega16 and ATmega32

http://code.google.com/p/gelatino/

Gelatino have 3 variants:
- Gelatino16 with ATmega16 ( http://code.google.com/p/gelatino/wiki/Gelatino16 )
- Gelatino32 with ATmega32 ( http://code.google.com/p/gelatino/wiki/Gelatino32 )
- Gelatino128 with ATmega128 ( http://code.google.com/p/gelatino/wiki/Gelatino128 ) 

Gelatino's schematic is like other arduino standard. Gelatino using 16 Mhz Xtal. 
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
If you have questions to ask me personally, feel free to contact me via email or maybe via hangout if i'm online

arif.pens@gmail.com
