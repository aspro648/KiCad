EESchema Schematic File Version 2
LIBS:schematic
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
LIBS:badgelife_shitty_connector
LIBS:project-cache
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
P 5750 3550
F 0 "R1" H 5650 3550 50  0000 C CNN
F 1 "100" V 5750 3550 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 5680 3550 30  0001 C CNN
F 3 "" H 5750 3550 30  0000 C CNN
	1    5750 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3550 5000 3550
Wire Wire Line
	5400 3550 5600 3550
$Comp
L SPDT SW1
U 1 1 5A812E86
P 4600 3500
F 0 "SW1" V 4650 3350 50  0000 C CNN
F 1 "SPDT" V 4550 3350 50  0000 C CNN
F 2 "footprints:SW_Micro_SPST" H 4600 3500 60  0001 C CNN
F 3 "" H 4600 3500 60  0000 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
NoConn ~ 4750 3450
$Comp
L Badgelife_shitty_connector X1
U 1 1 5B778995
P 4550 2850
F 0 "X1" H 4650 2650 60  0000 C CNN
F 1 "Badgelife_shitty_connector" H 4550 3250 60  0000 C CNN
F 2 "footprints:Badgelife-Shitty-2x2" H 4550 2850 60  0001 C CNN
F 3 "" H 4550 2850 60  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5B778ABC
P 4050 2750
F 0 "#PWR01" H 4050 2600 50  0001 C CNN
F 1 "VCC" H 4050 2900 50  0000 C CNN
F 2 "" H 4050 2750 50  0001 C CNN
F 3 "" H 4050 2750 50  0001 C CNN
	1    4050 2750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B778AE4
P 4050 2950
F 0 "#PWR02" H 4050 2700 50  0001 C CNN
F 1 "GND" H 4050 2800 50  0000 C CNN
F 2 "" H 4050 2950 50  0001 C CNN
F 3 "" H 4050 2950 50  0001 C CNN
	1    4050 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2750 4050 2750
Wire Wire Line
	4200 2950 4050 2950
$Comp
L VCC #PWR03
U 1 1 5B778BA9
P 4200 3500
F 0 "#PWR03" H 4200 3350 50  0001 C CNN
F 1 "VCC" H 4200 3650 50  0000 C CNN
F 2 "" H 4200 3500 50  0001 C CNN
F 3 "" H 4200 3500 50  0001 C CNN
	1    4200 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3500 4400 3500
$Comp
L GND #PWR04
U 1 1 5B778BCA
P 6100 3550
F 0 "#PWR04" H 6100 3300 50  0001 C CNN
F 1 "GND" H 6100 3400 50  0000 C CNN
F 2 "" H 6100 3550 50  0001 C CNN
F 3 "" H 6100 3550 50  0001 C CNN
	1    6100 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3550 6100 3550
NoConn ~ 5100 2750
NoConn ~ 5100 2950
Text Notes 3800 4150 0    60   ~ 0
https://hackaday.io/project/52950-defcon-26-shitty-add-ons
$EndSCHEMATC
