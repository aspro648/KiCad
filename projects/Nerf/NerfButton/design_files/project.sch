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
L CONN_01X02 J1
U 1 1 5CA675A4
P 4850 3250
F 0 "J1" H 4850 3400 50  0000 C CNN
F 1 "CONN_01X02" V 4950 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4850 3250 50  0001 C CNN
F 3 "" H 4850 3250 50  0001 C CNN
	1    4850 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 3200 5300 3200
Wire Wire Line
	5700 3200 6050 3200
Wire Wire Line
	5050 3300 6050 3300
$Comp
L SW_Push SW1
U 1 1 5CAD0858
P 5500 3200
F 0 "SW1" H 5550 3300 50  0000 L CNN
F 1 "SW_Push" H 5500 3140 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h9.5mm" H 5500 3400 50  0001 C CNN
F 3 "" H 5500 3400 50  0001 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3300 6050 3200
$EndSCHEMATC
