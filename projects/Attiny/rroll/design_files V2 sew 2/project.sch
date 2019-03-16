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
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Chirp"
Date ""
Rev ""
Comp "MakersBox"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-P IC1
U 1 1 553EFD0A
P 3750 3600
F 0 "IC1" H 2600 4000 40  0000 C CNN
F 1 "ATTINY85" H 4750 3200 40  0000 C CNN
F 2 "footprints:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 4750 3600 35  0001 C CIN
F 3 "" H 3750 3600 60  0000 C CNN
	1    3750 3600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 553F09F6
P 5550 5500
F 0 "#PWR01" H 5550 5250 50  0001 C CNN
F 1 "GND" H 5550 5350 50  0000 C CNN
F 2 "" H 5550 5500 60  0000 C CNN
F 3 "" H 5550 5500 60  0000 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L OPTO_NPN Q1
U 1 1 553F0F1B
P 6800 4500
F 0 "Q1" H 6950 4550 50  0000 L CNN
F 1 "LIGHT" V 6650 4400 50  0000 L CNN
F 2 "Opto-Devices:PhotoDiode_SMD-DIL2_4.5x4" H 6800 4500 60  0001 C CNN
F 3 "" H 6800 4500 60  0000 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 553F952C
P 1700 3350
F 0 "#PWR02" H 1700 3100 50  0001 C CNN
F 1 "GND" H 1700 3200 50  0000 C CNN
F 2 "" H 1700 3350 60  0000 C CNN
F 3 "" H 1700 3350 60  0000 C CNN
	1    1700 3350
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR03
U 1 1 553F9565
P 4400 4500
F 0 "#PWR03" H 4400 4350 50  0001 C CNN
F 1 "+BATT" H 4400 4640 50  0000 C CNN
F 2 "" H 4400 4500 60  0000 C CNN
F 3 "" H 4400 4500 60  0000 C CNN
	1    4400 4500
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 553F9619
P 4400 4900
F 0 "BT1" H 4500 4950 50  0000 L CNN
F 1 "Battery" H 4500 4850 50  0000 L CNN
F 2 "footprints:BATT_CR2032_SMD" V 4400 4940 60  0001 C CNN
F 3 "" V 4400 4940 60  0000 C CNN
	1    4400 4900
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 553FAE81
P 900 900
F 0 "#FLG04" H 900 995 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1080 50  0000 C CNN
F 2 "" H 900 900 60  0000 C CNN
F 3 "" H 900 900 60  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 553FAEA5
P 1250 900
F 0 "#FLG05" H 1250 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1080 50  0000 C CNN
F 2 "" H 1250 900 60  0000 C CNN
F 3 "" H 1250 900 60  0000 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 553FAEE7
P 1250 1000
F 0 "#PWR06" H 1250 750 50  0001 C CNN
F 1 "GND" H 1250 850 50  0000 C CNN
F 2 "" H 1250 1000 60  0000 C CNN
F 3 "" H 1250 1000 60  0000 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR07
U 1 1 553FAF12
P 900 1000
F 0 "#PWR07" H 900 850 50  0001 C CNN
F 1 "+BATT" H 900 1140 50  0000 C CNN
F 2 "" H 900 1000 60  0000 C CNN
F 3 "" H 900 1000 60  0000 C CNN
	1    900  1000
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 553FDF53
P 2400 3600
F 0 "C1" H 2425 3700 50  0000 L CNN
F 1 "0.1 uF" H 2425 3500 50  0000 L CNN
F 2 "footprints:C_1206" H 2438 3450 30  0001 C CNN
F 3 "" H 2400 3600 60  0000 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
$Comp
L SPEAKER SP1
U 1 1 561A890F
P 5250 4500
F 0 "SP1" H 5150 4750 50  0000 C CNN
F 1 "SPEAKER" H 5150 4250 50  0000 C CNN
F 2 "footprints:PS1240_piezo" H 5250 4500 60  0001 C CNN
F 3 "" H 5250 4500 60  0000 C CNN
	1    5250 4500
	-1   0    0    1   
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 561A9A26
P 6300 2550
F 0 "CON1" H 6195 2790 50  0000 C CNN
F 1 "ISP" H 6200 2300 50  0000 L BNN
F 2 "footprints:Pin_Header_Straight_2x03_Pitch2.54mm" V 5780 2590 50  0001 C CNN
F 3 "" H 6275 2550 60  0000 C CNN
	1    6300 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 561A9CB2
P 6650 2650
F 0 "#PWR08" H 6650 2400 50  0001 C CNN
F 1 "GND" H 6650 2500 50  0000 C CNN
F 2 "" H 6650 2650 60  0000 C CNN
F 3 "" H 6650 2650 60  0000 C CNN
	1    6650 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 3850 7200 3850
Wire Wire Line
	2400 3750 2400 4400
Wire Wire Line
	1700 3350 2400 3350
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	2400 3350 2400 3450
Connection ~ 2400 3850
Wire Wire Line
	5550 4600 5550 5500
Connection ~ 5550 5400
Wire Wire Line
	4400 5400 6900 5400
Wire Wire Line
	5550 2250 5550 4400
Connection ~ 5550 3850
Wire Wire Line
	6400 2650 6650 2650
Wire Wire Line
	6400 2450 6800 2450
Wire Wire Line
	6150 2650 5850 2650
Wire Wire Line
	6150 2450 5650 2450
Wire Wire Line
	6150 2550 5750 2550
Wire Wire Line
	5750 2550 5750 3650
Wire Wire Line
	5550 2250 6950 2250
Wire Wire Line
	6950 2250 6950 2550
Wire Wire Line
	6950 2550 6400 2550
Wire Wire Line
	5850 2650 5850 3350
Wire Wire Line
	5850 3350 5100 3350
Wire Wire Line
	6900 3650 6900 4300
Wire Wire Line
	6900 5400 6900 4700
Connection ~ 2400 3350
Text Notes 4050 2800 0    60   ~ 0
D0 Speaker\nD4 LED\nA3 Touch
$Comp
L LED D1
U 1 1 561BE7BF
P 5950 4200
F 0 "D1" H 5950 4300 50  0000 C CNN
F 1 "LED" H 5950 4100 50  0000 C CNN
F 2 "footprints:LED_1206" H 5950 4200 60  0001 C CNN
F 3 "" H 5950 4200 60  0000 C CNN
	1    5950 4200
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 561BE85C
P 5950 4550
F 0 "R1" V 6030 4550 50  0000 C CNN
F 1 "330" V 5950 4550 50  0000 C CNN
F 2 "footprints:R_1206" V 5880 4550 30  0001 C CNN
F 3 "" H 5950 4550 30  0000 C CNN
	1    5950 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 4700 5950 5400
Connection ~ 5950 5400
Text Notes 2750 5900 0    60   ~ 0
https://github.com/rogertheriault/firefly
Text Notes 2800 6050 0    60   ~ 0
https://www.digikey.com/product-detail/en/murata-electronics-north-america/PKMCS0909E4000-R1/490-9647-1-ND/4878401
Text Notes 2850 6300 0    60   ~ 0
https://www.digikey.com/product-detail/en/vishay-semiconductor-opto-division/TEMT6000X01/751-1055-1-ND/1681410\nhttps://www.digikey.com/product-detail/en/everlight-electronics-co-ltd/ALS-PT19-315C-L177-TR8/1080-1244-1-ND/2675978
Wire Wire Line
	5950 4350 5950 4400
$Comp
L R J1
U 1 1 5A7D01B3
P 6400 4550
F 0 "J1" V 6480 4550 50  0000 C CNN
F 1 "JMP" V 6400 4550 50  0000 C CNN
F 2 "footprints:R_1206_HandSoldering" V 6330 4550 30  0001 C CNN
F 3 "" H 6400 4550 30  0000 C CNN
	1    6400 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 4700 6400 5400
Connection ~ 6400 5400
Wire Wire Line
	4400 5100 4400 5400
Wire Wire Line
	4400 4500 4400 4700
Wire Wire Line
	6400 3550 6400 4400
Wire Wire Line
	5100 3750 7200 3750
Wire Wire Line
	5100 3550 7200 3550
Text Label 5150 3750 0    60   ~ 0
MISO
Text Label 5150 3650 0    60   ~ 0
SCK
Text Label 5150 3350 0    60   ~ 0
RST
Text Label 5150 3850 0    60   ~ 0
MOSI
Text Label 5150 3550 0    60   ~ 0
D3
Text Label 5150 3450 0    60   ~ 0
D4
$Comp
L R R2
U 1 1 5C8A8E71
P 3100 5150
F 0 "R2" V 3180 5150 50  0000 C CNN
F 1 "0" V 3100 5150 50  0000 C CNN
F 2 "footprints:R_1206" V 3030 5150 50  0001 C CNN
F 3 "" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2450 5650 3750
Wire Wire Line
	5100 3650 7200 3650
Wire Wire Line
	5100 3450 7200 3450
Wire Wire Line
	5950 4050 5950 3450
$Comp
L CONN_01X01 P3
U 1 1 5C8BBF2D
P 7400 3450
F 0 "P3" H 7500 3450 50  0000 C CNN
F 1 "CONN_01X01" V 7500 3450 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7400 3450 50  0001 C CNN
F 3 "" H 7400 3450 50  0001 C CNN
	1    7400 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5C8BBF61
P 7400 3550
F 0 "P2" H 7500 3550 50  0000 C CNN
F 1 "CONN_01X01" V 7500 3550 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7400 3550 50  0001 C CNN
F 3 "" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 5C8BBF9C
P 7400 3650
F 0 "P7" H 7500 3650 50  0000 C CNN
F 1 "CONN_01X01" V 7500 3650 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7400 3650 50  0001 C CNN
F 3 "" H 7400 3650 50  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 5C8BBFDE
P 7400 3750
F 0 "P6" H 7500 3750 50  0000 C CNN
F 1 "CONN_01X01" V 7500 3750 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7400 3750 50  0001 C CNN
F 3 "" H 7400 3750 50  0001 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 5C8BC023
P 7400 3850
F 0 "P5" H 7500 3850 50  0000 C CNN
F 1 "CONN_01X01" V 7500 3850 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7400 3850 50  0001 C CNN
F 3 "" H 7400 3850 50  0001 C CNN
	1    7400 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 5C8BC1B7
P 2400 3150
F 0 "P4" H 2500 3150 50  0000 C CNN
F 1 "CONN_01X01" V 2500 3150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2400 3150 50  0001 C CNN
F 3 "" H 2400 3150 50  0001 C CNN
	1    2400 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 5C8BC2BD
P 2400 4600
F 0 "P8" H 2500 4600 50  0000 C CNN
F 1 "CONN_01X01" V 2500 4600 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	0    1    1    0   
$EndComp
Connection ~ 5950 3450
Connection ~ 6400 3550
Connection ~ 5750 3650
Connection ~ 5650 3750
$Comp
L CONN_01X01 PG1
U 1 1 5C8BCF7D
P 2250 3150
F 0 "PG1" H 2350 3150 50  0000 C CNN
F 1 "CONN_01X01" V 2350 3150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2250 3150 50  0001 C CNN
F 3 "" H 2250 3150 50  0001 C CNN
	1    2250 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 PG2
U 1 1 5C8BCFC8
P 2100 3150
F 0 "PG2" H 2200 3150 50  0000 C CNN
F 1 "CONN_01X01" V 2200 3150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2100 3150 50  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 PG3
U 1 1 5C8BD100
P 1950 3150
F 0 "PG3" H 2050 3150 50  0000 C CNN
F 1 "CONN_01X01" V 2050 3150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1950 3150 50  0001 C CNN
F 3 "" H 1950 3150 50  0001 C CNN
	1    1950 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 PG4
U 1 1 5C8BD1C4
P 1800 3150
F 0 "PG4" H 1900 3150 50  0000 C CNN
F 1 "CONN_01X01" V 1900 3150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    1800 3150
	0    -1   -1   0   
$EndComp
Connection ~ 2250 3350
Connection ~ 2100 3350
Connection ~ 1950 3350
Connection ~ 1800 3350
$Comp
L CONN_01X01 PP1
U 1 1 5C8BD4F4
P 2550 4600
F 0 "PP1" H 2650 4600 50  0000 C CNN
F 1 "CONN_01X01" V 2650 4600 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2550 4600 50  0001 C CNN
F 3 "" H 2550 4600 50  0001 C CNN
	1    2550 4600
	0    1    1    0   
$EndComp
Connection ~ 2550 4400
$Comp
L GND #PWR09
U 1 1 5C8BDE38
P 3100 5300
F 0 "#PWR09" H 3100 5050 50  0001 C CNN
F 1 "GND" H 3100 5150 50  0000 C CNN
F 2 "" H 3100 5300 60  0000 C CNN
F 3 "" H 3100 5300 60  0000 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5C8BDF40
P 3100 5000
F 0 "#PWR010" H 3100 4750 50  0001 C CNN
F 1 "GND" H 3100 4850 50  0000 C CNN
F 2 "" H 3100 5000 60  0000 C CNN
F 3 "" H 3100 5000 60  0000 C CNN
	1    3100 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 5000 3100 5300
Connection ~ 3100 5000
Connection ~ 3100 5300
Connection ~ 3100 5150
$Comp
L R R0
U 1 1 5C8BE323
P 3400 5150
F 0 "R0" V 3480 5150 50  0000 C CNN
F 1 "0" V 3400 5150 50  0000 C CNN
F 2 "footprints:R_1206" V 3330 5150 50  0001 C CNN
F 3 "" H 3400 5150 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR011
U 1 1 5C8BE417
P 3400 5000
F 0 "#PWR011" H 3400 4850 50  0001 C CNN
F 1 "+BATT" H 3400 5140 50  0000 C CNN
F 2 "" H 3400 5000 60  0000 C CNN
F 3 "" H 3400 5000 60  0000 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR012
U 1 1 5C8BE542
P 3400 5300
F 0 "#PWR012" H 3400 5150 50  0001 C CNN
F 1 "+BATT" H 3400 5440 50  0000 C CNN
F 2 "" H 3400 5300 60  0000 C CNN
F 3 "" H 3400 5300 60  0000 C CNN
	1    3400 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 5300 3400 5000
Connection ~ 3400 5000
Connection ~ 3400 5300
$Comp
L CONN_01X01 PL1
U 1 1 5C8BEAA7
P 6150 4050
F 0 "PL1" H 6250 4050 50  0000 C CNN
F 1 "CONN_01X01" V 6250 4050 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 PL2
U 1 1 5C8BEB30
P 6150 4700
F 0 "PL2" H 6250 4700 50  0000 C CNN
F 1 "CONN_01X01" V 6250 4700 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 6150 4700 50  0001 C CNN
F 3 "" H 6150 4700 50  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
Connection ~ 5950 4050
Connection ~ 5950 4700
$Comp
L CONN_01X01 PT1
U 1 1 5C8BF98D
P 7100 4200
F 0 "PT1" H 7200 4200 50  0000 C CNN
F 1 "CONN_01X01" V 7200 4200 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7100 4200 50  0001 C CNN
F 3 "" H 7100 4200 50  0001 C CNN
	1    7100 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 PT2
U 1 1 5C8BFA15
P 7100 4750
F 0 "PT2" H 7200 4750 50  0000 C CNN
F 1 "CONN_01X01" V 7200 4750 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 7100 4750 50  0001 C CNN
F 3 "" H 7100 4750 50  0001 C CNN
	1    7100 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 PS1
U 1 1 5C8BFDEB
P 5350 4100
F 0 "PS1" H 5450 4100 50  0000 C CNN
F 1 "CONN_01X01" V 5450 4100 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 PS2
U 1 1 5C8BFE87
P 5350 4850
F 0 "PS2" H 5450 4850 50  0000 C CNN
F 1 "CONN_01X01" V 5450 4850 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 5350 4850 50  0001 C CNN
F 3 "" H 5350 4850 50  0001 C CNN
	1    5350 4850
	-1   0    0    1   
$EndComp
Text Notes 2800 6550 0    60   ~ 0
https://www.digikey.com/product-detail/en/everlight-electronics-co-ltd/PT15-21C-TR8/1080-1380-1-ND/2676114
Connection ~ 6900 3650
Connection ~ 6900 4200
Connection ~ 6900 4750
Connection ~ 5550 4850
Connection ~ 5550 4100
$Comp
L CONN_01X01 PB1
U 1 1 5C8C0F33
P 4200 4650
F 0 "PB1" H 4300 4650 50  0000 C CNN
F 1 "CONN_01X01" V 4300 4650 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4200 4650 50  0001 C CNN
F 3 "" H 4200 4650 50  0001 C CNN
	1    4200 4650
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 PB2
U 1 1 5C8C0FEB
P 4600 4650
F 0 "PB2" H 4700 4650 50  0000 C CNN
F 1 "CONN_01X01" V 4700 4650 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 4650 50  0001 C CNN
F 3 "" H 4600 4650 50  0001 C CNN
	1    4600 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 PB3
U 1 1 5C8C1070
P 4200 5150
F 0 "PB3" H 4300 5150 50  0000 C CNN
F 1 "CONN_01X01" V 4300 5150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4200 5150 50  0001 C CNN
F 3 "" H 4200 5150 50  0001 C CNN
	1    4200 5150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 PB4
U 1 1 5C8C10F8
P 4600 5150
F 0 "PB4" H 4700 5150 50  0000 C CNN
F 1 "CONN_01X01" V 4700 5150 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 5150 50  0001 C CNN
F 3 "" H 4600 5150 50  0001 C CNN
	1    4600 5150
	1    0    0    -1  
$EndComp
Connection ~ 4400 4650
Connection ~ 4400 5150
$Comp
L CONN_01X01 PA1
U 1 1 5C8C12ED
P 6600 4050
F 0 "PA1" H 6700 4050 50  0000 C CNN
F 1 "CONN_01X01" V 6700 4050 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 PA2
U 1 1 5C8C1377
P 6600 4700
F 0 "PA2" H 6700 4700 50  0000 C CNN
F 1 "CONN_01X01" V 6700 4700 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 6600 4700 50  0001 C CNN
F 3 "" H 6600 4700 50  0001 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
Connection ~ 6400 4050
Connection ~ 6400 4700
$Comp
L SW_SPDT SW1
U 1 1 5C8C2059
P 3250 4500
F 0 "SW1" H 3250 4670 50  0000 C CNN
F 1 "SW_SPDT" H 3250 4300 50  0000 C CNN
F 2 "" H 3250 4500 50  0001 C CNN
F 3 "" H 3250 4500 50  0001 C CNN
	1    3250 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 4500 3450 4500
Wire Wire Line
	2400 4400 3050 4400
Text Label 6650 2450 0    60   ~ 0
VCC
Text Label 2700 4400 0    60   ~ 0
VCC
$EndSCHEMATC
