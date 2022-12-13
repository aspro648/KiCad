EESchema Schematic File Version 2
LIBS:project-rescue
LIBS:project
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
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
F 2 "Connectors_Molex:Connector_Molex_PicoBlade_53048-0210" H 3150 3750 50  0001 C CNN
F 3 "" H 3150 3750 50  0001 C CNN
	1    3150 3750
	-1   0    0    -1  
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
L USB_B-RESCUE-project J2
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
Text Label 3350 2800 0    60   ~ 0
VBUS
Text Label 3350 2900 0    60   ~ 0
GND
Wire Wire Line
	3350 3700 3650 3700
Wire Wire Line
	3650 3700 3650 4550
Connection ~ 3800 3150
Wire Wire Line
	3800 2900 3800 3800
Wire Wire Line
	3800 3800 3350 3800
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
NoConn ~ 5600 3500
$EndSCHEMATC