Beetje Blok 32U4 Rev 0.0

![Beetje Block](project.png) 


https://rheingoldheavy.com/arduino-from-scratch-part-5-selecting-comparator-parts/

Based on Adafruit's [ItsyBitsy](https://learn.adafruit.com/introducting-itsy-bitsy-32u4) and SparkFun's [Pro Micro](https://www.sparkfun.com/products/12587) 3.3V/8Mhz versions.

Project page on [Hack-A-Day](https://hackaday.io/project/160638-beetje-bloks).

This is the first "dev blok" for this proof-of-concept project.  It is a KiCad mash-up of Adafruit's [ItsyBity](https://learn.adafruit.com/introducting-itsy-bitsy-32u4) and SparkFun's [Pro Micro](https://www.sparkfun.com/products/12587), jammed into Hack-A-Day's [Once Square Inch Scheme](https://hackaday.io/project/7813-the-square-inch-project) ("HADOSIS").

Bill Of Materials
----------------
  
- 1 ea., Perfect Purple PCB from OSH Park, with not so perfect kicad.pcb file.
- 1 ea., U1 IC REG LINEAR 3.3V 150MA SOT23-5, LP2985-33DBVRG4, https://www.digikey.com/short/j29pqr
- 1 ea., U2 IC OPAMP GP 1MHZ RRO 8VSSOP, LMV358IDGKR, https://www.digikey.com/short/j29pj7
- 1 ea., U4 ATMEGA32U4-AU, IC MCU 8BIT 32KB FLASH 44TQFP, https://www.digikey.com/short/jb25pc
- 1 ea., U3 IC REG LINEAR 5V 1A SOT223 NCP1117ST50T3G, https://www.digikey.com/short/j29pqc
- 1 ea., Q1 MOSFET P-CH 20V 2A SSOT3, FDN340P, https://www.digikey.com/short/j29ppj

- 1 ea., Y1 CER RES 16.0000MHZ 15PF SMD, CSTCE16M0V53-R0, https://www.digikey.com/short/j2b9cm
- 2 ea., C3, C6, C7 CAP CER 10UF 25V X7R 1206, https://www.digikey.com/short/j29pwm
- 2 ea., C1, C5 CAP CER 1UF SMD 0805
- 1 ea., C4 CAP CER 0.1UF SMD 0805
- 1 ea., C2 CAP CER 22pF SMD 0805

- F1, PTC 1206, Bel 0ZCJ0025AF2E, https://www.digikey.com/short/jfcbc8
- 2 ea., RV1, RV2 VARISTOR 	VARISTOR 10.8V 40A 0805, https://www.digikey.com/product-detail/en/VCUG080050L1DP/478-5584-1-ND/2048376/?itemSeq=271121312
- 4 ea., R1-R4 Resistor 1K OHM SMD 0805
- 2 ea., R5, R8 Resistor 10K OHM SMD 0805
- 2 ea., R6, R7 Resistor 22 OHM SMD 0805
- 1 ea., R9 Resistor 1M OHM SMD 0603
- 4 ea., D1-D4 SMD LED 0805

- 1 ea., SW1 SWITCH TACTILE SPST-NO 0.05A 12V, PTS645SK50SMTR92 LFS, https://www.digikey.com/short/j29hvc
- 1 ea., X3, CONN RCPT MICRO USB R/A SMD, Molex 1050170001, https://www.digikey.com/short/jb2205
- 1 ea., J1 Barrel Jack, https://www.digikey.com/short/j2fz43
- 1 ea., 6-Pin header
- 2 ea., 8-Pin header
- 1 ea., 10-Pin header


License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.