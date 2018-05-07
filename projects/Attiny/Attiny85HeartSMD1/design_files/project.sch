EESchema Schematic File Version 2
LIBS:project
LIBS:valves
LIBS:project-rescue
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
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "I Can Surface Mount Solder"
Date ""
Rev ""
Comp "www.MakersBox.us"
Comment1 "K. Olsen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 553F952C
P 2650 3800
F 0 "#PWR01" H 2650 3550 50  0001 C CNN
F 1 "GND" H 2650 3650 50  0000 C CNN
F 2 "" H 2650 3800 60  0000 C CNN
F 3 "" H 2650 3800 60  0000 C CNN
	1    2650 3800
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
P 3200 4050
F 0 "C1" H 3225 4150 50  0000 L CNN
F 1 "0.1 uF" H 3225 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3238 3900 30  0001 C CNN
F 3 "" H 3200 4050 60  0000 C CNN
	1    3200 4050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56CEB2B5
P 7250 4600
F 0 "R1" V 7330 4600 50  0000 C CNN
F 1 "330" V 7250 4600 50  0000 C CNN
F 2 "Resistors_Universal:Resistor_SMDuniversal_0805to1206_HandSoldering" V 7180 4600 30  0001 C CNN
F 3 "" H 7250 4600 30  0000 C CNN
	1    7250 4600
	0    -1   -1   0   
$EndComp
$Comp
L Battery-RESCUE-project BT1
U 1 1 56CFA61E
P 5450 4850
F 0 "BT1" H 5550 4900 50  0000 L CNN
F 1 "Battery" H 5550 4800 50  0000 L CNN
F 2 "myFootPrints:BATT_CR2032_SMD" V 5450 4890 60  0001 C CNN
F 3 "" V 5450 4890 60  0000 C CNN
	1    5450 4850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56CFDC4D
P 5600 4850
F 0 "#PWR06" H 5600 4600 50  0001 C CNN
F 1 "GND" H 5600 4700 50  0000 C CNN
F 2 "" H 5600 4850 60  0000 C CNN
F 3 "" H 5600 4850 60  0000 C CNN
	1    5600 4850
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR07
U 1 1 56CFE3AF
P 2650 4300
F 0 "#PWR07" H 2650 4150 50  0001 C CNN
F 1 "+BATT" H 2650 4440 50  0000 C CNN
F 2 "" H 2650 4300 60  0000 C CNN
F 3 "" H 2650 4300 60  0000 C CNN
	1    2650 4300
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR08
U 1 1 56DD00C2
P 7600 3050
F 0 "#PWR08" H 7600 2900 50  0001 C CNN
F 1 "+BATT" H 7600 3190 50  0000 C CNN
F 2 "" H 7600 3050 60  0000 C CNN
F 3 "" H 7600 3050 60  0000 C CNN
	1    7600 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56DD0136
P 7600 3250
F 0 "#PWR09" H 7600 3000 50  0001 C CNN
F 1 "GND" H 7600 3100 50  0000 C CNN
F 2 "" H 7600 3250 60  0000 C CNN
F 3 "" H 7600 3250 60  0000 C CNN
	1    7600 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	2650 4300 3400 4300
$Comp
L GND #PWR010
U 1 1 56ED00B6
P 7550 4000
F 0 "#PWR010" H 7550 3750 50  0001 C CNN
F 1 "GND" H 7550 3850 50  0000 C CNN
F 2 "" H 7550 4000 60  0000 C CNN
F 3 "" H 7550 4000 60  0000 C CNN
	1    7550 4000
	0    -1   -1   0   
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 58609061
P 7200 3150
F 0 "CON1" H 7095 3390 50  0000 C CNN
F 1 "AVR-ISP-6" H 6935 2920 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 6680 3190 50  0001 C CNN
F 3 "" H 7175 3150 50  0000 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3050 7050 3050
Wire Wire Line
	6450 3150 7050 3150
Wire Wire Line
	6350 3250 7050 3250
Wire Wire Line
	7300 3150 7800 3150
Wire Wire Line
	7800 3150 7800 3450
Wire Wire Line
	7600 3050 7300 3050
Wire Wire Line
	7600 3250 7300 3250
Wire Wire Line
	7800 3450 6650 3450
$Comp
L SW_PUSH SW2
U 1 1 58609F3B
P 7250 4000
F 0 "SW2" H 7400 4110 50  0000 C CNN
F 1 "SW_PUSH" H 7250 3920 50  0000 C CNN
F 2 "myFootPrints:SW_SMD_PUSH" H 7250 4000 50  0001 C CNN
F 3 "" H 7250 4000 50  0000 C CNN
	1    7250 4000
	1    0    0    -1  
$EndComp
$Comp
L SPST SW1
U 1 1 5860A0CD
P 4550 4850
F 0 "SW1" H 4550 4950 50  0000 C CNN
F 1 "SPST" H 4550 4750 50  0000 C CNN
F 2 "myFootPrints:SPST_SMD" H 4550 4850 50  0001 C CNN
F 3 "" H 4550 4850 50  0000 C CNN
	1    4550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4850 4050 4850
Wire Wire Line
	5050 4850 5300 4850
$Comp
L CONN_01X01 P1
U 1 1 5860AE9A
P 7350 5000
F 0 "P1" H 7350 5100 50  0000 C CNN
F 1 "CONN_01X01" V 7450 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x01" H 7350 5000 50  0001 C CNN
F 3 "" H 7350 5000 50  0000 C CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-S ATTINY1
U 1 1 58C478D3
P 4750 4050
F 0 "ATTINY1" H 3600 4450 50  0000 C CNN
F 1 "ATTINY85-S" H 5750 3650 50  0000 C CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 4850 4450 50  0000 C CIN
F 3 "" H 4750 4050 50  0000 C CNN
	1    4750 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 3800 3400 3800
Wire Wire Line
	3200 3900 3200 3800
Connection ~ 3200 3800
Wire Wire Line
	3200 4200 3200 4850
Connection ~ 3200 4300
Connection ~ 2650 4300
Wire Wire Line
	6100 4300 6650 4300
Wire Wire Line
	6650 3450 6650 4600
Wire Wire Line
	6100 4200 7550 4200
Wire Wire Line
	6550 4200 6550 3050
Wire Wire Line
	6100 4100 6450 4100
Wire Wire Line
	6450 4100 6450 3150
Wire Wire Line
	6100 3800 6350 3800
Wire Wire Line
	6350 3800 6350 3250
Connection ~ 6650 4300
Wire Wire Line
	7400 4600 7550 4600
Wire Wire Line
	6100 4000 6950 4000
$Comp
L LED-RESCUE-project D1
U 1 1 58C49927
P 6850 4600
F 0 "D1" H 6850 4700 50  0000 C CNN
F 1 "LED" H 6850 4500 50  0000 C CNN
F 2 "LEDs:LED-1206" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0000 C CNN
	1    6850 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 4600 7100 4600
Wire Wire Line
	7550 4600 7550 4200
Connection ~ 6550 4200
$Comp
L CONN_01X01 P2
U 1 1 5A2A0FD5
P 7050 3700
F 0 "P2" H 7050 3800 50  0000 C CNN
F 1 "CONN_01X01" V 7150 3700 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7050 3700 50  0001 C CNN
F 3 "" H 7050 3700 50  0000 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 5A2A100C
P 7250 3700
F 0 "P3" H 7250 3600 50  0000 C CNN
F 1 "CONN_01X01" V 7350 3700 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7250 3700 50  0001 C CNN
F 3 "" H 7250 3700 50  0000 C CNN
	1    7250 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A2A104D
P 7550 3700
F 0 "#PWR011" H 7550 3450 50  0001 C CNN
F 1 "GND" H 7550 3550 50  0000 C CNN
F 2 "" H 7550 3700 60  0000 C CNN
F 3 "" H 7550 3700 60  0000 C CNN
	1    7550 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3900 6800 3900
Wire Wire Line
	6800 3900 6800 3700
Wire Wire Line
	6800 3700 6850 3700
Wire Wire Line
	7450 3700 7550 3700
Text Notes 3450 5500 0    60   ~ 0
Bi-directional LED\nhttps://www.digikey.com/short/qqqqc0
NoConn ~ 7150 5000
Text Notes 7050 3850 0    60   ~ 0
Oops
Text Notes 7850 3750 0    60   ~ 0
Bridge to signal\nLED reversed
Text Notes 6100 4300 0    60   ~ 0
D4/A2\nD3/A3\nD2/A1\nD1\nD0
Text Notes 7850 3250 0    60   ~ 0
ISP Removed in\nHeart V2
$EndSCHEMATC
