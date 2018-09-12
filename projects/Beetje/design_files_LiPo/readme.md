Beetje LiPo Battery Blok

![Beetje Block](project.png) 

Project website: https://hackaday.io/project/160638-beetje-bloks

Based on Adafruit's [Adafruit Pro Trinket LiPoly/LiIon Backpack](https://learn.adafruit.com/adafruit-pro-trinket-lipoly-slash-liion-backpack/downloads)


Bill Of Materials
----------------
  
- 1 ea., Perfect Purple PCB from OSH Park, with not so perfect layout from [project.kicad_pcb](project.kicad_pcb) file.
- 1 ea., C1 CAP CER 10UF SMD 0805, https://www.digikey.com/short/j5d39w 
- 1 ea., U1 IC CONTROLLR LI-ION 4.2V SOT23-5, Microchip MCP73831T-2ATI/OT, https://www.digikey.com/short/jfnvjp
- 1 ea., BATTERY LITHIUM 3.7V 150MA, TinyCircuits ASR00003, https://www.digikey.com/short/jf925w
- 1 ea., JST SH CONN HEADER SH 2POS 1MM, SM02B-SRSS-TB(LF)(SN), https://www.digikey.com/short/jfdccc
- 1 ea., JST PH CONN HEADER PH SIDE 2POS 2MM, S2B-PH-K-S(LF)(SN), https://www.digikey.com/short/jfdct5
- 1 ea., R3 Resistor 10K SMD 0805, https://www.digikey.com/short/j2d0w4
- 2 ea., R1, R2 Resistor 1K SMD 0805, https://www.digikey.com/short/j2d0wt
- 1 ea., D1 LED red SMD 0805, https://www.digikey.com/short/j20zct
- 1 ea., D2 LED green SMD 0805, https://www.digikey.com/short/j20p1h
- 1 ea., D3 DIODE SCHOTTKY 20V 1A SOD123L, https://www.digikey.com/short/j2wzf5

Optional

- 1 ea., CONN HEADER .100" SNGL STR 40POS, https://www.digikey.com/short/jfcn42
- J2, CONN HEADER FEMALE 6POS .1" GOLD, https://www.digikey.com/short/jfcnz3
- J4, CONN HEADER FEMALE 8POS .1" GOLD, https://www.digikey.com/short/jfcnzj


Revisions
------------------
- 0.0 Aug 2018 Initial build
- 0.1 Sep 2018 Switch to 0805 packages. Swap J1 & J3 connector polarities.  Add power switch and reverse current diode.
- 0.2 Sep 2018 Pinout to match 32U4 rev 0.3, added pour planes per datasheet, rerouted.


License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.