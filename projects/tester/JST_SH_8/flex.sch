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
L CONN_01X08 J4
U 1 1 5D82A057
P 6650 3300
F 0 "J4" H 6650 3750 50  0000 C CNN
F 1 "CONN_01X08" V 6750 3300 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM08B-SRSS-TB_08x1.00mm_Straight" H 6650 3300 50  0001 C CNN
F 3 "" H 6650 3300 50  0001 C CNN
	1    6650 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 J3
U 1 1 5D82A10B
P 6050 3300
F 0 "J3" H 6050 3750 50  0000 C CNN
F 1 "CONN_01X08" V 6150 3300 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_SM08B-SRSS-TB_08x1.00mm_Angled" H 6050 3300 50  0001 C CNN
F 3 "" H 6050 3300 50  0001 C CNN
	1    6050 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 5D82A146
P 5400 3100
F 0 "J1" H 5400 3350 50  0000 C CNN
F 1 "CONN_01X04" V 5500 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 5400 3100 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J2
U 1 1 5D82A1D9
P 5000 3250
F 0 "J2" H 5000 3500 50  0000 C CNN
F 1 "CONN_01X04" V 5100 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.00mm" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2950 6450 2950
Connection ~ 5850 2950
Connection ~ 5850 3050
Connection ~ 5850 3150
Connection ~ 5850 3250
Connection ~ 5850 3350
Connection ~ 5850 3450
Connection ~ 5850 3550
Connection ~ 5850 3650
Wire Wire Line
	5200 3050 5600 3050
Wire Wire Line
	5600 3050 5600 3150
Wire Wire Line
	5600 3150 6450 3150
Wire Wire Line
	5200 3150 5550 3150
Wire Wire Line
	5550 3150 5550 3350
Wire Wire Line
	5550 3350 6450 3350
Wire Wire Line
	5200 3250 5450 3250
Wire Wire Line
	5450 3250 5450 3550
Wire Wire Line
	5450 3550 6450 3550
Wire Wire Line
	4800 3100 4800 3000
Wire Wire Line
	4800 3000 5850 3000
Wire Wire Line
	5850 3000 5850 3050
Wire Wire Line
	4800 3200 5650 3200
Wire Wire Line
	5650 3200 5650 3250
Wire Wire Line
	5650 3250 6450 3250
Wire Wire Line
	4800 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3450
Wire Wire Line
	5500 3450 6450 3450
Wire Wire Line
	4800 3400 5400 3400
Wire Wire Line
	5400 3400 5400 3650
Wire Wire Line
	5400 3650 6450 3650
Wire Wire Line
	5850 3050 6450 3050
$EndSCHEMATC
