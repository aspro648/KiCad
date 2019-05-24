DIY Arduino clone done in KiCad.

![Picture](images/project.png) 

You will need to build a FTDI breakout board using a FT231XQ QFN20 chip with a pinout matching the FT231XS (SSOP-20), but in a DIP-20 spacing.  It is all downhill from there!

Bill Of Materials
----------------
- 1 ea., PCBs from kicad.pcb file.

- 1 ea., Atmega328P-PU https://www.digikey.com/short/jn57wj
- 1 ea., L293D H-Bridge, STMicroelectronics L293D, https://www.digikey.com/short/p4fmdz
- 3 ea., Hall Effect Sensor, Diodes Incorporated AH9246-P-B, https://www.digikey.com/short/p4f5dw
- 1 ea., CER RES 16.0000MHZ 30PF T/H, ECS ZTT-16.00MX, https://www.digikey.com/short/jn9pjv
- 4 ea., CER 0.1UF 25V Y5V RADIAL 2.5mm lead spacing, generic, https://www.digikey.com/short/jn9pm2
- 3 ea., CER 1UF 25V X7R RADIAL 2.5 lead spacing, generic https://www.digikey.com/short/p4fr3w
- 1 ea., MOSFET N-CH 30V 62A TO-220AB, Infineon IRLB8721PBF, https://www.digikey.com/short/p4fhcm
- 1 ea., 1N4001 Gen Purpose diode, https://www.digikey.com/short/7thwwp
- 1 ea., 3mm LED light, 
- 4 ea., 1K Ohm Resistors, 1/8W 5% generic, https://www.digikey.com/short/p4fr81
- 8 ea., 10K Resistors, 1/8W 5% generic, https://www.digikey.com/short/p4frj2 
- 2 ea., 100K ohm resistor, 1/8W 5% generic, https://www.digikey.com/short/p4frpj

- 2 ea., 1K Resistor, 1/4W 1% generic, https://www.digikey.com/short/p4frwz
- 2 ea., 10K Resistors, 1/4W 1% generic, https://www.digikey.com/short/p4fr2q
- 2 ea., 100K Resistors, 1/4W 1% generic, https://www.digikey.com/short/p4fr22

- 1 ea., 8-position sub-micro selector switch, C&K RM100772BCB, https://www.digikey.com/short/p4fm2c
- 1 ea., Selectorf switch knob, C&K 296F02000, https://www.digikey.com/short/p4f4z9

- 1 ea., D1 DIODE SCHOTTKY 40V 2A DO15, SMC SB240TA, https://www.digikey.com/short/jn57cv

- 1 ea., 28 Pin socket, On Shore ED281DT, https://www.digikey.com/short/jn5tz5
- 1 ea., 16 Pin socket, ??

- 3 ea.,2POS Side Entry 3.5MM terminal:
    - Phoenix 1984617 https://www.digikey.com/short/p45pt4
    - On Shore OSTTE020161, https://www.digikey.com/short/p45p35
	- Molex 0393570002, https://www.digikey.com/short/p45pqp
- 2 ea., 3POS Side Entry 3.5mm terminal
- 1 ea., 2POS Side Entry 5mm terminal
- 1 ea., 2POS PicoBlade Terminal
- 3 ea., 4POS Picoblade terminal

Wire
XT60 Connector

License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.