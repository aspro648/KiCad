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
L GND #PWR01
U 1 1 553F952C
P 3150 3200
F 0 "#PWR01" H 3150 2950 50  0001 C CNN
F 1 "GND" H 3150 3050 50  0000 C CNN
F 2 "" H 3150 3200 60  0000 C CNN
F 3 "" H 3150 3200 60  0000 C CNN
	1    3150 3200
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 553FDF53
P 3300 2600
F 0 "C1" H 3325 2700 50  0000 L CNN
F 1 "0.1 uF" H 3325 2500 50  0000 L CNN
F 2 "footprints:C_1206" H 3338 2450 30  0001 C CNN
F 3 "" H 3300 2600 60  0000 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR09
U 1 1 5A717552
P 3200 2000
F 0 "#PWR09" H 3200 1850 50  0001 C CNN
F 1 "+BATT" H 3200 2140 50  0000 C CNN
F 2 "" H 3200 2000 60  0000 C CNN
F 3 "" H 3200 2000 60  0000 C CNN
	1    3200 2000
	0    -1   -1   0   
$EndComp
Text Label 5550 3200 0    60   ~ 0
RESET
Text Label 5550 2500 0    60   ~ 0
D5-MISO
Text Label 5550 2400 0    60   ~ 0
D6-SCK
$Comp
L ATTINY84A-SSU U1
U 1 1 5B62CA43
P 4500 2600
F 0 "U1" H 3650 3350 50  0000 C CNN
F 1 "ATTINY84A-SSU" H 5150 1850 50  0000 C CNN
F 2 "footprints:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 4500 2400 50  0001 C CIN
F 3 "" H 4500 2600 50  0001 C CNN
	1    4500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3200 7150 3200
Wire Wire Line
	3150 3200 3450 3200
Wire Wire Line
	3300 3200 3300 2750
Wire Wire Line
	3200 2000 3450 2000
Connection ~ 3300 2000
Wire Wire Line
	5550 2000 7150 2000
Wire Wire Line
	5550 2100 7150 2100
Wire Wire Line
	5550 2200 7150 2200
Wire Wire Line
	5550 2300 7150 2300
Wire Wire Line
	5550 2400 7150 2400
Wire Wire Line
	5550 2500 7150 2500
Wire Wire Line
	5550 2600 7150 2600
Wire Wire Line
	5550 3100 7150 3100
Wire Wire Line
	3300 2450 3300 2000
Wire Wire Line
	5550 2700 7150 2700
Text Label 5550 3100 0    60   ~ 0
D2
Text Label 5550 2700 0    60   ~ 0
D3
Text Label 5550 2600 0    60   ~ 0
D4-MOSI
Text Label 5550 2300 0    60   ~ 0
D7
Text Label 5550 2200 0    60   ~ 0
D8
Text Label 5550 2100 0    60   ~ 0
D9
Text Label 5550 2000 0    60   ~ 0
D10
Text Label 5550 3000 0    60   ~ 0
D1
Text Label 5550 2900 0    60   ~ 0
D0
$Comp
L CONN_01X01 P13
U 1 1 5C8B1D6D
P 7350 2000
F 0 "P13" H 7450 2000 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2000 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0000 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P12
U 1 1 5C8B2881
P 7350 2100
F 0 "P12" H 7450 2100 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2100 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2100 50  0001 C CNN
F 3 "" H 7350 2100 50  0000 C CNN
	1    7350 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 5C8B28D9
P 7350 2200
F 0 "P11" H 7450 2200 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2200 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2200 50  0001 C CNN
F 3 "" H 7350 2200 50  0000 C CNN
	1    7350 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 5C8B2934
P 7350 2300
F 0 "P10" H 7450 2300 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2300 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2300 50  0001 C CNN
F 3 "" H 7350 2300 50  0000 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 5C8B2992
P 7350 2400
F 0 "P9" H 7450 2400 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2400 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2400 50  0001 C CNN
F 3 "" H 7350 2400 50  0000 C CNN
	1    7350 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 5C8B29F3
P 7350 2500
F 0 "P8" H 7450 2500 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2500 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2500 50  0001 C CNN
F 3 "" H 7350 2500 50  0000 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 5C8B2A57
P 7350 2600
F 0 "P7" H 7450 2600 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2600 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0000 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 5C8B2ABE
P 7350 2700
F 0 "P6" H 7450 2700 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2700 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2700 50  0001 C CNN
F 3 "" H 7350 2700 50  0000 C CNN
	1    7350 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5C8B2D08
P 7350 2900
F 0 "P2" H 7450 2900 50  0000 C CNN
F 1 "CONN_01X01" V 7450 2900 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 2900 50  0001 C CNN
F 3 "" H 7350 2900 50  0000 C CNN
	1    7350 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 5C8B2EF7
P 7350 3000
F 0 "P3" H 7450 3000 50  0000 C CNN
F 1 "CONN_01X01" V 7450 3000 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 3000 50  0001 C CNN
F 3 "" H 7350 3000 50  0000 C CNN
	1    7350 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 5C8B2F6B
P 7350 3100
F 0 "P5" H 7450 3100 50  0000 C CNN
F 1 "CONN_01X01" V 7450 3100 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0000 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 5C8B2FDE
P 7350 3200
F 0 "P4" H 7450 3200 50  0000 C CNN
F 1 "CONN_01X01" V 7450 3200 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 7350 3200 50  0001 C CNN
F 3 "" H 7350 3200 50  0000 C CNN
	1    7350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2900 7150 2900
Wire Wire Line
	5550 3000 7150 3000
$Comp
L CONN_01X01 P1
U 1 1 5C8B3D58
P 3400 1800
F 0 "P1" H 3500 1800 50  0000 C CNN
F 1 "CONN_01X01" V 3500 1800 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 3400 1800 50  0001 C CNN
F 3 "" H 3400 1800 50  0000 C CNN
	1    3400 1800
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P14
U 1 1 5C8B43E0
P 3400 3400
F 0 "P14" H 3500 3400 50  0000 C CNN
F 1 "CONN_01X01" V 3500 3400 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 3400 3400 50  0001 C CNN
F 3 "" H 3400 3400 50  0000 C CNN
	1    3400 3400
	0    1    1    0   
$EndComp
Connection ~ 3400 3200
Connection ~ 3400 2000
$Comp
L CONN_01X01 PG1
U 1 1 5C8B4D1B
P 3200 3400
F 0 "PG1" H 3300 3400 50  0000 C CNN
F 1 "CONN_01X01" V 3300 3400 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 3200 3400 50  0001 C CNN
F 3 "" H 3200 3400 50  0000 C CNN
	1    3200 3400
	0    1    1    0   
$EndComp
Connection ~ 3300 3200
Connection ~ 3200 3200
$Comp
L CONN_01X01 PP1
U 1 1 5C8B6080
P 3250 1800
F 0 "PP1" H 3350 1800 50  0000 C CNN
F 1 "CONN_01X01" V 3350 1800 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0000 C CNN
	1    3250 1800
	0    -1   -1   0   
$EndComp
Connection ~ 3250 2000
$EndSCHEMATC
