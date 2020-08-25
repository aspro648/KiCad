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
LIBS:LIS3Dh
LIBS:MPL3115A
LIBS:sensors
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Beetje Pressure Blok"
Date "2018-08-13"
Rev "0.0"
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VBUS #PWR01
U 1 1 5B3FDCD2
P 1450 1350
F 0 "#PWR01" H 1450 1200 50  0001 C CNN
F 1 "VBUS" H 1450 1500 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B3FDCF5
P 2700 1350
F 0 "#PWR02" H 2700 1100 50  0001 C CNN
F 1 "GND" H 2700 1200 50  0000 C CNN
F 2 "" H 2700 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5B3FDD3A
P 1450 1350
F 0 "#FLG03" H 1450 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1500 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5B3FDD50
P 2250 1350
F 0 "#FLG04" H 2250 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 1500 50  0000 C CNN
F 2 "" H 2250 1350 50  0001 C CNN
F 3 "" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 5B3FDD67
P 2700 1350
F 0 "#FLG05" H 2700 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 1500 50  0000 C CNN
F 2 "" H 2700 1350 50  0001 C CNN
F 3 "" H 2700 1350 50  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR06
U 1 1 5B402C38
P 3550 4200
F 0 "#PWR06" H 3550 4050 50  0001 C CNN
F 1 "+BATT" V 3550 4450 50  0000 C CNN
F 2 "" H 3550 4200 50  0001 C CNN
F 3 "" H 3550 4200 50  0001 C CNN
	1    3550 4200
	0    -1   -1   0   
$EndComp
$Comp
L VBUS #PWR07
U 1 1 5B402FA5
P 3550 4500
F 0 "#PWR07" H 3550 4350 50  0001 C CNN
F 1 "VBUS" V 3550 4700 50  0000 C CNN
F 2 "" H 3550 4500 50  0001 C CNN
F 3 "" H 3550 4500 50  0001 C CNN
	1    3550 4500
	0    -1   -1   0   
$EndComp
Text Label 3150 3900 0    60   ~ 0
INT_DRDY
Text Label 3450 4000 0    60   ~ 0
~CS
Text Label 4750 4000 0    60   ~ 0
SCL/SCLK
Text Label 4750 3900 0    60   ~ 0
SDA/MOSI
Text Label 3300 3800 0    60   ~ 0
~RESET
Text Label 3450 4100 0    60   ~ 0
D10
Text Label 4750 4300 0    60   ~ 0
SCL/SCLK
Text Label 4750 4200 0    60   ~ 0
SDA/MOSI
Text Label 4750 4100 0    60   ~ 0
SA0/MISO
$Comp
L GND #PWR08
U 1 1 5B41D2F5
P 3550 4400
F 0 "#PWR08" H 3550 4150 50  0001 C CNN
F 1 "GND" V 3550 4200 50  0000 C CNN
F 2 "" H 3550 4400 50  0001 C CNN
F 3 "" H 3550 4400 50  0001 C CNN
	1    3550 4400
	0    1    1    0   
$EndComp
$Comp
L Conn_01x08 J4
U 1 1 5B6D51CD
P 3750 4100
F 0 "J4" H 3750 4500 50  0000 C CNN
F 1 "Beetje_Top" H 3750 3600 50  0000 C CNN
F 2 "footprints:Beetje_Top" H 3750 4100 50  0001 C CNN
F 3 "" H 3750 4100 50  0001 C CNN
	1    3750 4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J2
U 1 1 5B6D5224
P 4550 4000
F 0 "J2" H 4550 4300 50  0000 C CNN
F 1 "Beetje_Bottom" H 4550 3600 50  0000 C CNN
F 2 "footprints:Beetje_Bottom" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5B6E5416
P 2250 1350
F 0 "#PWR09" H 2250 1200 50  0001 C CNN
F 1 "VCC" H 2250 1500 50  0000 C CNN
F 2 "" H 2250 1350 50  0001 C CNN
F 3 "" H 2250 1350 50  0001 C CNN
	1    2250 1350
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR010
U 1 1 5B6E81BF
P 3550 4300
F 0 "#PWR010" H 3550 4150 50  0001 C CNN
F 1 "VCC" V 3550 4500 50  0000 C CNN
F 2 "" H 3550 4300 50  0001 C CNN
F 3 "" H 3550 4300 50  0001 C CNN
	1    3550 4300
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 5B3FFE6E
P 1850 1350
F 0 "#FLG011" H 1850 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 1500 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR012
U 1 1 5B6E4208
P 1850 1350
F 0 "#PWR012" H 1850 1200 50  0001 C CNN
F 1 "+BATT" V 1850 1600 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5B4A240C
P 6600 2200
F 0 "R2" V 6680 2200 50  0000 C CNN
F 1 "4K7" V 6600 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6530 2200 50  0001 C CNN
F 3 "" H 6600 2200 50  0001 C CNN
	1    6600 2200
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5B4A2460
P 6400 2200
F 0 "R1" V 6480 2200 50  0000 C CNN
F 1 "4K7" V 6400 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6330 2200 50  0001 C CNN
F 3 "" H 6400 2200 50  0001 C CNN
	1    6400 2200
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR013
U 1 1 5B4A248A
P 7400 2000
F 0 "#PWR013" H 7400 1850 50  0001 C CNN
F 1 "VCC" H 7400 2150 50  0000 C CNN
F 2 "" H 7400 2000 50  0001 C CNN
F 3 "" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
Text Label 6200 2700 0    60   ~ 0
SCL/SCLK
Text Label 6200 2500 0    60   ~ 0
SDA/MOSI
$Comp
L VCC #PWR014
U 1 1 5B4A2989
P 4950 2000
F 0 "#PWR014" H 4950 1850 50  0001 C CNN
F 1 "VCC" H 4950 2150 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B4A29A6
P 5100 2250
F 0 "C2" H 5125 2350 50  0000 L CNN
F 1 "0.1uF" H 5125 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5138 2100 50  0001 C CNN
F 3 "" H 5100 2250 50  0001 C CNN
	1    5100 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5B4A2A87
P 7500 3300
F 0 "#PWR015" H 7500 3050 50  0001 C CNN
F 1 "GND" H 7500 3150 50  0000 C CNN
F 2 "" H 7500 3300 50  0001 C CNN
F 3 "" H 7500 3300 50  0001 C CNN
	1    7500 3300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B4A364F
P 4750 2250
F 0 "C1" H 4775 2350 50  0000 L CNN
F 1 "4.7uF" H 4775 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4788 2100 50  0001 C CNN
F 3 "" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
$Comp
L LPS25HB U1
U 1 1 5B955617
P 7300 2700
F 0 "U1" H 6850 3250 50  0000 L CNN
F 1 "LPS25HB" H 6850 3150 50  0000 L CNN
F 2 "footprints:ST_HLGA-10_2.5x2.5mm_P0.6mm_LayoutBorder3x2y" H 7400 2000 50  0001 C CNN
F 3 "" H 7400 2350 50  0001 C CNN
	1    7300 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 5B956AC0
P 6200 1600
F 0 "#PWR016" H 6200 1450 50  0001 C CNN
F 1 "VCC" H 6200 1750 50  0000 C CNN
F 2 "" H 6200 1600 50  0001 C CNN
F 3 "" H 6200 1600 50  0001 C CNN
	1    6200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3800 3300 3800
Wire Wire Line
	3150 3900 3550 3900
Wire Wire Line
	3550 4000 3450 4000
Wire Wire Line
	3550 4100 3450 4100
Wire Wire Line
	3550 4200 3550 4200
Wire Wire Line
	3550 4300 3550 4300
Wire Wire Line
	3550 4400 3550 4400
Wire Wire Line
	3550 4500 3550 4500
Wire Wire Line
	4750 3800 4900 3800
Wire Wire Line
	4750 3900 5050 3900
Wire Wire Line
	4750 4000 5050 4000
Wire Wire Line
	4750 4100 5050 4100
Wire Wire Line
	4750 4200 5050 4200
Wire Wire Line
	4750 4300 5050 4300
Wire Wire Line
	7400 2000 7400 2200
Wire Wire Line
	7400 2100 7600 2100
Wire Wire Line
	7600 2100 7600 2200
Connection ~ 7400 2100
Wire Wire Line
	7500 3300 7500 3200
Wire Wire Line
	5650 3000 6700 3000
Wire Wire Line
	5850 2800 6700 2800
Wire Wire Line
	6200 2700 6700 2700
Wire Wire Line
	6050 2600 6700 2600
Wire Wire Line
	6200 2500 6700 2500
Wire Wire Line
	6600 1600 6600 2050
Wire Wire Line
	6600 2350 6600 2700
Connection ~ 6600 2700
Wire Wire Line
	6400 2350 6400 2500
Connection ~ 6400 2500
$Comp
L GND #PWR017
U 1 1 5B957CDA
P 4950 2600
F 0 "#PWR017" H 4950 2350 50  0001 C CNN
F 1 "GND" H 4950 2450 50  0000 C CNN
F 2 "" H 4950 2600 50  0001 C CNN
F 3 "" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2100 4750 2000
Wire Wire Line
	4750 2000 5100 2000
Wire Wire Line
	5100 2000 5100 2100
Connection ~ 4950 2000
Wire Wire Line
	4750 2400 4750 2450
Wire Wire Line
	4750 2450 5100 2450
Wire Wire Line
	4950 2450 4950 2600
Wire Wire Line
	5100 2450 5100 2400
Connection ~ 4950 2450
$Comp
L R R4
U 1 1 5B957F8F
P 5850 2200
F 0 "R4" V 5930 2200 50  0000 C CNN
F 1 "10K" V 5850 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 2200 50  0001 C CNN
F 3 "" H 5850 2200 50  0001 C CNN
	1    5850 2200
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5B957FEE
P 6050 2200
F 0 "R5" V 6130 2200 50  0000 C CNN
F 1 "10K" V 6050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5980 2200 50  0001 C CNN
F 3 "" H 6050 2200 50  0001 C CNN
	1    6050 2200
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5B95801F
P 5650 2200
F 0 "R3" V 5730 2200 50  0000 C CNN
F 1 "10K" V 5650 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5580 2200 50  0001 C CNN
F 3 "" H 5650 2200 50  0001 C CNN
	1    5650 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 2600 6050 2350
Wire Wire Line
	5850 2350 5850 3150
Wire Wire Line
	5650 3000 5650 2350
Wire Wire Line
	5650 1600 5650 2050
Wire Wire Line
	5850 1600 5850 2050
Wire Wire Line
	6050 1600 6050 2050
Text Label 6200 2600 0    60   ~ 0
SA0/MISO
Text Label 6200 2800 0    60   ~ 0
~CS
Text Label 6200 3000 0    60   ~ 0
INT_DRDY
Text Notes 4300 4300 0    60   ~ 0
A0\nSDA\nSCL\nMISO\nMOSI\nSCK
Text Notes 3850 4500 0    60   ~ 0
~RESET\nD6\nD9\nD10\nBATT\nVCC\nGND\nVBUS
Text Notes 5700 3800 0    60   ~ 0
https://www.sparkfun.com/products/14767
Wire Notes Line
	3050 3550 3050 4800
Wire Notes Line
	3050 4800 5350 4800
Wire Notes Line
	5350 4800 5350 3550
Wire Notes Line
	5350 3550 3050 3550
Text Notes 4650 4750 0    60   ~ 0
Beetje Pinout
NoConn ~ 3450 4100
NoConn ~ 3300 3800
Connection ~ 5850 2800
$Comp
L Jumper_NO_Small JP1
U 1 1 5B959185
P 5850 3250
F 0 "JP1" H 5850 3330 50  0000 C CNN
F 1 "Jumper" H 5860 3190 50  0000 C CNN
F 2 "footprints:Jumper" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5B9591D1
P 5850 3350
F 0 "#PWR018" H 5850 3100 50  0001 C CNN
F 1 "GND" H 5850 3200 50  0000 C CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "" H 5850 3350 50  0001 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP2
U 1 1 5B9592CB
P 6600 1800
F 0 "JP2" H 6600 1880 50  0000 C CNN
F 1 "Jumper" H 6610 1740 50  0000 C CNN
F 2 "footprints:Jumper" H 6600 1800 50  0001 C CNN
F 3 "" H 6600 1800 50  0001 C CNN
	1    6600 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1600 6600 1600
Connection ~ 6200 1600
Connection ~ 5850 1600
Connection ~ 6050 1600
Connection ~ 6600 1700
Connection ~ 6600 1900
Text Notes 6000 3450 0    60   ~ 0
I2C Address: \nJumper Open (Default): 0x5D\nJumper Closed: 0x5C
Text Notes 7250 1850 2    60   ~ 0
Cut for SPI
Wire Wire Line
	6400 2050 6400 2000
Wire Wire Line
	6400 2000 6600 2000
Connection ~ 6600 2000
NoConn ~ 4900 3800
Text Label 4850 3800 2    60   ~ 0
A0
$EndSCHEMATC