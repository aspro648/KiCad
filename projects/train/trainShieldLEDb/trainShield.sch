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
LIBS:MCP23017
LIBS:w_device
LIBS:trainShield-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
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
L +12V #PWR01
U 1 1 57539A72
P 850 850
F 0 "#PWR01" H 850 700 50  0001 C CNN
F 1 "+12V" H 850 990 50  0000 C CNN
F 2 "" H 850 850 60  0000 C CNN
F 3 "" H 850 850 60  0000 C CNN
	1    850  850 
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR02
U 1 1 57539A8A
P 1100 850
F 0 "#PWR02" H 1100 700 50  0001 C CNN
F 1 "+5V" H 1100 990 50  0000 C CNN
F 2 "" H 1100 850 60  0000 C CNN
F 3 "" H 1100 850 60  0000 C CNN
	1    1100 850 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 57539AA2
P 1350 850
F 0 "#PWR03" H 1350 600 50  0001 C CNN
F 1 "GND" H 1350 700 50  0000 C CNN
F 2 "" H 1350 850 60  0000 C CNN
F 3 "" H 1350 850 60  0000 C CNN
	1    1350 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5753AA7C
P 850 850
F 0 "#FLG04" H 850 945 50  0001 C CNN
F 1 "PWR_FLAG" H 850 1030 50  0000 C CNN
F 2 "" H 850 850 60  0000 C CNN
F 3 "" H 850 850 60  0000 C CNN
	1    850  850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 5753AA9E
P 1100 850
F 0 "#FLG05" H 1100 945 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1030 50  0000 C CNN
F 2 "" H 1100 850 60  0000 C CNN
F 3 "" H 1100 850 60  0000 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 5753AAC0
P 1350 850
F 0 "#FLG06" H 1350 945 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1030 50  0000 C CNN
F 2 "" H 1350 850 60  0000 C CNN
F 3 "" H 1350 850 60  0000 C CNN
	1    1350 850 
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5883B77E
P 6900 4200
F 0 "D1" H 6900 4300 50  0000 C CNN
F 1 "LED" H 6900 4100 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 6900 4200 60  0001 C CNN
F 3 "" H 6900 4200 60  0000 C CNN
	1    6900 4200
	-1   0    0    1   
$EndComp
$Comp
L OPTO_NPN Q1
U 1 1 58857A01
P 6900 4500
F 0 "Q1" H 6850 4300 50  0000 L CNN
F 1 "OPTO_NPN" V 6750 4350 50  0000 L CNN
F 2 "myFootPrints:PHOTO_TRANS" H 6900 4500 50  0001 C CNN
F 3 "" H 6900 4500 50  0000 C CNN
	1    6900 4500
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 59D43F64
P 6900 4800
F 0 "D2" H 6900 4900 50  0000 C CNN
F 1 "LED" H 6900 4700 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 6900 4800 60  0001 C CNN
F 3 "" H 6900 4800 60  0000 C CNN
	1    6900 4800
	-1   0    0    1   
$EndComp
$Comp
L OPTO_NPN Q2
U 1 1 59D43F70
P 6900 5150
F 0 "Q2" H 6850 4950 50  0000 L CNN
F 1 "OPTO_NPN" V 6750 5000 50  0000 L CNN
F 2 "myFootPrints:PHOTO_TRANS" H 6900 5150 50  0001 C CNN
F 3 "" H 6900 5150 50  0000 C CNN
	1    6900 5150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X06 P1
U 1 1 59D4427D
P 6250 4650
F 0 "P1" H 6250 5000 50  0000 C CNN
F 1 "CONN_01X06" V 6350 4650 50  0000 C CNN
F 2 "" H 6250 4650 50  0000 C CNN
F 3 "" H 6250 4650 50  0000 C CNN
	1    6250 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 4800 6650 4800
Wire Wire Line
	6650 4800 6650 4700
Wire Wire Line
	6650 4700 6450 4700
Wire Wire Line
	6450 4600 6650 4600
Wire Wire Line
	6650 4600 6650 4400
Wire Wire Line
	6650 4400 6700 4400
Wire Wire Line
	6450 4400 6450 4200
Wire Wire Line
	6450 4200 6700 4200
Wire Wire Line
	6450 4500 6550 4500
Wire Wire Line
	6550 4500 6550 4300
Wire Wire Line
	6550 4300 7250 4300
Wire Wire Line
	7250 4200 7250 5050
Wire Wire Line
	7250 4950 6550 4950
Wire Wire Line
	6550 4950 6550 4800
Wire Wire Line
	6550 4800 6450 4800
Wire Wire Line
	6450 4900 6450 5050
Wire Wire Line
	6450 5050 6700 5050
Wire Wire Line
	7250 5050 7100 5050
Connection ~ 7250 4950
Wire Wire Line
	7100 4800 7250 4800
Connection ~ 7250 4800
Wire Wire Line
	7100 4400 7250 4400
Connection ~ 7250 4400
Wire Wire Line
	7250 4200 7100 4200
Connection ~ 7250 4300
$EndSCHEMATC
