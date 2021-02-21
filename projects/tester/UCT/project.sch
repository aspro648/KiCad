EESchema Schematic File Version 2
LIBS:arduino
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
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Universal Cable Tester"
Date "2020-11-17"
Rev "0.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Arduino_Uno_Shield XA1
U 1 1 5FB2BFCE
P 8400 2850
F 0 "XA1" V 8500 2850 60  0000 C CNN
F 1 "Arduino_Uno_Shield" V 8300 2850 60  0000 C CNN
F 2 "footprints:Arduino_Uno_Shield" H 10200 6600 60  0001 C CNN
F 3 "" H 10200 6600 60  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
$Comp
L MCP23017 U1
U 1 1 5FB2C0F6
P 5200 1800
F 0 "U1" H 5100 2825 50  0000 R CNN
F 1 "MCP23017" H 5100 2750 50  0000 R CNN
F 2 "footprints:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 5250 850 50  0001 L CNN
F 3 "" H 5450 2800 50  0001 C CNN
	1    5200 1800
	1    0    0    -1  
$EndComp
$Comp
L MCP23017 U2
U 1 1 5FB2C1E9
P 5200 4300
F 0 "U2" H 5100 5325 50  0000 R CNN
F 1 "MCP23017" H 5100 5250 50  0000 R CNN
F 2 "footprints:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 5250 3350 50  0001 L CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
Text Label 6350 2100 0    60   ~ 0
SCL
Text Label 6350 2200 0    60   ~ 0
SDA
$Comp
L R R19
U 1 1 5FB2C814
P 6600 1800
F 0 "R19" V 6680 1800 50  0000 C CNN
F 1 "4K7" V 6600 1800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 6530 1800 50  0001 C CNN
F 3 "" H 6600 1800 50  0001 C CNN
	1    6600 1800
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5FB2C84D
P 6750 1800
F 0 "R20" V 6830 1800 50  0000 C CNN
F 1 "4K7" V 6750 1800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 6680 1800 50  0001 C CNN
F 3 "" H 6750 1800 50  0001 C CNN
	1    6750 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5FB2CA16
P 1200 950
F 0 "#PWR01" H 1200 800 50  0001 C CNN
F 1 "+5V" H 1200 1090 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR02
U 1 1 5FB2CAA0
P 6600 1400
F 0 "#PWR02" H 6600 1250 50  0001 C CNN
F 1 "+5V" H 6600 1540 50  0000 C CNN
F 2 "" H 6600 1400 50  0001 C CNN
F 3 "" H 6600 1400 50  0001 C CNN
	1    6600 1400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5FB2CB7F
P 1200 950
F 0 "#FLG03" H 1200 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1100 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5FB2CD05
P 5200 2800
F 0 "#PWR04" H 5200 2550 50  0001 C CNN
F 1 "GND" H 5200 2650 50  0000 C CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5FB2CE20
P 5200 5300
F 0 "#PWR05" H 5200 5050 50  0001 C CNN
F 1 "GND" H 5200 5150 50  0000 C CNN
F 2 "" H 5200 5300 50  0001 C CNN
F 3 "" H 5200 5300 50  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5FB2CEC1
P 6850 4050
F 0 "#PWR06" H 6850 3800 50  0001 C CNN
F 1 "GND" H 6850 3900 50  0000 C CNN
F 2 "" H 6850 4050 50  0001 C CNN
F 3 "" H 6850 4050 50  0001 C CNN
	1    6850 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5FB2D386
P 5850 2650
F 0 "#PWR07" H 5850 2400 50  0001 C CNN
F 1 "GND" H 5850 2500 50  0000 C CNN
F 2 "" H 5850 2650 50  0001 C CNN
F 3 "" H 5850 2650 50  0001 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5FB2D47D
P 5900 5200
F 0 "#PWR08" H 5900 4950 50  0001 C CNN
F 1 "GND" H 5900 5050 50  0000 C CNN
F 2 "" H 5900 5200 50  0001 C CNN
F 3 "" H 5900 5200 50  0001 C CNN
	1    5900 5200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5FB2D826
P 5900 4900
F 0 "#PWR09" H 5900 4750 50  0001 C CNN
F 1 "+5V" H 5900 5040 50  0000 C CNN
F 2 "" H 5900 4900 50  0001 C CNN
F 3 "" H 5900 4900 50  0001 C CNN
	1    5900 4900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5FB2D934
P 5200 3300
F 0 "#PWR010" H 5200 3150 50  0001 C CNN
F 1 "+5V" H 5200 3440 50  0000 C CNN
F 2 "" H 5200 3300 50  0001 C CNN
F 3 "" H 5200 3300 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 5FB2D9AB
P 5200 800
F 0 "#PWR011" H 5200 650 50  0001 C CNN
F 1 "+5V" H 5200 940 50  0000 C CNN
F 2 "" H 5200 800 50  0001 C CNN
F 3 "" H 5200 800 50  0001 C CNN
	1    5200 800 
	1    0    0    -1  
$EndComp
$Comp
L MCP23017 U3
U 1 1 5FB2E669
P 2400 6400
F 0 "U3" H 2300 7425 50  0000 R CNN
F 1 "MCP23017" H 2300 7350 50  0000 R CNN
F 2 "footprints:SSOP-28_5.3x10.2mm_Pitch0.65mm" H 2450 5450 50  0001 L CNN
F 3 "" H 2650 7400 50  0001 C CNN
	1    2400 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5FB2E66F
P 2400 7400
F 0 "#PWR012" H 2400 7150 50  0001 C CNN
F 1 "GND" H 2400 7250 50  0000 C CNN
F 2 "" H 2400 7400 50  0001 C CNN
F 3 "" H 2400 7400 50  0001 C CNN
	1    2400 7400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5FB2E677
P 3100 7300
F 0 "#PWR013" H 3100 7050 50  0001 C CNN
F 1 "GND" H 3100 7150 50  0000 C CNN
F 2 "" H 3100 7300 50  0001 C CNN
F 3 "" H 3100 7300 50  0001 C CNN
	1    3100 7300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 5FB2E682
P 3100 7000
F 0 "#PWR014" H 3100 6850 50  0001 C CNN
F 1 "+5V" H 3100 7140 50  0000 C CNN
F 2 "" H 3100 7000 50  0001 C CNN
F 3 "" H 3100 7000 50  0001 C CNN
	1    3100 7000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5FB2E688
P 2400 5400
F 0 "#PWR015" H 2400 5250 50  0001 C CNN
F 1 "+5V" H 2400 5540 50  0000 C CNN
F 2 "" H 2400 5400 50  0001 C CNN
F 3 "" H 2400 5400 50  0001 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X18 J1
U 1 1 5FB2E822
P 3400 1750
F 0 "J1" H 3400 2700 50  0000 C CNN
F 1 "CONN_01X18" V 3500 1750 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x18_Pitch2.54mm" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X18 J2
U 1 1 5FB2E920
P 3400 4250
F 0 "J2" H 3400 5200 50  0000 C CNN
F 1 "CONN_01X18" V 3500 4250 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x18_Pitch2.54mm" H 3400 4250 50  0001 C CNN
F 3 "" H 3400 4250 50  0001 C CNN
	1    3400 4250
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5FB2FAB3
P 1650 5600
F 0 "R1" V 1600 5750 50  0000 C CNN
F 1 "330" V 1650 5600 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 5600 50  0001 C CNN
F 3 "" H 1650 5600 50  0001 C CNN
	1    1650 5600
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5FB2FE24
P 1650 5700
F 0 "R2" V 1600 5850 50  0000 C CNN
F 1 "330" V 1650 5700 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 5700 50  0001 C CNN
F 3 "" H 1650 5700 50  0001 C CNN
	1    1650 5700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5FB2FE56
P 1650 5800
F 0 "R3" V 1600 5950 50  0000 C CNN
F 1 "330" V 1650 5800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 5800 50  0001 C CNN
F 3 "" H 1650 5800 50  0001 C CNN
	1    1650 5800
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5FB2FE87
P 1650 5900
F 0 "R4" V 1600 6050 50  0000 C CNN
F 1 "330" V 1650 5900 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 5900 50  0001 C CNN
F 3 "" H 1650 5900 50  0001 C CNN
	1    1650 5900
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5FB2FEBB
P 1650 6000
F 0 "R5" V 1600 6150 50  0000 C CNN
F 1 "330" V 1650 6000 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6000 50  0001 C CNN
F 3 "" H 1650 6000 50  0001 C CNN
	1    1650 6000
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5FB2FEF4
P 1650 6100
F 0 "R6" V 1600 6250 50  0000 C CNN
F 1 "330" V 1650 6100 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6100 50  0001 C CNN
F 3 "" H 1650 6100 50  0001 C CNN
	1    1650 6100
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5FB2FF2E
P 1650 6200
F 0 "R7" V 1600 6350 50  0000 C CNN
F 1 "330" V 1650 6200 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6200 50  0001 C CNN
F 3 "" H 1650 6200 50  0001 C CNN
	1    1650 6200
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5FB3005B
P 1650 6300
F 0 "R8" V 1600 6450 50  0000 C CNN
F 1 "330" V 1650 6300 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6300 50  0001 C CNN
F 3 "" H 1650 6300 50  0001 C CNN
	1    1650 6300
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5FB3009B
P 1650 6500
F 0 "R9" V 1600 6650 50  0000 C CNN
F 1 "330" V 1650 6500 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6500 50  0001 C CNN
F 3 "" H 1650 6500 50  0001 C CNN
	1    1650 6500
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5FB301E5
P 1650 6600
F 0 "R10" V 1600 6750 50  0000 C CNN
F 1 "330" V 1650 6600 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6600 50  0001 C CNN
F 3 "" H 1650 6600 50  0001 C CNN
	1    1650 6600
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5FB3022B
P 1650 6700
F 0 "R11" V 1600 6850 50  0000 C CNN
F 1 "330" V 1650 6700 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6700 50  0001 C CNN
F 3 "" H 1650 6700 50  0001 C CNN
	1    1650 6700
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5FB3027C
P 1650 6800
F 0 "R12" V 1600 6950 50  0000 C CNN
F 1 "330" V 1650 6800 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6800 50  0001 C CNN
F 3 "" H 1650 6800 50  0001 C CNN
	1    1650 6800
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5FB303F4
P 1650 6900
F 0 "R13" V 1600 7050 50  0000 C CNN
F 1 "330" V 1650 6900 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 6900 50  0001 C CNN
F 3 "" H 1650 6900 50  0001 C CNN
	1    1650 6900
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5FB30447
P 1650 7000
F 0 "R14" V 1600 7150 50  0000 C CNN
F 1 "330" V 1650 7000 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 7000 50  0001 C CNN
F 3 "" H 1650 7000 50  0001 C CNN
	1    1650 7000
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5FB3049D
P 1650 7100
F 0 "R15" V 1600 7250 50  0000 C CNN
F 1 "330" V 1650 7100 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 7100 50  0001 C CNN
F 3 "" H 1650 7100 50  0001 C CNN
	1    1650 7100
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5FB304F2
P 1650 7200
F 0 "R16" V 1600 7350 50  0000 C CNN
F 1 "330" V 1650 7200 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1580 7200 50  0001 C CNN
F 3 "" H 1650 7200 50  0001 C CNN
	1    1650 7200
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5FB30834
P 1300 5600
F 0 "D1" H 1400 5550 50  0000 C CNN
F 1 "1" H 1150 5650 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 5600 50  0001 C CNN
F 3 "" H 1300 5600 50  0001 C CNN
	1    1300 5600
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5FB30F64
P 1300 5700
F 0 "D2" H 1400 5650 50  0000 C CNN
F 1 "2" H 1150 5750 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 5700 50  0001 C CNN
F 3 "" H 1300 5700 50  0001 C CNN
	1    1300 5700
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5FB30FC6
P 1300 5800
F 0 "D3" H 1400 5750 50  0000 C CNN
F 1 "3" H 1150 5850 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 5800 50  0001 C CNN
F 3 "" H 1300 5800 50  0001 C CNN
	1    1300 5800
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5FB31027
P 1300 5900
F 0 "D4" H 1400 5850 50  0000 C CNN
F 1 "4" H 1150 5950 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 5900 50  0001 C CNN
F 3 "" H 1300 5900 50  0001 C CNN
	1    1300 5900
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 5FB3108B
P 1300 6000
F 0 "D5" H 1400 5950 50  0000 C CNN
F 1 "5" H 1150 6050 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6000 50  0001 C CNN
F 3 "" H 1300 6000 50  0001 C CNN
	1    1300 6000
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 5FB310F2
P 1300 6100
F 0 "D6" H 1400 6050 50  0000 C CNN
F 1 "6" H 1150 6150 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0001 C CNN
	1    1300 6100
	-1   0    0    1   
$EndComp
$Comp
L LED D7
U 1 1 5FB31396
P 1300 6200
F 0 "D7" H 1400 6150 50  0000 C CNN
F 1 "7" H 1150 6250 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6200 50  0001 C CNN
F 3 "" H 1300 6200 50  0001 C CNN
	1    1300 6200
	-1   0    0    1   
$EndComp
$Comp
L LED D8
U 1 1 5FB31407
P 1300 6300
F 0 "D8" H 1400 6250 50  0000 C CNN
F 1 "8" H 1150 6350 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6300 50  0001 C CNN
F 3 "" H 1300 6300 50  0001 C CNN
	1    1300 6300
	-1   0    0    1   
$EndComp
$Comp
L LED D9
U 1 1 5FB31477
P 1300 6500
F 0 "D9" H 1400 6450 50  0000 C CNN
F 1 "9" H 1150 6550 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6500 50  0001 C CNN
F 3 "" H 1300 6500 50  0001 C CNN
	1    1300 6500
	-1   0    0    1   
$EndComp
$Comp
L LED D10
U 1 1 5FB314EE
P 1300 6600
F 0 "D10" H 1400 6550 50  0000 C CNN
F 1 "10" H 1150 6650 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6600 50  0001 C CNN
F 3 "" H 1300 6600 50  0001 C CNN
	1    1300 6600
	-1   0    0    1   
$EndComp
$Comp
L LED D11
U 1 1 5FB31564
P 1300 6700
F 0 "D11" H 1400 6650 50  0000 C CNN
F 1 "11" H 1150 6750 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6700 50  0001 C CNN
F 3 "" H 1300 6700 50  0001 C CNN
	1    1300 6700
	-1   0    0    1   
$EndComp
$Comp
L LED D12
U 1 1 5FB315DF
P 1300 6800
F 0 "D12" H 1400 6750 50  0000 C CNN
F 1 "12" H 1150 6850 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6800 50  0001 C CNN
F 3 "" H 1300 6800 50  0001 C CNN
	1    1300 6800
	-1   0    0    1   
$EndComp
$Comp
L LED D13
U 1 1 5FB318D9
P 1300 6900
F 0 "D13" H 1400 6850 50  0000 C CNN
F 1 "13" H 1150 6950 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 6900 50  0001 C CNN
F 3 "" H 1300 6900 50  0001 C CNN
	1    1300 6900
	-1   0    0    1   
$EndComp
$Comp
L LED D14
U 1 1 5FB31958
P 1300 7000
F 0 "D14" H 1400 6950 50  0000 C CNN
F 1 "14" H 1150 7050 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 7000 50  0001 C CNN
F 3 "" H 1300 7000 50  0001 C CNN
	1    1300 7000
	-1   0    0    1   
$EndComp
$Comp
L LED D15
U 1 1 5FB31C3A
P 1300 7100
F 0 "D15" H 1400 7050 50  0000 C CNN
F 1 "15" H 1150 7150 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 7100 50  0001 C CNN
F 3 "" H 1300 7100 50  0001 C CNN
	1    1300 7100
	-1   0    0    1   
$EndComp
$Comp
L LED D16
U 1 1 5FB31CBF
P 1300 7200
F 0 "D16" H 1400 7150 50  0000 C CNN
F 1 "16" H 1150 7250 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1300 7200 50  0001 C CNN
F 3 "" H 1300 7200 50  0001 C CNN
	1    1300 7200
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR016
U 1 1 5FB31ED7
P 1100 5450
F 0 "#PWR016" H 1100 5300 50  0001 C CNN
F 1 "+5V" H 1100 5590 50  0000 C CNN
F 2 "" H 1100 5450 50  0001 C CNN
F 3 "" H 1100 5450 50  0001 C CNN
	1    1100 5450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 5FB33F2A
P 6700 3600
F 0 "#PWR017" H 6700 3450 50  0001 C CNN
F 1 "+5V" H 6700 3740 50  0000 C CNN
F 2 "" H 6700 3600 50  0001 C CNN
F 3 "" H 6700 3600 50  0001 C CNN
	1    6700 3600
	1    0    0    -1  
$EndComp
NoConn ~ 7100 3900
NoConn ~ 7100 3700
NoConn ~ 7100 1800
NoConn ~ 7100 1900
NoConn ~ 9700 3900
NoConn ~ 9700 3800
NoConn ~ 9700 3100
NoConn ~ 9700 3200
NoConn ~ 9700 3300
$Comp
L GND #PWR018
U 1 1 5FB350CE
P 9850 3550
F 0 "#PWR018" H 9850 3300 50  0001 C CNN
F 1 "GND" H 9850 3400 50  0000 C CNN
F 2 "" H 9850 3550 50  0001 C CNN
F 3 "" H 9850 3550 50  0001 C CNN
	1    9850 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 5FB35449
P 9850 3350
F 0 "#PWR019" H 9850 3200 50  0001 C CNN
F 1 "+5V" H 9850 3490 50  0000 C CNN
F 2 "" H 9850 3350 50  0001 C CNN
F 3 "" H 9850 3350 50  0001 C CNN
	1    9850 3350
	1    0    0    -1  
$EndComp
NoConn ~ 9700 3600
Text Label 2950 6700 0    60   ~ 0
SCL
Text Label 2950 6800 0    60   ~ 0
SDA
NoConn ~ 5700 1400
NoConn ~ 5700 1500
NoConn ~ 5700 3900
NoConn ~ 5700 4000
NoConn ~ 2900 6000
NoConn ~ 2900 6100
$Comp
L +5V #PWR020
U 1 1 5FB39A79
P 5850 1000
F 0 "#PWR020" H 5850 850 50  0001 C CNN
F 1 "+5V" H 5850 1140 50  0000 C CNN
F 2 "" H 5850 1000 50  0001 C CNN
F 3 "" H 5850 1000 50  0001 C CNN
	1    5850 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 5FB39AFC
P 5850 3450
F 0 "#PWR021" H 5850 3300 50  0001 C CNN
F 1 "+5V" H 5850 3590 50  0000 C CNN
F 2 "" H 5850 3450 50  0001 C CNN
F 3 "" H 5850 3450 50  0001 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 5FB39DAF
P 3000 5550
F 0 "#PWR022" H 3000 5400 50  0001 C CNN
F 1 "+5V" H 3000 5690 50  0000 C CNN
F 2 "" H 3000 5550 50  0001 C CNN
F 3 "" H 3000 5550 50  0001 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
Text Label 6950 3000 0    60   ~ 0
A0
Text Label 6950 2900 0    60   ~ 0
A1
Text Label 6950 2800 0    60   ~ 0
A2
Text Label 3700 900  0    60   ~ 0
A0
Text Label 3700 1000 0    60   ~ 0
A1
Text Label 3700 3400 0    60   ~ 0
A2
$Comp
L R R17
U 1 1 5FB3E892
P 2000 4350
F 0 "R17" V 1950 4500 50  0000 C CNN
F 1 "330" V 2000 4350 50  0000 C CNN
F 2 "footprints:R_0805_HandSoldering" V 1930 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	0    1    1    0   
$EndComp
$Comp
L LED D17
U 1 1 5FB3EE21
P 1600 4350
F 0 "D17" H 1700 4300 50  0000 C CNN
F 1 "PWR" H 1450 4400 50  0000 C CNN
F 2 "footprints:LED_0805_HandSoldering" H 1600 4350 50  0001 C CNN
F 3 "" H 1600 4350 50  0001 C CNN
	1    1600 4350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 5FB3F087
P 2250 4400
F 0 "#PWR023" H 2250 4150 50  0001 C CNN
F 1 "GND" H 2250 4250 50  0000 C CNN
F 2 "" H 2250 4400 50  0001 C CNN
F 3 "" H 2250 4400 50  0001 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5FB3F6CE
P 1350 4300
F 0 "#PWR024" H 1350 4150 50  0001 C CNN
F 1 "+5V" H 1350 4440 50  0000 C CNN
F 2 "" H 1350 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0001 C CNN
	1    1350 4300
	1    0    0    -1  
$EndComp
Text Label 4500 1000 0    60   ~ 0
OUT1
Text Label 4450 2600 0    60   ~ 0
OUT2
Text Label 4500 1100 0    60   ~ 0
OUT3
Text Label 4450 2500 0    60   ~ 0
OUT4
Text Label 4500 1200 0    60   ~ 0
OUT5
Text Label 4450 2400 0    60   ~ 0
OUT6
Text Label 4500 1300 0    60   ~ 0
OUT7
Text Label 4450 2300 0    60   ~ 0
OUT8
Text Label 4450 3500 0    60   ~ 0
IN1
Text Label 4450 5100 0    60   ~ 0
IN2
Text Label 4450 3600 0    60   ~ 0
IN3
Text Label 4450 5000 0    60   ~ 0
IN4
Text Label 4450 3700 0    60   ~ 0
IN5
Text Label 4450 4900 0    60   ~ 0
IN6
Text Label 4450 3800 0    60   ~ 0
IN7
Text Label 4450 4800 0    60   ~ 0
IN8
Wire Wire Line
	6600 2100 6600 1950
Connection ~ 6600 2100
Wire Wire Line
	6750 1950 6750 2200
Connection ~ 6750 2200
Wire Wire Line
	7100 3400 6850 3400
Wire Wire Line
	6850 3400 6850 4050
Wire Wire Line
	7100 3500 6850 3500
Connection ~ 6850 3500
Wire Wire Line
	7100 3600 6850 3600
Connection ~ 6850 3600
Wire Wire Line
	6600 1400 6600 1650
Wire Wire Line
	6750 1650 6750 1550
Wire Wire Line
	6750 1550 6600 1550
Connection ~ 6600 1550
Wire Wire Line
	6050 4600 5700 4600
Wire Wire Line
	6200 4700 5700 4700
Wire Wire Line
	5850 2600 5700 2600
Wire Wire Line
	5850 2400 5850 2650
Wire Wire Line
	5700 2500 5850 2500
Connection ~ 5850 2600
Wire Wire Line
	5700 2400 5850 2400
Connection ~ 5850 2500
Wire Wire Line
	5700 5100 5900 5100
Wire Wire Line
	5900 5000 5900 5200
Wire Wire Line
	5700 5000 5900 5000
Connection ~ 5900 5100
Wire Wire Line
	5700 4900 5900 4900
Wire Wire Line
	3150 6700 2900 6700
Wire Wire Line
	3150 6800 2900 6800
Wire Wire Line
	2900 7200 3100 7200
Connection ~ 3100 7200
Wire Wire Line
	2900 7000 3100 7000
Wire Wire Line
	6050 4600 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	6200 2200 6200 4700
Connection ~ 6200 2200
Wire Wire Line
	3600 1000 3800 1000
Wire Wire Line
	3600 900  3800 900 
Wire Wire Line
	3600 3400 3800 3400
Wire Wire Line
	3600 3500 3800 3500
Wire Wire Line
	1800 5600 1900 5600
Wire Wire Line
	1100 5450 1100 7200
Wire Wire Line
	1100 5600 1150 5600
Wire Wire Line
	1100 5700 1150 5700
Connection ~ 1100 5600
Wire Wire Line
	1100 5800 1150 5800
Connection ~ 1100 5700
Wire Wire Line
	1100 5900 1150 5900
Connection ~ 1100 5800
Wire Wire Line
	1100 6000 1150 6000
Connection ~ 1100 5900
Wire Wire Line
	1100 6100 1150 6100
Connection ~ 1100 6000
Wire Wire Line
	1100 6200 1150 6200
Connection ~ 1100 6100
Wire Wire Line
	1100 6300 1150 6300
Connection ~ 1100 6200
Wire Wire Line
	1100 6500 1150 6500
Connection ~ 1100 6300
Wire Wire Line
	1100 6600 1150 6600
Connection ~ 1100 6500
Wire Wire Line
	1100 6700 1150 6700
Connection ~ 1100 6600
Wire Wire Line
	1100 6800 1150 6800
Connection ~ 1100 6700
Wire Wire Line
	1100 6900 1150 6900
Connection ~ 1100 6800
Wire Wire Line
	1100 7000 1150 7000
Connection ~ 1100 6900
Wire Wire Line
	1100 7100 1150 7100
Connection ~ 1100 7000
Wire Wire Line
	1100 7200 1150 7200
Connection ~ 1100 7100
Wire Wire Line
	6700 3800 7100 3800
Wire Wire Line
	6700 3800 6700 3600
Wire Wire Line
	9700 3400 9850 3400
Wire Wire Line
	9850 3400 9850 3350
Wire Wire Line
	9700 3500 9850 3500
Wire Wire Line
	9850 3500 9850 3550
Wire Wire Line
	1450 5600 1500 5600
Wire Wire Line
	1450 5700 1500 5700
Wire Wire Line
	1450 5800 1500 5800
Wire Wire Line
	1450 5900 1500 5900
Wire Wire Line
	1450 6000 1500 6000
Wire Wire Line
	1450 6100 1500 6100
Wire Wire Line
	1450 6200 1500 6200
Wire Wire Line
	1450 6300 1500 6300
Wire Wire Line
	1800 6300 1900 6300
Wire Wire Line
	1800 6200 1900 6200
Wire Wire Line
	1800 6100 1900 6100
Wire Wire Line
	1800 6000 1900 6000
Wire Wire Line
	1800 5900 1900 5900
Wire Wire Line
	1800 5800 1900 5800
Wire Wire Line
	1800 5700 1900 5700
Wire Wire Line
	1450 6500 1500 6500
Wire Wire Line
	1450 6600 1500 6600
Wire Wire Line
	1450 6700 1500 6700
Wire Wire Line
	1450 6800 1500 6800
Wire Wire Line
	1450 6900 1500 6900
Wire Wire Line
	1450 7000 1500 7000
Wire Wire Line
	1450 7100 1500 7100
Wire Wire Line
	1450 7200 1500 7200
Wire Wire Line
	1800 7200 1900 7200
Wire Wire Line
	1800 7100 1900 7100
Wire Wire Line
	1800 7000 1900 7000
Wire Wire Line
	1800 6900 1900 6900
Wire Wire Line
	1800 6800 1900 6800
Wire Wire Line
	1800 6700 1900 6700
Wire Wire Line
	1800 6600 1900 6600
Wire Wire Line
	1800 6500 1900 6500
Wire Wire Line
	2900 5600 3000 5600
Wire Wire Line
	3000 5600 3000 5550
Wire Wire Line
	5700 1000 5850 1000
Wire Wire Line
	5700 3500 5850 3500
Wire Wire Line
	5850 3500 5850 3450
Wire Wire Line
	7100 3000 6950 3000
Wire Wire Line
	7100 2900 6950 2900
Wire Wire Line
	7100 2800 6950 2800
Wire Wire Line
	1350 4300 1350 4350
Wire Wire Line
	1350 4350 1450 4350
Wire Wire Line
	1750 4350 1850 4350
Wire Wire Line
	2150 4350 2250 4350
Wire Wire Line
	2250 4350 2250 4400
Wire Wire Line
	4700 1000 4500 1000
Wire Wire Line
	4700 1100 4500 1100
Wire Wire Line
	4700 1200 4500 1200
Wire Wire Line
	4500 1300 4700 1300
Wire Wire Line
	4700 1400 4500 1400
Wire Wire Line
	4700 1500 4450 1500
Wire Wire Line
	4700 1600 4450 1600
Wire Wire Line
	4700 1700 4450 1700
Wire Wire Line
	4450 1900 4700 1900
Wire Wire Line
	4450 2000 4700 2000
Wire Wire Line
	4450 2100 4700 2100
Wire Wire Line
	4450 2200 4700 2200
Wire Wire Line
	4700 2300 4450 2300
Wire Wire Line
	4450 2400 4700 2400
Wire Wire Line
	4450 2500 4700 2500
Wire Wire Line
	4450 2600 4700 2600
Wire Wire Line
	3600 1100 3800 1100
Wire Wire Line
	3600 1200 3800 1200
Wire Wire Line
	3600 1300 3800 1300
Wire Wire Line
	3600 1400 3800 1400
Wire Wire Line
	3600 1500 3800 1500
Wire Wire Line
	3600 1600 3800 1600
Wire Wire Line
	3600 1700 3800 1700
Wire Wire Line
	3600 1800 3800 1800
Wire Wire Line
	3600 1900 3800 1900
Wire Wire Line
	3600 2000 3800 2000
Wire Wire Line
	3600 2100 3800 2100
Wire Wire Line
	3600 2200 3800 2200
Wire Wire Line
	3600 2300 3800 2300
Wire Wire Line
	3600 2400 3800 2400
Wire Wire Line
	3600 2500 3800 2500
Wire Wire Line
	3600 2600 3800 2600
Wire Wire Line
	3600 3600 3800 3600
Wire Wire Line
	3600 3700 3800 3700
Wire Wire Line
	3600 3800 3800 3800
Wire Wire Line
	3600 3900 3800 3900
Wire Wire Line
	3600 4000 3800 4000
Wire Wire Line
	3600 4100 3800 4100
Wire Wire Line
	3600 4200 3800 4200
Wire Wire Line
	3600 4300 3800 4300
Wire Wire Line
	3600 4400 3800 4400
Wire Wire Line
	3600 4500 3800 4500
Wire Wire Line
	3600 4600 3800 4600
Wire Wire Line
	3600 4700 3800 4700
Wire Wire Line
	3600 4800 3800 4800
Wire Wire Line
	3600 4900 3800 4900
Wire Wire Line
	3600 5000 3800 5000
Wire Wire Line
	3600 5100 3800 5100
Text Label 3600 1100 0    60   ~ 0
OUT1
Text Label 3600 3600 0    60   ~ 0
OUT2
Text Label 3600 1200 0    60   ~ 0
OUT3
Text Label 3600 3700 0    60   ~ 0
OUT4
Text Label 3600 1300 0    60   ~ 0
OUT5
Text Label 3600 3800 0    60   ~ 0
OUT6
Text Label 3600 1400 0    60   ~ 0
OUT7
Text Label 3600 3900 0    60   ~ 0
OUT8
Text Label 3600 1900 0    60   ~ 0
IN1
Text Label 3650 4400 0    60   ~ 0
IN2
Text Label 3600 2000 0    60   ~ 0
IN3
Text Label 3650 4500 0    60   ~ 0
IN4
Text Label 3600 2100 0    60   ~ 0
IN5
Text Label 3650 4600 0    60   ~ 0
IN6
Text Label 3600 2200 0    60   ~ 0
IN7
Text Label 3650 4700 0    60   ~ 0
IN8
Wire Wire Line
	4700 3500 4450 3500
Wire Wire Line
	4700 3600 4450 3600
Wire Wire Line
	4700 3700 4450 3700
Wire Wire Line
	4700 3800 4450 3800
Wire Wire Line
	4700 3900 4450 3900
Wire Wire Line
	4700 4000 4450 4000
Wire Wire Line
	4700 4100 4450 4100
Wire Wire Line
	4700 4200 4450 4200
Wire Wire Line
	4700 4400 4450 4400
Wire Wire Line
	4700 4500 4450 4500
Wire Wire Line
	4700 4600 4450 4600
Wire Wire Line
	4700 4700 4450 4700
Wire Wire Line
	4700 4800 4450 4800
Wire Wire Line
	4700 4900 4450 4900
Wire Wire Line
	4700 5000 4450 5000
Wire Wire Line
	4450 5100 4700 5100
Text Label 3600 1500 0    60   ~ 0
OUT9
Text Label 3600 4000 0    60   ~ 0
OUT10
Text Label 3600 1600 0    60   ~ 0
OUT11
Text Label 3600 4100 0    60   ~ 0
OUT12
Text Label 3600 1700 0    60   ~ 0
OUT13
Text Label 3600 4200 0    60   ~ 0
OUT14
Text Label 3600 1800 0    60   ~ 0
OUT15
Text Label 3600 4300 0    60   ~ 0
OUT16
Text Label 3600 2300 0    60   ~ 0
IN9
Text Label 3600 4800 0    60   ~ 0
IN10
Text Label 3600 2400 0    60   ~ 0
IN11
Text Label 3600 4900 0    60   ~ 0
IN12
Text Label 3600 2500 0    60   ~ 0
IN13
Text Label 3600 5000 0    60   ~ 0
IN14
Text Label 3600 2600 0    60   ~ 0
IN15
Text Label 3600 5100 0    60   ~ 0
IN16
Text Label 4500 1400 0    60   ~ 0
OUT9
Text Label 4450 2200 0    60   ~ 0
OUT10
Text Label 4450 1500 0    60   ~ 0
OUT11
Text Label 4450 2100 0    60   ~ 0
OUT12
Text Label 4450 1600 0    60   ~ 0
OUT13
Text Label 4450 2000 0    60   ~ 0
OUT14
Text Label 4450 1700 0    60   ~ 0
OUT15
Text Label 4450 1900 0    60   ~ 0
OUT16
Text Label 4450 3900 0    60   ~ 0
IN9
Text Label 4450 4700 0    60   ~ 0
IN10
Text Label 4450 4000 0    60   ~ 0
IN11
Text Label 4450 4600 0    60   ~ 0
IN12
Text Label 4450 4100 0    60   ~ 0
IN13
Text Label 4450 4500 0    60   ~ 0
IN14
Text Label 4450 4200 0    60   ~ 0
IN15
Text Label 4450 4400 0    60   ~ 0
IN16
NoConn ~ 9700 2900
NoConn ~ 9700 2800
NoConn ~ 9700 2700
NoConn ~ 9700 2600
NoConn ~ 9700 2500
NoConn ~ 9700 2400
NoConn ~ 9700 2300
NoConn ~ 9700 2200
NoConn ~ 9700 2100
NoConn ~ 9700 2000
NoConn ~ 9700 1900
NoConn ~ 9700 1800
NoConn ~ 7100 2500
NoConn ~ 7100 2600
NoConn ~ 7100 3100
$Comp
L GND #PWR025
U 1 1 5FB626EB
P 1650 950
F 0 "#PWR025" H 1650 700 50  0001 C CNN
F 1 "GND" H 1650 800 50  0000 C CNN
F 2 "" H 1650 950 50  0001 C CNN
F 3 "" H 1650 950 50  0001 C CNN
	1    1650 950 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG026
U 1 1 5FB62A3E
P 1650 950
F 0 "#FLG026" H 1650 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1100 50  0000 C CNN
F 2 "" H 1650 950 50  0001 C CNN
F 3 "" H 1650 950 50  0001 C CNN
	1    1650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2100 7100 2100
Wire Wire Line
	5700 2200 7100 2200
Wire Wire Line
	2900 7100 3100 7100
Wire Wire Line
	3100 7100 3100 7000
Connection ~ 3100 7000
Wire Wire Line
	3100 7200 3100 7300
Text Label 3700 3500 0    60   ~ 0
A3
Wire Wire Line
	7100 2700 6950 2700
Text Label 6950 2700 0    60   ~ 0
A3
$EndSCHEMATC