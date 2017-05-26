# Raspberry Pi Hat Template #

This project is a template for a Raspberry Pi Hat that was build on the guide lines published on github by the Raspberry Pi foundation. This template is designed to make it easier for hardware developers to design there own Rasberry Pi hats. The template was designed as a comprimse of cost, solderabilty, and footprint. The board has about 80% of its space still avalible to the user. The board also provides typical voltages that are required in many projects. The board is also capable of powering the Raspberry Pi. This makes this template sutable for development in automotive, industrial and home applications.

*This project is licensed under the CERN OHL v1.2*

### Features ###

- Input voltage 5.5v - 25v
- 5v supply from DC/DC @ 2.1A
- 3.3v supply from LDO @ 1.5A
- Backpowering protection ciruit
- Device ID eeprom
- Compliant with Raspberry Pi Hat specifications

### Basic Usage Guide ###

To use this template first you must clone the repository to some working directory. If you are in windows you can just download the zip right from git.  

```
git clone http://git.openfet.com/julien/pihat-template
```
Open the project in KiCad, you may need to add the library "project-libs" using the library wizard. Then you can add your own components, once the components are added you can tie them to the 3.3v or 5v net depending on what voltages are required. Once done you can then choose the components from CvPCB application. Export the netlist and then import it in PCBNew. 

