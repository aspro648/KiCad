Altimeter V0
------------

![progject](images/Altimeter.JPG) 

Absolute pressure measurement by NXP MPL3115A2

- Operating range: 20 kPa to 110 kPa absolute pressure
- Calibrated range: 50 kPa to 110 kPa absolute pressure
- Calibrated temperature output: −40 °C to 85 °C
- 20-bit ADC, I2C output


Bill Of Materials
-----------------

- 1 ea., Perfect Purple PCB from OSH Park
- 1 ea., I2C OLED Display Module 0.91 Inch I2C SSD1306, http://a.co/4WFRMoG
- 1 ea., SW1 SWITCH REED SPST-NO 500MA 140V, Coto CT10-1530-G1, https://www.digikey.com/short/j58cd0
- 1 ea., SW2 SWITCH SLIDE SPDT, C&K JS102011SAQN, https://www.digikey.com/short/j58qp5
- 1 ea., U1 ATMEGA328P-AU-ND 32TQFP, https://www.digikey.com/short/jbpvp7
- 1 ea., U2 IC ALTIMETER I2C VERSION 8LGA, NXP MPL3115A2R1, https://www.digikey.com/short/j587bt
- 3 ea., C1, 3, 4, CAP CER 0.1UF 50V X7R 0805, https://www.digikey.com/short/j58qjp
- 1 ea., C2 CAP CER 10UF 10V X5R 1206, https://www.digikey.com/short/j58q80
- 1 ea., D1 LED ORANGE CLEAR 0805 SMD, https://www.digikey.com/short/j58qzz
- 3 ea., R1, R2, R3 RES 1K OHM 5% 1/4W 0805, https://www.digikey.com/short/j58q4m
- 1 ea., HOLDER BATTERY 20MM COIN, Lynx BAT-HLD-001, https://www.digikey.com/short/j58q42
- 1 ea., CR2032 Battery, Panasonic CR2032, Digikey P189-ND (requires ground shipping, or buy locally).


Prototyping
-----------

- Adafruit AMPL3115A2 BAROMETER SENSE BOARD, https://www.digikey.com/short/j5101d
- Adafruit DISPL OLED GRAPH MONO 128X32 I2C, https://www.digikey.com/short/j51vc0

Design Files
------------
The electronics were designed using Open Source [KiCad](http://kicad-pcb.org/). Design files are located in the [design_files](design_files/) folder.  You can oogle the [schematic](docs/schematic.pdf).

Firmware
--------
This project is programed using the Open Source [Arduino](https://www.arduino.cc/). I use my Open Source [AVR Programming Shield](https://www.tindie.com/products/MakersBox/yet-another-programming-shield/). The firmware is located in the [firmware](firmware/) folder.
Note: The pressure sensor is a 3V device (3.6v max).  Use a level translator with the programmer (https://www.sparkfun.com/products/11771) to avoid applying 5V to the sensor during programming!

Assembly Instructions
---------------------
TODO

License
-------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
