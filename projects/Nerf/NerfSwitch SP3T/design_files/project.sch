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
LIBS:switches
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
L SW_SP3T SW1
U 1 1 5CD0A328
P 5350 3800
F 0 "SW1" H 5350 4000 50  0000 C CNN
F 1 "SW_SP3T" H 5350 3600 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4725 3975 50  0001 C CNN
F 3 "" H 4725 3975 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 5CD0A467
P 6050 3850
F 0 "J1" H 6050 4100 50  0000 C CNN
F 1 "CONN_01X04" V 6150 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6050 3850 50  0001 C CNN
F 3 "" H 6050 3850 50  0001 C CNN
	1    6050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3700 5850 3700
Wire Wire Line
	5550 3800 5850 3800
Wire Wire Line
	5550 3900 5850 3900
Wire Wire Line
	5150 3800 5150 4000
Wire Wire Line
	5150 4000 5850 4000
$EndSCHEMATC
