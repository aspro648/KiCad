EESchema Schematic File Version 2
LIBS:project
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
LIBS:MCP73833
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "HW LiPo LED Board "
Date "2020-05-30"
Rev "0.3"
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VBUS #PWR01
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
L GND #PWR02
U 1 1 5B3FDCF5
P 2250 950
F 0 "#PWR02" H 2250 700 50  0001 C CNN
F 1 "GND" H 2250 800 50  0000 C CNN
F 2 "" H 2250 950 50  0001 C CNN
F 3 "" H 2250 950 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5B3FDD3A
P 1000 950
F 0 "#FLG03" H 1000 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1100 50  0000 C CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1000 950 50  0001 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5B3FDD50
P 1800 950
F 0 "#FLG04" H 1800 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 1100 50  0000 C CNN
F 2 "" H 1800 950 50  0001 C CNN
F 3 "" H 1800 950 50  0001 C CNN
	1    1800 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 5B3FDD67
P 2250 950
F 0 "#FLG05" H 2250 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 1100 50  0000 C CNN
F 2 "" H 2250 950 50  0001 C CNN
F 3 "" H 2250 950 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 5B6E5416
P 1800 950
F 0 "#PWR06" H 1800 800 50  0001 C CNN
F 1 "VCC" H 1800 1100 50  0000 C CNN
F 2 "" H 1800 950 50  0001 C CNN
F 3 "" H 1800 950 50  0001 C CNN
	1    1800 950 
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 5B3FFE6E
P 1400 950
F 0 "#FLG07" H 1400 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 1100 50  0000 C CNN
F 2 "" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	1    1400 950 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR08
U 1 1 5B6E4208
P 1400 950
F 0 "#PWR08" H 1400 800 50  0001 C CNN
F 1 "+BATT" V 1400 1200 50  0000 C CNN
F 2 "" H 1400 950 50  0001 C CNN
F 3 "" H 1400 950 50  0001 C CNN
	1    1400 950 
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5B77416F
P 4100 3000
F 0 "C1" H 4125 3100 50  0000 L CNN
F 1 "10uF" H 4125 2900 50  0000 L CNN
F 2 "footprints:C_0805" H 4138 2850 50  0001 C CNN
F 3 "" H 4100 3000 50  0001 C CNN
	1    4100 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5B7EE8E2
P 4100 4200
F 0 "#PWR09" H 4100 3950 50  0001 C CNN
F 1 "GND" H 4100 4050 50  0000 C CNN
F 2 "" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR010
U 1 1 5B7EF05A
P 4100 2650
F 0 "#PWR010" H 4100 2500 50  0001 C CNN
F 1 "VBUS" H 4100 2800 50  0000 C CNN
F 2 "" H 4100 2650 50  0001 C CNN
F 3 "" H 4100 2650 50  0001 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5B7EF1B7
P 6500 2900
F 0 "D2" H 6500 3000 50  0000 C CNN
F 1 "CHG" H 6500 2800 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 6500 2900 50  0001 C CNN
F 3 "" H 6500 2900 50  0001 C CNN
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B7EF1EF
P 6100 2900
F 0 "R2" V 6180 2900 50  0000 C CNN
F 1 "1K" V 6100 2900 50  0000 C CNN
F 2 "footprints:R_0603" V 6030 2900 50  0001 C CNN
F 3 "" H 6100 2900 50  0001 C CNN
	1    6100 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5B7EFA67
P 4350 3850
F 0 "R5" V 4400 3700 50  0000 C CNN
F 1 "10K" V 4350 3850 50  0000 C CNN
F 2 "footprints:R_0603" V 4280 3850 50  0001 C CNN
F 3 "" H 4350 3850 50  0001 C CNN
	1    4350 3850
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B7EFC72
P 5850 3950
F 0 "C2" H 5875 4050 50  0000 L CNN
F 1 "10uF" H 5875 3850 50  0000 L CNN
F 2 "footprints:C_0805" H 5888 3800 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J3
U 1 1 5B7F07B5
P 3150 3750
F 0 "J3" H 3150 3900 50  0000 C CNN
F 1 "BAT" V 3250 3750 50  0000 C CNN
F 2 "footprints:JST_SH_SM02B-SRSS-TB_02x1.00mm_Angled" H 3150 3750 50  0001 C CNN
F 3 "" H 3150 3750 50  0001 C CNN
	1    3150 3750
	-1   0    0    1   
$EndComp
$Comp
L SW_SPDT SW1
U 1 1 5B9534D5
P 2400 4550
F 0 "SW1" H 2400 4720 50  0000 C CNN
F 1 "SW_SPDT" H 2400 4350 50  0000 C CNN
F 2 "footprints:SPST_SMD" H 2400 4550 50  0001 C CNN
F 3 "" H 2400 4550 50  0001 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
Text Notes 4250 5200 0    60   ~ 0
R5:\n10K= 100 mA\n5K = 200 mA\n2K = 500 mA\n1K = 1000 mA
$Comp
L MCP73833-AMI/UN-ND U1
U 1 1 5E84C831
P 5100 3300
F 0 "U1" H 5000 3540 60  0000 R CNN
F 1 "MCP73833" H 5210 2750 60  0000 L CNN
F 2 "footprints:MSOP-10_3x3mm_Pitch0.5mm" H 5300 3500 60  0001 L CNN
F 3 "" H 5300 3600 60  0001 L CNN
	1    5100 3300
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5E84D467
P 6500 3200
F 0 "D3" H 6500 3300 50  0000 C CNN
F 1 "DONE" H 6500 3100 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5E84D4BF
P 6100 3200
F 0 "R3" V 6180 3200 50  0000 C CNN
F 1 "1K" V 6100 3200 50  0000 C CNN
F 2 "footprints:R_0603" V 6030 3200 50  0001 C CNN
F 3 "" H 6100 3200 50  0001 C CNN
	1    6100 3200
	0    -1   -1   0   
$EndComp
$Comp
L VBUS #PWR011
U 1 1 5E84DD68
P 6850 2750
F 0 "#PWR011" H 6850 2600 50  0001 C CNN
F 1 "VBUS" H 6850 2900 50  0000 C CNN
F 2 "" H 6850 2750 50  0001 C CNN
F 3 "" H 6850 2750 50  0001 C CNN
	1    6850 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5E84E372
P 5200 4200
F 0 "#PWR012" H 5200 3950 50  0001 C CNN
F 1 "GND" H 5200 4050 50  0000 C CNN
F 2 "" H 5200 4200 50  0001 C CNN
F 3 "" H 5200 4200 50  0001 C CNN
	1    5200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5E84EF0B
P 5850 4200
F 0 "#PWR013" H 5850 3950 50  0001 C CNN
F 1 "GND" H 5850 4050 50  0000 C CNN
F 2 "" H 5850 4200 50  0001 C CNN
F 3 "" H 5850 4200 50  0001 C CNN
	1    5850 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5E84F107
P 4350 4200
F 0 "#PWR014" H 4350 3950 50  0001 C CNN
F 1 "GND" H 4350 4050 50  0000 C CNN
F 2 "" H 4350 4200 50  0001 C CNN
F 3 "" H 4350 4200 50  0001 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5E84F5CB
P 4600 3850
F 0 "R4" V 4650 3700 50  0000 C CNN
F 1 "10K" V 4600 3850 50  0000 C CNN
F 2 "footprints:R_0603" V 4530 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0001 C CNN
	1    4600 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5E84F669
P 4600 4200
F 0 "#PWR015" H 4600 3950 50  0001 C CNN
F 1 "GND" H 4600 4050 50  0000 C CNN
F 2 "" H 4600 4200 50  0001 C CNN
F 3 "" H 4600 4200 50  0001 C CNN
	1    4600 4200
	1    0    0    -1  
$EndComp
$Comp
L USB_B J2
U 1 1 5EA71AD7
P 1850 3000
F 0 "J2" H 1650 3450 50  0000 L CNN
F 1 "USB-MICRO" H 1650 3350 50  0000 L CNN
F 2 "footprints:USB_Micro-B_Molex-105017-0001" H 2000 2950 50  0001 C CNN
F 3 "" H 2000 2950 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
NoConn ~ 2150 3000
NoConn ~ 2150 3100
$Comp
L R R6
U 1 1 5EA72640
P 8250 2750
F 0 "R6" V 8330 2750 50  0000 C CNN
F 1 "100" V 8250 2750 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 2750 50  0001 C CNN
F 3 "" H 8250 2750 50  0001 C CNN
	1    8250 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5EA726D2
P 8250 3050
F 0 "R7" V 8330 3050 50  0000 C CNN
F 1 "100" V 8250 3050 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3050 50  0001 C CNN
F 3 "" H 8250 3050 50  0001 C CNN
	1    8250 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5EA72763
P 8250 3350
F 0 "R8" V 8330 3350 50  0000 C CNN
F 1 "100" V 8250 3350 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3350 50  0001 C CNN
F 3 "" H 8250 3350 50  0001 C CNN
	1    8250 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5EA727AD
P 8250 3650
F 0 "R9" V 8330 3650 50  0000 C CNN
F 1 "100" V 8250 3650 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3650 50  0001 C CNN
F 3 "" H 8250 3650 50  0001 C CNN
	1    8250 3650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 5EA80039
P 8900 2800
F 0 "J1" H 8900 2950 50  0000 C CNN
F 1 "LED" V 9000 2800 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 8900 2800 50  0001 C CNN
F 3 "" H 8900 2800 50  0001 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5EA808F7
P 8550 4200
F 0 "#PWR016" H 8550 3950 50  0001 C CNN
F 1 "GND" H 8550 4050 50  0000 C CNN
F 2 "" H 8550 4200 50  0001 C CNN
F 3 "" H 8550 4200 50  0001 C CNN
	1    8550 4200
	1    0    0    -1  
$EndComp
Text Label 3350 2800 0    60   ~ 0
VBUS
Text Label 3350 2900 0    60   ~ 0
GND
$Comp
L CONN_01X02 J6
U 1 1 5EA92CF9
P 8900 3100
F 0 "J6" H 8900 3250 50  0000 C CNN
F 1 "LED" V 9000 3100 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 8900 3100 50  0001 C CNN
F 3 "" H 8900 3100 50  0001 C CNN
	1    8900 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J7
U 1 1 5EA92D66
P 8900 3400
F 0 "J7" H 8900 3550 50  0000 C CNN
F 1 "LED" V 9000 3400 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 8900 3400 50  0001 C CNN
F 3 "" H 8900 3400 50  0001 C CNN
	1    8900 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J8
U 1 1 5EA92DD8
P 8900 3700
F 0 "J8" H 8900 3850 50  0000 C CNN
F 1 "LED" V 9000 3700 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 8900 3700 50  0001 C CNN
F 3 "" H 8900 3700 50  0001 C CNN
	1    8900 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J9
U 1 1 5EA9312B
P 8900 4000
F 0 "J9" H 8900 4150 50  0000 C CNN
F 1 "LED" V 9000 4000 50  0000 C CNN
F 2 "footprints:PIN_HEADER_LED" H 8900 4000 50  0001 C CNN
F 3 "" H 8900 4000 50  0001 C CNN
	1    8900 4000
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5EA9330B
P 8250 3950
F 0 "R10" V 8330 3950 50  0000 C CNN
F 1 "100" V 8250 3950 50  0000 C CNN
F 2 "footprints:R_0603" V 8180 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	0    -1   -1   0   
$EndComp
$Comp
L LED D5
U 1 1 5EA9D6A1
P 8300 2300
F 0 "D5" H 8300 2400 50  0000 C CNN
F 1 "UND" H 8300 2200 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8300 2300 50  0001 C CNN
F 3 "" H 8300 2300 50  0001 C CNN
	1    8300 2300
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5EA9D74A
P 8300 2050
F 0 "D4" H 8300 2150 50  0000 C CNN
F 1 "UND" H 8300 1950 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5EA9D858
P 8000 2300
F 0 "R12" V 8080 2300 50  0000 C CNN
F 1 "100" V 8000 2300 50  0000 C CNN
F 2 "footprints:R_0603" V 7930 2300 50  0001 C CNN
F 3 "" H 8000 2300 50  0001 C CNN
	1    8000 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 5EA9D8DF
P 8000 2050
F 0 "R11" V 8080 2050 50  0000 C CNN
F 1 "100" V 8000 2050 50  0000 C CNN
F 2 "footprints:R_0603" V 7930 2050 50  0001 C CNN
F 3 "" H 8000 2050 50  0001 C CNN
	1    8000 2050
	0    -1   -1   0   
$EndComp
Connection ~ 8550 2300
Wire Wire Line
	8450 2300 8550 2300
Connection ~ 8550 2850
Wire Wire Line
	8450 2050 8550 2050
Connection ~ 7750 2300
Wire Wire Line
	7750 2050 7850 2050
Connection ~ 7750 2750
Wire Wire Line
	7750 2300 7850 2300
Wire Wire Line
	2000 4550 2200 4550
Wire Wire Line
	3550 3400 3550 4650
Wire Wire Line
	2450 3400 3550 3400
Connection ~ 3650 3700
Wire Wire Line
	2350 3300 3650 3300
Wire Wire Line
	3350 3700 3650 3700
Wire Wire Line
	3650 3300 3650 4550
Connection ~ 3800 3150
Wire Wire Line
	3800 2900 3800 3800
Wire Wire Line
	3800 3800 3350 3800
Wire Wire Line
	2700 3950 2450 3950
Wire Wire Line
	2700 4450 2700 3950
Wire Wire Line
	2000 3950 2000 4550
Wire Wire Line
	2350 3950 2000 3950
Connection ~ 8550 3150
Wire Wire Line
	8550 3150 8700 3150
Connection ~ 8550 3450
Wire Wire Line
	8550 3450 8700 3450
Connection ~ 8550 3750
Wire Wire Line
	8550 3750 8700 3750
Connection ~ 8550 4050
Wire Wire Line
	8550 4050 8700 4050
Wire Wire Line
	8550 2050 8550 4200
Wire Wire Line
	8700 2850 8550 2850
Wire Wire Line
	8400 3950 8700 3950
Wire Wire Line
	8400 3650 8700 3650
Wire Wire Line
	8400 3350 8700 3350
Wire Wire Line
	8400 3050 8700 3050
Wire Wire Line
	8400 2750 8700 2750
Connection ~ 7750 3650
Wire Wire Line
	7750 3950 8100 3950
Connection ~ 7750 3350
Wire Wire Line
	7750 3650 8100 3650
Connection ~ 7750 3250
Wire Wire Line
	7750 3350 8100 3350
Connection ~ 7750 3050
Wire Wire Line
	7750 3050 8100 3050
Wire Wire Line
	7750 2750 8100 2750
Wire Wire Line
	7750 2050 7750 3950
Wire Wire Line
	7400 3250 7750 3250
Wire Wire Line
	7400 4650 7400 3250
Wire Wire Line
	3550 4650 7400 4650
Wire Wire Line
	5600 3700 6100 3700
Connection ~ 5100 2800
Wire Wire Line
	6100 3700 6100 4550
Wire Wire Line
	6100 4550 3650 4550
Wire Wire Line
	2150 2800 5200 2800
Wire Wire Line
	2250 2900 3800 2900
Wire Wire Line
	3800 3150 4100 3150
Wire Wire Line
	2450 3950 2450 3400
Wire Wire Line
	2600 4450 2700 4450
Wire Wire Line
	2350 3950 2350 3300
Wire Wire Line
	1750 3600 1750 3400
Wire Wire Line
	1850 3400 1850 3600
Wire Wire Line
	2250 3600 2250 2900
Connection ~ 1850 3600
Wire Wire Line
	1750 3600 2250 3600
Wire Wire Line
	4600 4000 4600 4200
Wire Wire Line
	4600 3500 4600 3700
Wire Wire Line
	4800 3500 4600 3500
Wire Wire Line
	4350 4000 4350 4200
Wire Wire Line
	4350 3400 4350 3700
Wire Wire Line
	4800 3400 4350 3400
Wire Wire Line
	5850 4100 5850 4200
Wire Wire Line
	5850 3600 5850 3800
Wire Wire Line
	5600 3600 5850 3600
Connection ~ 5850 3700
Wire Wire Line
	5200 3900 5200 4200
Wire Wire Line
	4100 3150 4100 4200
Connection ~ 4100 2800
Wire Wire Line
	5100 2800 5100 3000
Wire Wire Line
	5200 2800 5200 3000
Wire Wire Line
	4100 2650 4100 2850
Connection ~ 6850 2900
Wire Wire Line
	6650 2900 6850 2900
Wire Wire Line
	6850 3200 6650 3200
Wire Wire Line
	6850 2750 6850 3200
Wire Wire Line
	6250 3200 6350 3200
Wire Wire Line
	6250 2900 6350 2900
Wire Wire Line
	5750 2900 5950 2900
Wire Wire Line
	5750 3300 5750 2900
Wire Wire Line
	5600 3300 5750 3300
Wire Wire Line
	5850 3200 5950 3200
Wire Wire Line
	5850 3400 5850 3200
Wire Wire Line
	5600 3400 5850 3400
Connection ~ 3350 2800
Connection ~ 2600 2800
Connection ~ 3350 2900
Connection ~ 2600 2900
Connection ~ 3350 3300
Connection ~ 2600 3300
Connection ~ 3350 3400
Connection ~ 2600 3400
$Comp
L Conn_01x01 J56
U 1 1 5ED146A0
P 2800 3400
F 0 "J56" H 2900 3350 50  0000 C CNN
F 1 "Conn" H 2750 3400 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 2800 3400 50  0001 C CNN
F 3 "" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J57
U 1 1 5ED14BF8
P 2800 3300
F 0 "J57" H 2900 3250 50  0000 C CNN
F 1 "Conn" H 2750 3300 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J58
U 1 1 5ED14F3B
P 3150 3400
F 0 "J58" H 3250 3400 50  0000 C CNN
F 1 "Conn" H 3100 3400 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3400 50  0001 C CNN
F 3 "" H 3150 3400 50  0001 C CNN
	1    3150 3400
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J59
U 1 1 5ED1500E
P 3150 3200
F 0 "J59" H 3250 3200 50  0000 C CNN
F 1 "Conn" H 3100 3200 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3200 50  0001 C CNN
F 3 "" H 3150 3200 50  0001 C CNN
	1    3150 3200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J46
U 1 1 5ED152A2
P 2800 2800
F 0 "J46" H 2900 2750 50  0000 C CNN
F 1 "Conn" H 2750 2800 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J47
U 1 1 5ED15332
P 2800 2900
F 0 "J47" H 2900 2850 50  0000 C CNN
F 1 "Conn" H 2750 2900 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 2800 2900 50  0001 C CNN
F 3 "" H 2800 2900 50  0001 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J48
U 1 1 5ED153BB
P 3150 2800
F 0 "J48" H 3250 2800 50  0000 C CNN
F 1 "Conn" H 3100 2800 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 2800 50  0001 C CNN
F 3 "" H 3150 2800 50  0001 C CNN
	1    3150 2800
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J49
U 1 1 5ED1544B
P 3150 2900
F 0 "J49" H 3250 2900 50  0000 C CNN
F 1 "Conn" H 3100 2900 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 2900 50  0001 C CNN
F 3 "" H 3150 2900 50  0001 C CNN
	1    3150 2900
	-1   0    0    1   
$EndComp
Text Label 3350 3300 0    60   ~ 0
VBAT
Text Label 3350 3400 0    60   ~ 0
Vin
NoConn ~ 5600 3500
$Comp
L Conn_01x01 J44
U 1 1 5ED246AE
P 3150 3100
F 0 "J44" H 3250 3100 50  0000 C CNN
F 1 "Conn" H 3100 3100 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3100 50  0001 C CNN
F 3 "" H 3150 3100 50  0001 C CNN
	1    3150 3100
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J45
U 1 1 5ED24727
P 3150 3000
F 0 "J45" H 3250 3000 50  0000 C CNN
F 1 "Conn" H 3100 3000 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3000 50  0001 C CNN
F 3 "" H 3150 3000 50  0001 C CNN
	1    3150 3000
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J55
U 1 1 5ED247A3
P 3150 3300
F 0 "J55" H 3250 3300 50  0000 C CNN
F 1 "Conn" H 3100 3300 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3300 50  0001 C CNN
F 3 "" H 3150 3300 50  0001 C CNN
	1    3150 3300
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J54
U 1 1 5ED24822
P 3150 3500
F 0 "J54" H 3250 3500 50  0000 C CNN
F 1 "Conn" H 3100 3500 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_0-8mmDrill" H 3150 3500 50  0001 C CNN
F 3 "" H 3150 3500 50  0001 C CNN
	1    3150 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3500 3350 3400
Wire Wire Line
	3350 3100 3350 3300
Wire Wire Line
	3350 2900 3350 3000
Connection ~ 3350 3200
$Comp
L LED D20
U 1 1 5ED36CA4
P 8250 4650
F 0 "D20" H 8250 4750 50  0000 C CNN
F 1 "LED" H 8250 4550 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J20
U 1 1 5ED36D71
P 8800 4700
F 0 "J20" H 8800 4850 50  0000 C CNN
F 1 "LED" V 8900 4700 50  0000 C CNN
F 2 "footprints:LED_PADS" H 8800 4700 50  0001 C CNN
F 3 "" H 8800 4700 50  0001 C CNN
	1    8800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4750 8000 4750
Wire Wire Line
	8000 4750 8000 4650
Wire Wire Line
	8000 4650 8100 4650
Wire Wire Line
	8400 4650 8600 4650
$Comp
L LED D21
U 1 1 5ED37168
P 8250 5000
F 0 "D21" H 8250 5100 50  0000 C CNN
F 1 "LED" H 8250 4900 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8250 5000 50  0001 C CNN
F 3 "" H 8250 5000 50  0001 C CNN
	1    8250 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J21
U 1 1 5ED3716E
P 8800 5050
F 0 "J21" H 8800 5200 50  0000 C CNN
F 1 "LED" V 8900 5050 50  0000 C CNN
F 2 "footprints:LED_PADS" H 8800 5050 50  0001 C CNN
F 3 "" H 8800 5050 50  0001 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5100 8000 5100
Wire Wire Line
	8000 5100 8000 5000
Wire Wire Line
	8000 5000 8100 5000
Wire Wire Line
	8400 5000 8600 5000
$Comp
L LED D22
U 1 1 5ED373AA
P 8250 5400
F 0 "D22" H 8250 5500 50  0000 C CNN
F 1 "LED" H 8250 5300 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8250 5400 50  0001 C CNN
F 3 "" H 8250 5400 50  0001 C CNN
	1    8250 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J22
U 1 1 5ED373B0
P 8800 5450
F 0 "J22" H 8800 5600 50  0000 C CNN
F 1 "LED" V 8900 5450 50  0000 C CNN
F 2 "footprints:LED_PADS" H 8800 5450 50  0001 C CNN
F 3 "" H 8800 5450 50  0001 C CNN
	1    8800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5500 8000 5500
Wire Wire Line
	8000 5500 8000 5400
Wire Wire Line
	8000 5400 8100 5400
Wire Wire Line
	8400 5400 8600 5400
$Comp
L LED D23
U 1 1 5ED373BA
P 8250 5750
F 0 "D23" H 8250 5850 50  0000 C CNN
F 1 "LED" H 8250 5650 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 8250 5750 50  0001 C CNN
F 3 "" H 8250 5750 50  0001 C CNN
	1    8250 5750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J23
U 1 1 5ED373C0
P 8800 5800
F 0 "J23" H 8800 5950 50  0000 C CNN
F 1 "LED" V 8900 5800 50  0000 C CNN
F 2 "footprints:LED_PADS" H 8800 5800 50  0001 C CNN
F 3 "" H 8800 5800 50  0001 C CNN
	1    8800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5850 8000 5850
Wire Wire Line
	8000 5850 8000 5750
Wire Wire Line
	8000 5750 8100 5750
Wire Wire Line
	8400 5750 8600 5750
$EndSCHEMATC