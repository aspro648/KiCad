EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Leonardo 324U"
Date "2018-08-10"
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
L Connector_Generic:Conn_02x10_Top_Bottom X0
U 1 1 63BB3F50
P 2650 3050
F 0 "X0" H 2700 3667 50  0000 C CNN
F 1 "Edge" H 2700 3576 50  0000 C CNN
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
	3950 2650 3700 2650
Wire Wire Line
	3950 2750 3700 2750
Wire Wire Line
	3950 2850 3700 2850
Wire Wire Line
	3950 2950 3700 2950
Wire Wire Line
	3950 3050 3700 3050
Wire Wire Line
	3950 3150 3700 3150
Wire Wire Line
	3950 3250 3700 3250
Wire Wire Line
	3950 3350 3700 3350
Wire Wire Line
	3950 3450 3700 3450
Wire Wire Line
	3950 3550 3700 3550
Wire Wire Line
	4450 2650 4700 2650
Wire Wire Line
	4450 2750 4700 2750
Wire Wire Line
	4450 2850 4700 2850
Wire Wire Line
	4450 2950 4700 2950
Wire Wire Line
	4450 3050 4700 3050
Wire Wire Line
	4450 3150 4700 3150
Wire Wire Line
	4450 3250 4700 3250
Wire Wire Line
	4450 3350 4700 3350
Wire Wire Line
	4450 3450 4700 3450
Wire Wire Line
	4450 3550 4700 3550
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom X1
U 1 1 63CD3088
P 4150 3050
F 0 "X1" H 4200 3667 50  0000 C CNN
F 1 "MEC8" H 4200 3576 50  0000 C CNN
F 2 "footprints:MEC8_top_bottom" H 4150 3050 50  0001 C CNN
F 3 "~" H 4150 3050 50  0001 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
Text Label 4550 3350 0    60   ~ 0
18
Text Label 4550 3250 0    60   ~ 0
17
Text Label 4550 3450 0    60   ~ 0
19
Text Label 4550 3550 0    60   ~ 0
20
Text Label 3700 3550 0    60   ~ 0
10
Text Label 3700 2950 0    60   ~ 0
04
Text Label 3700 3350 0    60   ~ 0
08
Text Label 3700 2750 0    60   ~ 0
02
Text Label 3700 3250 0    60   ~ 0
07
Text Label 3700 3150 0    60   ~ 0
06
Text Label 3700 3050 0    60   ~ 0
05
Text Label 4550 2750 0    60   ~ 0
12
Text Label 3700 3450 0    60   ~ 0
09
Text Label 3700 2850 0    60   ~ 0
03
Text Label 4550 3050 0    60   ~ 0
15
Text Label 4550 3150 0    60   ~ 0
16
Text Label 4550 2950 0    60   ~ 0
14
Text Label 4550 2850 0    60   ~ 0
13
Text Label 4550 2650 0    60   ~ 0
11
Text Label 3700 2650 0    60   ~ 0
01
Wire Wire Line
	5450 2650 5200 2650
Wire Wire Line
	5450 2750 5200 2750
Wire Wire Line
	5450 2850 5200 2850
Wire Wire Line
	5450 2950 5200 2950
Wire Wire Line
	5450 3050 5200 3050
Wire Wire Line
	5450 3150 5200 3150
Wire Wire Line
	5450 3250 5200 3250
Wire Wire Line
	5450 3350 5200 3350
Wire Wire Line
	5450 3450 5200 3450
Wire Wire Line
	5450 3550 5200 3550
Wire Wire Line
	5950 2650 6200 2650
Wire Wire Line
	5950 2750 6200 2750
Wire Wire Line
	5950 2850 6200 2850
Wire Wire Line
	5950 2950 6200 2950
Wire Wire Line
	5950 3050 6200 3050
Wire Wire Line
	5950 3150 6200 3150
Wire Wire Line
	5950 3250 6200 3250
Wire Wire Line
	5950 3350 6200 3350
Wire Wire Line
	5950 3450 6200 3450
Wire Wire Line
	5950 3550 6200 3550
Text Label 6050 3350 0    60   ~ 0
18
Text Label 6050 3250 0    60   ~ 0
17
Text Label 6050 3450 0    60   ~ 0
19
Text Label 6050 3550 0    60   ~ 0
20
Text Label 5200 3550 0    60   ~ 0
10
Text Label 5200 2950 0    60   ~ 0
04
Text Label 5200 3350 0    60   ~ 0
08
Text Label 5200 2750 0    60   ~ 0
02
Text Label 5200 3250 0    60   ~ 0
07
Text Label 5200 3150 0    60   ~ 0
06
Text Label 5200 3050 0    60   ~ 0
05
Text Label 6050 2750 0    60   ~ 0
12
Text Label 5200 3450 0    60   ~ 0
09
Text Label 5200 2850 0    60   ~ 0
03
Text Label 6050 3050 0    60   ~ 0
15
Text Label 6050 3150 0    60   ~ 0
16
Text Label 6050 2950 0    60   ~ 0
14
Text Label 6050 2850 0    60   ~ 0
13
Text Label 6050 2650 0    60   ~ 0
11
Text Label 5200 2650 0    60   ~ 0
01
$Comp
L Connector_Generic:Conn_01x06 X2
U 1 1 63CDCB13
P 5650 2850
F 0 "X2" H 5500 3250 50  0000 L CNN
F 1 "PicoBlade" H 5450 3150 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0610_1x06_P1.25mm_Vertical" H 5650 2850 50  0001 C CNN
F 3 "~" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
