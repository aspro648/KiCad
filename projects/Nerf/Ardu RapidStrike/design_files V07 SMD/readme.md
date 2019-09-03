ArduStrike

![Picture](images/project.png) 

Pusher Fuse 1206: 1A https://www.digikey.com/short/p532qq
Main: 1812: 3.5A https://www.digikey.com/short/p532pr



TODO:

ISP to back
second MOSFET?


Main Board
----------------
- 1 ea., IC MCU 8BIT 32KB FLASH 32TQFP, ATMEGA328P-AUR, https://www.digikey.com/short/prrf1p
- 1 ea., Y1 CER RES 16.0000MHZ 15PF SMD, CSTNE16M0V530000R0, https://www.digikey.com/short/p55m1p
- 1 ea., IC REG LINEAR 5V 250MA SOT89-3, Microchip MCP1702-5002E/TO, https://www.digikey.com/short/p5cbrh
- 1 ea., MOSFET N-CH 30V 58A DPAK, Infineon IRLR8729, https://www.digikey.com/short/pm0rdq3
- 1 ea., TC78H611FNG IC MOTOR DRIVER 16TSSOP, https://www.digikey.com/short/p5559f
- 1 ea., PTC RESET FUSE 16V Ih=1.25A It=2.5A  1812, https://www.digikey.com/short/p555q2
- 1 ea., PTC RESET FUSE 16V Ih=500MA It=1A 1210, https://www.digikey.com/short/p532qq
- 1 ea., F1 PTC 1206, Bel 0ZCJ0025AF2E, https://www.digikey.com/short/jfcbc8
- 1 ea., DIODE GEN PURP 50V 1A SMB, https://www.digikey.com/short/p555z5
- 3 ea., Hall Effect Sensor, Diodes Incorporated AH9246-P-B, https://www.digikey.com/short/p5cb4f
- 1 ea., 0.96 Inch 128x64 I2C OLED, https://www.amazon.com/gp/product/B072Q2X2LL/
- 1 ea., CONN HEADER R/A 6POS 2.54MM,  https://www.digikey.com/short/p55hf2

- 7 ea., CAP CER 0.1UF 16V X7R 0805, https://www.digikey.com/short/p5r2hm
- 2 ea., CAP CER 1UF 16V X7R 0805, https://www.digikey.com/short/p5r25m
- 1 ea., CAP CER 10UF 16V X5R 0805, https://www.digikey.com/short/p5r2cv

- 1 ea., RES SMD 100 OHM 5% 1/8W 0805, https://www.digikey.com/short/p55997
- 5 ea., RES SMD 1K OHM 5% 1/8W 0805, https://www.digikey.com/short/p559mn
- 11 ea., RES 10K OHM 1% 1/4W 0805, https://www.digikey.com/short/p55980

- 1 ea., AUDIO PIEZO TRANSDUCER 30V TH, https://www.digikey.com/short/p5r22q

- 1 ea., CONN HEADER R/A 2POS 1.25MM, https://www.digikey.com/short/p5r2dn
- 1 ea., 2POS PicoBlade housing, https://www.digikey.com/short/p4wz0d

- 1 ea., CONN HEADER SMD R/A 3POS https://www.digikey.com/short/p5r208
- 1 ea., 3POS PicoBlade housing, https://www.digikey.com/short/pmwzf2

- 1 ea., CONN HEADER R/A 4POS 1.25MM, https://www.digikey.com/short/p5r2nj
- 1 ea., 4POS PicoBlade housing, https://www.digikey.com/short/p4wzd1

- 1 ea., CONN HEADER SMD R/A 10POS 1.25MM, https://www.digikey.com/short/p5r2vz
- 1 ea., CONN HOUSING 10POS 1.25MM NATURAL, https://www.digikey.com/short/p5rhr3

12" PRE-CRIMP 1853 RED, https://www.digikey.com/short/p4wzvf
12" PRE-CRIMP 1853 BLACK, https://www.digikey.com/short/p4wz1p
12" PRE-CRIMP 1853 BLUE, https://www.digikey.com/short/p4wz14
12" PRE-CRIMP 1853 ORANGE, https://www.digikey.com/short/p4wz1r
12" PRE-CRIMP 1853 GREEN, https://www.digikey.com/short/p4w4c4

10" PRE-CRIMP 1852 RED, https://www.digikey.com/short/p937zh
10" PRE-CRIMP 1852 BLACK, https://www.digikey.com/short/p937zv
10" PRE-CRIMP 1852 YELLOW, https://www.digikey.com/short/p9374t
10" PRE-CRIMP 1852 GREEN, https://www.digikey.com/short/p9374z
10" PRE-CRIMP 1852 ORANGE, https://www.digikey.com/short/p9374f
10" PRE-CRIMP 1852 BLUE, https://www.digikey.com/short/p937mc

16 AWG Silicone wire, https://www.amazon.com/BNTECHGO-Silicone-Flexible-Strands-Stranded/dp/B00TG1TRL2
18 AWG Silicone wire (7.5A, $0.40/ft), https://www.amazon.com/Silicone-Electrical-Conductor-Parallel-Flexible/dp/B07FMRDP87
16 AWG Silicone wire (12A, $0.70/ft), https://www.amazon.com/Silicone-Electrical-Conductor-Parallel-Flexible/dp/B07FMLVF84

XT60 connector male

Optional:
FTDI SERIAL TTL-232 USB CABLE, https://www.digikey.com/short/p4w47d
SPARKFUN FT231X BREAKOUT, https://www.digikey.com/short/p4w4qb
- 1 ea., 3mm IR LED, https://www.digikey.com/short/pmwzdq
- 1 ea., NPN photo transistor, https://www.digikey.com/short/pmwzdb

Motor Spec Sheet:
----------------
https://docs.google.com/spreadsheets/d/12gOU-GbuqdGVzpOjZJvQ_gq1Nmw63c_sd13Wt4bfn1E/edit#gid=0


Revisions
----------------
0.1 Added push button to A0.
0.3 Removed XT30 connectors, added PTC, fuse holder.
0.4 Major component repositioning
0.5 Trigger moved clip connector
	Pusher Bat conn to 5.08mm.
	Mosfet layout change
0.6 SMD Layout
0.7 Picoblade, piezo, FTDI to through-hole. 10K resistor divider.

License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.