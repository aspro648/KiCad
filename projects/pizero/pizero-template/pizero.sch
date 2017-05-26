EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:raspberry_pi_+_conn
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Pi Zero Hat"
Date "2016-09-24"
Rev "V0.1"
Comp ""
Comment1 "Author: "
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_+_Conn P3
U 1 1 54E92361
P 2100 3050
F 0 "P3" H 1000 5000 60  0000 C CNN
F 1 "Raspberry_Pi_+_Conn" H 2400 1600 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_20x2" H 2100 3050 60  0001 C CNN
F 3 "" H 2100 3050 60  0000 C CNN
F 4 "517-30340-6002" H 2100 3050 60  0001 C CNN "Mouser Part No."
	1    2100 3050
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E963F9
P 850 2750
F 0 "#PWR01" H 850 2750 30  0001 C CNN
F 1 "GND" H 850 2680 30  0001 C CNN
F 2 "" H 850 2750 60  0000 C CNN
F 3 "" H 850 2750 60  0000 C CNN
	1    850  2750
	1    0    0    -1  
$EndComp
Text Notes 1000 1000 0    157  Italic 31
Raspberry Pi Connection
Wire Wire Line
	850  2650 1000 2650
Wire Wire Line
	850  1950 850  2750
Wire Wire Line
	1000 1950 850  1950
Connection ~ 850  2650
Wire Wire Line
	1000 2550 850  2550
Connection ~ 850  2550
Wire Wire Line
	1000 2450 850  2450
Connection ~ 850  2450
Wire Wire Line
	1000 2350 850  2350
Connection ~ 850  2350
Wire Wire Line
	1000 2250 850  2250
Connection ~ 850  2250
Wire Wire Line
	1000 2150 850  2150
Connection ~ 850  2150
Wire Wire Line
	1000 2050 850  2050
Connection ~ 850  2050
Wire Wire Line
	1000 1350 900  1350
Wire Wire Line
	900  1350 900  1250
Connection ~ 900  1250
Wire Notes Line
	15750 8150 15750 2050
$EndSCHEMATC
