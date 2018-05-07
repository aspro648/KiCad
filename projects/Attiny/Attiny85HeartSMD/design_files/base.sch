EESchema Schematic File Version 2
LIBS:project
LIBS:base-rescue
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
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "I Can Surface Mount Solder"
Date "2018-04-29"
Rev "0.1"
Comp "www.MakersBox.us"
Comment1 "K. Olsen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 553F952C
P 2850 3950
F 0 "#PWR01" H 2850 3700 50  0001 C CNN
F 1 "GND" H 2850 3800 50  0000 C CNN
F 2 "" H 2850 3950 60  0000 C CNN
F 3 "" H 2850 3950 60  0000 C CNN
	1    2850 3950
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 553FAE81
P 900 900
F 0 "#FLG02" H 900 995 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1080 50  0000 C CNN
F 2 "" H 900 900 60  0000 C CNN
F 3 "" H 900 900 60  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 553FAEA5
P 1250 900
F 0 "#FLG03" H 1250 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1080 50  0000 C CNN
F 2 "" H 1250 900 60  0000 C CNN
F 3 "" H 1250 900 60  0000 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 553FAEE7
P 1250 1000
F 0 "#PWR04" H 1250 750 50  0001 C CNN
F 1 "GND" H 1250 850 50  0000 C CNN
F 2 "" H 1250 1000 60  0000 C CNN
F 3 "" H 1250 1000 60  0000 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR05
U 1 1 553FAF12
P 900 1000
F 0 "#PWR05" H 900 850 50  0001 C CNN
F 1 "+BATT" H 900 1140 50  0000 C CNN
F 2 "" H 900 1000 60  0000 C CNN
F 3 "" H 900 1000 60  0000 C CNN
	1    900  1000
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 553FDF53
P 3400 4200
F 0 "C1" H 3425 4300 50  0000 L CNN
F 1 "0.1 uF" H 3425 4100 50  0000 L CNN
F 2 "footprints:C_1206_HandSoldering" H 3438 4050 30  0001 C CNN
F 3 "" H 3400 4200 60  0000 C CNN
	1    3400 4200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56CEB2B5
P 7450 4750
F 0 "R1" V 7530 4750 50  0000 C CNN
F 1 "330" V 7450 4750 50  0000 C CNN
F 2 "footprints:R_1206_HandSoldering" V 7380 4750 30  0001 C CNN
F 3 "" H 7450 4750 30  0000 C CNN
	1    7450 4750
	0    -1   -1   0   
$EndComp
$Comp
L Battery-RESCUE-base BT1
U 1 1 56CFA61E
P 5650 5000
F 0 "BT1" H 5750 5050 50  0000 L CNN
F 1 "Battery" H 5750 4950 50  0000 L CNN
F 2 "footprints:BATT_CR2032_SMD" V 5650 5040 60  0001 C CNN
F 3 "" V 5650 5040 60  0000 C CNN
	1    5650 5000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56CFDC4D
P 5800 5000
F 0 "#PWR06" H 5800 4750 50  0001 C CNN
F 1 "GND" H 5800 4850 50  0000 C CNN
F 2 "" H 5800 5000 60  0000 C CNN
F 3 "" H 5800 5000 60  0000 C CNN
	1    5800 5000
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR07
U 1 1 56CFE3AF
P 2850 4450
F 0 "#PWR07" H 2850 4300 50  0001 C CNN
F 1 "+BATT" H 2850 4590 50  0000 C CNN
F 2 "" H 2850 4450 60  0000 C CNN
F 3 "" H 2850 4450 60  0000 C CNN
	1    2850 4450
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR08
U 1 1 56DD00C2
P 7800 3200
F 0 "#PWR08" H 7800 3050 50  0001 C CNN
F 1 "+BATT" H 7800 3340 50  0000 C CNN
F 2 "" H 7800 3200 60  0000 C CNN
F 3 "" H 7800 3200 60  0000 C CNN
	1    7800 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56DD0136
P 7800 3400
F 0 "#PWR09" H 7800 3150 50  0001 C CNN
F 1 "GND" H 7800 3250 50  0000 C CNN
F 2 "" H 7800 3400 60  0000 C CNN
F 3 "" H 7800 3400 60  0000 C CNN
	1    7800 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	2850 4450 3600 4450
$Comp
L AVR-ISP-6 CON1
U 1 1 58609061
P 7400 3300
F 0 "CON1" H 7295 3540 50  0000 C CNN
F 1 "AVR-ISP-6" H 7135 3070 50  0000 L BNN
F 2 "footprints:AVR-ISP-6" V 6880 3340 50  0001 C CNN
F 3 "" H 7375 3300 50  0000 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 7250 3200
Wire Wire Line
	6550 3300 7250 3300
Wire Wire Line
	6450 3400 7250 3400
Wire Wire Line
	7500 3300 8000 3300
Wire Wire Line
	8000 3300 8000 3950
Wire Wire Line
	7800 3200 7500 3200
Wire Wire Line
	7800 3400 7500 3400
Wire Wire Line
	8000 3950 6750 3950
$Comp
L SPST SW1
U 1 1 5860A0CD
P 4750 5000
F 0 "SW1" H 4750 5100 50  0000 C CNN
F 1 "SPST" H 4750 4900 50  0000 C CNN
F 2 "footprints:SPST_SMD" H 4750 5000 50  0001 C CNN
F 3 "" H 4750 5000 50  0000 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5000 4250 5000
Wire Wire Line
	5250 5000 5500 5000
$Comp
L CONN_01X01 P1
U 1 1 5860AE9A
P 7550 5150
F 0 "P1" H 7550 5250 50  0000 C CNN
F 1 "CONN_01X01" V 7650 5150 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01" H 7550 5150 50  0001 C CNN
F 3 "" H 7550 5150 50  0000 C CNN
	1    7550 5150
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-S U1
U 1 1 58C478D3
P 4950 4200
F 0 "U1" H 3800 4600 50  0000 C CNN
F 1 "ATTINY85" H 5950 3800 50  0000 C CNN
F 2 "footprints:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 5050 4600 50  0000 C CIN
F 3 "" H 4950 4200 50  0000 C CNN
	1    4950 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3950 3600 3950
Wire Wire Line
	3400 4050 3400 3950
Connection ~ 3400 3950
Wire Wire Line
	3400 4350 3400 5000
Connection ~ 3400 4450
Connection ~ 2850 4450
Wire Wire Line
	6300 4450 6750 4450
Wire Wire Line
	6750 3950 6750 4750
Wire Wire Line
	6300 4350 6650 4350
Wire Wire Line
	6650 4350 6650 3200
Wire Wire Line
	6300 4250 6550 4250
Wire Wire Line
	6550 4250 6550 3300
Wire Wire Line
	6300 3950 6450 3950
Wire Wire Line
	6450 3950 6450 3400
Connection ~ 6750 4450
Wire Wire Line
	7600 4750 8000 4750
Wire Wire Line
	6300 4150 6950 4150
$Comp
L LED-RESCUE-base D1
U 1 1 58C49927
P 7050 4750
F 0 "D1" H 7050 4850 50  0000 C CNN
F 1 "LED" H 7050 4650 50  0000 C CNN
F 2 "LEDs:LED-1206" H 7050 4750 50  0001 C CNN
F 3 "" H 7050 4750 50  0000 C CNN
	1    7050 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 4750 6850 4750
Wire Wire Line
	7250 4750 7300 4750
Text Label 6350 4450 0    60   ~ 0
D0
Text Label 6350 4350 0    60   ~ 0
D1
Text Label 6350 4250 0    60   ~ 0
D2
Text Label 6350 4150 0    60   ~ 0
D3
Wire Wire Line
	6300 4050 8000 4050
Wire Wire Line
	8000 4050 8000 4750
Text Label 6350 4050 0    60   ~ 0
D4
NoConn ~ 7350 5150
NoConn ~ 6950 4150
$EndSCHEMATC
