EESchema Schematic File Version 2
LIBS:schematic
LIBS:base-rescue
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
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "I Can Solder!"
Date ""
Rev ""
Comp "MakersBox"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Battery BT1
U 1 1 56CFA61E
P 5200 4150
F 0 "BT1" V 5150 4200 50  0000 L CNN
F 1 "Battery" V 5350 4050 50  0000 L CNN
F 2 "footprints:BATT_CR2032" V 5200 4190 60  0001 C CNN
F 3 "" V 5200 4190 60  0000 C CNN
	1    5200 4150
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 593766DF
P 5200 3550
F 0 "D1" H 5200 3450 50  0000 C CNN
F 1 "LED" H 5200 3650 50  0000 C CNN
F 2 "footprints:LED_D5.0mm" H 5200 3550 50  0001 C CNN
F 3 "" H 5200 3550 50  0000 C CNN
	1    5200 3550
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59376ABD
P 5600 3850
F 0 "R1" H 5500 3850 50  0000 C CNN
F 1 "100" V 5600 3850 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 5530 3850 30  0001 C CNN
F 3 "" H 5600 3850 30  0000 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3550 5000 3550
Wire Wire Line
	5400 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3700
Wire Wire Line
	5600 4000 5600 4150
Wire Wire Line
	5600 4150 5350 4150
Wire Wire Line
	4700 4150 5050 4150
$Comp
L SPDT SW1
U 1 1 5A812E86
P 4700 3800
F 0 "SW1" V 4750 3650 50  0000 C CNN
F 1 "SPDT" V 4650 3650 50  0000 C CNN
F 2 "footprints:SW_Micro_SPST" H 4700 3800 60  0001 C CNN
F 3 "" H 4700 3800 60  0000 C CNN
	1    4700 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 3650 4750 3550
Wire Wire Line
	4700 4000 4700 4150
NoConn ~ 4650 3650
$EndSCHEMATC
