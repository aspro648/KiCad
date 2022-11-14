EESchema Schematic File Version 2
LIBS:project
LIBS:arduino
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
LIBS:project-cache
EELAYER 25 0
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
L ATMEGA32U4-AU U4
U 1 1 5B3FD92A
P 7400 2850
F 0 "U4" H 6450 4550 50  0000 C CNN
F 1 "ATMEGA32U4-AU" H 8100 1350 50  0000 C CNN
F 2 "footprints:TQFP-44_10x10mm_Pitch0.8mm" H 7400 2850 50  0001 C CIN
F 3 "" H 8500 3950 50  0001 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
Text Label 8650 1400 0    60   ~ 0
SCK
Text Label 8600 1500 0    60   ~ 0
MOSI
Text Label 8600 1600 0    60   ~ 0
MISO
Text Label 8700 1700 0    60   ~ 0
D8
Text Label 8700 1800 0    60   ~ 0
D9
Text Label 8650 1900 0    60   ~ 0
D10
Text Label 8650 2000 0    60   ~ 0
D11
Text Label 8700 2200 0    60   ~ 0
D5
Text Label 8650 2300 0    60   ~ 0
D13
Text Label 8650 2500 0    60   ~ 0
SCL
Text Label 8650 2600 0    60   ~ 0
SDA
Text Label 8700 2700 0    60   ~ 0
D0
Text Label 8700 2800 0    60   ~ 0
D1
Text Label 8700 2900 0    60   ~ 0
D4
Text Label 8650 3100 0    60   ~ 0
D12
Text Label 8700 3200 0    60   ~ 0
D6
Text Label 8700 3500 0    60   ~ 0
D7
Text Label 8700 3700 0    60   ~ 0
A5
Text Label 8700 3800 0    60   ~ 0
A4
Text Label 8700 3900 0    60   ~ 0
A3
Text Label 8700 4000 0    60   ~ 0
A2
Text Label 8700 4100 0    60   ~ 0
A1
Text Label 8700 4200 0    60   ~ 0
A0
$Comp
L GND #PWR01
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
L PWR_FLAG #FLG02
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
L PWR_FLAG #FLG03
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
L PWR_FLAG #FLG04
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
L GND #PWR05
U 1 1 5B3FDE3A
P 7300 4450
F 0 "#PWR05" H 7300 4200 50  0001 C CNN
F 1 "GND" H 7300 4300 50  0000 C CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0001 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
NoConn ~ 6950 1050
$Comp
L C C7
U 1 1 5B3FDF75
P 6100 3150
F 0 "C7" H 6125 3250 50  0000 L CNN
F 1 "10uF" H 6125 3050 50  0000 L CNN
F 2 "footprints:C_1206_HandSoldering" H 6138 3000 50  0001 C CNN
F 3 "" H 6100 3150 50  0001 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B3FDF98
P 6100 3300
F 0 "#PWR06" H 6100 3050 50  0001 C CNN
F 1 "GND" H 6100 3150 50  0000 C CNN
F 2 "" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Text Label 6000 1300 0    60   ~ 0
~RESET
Text Label 6050 3700 0    60   ~ 0
AREF
$Comp
L GND #PWR07
U 1 1 5B3FE24E
P 5500 1850
F 0 "#PWR07" H 5500 1600 50  0001 C CNN
F 1 "GND" H 5500 1700 50  0000 C CNN
F 2 "" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR08
U 1 1 5B3FE2CD
P 6100 2450
F 0 "#PWR08" H 6100 2300 50  0001 C CNN
F 1 "VBUS" H 6100 2600 50  0000 C CNN
F 2 "" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG X1
U 1 1 5B3FE368
P 4600 2650
F 0 "X1" H 4400 3100 50  0000 L CNN
F 1 "USB_OTG" H 4400 3000 50  0000 L CNN
F 2 "footprints:USB_Micro-B_Molex-105017-0001" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B3FE405
P 5800 2650
F 0 "R6" V 5750 2500 50  0000 C CNN
F 1 "22" V 5800 2650 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 5730 2650 50  0001 C CNN
F 3 "" H 5800 2650 50  0001 C CNN
	1    5800 2650
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5B3FE482
P 5800 2750
F 0 "R7" V 5850 2600 50  0000 C CNN
F 1 "22" V 5800 2750 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 5730 2750 50  0001 C CNN
F 3 "" H 5800 2750 50  0001 C CNN
	1    5800 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5B3FE6F5
P 4600 3300
F 0 "#PWR09" H 4600 3050 50  0001 C CNN
F 1 "GND" H 4600 3150 50  0000 C CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
NoConn ~ 4900 2850
$Comp
L PWR_FLAG #FLG010
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
L SW_Push SW1
U 1 1 5B4008ED
P 5750 1300
F 0 "SW1" H 5800 1400 50  0000 L CNN
F 1 "RESET" H 5750 1240 50  0000 C CNN
F 2 "footprints:SW_SPST_PTS645" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5B40099C
P 5500 1350
F 0 "#PWR011" H 5500 1100 50  0001 C CNN
F 1 "GND" H 5500 1200 50  0000 C CNN
F 2 "" H 5500 1350 50  0001 C CNN
F 3 "" H 5500 1350 50  0001 C CNN
	1    5500 1350
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B406515
P 9950 3650
F 0 "R4" V 9850 3650 50  0000 C CNN
F 1 "1K" V 9950 3650 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 9880 3650 50  0001 C CNN
F 3 "" H 9950 3650 50  0001 C CNN
	1    9950 3650
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5B40657A
P 9950 3300
F 0 "D4" H 9950 3400 50  0000 C CNN
F 1 "D13" H 9950 3200 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 9950 3300 50  0001 C CNN
F 3 "" H 9950 3300 50  0001 C CNN
	1    9950 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5B40667D
P 9950 3900
F 0 "#PWR012" H 9950 3650 50  0001 C CNN
F 1 "GND" H 9950 3750 50  0000 C CNN
F 2 "" H 9950 3900 50  0001 C CNN
F 3 "" H 9950 3900 50  0001 C CNN
	1    9950 3900
	1    0    0    -1  
$EndComp
Text Label 8550 1300 0    60   ~ 0
RXLED
Text Label 8550 3000 0    60   ~ 0
TXLED
$Comp
L R R3
U 1 1 5B44E5C9
P 9650 3650
F 0 "R3" V 9730 3650 50  0000 C CNN
F 1 "1K" V 9650 3650 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 9580 3650 50  0001 C CNN
F 3 "" H 9650 3650 50  0001 C CNN
	1    9650 3650
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5B44E5CF
P 9650 3300
F 0 "D3" H 9650 3400 50  0000 C CNN
F 1 "RX" H 9650 3200 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 9650 3300 50  0001 C CNN
F 3 "" H 9650 3300 50  0001 C CNN
	1    9650 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5B44E637
P 9350 3650
F 0 "R2" V 9430 3650 50  0000 C CNN
F 1 "1K" V 9350 3650 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 9280 3650 50  0001 C CNN
F 3 "" H 9350 3650 50  0001 C CNN
	1    9350 3650
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5B44E63D
P 9350 3300
F 0 "D2" H 9350 3400 50  0000 C CNN
F 1 "TX" H 9350 3200 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 9350 3300 50  0001 C CNN
F 3 "" H 9350 3300 50  0001 C CNN
	1    9350 3300
	0    -1   -1   0   
$EndComp
Text Label 6100 2650 0    60   ~ 0
D+
Text Label 6100 2750 0    60   ~ 0
D-
$Comp
L Polyfuse F1
U 1 1 5B6E44FA
P 5750 2450
F 0 "F1" V 5650 2350 50  0000 C CNN
F 1 "Polyfuse" V 5800 2600 50  0000 C CNN
F 2 "footprints:R_1206_HandSoldering" H 5800 2250 50  0001 L CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5750 2450
	0    1    1    0   
$EndComp
NoConn ~ 5750 2450
$Comp
L Arduino_Leonardo_Shield XA1
U 1 1 5B8DB5BC
P 4350 5300
F 0 "XA1" V 4450 5300 60  0000 C CNN
F 1 "Arduino_Leonardo_Shield" V 4250 5300 60  0000 C CNN
F 2 "footprints:Arduino_Leonardo_Shield" H 6150 9050 60  0001 C CNN
F 3 "" H 6150 9050 60  0001 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
Text Label 5650 4250 0    60   ~ 0
SDA
Text Label 5650 4350 0    60   ~ 0
SCL
Text Label 5650 4450 0    60   ~ 0
D4
Text Label 5650 4550 0    60   ~ 0
D5
Text Label 5650 4650 0    60   ~ 0
D6
Text Label 5650 4750 0    60   ~ 0
D7
Text Label 5650 4850 0    60   ~ 0
D8
Text Label 5650 4950 0    60   ~ 0
D9
Text Label 5650 5050 0    60   ~ 0
D10
Text Label 5650 5150 0    60   ~ 0
D11
Text Label 5650 5250 0    60   ~ 0
D12
Text Label 5650 5350 0    60   ~ 0
D13
Text Label 5650 5550 0    60   ~ 0
MISO
Text Label 5650 5650 0    60   ~ 0
MOSI
Text Label 5650 5750 0    60   ~ 0
SCK
Text Label 2900 4250 0    60   ~ 0
D0
Text Label 2900 4350 0    60   ~ 0
D1
Text Label 2900 4550 0    60   ~ 0
SCL
Text Label 2900 4650 0    60   ~ 0
SDA
Text Label 2900 4950 0    60   ~ 0
A5
Text Label 2900 5050 0    60   ~ 0
A4
Text Label 2900 5150 0    60   ~ 0
A3
Text Label 2900 5250 0    60   ~ 0
A2
Text Label 2900 5350 0    60   ~ 0
A1
Text Label 2900 5450 0    60   ~ 0
A0
Text Label 2900 5550 0    60   ~ 0
AREF
$Comp
L GND #PWR013
U 1 1 5B8E574F
P 2900 5950
F 0 "#PWR013" H 2900 5700 50  0001 C CNN
F 1 "GND" V 2900 5750 50  0000 C CNN
F 2 "" H 2900 5950 50  0001 C CNN
F 3 "" H 2900 5950 50  0001 C CNN
	1    2900 5950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5B8E82AC
P 5900 5950
F 0 "#PWR014" H 5900 5700 50  0001 C CNN
F 1 "GND" V 5900 5750 50  0000 C CNN
F 2 "" H 5900 5950 50  0001 C CNN
F 3 "" H 5900 5950 50  0001 C CNN
	1    5900 5950
	0    -1   -1   0   
$EndComp
$Comp
L NCP1117-1.5_SOT223 U3
U 1 1 5B8E9EEE
P 2050 1600
F 0 "U3" H 1900 1350 50  0000 C CNN
F 1 "NCP1117-1.5" H 1850 1750 50  0000 L CNN
F 2 "footprints:SOT-223-3_TabPin2" H 2050 1800 50  0001 C CNN
F 3 "" H 2150 1350 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L Barrel_Jack J3
U 1 1 5B8EA11B
P 850 1700
F 0 "J3" H 850 1910 50  0000 C CNN
F 1 "Barrel_Jack" H 850 1525 50  0000 C CNN
F 2 "footprints:BARREL_JACK" H 900 1660 50  0001 C CNN
F 3 "" H 900 1660 50  0001 C CNN
	1    850  1700
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B8EA90E
P 1550 1850
F 0 "C3" H 1575 1950 50  0000 L CNN
F 1 "10uF" H 1575 1750 50  0000 L CNN
F 2 "footprints:C_1206_HandSoldering" H 1588 1700 50  0001 C CNN
F 3 "" H 1550 1850 50  0001 C CNN
	1    1550 1850
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B8EA9FF
P 2500 1850
F 0 "C6" H 2525 1950 50  0000 L CNN
F 1 "10uF" H 2525 1750 50  0000 L CNN
F 2 "footprints:C_1206_HandSoldering" H 2538 1700 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
	1    2500 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5B8EAEF2
P 2050 2100
F 0 "#PWR015" H 2050 1850 50  0001 C CNN
F 1 "GND" H 2050 1950 50  0000 C CNN
F 2 "" H 2050 2100 50  0001 C CNN
F 3 "" H 2050 2100 50  0001 C CNN
	1    2050 2100
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR016
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
L +5V #PWR017
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
L +5V #PWR018
U 1 1 5B8EBD32
P 2600 1600
F 0 "#PWR018" H 2600 1450 50  0001 C CNN
F 1 "+5V" H 2600 1740 50  0000 C CNN
F 2 "" H 2600 1600 50  0001 C CNN
F 3 "" H 2600 1600 50  0001 C CNN
	1    2600 1600
	0    1    1    0   
$EndComp
$Comp
L LP2985-3.3 U1
U 1 1 5B8EC0A3
P 1600 4300
F 0 "U1" H 1350 4050 50  0000 C CNN
F 1 "LP2985-3.3" H 1400 4550 50  0000 L CNN
F 2 "footprints:SOT-23-5" H 1600 4625 50  0001 C CNN
F 3 "" H 1600 4300 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B8EC19D
P 950 4400
F 0 "C1" H 975 4500 50  0000 L CNN
F 1 "1uF" H 975 4300 50  0000 L CNN
F 2 "footprints:C_0805_HandSoldering" H 988 4250 50  0001 C CNN
F 3 "" H 950 4400 50  0001 C CNN
	1    950  4400
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B8EC2B2
P 2200 4400
F 0 "C5" H 2225 4500 50  0000 L CNN
F 1 "1uF" H 2225 4300 50  0000 L CNN
F 2 "footprints:C_0805_HandSoldering" H 2238 4250 50  0001 C CNN
F 3 "" H 2200 4400 50  0001 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5B8EC337
P 1600 4750
F 0 "#PWR019" H 1600 4500 50  0001 C CNN
F 1 "GND" H 1600 4600 50  0000 C CNN
F 2 "" H 1600 4750 50  0001 C CNN
F 3 "" H 1600 4750 50  0001 C CNN
	1    1600 4750
	1    0    0    -1  
$EndComp
Text Label 1250 1600 0    60   ~ 0
VIN
$Comp
L R R8
U 1 1 5B8ECF1F
P 850 2800
F 0 "R8" V 930 2800 50  0000 C CNN
F 1 "10K" V 850 2800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 780 2800 50  0001 C CNN
F 3 "" H 850 2800 50  0001 C CNN
	1    850  2800
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5B8ED164
P 850 3200
F 0 "R5" V 930 3200 50  0000 C CNN
F 1 "10K" V 850 3200 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 780 3200 50  0001 C CNN
F 3 "" H 850 3200 50  0001 C CNN
	1    850  3200
	-1   0    0    1   
$EndComp
$Comp
L LMV358 U2
U 1 1 5B8ED259
P 1650 3100
F 0 "U2" H 1650 3300 50  0000 L CNN
F 1 "LMV358" H 1500 3100 50  0000 L CNN
F 2 "footprints:VSSOP-8_3.0x3.0mm_Pitch0.65mm" H 1650 3100 50  0001 C CNN
F 3 "" H 1650 3100 50  0001 C CNN
	1    1650 3100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B8ED4BC
P 1050 3200
F 0 "C2" H 1075 3300 50  0000 L CNN
F 1 "22nF" H 1075 3100 50  0000 L CNN
F 2 "footprints:C_0805_HandSoldering" H 1088 3050 50  0001 C CNN
F 3 "" H 1050 3200 50  0001 C CNN
	1    1050 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5B8ED6CD
P 850 3450
F 0 "#PWR020" H 850 3200 50  0001 C CNN
F 1 "GND" H 850 3300 50  0000 C CNN
F 2 "" H 850 3450 50  0001 C CNN
F 3 "" H 850 3450 50  0001 C CNN
	1    850  3450
	1    0    0    -1  
$EndComp
$Comp
L VBUS #PWR021
U 1 1 5B8F4442
P 2350 2850
F 0 "#PWR021" H 2350 2700 50  0001 C CNN
F 1 "VBUS" H 2350 3000 50  0000 C CNN
F 2 "" H 2350 2850 50  0001 C CNN
F 3 "" H 2350 2850 50  0001 C CNN
	1    2350 2850
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q1
U 1 1 5B8F45F3
P 2250 3100
F 0 "Q1" H 2450 3150 50  0000 L CNN
F 1 "PMOS" H 2100 2950 50  0000 L CNN
F 2 "footprints:SOT-23" H 2450 3200 50  0001 C CNN
F 3 "" H 2250 3100 50  0001 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 5B8F4791
P 2600 3400
F 0 "#PWR022" H 2600 3250 50  0001 C CNN
F 1 "+5V" H 2600 3540 50  0000 C CNN
F 2 "" H 2600 3400 50  0001 C CNN
F 3 "" H 2600 3400 50  0001 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 5B8F49DC
P 1550 2500
F 0 "#PWR023" H 1550 2350 50  0001 C CNN
F 1 "+5V" H 1550 2640 50  0000 C CNN
F 2 "" H 1550 2500 50  0001 C CNN
F 3 "" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5B8F4A59
P 1550 3450
F 0 "#PWR024" H 1550 3200 50  0001 C CNN
F 1 "GND" H 1550 3300 50  0000 C CNN
F 2 "" H 1550 3450 50  0001 C CNN
F 3 "" H 1550 3450 50  0001 C CNN
	1    1550 3450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 5B8F5290
P 1250 3200
F 0 "#PWR025" H 1250 3050 50  0001 C CNN
F 1 "+3V3" H 1250 3340 50  0000 C CNN
F 2 "" H 1250 3200 50  0001 C CNN
F 3 "" H 1250 3200 50  0001 C CNN
	1    1250 3200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B8F5424
P 2000 2750
F 0 "C4" H 2025 2850 50  0000 L CNN
F 1 "0.1uF" H 2025 2650 50  0000 L CNN
F 2 "footprints:C_0805_HandSoldering" H 2038 2600 50  0001 C CNN
F 3 "" H 2000 2750 50  0001 C CNN
	1    2000 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5B8F550C
P 2000 2900
F 0 "#PWR026" H 2000 2650 50  0001 C CNN
F 1 "GND" H 2000 2750 50  0000 C CNN
F 2 "" H 2000 2900 50  0001 C CNN
F 3 "" H 2000 2900 50  0001 C CNN
	1    2000 2900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 5B8F6F11
P 2200 4100
F 0 "#PWR027" H 2200 3950 50  0001 C CNN
F 1 "+3V3" H 2200 4240 50  0000 C CNN
F 2 "" H 2200 4100 50  0001 C CNN
F 3 "" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 5B8F6F91
P 950 4100
F 0 "#PWR028" H 950 3950 50  0001 C CNN
F 1 "+5V" H 950 4240 50  0000 C CNN
F 2 "" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
NoConn ~ 2000 4300
$Comp
L +5V #PWR029
U 1 1 5B904C22
P 7400 950
F 0 "#PWR029" H 7400 800 50  0001 C CNN
F 1 "+5V" H 7400 1090 50  0000 C CNN
F 2 "" H 7400 950 50  0001 C CNN
F 3 "" H 7400 950 50  0001 C CNN
	1    7400 950 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 5B904D8B
P 6050 2900
F 0 "#PWR030" H 6050 2750 50  0001 C CNN
F 1 "+5V" V 6050 3100 50  0000 C CNN
F 2 "" H 6050 2900 50  0001 C CNN
F 3 "" H 6050 2900 50  0001 C CNN
	1    6050 2900
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR031
U 1 1 5B905779
P 8800 3400
F 0 "#PWR031" H 8800 3250 50  0001 C CNN
F 1 "+5V" V 8800 3600 50  0000 C CNN
F 2 "" H 8800 3400 50  0001 C CNN
F 3 "" H 8800 3400 50  0001 C CNN
	1    8800 3400
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR032
U 1 1 5B907A34
P 9500 3100
F 0 "#PWR032" H 9500 2950 50  0001 C CNN
F 1 "+5V" H 9500 3240 50  0000 C CNN
F 2 "" H 9500 3100 50  0001 C CNN
F 3 "" H 9500 3100 50  0001 C CNN
	1    9500 3100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR033
U 1 1 5B90BA8A
P 2850 6250
F 0 "#PWR033" H 2850 6100 50  0001 C CNN
F 1 "+5V" V 2850 6450 50  0000 C CNN
F 2 "" H 2850 6250 50  0001 C CNN
F 3 "" H 2850 6250 50  0001 C CNN
	1    2850 6250
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR034
U 1 1 5B90C6DC
P 5900 5850
F 0 "#PWR034" H 5900 5700 50  0001 C CNN
F 1 "+5V" V 5900 6050 50  0000 C CNN
F 2 "" H 5900 5850 50  0001 C CNN
F 3 "" H 5900 5850 50  0001 C CNN
	1    5900 5850
	0    1    1    0   
$EndComp
Text Label 2900 6350 0    60   ~ 0
VIN
$Comp
L +3V3 #PWR035
U 1 1 5B90C7A2
P 2850 6150
F 0 "#PWR035" H 2850 6000 50  0001 C CNN
F 1 "+3V3" V 2850 6350 50  0000 C CNN
F 2 "" H 2850 6150 50  0001 C CNN
F 3 "" H 2850 6150 50  0001 C CNN
	1    2850 6150
	0    -1   -1   0   
$EndComp
Text Label 5650 6050 0    60   ~ 0
~RESET
Text Label 5650 6250 0    60   ~ 0
~RESET
$Comp
L +5V #PWR036
U 1 1 5B913CEC
P 5900 6350
F 0 "#PWR036" H 5900 6200 50  0001 C CNN
F 1 "+5V" V 5900 6550 50  0000 C CNN
F 2 "" H 5900 6350 50  0001 C CNN
F 3 "" H 5900 6350 50  0001 C CNN
	1    5900 6350
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR037
U 1 1 5B9148DC
P 1700 900
F 0 "#PWR037" H 1700 750 50  0001 C CNN
F 1 "+3V3" H 1700 1040 50  0000 C CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0001 C CNN
	1    1700 900 
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5B91ACD7
P 3200 2200
F 0 "D1" H 3200 2300 50  0000 C CNN
F 1 "PWR" H 3200 2100 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 3200 2200 50  0001 C CNN
F 3 "" H 3200 2200 50  0001 C CNN
	1    3200 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5B91AE4B
P 3200 2600
F 0 "R1" V 3280 2600 50  0000 C CNN
F 1 "1K" V 3200 2600 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 3130 2600 50  0001 C CNN
F 3 "" H 3200 2600 50  0001 C CNN
	1    3200 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5B91AEE8
P 3200 2850
F 0 "#PWR038" H 3200 2600 50  0001 C CNN
F 1 "GND" H 3200 2700 50  0000 C CNN
F 2 "" H 3200 2850 50  0001 C CNN
F 3 "" H 3200 2850 50  0001 C CNN
	1    3200 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 5B91AF56
P 3200 1950
F 0 "#PWR039" H 3200 1800 50  0001 C CNN
F 1 "+5V" H 3200 2090 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L LMV358 U2
U 2 1 5B91B2C0
P 9400 2400
F 0 "U2" H 9400 2600 50  0000 L CNN
F 1 "LMV358" H 9250 2400 50  0000 L CNN
F 2 "footprints:VSSOP-8_3.0x3.0mm_Pitch0.65mm" H 9400 2400 50  0001 C CNN
F 3 "" H 9400 2400 50  0001 C CNN
	2    9400 2400
	1    0    0    -1  
$EndComp
$Comp
L Varistor RV1
U 1 1 5B924B9E
P 5100 3050
F 0 "RV1" V 5150 3250 50  0000 C CNN
F 1 "Varistor" V 4975 3050 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 5030 3050 50  0001 C CNN
F 3 "" H 5100 3050 50  0001 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
$Comp
L Varistor RV2
U 1 1 5B924C22
P 5350 3050
F 0 "RV2" V 5400 3250 50  0000 C CNN
F 1 "Varistor" V 5450 3050 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 5280 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1300 10150 1300
Wire Wire Line
	8500 1400 8800 1400
Wire Wire Line
	8500 1500 8800 1500
Wire Wire Line
	8500 1600 8800 1600
Wire Wire Line
	8500 1700 8800 1700
Wire Wire Line
	8500 1800 8800 1800
Wire Wire Line
	8500 1900 8800 1900
Wire Wire Line
	8500 2000 8800 2000
Wire Wire Line
	8500 2200 8800 2200
Wire Wire Line
	8500 2500 8800 2500
Wire Wire Line
	8500 2600 8800 2600
Wire Wire Line
	8500 2700 8800 2700
Wire Wire Line
	8500 2800 8800 2800
Wire Wire Line
	8500 2900 8800 2900
Wire Wire Line
	8500 3100 8800 3100
Wire Wire Line
	8500 3200 8800 3200
Wire Wire Line
	8500 3400 8800 3400
Wire Wire Line
	8500 3500 8800 3500
Wire Wire Line
	8500 3700 8800 3700
Wire Wire Line
	8500 3800 8800 3800
Wire Wire Line
	8500 3900 8800 3900
Wire Wire Line
	8500 4000 8800 4000
Wire Wire Line
	8500 4100 8800 4100
Wire Wire Line
	8500 4200 8800 4200
Wire Wire Line
	7000 4450 7550 4450
Connection ~ 7450 4450
Connection ~ 7350 4450
Connection ~ 7250 4450
Connection ~ 7300 4450
Connection ~ 7550 1050
Connection ~ 7300 1050
Connection ~ 7400 1050
Wire Wire Line
	5950 1300 6250 1300
Wire Wire Line
	6050 2900 6250 2900
Wire Wire Line
	6100 2900 6100 3000
Connection ~ 6100 2900
Wire Wire Line
	6250 3700 6050 3700
Wire Wire Line
	6100 2500 6250 2500
Wire Wire Line
	6100 2500 6100 2450
Wire Wire Line
	6250 2650 5950 2650
Wire Wire Line
	6250 2750 5950 2750
Wire Wire Line
	5550 1300 5500 1300
Wire Wire Line
	5500 1300 5500 1350
Wire Wire Line
	4500 3050 4600 3050
Wire Wire Line
	4900 2650 5650 2650
Wire Wire Line
	4900 2750 5650 2750
Connection ~ 6100 2450
Wire Wire Line
	4900 2450 5600 2450
Wire Wire Line
	6100 2450 5900 2450
Wire Wire Line
	9350 3500 9350 3450
Wire Wire Line
	9150 3000 9150 4300
Wire Wire Line
	9350 4300 9350 3800
Wire Wire Line
	9650 3800 9650 4300
Wire Wire Line
	10150 1300 10150 4300
Wire Wire Line
	9650 3500 9650 3450
Wire Wire Line
	9350 3150 9650 3150
Wire Wire Line
	9500 3150 9500 3100
Connection ~ 9500 3150
Wire Wire Line
	9150 3000 8500 3000
Wire Wire Line
	3050 4250 2900 4250
Wire Wire Line
	3050 4350 2900 4350
Wire Wire Line
	3050 4550 2900 4550
Wire Wire Line
	3050 4650 2900 4650
Wire Wire Line
	3050 4950 2900 4950
Wire Wire Line
	3050 5050 2900 5050
Wire Wire Line
	3050 5150 2900 5150
Wire Wire Line
	3050 5250 2900 5250
Wire Wire Line
	3050 5350 2900 5350
Wire Wire Line
	3050 5450 2900 5450
Wire Wire Line
	3050 5550 2900 5550
Wire Wire Line
	3050 5850 2950 5850
Wire Wire Line
	2950 5850 2950 6050
Wire Wire Line
	2950 6050 3050 6050
Wire Wire Line
	2900 5950 3050 5950
Connection ~ 2950 5950
Wire Wire Line
	3050 6150 2850 6150
Wire Wire Line
	2850 6250 3050 6250
Wire Wire Line
	3050 6350 2900 6350
Wire Wire Line
	5650 4250 5800 4250
Wire Wire Line
	5650 4350 5800 4350
Wire Wire Line
	5650 4450 5800 4450
Wire Wire Line
	5650 4550 5800 4550
Wire Wire Line
	5650 4650 5800 4650
Wire Wire Line
	5650 4750 5800 4750
Wire Wire Line
	5650 4850 5800 4850
Wire Wire Line
	5650 4950 5800 4950
Wire Wire Line
	5650 5050 5800 5050
Wire Wire Line
	5650 5150 5800 5150
Wire Wire Line
	5650 5250 5800 5250
Wire Wire Line
	5650 5350 5800 5350
Wire Wire Line
	5650 5550 5800 5550
Wire Wire Line
	5650 5650 5800 5650
Wire Wire Line
	5650 5750 5800 5750
Wire Wire Line
	5650 5850 5900 5850
Wire Wire Line
	5650 5950 5900 5950
Wire Wire Line
	5650 6050 5800 6050
Wire Wire Line
	5650 6250 5800 6250
Wire Wire Line
	5650 6350 5900 6350
Wire Wire Line
	4600 3050 4600 3300
Wire Wire Line
	1150 1600 1750 1600
Wire Wire Line
	1550 1600 1550 1700
Connection ~ 1550 1600
Wire Wire Line
	1150 1700 1250 1700
Wire Wire Line
	1250 1700 1250 2050
Wire Wire Line
	1250 2050 2500 2050
Wire Wire Line
	2500 2050 2500 2000
Wire Wire Line
	2050 1900 2050 2100
Connection ~ 2050 2050
Wire Wire Line
	1550 2000 1550 2050
Connection ~ 1550 2050
Wire Wire Line
	1150 1800 1250 1800
Connection ~ 1250 1800
Wire Wire Line
	2350 1600 2600 1600
Wire Wire Line
	2500 1700 2500 1600
Connection ~ 2500 1600
Connection ~ 1350 1600
Wire Wire Line
	850  2950 850  3050
Wire Wire Line
	850  3350 850  3450
Wire Wire Line
	850  3000 1350 3000
Connection ~ 850  3000
Wire Wire Line
	1050 3050 1050 3000
Connection ~ 1050 3000
Wire Wire Line
	850  3400 1050 3400
Wire Wire Line
	1050 3400 1050 3350
Connection ~ 850  3400
Wire Wire Line
	1950 3100 2050 3100
Wire Wire Line
	2350 3300 2350 3500
Wire Wire Line
	2350 3500 2600 3500
Wire Wire Line
	2600 3500 2600 3400
Wire Wire Line
	1250 3200 1350 3200
Wire Wire Line
	1550 2500 1550 2800
Wire Wire Line
	1550 2550 2000 2550
Wire Wire Line
	2000 2550 2000 2600
Connection ~ 1550 2550
Wire Wire Line
	2350 2900 2350 2850
Wire Wire Line
	1550 3400 1550 3450
Wire Wire Line
	950  4100 950  4250
Wire Wire Line
	950  4200 1200 4200
Connection ~ 950  4200
Wire Wire Line
	950  4550 950  4650
Wire Wire Line
	950  4650 2200 4650
Wire Wire Line
	2200 4650 2200 4550
Wire Wire Line
	2200 4100 2200 4250
Wire Wire Line
	2000 4200 2200 4200
Connection ~ 2200 4200
Wire Wire Line
	1600 4600 1600 4750
Connection ~ 1600 4650
Wire Wire Line
	1150 4200 1150 4300
Wire Wire Line
	1150 4300 1200 4300
Connection ~ 1150 4200
Wire Wire Line
	1350 1600 1350 2400
Wire Wire Line
	1350 2400 850  2400
Wire Wire Line
	850  2400 850  2650
Wire Wire Line
	7400 1050 7400 950 
Wire Wire Line
	8500 2300 9100 2300
Wire Wire Line
	9150 4300 9350 4300
Wire Wire Line
	10150 4300 9650 4300
Wire Wire Line
	3200 1950 3200 2050
Wire Wire Line
	3200 2350 3200 2450
Wire Wire Line
	3200 2750 3200 2850
Wire Wire Line
	9050 2750 9750 2750
Wire Wire Line
	9050 2750 9050 2500
Wire Wire Line
	9050 2500 9100 2500
Wire Wire Line
	9700 2400 9950 2400
Wire Wire Line
	9950 2400 9950 3150
Wire Wire Line
	9950 3450 9950 3500
Wire Wire Line
	9950 3800 9950 3900
Wire Wire Line
	9750 2750 9750 2400
Connection ~ 9750 2400
Wire Wire Line
	7200 1050 7650 1050
Connection ~ 5100 2650
Wire Wire Line
	5100 2650 5100 2900
Wire Wire Line
	4600 3250 5350 3250
Connection ~ 4600 3250
Wire Wire Line
	5350 2750 5350 2900
Connection ~ 5350 2750
Wire Wire Line
	5350 3250 5350 3200
Connection ~ 5100 3250
Wire Wire Line
	5100 3200 5100 3250
Text Notes 800  7750 0    60   ~ 0
https://rheingoldheavy.com/arduino-from-scratch-part-5-selecting-comparator-parts/
$Comp
L R R9
U 1 1 5B93795F
P 6050 1800
F 0 "R9" H 5950 1800 50  0000 C CNN
F 1 "1M" V 6050 1800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 5980 1800 50  0001 C CNN
F 3 "" H 6050 1800 50  0001 C CNN
	1    6050 1800
	-1   0    0    1   
$EndComp
$Comp
L Resonator Y1
U 1 1 5B40C204
P 5850 1800
F 0 "Y1" V 5750 1900 50  0000 C CNN
F 1 "16 Mhz" V 6050 1750 50  0000 C CNN
F 2 "footprints:Resonator_SMD_CTSC_1.3mmx3.2mm" H 5825 1800 50  0001 C CNN
F 3 "" H 5825 1800 50  0001 C CNN
	1    5850 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1850
Wire Wire Line
	5850 1950 6250 1950
Wire Wire Line
	6250 1950 6250 1900
Connection ~ 6050 1950
Wire Wire Line
	6250 1650 6250 1700
Wire Wire Line
	5850 1650 6250 1650
Connection ~ 6050 1650
Text Notes 800  7550 0    60   ~ 0
https://leonardodavinci.stanford.edu/submissions/clabaugh/history/leonardo.html
Text Notes 800  7350 0    60   ~ 0
https://en.wikipedia.org/wiki/Vitruvian_Man#/media/File:Da_Vinci_Vitruve_Luc_Viatour.jpg
$EndSCHEMATC
