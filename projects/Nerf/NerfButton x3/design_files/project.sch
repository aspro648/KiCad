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
Wire Wire Line
	5050 3200 5300 3200
Wire Wire Line
	5700 3200 6050 3200
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
	6050 3200 6050 3900
$Comp
L SW_Push SW2
U 1 1 5CCE3D79
P 5500 3450
F 0 "SW2" H 5550 3550 50  0000 L CNN
F 1 "SW_Push" H 5500 3390 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h9.5mm" H 5500 3650 50  0001 C CNN
F 3 "" H 5500 3650 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5CCE3DA1
P 5500 3700
F 0 "SW3" H 5550 3800 50  0000 L CNN
F 1 "SW_Push" H 5500 3640 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h9.5mm" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5CCE3DD3
P 4850 3300
F 0 "J1" H 4850 3500 50  0000 C CNN
F 1 "Conn_01x04" H 4850 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 3300 5250 3300
Wire Wire Line
	5250 3300 5250 3450
Wire Wire Line
	5250 3450 5300 3450
Wire Wire Line
	5050 3400 5150 3400
Wire Wire Line
	5150 3400 5150 3700
Wire Wire Line
	5150 3700 5300 3700
Wire Wire Line
	6050 3450 5700 3450
Wire Wire Line
	6050 3700 5700 3700
Connection ~ 6050 3450
Wire Wire Line
	6050 3900 5050 3900
Wire Wire Line
	5050 3900 5050 3500
Connection ~ 6050 3700
$EndSCHEMATC
