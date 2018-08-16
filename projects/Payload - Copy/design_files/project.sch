EESchema Schematic File Version 2
LIBS:project
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
LIBS:switches
LIBS:pcf8523
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Payload V0"
Date "2018-07-23"
Rev ""
Comp "www.MakersBox.us"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "648.ken@gmail.com"
$EndDescr
Text Label 8550 3850 0    60   ~ 0
SCL
Text Label 8550 4000 0    60   ~ 0
SDA
$Comp
L VCC #PWR012
U 1 1 5B55A48C
P 6350 3850
F 0 "#PWR012" H 6350 3700 50  0001 C CNN
F 1 "VCC" H 6350 4000 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5B55A872
P 6350 4400
F 0 "#PWR013" H 6350 4150 50  0001 C CNN
F 1 "GND" H 6350 4250 50  0000 C CNN
F 2 "" H 6350 4400 50  0001 C CNN
F 3 "" H 6350 4400 50  0001 C CNN
	1    6350 4400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B55A91C
P 6500 4200
F 0 "R3" V 6580 4200 50  0000 C CNN
F 1 "10K" V 6500 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6430 4200 50  0001 C CNN
F 3 "" H 6500 4200 50  0001 C CNN
	1    6500 4200
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5B55A9B1
P 6050 4100
F 0 "C2" H 6075 4200 50  0000 L CNN
F 1 "0.1uF" H 6075 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6088 3950 50  0001 C CNN
F 3 "" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
$Comp
L MS5803 U2
U 1 1 5B55AE7F
P 7350 4100
F 0 "U2" H 6850 4500 50  0000 C CNN
F 1 "MS5803" H 7750 3700 50  0000 C CNN
F 2 "footprints:MS5803" H 7350 3600 50  0001 C CIN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B55AF2E
P 6500 4000
F 0 "R2" V 6580 4000 50  0000 C CNN
F 1 "10K" V 6500 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6430 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6500 4000
	0    1    1    0   
$EndComp
NoConn ~ 8050 4350
NoConn ~ 8050 4200
Wire Wire Line
	8050 3850 8250 3850
Wire Wire Line
	8050 4000 8250 4000
Wire Wire Line
	6050 3850 6650 3850
Wire Wire Line
	6350 3850 6350 4200
Connection ~ 6350 4000
Wire Wire Line
	6050 4350 6650 4350
Wire Wire Line
	6350 4350 6350 4400
Wire Wire Line
	6050 3850 6050 3950
Connection ~ 6350 3850
Wire Wire Line
	6050 4250 6050 4350
Connection ~ 6350 4350
Text Notes 7150 3700 0    60   ~ 0
Pressure
$Comp
L R R10
U 1 1 5B568324
P 8400 3850
F 0 "R10" V 8300 3850 50  0000 C CNN
F 1 "0" V 8400 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8330 3850 50  0001 C CNN
F 3 "" H 8400 3850 50  0001 C CNN
	1    8400 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3850 8700 3850
$Comp
L R R11
U 1 1 5B5684B1
P 8400 4000
F 0 "R11" V 8500 4000 50  0000 C CNN
F 1 "0" V 8400 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8330 4000 50  0001 C CNN
F 3 "" H 8400 4000 50  0001 C CNN
	1    8400 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4000 8700 4000
$EndSCHEMATC
