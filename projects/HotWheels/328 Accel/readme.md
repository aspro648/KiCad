Hot Wheels Arduino Lights

![Image](project.png) 

Project website: MakersBox.us


Bill Of Materials
----------------
- 1 ea., Perfect Purple PCB from OSH Park, with not so perfect layout from [design_files/project.kicad_pcb](project.kicad_pcb) file.
- 1 ea., ATMEGA328P-MNRCT-ND 32-VQFN (5x5), https://www.digikey.com/short/zmmczh
- 1 ea., ACCEL 2-16G I2C/SPI 16LGA, STM LIS331DLHTR, https://www.digikey.com/short/zzdzr7
- 1 ea., IC REG LINEAR 3.3V 150MA SOT23-5, MIC5225-3.3YM5-TR, https://www.digikey.com/short/zmmcmv
- 2 ea., 0.1uF CAP SMD 0805, https://www.digikey.com/short/j58qjp
- 2 ea., CAP CER 10UF 10V X5R 0805, https://www.digikey.com/short/zz5p5h
- 1 ea., Smallest 3.7 LiPo you can find (VERIFY CONNECTOR AND POLARITY).
	- V911 Helicoper 130mAh https://www.amazon.com/gp/product/B00BSK2NZG/ (JST PH?)
	- TinyCircuits ASR0011 70mAh (16.0mm x 15.0mm x 5.0mm), https://www.digikey.com/short/z40wd0 (JST SH)
	- SparkFun 50 mAh (20.0mm x 11.0mm x 3.0mm), https://www.digikey.com/short/zmm58m (JST PH)
	
Depending on battery:
	- 1 ea., JST SH CONN HEADER SMD R/A 2POS 1MM, SM02B-SRSS-TB(LF)(SN), https://www.digikey.com/short/z4vw0z
	- 1 ea., Molex Picoblade CONN HEADER R/A 2POS 1.25MM, https://www.digikey.com/short/p5r2dn or 
	- 1 ea., JST PH CONN HEADER PH SIDE 2POS 2MM, S2B-PH-K-S(LF)(SN), https://www.digikey.com/short/jfdct5
	- Just solder leads to SMD pads
- 1 ea., RES SMD 100K OHM 5% 0603,
- 3 ea., RES SMD 10K OHM 5% 1/10W 0603, https://www.digikey.com/short/z41803 
- 8 ea., RES SMD 100 OHM 5% 1/8W 0603,
- 2 ea., LED red diffuse LED, 
- 2 ea., LED blue SMD 0805, https://www.digikey.com/short/zz54h8 (UND, Dash) 

Headlights:
	- 2 ea., LED WHITE CLEAR 3MM T/H 45 deg 6200mcd 3.2V, https://www.digikey.com/short/zz9101 (headlights)
	- 2 ea., LED WL-SWTP COOL WHT 6000K 1206, Vf 3.0 https://www.digikey.com/short/zzt3mq
- 1 ea., SMD SPST switch, C&K JS102011SAQN, Digikey 401-1999-1-ND
- 1 ea., JST SH CONN HEADER SMD R/A 2POS 1MM, SM02B-SRSS-TB(LF)(SN), https://www.digikey.com/short/z4vw0z


Revisions
------------------
- 0.0 April 2020 Initial Design (untested, but based on working Beetje LiPo schematic).
- 0.2 April 2020 Added 3V3 regulator (LIS331 limit is 3.6V!)
- 0.3 April 2020 New board design.


License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.