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
Raspberry Pi Intervalometer
$Comp
L DS1307+ U1
U 1 1 57E74DCC
P 5950 3600
F 0 "U1" H 6220 4150 60  0000 C CNN
F 1 "DS1307+" H 6250 3050 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5950 3600 60  0001 C CNN
F 3 "" H 5950 3600 60  0000 C CNN
	1    5950 3600
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 57E74E71
P 6950 4050
F 0 "BT1" H 7050 4100 50  0000 L CNN
F 1 "Battery" H 7050 4000 50  0000 L CNN
F 2 "myFootPrints:BATT_12mm_TH" V 6950 4090 60  0001 C CNN
F 3 "" V 6950 4090 60  0000 C CNN
	1    6950 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57E74F7A
P 6450 4500
F 0 "#PWR02" H 6450 4500 30  0001 C CNN
F 1 "GND" H 6450 4430 30  0001 C CNN
F 2 "" H 6450 4500 60  0000 C CNN
F 3 "" H 6450 4500 60  0000 C CNN
	1    6450 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 57E75025
P 850 2450
F 0 "#PWR03" H 850 2300 50  0001 C CNN
F 1 "VCC" H 850 2600 50  0000 C CNN
F 2 "" H 850 2450 60  0000 C CNN
F 3 "" H 850 2450 60  0000 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 57E75040
P 5950 2850
F 0 "#PWR04" H 5950 2700 50  0001 C CNN
F 1 "VCC" H 5950 3000 50  0000 C CNN
F 2 "" H 5950 2850 60  0000 C CNN
F 3 "" H 5950 2850 60  0000 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L Crystal 32.768
U 1 1 57E75102
P 4850 3900
F 0 "32.768" H 4850 4050 50  0000 C CNN
F 1 "Crystal" H 4850 3750 50  0000 C CNN
F 2 "Crystals:Crystal_Watch" H 4850 3900 60  0001 C CNN
F 3 "" H 4850 3900 60  0000 C CNN
	1    4850 3900
	0    1    1    0   
$EndComp
$Comp
L C_Small 0.1
U 1 1 57E756BE
P 6200 2900
F 0 "0.1" H 6210 2970 50  0000 L CNN
F 1 "C_Small" H 6210 2820 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 6200 2900 60  0001 C CNN
F 3 "" H 6200 2900 60  0000 C CNN
	1    6200 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 57E75847
P 6450 2900
F 0 "#PWR05" H 6450 2900 30  0001 C CNN
F 1 "GND" H 6450 2830 30  0001 C CNN
F 2 "" H 6450 2900 60  0000 C CNN
F 3 "" H 6450 2900 60  0000 C CNN
	1    6450 2900
	0    -1   -1   0   
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
L GND #PWR06
U 1 1 57EDC3BA
P 6700 5300
F 0 "#PWR06" H 6700 5300 30  0001 C CNN
F 1 "GND" H 6700 5230 30  0001 C CNN
F 2 "" H 6700 5300 60  0000 C CNN
F 3 "" H 6700 5300 60  0000 C CNN
	1    6700 5300
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 57EDCD88
P 4150 3200
F 0 "P1" H 4150 3450 50  0000 C CNN
F 1 "CONN_01X04" V 4250 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 4150 3200 60  0001 C CNN
F 3 "" H 4150 3200 60  0000 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 57EDCE62
P 3950 3150
F 0 "#PWR07" H 3950 3150 30  0001 C CNN
F 1 "GND" H 3950 3080 30  0001 C CNN
F 2 "" H 3950 3150 60  0000 C CNN
F 3 "" H 3950 3150 60  0000 C CNN
	1    3950 3150
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR08
U 1 1 57EDCEC3
P 3950 3050
F 0 "#PWR08" H 3950 2900 50  0001 C CNN
F 1 "VCC" H 3950 3200 50  0000 C CNN
F 2 "" H 3950 3050 60  0000 C CNN
F 3 "" H 3950 3050 60  0000 C CNN
	1    3950 3050
	0    -1   -1   0   
$EndComp
NoConn ~ 6550 3300
$Comp
L ATTINY85-S IC1
U 1 1 57FDAA68
P 8700 2750
F 0 "IC1" H 7550 3150 40  0000 C CNN
F 1 "ATTINY85-S" H 9700 2350 40  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 9650 2750 35  0000 C CIN
F 3 "" H 8700 2750 60  0000 C CNN
	1    8700 2750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 57FDB8C4
P 10050 2500
F 0 "#PWR09" H 10050 2350 50  0001 C CNN
F 1 "VCC" H 10050 2650 50  0000 C CNN
F 2 "" H 10050 2500 60  0000 C CNN
F 3 "" H 10050 2500 60  0000 C CNN
	1    10050 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 57FDB8F0
P 10050 3000
F 0 "#PWR010" H 10050 3000 30  0001 C CNN
F 1 "GND" H 10050 2930 30  0001 C CNN
F 2 "" H 10050 3000 60  0000 C CNN
F 3 "" H 10050 3000 60  0000 C CNN
	1    10050 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 57FDCB99
P 6950 3300
F 0 "R2" V 7030 3300 50  0000 C CNN
F 1 "330" V 6950 3300 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6880 3300 30  0001 C CNN
F 3 "" H 6950 3300 30  0000 C CNN
	1    6950 3300
	-1   0    0    1   
$EndComp
$Comp
L Q_NPN_EBC Q1
U 1 1 581E5E19
P 8550 3750
F 0 "Q1" H 8850 3800 50  0000 R CNN
F 1 "Q_NPN_EBC" H 9150 3700 50  0000 R CNN
F 2 "myFootPrints:TO-92_NPN_EBC_wide" H 8750 3850 29  0001 C CNN
F 3 "" H 8550 3750 60  0000 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 581E5E7B
P 8200 3750
F 0 "R3" V 8280 3750 50  0000 C CNN
F 1 "330" V 8200 3750 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 8130 3750 30  0001 C CNN
F 3 "" H 8200 3750 30  0000 C CNN
	1    8200 3750
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR011
U 1 1 581E5F74
P 8650 3550
F 0 "#PWR011" H 8650 3400 50  0001 C CNN
F 1 "VCC" H 8650 3700 50  0000 C CNN
F 2 "" H 8650 3550 60  0000 C CNN
F 3 "" H 8650 3550 60  0000 C CNN
	1    8650 3550
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 581E5FB8
P 8650 4100
F 0 "R4" V 8730 4100 50  0000 C CNN
F 1 "100" V 8650 4100 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 8580 4100 30  0001 C CNN
F 3 "" H 8650 4100 30  0000 C CNN
	1    8650 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 581E6036
P 8650 4250
F 0 "#PWR012" H 8650 4250 30  0001 C CNN
F 1 "GND" H 8650 4180 30  0001 C CNN
F 2 "" H 8650 4250 60  0000 C CNN
F 3 "" H 8650 4250 60  0000 C CNN
	1    8650 4250
	1    0    0    -1  
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
Text Notes 7150 2800 0    60   ~ 0
D3
Text Notes 7150 2700 0    60   ~ 0
D2
Text Notes 7150 2600 0    60   ~ 0
D1
Text Notes 7150 2500 0    60   ~ 0
D0
Text Notes 7150 2900 0    60   ~ 0
D4
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
	6550 3900 6950 3900
Wire Wire Line
	6950 4400 6950 4200
Wire Wire Line
	5950 4400 6950 4400
Wire Wire Line
	5950 4400 5950 4200
Wire Wire Line
	6450 4500 6450 4400
Connection ~ 6450 4400
Wire Wire Line
	1000 2550 850  2550
Connection ~ 850  2550
Wire Wire Line
	5950 2850 5950 3000
Wire Wire Line
	4400 3300 5350 3300
Wire Wire Line
	4400 3300 4400 2650
Wire Wire Line
	4400 2650 3550 2650
Wire Wire Line
	3550 2550 4500 2550
Wire Wire Line
	4500 2550 4500 3500
Wire Wire Line
	4500 3500 5350 3500
Wire Wire Line
	5350 3800 5150 3800
Wire Wire Line
	5150 3800 5150 3700
Wire Wire Line
	5150 3700 4850 3700
Wire Wire Line
	4850 3700 4850 3750
Wire Wire Line
	4850 4050 4850 4100
Wire Wire Line
	4850 4100 5150 4100
Wire Wire Line
	5150 4100 5150 4000
Wire Wire Line
	5150 4000 5350 4000
Wire Wire Line
	5950 2900 6100 2900
Connection ~ 5950 2900
Wire Wire Line
	6300 2900 6450 2900
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
	3950 3250 3700 3250
Wire Wire Line
	3700 3250 3700 2900
Wire Wire Line
	3700 2900 3550 2900
Wire Wire Line
	3550 3000 3650 3000
Wire Wire Line
	3650 3000 3650 3350
Wire Wire Line
	3650 3350 3950 3350
Wire Wire Line
	4400 5050 5550 5050
Wire Wire Line
	4400 5050 4400 4050
Wire Wire Line
	4400 4050 3550 4050
Wire Wire Line
	4850 2300 4850 3500
Connection ~ 4850 3500
Wire Wire Line
	4950 3300 4950 2600
Wire Wire Line
	4950 2600 6800 2600
Wire Wire Line
	6800 2600 6800 2700
Wire Wire Line
	6800 2700 7350 2700
Connection ~ 4950 3300
Wire Wire Line
	7350 3000 7150 3000
Wire Wire Line
	6950 2600 7350 2600
Wire Wire Line
	7350 2800 6950 2800
Wire Wire Line
	6950 2800 6950 3150
Wire Wire Line
	6950 3450 7400 3450
Wire Wire Line
	7400 3450 7400 4750
Wire Wire Line
	7400 4750 5950 4750
Wire Wire Line
	5950 4750 5950 5050
Wire Wire Line
	7050 2900 7350 2900
Wire Wire Line
	4300 2400 4300 4750
Wire Wire Line
	4300 4750 3550 4750
Wire Wire Line
	3550 5650 7650 5650
Wire Wire Line
	7650 5650 7650 3250
Wire Wire Line
	7650 3250 7150 3250
Wire Wire Line
	7150 3250 7150 3000
Wire Wire Line
	7050 2900 7050 3350
Wire Wire Line
	7050 3350 7500 3350
Wire Wire Line
	7500 3350 7500 3750
Wire Wire Line
	7500 3750 8050 3750
Wire Wire Line
	6950 2600 6950 2400
Wire Wire Line
	6950 2400 4300 2400
Wire Wire Line
	7350 2500 7050 2500
Wire Wire Line
	7050 2500 7050 2300
Wire Wire Line
	7050 2300 4850 2300
Wire Wire Line
	1000 3750 850  3750
Connection ~ 850  3450
Wire Wire Line
	1000 3450 850  3450
Connection ~ 850  3650
Connection ~ 850  3550
Wire Wire Line
	1000 3550 850  3550
Wire Wire Line
	1000 3650 850  3650
Connection ~ 850  3750
Connection ~ 850  3950
Connection ~ 850  3850
Wire Wire Line
	1000 3850 850  3850
Wire Wire Line
	850  3950 1000 3950
Wire Wire Line
	850  3250 850  4050
$EndSCHEMATC
