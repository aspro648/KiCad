EESchema Schematic File Version 2
LIBS:base-rescue
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
LIBS:MMA8452Q
LIBS:w_analog
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "OSH Park OSWA 2017 Pin"
Date ""
Rev ""
Comp "www.MakersBox.us"
Comment1 "K. Olsen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG01
U 1 1 553FAE81
P 900 900
F 0 "#FLG01" H 900 995 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1080 50  0000 C CNN
F 2 "" H 900 900 60  0000 C CNN
F 3 "" H 900 900 60  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 553FAEA5
P 1250 900
F 0 "#FLG02" H 1250 995 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1080 50  0000 C CNN
F 2 "" H 1250 900 60  0000 C CNN
F 3 "" H 1250 900 60  0000 C CNN
	1    1250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 553FAEE7
P 1250 1000
F 0 "#PWR03" H 1250 750 50  0001 C CNN
F 1 "GND" H 1250 850 50  0000 C CNN
F 2 "" H 1250 1000 60  0000 C CNN
F 3 "" H 1250 1000 60  0000 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR04
U 1 1 553FAF12
P 900 1000
F 0 "#PWR04" H 900 850 50  0001 C CNN
F 1 "+BATT" H 900 1140 50  0000 C CNN
F 2 "" H 900 1000 60  0000 C CNN
F 3 "" H 900 1000 60  0000 C CNN
	1    900  1000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X12 P1
U 1 1 59BB4AEE
P 4800 3400
F 0 "P1" H 4800 4050 50  0000 C CNN
F 1 "TRINKET_LEFT" V 4900 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 4800 3400 50  0001 C CNN
F 3 "" H 4800 3400 50  0000 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P2
U 1 1 59BB4B2E
P 5450 3400
F 0 "P2" H 5450 4050 50  0000 C CNN
F 1 "TRINKET_RIGHT" V 5550 3400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 5450 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0000 C CNN
	1    5450 3400
	-1   0    0    -1  
$EndComp
$Comp
L ULN2803 U1
U 1 1 59BB515C
P 8100 3550
F 0 "U1" H 8250 4100 60  0000 C CNN
F 1 "ULN2803" H 8350 4000 60  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm" H 8100 3550 60  0001 C CNN
F 3 "" H 8100 3550 60  0000 C CNN
	1    8100 3550
	1    0    0    -1  
$EndComp
Text Notes 8600 4600 0    60   ~ 0
https://www.digikey.com/short/qcrr5m\nB5B-XH-A
$Comp
L CONN_01X05 P3
U 1 1 59BB5292
P 9000 3300
F 0 "P3" H 9000 3000 50  0000 C CNN
F 1 "LEFT_STEPPER" V 9100 3300 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 9000 3300 50  0001 C CNN
F 3 "" H 9000 3300 50  0000 C CNN
	1    9000 3300
	1    0    0    1   
$EndComp
$Comp
L CONN_01X05 P4
U 1 1 59BB5353
P 9300 3800
F 0 "P4" H 9300 4100 50  0000 C CNN
F 1 "RIGHT_STEPPER" V 9400 3800 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 9300 3800 50  0001 C CNN
F 3 "" H 9300 3800 50  0000 C CNN
	1    9300 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59BB5846
P 8100 4050
F 0 "#PWR05" H 8100 3800 50  0001 C CNN
F 1 "GND" H 8100 3900 50  0000 C CNN
F 2 "" H 8100 4050 60  0000 C CNN
F 3 "" H 8100 4050 60  0000 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
Text Notes 5000 2800 0    60   ~ 0
USB
Text Label 4450 2850 0    60   ~ 0
D9
Text Label 4450 2950 0    60   ~ 0
D10
Text Label 4450 3050 0    60   ~ 0
D11
Text Label 4450 3150 0    60   ~ 0
D12
Text Label 4450 3250 0    60   ~ 0
D13
Text Label 4450 3450 0    60   ~ 0
A0
Text Label 4450 3550 0    60   ~ 0
A1
Text Label 4450 3650 0    60   ~ 0
A2
Text Label 4450 3750 0    60   ~ 0
A3
Text Label 4450 3850 0    60   ~ 0
A4
Text Label 4450 3950 0    60   ~ 0
A5
Text Label 5700 2850 0    60   ~ 0
VBAT
Text Label 5700 2950 0    60   ~ 0
GND
Text Label 5700 3050 0    60   ~ 0
VBUS
Text Label 5700 3150 0    60   ~ 0
3V3
Text Label 5700 3250 0    60   ~ 0
D8
Text Label 5700 3350 0    60   ~ 0
D6
Text Label 5700 3450 0    60   ~ 0
D5
Text Label 5700 3550 0    60   ~ 0
D4
Text Label 5700 3650 0    60   ~ 0
D3
Text Label 5700 3750 0    60   ~ 0
TXD
Text Label 5700 3850 0    60   ~ 0
RXD
Text Label 5700 3950 0    60   ~ 0
RST
Text Label 4450 3350 0    60   ~ 0
AREF
Wire Wire Line
	900  900  900  1000
Wire Wire Line
	1250 900  1250 1000
Wire Wire Line
	5650 2850 8800 2850
Wire Wire Line
	5650 2950 6050 2950
Wire Wire Line
	5650 3050 6050 3050
Wire Wire Line
	5650 3150 6050 3150
Wire Wire Line
	5650 3250 6300 3250
Wire Wire Line
	5650 3550 6250 3550
Wire Wire Line
	5650 3650 6350 3650
Wire Wire Line
	5650 3750 6050 3750
Wire Wire Line
	5650 3850 6050 3850
Wire Wire Line
	5650 3950 6050 3950
Wire Wire Line
	4600 2850 4450 2850
Wire Wire Line
	4600 2950 4450 2950
Wire Wire Line
	4600 3050 4450 3050
Wire Wire Line
	4600 3150 4450 3150
Wire Wire Line
	4600 3250 4450 3250
Wire Wire Line
	4600 3350 4450 3350
Wire Wire Line
	4100 3450 4600 3450
Wire Wire Line
	4200 3550 4600 3550
Wire Wire Line
	4600 3650 4450 3650
Wire Wire Line
	4300 3850 4600 3850
Wire Wire Line
	4400 3950 4600 3950
Wire Wire Line
	8500 3200 8800 3200
Wire Wire Line
	8500 3300 8800 3300
Wire Wire Line
	8500 3400 8800 3400
Wire Wire Line
	8500 3500 8800 3500
Wire Wire Line
	8500 3600 9100 3600
Wire Wire Line
	8500 3700 9100 3700
Wire Wire Line
	8500 3800 9100 3800
Wire Wire Line
	8500 3900 9100 3900
Wire Wire Line
	8100 2850 8100 3050
Wire Wire Line
	8800 2400 8800 4000
Wire Wire Line
	8800 4000 9100 4000
Connection ~ 8800 3100
Wire Wire Line
	7700 3200 7400 3200
Wire Wire Line
	7700 3300 7400 3300
Wire Wire Line
	7700 3400 7400 3400
Wire Wire Line
	7700 3500 7400 3500
Wire Wire Line
	7700 3600 7400 3600
Wire Wire Line
	7700 3700 7400 3700
Wire Wire Line
	7700 3800 7400 3800
Wire Wire Line
	7700 3900 7400 3900
Text Label 7450 3200 0    60   ~ 0
D10
Text Label 7450 3300 0    60   ~ 0
D11
Text Label 7450 3400 0    60   ~ 0
D12
Text Label 7450 3500 0    60   ~ 0
D13
Text Label 7450 3600 0    60   ~ 0
D6
Text Label 7450 3700 0    60   ~ 0
D5
Text Label 7450 3800 0    60   ~ 0
D4
Text Label 7450 3900 0    60   ~ 0
D3
$Comp
L CONN_01X02 P5
U 1 1 59BB6BDF
P 6500 1900
F 0 "P5" H 6500 2050 50  0000 C CNN
F 1 "BATT1" V 6600 1900 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6500 1900 50  0001 C CNN
F 3 "" H 6500 1900 50  0000 C CNN
	1    6500 1900
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P6
U 1 1 59BB6C46
P 6800 1900
F 0 "P6" H 6800 2050 50  0000 C CNN
F 1 "BATT2" V 6900 1900 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 6800 1900 50  0001 C CNN
F 3 "" H 6800 1900 50  0000 C CNN
	1    6800 1900
	0    -1   -1   0   
$EndComp
Text Notes 6600 1750 2    60   ~ 0
- +
Text Notes 6700 1750 0    60   ~ 0
- +
Wire Wire Line
	6550 2100 6750 2100
$Comp
L SPST SW1
U 1 1 59BB6E38
P 7350 2100
F 0 "SW1" H 7350 2200 50  0000 C CNN
F 1 "SPST" H 7350 2000 50  0000 C CNN
F 2 "myFootPrints:SW_Micro_SPST" H 7350 2100 50  0001 C CNN
F 3 "" H 7350 2100 50  0000 C CNN
	1    7350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2100 6450 2100
Wire Wire Line
	7850 2850 7850 2100
Connection ~ 8100 2850
Connection ~ 7850 2850
$Comp
L GND #PWR06
U 1 1 59BB7D8A
P 6050 2950
F 0 "#PWR06" H 6050 2700 50  0001 C CNN
F 1 "GND" H 6050 2800 50  0000 C CNN
F 2 "" H 6050 2950 60  0000 C CNN
F 3 "" H 6050 2950 60  0000 C CNN
	1    6050 2950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X03 P7
U 1 1 59BB83B4
P 8800 2200
F 0 "P7" H 8800 2400 50  0000 C CNN
F 1 "SERVO" V 8900 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8800 2200 50  0001 C CNN
F 3 "" H 8800 2200 50  0000 C CNN
	1    8800 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3250 6300 2550
Wire Wire Line
	6300 2550 8700 2550
Wire Wire Line
	8700 2550 8700 2400
Connection ~ 8650 2850
$Comp
L GND #PWR07
U 1 1 59BB84D9
P 8900 2400
F 0 "#PWR07" H 8900 2150 50  0001 C CNN
F 1 "GND" H 8900 2250 50  0000 C CNN
F 2 "" H 8900 2400 60  0000 C CNN
F 3 "" H 8900 2400 60  0000 C CNN
	1    8900 2400
	1    0    0    -1  
$EndComp
Text Notes 8650 2050 0    60   ~ 0
s + -
$Comp
L CP C1
U 1 1 59BB855D
P 6700 3000
F 0 "C1" H 6725 3100 50  0000 L CNN
F 1 "100uF" H 6600 3200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 6738 2850 50  0001 C CNN
F 3 "" H 6700 3000 50  0000 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 59BB864C
P 6950 3000
F 0 "C2" H 6975 3100 50  0000 L CNN
F 1 "10uF" H 6900 3200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2.5" H 6988 2850 50  0001 C CNN
F 3 "" H 6950 3000 50  0000 C CNN
	1    6950 3000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59BB8677
P 7150 3000
F 0 "C3" H 7175 3100 50  0000 L CNN
F 1 "1uF" H 7150 3200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7188 2850 50  0001 C CNN
F 3 "" H 7150 3000 50  0000 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3150 7150 3150
Connection ~ 6950 3150
$Comp
L GND #PWR08
U 1 1 59BB875A
P 6950 3150
F 0 "#PWR08" H 6950 2900 50  0001 C CNN
F 1 "GND" H 6950 3000 50  0000 C CNN
F 2 "" H 6950 3150 60  0000 C CNN
F 3 "" H 6950 3150 60  0000 C CNN
	1    6950 3150
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59BB9D4D
P 6500 3050
F 0 "D1" H 6500 3150 50  0000 C CNN
F 1 "LED" H 6500 2950 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 6500 3050 50  0001 C CNN
F 3 "" H 6500 3050 50  0000 C CNN
	1    6500 3050
	0    -1   -1   0   
$EndComp
Connection ~ 6500 2850
Connection ~ 6700 2850
Connection ~ 6950 2850
Connection ~ 7150 2850
$Comp
L R R1
U 1 1 59BB9EB4
P 6500 3400
F 0 "R1" V 6580 3400 50  0000 C CNN
F 1 "330" V 6500 3400 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6430 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0000 C CNN
	1    6500 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59BB9EFB
P 6500 3550
F 0 "#PWR09" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6500 3400 50  0000 C CNN
F 2 "" H 6500 3550 60  0000 C CNN
F 3 "" H 6500 3550 60  0000 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P8
U 1 1 59BB6A01
P 5250 4900
F 0 "P8" H 5250 5100 50  0000 C CNN
F 1 "A5 - A1" V 5350 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5250 4900 50  0001 C CNN
F 3 "" H 5250 4900 50  0000 C CNN
	1    5250 4900
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P11
U 1 1 59BB6A67
P 5700 4900
F 0 "P11" H 5700 5100 50  0000 C CNN
F 1 "A4 - A0" V 5800 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5700 4900 50  0001 C CNN
F 3 "" H 5700 4900 50  0000 C CNN
	1    5700 4900
	0    -1   1    0   
$EndComp
Wire Wire Line
	5150 4700 5150 4100
Wire Wire Line
	5150 4100 4400 4100
Wire Wire Line
	4400 4100 4400 3950
Wire Wire Line
	4300 3850 4300 4200
Wire Wire Line
	4300 4200 5600 4200
Wire Wire Line
	5600 4200 5600 4700
$Comp
L GND #PWR010
U 1 1 59BB7370
P 5250 4700
F 0 "#PWR010" H 5250 4450 50  0001 C CNN
F 1 "GND" H 5250 4550 50  0000 C CNN
F 2 "" H 5250 4700 60  0000 C CNN
F 3 "" H 5250 4700 60  0000 C CNN
	1    5250 4700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 59BB73AE
P 5700 4700
F 0 "#PWR011" H 5700 4450 50  0001 C CNN
F 1 "GND" H 5700 4550 50  0000 C CNN
F 2 "" H 5700 4700 60  0000 C CNN
F 3 "" H 5700 4700 60  0000 C CNN
	1    5700 4700
	-1   0    0    1   
$EndComp
Text Notes 5350 5150 0    60   ~ 0
Optional Sensors
Wire Wire Line
	4450 3750 4600 3750
Wire Wire Line
	4200 3550 4200 4300
Wire Wire Line
	4100 3450 4100 4400
Wire Wire Line
	4100 4400 5800 4400
Wire Wire Line
	5800 4400 5800 4700
Wire Wire Line
	4200 4300 5350 4300
Wire Wire Line
	5350 4300 5350 4700
Wire Wire Line
	5650 3350 5700 3350
Wire Wire Line
	5650 3450 5700 3450
$Comp
L GND #PWR012
U 1 1 59CB1B18
P 6300 2100
F 0 "#PWR012" H 6300 1850 50  0001 C CNN
F 1 "GND" H 6300 1950 50  0000 C CNN
F 2 "" H 6300 2100 60  0000 C CNN
F 3 "" H 6300 2100 60  0000 C CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
Connection ~ 8800 2850
$EndSCHEMATC
