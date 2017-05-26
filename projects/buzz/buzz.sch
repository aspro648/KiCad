EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:buzz-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Buzz"
Date ""
Rev "0"
Comp "Soldering Sunday"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 553C1258
P 5050 2900
F 0 "D1" H 5050 3000 50  0000 C CNN
F 1 "LED" H 5050 2800 50  0000 C CNN
F 2 "myFootPrints:LED_10MM" H 5050 2900 60  0001 C CNN
F 3 "" H 5050 2900 60  0000 C CNN
	1    5050 2900
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 553C12C2
P 4550 2900
F 0 "D2" H 4550 3000 50  0000 C CNN
F 1 "LED" V 4550 2800 50  0000 C CNN
F 2 "myFootPrints:LED_10MM" H 4550 2900 60  0001 C CNN
F 3 "" H 4550 2900 60  0000 C CNN
	1    4550 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 553C137C
P 5050 2300
F 0 "R1" V 5130 2300 50  0000 C CNN
F 1 "220" V 5050 2300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4980 2300 30  0001 C CNN
F 3 "" H 5050 2300 30  0000 C CNN
	1    5050 2300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 553C13EB
P 4550 2300
F 0 "R2" V 4630 2300 50  0000 C CNN
F 1 "220" V 4550 2300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4480 2300 30  0001 C CNN
F 3 "" H 4550 2300 30  0000 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P1
U 1 1 553C14F6
P 4800 3900
F 0 "P1" H 4800 4450 50  0000 C CNN
F 1 "CONN_01X10" V 4900 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 4800 3900 60  0001 C CNN
F 3 "" H 4800 3900 60  0000 C CNN
	1    4800 3900
	0    1    1    0   
$EndComp
$Comp
L SPEAKER SP1
U 1 1 553C154A
P 6000 2500
F 0 "SP1" H 5900 2750 50  0000 C CNN
F 1 "SPKR" H 5900 2250 50  0000 C CNN
F 2 "myFootPrints:PS1240_piezo" H 6000 2500 60  0001 C CNN
F 3 "" H 6000 2500 60  0000 C CNN
	1    6000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3700 5050 3100
Wire Wire Line
	5050 2700 5050 2450
Wire Wire Line
	4950 3700 4950 3300
Wire Wire Line
	4950 3300 4550 3300
Wire Wire Line
	4550 3300 4550 3100
Wire Wire Line
	4550 2700 4550 2450
Wire Wire Line
	5150 3700 5150 3300
Wire Wire Line
	5150 3300 5400 3300
Wire Wire Line
	5400 3300 5400 2600
Wire Wire Line
	5400 2600 5700 2600
Wire Wire Line
	5400 1850 5400 2400
Wire Wire Line
	4250 1850 5400 1850
Wire Wire Line
	4250 1850 4250 3450
Wire Wire Line
	4250 3450 4650 3450
Wire Wire Line
	4650 3450 4650 3700
Wire Wire Line
	5050 2150 5050 1850
Connection ~ 5050 1850
Wire Wire Line
	4550 2150 4550 1850
Connection ~ 4550 1850
NoConn ~ 4350 3700
NoConn ~ 4450 3700
NoConn ~ 4550 3700
NoConn ~ 4750 3700
NoConn ~ 4850 3700
NoConn ~ 5250 3700
Wire Wire Line
	5400 2400 5700 2400
$EndSCHEMATC
