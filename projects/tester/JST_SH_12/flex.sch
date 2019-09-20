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
LIBS:AXT624124
LIBS:flex-cache
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
L CONN_01X06 J1
U 1 1 5D82A7AD
P 5050 3300
F 0 "J1" H 5050 3650 50  0000 C CNN
F 1 "CONN_01X06" V 5150 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 5050 3300 50  0001 C CNN
F 3 "" H 5050 3300 50  0001 C CNN
	1    5050 3300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X06 J2
U 1 1 5D82A81C
P 7350 3300
F 0 "J2" H 7350 3650 50  0000 C CNN
F 1 "CONN_01X06" V 7450 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 7350 3300 50  0001 C CNN
F 3 "" H 7350 3300 50  0001 C CNN
	1    7350 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 J3
U 1 1 5D82A8AC
P 6000 3300
F 0 "J3" H 6000 3950 50  0000 C CNN
F 1 "SM12V-SRSS" V 6100 3300 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM12B-SRSS-TB_12x1.00mm_Angled" H 6000 3300 50  0001 C CNN
F 3 "" H 6000 3300 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 J4
U 1 1 5D82A921
P 6500 3300
F 0 "J4" H 6500 3950 50  0000 C CNN
F 1 "BM12B-SRSS" V 6600 3300 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM12B-SRSS-TB_12x1.00mm_Straight" H 6500 3300 50  0001 C CNN
F 3 "" H 6500 3300 50  0001 C CNN
	1    6500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2750 6300 2750
Wire Wire Line
	5800 2850 6750 2850
Wire Wire Line
	5550 2950 6300 2950
Wire Wire Line
	5800 3050 6650 3050
Wire Wire Line
	5650 3150 6300 3150
Wire Wire Line
	5800 3250 7150 3250
Wire Wire Line
	5250 3350 6300 3350
Wire Wire Line
	5800 3450 6650 3450
Wire Wire Line
	5650 3550 6300 3550
Wire Wire Line
	5550 3750 6300 3750
Wire Wire Line
	5800 3850 6900 3850
Wire Wire Line
	5250 3050 5500 3050
Wire Wire Line
	5500 3050 5500 2750
Connection ~ 5800 2750
Wire Wire Line
	5250 3150 5550 3150
Wire Wire Line
	5550 3150 5550 2950
Connection ~ 5800 2950
Wire Wire Line
	5250 3250 5650 3250
Wire Wire Line
	5650 3250 5650 3150
Connection ~ 5800 3150
Connection ~ 5800 3350
Wire Wire Line
	5250 3450 5650 3450
Wire Wire Line
	5650 3450 5650 3550
Connection ~ 5800 3550
Wire Wire Line
	5250 3550 5550 3550
Wire Wire Line
	5550 3550 5550 3750
Connection ~ 5800 3750
Wire Wire Line
	7150 3050 6750 3050
Wire Wire Line
	6750 3050 6750 2850
Connection ~ 6300 2850
Wire Wire Line
	7150 3150 6650 3150
Wire Wire Line
	6650 3150 6650 3050
Connection ~ 6300 3050
Connection ~ 6300 3250
Wire Wire Line
	6650 3450 6650 3350
Connection ~ 6300 3450
Wire Wire Line
	6650 3350 7150 3350
Connection ~ 6300 3650
Wire Wire Line
	7150 3450 6800 3450
Wire Wire Line
	6800 3650 6800 3450
Wire Wire Line
	5800 3650 6800 3650
Wire Wire Line
	7150 3550 6900 3550
Wire Wire Line
	6900 3550 6900 3850
Connection ~ 6300 3850
Connection ~ 5800 2850
Connection ~ 5800 3050
Connection ~ 5800 3250
Connection ~ 5800 3450
Connection ~ 5800 3650
Connection ~ 5800 3850
Connection ~ 6300 3750
Connection ~ 6300 3550
Connection ~ 6300 3350
Connection ~ 6300 3150
Connection ~ 6300 2950
Connection ~ 6300 2750
$EndSCHEMATC
