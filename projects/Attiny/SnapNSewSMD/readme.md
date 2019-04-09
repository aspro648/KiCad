Introduction
============

![Attiny85](images/base.png) 
Surface mount soldering can be a daunting to a hobbiest, but it can be done, and is actually much easier than it looks. I've designed this project to be a gentle introduction.

This project used "1206" size components which are pretty easy to hand solder, and that is where we'll start. The Attiny microcontroller is an "SOIC" package, which is a bit more of a challenge, but still quite within the abilities of hand soldering with hobby equipment.

If you scoff at adversity, and want to do things the hard way, you can punish yourself with my alter-project the [SMD Challenge](https://hackaday.io/project/25265-an-unfortunate-smd-project). Be fore-warned, it is impossible for mere humans.

See a [demo](https://youtu.be/9H9jX7037jc).


Bill Of Materials
=================
  
- 1 ea. ATTINY85, Atmel ATTINY85V-10SUR, Digikey ATTINY85V-10SURCT-ND
- 1 ea. SMD SPST switch, C&K JS102011SAQN, Digikey 401-1999-1-ND
- 1 ea. SMD Battery holder, Linx BAT-HLD-001, Digikey BAT-HLD-001-ND
- 1 ea. 54 mcd Red 1206 LED, Lite-On LTST-C150KRKT, Digikey 160-1405-1-ND
- 1 ea. 330 ohm 1206 SMD Resistor, Yageo RC1206JR-07330RL, Digikey 311-330ERCT-ND
- 1 ea. 0.1 uF cap 1206, KEMET C1206C104K5RAC7867, Digikey 399-1249-1-ND
- 1 ea. CR2032 Battery, Panasonic CR2032, Digikey P189-ND (requires ground shipping, or buy locally).


Design Files
============
This project is designed using Open Source [KiCad](http://kicad-pcb.org/). Design files are located in the [design_files](design_files/) folder.  You can oogle the [schematic](images/base.sch.png).

Firmware
========
This project is programed using the Open Source [Arduino](https://www.arduino.cc/). I use my Open Source [AVR Programming Shield](https://www.tindie.com/products/MakersBox/yet-another-programming-shield/) to program the Attiny85. The firmware is located in the [firmware](firmware/) folder.

Assembly Instructions
=====================
I have posted [detailed instructions at Instructables](https://www.instructables.com/id/I-Can-Surface-Mount-Solder/).

License
=======
[Attribution-ShareAlike 3.0 United States (CC BY-SA 3.0 US)](https://creativecommons.org/licenses/by-sa/3.0/us/)

You are free to:

- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:

- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
- ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
