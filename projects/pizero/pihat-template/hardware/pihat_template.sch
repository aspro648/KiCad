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
LIBS:pihat_template-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_+_Conn P3
U 1 1 54E92361
P 5750 3900
F 0 "P3" H 4650 5850 60  0000 C CNN
F 1 "Raspberry_Pi_+_Conn" H 6050 2450 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_20x2" H 5750 3900 60  0001 C CNN
F 3 "" H 5750 3900 60  0000 C CNN
F 4 "517-30340-6002" H 5750 3900 60  0001 C CNN "Mouser Part No."
	1    5750 3900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E963F9
P 4500 3600
F 0 "#PWR01" H 4500 3600 30  0001 C CNN
F 1 "GND" H 4500 3530 30  0001 C CNN
F 2 "" H 4500 3600 60  0000 C CNN
F 3 "" H 4500 3600 60  0000 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
Text Notes 3000 1450 0    157  Italic 31
Raspberry Pi Connection
Wire Wire Line
	4500 3500 4650 3500
Wire Wire Line
	4500 2800 4500 3600
Wire Wire Line
	4650 2800 4500 2800
Connection ~ 4500 3500
Wire Wire Line
	4650 3400 4500 3400
Connection ~ 4500 3400
Wire Wire Line
	4650 3300 4500 3300
Connection ~ 4500 3300
Wire Wire Line
	4650 3200 4500 3200
Connection ~ 4500 3200
Wire Wire Line
	4650 3100 4500 3100
Connection ~ 4500 3100
Wire Wire Line
	4650 3000 4500 3000
Connection ~ 4500 3000
Wire Wire Line
	4650 2900 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4650 2200 4550 2200
Wire Wire Line
	4550 2200 4550 2100
Connection ~ 4550 2100
Wire Notes Line
	600  5550 8150 5550
Wire Notes Line
	8150 5550 8150 850 
Wire Notes Line
	8150 850  600  850 
Wire Notes Line
	600  850  600  5550
$EndSCHEMATC
