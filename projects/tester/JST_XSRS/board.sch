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
L CONN_01X04 J1
U 1 1 5D82A146
P 5850 2750
F 0 "J1" H 5850 3000 50  0000 C CNN
F 1 "JST_XSR_04" V 5950 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM04B-SRSS-TB_04x1.00mm_Straight" H 5850 2750 50  0001 C CNN
F 3 "" H 5850 2750 50  0001 C CNN
	1    5850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2800 6200 2800
Wire Wire Line
	4050 2900 5650 2900
$Comp
L CONN_01X02 J4
U 1 1 5F99F5BB
P 6400 2750
F 0 "J4" H 6400 2900 50  0000 C CNN
F 1 "JST_XSR_02" V 6500 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_SH_BM02B-SRSS-TB_02x1.00mm_Straight" H 6400 2750 50  0001 C CNN
F 3 "" H 6400 2750 50  0001 C CNN
	1    6400 2750
	1    0    0    1   
$EndComp
Connection ~ 5650 2700
$Comp
L CONN_01X04 J2
U 1 1 5F99FBA3
P 3850 2750
F 0 "J2" H 3850 3000 50  0000 C CNN
F 1 "PICO_04" V 3950 2750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53048-0410_04x1.25mm_Angled" H 3850 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 2700 6200 2700
Wire Wire Line
	4050 2600 5650 2600
Connection ~ 5650 2800
$Comp
L CONN_01X02 J3
U 1 1 5F9AD7D7
P 3350 2750
F 0 "J3" H 3350 2900 50  0000 C CNN
F 1 "PICO_02" V 3450 2750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53048-0210_02x1.25mm_Angled" H 3350 2750 50  0001 C CNN
F 3 "" H 3350 2750 50  0001 C CNN
	1    3350 2750
	-1   0    0    -1  
$EndComp
Connection ~ 4050 2700
Connection ~ 4050 2800
$EndSCHEMATC
