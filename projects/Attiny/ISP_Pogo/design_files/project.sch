EESchema Schematic File Version 2
LIBS:schematic
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
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Pogo"
Date "2018-05-16"
Rev "0.1"
Comp "MakersBox"
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
P 6050 3400
F 0 "#PWR05" H 6050 3250 50  0001 C CNN
F 1 "+BATT" H 6050 3540 50  0000 C CNN
F 2 "" H 6050 3400 60  0000 C CNN
F 3 "" H 6050 3400 60  0000 C CNN
	1    6050 3400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56DD0136
P 5250 3600
F 0 "#PWR06" H 5250 3350 50  0001 C CNN
F 1 "GND" H 5250 3450 50  0000 C CNN
F 2 "" H 5250 3600 60  0000 C CNN
F 3 "" H 5250 3600 60  0000 C CNN
	1    5250 3600
	0    -1   -1   0   
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 58609061
P 4850 3500
F 0 "CON1" H 4745 3740 50  0000 C CNN
F 1 "AVR-ISP-6" H 4585 3270 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 4330 3540 50  0001 C CNN
F 3 "" H 4825 3500 50  0000 C CNN
	1    4850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	4950 3500 5650 3500
Wire Wire Line
	4950 3400 6050 3400
Wire Wire Line
	5250 3600 4950 3600
$Comp
L AVR-ISP-6 CON2
U 1 1 5AA202EB
P 4900 4250
F 0 "CON2" H 4795 4490 50  0000 C CNN
F 1 "AVR-ISP-6" H 4635 4020 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 4380 4290 50  0001 C CNN
F 3 "" H 4875 4250 50  0000 C CNN
	1    4900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4250 5500 4250
Wire Wire Line
	5500 4250 5500 3500
Wire Wire Line
	4750 4150 4200 4150
Wire Wire Line
	4200 4150 4200 3400
Wire Wire Line
	4200 3400 4700 3400
Wire Wire Line
	4000 4250 4750 4250
Wire Wire Line
	4000 4250 4000 3500
Wire Wire Line
	4000 3500 4700 3500
Wire Wire Line
	4750 4350 3850 4350
Wire Wire Line
	3850 4350 3850 3600
Wire Wire Line
	3850 3600 4700 3600
$Comp
L GND #PWR07
U 1 1 5AA20351
P 6000 4350
F 0 "#PWR07" H 6000 4100 50  0001 C CNN
F 1 "GND" H 6000 4200 50  0000 C CNN
F 2 "" H 6000 4350 60  0000 C CNN
F 3 "" H 6000 4350 60  0000 C CNN
	1    6000 4350
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR08
U 1 1 5AA20362
P 5300 4150
F 0 "#PWR08" H 5300 4000 50  0001 C CNN
F 1 "+BATT" H 5300 4290 50  0000 C CNN
F 2 "" H 5300 4150 60  0000 C CNN
F 3 "" H 5300 4150 60  0000 C CNN
	1    5300 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4150 5300 4150
Wire Wire Line
	5000 4350 6000 4350
$Comp
L LED D1
U 1 1 5AA20546
P 5950 3700
F 0 "D1" H 5950 3800 50  0000 C CNN
F 1 "LED" H 5950 3600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5950 3700 50  0001 C CNN
F 3 "" H 5950 3700 50  0000 C CNN
	1    5950 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5AA20593
P 5950 4100
F 0 "R1" V 6030 4100 50  0000 C CNN
F 1 "330" V 5950 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5880 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0000 C CNN
	1    5950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4350 5950 4250
Connection ~ 5950 4350
Connection ~ 5950 3400
$Comp
L LED D2
U 1 1 5AA206DD
P 5650 3700
F 0 "D2" H 5650 3800 50  0000 C CNN
F 1 "LED" H 5650 3600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5650 3700 50  0001 C CNN
F 3 "" H 5650 3700 50  0000 C CNN
	1    5650 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5AA20729
P 5650 4100
F 0 "R2" V 5730 4100 50  0000 C CNN
F 1 "330" V 5650 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5580 4100 50  0001 C CNN
F 3 "" H 5650 4100 50  0000 C CNN
	1    5650 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 5950 3500
Wire Wire Line
	5650 4250 5650 4350
Connection ~ 5650 4350
Wire Wire Line
	5650 3950 5650 3900
Wire Wire Line
	5950 3900 5950 3950
Connection ~ 5500 3500
$EndSCHEMATC
