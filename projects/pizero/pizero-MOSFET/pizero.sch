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
LIBS:pizero-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "pizero-MOSFET"
Date "2017-04-09"
Rev "V0.1"
Comp ""
Comment1 "Author: K. Olsen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_+_Conn P3
U 1 1 54E92361
P 2100 4350
F 0 "P3" H 1000 6300 60  0000 C CNN
F 1 "Raspberry_Pi_+_Conn" H 2400 2900 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_20x2" H 2100 4350 60  0001 C CNN
F 3 "" H 2100 4350 60  0000 C CNN
F 4 "517-30340-6002" H 2100 4350 60  0001 C CNN "Mouser Part No."
	1    2100 4350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E963F9
P 850 4050
F 0 "#PWR01" H 850 4050 30  0001 C CNN
F 1 "GND" H 850 3980 30  0001 C CNN
F 2 "" H 850 4050 60  0000 C CNN
F 3 "" H 850 4050 60  0000 C CNN
	1    850  4050
	1    0    0    -1  
$EndComp
Text Notes 3700 1850 0    157  Italic 31
Raspberry Pi MOSFET
$Comp
L VCC #PWR02
U 1 1 57E75025
P 850 2450
F 0 "#PWR02" H 850 2300 50  0001 C CNN
F 1 "VCC" H 850 2600 50  0000 C CNN
F 2 "" H 850 2450 60  0000 C CNN
F 3 "" H 850 2450 60  0000 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 57EDC2DF
P 6150 5050
F 0 "D1" H 6150 5150 50  0000 C CNN
F 1 "LED" H 6150 4950 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 6150 5050 60  0001 C CNN
F 3 "" H 6150 5050 60  0000 C CNN
	1    6150 5050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 57EDC340
P 5700 5050
F 0 "R1" V 5780 5050 50  0000 C CNN
F 1 "180" V 5700 5050 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 5630 5050 30  0001 C CNN
F 3 "" H 5700 5050 30  0000 C CNN
	1    5700 5050
	0    1    1    0   
$EndComp
$Comp
L SPST SW1
U 1 1 57EDC379
P 6050 5550
F 0 "SW1" H 6050 5650 50  0000 C CNN
F 1 "SPST" H 6050 5450 50  0000 C CNN
F 2 "myFootPrints:SW_PUSH_SMALL" H 6050 5550 60  0001 C CNN
F 3 "" H 6050 5550 60  0000 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57EDC3BA
P 6700 5300
F 0 "#PWR03" H 6700 5300 30  0001 C CNN
F 1 "GND" H 6700 5230 30  0001 C CNN
F 2 "" H 6700 5300 60  0000 C CNN
F 3 "" H 6700 5300 60  0000 C CNN
	1    6700 5300
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 57FDB8C4
P 10050 2500
F 0 "#PWR04" H 10050 2350 50  0001 C CNN
F 1 "VCC" H 10050 2650 50  0000 C CNN
F 2 "" H 10050 2500 60  0000 C CNN
F 3 "" H 10050 2500 60  0000 C CNN
	1    10050 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 57FDB8F0
P 10050 3000
F 0 "#PWR05" H 10050 3000 30  0001 C CNN
F 1 "GND" H 10050 2930 30  0001 C CNN
F 2 "" H 10050 3000 60  0000 C CNN
F 3 "" H 10050 3000 60  0000 C CNN
	1    10050 3000
	0    -1   -1   0   
$EndComp
NoConn ~ 1000 2900
NoConn ~ 1000 3000
NoConn ~ 1000 4650
NoConn ~ 1000 4750
NoConn ~ 3550 4150
NoConn ~ 3550 4250
NoConn ~ 3550 4350
NoConn ~ 3550 4450
NoConn ~ 3550 4550
NoConn ~ 3550 4850
NoConn ~ 3550 4950
NoConn ~ 3550 5050
NoConn ~ 3550 5150
NoConn ~ 3550 5250
NoConn ~ 3550 5350
NoConn ~ 3550 5450
NoConn ~ 3550 5550
NoConn ~ 3550 3250
NoConn ~ 3550 3350
NoConn ~ 3550 3450
NoConn ~ 3550 3550
NoConn ~ 3550 3650
$Comp
L Q_NMOS_GDS Q1
U 1 1 58E8331A
P 5500 3200
F 0 "Q1" H 5800 3250 50  0000 R CNN
F 1 "Q_NMOS_GDS" H 6150 3150 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 5700 3300 50  0001 C CNN
F 3 "" H 5500 3200 50  0000 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 58E83381
P 6300 2850
F 0 "P2" H 6300 3000 50  0000 C CNN
F 1 "CONN_01X02" V 6400 2850 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 6300 2850 50  0001 C CNN
F 3 "" H 6300 2850 50  0000 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 58E834CF
P 6300 3600
F 0 "P4" H 6300 3750 50  0000 C CNN
F 1 "CONN_01X02" V 6400 3600 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 6300 3600 50  0001 C CNN
F 3 "" H 6300 3600 50  0000 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3250 850  3250
Wire Wire Line
	1000 3350 850  3350
Connection ~ 850  3350
Wire Wire Line
	850  2650 1000 2650
Wire Wire Line
	850  2450 850  2650
Wire Notes Line
	15750 8150 15750 2050
Wire Wire Line
	1000 2550 850  2550
Connection ~ 850  2550
Wire Wire Line
	6700 5550 6550 5550
Wire Wire Line
	6700 5050 6700 5550
Wire Wire Line
	6350 5050 6700 5050
Connection ~ 6700 5300
Wire Wire Line
	5950 5050 5850 5050
Wire Wire Line
	3550 4650 4200 4650
Wire Wire Line
	4200 4650 4200 5550
Wire Wire Line
	4200 5550 5550 5550
Wire Wire Line
	4300 5050 5550 5050
Wire Wire Line
	850  3750 1000 3750
Connection ~ 850  3450
Wire Wire Line
	850  3450 1000 3450
Connection ~ 850  3650
Connection ~ 850  3550
Wire Wire Line
	850  3650 1000 3650
Connection ~ 850  3750
Connection ~ 850  3950
Connection ~ 850  3850
Wire Wire Line
	850  3850 1000 3850
Wire Wire Line
	850  3950 1000 3950
Wire Wire Line
	850  3250 850  4050
Wire Wire Line
	6100 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3400
$Comp
L GND #PWR06
U 1 1 58E835EF
P 5900 3650
F 0 "#PWR06" H 5900 3650 30  0001 C CNN
F 1 "GND" H 5900 3580 30  0001 C CNN
F 2 "" H 5900 3650 60  0000 C CNN
F 3 "" H 5900 3650 60  0000 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3000 5600 2800
Wire Wire Line
	5600 2800 6100 2800
Text Notes 6500 3600 0    60   ~ 0
12V IN
Text Notes 6500 2900 0    60   ~ 0
12V OUT
Wire Wire Line
	6100 2900 5900 2900
Wire Wire Line
	5900 2900 5900 3650
Wire Wire Line
	5900 3650 6100 3650
Wire Wire Line
	3550 4750 5300 4750
Wire Wire Line
	5300 4750 5300 3200
Wire Wire Line
	4300 5050 4300 4050
Wire Wire Line
	4300 4050 3550 4050
NoConn ~ 3550 2550
NoConn ~ 3550 2650
NoConn ~ 3550 2900
NoConn ~ 3550 3000
NoConn ~ 3550 5650
NoConn ~ 1000 3550
$EndSCHEMATC
