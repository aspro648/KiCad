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
LIBS:mini-breadboard-cache
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
NoConn ~ 3750 3900
NoConn ~ 3600 3400
$Comp
L USB_B P1
U 1 1 58E91B4D
P 3450 4000
F 0 "P1" H 3650 3800 50  0000 C CNN
F 1 "USB_B" H 3400 4200 50  0000 C CNN
F 2 "Connect:USB_B" V 3400 3900 50  0001 C CNN
F 3 "" V 3400 3900 50  0000 C CNN
	1    3450 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 58E91D1C
P 2650 4750
F 0 "P2" H 2650 5000 50  0000 C CNN
F 1 "CONN_01X04" V 2750 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2650 4750 50  0001 C CNN
F 3 "" H 2650 4750 50  0000 C CNN
	1    2650 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 4600 3800 4600
Wire Wire Line
	2850 4900 3800 4900
Wire Wire Line
	3250 4300 3250 4600
Connection ~ 3250 4600
Wire Wire Line
	3350 4300 3350 4700
Wire Wire Line
	3450 4300 3450 4800
Wire Wire Line
	3550 4300 3550 4900
Connection ~ 3550 4900
$Comp
L CONN_01X01 P3
U 1 1 58E93FA0
P 4000 4600
F 0 "P3" H 4000 4700 50  0000 C CNN
F 1 "CONN_01X01" V 4100 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4000 4600 50  0001 C CNN
F 3 "" H 4000 4600 50  0000 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 58E93FF2
P 4000 4900
F 0 "P4" H 4000 5000 50  0000 C CNN
F 1 "CONN_01X01" V 4100 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4000 4900 50  0001 C CNN
F 3 "" H 4000 4900 50  0000 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4700 2850 4700
Wire Wire Line
	3450 4800 2850 4800
$EndSCHEMATC
