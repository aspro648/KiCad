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
LIBS:q_photo_npn
LIBS:MCU_Module
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
L LED D1
U 1 1 5ED938B9
P 5400 4100
F 0 "D1" H 5400 4200 50  0000 C CNN
F 1 "IR" H 5400 4000 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5ED9391E
P 5650 4100
F 0 "D2" H 5650 4200 50  0000 C CNN
F 1 "LED" H 5650 4000 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5650 4100 50  0001 C CNN
F 3 "" H 5650 4100 50  0001 C CNN
	1    5650 4100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5ED93A75
P 5400 4450
F 0 "R1" V 5480 4450 50  0000 C CNN
F 1 "100" V 5400 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5330 4450 50  0001 C CNN
F 3 "" H 5400 4450 50  0001 C CNN
	1    5400 4450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5ED93A99
P 5650 4450
F 0 "R2" V 5730 4450 50  0000 C CNN
F 1 "330" V 5650 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5580 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5ED93C37
P 6150 4100
F 0 "R3" V 6230 4100 50  0000 C CNN
F 1 "10K" V 6150 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
Text Label 5900 5450 1    60   ~ 0
SIG2
Text Label 5800 5450 1    60   ~ 0
LED2
Text Label 5600 5450 1    60   ~ 0
SIG1
Text Label 5400 5450 1    60   ~ 0
VCC
Text Label 5700 5450 1    60   ~ 0
LED1
$Comp
L CONN_01X06 J1
U 1 1 5ED94494
P 5650 5650
F 0 "J1" H 5650 6000 50  0000 C CNN
F 1 "CONN_01X06" V 5750 5650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 5650 5650 50  0001 C CNN
F 3 "" H 5650 5650 50  0001 C CNN
	1    5650 5650
	0    -1   1    0   
$EndComp
Text Label 5500 5450 1    60   ~ 0
GND
$Comp
L Q_Photo_NPN_EC Q1
U 1 1 5ED96641
P 6050 4600
F 0 "Q1" H 6250 4650 50  0000 L CNN
F 1 "PHOTO" H 6250 4550 50  0000 L CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6250 4700 50  0001 C CNN
F 3 "" H 6050 4600 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J2
U 1 1 5ED96B5D
P 5650 3050
F 0 "J2" H 5650 3300 50  0000 C CNN
F 1 "CONN_01X04" V 5750 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5650 3050 50  0001 C CNN
F 3 "" H 5650 3050 50  0001 C CNN
	1    5650 3050
	0    -1   -1   0   
$EndComp
Text Notes 5350 2550 0    60   ~ 0
Connect to\nsecond board.
Wire Wire Line
	5400 4300 5400 4250
Wire Wire Line
	5650 4300 5650 4250
Wire Wire Line
	5400 3950 5400 3850
Wire Wire Line
	5650 3850 5650 3950
Wire Wire Line
	5400 4600 5400 5450
Wire Wire Line
	5100 4800 5400 4800
Wire Wire Line
	5650 4800 5650 4600
Connection ~ 5400 4800
Wire Wire Line
	5400 3850 5850 3850
Wire Wire Line
	5850 3850 5850 4900
Wire Wire Line
	4900 4900 6150 4900
Wire Wire Line
	5500 4900 5500 5450
Connection ~ 5650 3850
Wire Wire Line
	5600 5000 5600 5450
Wire Wire Line
	5100 3700 5100 4800
Wire Wire Line
	5100 3700 6150 3700
Wire Wire Line
	6150 4900 6150 4800
Connection ~ 5850 4900
Wire Wire Line
	6500 5000 5600 5000
Wire Wire Line
	6500 4350 6500 5000
Wire Wire Line
	6150 3700 6150 3950
Wire Wire Line
	6150 4250 6150 4400
Wire Wire Line
	6500 4350 6150 4350
Connection ~ 6150 4350
Wire Wire Line
	4900 4900 4900 3500
Wire Wire Line
	4900 3500 5600 3500
Wire Wire Line
	5600 3500 5600 3250
Connection ~ 5500 4900
Wire Wire Line
	5500 3250 5500 3400
Wire Wire Line
	5500 3400 4800 3400
Wire Wire Line
	4800 3400 4800 5000
Wire Wire Line
	4800 5000 5400 5000
Connection ~ 5400 5000
Wire Wire Line
	5700 5450 5700 4800
Wire Wire Line
	5700 4800 5650 4800
Wire Wire Line
	5700 3250 5700 3500
Wire Wire Line
	5700 3500 6650 3500
Wire Wire Line
	6650 3500 6650 5100
Wire Wire Line
	6650 5100 5800 5100
Wire Wire Line
	5800 5100 5800 5450
Wire Wire Line
	5800 3250 5800 3400
Wire Wire Line
	5800 3400 6750 3400
Wire Wire Line
	6750 3400 6750 5200
Wire Wire Line
	6750 5200 5900 5200
Wire Wire Line
	5900 5200 5900 5450
Wire Notes Line
	5650 2800 5650 2600
Text Notes 5450 6150 0    60   ~ 0
Connect to\nArduino
Wire Notes Line
	5650 5800 5650 5950
$Comp
L Arduino_UNO_R3 A1
U 1 1 5EF9225D
P 2500 3450
F 0 "A1" H 2100 4375 50  0000 L BNN
F 1 "Arduino_UNO_R3" H 2700 2400 50  0000 L TNN
F 2 "footprints:Arduino_UNO_R3_WithMountingHoles" H 2500 3450 50  0001 C CIN
F 3 "" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
