EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:maxim
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
L CC56-12CGKWA U?
U 1 1 5A8E2847
P 6250 4250
F 0 "U?" H 5300 4700 50  0000 C CNN
F 1 "CC56-12CGKWA" H 7020 4700 50  0000 C CNN
F 2 "Displays_7-Segment:CA56-12CGKWA" H 6250 3650 50  0001 C CNN
F 3 "" H 5870 4280 50  0001 C CNN
	1    6250 4250
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-PU U?
U 1 1 5A8E29D7
P 3450 3250
F 0 "U?" H 2700 4500 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 3850 1850 50  0000 L BNN
F 2 "DIL28" H 3450 3250 50  0001 C CIN
F 3 "" H 3450 3250 50  0001 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
Text Notes 900  7100 0    60   ~ 0
https://www.electronicshub.org/arduino-4-digit-7-segment-led-display/
Wire Wire Line
	4450 3950 5150 3950
Wire Wire Line
	4450 4050 5150 4050
Wire Wire Line
	4450 4150 5150 4150
Wire Wire Line
	4450 4250 5150 4250
Wire Wire Line
	4450 4350 5150 4350
Wire Wire Line
	4450 4450 5150 4450
Wire Wire Line
	4450 2150 5050 2150
Wire Wire Line
	5050 2150 5050 4550
Wire Wire Line
	5050 4550 5150 4550
Wire Wire Line
	4450 2250 4950 2250
Wire Wire Line
	4950 2250 4950 4650
Wire Wire Line
	4950 4650 5150 4650
$Comp
L Q_NPN_EBC Q?
U 1 1 5A8E2E4D
P 8150 3900
F 0 "Q?" V 8100 3700 50  0000 L CNN
F 1 "2N2222" V 8000 3500 50  0000 L CNN
F 2 "" H 8350 4000 50  0001 C CNN
F 3 "" H 8150 3900 50  0001 C CNN
	1    8150 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A8E30A1
P 7800 3800
F 0 "R?" V 7880 3800 50  0000 C CNN
F 1 "R" V 7800 3800 50  0000 C CNN
F 2 "" V 7730 3800 50  0001 C CNN
F 3 "" H 7800 3800 50  0001 C CNN
	1    7800 3800
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q?
U 1 1 5A8E34C6
P 8400 4300
F 0 "Q?" V 8350 4100 50  0000 L CNN
F 1 "2N2222" V 8250 3900 50  0000 L CNN
F 2 "" H 8600 4400 50  0001 C CNN
F 3 "" H 8400 4300 50  0001 C CNN
	1    8400 4300
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A8E34CC
P 7800 4200
F 0 "R?" V 7880 4200 50  0000 C CNN
F 1 "R" V 7800 4200 50  0000 C CNN
F 2 "" V 7730 4200 50  0001 C CNN
F 3 "" H 7800 4200 50  0001 C CNN
	1    7800 4200
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q?
U 1 1 5A8E35C2
P 8650 4650
F 0 "Q?" V 8600 4450 50  0000 L CNN
F 1 "2N2222" V 8500 4250 50  0000 L CNN
F 2 "" H 8850 4750 50  0001 C CNN
F 3 "" H 8650 4650 50  0001 C CNN
	1    8650 4650
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A8E35C8
P 7800 4550
F 0 "R?" V 7880 4550 50  0000 C CNN
F 1 "R" V 7800 4550 50  0000 C CNN
F 2 "" V 7730 4550 50  0001 C CNN
F 3 "" H 7800 4550 50  0001 C CNN
	1    7800 4550
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q?
U 1 1 5A8E35CE
P 8950 5050
F 0 "Q?" V 8900 4850 50  0000 L CNN
F 1 "2N2222" V 8800 4650 50  0000 L CNN
F 2 "" H 9150 5150 50  0001 C CNN
F 3 "" H 8950 5050 50  0001 C CNN
	1    8950 5050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A8E35D4
P 7800 4950
F 0 "R?" V 7880 4950 50  0000 C CNN
F 1 "R" V 7800 4950 50  0000 C CNN
F 2 "" V 7730 4950 50  0001 C CNN
F 3 "" H 7800 4950 50  0001 C CNN
	1    7800 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4350 7450 4350
Wire Wire Line
	7500 3800 7500 4350
Wire Wire Line
	7500 3800 7650 3800
Wire Wire Line
	7600 4450 7450 4450
Wire Wire Line
	7600 4200 7600 4450
Wire Wire Line
	7600 4200 7650 4200
Wire Wire Line
	7950 4200 8200 4200
Wire Wire Line
	7950 4550 8450 4550
Wire Wire Line
	7950 4950 8750 4950
Wire Wire Line
	7450 4550 7650 4550
Wire Wire Line
	7450 4650 7600 4650
Wire Wire Line
	7600 4650 7600 4950
Wire Wire Line
	7600 4950 7650 4950
Wire Wire Line
	8350 3800 9500 3800
Wire Wire Line
	9500 3800 9500 5150
$Comp
L GND #PWR?
U 1 1 5A8E3F05
P 9500 5150
F 0 "#PWR?" H 9500 4900 50  0001 C CNN
F 1 "GND" H 9500 5000 50  0000 C CNN
F 2 "" H 9500 5150 50  0001 C CNN
F 3 "" H 9500 5150 50  0001 C CNN
	1    9500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4950 9500 4950
Connection ~ 9500 4950
Wire Wire Line
	8850 4550 9500 4550
Connection ~ 9500 4550
Wire Wire Line
	8600 4200 9500 4200
Connection ~ 9500 4200
$Comp
L R R?
U 1 1 5A8E4028
P 6450 5150
F 0 "R?" V 6530 5150 50  0000 C CNN
F 1 "R" V 6450 5150 50  0000 C CNN
F 2 "" V 6380 5150 50  0001 C CNN
F 3 "" H 6450 5150 50  0001 C CNN
	1    6450 5150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A8E4095
P 6450 5350
F 0 "R?" V 6530 5350 50  0000 C CNN
F 1 "R" V 6450 5350 50  0000 C CNN
F 2 "" V 6380 5350 50  0001 C CNN
F 3 "" H 6450 5350 50  0001 C CNN
	1    6450 5350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A8E40F4
P 6450 5550
F 0 "R?" V 6530 5550 50  0000 C CNN
F 1 "R" V 6450 5550 50  0000 C CNN
F 2 "" V 6380 5550 50  0001 C CNN
F 3 "" H 6450 5550 50  0001 C CNN
	1    6450 5550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5A8E412F
P 6450 5750
F 0 "R?" V 6530 5750 50  0000 C CNN
F 1 "R" V 6450 5750 50  0000 C CNN
F 2 "" V 6380 5750 50  0001 C CNN
F 3 "" H 6450 5750 50  0001 C CNN
	1    6450 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4100 8150 5150
Wire Wire Line
	8150 5150 6600 5150
Wire Wire Line
	6600 5350 8400 5350
Wire Wire Line
	8400 5350 8400 4500
Wire Wire Line
	8650 4850 8650 5550
Wire Wire Line
	8650 5550 6600 5550
Wire Wire Line
	6600 5750 8950 5750
Wire Wire Line
	8950 5750 8950 5250
Wire Wire Line
	4450 2350 4850 2350
Wire Wire Line
	4850 2350 4850 5150
Wire Wire Line
	4850 5150 6300 5150
Wire Wire Line
	4450 2450 4750 2450
Wire Wire Line
	4750 2450 4750 5350
Wire Wire Line
	4750 5350 6300 5350
Wire Wire Line
	4450 2550 4650 2550
Wire Wire Line
	4650 2550 4650 5550
Wire Wire Line
	4650 5550 6300 5550
Wire Wire Line
	4450 2750 4550 2750
Wire Wire Line
	4550 2750 4550 5750
Wire Wire Line
	4550 5750 6300 5750
Text Notes 900  7250 0    60   ~ 0
https://www.digikey.com/product-detail/en/adafruit-industries-llc/811/1528-1509-ND/5774235
$Comp
L Crystal 32.768
U 1 1 5A8E64A3
P 6500 2500
F 0 "32.768" H 6500 2650 50  0000 C CNN
F 1 "Crystal" H 6500 2350 50  0000 C CNN
F 2 "" H 6500 2500 50  0001 C CNN
F 3 "" H 6500 2500 50  0001 C CNN
	1    6500 2500
	0    1    1    0   
$EndComp
$Comp
L DS1307+ U?
U 1 1 5A8E6B76
P 7500 2200
F 0 "U?" H 7770 2750 50  0000 C CNN
F 1 "DS1307+" H 7800 1650 50  0000 C CNN
F 2 "" H 7500 2200 50  0001 C CNN
F 3 "" H 7500 2200 50  0001 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3400 6050 3400
Wire Wire Line
	6050 3400 6050 2100
Wire Wire Line
	6050 2100 6900 2100
Wire Wire Line
	4450 3500 6150 3500
Wire Wire Line
	6150 3500 6150 1900
Wire Wire Line
	6150 1900 6900 1900
Wire Wire Line
	6500 2650 6500 2700
Wire Wire Line
	6500 2700 6750 2700
Wire Wire Line
	6750 2700 6750 2600
Wire Wire Line
	6750 2600 6900 2600
Wire Wire Line
	6900 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2300
Wire Wire Line
	6750 2300 6500 2300
Wire Wire Line
	6500 2300 6500 2350
NoConn ~ 8100 1900
$Comp
L Battery_Cell BT?
U 1 1 5A8E7D04
P 8200 2700
F 0 "BT?" H 8300 2800 50  0000 L CNN
F 1 "Battery_Cell" H 8300 2700 50  0000 L CNN
F 2 "" V 8200 2760 50  0001 C CNN
F 3 "" V 8200 2760 50  0001 C CNN
	1    8200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2500 8200 2500
Wire Wire Line
	7500 2800 7500 2950
Wire Wire Line
	7500 2950 8450 2950
Wire Wire Line
	8200 2950 8200 2800
$Comp
L GND #PWR?
U 1 1 5A8E8270
P 8200 2950
F 0 "#PWR?" H 8200 2700 50  0001 C CNN
F 1 "GND" H 8200 2800 50  0000 C CNN
F 2 "" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0001 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5A8E9132
P 2350 4600
F 0 "#PWR?" H 2350 4350 50  0001 C CNN
F 1 "GND" H 2350 4450 50  0000 C CNN
F 2 "" H 2350 4600 50  0001 C CNN
F 3 "" H 2350 4600 50  0001 C CNN
	1    2350 4600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A8E98CC
P 8450 1750
F 0 "C?" H 8475 1850 50  0000 L CNN
F 1 "C" H 8475 1650 50  0000 L CNN
F 2 "" H 8488 1600 50  0001 C CNN
F 3 "" H 8450 1750 50  0001 C CNN
	1    8450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2950 8450 1900
Connection ~ 8200 2950
Wire Wire Line
	7500 1600 8450 1600
$Comp
L VCC #PWR?
U 1 1 5A8E9B0C
P 7500 1600
F 0 "#PWR?" H 7500 1450 50  0001 C CNN
F 1 "VCC" H 7500 1750 50  0000 C CNN
F 2 "" H 7500 1600 50  0001 C CNN
F 3 "" H 7500 1600 50  0001 C CNN
	1    7500 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5A8E9B54
P 2350 2150
F 0 "#PWR?" H 2350 2000 50  0001 C CNN
F 1 "VCC" H 2350 2300 50  0000 C CNN
F 2 "" H 2350 2150 50  0001 C CNN
F 3 "" H 2350 2150 50  0001 C CNN
	1    2350 2150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A8E9F35
P 2350 2300
F 0 "C?" H 2375 2400 50  0000 L CNN
F 1 "C" H 2375 2200 50  0000 L CNN
F 2 "" H 2388 2150 50  0001 C CNN
F 3 "" H 2350 2300 50  0001 C CNN
	1    2350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2150 2350 2150
Wire Wire Line
	2350 2450 2350 4600
Wire Wire Line
	2350 4350 2550 4350
Connection ~ 2350 4350
Wire Wire Line
	2550 4450 2350 4450
Connection ~ 2350 4450
NoConn ~ 2550 2450
NoConn ~ 2550 2750
$EndSCHEMATC
