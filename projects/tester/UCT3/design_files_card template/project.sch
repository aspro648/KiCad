EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "UHT Card"
Date "2022-11-12"
Rev "0.0"
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L project:GND #PWR01
U 1 1 5B3FDCF5
P 2150 900
F 0 "#PWR01" H 2150 650 50  0001 C CNN
F 1 "GND" H 2150 750 50  0000 C CNN
F 2 "" H 2150 900 50  0001 C CNN
F 3 "" H 2150 900 50  0001 C CNN
	1    2150 900 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG02
U 1 1 5B3FDD3A
P 900 900
F 0 "#FLG02" H 900 975 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1050 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG03
U 1 1 5B3FDD50
P 1700 900
F 0 "#FLG03" H 1700 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 1050 50  0000 C CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0001 C CNN
	1    1700 900 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG04
U 1 1 5B3FDD67
P 2150 900
F 0 "#FLG04" H 2150 975 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1050 50  0000 C CNN
F 2 "" H 2150 900 50  0001 C CNN
F 3 "" H 2150 900 50  0001 C CNN
	1    2150 900 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG010
U 1 1 5B3FFE6E
P 1300 900
F 0 "#FLG010" H 1300 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1050 50  0000 C CNN
F 2 "" H 1300 900 50  0001 C CNN
F 3 "" H 1300 900 50  0001 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
$Comp
L project:VBUS #PWR016
U 1 1 5B8EB917
P 1300 900
F 0 "#PWR016" H 1300 750 50  0001 C CNN
F 1 "VBUS" H 1300 1050 50  0000 C CNN
F 2 "" H 1300 900 50  0001 C CNN
F 3 "" H 1300 900 50  0001 C CNN
	1    1300 900 
	-1   0    0    1   
$EndComp
$Comp
L project:+5V #PWR017
U 1 1 5B8EBC6C
P 900 900
F 0 "#PWR017" H 900 750 50  0001 C CNN
F 1 "+5V" H 900 1040 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	-1   0    0    1   
$EndComp
$Comp
L project:+3V3 #PWR037
U 1 1 5B9148DC
P 1700 900
F 0 "#PWR037" H 1700 750 50  0001 C CNN
F 1 "+3V3" H 1700 1040 50  0000 C CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0001 C CNN
	1    1700 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2700 5250 2700
Wire Wire Line
	5500 2800 5250 2800
Wire Wire Line
	5500 2900 5250 2900
Wire Wire Line
	5500 3000 5250 3000
Wire Wire Line
	5500 3100 5250 3100
Wire Wire Line
	5500 3200 5250 3200
Wire Wire Line
	5500 3300 5250 3300
Wire Wire Line
	5500 3400 5250 3400
Wire Wire Line
	5500 3500 5250 3500
Wire Wire Line
	5500 3600 5250 3600
Wire Wire Line
	6000 2700 6250 2700
Wire Wire Line
	6000 2800 6250 2800
Wire Wire Line
	6000 2900 6250 2900
Wire Wire Line
	6000 3000 6250 3000
Wire Wire Line
	6000 3100 6250 3100
Wire Wire Line
	6000 3200 6250 3200
Wire Wire Line
	6000 3300 6250 3300
Wire Wire Line
	6000 3400 6250 3400
Wire Wire Line
	6000 3500 6250 3500
Wire Wire Line
	6000 3600 6250 3600
Text Label 5250 3000 0    60   ~ 0
04
Text Label 6150 2800 0    60   ~ 0
12
Text Label 5250 3200 0    60   ~ 0
06
Text Label 5250 3100 0    60   ~ 0
05
Text Label 5250 2900 0    60   ~ 0
03
Text Label 6150 2700 0    60   ~ 0
11
Wire Wire Line
	4150 2700 3900 2700
Wire Wire Line
	4150 2800 3900 2800
Wire Wire Line
	4150 2900 3900 2900
Wire Wire Line
	4150 3000 3900 3000
Wire Wire Line
	4150 3100 3900 3100
Wire Wire Line
	4150 3200 3900 3200
Wire Wire Line
	4150 3300 3900 3300
Wire Wire Line
	4150 3400 3900 3400
Wire Wire Line
	4150 3500 3900 3500
Wire Wire Line
	4150 3600 3900 3600
Wire Wire Line
	4650 2700 4900 2700
Wire Wire Line
	4650 2800 4900 2800
Wire Wire Line
	4650 2900 4900 2900
Wire Wire Line
	4650 3000 4900 3000
Wire Wire Line
	4650 3100 4900 3100
Wire Wire Line
	4650 3200 4900 3200
Wire Wire Line
	4650 3300 4900 3300
Wire Wire Line
	4650 3400 4900 3400
Wire Wire Line
	4650 3600 4900 3600
Text Label 3900 3000 0    60   ~ 0
04
Text Label 3900 3400 0    60   ~ 0
08
Text Label 3900 2800 0    60   ~ 0
02
Text Label 3900 3300 0    60   ~ 0
07
Text Label 3900 3200 0    60   ~ 0
06
Text Label 3900 3100 0    60   ~ 0
05
Text Label 3900 2900 0    60   ~ 0
03
Text Label 3900 2700 0    60   ~ 0
01
Text Label 6150 3200 0    60   ~ 0
16
Text Label 6150 3100 0    60   ~ 0
15
Wire Wire Line
	4650 3500 4900 3500
Text Notes 6450 2300 0    60   ~ 0
Wire (LED) Numbers
Wire Notes Line
	6250 2600 6250 2250
Wire Notes Line
	6250 2250 6450 2250
Text Notes 6450 2100 0    60   ~ 0
Connector Pin Numbers
Wire Notes Line
	5950 2600 5950 2050
Wire Notes Line
	5950 2050 6450 2050
Wire Wire Line
	2450 2700 2200 2700
Wire Wire Line
	2450 2800 2200 2800
Wire Wire Line
	2450 2900 2200 2900
Wire Wire Line
	2450 3000 2200 3000
Wire Wire Line
	2450 3100 2200 3100
Wire Wire Line
	2450 3200 2200 3200
Wire Wire Line
	2450 3300 2200 3300
Wire Wire Line
	2450 3400 2200 3400
Wire Wire Line
	2450 3500 2200 3500
Wire Wire Line
	2450 3600 2200 3600
Wire Wire Line
	2950 2700 3200 2700
Wire Wire Line
	2950 2800 3200 2800
Wire Wire Line
	2950 2900 3200 2900
Wire Wire Line
	2950 3000 3200 3000
Wire Wire Line
	2950 3100 3200 3100
Wire Wire Line
	2950 3200 3200 3200
Wire Wire Line
	2950 3300 3200 3300
Wire Wire Line
	2950 3400 3200 3400
Wire Wire Line
	2950 3500 3200 3500
Wire Wire Line
	2950 3600 3200 3600
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J0
U 1 1 63BB3F50
P 2650 3100
F 0 "J0" H 2700 3717 50  0000 C CNN
F 1 "Card Edge" H 2700 3626 50  0000 C CNN
F 2 "footprints:MEC8_card" H 2650 3100 50  0001 C CNN
F 3 "~" H 2650 3100 50  0001 C CNN
	1    2650 3100
	1    0    0    -1  
$EndComp
Text Label 3050 3400 0    60   ~ 0
18
Text Label 3050 3300 0    60   ~ 0
17
Text Label 3050 3500 0    60   ~ 0
19
Text Label 3050 3600 0    60   ~ 0
20
Text Label 2200 3600 0    60   ~ 0
10
Text Label 2200 3000 0    60   ~ 0
04
Text Label 2200 3400 0    60   ~ 0
08
Text Label 2200 2800 0    60   ~ 0
02
Text Label 2200 3300 0    60   ~ 0
07
Text Label 2200 3200 0    60   ~ 0
06
Text Label 2200 3100 0    60   ~ 0
05
Text Label 3050 2800 0    60   ~ 0
12
Text Label 2200 3500 0    60   ~ 0
09
Text Label 2200 2900 0    60   ~ 0
03
Text Label 3050 3100 0    60   ~ 0
15
Text Label 3050 3200 0    60   ~ 0
16
Text Label 3050 3000 0    60   ~ 0
14
Text Label 3050 2900 0    60   ~ 0
13
Text Label 3050 2700 0    60   ~ 0
11
Text Label 2200 2700 0    60   ~ 0
01
Wire Notes Line
	3400 3800 3400 2350
Wire Notes Line
	3400 2350 2000 2350
Wire Notes Line
	2000 2350 2000 3800
Wire Notes Line
	2000 3800 3400 3800
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise J1
U 1 1 63B15EBA
P 4350 3100
F 0 "J1" H 4400 3717 50  0000 C CNN
F 1 "2.54mm Pitch" H 4400 3626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 4350 3100 50  0001 C CNN
F 3 "~" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Text Label 5250 2800 0    60   ~ 0
02
Text Label 5250 2700 0    60   ~ 0
01
Text Label 6150 2900 0    60   ~ 0
13
Text Label 6150 3000 0    60   ~ 0
14
Text Label 6150 3300 0    60   ~ 0
17
Text Label 6150 3400 0    60   ~ 0
18
Text Label 6150 3500 0    60   ~ 0
19
Text Label 6150 3600 0    60   ~ 0
20
Text Label 5250 3300 0    60   ~ 0
07
Text Label 5250 3400 0    60   ~ 0
08
Text Label 5250 3500 0    60   ~ 0
09
Text Label 5250 3600 0    60   ~ 0
10
Text Label 3900 3500 0    60   ~ 0
09
Text Label 3900 3600 0    60   ~ 0
10
Text Label 4800 2700 0    60   ~ 0
11
Text Label 4800 2800 0    60   ~ 0
12
Text Label 4800 2900 0    60   ~ 0
13
Text Label 4800 3000 0    60   ~ 0
14
Text Label 4800 3100 0    60   ~ 0
15
Text Label 4800 3200 0    60   ~ 0
16
Text Label 4800 3300 0    60   ~ 0
17
Text Label 4800 3400 0    60   ~ 0
18
Text Label 4800 3500 0    60   ~ 0
19
Text Label 4800 3600 0    60   ~ 0
20
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise J2
U 1 1 63B1BF69
P 5700 3100
F 0 "J2" H 5750 3717 50  0000 C CNN
F 1 "2.54mm Pitch" H 5750 3626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 5700 3100 50  0001 C CNN
F 3 "~" H 5700 3100 50  0001 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
