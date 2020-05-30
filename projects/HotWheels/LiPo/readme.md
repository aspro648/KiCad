LiPo Battery Charger

![LiPo](project.png) 

Project website: MakersBox.us

Based on Adafruit's [USB LiIon/LiPoly charger - v1.2](https://learn.adafruit.com/li-ion-and-lipoly-batteries/downloads)


Bill Of Materials
----------------
- 1 ea., Perfect Purple PCB from OSH Park, with not so perfect layout from [design_files/project.kicad_pcb](project.kicad_pcb) file.
- 2 ea., CAP CER 10UF 10V X5R 0805, https://www.digikey.com/short/zz5p5h
- 1 ea., U1 IC LI-ION/LI-POLY CTRLR 10MSOP, MCP73833T-AMI/UN, https://www.digikey.com/short/zjdzwb
- 1 ea., Smallest 3.7 LiPo you can find (VERIFY CONNECTOR POLARITY).
	- V911 Helicoper 130mAh https://www.amazon.com/gp/product/B00BSK2NZG/ (JST PH?)
	- Turnigy 150mAh with pico-blade https://hobbyking.com/en_us/turnigy-nano-tech-150mah-1s-25-40c-lipo-pack.html (Molex Pico-blade)
	- TinyCircuits ASR00003 150 mAh (20x20x5.1mm), https://www.digikey.com/short/jf925w (JST SH)
	- Adafruit 100 mAh (31x11.5x3.8mm) https://www.digikey.com/short/zzznfn (JST PH)
	- SparkFun 110 mAh (28x12x5.7mm) https://www.digikey.com/short/zz43fr (JST PH)
	- TinyCircuits ASR0011 70mAh (16.0mm x 15.0mm x 5.0mm), https://www.digikey.com/short/z40wd0 (JST SH)
	
Depending on battery:
	- 1 ea., JST SH CONN HEADER SMD R/A 2POS 1MM, SM02B-SRSS-TB(LF)(SN), https://www.digikey.com/short/z4vw0z
	- 1 ea., Molex Picoblade CONN HEADER R/A 2POS 1.25MM, https://www.digikey.com/short/p5r2dn or 
	- 1 ea., JST PH CONN HEADER PH SIDE 2POS 2MM, S2B-PH-K-S(LF)(SN), https://www.digikey.com/short/jfdct5
	- Just solder leads to SMD pads
- 2 ea., Resistor 10K SMD 0805, https://www.digikey.com/short/j2d0w4
- 2 ea., Resistor 1K SMD 0805, https://www.digikey.com/short/j2d0wt
- 7 ea., RES SMD 100 OHM 5% 1/8W 0805, https://www.digikey.com/short/z7nv19 (or appropriate for LED Vf)
- 3 ea., LED red SMD 0805, https://www.digikey.com/short/j20zct (CHG, Taillights)
- 1 ea., LED green SMD 0805, https://www.digikey.com/short/j20p1h
- 3 ea., LED blue SMD 0805, https://www.digikey.com/short/zz54h8 (UND, Dash) 
- 2 ea., LED WHITE CLEAR 3MM T/H 45 deg 6200mcd 3.2V, https://www.digikey.com/short/zz9101 (headlights)
- 1 ea., SMD SPST switch, C&K JS102011SAQN, Digikey 401-1999-1-ND
- 1 ea., CONN RCPT MICRO USB R/A SMD, Molex 1050170001, https://www.digikey.com/short/jb2205


Revisions
------------------
- 0.0 April 2020 Initial Design (untested, but based on working Beetje LiPo schematic).


License
----------------
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.