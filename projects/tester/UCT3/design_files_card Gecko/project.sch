EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "UCT Card"
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
	2450 2650 2200 2650
Wire Wire Line
	2450 2750 2200 2750
Wire Wire Line
	2450 2850 2200 2850
Wire Wire Line
	2450 2950 2200 2950
Wire Wire Line
	2450 3050 2200 3050
Wire Wire Line
	2450 3150 2200 3150
Wire Wire Line
	2450 3250 2200 3250
Wire Wire Line
	2450 3350 2200 3350
Wire Wire Line
	2450 3450 2200 3450
Wire Wire Line
	2450 3550 2200 3550
Wire Wire Line
	2950 2650 3200 2650
Wire Wire Line
	2950 2750 3200 2750
Wire Wire Line
	2950 2850 3200 2850
Wire Wire Line
	2950 2950 3200 2950
Wire Wire Line
	2950 3050 3200 3050
Wire Wire Line
	2950 3150 3200 3150
Wire Wire Line
	2950 3250 3200 3250
Wire Wire Line
	2950 3350 3200 3350
Wire Wire Line
	2950 3450 3200 3450
Wire Wire Line
	2950 3550 3200 3550
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J0
U 1 1 63BB3F50
P 2650 3050
F 0 "J0" H 2700 3667 50  0000 C CNN
F 1 "Card Edge" H 2700 3576 50  0000 C CNN
F 2 "footprints:MEC8_card" H 2650 3050 50  0001 C CNN
F 3 "~" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
Text Label 3050 3350 0    60   ~ 0
18
Text Label 3050 3250 0    60   ~ 0
17
Text Label 3050 3450 0    60   ~ 0
19
Text Label 3050 3550 0    60   ~ 0
20
Text Label 2200 3550 0    60   ~ 0
10
Text Label 2200 2950 0    60   ~ 0
04
Text Label 2200 3350 0    60   ~ 0
08
Text Label 2200 2750 0    60   ~ 0
02
Text Label 2200 3250 0    60   ~ 0
07
Text Label 2200 3150 0    60   ~ 0
06
Text Label 2200 3050 0    60   ~ 0
05
Text Label 3050 2750 0    60   ~ 0
12
Text Label 2200 3450 0    60   ~ 0
09
Text Label 2200 2850 0    60   ~ 0
03
Text Label 3050 3050 0    60   ~ 0
15
Text Label 3050 3150 0    60   ~ 0
16
Text Label 3050 2950 0    60   ~ 0
14
Text Label 3050 2850 0    60   ~ 0
13
Text Label 3050 2650 0    60   ~ 0
11
Text Label 2200 2650 0    60   ~ 0
01
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
Text Label 6150 3000 0    60   ~ 0
10
Text Label 5250 3000 0    60   ~ 0
04
Text Label 5250 2800 0    60   ~ 0
02
Text Label 5250 3200 0    60   ~ 0
06
Text Label 5250 3100 0    60   ~ 0
05
Text Label 6150 2900 0    60   ~ 0
09
Text Label 5250 2900 0    60   ~ 0
03
Text Label 5250 2700 0    60   ~ 0
01
Wire Wire Line
	7000 2700 6750 2700
Wire Wire Line
	7000 2800 6750 2800
Wire Wire Line
	7000 2900 6750 2900
Wire Wire Line
	7000 3000 6750 3000
Wire Wire Line
	7000 3100 6750 3100
Wire Wire Line
	7000 3200 6750 3200
Wire Wire Line
	7000 3300 6750 3300
Wire Wire Line
	7000 3400 6750 3400
Wire Wire Line
	7000 3500 6750 3500
Wire Wire Line
	7000 3600 6750 3600
Wire Wire Line
	7500 2700 7750 2700
Wire Wire Line
	7500 2800 7750 2800
Wire Wire Line
	7500 2900 7750 2900
Wire Wire Line
	7500 3000 7750 3000
Wire Wire Line
	7500 3100 7750 3100
Wire Wire Line
	7500 3200 7750 3200
Wire Wire Line
	7500 3300 7750 3300
Wire Wire Line
	7500 3400 7750 3400
Wire Wire Line
	7500 3500 7750 3500
Wire Wire Line
	7500 3600 7750 3600
Text Label 7600 2700 0    60   ~ 0
04
Text Label 6750 2800 0    60   ~ 0
02
Text Label 7600 2900 0    60   ~ 0
06
Text Label 7600 2800 0    60   ~ 0
05
Text Label 6750 2900 0    60   ~ 0
03
Text Label 6750 2700 0    60   ~ 0
01
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J2
U 1 1 6374F9C9
P 5700 2900
F 0 "J2" H 5750 3317 50  0000 C CNN
F 1 "Gecko 12P" H 5750 3226 50  0000 C CNN
F 2 "footprints:Harwin_Gecko-G125-MVX1205L0X_2x06_P1.25mm_Vertical" H 5700 2900 50  0001 C CNN
F 3 "~" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
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
	4650 3500 4900 3500
Wire Wire Line
	4650 3600 4900 3600
Text Label 4750 3400 0    60   ~ 0
18
Text Label 4750 3300 0    60   ~ 0
17
Text Label 4750 3500 0    60   ~ 0
19
Text Label 4750 3600 0    60   ~ 0
20
Text Label 3900 3600 0    60   ~ 0
10
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
Text Label 4750 2800 0    60   ~ 0
12
Text Label 3900 3500 0    60   ~ 0
09
Text Label 3900 2900 0    60   ~ 0
03
Text Label 4750 3100 0    60   ~ 0
15
Text Label 4750 3200 0    60   ~ 0
16
Text Label 4750 3000 0    60   ~ 0
14
Text Label 4750 2900 0    60   ~ 0
13
Text Label 4750 2700 0    60   ~ 0
11
Text Label 3900 2700 0    60   ~ 0
01
Text Label 6150 2800 0    60   ~ 0
08
Text Label 6150 2700 0    60   ~ 0
07
Text Label 6150 3100 0    60   ~ 0
11
Text Label 6150 3200 0    60   ~ 0
12
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J1
U 1 1 6386372C
P 4350 3100
F 0 "J1" H 4400 3717 50  0000 C CNN
F 1 "Gecko 20P" H 4400 3626 50  0000 C CNN
F 2 "footprints:Harwin_Gecko-G125-MVX2005L0X_2x10_P1.25mm_Vertical" H 4350 3100 50  0001 C CNN
F 3 "~" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J3
U 1 1 6389364B
P 7200 2800
F 0 "J3" H 7250 3117 50  0000 C CNN
F 1 "Gecko 6P" H 7250 3026 50  0000 C CNN
F 2 "footprints:Harwin_Gecko-G125-MVX0605L0X_2x03_P1.25mm_Vertical" H 7200 2800 50  0001 C CNN
F 3 "~" H 7200 2800 50  0001 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
Wire Notes Line
	3400 2300 3400 3700
Wire Notes Line
	3400 3700 2000 3700
Wire Notes Line
	2000 3700 2000 2300
Wire Notes Line
	2000 2300 3400 2300
$EndSCHEMATC
