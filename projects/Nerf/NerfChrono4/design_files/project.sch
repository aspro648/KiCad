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
LIBS:project
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L R R2
U 1 1 5CA651C8
P 5400 4050
F 0 "R2" V 5480 4050 50  0000 C CNN
F 1 "10K" V 5400 4050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5330 4050 50  0001 C CNN
F 3 "" H 5400 4050 50  0001 C CNN
	1    5400 4050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5CAD1538
P 5650 3800
F 0 "R1" V 5730 3800 50  0000 C CNN
F 1 "100" V 5650 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5580 3800 50  0001 C CNN
F 3 "" H 5650 3800 50  0001 C CNN
	1    5650 3800
	0    1    1    0   
$EndComp
Text Notes 4550 4500 0    60   ~ 0
+\nS\n-
$Comp
L IR204A D1
U 1 1 5CB6137B
P 6000 3800
F 0 "D1" H 6020 3870 50  0000 L CNN
F 1 "IR" H 5960 3690 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6000 3975 50  0001 C CNN
F 3 "" H 5950 3800 50  0000 C CNN
	1    6000 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 3800 6650 3800
Wire Wire Line
	5800 3800 5900 3800
Wire Wire Line
	5500 3800 5150 3800
Wire Wire Line
	5150 3800 5150 4200
Wire Wire Line
	4950 4300 5650 4300
$Comp
L CONN_01X03 J1
U 1 1 5CB7AB62
P 4750 4300
F 0 "J1" H 4750 4500 50  0000 C CNN
F 1 "CONN_01X03" V 4850 4300 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 4300 50  0001 C CNN
F 3 "" H 4750 4300 50  0001 C CNN
	1    4750 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 4200 4950 4200
Wire Wire Line
	6650 3800 6650 4650
$Comp
L Q_Photo_NPN Q1
U 1 1 5CB7ACE2
P 5850 4400
F 0 "Q1" V 6050 4450 50  0000 L CNN
F 1 "Q_Photo_NPN" V 5800 3800 50  0000 L CNN
F 2 "footprints:PHOTOTRANS" H 6050 4500 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
	1    5850 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3900 5400 3800
Connection ~ 5400 3800
Wire Wire Line
	5400 4200 5400 4300
Connection ~ 5400 4300
Wire Wire Line
	6050 4300 6650 4300
Connection ~ 6650 4300
Wire Wire Line
	6650 4650 5150 4650
Wire Wire Line
	5150 4650 5150 4400
Wire Wire Line
	5150 4400 4950 4400
$EndSCHEMATC
