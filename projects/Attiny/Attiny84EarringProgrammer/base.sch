EESchema Schematic File Version 2
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
LIBS:MMA8452Q
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Pixel Pal Base"
Date ""
Rev ""
Comp "Soldering Sunday"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG01
U 1 1 553FAE81
P 900 900
F 0 "#FLG01" H 900 995 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1080 50  0000 C CNN
F 2 "" H 900 900 60  0000 C CNN
F 3 "" H 900 900 60  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 553FAEA5
P 1250 900
F 0 "#FLG02" H 1250 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1080 50  0000 C CNN
F 2 "" H 1250 900 60  0000 C CNN
F 3 "" H 1250 900 60  0000 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 553FAEE7
P 1250 1000
F 0 "#PWR03" H 1250 750 50  0001 C CNN
F 1 "GND" H 1250 850 50  0000 C CNN
F 2 "" H 1250 1000 60  0000 C CNN
F 3 "" H 1250 1000 60  0000 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 553FAF12
P 900 1000
F 0 "#PWR04" H 900 850 50  0001 C CNN
F 1 "+BATT" H 900 1140 50  0000 C CNN
F 2 "" H 900 1000 60  0000 C CNN
F 3 "" H 900 1000 60  0000 C CNN
	1    900  1000
	-1   0    0    1   
$EndComp
$Comp
L +BATT #PWR05
U 1 1 56DD00C2
P 8400 1200
F 0 "#PWR05" H 8400 1050 50  0001 C CNN
F 1 "+BATT" H 8400 1340 50  0000 C CNN
F 2 "" H 8400 1200 60  0000 C CNN
F 3 "" H 8400 1200 60  0000 C CNN
	1    8400 1200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56DD0136
P 8400 1500
F 0 "#PWR06" H 8400 1250 50  0001 C CNN
F 1 "GND" H 8400 1350 50  0000 C CNN
F 2 "" H 8400 1500 60  0000 C CNN
F 3 "" H 8400 1500 60  0000 C CNN
	1    8400 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	5150 1500 7600 1500
Wire Wire Line
	5750 1200 7600 1200
Wire Wire Line
	5650 1350 7600 1350
Wire Wire Line
	5850 1600 8850 1600
$Comp
L CONN_01X01 P3
U 1 1 56ECD16B
P 8200 1200
F 0 "P3" H 8200 1300 50  0000 C CNN
F 1 "VCC" H 8000 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8200 1200 60  0001 C CNN
F 3 "" H 8200 1200 60  0000 C CNN
	1    8200 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 56ECD1EE
P 8200 1350
F 0 "P5" H 8200 1450 50  0000 C CNN
F 1 "MOSI" H 8000 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8200 1350 60  0001 C CNN
F 3 "" H 8200 1350 60  0000 C CNN
	1    8200 1350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 56ECD24D
P 8200 1500
F 0 "P7" H 8200 1600 50  0000 C CNN
F 1 "GND" H 8000 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 8200 1500 60  0001 C CNN
F 3 "" H 8200 1500 60  0000 C CNN
	1    8200 1500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 56ECD3EF
P 7800 1500
F 0 "P6" H 7800 1600 50  0000 C CNN
F 1 "RST" H 7600 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7800 1500 60  0001 C CNN
F 3 "" H 7800 1500 60  0000 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 56ECD3F5
P 7800 1350
F 0 "P4" H 7800 1450 50  0000 C CNN
F 1 "SCK" H 7600 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7800 1350 60  0001 C CNN
F 3 "" H 7800 1350 60  0000 C CNN
	1    7800 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 56ECD3FB
P 7800 1200
F 0 "P2" H 7800 1300 50  0000 C CNN
F 1 "MISO" H 7550 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7800 1200 60  0001 C CNN
F 3 "" H 7800 1200 60  0000 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1600 8600 1350
Wire Wire Line
	8600 1350 8400 1350
$Comp
L AVR-ISP-6 CON1
U 1 1 57F46F3D
P 8000 1950
F 0 "CON1" H 7895 2190 50  0000 C CNN
F 1 "AVR-ISP-6" H 7735 1720 50  0000 L BNN
F 2 "Housings_DIP:DIP-6_W7.62mm" V 7480 1990 50  0001 C CNN
F 3 "" H 7975 1950 60  0000 C CNN
	1    8000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1850 7200 1850
Wire Wire Line
	7200 1850 7200 1200
Connection ~ 7200 1200
Wire Wire Line
	7850 1950 7100 1950
Wire Wire Line
	7100 1950 7100 1350
Connection ~ 7100 1350
Wire Wire Line
	7850 2050 7000 2050
Wire Wire Line
	7000 2050 7000 1500
Connection ~ 7000 1500
$Comp
L +BATT #PWR07
U 1 1 57F4713A
P 8450 1850
F 0 "#PWR07" H 8450 1700 50  0001 C CNN
F 1 "+BATT" H 8450 1990 50  0000 C CNN
F 2 "" H 8450 1850 60  0000 C CNN
F 3 "" H 8450 1850 60  0000 C CNN
	1    8450 1850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 57F47178
P 8450 2050
F 0 "#PWR08" H 8450 1800 50  0001 C CNN
F 1 "GND" H 8450 1900 50  0000 C CNN
F 2 "" H 8450 2050 60  0000 C CNN
F 3 "" H 8450 2050 60  0000 C CNN
	1    8450 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 1950 8850 1950
Wire Wire Line
	8850 1950 8850 1600
Connection ~ 8600 1600
Wire Wire Line
	8450 1850 8100 1850
Wire Wire Line
	8450 2050 8100 2050
$EndSCHEMATC
