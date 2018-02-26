EESchema Schematic File Version 2
LIBS:project
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:maxim
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "MCP7940"
Date "2018-02-25"
Rev "0.0"
Comp "Maker's Box"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 900  7100 0    60   ~ 0
https://www.electronicshub.org/arduino-4-digit-7-segment-led-display/
Text Notes 900  7250 0    60   ~ 0
https://www.digikey.com/product-detail/en/adafruit-industries-llc/811/1528-1509-ND/5774235
$Comp
L Crystal Crystal1
U 1 1 5A8E64A3
P 4900 3450
F 0 "Crystal1" H 4900 3600 50  0000 C CNN
F 1 "32.768" H 4900 3300 50  0000 C CNN
F 2 "footprints:crystal_smd" H 4900 3450 50  0001 C CNN
F 3 "" H 4900 3450 50  0001 C CNN
	1    4900 3450
	0    1    1    0   
$EndComp
$Comp
L DS1307+ U1
U 1 1 5A8E6B76
P 5900 3150
F 0 "U1" H 6170 3700 50  0000 C CNN
F 1 "RTC" H 6200 2600 50  0000 C CNN
F 2 "footprints:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5900 3150 50  0001 C CNN
F 3 "" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A8E98CC
P 7250 2500
F 0 "C1" V 7200 2550 50  0000 L CNN
F 1 "0.1uF" V 7350 2550 50  0000 L CNN
F 2 "footprints:C_0603" H 7288 2350 50  0001 C CNN
F 3 "" H 7250 2500 50  0001 C CNN
	1    7250 2500
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 5A8E9B0C
P 5900 2450
F 0 "#PWR01" H 5900 2300 50  0001 C CNN
F 1 "VCC" H 5900 2600 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A90EE17
P 800 1250
F 0 "#FLG02" H 800 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5A90EF24
P 800 1750
F 0 "#FLG03" H 800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1900 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A90EF89
P 800 1250
F 0 "#PWR04" H 800 1100 50  0001 C CNN
F 1 "VCC" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A90EFEE
P 800 1750
F 0 "#PWR05" H 800 1500 50  0001 C CNN
F 1 "GND" H 800 1600 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3600 4900 3650
Wire Wire Line
	4600 3650 5150 3650
Wire Wire Line
	5150 3650 5150 3550
Wire Wire Line
	5150 3550 5300 3550
Wire Wire Line
	5300 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3250
Wire Wire Line
	5150 3250 4600 3250
Wire Wire Line
	4900 3250 4900 3300
Wire Wire Line
	6500 3450 6700 3450
Wire Wire Line
	5900 3750 5900 3900
Wire Wire Line
	5900 2500 7100 2500
Wire Wire Line
	5900 2450 5900 2550
Connection ~ 5900 2500
$Comp
L R R3
U 1 1 5A9368CC
P 4650 2350
F 0 "R3" V 4730 2350 50  0000 C CNN
F 1 "2K" V 4650 2350 50  0000 C CNN
F 2 "footprints:R_0603" V 4580 2350 50  0001 C CNN
F 3 "" H 4650 2350 50  0001 C CNN
	1    4650 2350
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5A93696B
P 4850 2350
F 0 "R2" V 4930 2350 50  0000 C CNN
F 1 "2K" V 4850 2350 50  0000 C CNN
F 2 "footprints:R_0603" V 4780 2350 50  0001 C CNN
F 3 "" H 4850 2350 50  0001 C CNN
	1    4850 2350
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR06
U 1 1 5A936A8A
P 4750 2150
F 0 "#PWR06" H 4750 2000 50  0001 C CNN
F 1 "VCC" H 4750 2300 50  0000 C CNN
F 2 "" H 4750 2150 50  0001 C CNN
F 3 "" H 4750 2150 50  0001 C CNN
	1    4750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2200 4850 2200
Wire Wire Line
	4750 2200 4750 2150
Connection ~ 4750 2200
Wire Wire Line
	4650 3050 5300 3050
Wire Wire Line
	4650 3050 4650 2500
Wire Wire Line
	5300 2850 4850 2850
Wire Wire Line
	4850 2850 4850 2500
$Comp
L C CX1
U 1 1 5A9384A5
P 4450 3250
F 0 "CX1" H 4475 3350 50  0000 L CNN
F 1 "10pF" H 4475 3150 50  0000 L CNN
F 2 "footprints:C_0603" H 4488 3100 50  0001 C CNN
F 3 "" H 4450 3250 50  0001 C CNN
	1    4450 3250
	0    1    1    0   
$EndComp
$Comp
L C CX2
U 1 1 5A9384E8
P 4450 3650
F 0 "CX2" H 4475 3750 50  0000 L CNN
F 1 "10pF" H 4475 3550 50  0000 L CNN
F 2 "footprints:C_0603" H 4488 3500 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	0    1    1    0   
$EndComp
Connection ~ 4900 3250
Connection ~ 4900 3650
Wire Wire Line
	4300 3250 4150 3250
Wire Wire Line
	4150 3250 4150 3850
Wire Wire Line
	4150 3650 4300 3650
Connection ~ 4150 3650
$Comp
L GND #PWR07
U 1 1 5A938776
P 4150 3850
F 0 "#PWR07" H 4150 3600 50  0001 C CNN
F 1 "GND" H 4150 3700 50  0000 C CNN
F 2 "" H 4150 3850 50  0001 C CNN
F 3 "" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A938796
P 5900 3900
F 0 "#PWR08" H 5900 3650 50  0001 C CNN
F 1 "GND" H 5900 3750 50  0000 C CNN
F 2 "" H 5900 3900 50  0001 C CNN
F 3 "" H 5900 3900 50  0001 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A9387B6
P 7400 2500
F 0 "#PWR09" H 7400 2250 50  0001 C CNN
F 1 "GND" H 7400 2350 50  0000 C CNN
F 2 "" H 7400 2500 50  0001 C CNN
F 3 "" H 7400 2500 50  0001 C CNN
	1    7400 2500
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 5A93903A
P 7150 3450
F 0 "D1" H 7150 3550 50  0000 C CNN
F 1 "D_Schottky" H 7150 3350 50  0000 C CNN
F 2 "footprints:D_0603" H 7150 3450 50  0001 C CNN
F 3 "" H 7150 3450 50  0001 C CNN
	1    7150 3450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A939071
P 6850 3450
F 0 "R1" V 6930 3450 50  0000 C CNN
F 1 "1K" V 6850 3450 50  0000 C CNN
F 2 "footprints:R_0603" V 6780 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5A9391E2
P 6700 3750
F 0 "C2" H 6725 3850 50  0000 L CNN
F 1 "100pF" H 6725 3650 50  0000 L CNN
F 2 "footprints:C_0603" H 6738 3600 50  0001 C CNN
F 3 "" H 6700 3750 50  0001 C CNN
	1    6700 3750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5A93929E
P 6700 3900
F 0 "#PWR010" H 6700 3650 50  0001 C CNN
F 1 "GND" H 6700 3750 50  0000 C CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3450 6700 3600
$Comp
L Conn_01x04 JR1
U 1 1 5A939751
P 5250 4600
F 0 "JR1" H 5250 4800 50  0000 C CNN
F 1 "Conn_01x04" H 5250 4300 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x04_Pitch2.54mm" H 5250 4600 50  0001 C CNN
F 3 "" H 5250 4600 50  0001 C CNN
	1    5250 4600
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x04 JL1
U 1 1 5A939A54
P 5000 4600
F 0 "JL1" H 5000 4800 50  0000 C CNN
F 1 "Conn_01x04" H 5000 4300 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x04_Pitch2.54mm" H 5000 4600 50  0001 C CNN
F 3 "" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5A939B18
P 5550 4500
F 0 "#PWR011" H 5550 4350 50  0001 C CNN
F 1 "VCC" H 5550 4650 50  0000 C CNN
F 2 "" H 5550 4500 50  0001 C CNN
F 3 "" H 5550 4500 50  0001 C CNN
	1    5550 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5A939B47
P 4700 4800
F 0 "#PWR012" H 4700 4550 50  0001 C CNN
F 1 "GND" H 4700 4650 50  0000 C CNN
F 2 "" H 4700 4800 50  0001 C CNN
F 3 "" H 4700 4800 50  0001 C CNN
	1    4700 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3450 7500 3450
Text Label 7350 3450 0    60   ~ 0
VBAT
Text Label 4550 4700 0    60   ~ 0
VBAT
Wire Wire Line
	5650 4800 5450 4800
Wire Wire Line
	5650 4700 5450 4700
Wire Wire Line
	5650 4600 5450 4600
Text Label 5450 4800 0    60   ~ 0
SDA
Text Label 5450 4700 0    60   ~ 0
SCL
Text Label 5450 4600 0    60   ~ 0
MFP
Wire Wire Line
	6500 2850 6750 2850
Text Label 6550 2850 0    60   ~ 0
MFP
Text Label 5150 2850 0    60   ~ 0
SCL
Text Label 5150 3050 0    60   ~ 0
SDA
$Comp
L R R4
U 1 1 5A93A18F
P 6900 2850
F 0 "R4" V 6980 2850 50  0000 C CNN
F 1 "10K" V 6900 2850 50  0000 C CNN
F 2 "footprints:R_0603" V 6830 2850 50  0001 C CNN
F 3 "" H 6900 2850 50  0001 C CNN
	1    6900 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 2850 7050 2850
Wire Wire Line
	7050 2850 7050 2500
Connection ~ 7050 2500
$Comp
L Conn_01x01 P1
U 1 1 5A93ABE2
P 7700 3450
F 0 "P1" H 7850 3450 50  0000 C CNN
F 1 "Pin" H 7700 3350 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 3450 50  0001 C CNN
F 3 "" H 7700 3450 50  0001 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 P2
U 1 1 5A93AC8C
P 7700 3950
F 0 "P2" H 7850 3950 50  0000 C CNN
F 1 "Pin" H 7700 3850 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A93ACD1
P 7500 3950
F 0 "#PWR013" H 7500 3700 50  0001 C CNN
F 1 "GND" H 7500 3800 50  0000 C CNN
F 2 "" H 7500 3950 50  0001 C CNN
F 3 "" H 7500 3950 50  0001 C CNN
	1    7500 3950
	0    1    1    0   
$EndComp
$Comp
L Conn_01x01 P4
U 1 1 5A93B466
P 7700 4350
F 0 "P4" H 7850 4350 50  0000 C CNN
F 1 "Pin" H 7700 4250 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 4350 50  0001 C CNN
F 3 "" H 7700 4350 50  0001 C CNN
	1    7700 4350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 P3
U 1 1 5A93B4D6
P 7700 4150
F 0 "P3" H 7850 4150 50  0000 C CNN
F 1 "Pin" H 7700 4050 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 4150 50  0001 C CNN
F 3 "" H 7700 4150 50  0001 C CNN
	1    7700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3950 7500 4350
Connection ~ 7500 4150
Wire Wire Line
	5450 4500 5550 4500
Wire Wire Line
	4550 4700 4800 4700
Wire Wire Line
	4700 4800 4800 4800
NoConn ~ 4800 4600
NoConn ~ 4800 4500
$EndSCHEMATC
