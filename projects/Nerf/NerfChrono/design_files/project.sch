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
L CONN_01X03 J1
U 1 1 5CA6518B
P 5000 3950
F 0 "J1" H 5000 4150 50  0000 C CNN
F 1 "CONN_01X03" V 5100 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5000 3950 50  0001 C CNN
F 3 "" H 5000 3950 50  0001 C CNN
	1    5000 3950
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5CA651C8
P 5600 3850
F 0 "R2" V 5680 3850 50  0000 C CNN
F 1 "100" V 5600 3850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 5530 3850 50  0001 C CNN
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
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 5530 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
	1    5600 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3850 5750 3850
Wire Wire Line
	5200 4050 5950 4050
Wire Wire Line
	5200 3850 5450 3850
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
	5200 3950 5850 3950
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
Text Notes 4950 4900 0    60   ~ 0
SENSOR REFL 5MM PHOTOTRANS THRU\nON Semiconductor QRE1113-ND\nhttps://www.digikey.com/short/pjf274
$Comp
L QRE1113 U1
U 1 1 5CA659A1
P 6250 3950
F 0 "U1" H 6100 4150 50  0000 C CNN
F 1 "QRE1113" H 6250 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP4" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
