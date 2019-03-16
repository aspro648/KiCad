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
LIBS:badgelife_shitty_connector
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Flatland"
Date "2018-08-16"
Rev ""
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Battery BT1
U 1 1 56CFA61E
P 4750 3750
F 0 "BT1" V 4900 3800 50  0000 L CNN
F 1 "Battery" V 4600 3650 50  0000 L CNN
F 2 "footprints:BATT_CR2032_SMD" V 4750 3790 60  0001 C CNN
F 3 "" V 4750 3790 60  0000 C CNN
	1    4750 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 56CFDC4D
P 5000 3750
F 0 "#PWR01" H 5000 3500 50  0001 C CNN
F 1 "GND" H 5000 3600 50  0000 C CNN
F 2 "" H 5000 3750 60  0000 C CNN
F 3 "" H 5000 3750 60  0000 C CNN
	1    5000 3750
	0    -1   -1   0   
$EndComp
$Comp
L +BATT #PWR02
U 1 1 5B752537
P 4400 3750
F 0 "#PWR02" H 4400 3600 50  0001 C CNN
F 1 "+BATT" H 4400 3890 50  0000 C CNN
F 2 "" H 4400 3750 60  0000 C CNN
F 3 "" H 4400 3750 60  0000 C CNN
	1    4400 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 3750 4600 3750
$Comp
L CONN_01X01 PP1
U 1 1 5C8B3D58
P 4450 3950
F 0 "PP1" H 4550 3950 50  0000 C CNN
F 1 "CONN_01X01" V 4550 3950 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4450 3950 50  0001 C CNN
F 3 "" H 4450 3950 50  0000 C CNN
	1    4450 3950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 PP2
U 1 1 5C8B43E0
P 4450 3550
F 0 "PP2" H 4550 3550 50  0000 C CNN
F 1 "CONN_01X01" V 4550 3550 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4450 3550 50  0001 C CNN
F 3 "" H 4450 3550 50  0000 C CNN
	1    4450 3550
	0    -1   -1   0   
$EndComp
Connection ~ 4450 3750
Wire Wire Line
	4900 3750 5000 3750
Connection ~ 4950 3750
$Comp
L CONN_01X01 PG2
U 1 1 5C8B7C5B
P 4950 3550
F 0 "PG2" H 5050 3550 50  0000 C CNN
F 1 "CONN_01X01" V 5050 3550 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4950 3550 50  0001 C CNN
F 3 "" H 4950 3550 50  0000 C CNN
	1    4950 3550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 PG1
U 1 1 5C8B7C87
P 4950 3950
F 0 "PG1" H 5050 3950 50  0000 C CNN
F 1 "CONN_01X01" V 5050 3950 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 4950 3950 50  0001 C CNN
F 3 "" H 4950 3950 50  0000 C CNN
	1    4950 3950
	0    1    1    0   
$EndComp
$EndSCHEMATC
