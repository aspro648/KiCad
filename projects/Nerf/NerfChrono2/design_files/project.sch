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
P 5600 3850
F 0 "R2" V 5680 3850 50  0000 C CNN
F 1 "100" V 5600 3850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 3850 50  0001 C CNN
F 3 "" H 5600 3850 50  0001 C CNN
	1    5600 3850
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5CA65241
P 5600 3650
F 0 "R1" V 5680 3650 50  0000 C CNN
F 1 "10K" V 5600 3650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
	1    5600 3650
	0    1    1    0   
$EndComp
Text Notes 5000 5400 0    60   ~ 0
SENSOR REFL 5MM PHOTOTRANS THRU\nON Semiconductor QRE1113-ND\nhttps://www.digikey.com/short/pjf274
$Comp
L QRE1113 U1
U 1 1 5CA659A1
P 6250 3950
F 0 "U1" H 6100 4150 50  0000 C CNN
F 1 "QRE1113" H 6250 3750 50  0000 C CNN
F 2 "footprints:QRE1113" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L QRE1113 U2
U 1 1 5CAD14BA
P 6250 4650
F 0 "U2" H 6100 4850 50  0000 C CNN
F 1 "QRE1113" H 6250 4450 50  0000 C CNN
F 2 "footprints:QRE1113" H 6500 4700 50  0001 C CNN
F 3 "" H 6500 4700 50  0001 C CNN
	1    6250 4650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5CAD14F2
P 5600 4300
F 0 "R3" V 5680 4300 50  0000 C CNN
F 1 "10K" V 5600 4300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 4300 50  0001 C CNN
F 3 "" H 5600 4300 50  0001 C CNN
	1    5600 4300
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5CAD1538
P 5600 4550
F 0 "R4" V 5680 4550 50  0000 C CNN
F 1 "100" V 5600 4550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 5CAD16A2
P 4750 4350
F 0 "J1" H 4750 4600 50  0000 C CNN
F 1 "CONN_01X04" V 4850 4350 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4750 4350 50  0001 C CNN
F 3 "" H 4750 4350 50  0001 C CNN
	1    4750 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 3850 5750 3850
Wire Wire Line
	5200 4050 5950 4050
Wire Wire Line
	5000 3850 5450 3850
Wire Wire Line
	6550 4050 6700 4050
Wire Wire Line
	6700 4050 6700 4200
Wire Wire Line
	6700 4200 5350 4200
Wire Wire Line
	5350 4200 5350 4050
Connection ~ 5350 4050
Wire Wire Line
	5100 3950 5850 3950
Wire Wire Line
	5850 3950 5850 3650
Wire Wire Line
	5750 3650 6700 3650
Wire Wire Line
	6700 3650 6700 3850
Wire Wire Line
	6700 3850 6550 3850
Connection ~ 5850 3650
Wire Wire Line
	5450 3650 5350 3650
Wire Wire Line
	5350 3650 5350 3850
Connection ~ 5350 3850
Wire Wire Line
	4950 4300 5100 4300
Wire Wire Line
	5100 4300 5100 3950
Wire Wire Line
	4950 4400 5850 4400
Wire Wire Line
	6700 4300 6700 4550
Wire Wire Line
	6700 4550 6550 4550
Wire Wire Line
	6550 4750 6700 4750
Wire Wire Line
	6700 4750 6700 4850
Wire Wire Line
	6700 4850 4950 4850
Wire Wire Line
	4950 4850 4950 4500
Wire Wire Line
	5750 4300 6700 4300
Wire Wire Line
	5850 4400 5850 4300
Connection ~ 5850 4300
Wire Wire Line
	5750 4550 5950 4550
Wire Wire Line
	4950 4200 5000 4200
Wire Wire Line
	5000 3850 5000 4550
Wire Wire Line
	5000 4550 5450 4550
Connection ~ 5000 4200
Wire Wire Line
	5450 4300 5350 4300
Wire Wire Line
	5350 4300 5350 4550
Connection ~ 5350 4550
Wire Wire Line
	5200 4050 5200 4850
Connection ~ 5200 4850
Wire Wire Line
	5950 4750 5200 4750
Connection ~ 5200 4750
Text Notes 4550 4500 0    60   ~ 0
+\nS1\nS2\n-
$EndSCHEMATC
