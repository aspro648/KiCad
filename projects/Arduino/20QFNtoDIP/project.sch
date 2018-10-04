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
LIBS:ftdi
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
L FT231XS U2
U 1 1 5BB502B8
P 6050 3750
F 0 "U2" H 5500 4550 50  0000 L CNN
F 1 "FT231XS" H 6350 4550 50  0000 L CNN
F 2 "SMD_Packages:SSOP-20" H 6050 3750 50  0001 C CNN
F 3 "" H 6050 3750 50  0001 C CNN
	1    6050 3750
	-1   0    0    -1  
$EndComp
$Comp
L FT231XQ U1
U 1 1 5BB502F2
P 3600 3750
F 0 "U1" H 3050 4550 50  0000 L CNN
F 1 "FT231XQ" H 3850 4550 50  0000 L CNN
F 2 "Housings_DFN_QFN:QFN-20-1EP_4x4mm_Pitch0.5mm" H 3600 3750 50  0001 C CNN
F 3 "" H 3600 3750 50  0001 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
Text Notes 3900 4600 0    60   ~ 0
QFN20
Text Notes 6300 4600 0    60   ~ 0
SOP20
Wire Wire Line
	4300 3150 5350 3150
Wire Wire Line
	4300 3250 5350 3250
Wire Wire Line
	4300 3350 5350 3350
Wire Wire Line
	4300 3450 5350 3450
Wire Wire Line
	4300 3550 5350 3550
Wire Wire Line
	4300 3650 5350 3650
Wire Wire Line
	4300 3750 5350 3750
Wire Wire Line
	4300 3850 5350 3850
Wire Wire Line
	4300 4050 5350 4050
Wire Wire Line
	4300 4150 5350 4150
Wire Wire Line
	4300 4250 5350 4250
Wire Wire Line
	4300 4350 5350 4350
Wire Wire Line
	3700 2850 3700 2800
Wire Wire Line
	3700 2800 5950 2800
Wire Wire Line
	5950 2800 5950 2850
Wire Wire Line
	3500 2850 3500 2750
Wire Wire Line
	3500 2750 6150 2750
Wire Wire Line
	6150 2750 6150 2850
Wire Wire Line
	2900 3150 2900 2700
Wire Wire Line
	2900 2700 6750 2700
Wire Wire Line
	6750 2700 6750 3150
Wire Wire Line
	2900 3450 2850 3450
Wire Wire Line
	2850 3450 2850 2650
Wire Wire Line
	2850 2650 6850 2650
Wire Wire Line
	6850 2650 6850 3450
Wire Wire Line
	6850 3450 6750 3450
Wire Wire Line
	2900 3550 2800 3550
Wire Wire Line
	2800 3550 2800 2600
Wire Wire Line
	2800 2600 6900 2600
Wire Wire Line
	6900 2600 6900 3550
Wire Wire Line
	6900 3550 6750 3550
Wire Wire Line
	3700 4650 3700 5000
Wire Wire Line
	3500 4700 6150 4700
Wire Wire Line
	5950 4700 5950 4650
Wire Wire Line
	6150 4700 6150 4650
Connection ~ 5950 4700
Wire Wire Line
	3600 4700 3600 4650
Connection ~ 3700 4700
Wire Wire Line
	3500 4700 3500 4650
Connection ~ 3600 4700
Wire Wire Line
	2900 3750 2900 4750
Wire Wire Line
	2900 4750 6800 4750
Wire Wire Line
	6800 4750 6800 3750
Wire Wire Line
	6800 3750 6750 3750
$Comp
L GND #PWR01
U 1 1 5BB512A0
P 3700 5000
F 0 "#PWR01" H 3700 4750 50  0001 C CNN
F 1 "GND" H 3700 4850 50  0000 C CNN
F 2 "" H 3700 5000 50  0001 C CNN
F 3 "" H 3700 5000 50  0001 C CNN
	1    3700 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
