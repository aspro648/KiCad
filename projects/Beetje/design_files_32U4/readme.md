Beetje Blok 32U4 Rev 0.0

![Beetje Block](project.png) 

Based on Adafruit's [ItsyBitsy](https://learn.adafruit.com/introducting-itsy-bitsy-32u4) and SparkFun's [Pro Micro](https://www.sparkfun.com/products/12587) 3.3V/8Mhz versions.

Project page on [Hack-A-Day](https://hackaday.io/project/160638-beetje-bloks).

This is the first "dev blok" for this proof-of-concept project.  It is a KiCad mash-up of Adafruit's [ItsyBity](https://learn.adafruit.com/introducting-itsy-bitsy-32u4) and SparkFun's [Pro Micro](https://www.sparkfun.com/products/12587), jammed into Hack-A-Day's [Once Square Inch Scheme](https://hackaday.io/project/7813-the-square-inch-project) ("HADOSIS").

Bill Of Materials
----------------
  
- 1 ea., Perfect Purple PCB from OSH Park, with not so perfect kicad.pcb file.
- 1 ea., U1, ATMEGA32U4-AU, IC MCU 8BIT 32KB FLASH 44TQFP, https://www.digikey.com/short/jb25pc
- 1 ea., U2, IC REG LINEAR 3.3V 150MA SOT23-5, MIC5225-3.3YM5-TR, https://www.digikey.com/short/jb2rq8
- 1 ea., Y1 Resonator 8MHZ, CSTNE8M00G55Z000R0, https://www.digikey.com/short/jb22j1
- 2 ea., D1, D4 DIODE SCHOTTKY 20V 1A SOD123FL, MBR120ESFT1G, https://www.digikey.com/short/j2r1f3
- 3 ea,, C6, C8, C9 10uF SMD 0805, https://www.digikey.com/short/j5d39w 
- 1 ea., C7 1uF SMD 0603, https://www.digikey.com/short/j5d397
- 1 ea., X3, CONN RCPT MICRO USB R/A SMD, Molex 1050170001, https://www.digikey.com/short/jb2205
- 2 ea., R4, R5, 22 Ohm 5% 0603 SMD resistor, https://www.digikey.com/short/jfcbtj
- 3 ea., R1, R2, R7, 330 Ohm 0603 SMD resistor, https://www.digikey.com/short/jfcb32
- 1 ea., R9 100K ohm 0603 SMD resistor, https://www.digikey.com/short/j5d3b3
- 3 ea., D3, D5, D13 0603 SMD LED, https://www.digikey.com/short/j5h3h5
- 2 ea., R3, R6 Resistor 4.7K SMD 0603, https://www.digikey.com/short/j2d05w
- 1 ea., F1 PTC 1206, Bel 0ZCJ0025AF2E, https://www.digikey.com/short/jfcbc8
- 2 ea., SW1, Sw2 RA Tactile SPST, Pansonic EVQ-P7J01P, https://www.digikey.com/short/jfwprn
- J2, CONN HEADER FEMALE 6POS .1" GOLD, https://www.digikey.com/short/jfcnz3
- J4, CONN HEADER FEMALE 8POS .1" GOLD, https://www.digikey.com/short/jfcnzj


Revision 0.1 - diodes and polyfuse to front.
Revision 0.2 - I2C pullups, added SW2, enlarge holes for headers

License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.