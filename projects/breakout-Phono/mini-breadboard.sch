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
$Comp
L JACK_2P J1
U 1 1 58E98517
P 3200 3650
F 0 "J1" H 2850 3450 50  0000 C CNN
F 1 "JACK_2P" H 3050 3900 50  0000 C CNN
F 2 "myFootPrints:rca_yellow" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0000 C CNN
	1    3200 3650
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 58E98A6E
P 3950 4500
F 0 "P2" H 3950 4700 50  0000 C CNN
F 1 "CONN_01X03" V 4050 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3950 4500 50  0001 C CNN
F 3 "" H 3950 4500 50  0000 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 58E98B8F
P 2550 4500
F 0 "P1" H 2550 4700 50  0000 C CNN
F 1 "CONN_01X03" V 2650 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2550 4500 50  0001 C CNN
F 3 "" H 2550 4500 50  0000 C CNN
	1    2550 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4400 3100 4400
Wire Wire Line
	3100 4400 3750 4400
Wire Wire Line
	2750 4500 3200 4500
Wire Wire Line
	3200 4500 3750 4500
Wire Wire Line
	2750 4600 3350 4600
Wire Wire Line
	3350 4600 3750 4600
Wire Wire Line
	3100 4100 3100 4400
Connection ~ 3100 4400
Wire Wire Line
	3200 4100 3200 4500
Connection ~ 3200 4500
Wire Wire Line
	3350 4100 3350 4600
Connection ~ 3350 4600
$EndSCHEMATC
