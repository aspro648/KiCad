Introduction
============

![SMD Challenge](images/project.png) 
Test your surface mount soldering skills out, starting with a 1206 package and work your way down into an oblivion of frustration. Powered by a CR2032 coin cell and Attiny 85 SOIC. Be warned that trying to hand solder a 0201 package, which is just slightly larger than a grain of sand, may be considered evidence of insanity and get you committed to bad places by your loved ones and/or arch nemesis.I have submitted to request from miserable people to make this an unfortunate kit. Don't think I'm doing you any favors: https://www.tindie.com/products/MakersBox/smd-challenge/


Bill Of Materials
=================
  
- 1 ea., Perfect Purple PCB from OSH Park, https://oshpark.com/shared_projects/UFefat4N
- 1 ea., Atmel ATTINY85V-10SUR, https://www.digikey.com/short/3253mp
- 1 ea., CAP CER 0.1UF 50V X7R 1206, KEMET C1206C104K5RAC7867, https://www.digikey.com/short/32vmjq
- 1 ea. SMD Battery holder, Linx BAT-HLD-001, Digikey BAT-HLD-001-ND
- 1 ea. CR2032 Battery, Panasonic CR2032, Digikey P189-ND (requires ground shipping, or buy locally).

- 1 ea., 201 SMD LED green, https://www.digikey.com/short/j5h3zc
- 1 ea., 402 SMD LED yellow, https://www.digikey.com/short/j5h3mh
- 1 ea., 603 SMD LED amber, https://www.digikey.com/short/j5h3h5
- 1 ea., 806 SMD LED orange, https://www.digikey.com/short/j5h39n
- 1 ea., 1206 SMD LED red, https://www.digikey.com/short/j5h355

- 1 ea., RES SMD 330 OHM 5% 1/4W 1206, Yageo RC1206JR-07330RL, https://www.digikey.com/short/3253mf
- 1 ea., RES SMD 330 OHM 5% 1/8W 0805, Yageo RC0805JR-07330RL, https://www.digikey.com/short/3wzz2f
- 1 ea., RES SMD 330 OHM 5% 1/10W 0603, Yageo RC0603JR-07330RL, https://www.digikey.com/short/3wzz20
- 1 ea., RES SMD 330 OHM 5% 1/16W 0402, Yageo RC0402JR-07330RL, https://www.digikey.com/short/3wzzwq
- 1 ea., RES SMD 180 OHM 5% 1/20W 0201, Yageo RC0201JR-07330RL, https://www.digikey.com/short/j5h4h7


Design Files
============
This project is designed using Open Source [KiCad](http://kicad-pcb.org/). Design files are located in the [design_files](design_files/) folder.  You can oogle the [schematic](images/project.sch.png).

Firmware
========
This project is programed using the Open Source [Arduino](https://www.arduino.cc/). I use my Open Source [AVR Programming Shield](https://www.tindie.com/products/MakersBox/yet-another-programming-shield/) to program the Attiny. The firmware is located in the [firmware](firmware/) folder.

Assembly Instructions
=====================
I have posted [minimal instructions at HackADay](https://hackaday.io/project/25265-an-unfortunate-smd-project).

License
=======
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
