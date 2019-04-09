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
$Comp
L CONN_01X02 J2
U 1 1 5CA6773B
P 6250 3250
F 0 "J2" H 6250 3400 50  0000 C CNN
F 1 "CONN_01X02" V 6350 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6250 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3200 6050 3200
Wire Wire Line
	5050 3300 6050 3300
$Comp
L LED D2
U 1 1 5CA67C4A
P 5650 2900
F 0 "D2" H 5650 3000 50  0000 C CNN
F 1 "LED" H 5650 2800 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
	1    5650 2900
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5CA67CC7
P 5350 2900
F 0 "R2" V 5430 2900 50  0000 C CNN
F 1 "330" V 5350 2900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5280 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3200 5150 2900
Wire Wire Line
	5150 2900 5200 2900
Connection ~ 5150 3200
Wire Wire Line
	5800 2900 5900 2900
Wire Wire Line
	5900 2900 5900 3300
Connection ~ 5900 3300
$EndSCHEMATC
