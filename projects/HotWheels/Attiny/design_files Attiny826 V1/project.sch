EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Lights Attiny826"
Date "2022-04-17"
Rev "0.1"
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L project:VBUS #PWR01
U 1 1 5B3FDCD2
P 1000 950
F 0 "#PWR01" H 1000 800 50  0001 C CNN
F 1 "VBUS" H 1000 1100 50  0000 C CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1000 950 50  0001 C CNN
	1    1000 950 
	-1   0    0    1   
$EndComp
$Comp
L project:GND #PWR05
U 1 1 5B3FDCF5
P 2250 950
F 0 "#PWR05" H 2250 700 50  0001 C CNN
F 1 "GND" H 2250 800 50  0000 C CNN
F 2 "" H 2250 950 50  0001 C CNN
F 3 "" H 2250 950 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG01
U 1 1 5B3FDD3A
P 1000 950
F 0 "#FLG01" H 1000 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1100 50  0000 C CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1000 950 50  0001 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG03
U 1 1 5B3FDD50
P 1800 950
F 0 "#FLG03" H 1800 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 1100 50  0000 C CNN
F 2 "" H 1800 950 50  0001 C CNN
F 3 "" H 1800 950 50  0001 C CNN
	1    1800 950 
	1    0    0    -1  
$EndComp
$Comp
L project:PWR_FLAG #FLG04
U 1 1 5B3FDD67
P 2250 950
F 0 "#FLG04" H 2250 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 1100 50  0000 C CNN
F 2 "" H 2250 950 50  0001 C CNN
F 3 "" H 2250 950 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
$Comp
L project:VCC #PWR04
U 1 1 5B6E5416
P 1800 950
F 0 "#PWR04" H 1800 800 50  0001 C CNN
F 1 "VCC" H 1800 1100 50  0000 C CNN
F 2 "" H 1800 950 50  0001 C CNN
F 3 "" H 1800 950 50  0001 C CNN
	1    1800 950 
	-1   0    0    1   
$EndComp
$Comp
L project:PWR_FLAG #FLG02
U 1 1 5B3FFE6E
P 1400 950
F 0 "#FLG02" H 1400 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 1100 50  0000 C CNN
F 2 "" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	1    1400 950 
	1    0    0    -1  
$EndComp
$Comp
L project:+BATT #PWR02
U 1 1 5B6E4208
P 1400 950
F 0 "#PWR02" H 1400 800 50  0001 C CNN
F 1 "+BATT" V 1400 1200 50  0000 C CNN
F 2 "" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	1    1400 950 
	-1   0    0    1   
$EndComp
$Comp
L project:GND #PWR03
U 1 1 5B7EE8E2
P 1500 2800
F 0 "#PWR03" H 1500 2550 50  0001 C CNN
F 1 "GND" H 1500 2650 50  0000 C CNN
F 2 "" H 1500 2800 50  0001 C CNN
F 3 "" H 1500 2800 50  0001 C CNN
	1    1500 2800
	1    0    0    -1  
$EndComp
$Comp
L project:CONN_01X02 J3
U 1 1 5B7F07B5
P 950 2600
F 0 "J3" H 950 2750 50  0000 C CNN
F 1 "CHG" V 1050 2600 50  0000 C CNN
F 2 "footprints:Connector_Molex_PicoBlade_53047-0210" H 950 2600 50  0001 C CNN
F 3 "" H 950 2600 50  0001 C CNN
	1    950  2600
	-1   0    0    -1  
$EndComp
$Comp
L project-rescue:SW_SPDT SW1
U 1 1 5B9534D5
P 2200 2450
F 0 "SW1" H 2200 2620 50  0000 C CNN
F 1 "SW_SPDT" H 2200 2250 50  0000 C CNN
F 2 "footprints:JS102011SCQN" H 2200 2450 50  0001 C CNN
F 3 "" H 2200 2450 50  0001 C CNN
	1    2200 2450
	-1   0    0    -1  
$EndComp
$Comp
L project:R R11
U 1 1 5EA72640
P 8250 2750
F 0 "R11" V 8330 2750 50  0000 C CNN
F 1 "100" V 8250 2750 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 2750 50  0001 C CNN
F 3 "" H 8250 2750 50  0001 C CNN
	1    8250 2750
	0    -1   -1   0   
$EndComp
$Comp
L project:R R3
U 1 1 5EA726D2
P 8250 2950
F 0 "R3" V 8330 2950 50  0000 C CNN
F 1 "100" V 8250 2950 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 2950 50  0001 C CNN
F 3 "" H 8250 2950 50  0001 C CNN
	1    8250 2950
	0    -1   -1   0   
$EndComp
$Comp
L project:R R4
U 1 1 5EA72763
P 8250 3350
F 0 "R4" V 8330 3350 50  0000 C CNN
F 1 "100" V 8250 3350 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3350 50  0001 C CNN
F 3 "" H 8250 3350 50  0001 C CNN
	1    8250 3350
	0    -1   -1   0   
$EndComp
$Comp
L project:R R5
U 1 1 5EA727AD
P 8250 3550
F 0 "R5" V 8330 3550 50  0000 C CNN
F 1 "100" V 8250 3550 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	1    8250 3550
	0    -1   -1   0   
$EndComp
$Comp
L project:GND #PWR012
U 1 1 5EA808F7
P 8550 5100
F 0 "#PWR012" H 8550 4850 50  0001 C CNN
F 1 "GND" H 8550 4950 50  0000 C CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "" H 8550 5100 50  0001 C CNN
	1    8550 5100
	1    0    0    -1  
$EndComp
$Comp
L project:VCC #PWR06
U 1 1 5ED1A18F
P 2550 1900
F 0 "#PWR06" H 2550 1750 50  0001 C CNN
F 1 "VCC" H 2550 2050 50  0000 C CNN
F 2 "" H 2550 1900 50  0001 C CNN
F 3 "" H 2550 1900 50  0001 C CNN
	1    2550 1900
	1    0    0    -1  
$EndComp
Connection ~ 8550 3450
Wire Wire Line
	8550 3450 8700 3450
Wire Wire Line
	8700 2850 8550 2850
Wire Wire Line
	8400 3550 8700 3550
Wire Wire Line
	8400 3350 8700 3350
Wire Wire Line
	8400 2950 8700 2950
Wire Wire Line
	8400 2750 8700 2750
Wire Wire Line
	7750 3350 8000 3350
Wire Wire Line
	2550 1900 2550 2450
Wire Wire Line
	8000 3550 8100 3550
$Comp
L project:R R6
U 1 1 6033C136
P 8250 3950
F 0 "R6" V 8330 3950 50  0000 C CNN
F 1 "100" V 8250 3950 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	0    -1   -1   0   
$EndComp
$Comp
L project:R R7
U 1 1 6033C13C
P 8250 4150
F 0 "R7" V 8330 4150 50  0000 C CNN
F 1 "100" V 8250 4150 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 4150 50  0001 C CNN
F 3 "" H 8250 4150 50  0001 C CNN
	1    8250 4150
	0    -1   -1   0   
$EndComp
Connection ~ 8550 4050
Wire Wire Line
	8550 4050 8700 4050
Wire Wire Line
	8400 4150 8700 4150
Wire Wire Line
	8400 3950 8700 3950
Wire Wire Line
	8550 2850 8550 3450
$Comp
L project-rescue:CONN_01X03 J5
U 1 1 6034473D
P 8900 2850
F 0 "J5" H 8900 3050 50  0000 C CNN
F 1 "HL" V 9000 2850 50  0000 C CNN
F 2 "footprints:Pin_Header_THD_1x03" H 8900 2850 50  0001 C CNN
F 3 "" H 8900 2850 50  0000 C CNN
	1    8900 2850
	1    0    0    -1  
$EndComp
$Comp
L project-rescue:CONN_01X03 J6
U 1 1 6034517D
P 8900 3450
F 0 "J6" H 8900 3650 50  0000 C CNN
F 1 "TL" V 9000 3450 50  0000 C CNN
F 2 "footprints:Pin_Header_THD_1x03" H 8900 3450 50  0001 C CNN
F 3 "" H 8900 3450 50  0000 C CNN
	1    8900 3450
	1    0    0    -1  
$EndComp
$Comp
L project-rescue:CONN_01X03 J7
U 1 1 603453CB
P 8900 4050
F 0 "J7" H 8900 4250 50  0000 C CNN
F 1 "FL" V 9000 4050 50  0000 C CNN
F 2 "footprints:Pin_Header_THD_1x03" H 8900 4050 50  0001 C CNN
F 3 "" H 8900 4050 50  0000 C CNN
	1    8900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2650 1150 2650
Wire Wire Line
	1500 1950 1500 2300
$Comp
L project:CONN_01X02 J2
U 1 1 60347008
P 950 2250
F 0 "J2" H 950 2400 50  0000 C CNN
F 1 "BAT" V 1050 2250 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 950 2250 50  0001 C CNN
F 3 "" H 950 2250 50  0001 C CNN
	1    950  2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 2200 1650 2200
Wire Wire Line
	1650 2200 1650 1850
Connection ~ 1650 2550
Wire Wire Line
	1150 2300 1500 2300
Connection ~ 1500 2650
$Comp
L project:CONN_01X02 J1
U 1 1 6041C3A6
P 950 1900
F 0 "J1" H 950 2050 50  0000 C CNN
F 1 "JST-SH" V 1050 1900 50  0000 C CNN
F 2 "footprints:JST_SH_SM02B_hand_solder" H 950 1900 50  0001 C CNN
F 3 "" H 950 1900 50  0001 C CNN
	1    950  1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1950 1500 1950
Connection ~ 1500 2300
Wire Wire Line
	1650 1850 1150 1850
Connection ~ 1650 2200
Wire Wire Line
	2400 2450 2550 2450
$Comp
L project-rescue:F_Small F2
U 1 1 604282C7
P 1650 2300
F 0 "F2" H 1610 2360 50  0000 L CNN
F 1 "PTC" H 1600 2250 50  0000 L CNN
F 2 "footprints:R_0805_HandSoldering" H 1650 2300 50  0001 C CNN
F 3 "" H 1650 2300 50  0000 C CNN
	1    1650 2300
	0    1    1    0   
$EndComp
$Comp
L project-rescue:F_Small F1
U 1 1 6042844A
P 1300 2550
F 0 "F1" H 1260 2610 50  0000 L CNN
F 1 "PTC" H 1180 2490 50  0000 L CNN
F 2 "footprints:R_0805_HandSoldering" H 1300 2550 50  0001 C CNN
F 3 "" H 1300 2550 50  0000 C CNN
	1    1300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2550 1200 2550
Wire Wire Line
	1650 2400 1650 2550
Wire Wire Line
	1400 2550 1650 2550
Wire Wire Line
	8550 3450 8550 4050
Wire Wire Line
	1650 2550 2000 2550
Wire Wire Line
	1500 2650 1500 2800
Wire Wire Line
	1500 2300 1500 2650
$Comp
L project:GND #PWR09
U 1 1 5B3FDE3A
P 4950 4650
F 0 "#PWR09" H 4950 4400 50  0001 C CNN
F 1 "GND" H 4950 4500 50  0000 C CNN
F 2 "" H 4950 4650 50  0001 C CNN
F 3 "" H 4950 4650 50  0001 C CNN
	1    4950 4650
	1    0    0    -1  
$EndComp
$Comp
L project:R R10
U 1 1 5B44E5C9
P 5900 2300
F 0 "R10" V 5980 2300 50  0000 C CNN
F 1 "100" V 5900 2300 50  0000 C CNN
F 2 "footprints:R_0603" V 5830 2300 50  0001 C CNN
F 3 "" H 5900 2300 50  0001 C CNN
	1    5900 2300
	0    -1   -1   0   
$EndComp
$Comp
L project:VCC #PWR08
U 1 1 5B6E5E4F
P 4950 2400
F 0 "#PWR08" H 4950 2250 50  0001 C CNN
F 1 "VCC" H 4950 2550 50  0000 C CNN
F 2 "" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny806-M U1
U 1 1 62315021
P 4950 3550
F 0 "U1" H 4500 4400 50  0000 C CNN
F 1 "ATtiny826" H 5200 4400 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm" H 4950 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny806_1606_Data_Sheet_40002029A.pdf" H 4950 3550 50  0001 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
$Comp
L project:C C2
U 1 1 5B3FF331
P 4050 3000
F 0 "C2" H 4075 3100 50  0000 L CNN
F 1 "0.1uF" H 4075 2900 50  0000 L CNN
F 2 "footprints:C_0603" H 4088 2850 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	1    0    0    -1  
$EndComp
$Comp
L project:C C1
U 1 1 5B3FF285
P 3700 3000
F 0 "C1" H 3725 3100 50  0000 L CNN
F 1 "10uF" H 3725 2900 50  0000 L CNN
F 2 "footprints:C_0805" H 3738 2850 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2400 4950 2550
$Comp
L project:GND #PWR07
U 1 1 62343B2F
P 3950 3400
F 0 "#PWR07" H 3950 3150 50  0001 C CNN
F 1 "GND" H 3950 3250 50  0000 C CNN
F 2 "" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3400 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2550 4050 2550
Wire Wire Line
	3700 2550 3700 2850
Connection ~ 4950 2550
Wire Wire Line
	4950 2550 4950 2650
Wire Wire Line
	4050 2850 4050 2550
Connection ~ 4050 2550
Wire Wire Line
	4050 2550 3700 2550
Wire Wire Line
	3700 3150 3700 3250
Wire Wire Line
	3700 3250 3950 3250
Wire Wire Line
	3950 3250 3950 3400
Wire Wire Line
	4050 3150 4050 3250
Wire Wire Line
	4050 3250 3950 3250
Connection ~ 3950 3250
Wire Wire Line
	4950 4450 4950 4650
Wire Wire Line
	5550 4250 5750 4250
Wire Wire Line
	5550 4150 5750 4150
Wire Wire Line
	5550 4050 5750 4050
Wire Wire Line
	5550 3950 5750 3950
Wire Wire Line
	5550 3850 5750 3850
Wire Wire Line
	5550 3750 5750 3750
Wire Wire Line
	5550 3550 5750 3550
Wire Wire Line
	5550 3450 5750 3450
Wire Wire Line
	5550 3350 5750 3350
Wire Wire Line
	5550 3250 5750 3250
Wire Wire Line
	5550 3150 5750 3150
Wire Wire Line
	5550 3050 5750 3050
Wire Wire Line
	5550 2950 5750 2950
Wire Wire Line
	5550 2850 5750 2850
Text Label 5550 2850 0    60   ~ 0
UPDI
Wire Wire Line
	6100 2400 5950 2400
Wire Wire Line
	5950 2400 5950 2450
$Comp
L project:VCC #PWR010
U 1 1 6234BB85
P 5950 2100
F 0 "#PWR010" H 5950 1950 50  0001 C CNN
F 1 "VCC" H 5950 2250 50  0000 C CNN
F 2 "" H 5950 2100 50  0001 C CNN
F 3 "" H 5950 2100 50  0001 C CNN
	1    5950 2100
	1    0    0    -1  
$EndComp
$Comp
L project:GND #PWR011
U 1 1 6234CFA3
P 5950 2450
F 0 "#PWR011" H 5950 2200 50  0001 C CNN
F 1 "GND" H 5950 2300 50  0000 C CNN
F 2 "" H 5950 2450 50  0001 C CNN
F 3 "" H 5950 2450 50  0001 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
Text Label 5550 2300 0    60   ~ 0
UPDI
Wire Wire Line
	6050 2300 6100 2300
Wire Wire Line
	5750 2300 5550 2300
Text Label 5600 2950 0    60   ~ 0
D14
Text Label 5600 3050 0    60   ~ 0
D15
Text Label 5600 3150 0    60   ~ 0
D16
Text Label 5600 3250 0    60   ~ 0
D0
Text Label 5600 3350 0    60   ~ 0
D1
Text Label 5600 3450 0    60   ~ 0
D2
Text Label 5600 3550 0    60   ~ 0
D3
Text Label 5600 3750 0    60   ~ 0
SCL
Text Label 5600 3850 0    60   ~ 0
SDA
Text Label 5600 3950 0    60   ~ 0
D7
Text Label 5600 4050 0    60   ~ 0
D6
Text Label 5600 4150 0    60   ~ 0
D5
Text Label 5600 4250 0    60   ~ 0
D4
Text Notes 7350 2350 0    60   ~ 0
https://github.com/SpenceKonde/megaTinyCore/\nPWM: 0, 1,  7, 8, 9, 16\naysnc int: 2, 7, 12, 15
Wire Wire Line
	4350 3750 4150 3750
Wire Wire Line
	4350 3850 4150 3850
Wire Wire Line
	4350 3950 4150 3950
Wire Wire Line
	4350 4050 4150 4050
Text Label 4150 3750 0    60   ~ 0
D10
Text Label 4150 3850 0    60   ~ 0
D11
Text Label 4150 3950 0    60   ~ 0
D12
Text Label 4150 4050 0    60   ~ 0
D13
Text Label 3150 5650 0    60   ~ 0
D3
Text Label 7800 3350 0    60   ~ 0
D1
Text Label 7750 3950 0    60   ~ 0
D16
Text Label 7800 4150 0    60   ~ 0
D7
Text Label 7750 2750 0    60   ~ 0
D0
Text Notes 7400 2750 0    60   ~ 0
pwm
Text Notes 7350 3350 0    60   ~ 0
pwm
Text Notes 7350 4150 0    60   ~ 0
pwm
Wire Wire Line
	7700 2750 8000 2750
Wire Wire Line
	8000 2950 8100 2950
Wire Wire Line
	7700 3950 8100 3950
Wire Wire Line
	7700 4150 8100 4150
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 623F35D1
P 6300 2300
F 0 "J4" H 6328 2326 50  0000 L CNN
F 1 "UDPI" H 6328 2235 50  0000 L CNN
F 2 "footprints:PinHeader_1x03_P2.00mm_Vertical" H 6300 2300 50  0001 C CNN
F 3 "~" H 6300 2300 50  0001 C CNN
	1    6300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2200 5950 2200
Wire Wire Line
	5950 2200 5950 2100
$Comp
L project:VCC #PWR013
U 1 1 623666E7
P 6750 5150
F 0 "#PWR013" H 6750 5000 50  0001 C CNN
F 1 "VCC" H 6750 5300 50  0000 C CNN
F 2 "" H 6750 5150 50  0001 C CNN
F 3 "" H 6750 5150 50  0001 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
$Comp
L project:R R1
U 1 1 62366FAD
P 7000 5200
F 0 "R1" V 7080 5200 50  0000 C CNN
F 1 "1" V 7000 5200 50  0000 C CNN
F 2 "footprints:R_0603" V 6930 5200 50  0001 C CNN
F 3 "" H 7000 5200 50  0001 C CNN
	1    7000 5200
	0    -1   -1   0   
$EndComp
$Comp
L project:R R2
U 1 1 62367648
P 7550 5200
F 0 "R2" V 7630 5200 50  0000 C CNN
F 1 "2" V 7550 5200 50  0000 C CNN
F 2 "footprints:R_0603" V 7480 5200 50  0001 C CNN
F 3 "" H 7550 5200 50  0001 C CNN
	1    7550 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 5150 6750 5200
Wire Wire Line
	6750 5200 6850 5200
Wire Wire Line
	7150 5200 7250 5200
Wire Wire Line
	7250 5200 7250 5400
Wire Wire Line
	7250 5400 6900 5400
Connection ~ 7250 5200
Wire Wire Line
	7250 5200 7400 5200
Text Label 6900 5400 0    60   ~ 0
D4
Text Notes 7050 5550 0    60   ~ 0
39K / 10K ?
Text Notes 6700 5750 0    60   ~ 0
A5 = Vcc * ( R2 / (R1 + R2) ) \nhttps://gist.github.com/dwhacks/7208805
Text Notes 7350 1850 0    60   ~ 0
Mode increment revert if\n>1 sec?
$Comp
L LED:SK6812MINI D0
U 1 1 624A44DE
P 3750 5650
F 0 "D0" H 4094 5696 50  0000 L CNN
F 1 "SK6812MINI" H 4094 5605 50  0000 L CNN
F 2 "footprints:WS2812B-2020" H 3800 5350 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 3850 5275 50  0001 L TNN
	1    3750 5650
	1    0    0    -1  
$EndComp
$Comp
L LED:SK6812MINI D7
U 1 1 624A7834
P 4700 5650
F 0 "D7" H 5044 5696 50  0000 L CNN
F 1 "SK6812MINI" H 5044 5605 50  0000 L CNN
F 2 "footprints:WS2812B-2020" H 4750 5350 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 4800 5275 50  0001 L TNN
	1    4700 5650
	1    0    0    -1  
$EndComp
$Comp
L project:VCC #PWR015
U 1 1 624A80A1
P 3750 5200
F 0 "#PWR015" H 3750 5050 50  0001 C CNN
F 1 "VCC" H 3750 5350 50  0000 C CNN
F 2 "" H 3750 5200 50  0001 C CNN
F 3 "" H 3750 5200 50  0001 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5650 3100 5650
Wire Wire Line
	4050 5650 4400 5650
Wire Wire Line
	3750 5200 3750 5350
$Comp
L project:GND #PWR016
U 1 1 624B2570
P 3750 6100
F 0 "#PWR016" H 3750 5850 50  0001 C CNN
F 1 "GND" H 3750 5950 50  0000 C CNN
F 2 "" H 3750 6100 50  0001 C CNN
F 3 "" H 3750 6100 50  0001 C CNN
	1    3750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6100 3750 5950
$Comp
L project:GND #PWR018
U 1 1 624B5FD4
P 4700 6100
F 0 "#PWR018" H 4700 5850 50  0001 C CNN
F 1 "GND" H 4700 5950 50  0000 C CNN
F 2 "" H 4700 6100 50  0001 C CNN
F 3 "" H 4700 6100 50  0001 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
$Comp
L project:VCC #PWR017
U 1 1 624B6467
P 4700 5200
F 0 "#PWR017" H 4700 5050 50  0001 C CNN
F 1 "VCC" H 4700 5350 50  0000 C CNN
F 2 "" H 4700 5200 50  0001 C CNN
F 3 "" H 4700 5200 50  0001 C CNN
	1    4700 5200
	1    0    0    -1  
$EndComp
NoConn ~ 5000 5650
Wire Wire Line
	4700 5350 4700 5200
Wire Wire Line
	4700 6100 4700 5950
$Comp
L project:C C3
U 1 1 624C081F
P 5600 5450
F 0 "C3" H 5625 5550 50  0000 L CNN
F 1 "1uF" H 5625 5350 50  0000 L CNN
F 2 "footprints:C_0603" H 5638 5300 50  0001 C CNN
F 3 "" H 5600 5450 50  0001 C CNN
	1    5600 5450
	1    0    0    -1  
$EndComp
$Comp
L project:C C4
U 1 1 624C29E1
P 5950 5450
F 0 "C4" H 5975 5550 50  0000 L CNN
F 1 "1uF" H 5975 5350 50  0000 L CNN
F 2 "footprints:C_0603" H 5988 5300 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
$Comp
L project:GND #PWR020
U 1 1 624C2C2A
P 5800 5750
F 0 "#PWR020" H 5800 5500 50  0001 C CNN
F 1 "GND" H 5800 5600 50  0000 C CNN
F 2 "" H 5800 5750 50  0001 C CNN
F 3 "" H 5800 5750 50  0001 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
$Comp
L project:VCC #PWR019
U 1 1 624C2FF6
P 5800 5200
F 0 "#PWR019" H 5800 5050 50  0001 C CNN
F 1 "VCC" H 5800 5350 50  0000 C CNN
F 2 "" H 5800 5200 50  0001 C CNN
F 3 "" H 5800 5200 50  0001 C CNN
	1    5800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5600 5600 5650
Wire Wire Line
	5600 5650 5800 5650
Wire Wire Line
	5800 5650 5800 5750
Wire Wire Line
	5950 5600 5950 5650
Wire Wire Line
	5950 5650 5800 5650
Connection ~ 5800 5650
Wire Wire Line
	5800 5200 5800 5250
Wire Wire Line
	5800 5250 5600 5250
Wire Wire Line
	5600 5250 5600 5300
Wire Wire Line
	5800 5250 5950 5250
Wire Wire Line
	5950 5250 5950 5300
Connection ~ 5800 5250
Text Notes 7350 3950 0    60   ~ 0
pwm
Wire Wire Line
	8550 4050 8550 5100
Text Notes 3250 6650 0    60   ~ 0
NeoPixel Nano 2020\nhttps://www.adafruit.com/product/4684
Wire Wire Line
	1900 3750 2150 3750
Text Label 1900 3950 0    60   ~ 0
SCL
Text Label 1900 3750 0    60   ~ 0
SDA
Wire Wire Line
	8000 3550 8000 3350
Connection ~ 8000 3350
Wire Wire Line
	8000 3350 8100 3350
Wire Wire Line
	8000 2950 8000 2750
Connection ~ 8000 2750
Wire Wire Line
	8000 2750 8100 2750
Wire Wire Line
	7700 5200 7950 5200
Text Label 7800 5200 0    60   ~ 0
D5
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 625B2420
P 2350 3850
F 0 "J8" H 2378 3876 50  0000 L CNN
F 1 "I2C" H 2378 3785 50  0000 L CNN
F 2 "footprints:PinHeader_1x03_P2.00mm_Vertical" H 2350 3850 50  0001 C CNN
F 3 "~" H 2350 3850 50  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3950 1900 3950
Text Label 1900 3850 0    60   ~ 0
D12
Wire Wire Line
	2150 3850 1900 3850
$EndSCHEMATC
