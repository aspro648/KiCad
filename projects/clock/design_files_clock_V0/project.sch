EESchema Schematic File Version 2
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
LIBS:maxim
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduino Clock"
Date ""
Rev ""
Comp "Maker's Box"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CC56-12CGKWA U2
U 1 1 5A8E2847
P 5950 4700
F 0 "U2" H 5000 5150 50  0000 C CNN
F 1 "CC56-12CGKWA" H 6720 5150 50  0000 C CNN
F 2 "Displays_7-Segment:CA56-12CGKWA" H 5950 4100 50  0001 C CNN
F 3 "" H 5570 4730 50  0001 C CNN
	1    5950 4700
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-PU U1
U 1 1 5A8E29D7
P 2850 3700
F 0 "U1" H 2100 4950 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 3250 2300 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2850 3700 50  0001 C CIN
F 3 "" H 2850 3700 50  0001 C CNN
	1    2850 3700
	1    0    0    -1  
$EndComp
Text Notes 900  7100 0    60   ~ 0
https://www.electronicshub.org/arduino-4-digit-7-segment-led-display/
$Comp
L Q_NPN_EBC Q2
U 1 1 5A8E2E4D
P 7850 4300
F 0 "Q2" V 7800 4100 50  0000 L CNN
F 1 "2N2222" V 7700 3900 50  0000 L CNN
F 2 "myFootPrints:TO-92_NPN_EBC_wide" H 8050 4400 50  0001 C CNN
F 3 "" H 7850 4300 50  0001 C CNN
	1    7850 4300
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5A8E30A1
P 7500 4200
F 0 "R7" V 7580 4200 50  0000 C CNN
F 1 "100" V 7500 4200 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 7430 4200 50  0001 C CNN
F 3 "" H 7500 4200 50  0001 C CNN
	1    7500 4200
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q3
U 1 1 5A8E34C6
P 8100 4700
F 0 "Q3" V 8050 4500 50  0000 L CNN
F 1 "2N2222" V 7950 4300 50  0000 L CNN
F 2 "myFootPrints:TO-92_NPN_EBC_wide" H 8300 4800 50  0001 C CNN
F 3 "" H 8100 4700 50  0001 C CNN
	1    8100 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5A8E34CC
P 7500 4600
F 0 "R8" V 7580 4600 50  0000 C CNN
F 1 "100" V 7500 4600 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 7430 4600 50  0001 C CNN
F 3 "" H 7500 4600 50  0001 C CNN
	1    7500 4600
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q4
U 1 1 5A8E35C2
P 8350 5100
F 0 "Q4" V 8300 4900 50  0000 L CNN
F 1 "2N2222" V 8200 4700 50  0000 L CNN
F 2 "myFootPrints:TO-92_NPN_EBC_wide" H 8550 5200 50  0001 C CNN
F 3 "" H 8350 5100 50  0001 C CNN
	1    8350 5100
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5A8E35C8
P 7500 5000
F 0 "R9" V 7580 5000 50  0000 C CNN
F 1 "100" V 7500 5000 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 7430 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q5
U 1 1 5A8E35CE
P 8650 5500
F 0 "Q5" V 8600 5300 50  0000 L CNN
F 1 "2N2222" V 8500 5100 50  0000 L CNN
F 2 "myFootPrints:TO-92_NPN_EBC_wide" H 8850 5600 50  0001 C CNN
F 3 "" H 8650 5500 50  0001 C CNN
	1    8650 5500
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 5A8E35D4
P 7500 5400
F 0 "R10" V 7580 5400 50  0000 C CNN
F 1 "100" V 7500 5400 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 7430 5400 50  0001 C CNN
F 3 "" H 7500 5400 50  0001 C CNN
	1    7500 5400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5A8E3F05
P 9200 6100
F 0 "#PWR01" H 9200 5850 50  0001 C CNN
F 1 "GND" H 9200 5950 50  0000 C CNN
F 2 "" H 9200 6100 50  0001 C CNN
F 3 "" H 9200 6100 50  0001 C CNN
	1    9200 6100
	1    0    0    -1  
$EndComp
Text Notes 900  7250 0    60   ~ 0
https://www.digikey.com/product-detail/en/adafruit-industries-llc/811/1528-1509-ND/5774235
$Comp
L DS1307+ U3
U 1 1 5A8E6B76
P 8250 3200
F 0 "U3" H 8520 3750 50  0000 C CNN
F 1 "RTC" H 8550 2650 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 8250 3200 50  0001 C CNN
F 3 "" H 8250 3200 50  0001 C CNN
	1    8250 3200
	1    0    0    -1  
$EndComp
NoConn ~ 8850 2900
$Comp
L GND #PWR02
U 1 1 5A8E9132
P 1850 6100
F 0 "#PWR02" H 1850 5850 50  0001 C CNN
F 1 "GND" H 1850 5950 50  0000 C CNN
F 2 "" H 1850 6100 50  0001 C CNN
F 3 "" H 1850 6100 50  0001 C CNN
	1    1850 6100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A8E9B0C
P 8250 2500
F 0 "#PWR03" H 8250 2350 50  0001 C CNN
F 1 "VCC" H 8250 2650 50  0000 C CNN
F 2 "" H 8250 2500 50  0001 C CNN
F 3 "" H 8250 2500 50  0001 C CNN
	1    8250 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A8E9B54
P 1850 1250
F 0 "#PWR04" H 1850 1100 50  0001 C CNN
F 1 "VCC" H 1850 1400 50  0000 C CNN
F 2 "" H 1850 1250 50  0001 C CNN
F 3 "" H 1850 1250 50  0001 C CNN
	1    1850 1250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A8E9F35
P 1850 2750
F 0 "C1" H 1700 2850 50  0000 L CNN
F 1 "0.1uF" H 1600 2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1888 2600 50  0001 C CNN
F 3 "" H 1850 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
NoConn ~ 1950 2900
NoConn ~ 1950 3200
$Comp
L AVR-ISP-6 CON1
U 1 1 5A8EB119
P 5250 1400
F 0 "CON1" H 5145 1640 50  0000 C CNN
F 1 "ISP" H 4985 1170 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 4730 1440 50  0001 C CNN
F 3 "" H 5225 1400 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5A8EB682
P 5800 1250
F 0 "#PWR05" H 5800 1100 50  0001 C CNN
F 1 "VCC" H 5800 1400 50  0000 C CNN
F 2 "" H 5800 1250 50  0001 C CNN
F 3 "" H 5800 1250 50  0001 C CNN
	1    5800 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A8EB73D
P 5600 1500
F 0 "#PWR06" H 5600 1250 50  0001 C CNN
F 1 "GND" H 5600 1350 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	0    -1   -1   0   
$EndComp
$Comp
L Speaker SPKR1
U 1 1 5A8EFCB4
P 7400 2450
F 0 "SPKR1" H 7450 2600 50  0000 R CNN
F 1 "Speaker" H 7450 2200 50  0000 R CNN
F 2 "myFootPrints:PS1240_piezo" H 7400 2250 50  0001 C CNN
F 3 "" H 7390 2400 50  0001 C CNN
	1    7400 2450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5A8F0F9E
P 7350 2000
F 0 "SW3" H 7400 2100 50  0000 L CNN
F 1 "SW_Push" H 7350 1940 50  0000 C CNN
F 2 "myFootPrints:SW_PUSH_SMALL" H 7350 2200 50  0001 C CNN
F 3 "" H 7350 2200 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A8F0FFF
P 7350 1700
F 0 "SW2" H 7400 1800 50  0000 L CNN
F 1 "SW_Push" H 7350 1640 50  0000 C CNN
F 2 "myFootPrints:SW_PUSH_SMALL" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A8F1FCA
P 3500 1300
F 0 "#PWR07" H 3500 1050 50  0001 C CNN
F 1 "GND" H 3500 1150 50  0000 C CNN
F 2 "" H 3500 1300 50  0001 C CNN
F 3 "" H 3500 1300 50  0001 C CNN
	1    3500 1300
	0    -1   -1   0   
$EndComp
$Comp
L SW_SPST SW1
U 1 1 5A8F2007
P 2450 1300
F 0 "SW1" H 2450 1425 50  0000 C CNN
F 1 "PWR" H 2450 1200 50  0000 C CNN
F 2 "myFootPrints:SW_Micro_SPST" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	-1   0    0    -1  
$EndComp
$Comp
L Q_Photo_NPN Q1
U 1 1 5A8F5C4D
P 7350 1400
F 0 "Q1" V 7550 1200 50  0000 L CNN
F 1 "Photo" V 7300 1100 50  0000 L CNN
F 2 "myFootPrints:PHOTO_TRANS" H 7550 1500 50  0001 C CNN
F 3 "" H 7350 1400 50  0001 C CNN
	1    7350 1400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A8F5E50
P 7200 2550
F 0 "#PWR08" H 7200 2300 50  0001 C CNN
F 1 "GND" H 7200 2400 50  0000 C CNN
F 2 "" H 7200 2550 50  0001 C CNN
F 3 "" H 7200 2550 50  0001 C CNN
	1    7200 2550
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5A90B60F
P 5900 2400
F 0 "D1" H 5900 2500 50  0000 C CNN
F 1 "LED" H 5900 2300 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 5900 2400 50  0001 C CNN
F 3 "" H 5900 2400 50  0001 C CNN
	1    5900 2400
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5A90B699
P 5900 2750
F 0 "D2" H 5900 2850 50  0000 C CNN
F 1 "LED" H 5900 2650 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0001 C CNN
	1    5900 2750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5A90B70B
P 5600 2400
F 0 "R1" V 5680 2400 50  0000 C CNN
F 1 "330" V 5600 2400 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 5530 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A90B796
P 5600 2750
F 0 "R2" V 5680 2750 50  0000 C CNN
F 1 "330" V 5600 2750 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 5530 2750 50  0001 C CNN
F 3 "" H 5600 2750 50  0001 C CNN
	1    5600 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5A90B943
P 6250 3000
F 0 "#PWR09" H 6250 2750 50  0001 C CNN
F 1 "GND" H 6250 2850 50  0000 C CNN
F 2 "" H 6250 3000 50  0001 C CNN
F 3 "" H 6250 3000 50  0001 C CNN
	1    6250 3000
	1    0    0    -1  
$EndComp
NoConn ~ 3850 3300
$Comp
L PWR_FLAG #FLG010
U 1 1 5A90EE17
P 800 1250
F 0 "#FLG010" H 800 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG011
U 1 1 5A90EF24
P 800 1750
F 0 "#FLG011" H 800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1900 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5A90EF89
P 800 1250
F 0 "#PWR012" H 800 1100 50  0001 C CNN
F 1 "VCC" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5A90EFEE
P 800 1750
F 0 "#PWR013" H 800 1500 50  0001 C CNN
F 1 "GND" H 800 1600 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5A91FB90
P 3000 1500
F 0 "J1" H 3000 1600 50  0000 C CNN
F 1 "PWR" H 3000 1300 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.50mm_Angled" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	3850 4400 4850 4400
Wire Wire Line
	3850 4500 4850 4500
Wire Wire Line
	3850 4600 4850 4600
Wire Wire Line
	3850 4700 4850 4700
Wire Wire Line
	3850 4800 4850 4800
Wire Wire Line
	3850 4900 4850 4900
Wire Wire Line
	3850 2600 4650 2600
Wire Wire Line
	4650 2600 4650 5000
Wire Wire Line
	4650 5000 4850 5000
Wire Wire Line
	3850 2700 4550 2700
Wire Wire Line
	4550 2700 4550 5100
Wire Wire Line
	4550 5100 4850 5100
Wire Wire Line
	7200 4800 7150 4800
Wire Wire Line
	7200 4200 7200 4800
Wire Wire Line
	7200 4200 7350 4200
Wire Wire Line
	7300 4900 7150 4900
Wire Wire Line
	7300 4600 7300 4900
Wire Wire Line
	7300 4600 7350 4600
Wire Wire Line
	7650 4600 7900 4600
Wire Wire Line
	7650 5000 8150 5000
Wire Wire Line
	7650 5400 8450 5400
Wire Wire Line
	7150 5000 7350 5000
Wire Wire Line
	7150 5100 7300 5100
Wire Wire Line
	7300 5100 7300 5400
Wire Wire Line
	7300 5400 7350 5400
Wire Wire Line
	9200 4200 8050 4200
Wire Wire Line
	9200 1300 9200 6100
Wire Wire Line
	8850 5400 9200 5400
Connection ~ 9200 5400
Wire Wire Line
	8550 5000 9200 5000
Connection ~ 9200 5000
Wire Wire Line
	8300 4600 9200 4600
Connection ~ 9200 4600
Wire Wire Line
	7850 4500 7850 5600
Wire Wire Line
	7850 5600 6300 5600
Wire Wire Line
	8100 5800 6300 5800
Wire Wire Line
	8100 4900 8100 5800
Wire Wire Line
	8350 5300 8350 6000
Wire Wire Line
	8350 6000 6300 6000
Wire Wire Line
	6300 6200 8650 6200
Wire Wire Line
	8650 6200 8650 5700
Wire Wire Line
	3850 2800 4450 2800
Wire Wire Line
	4450 2800 4450 5600
Wire Wire Line
	4450 5600 6000 5600
Wire Wire Line
	3850 2900 4350 2900
Wire Wire Line
	4350 1650 4350 5800
Wire Wire Line
	4350 5800 6000 5800
Wire Wire Line
	3850 3000 4250 3000
Wire Wire Line
	4250 1300 4250 6000
Wire Wire Line
	4250 6000 6000 6000
Wire Wire Line
	4150 1400 4150 6200
Wire Wire Line
	4150 6200 6000 6200
Wire Wire Line
	3850 3850 6900 3850
Wire Wire Line
	6900 3100 7650 3100
Wire Wire Line
	3850 3950 7000 3950
Wire Wire Line
	7000 2900 7650 2900
Wire Wire Line
	7500 3700 7500 3600
Wire Wire Line
	7500 3600 7650 3600
Wire Wire Line
	7650 3400 7500 3400
Wire Wire Line
	7500 3400 7500 3300
Wire Wire Line
	8850 3500 8950 3500
Wire Wire Line
	8250 3800 8250 3950
Wire Wire Line
	8250 3950 9200 3950
Connection ~ 8950 3950
Wire Wire Line
	1850 2600 1950 2600
Wire Wire Line
	1850 2900 1850 6100
Wire Wire Line
	1850 4800 1950 4800
Connection ~ 1850 4800
Wire Wire Line
	1950 4900 1850 4900
Connection ~ 1850 4900
Wire Wire Line
	4250 1300 5100 1300
Connection ~ 4250 3000
Wire Wire Line
	3850 3100 4150 3100
Wire Wire Line
	4150 1400 5100 1400
Wire Wire Line
	3850 4050 4050 4050
Wire Wire Line
	4050 4050 4050 1500
Wire Wire Line
	4050 1500 5100 1500
Wire Wire Line
	4350 1650 5800 1650
Wire Wire Line
	5800 1650 5800 1400
Wire Wire Line
	5800 1400 5350 1400
Connection ~ 4350 2900
Wire Wire Line
	5350 1300 5800 1300
Wire Wire Line
	5600 1500 5350 1500
Connection ~ 9200 4200
Connection ~ 9200 3950
Wire Wire Line
	7000 3950 7000 2900
Wire Wire Line
	6900 3850 6900 3100
Wire Wire Line
	1850 1250 1850 2600
Wire Wire Line
	1850 1300 2250 1300
Wire Wire Line
	7550 2000 9200 2000
Wire Wire Line
	7550 1300 9200 1300
Wire Wire Line
	3850 3750 6800 3750
Wire Wire Line
	6800 3750 6800 2450
Wire Wire Line
	6800 2450 7200 2450
Wire Wire Line
	3850 3650 6700 3650
Wire Wire Line
	6700 3650 6700 2000
Wire Wire Line
	6700 2000 7150 2000
Wire Wire Line
	3850 3550 6600 3550
Wire Wire Line
	6600 3550 6600 1700
Wire Wire Line
	6600 1700 7150 1700
Wire Wire Line
	3850 3450 6500 3450
Wire Wire Line
	6500 3450 6500 1300
Wire Wire Line
	6500 1300 7150 1300
Wire Wire Line
	9200 2550 9050 2550
Wire Wire Line
	8250 2500 8250 2600
Connection ~ 8250 2550
Connection ~ 9200 2550
Connection ~ 9200 2000
Wire Wire Line
	7550 1700 9200 1700
Connection ~ 9200 1700
Wire Wire Line
	2650 1300 3000 1300
Wire Wire Line
	3100 1300 3500 1300
Wire Wire Line
	5800 1300 5800 1250
Connection ~ 1850 1300
Wire Wire Line
	6050 2400 6250 2400
Wire Wire Line
	6250 2400 6250 3000
Wire Wire Line
	6050 2750 6250 2750
Connection ~ 6250 2750
Wire Wire Line
	3850 4300 4850 4300
Wire Wire Line
	4850 4300 4850 4150
Wire Wire Line
	4850 4150 5300 4150
Wire Wire Line
	5300 4150 5300 2750
Wire Wire Line
	5300 2750 5450 2750
Wire Wire Line
	3850 4200 4750 4200
Wire Wire Line
	4750 4200 4750 4050
Wire Wire Line
	4750 4050 5200 4050
Wire Wire Line
	5200 4050 5200 2400
Wire Wire Line
	5200 2400 5450 2400
Connection ~ 4150 3100
NoConn ~ 3850 3200
Text Label 3850 2600 0    60   ~ 0
D8
Text Label 3850 2700 0    60   ~ 0
D9
Text Label 3850 2800 0    60   ~ 0
D10
Text Label 3850 2900 0    60   ~ 0
D11
Text Label 3850 3000 0    60   ~ 0
D12
Text Label 3850 3100 0    60   ~ 0
D13
Text Label 3850 3450 0    60   ~ 0
A0
Text Label 3850 3550 0    60   ~ 0
A1
Text Label 3850 3650 0    60   ~ 0
A2
Text Label 3850 3750 0    60   ~ 0
A3
Text Label 3850 3850 0    60   ~ 0
A4
Text Label 3850 3950 0    60   ~ 0
A5
Text Label 3850 4200 0    60   ~ 0
D0
Text Label 3850 4300 0    60   ~ 0
D1
Text Label 3850 4400 0    60   ~ 0
D2
Text Label 3850 4500 0    60   ~ 0
D3
Text Label 3850 4600 0    60   ~ 0
D4
Text Label 3850 4700 0    60   ~ 0
D5
Text Label 3850 4800 0    60   ~ 0
D6
Text Label 3850 4900 0    60   ~ 0
D7
Wire Wire Line
	9000 2550 8250 2550
$Comp
L R R6
U 1 1 5A8E412F
P 6150 6200
F 0 "R6" V 6230 6200 50  0000 C CNN
F 1 "1K" V 6150 6200 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6080 6200 50  0001 C CNN
F 3 "" H 6150 6200 50  0001 C CNN
	1    6150 6200
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5A8E40F4
P 6150 6000
F 0 "R5" V 6230 6000 50  0000 C CNN
F 1 "1K" V 6150 6000 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6080 6000 50  0001 C CNN
F 3 "" H 6150 6000 50  0001 C CNN
	1    6150 6000
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A8E4095
P 6150 5800
F 0 "R4" V 6230 5800 50  0000 C CNN
F 1 "1K" V 6150 5800 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6080 5800 50  0001 C CNN
F 3 "" H 6150 5800 50  0001 C CNN
	1    6150 5800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A8E4028
P 6150 5600
F 0 "R3" V 6230 5600 50  0000 C CNN
F 1 "1K" V 6150 5600 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 6080 5600 50  0001 C CNN
F 3 "" H 6150 5600 50  0001 C CNN
	1    6150 5600
	0    1    1    0   
$EndComp
$EndSCHEMATC
