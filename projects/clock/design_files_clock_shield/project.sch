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
LIBS:maxim
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduino Clock Shield"
Date "2018-03-25"
Rev "0.0"
Comp "Maker's Box"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 900  7700 0    60   ~ 0
https://www.electronicshub.org/arduino-4-digit-7-segment-led-display/
$Comp
L Q_NPN_EBC Q2
U 1 1 5A8E2E4D
P 8700 4300
F 0 "Q2" V 8650 4100 50  0000 L CNN
F 1 "2N2222" V 8550 3900 50  0000 L CNN
F 2 "footprints:TO-92_NPN_EBC_wide" H 8900 4400 50  0001 C CNN
F 3 "" H 8700 4300 50  0001 C CNN
	1    8700 4300
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5A8E30A1
P 8350 4200
F 0 "R7" V 8430 4200 50  0000 C CNN
F 1 "100" V 8350 4200 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 8280 4200 50  0001 C CNN
F 3 "" H 8350 4200 50  0001 C CNN
	1    8350 4200
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q3
U 1 1 5A8E34C6
P 8950 4700
F 0 "Q3" V 8900 4500 50  0000 L CNN
F 1 "2N2222" V 8800 4300 50  0000 L CNN
F 2 "footprints:TO-92_NPN_EBC_wide" H 9150 4800 50  0001 C CNN
F 3 "" H 8950 4700 50  0001 C CNN
	1    8950 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5A8E34CC
P 8350 4600
F 0 "R8" V 8430 4600 50  0000 C CNN
F 1 "100" V 8350 4600 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 8280 4600 50  0001 C CNN
F 3 "" H 8350 4600 50  0001 C CNN
	1    8350 4600
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q4
U 1 1 5A8E35C2
P 9200 5100
F 0 "Q4" V 9150 4900 50  0000 L CNN
F 1 "2N2222" V 9050 4700 50  0000 L CNN
F 2 "footprints:TO-92_NPN_EBC_wide" H 9400 5200 50  0001 C CNN
F 3 "" H 9200 5100 50  0001 C CNN
	1    9200 5100
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5A8E35C8
P 8350 5000
F 0 "R9" V 8430 5000 50  0000 C CNN
F 1 "100" V 8350 5000 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 8280 5000 50  0001 C CNN
F 3 "" H 8350 5000 50  0001 C CNN
	1    8350 5000
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_EBC Q5
U 1 1 5A8E35CE
P 9500 5500
F 0 "Q5" V 9450 5300 50  0000 L CNN
F 1 "2N2222" V 9350 5100 50  0000 L CNN
F 2 "footprints:TO-92_NPN_EBC_wide" H 9700 5600 50  0001 C CNN
F 3 "" H 9500 5500 50  0001 C CNN
	1    9500 5500
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 5A8E35D4
P 8350 5400
F 0 "R10" V 8430 5400 50  0000 C CNN
F 1 "100" V 8350 5400 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 8280 5400 50  0001 C CNN
F 3 "" H 8350 5400 50  0001 C CNN
	1    8350 5400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5A8E3F05
P 10050 6100
F 0 "#PWR01" H 10050 5850 50  0001 C CNN
F 1 "GND" H 10050 5950 50  0000 C CNN
F 2 "" H 10050 6100 50  0001 C CNN
F 3 "" H 10050 6100 50  0001 C CNN
	1    10050 6100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A8E4028
P 7000 5600
F 0 "R3" V 7080 5600 50  0000 C CNN
F 1 "1K" V 7000 5600 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 6930 5600 50  0001 C CNN
F 3 "" H 7000 5600 50  0001 C CNN
	1    7000 5600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A8E4095
P 7000 5800
F 0 "R4" V 7080 5800 50  0000 C CNN
F 1 "1K" V 7000 5800 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 6930 5800 50  0001 C CNN
F 3 "" H 7000 5800 50  0001 C CNN
	1    7000 5800
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5A8E40F4
P 7000 6000
F 0 "R5" V 7080 6000 50  0000 C CNN
F 1 "1K" V 7000 6000 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 6930 6000 50  0001 C CNN
F 3 "" H 7000 6000 50  0001 C CNN
	1    7000 6000
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A8E412F
P 7000 6200
F 0 "R6" V 7080 6200 50  0000 C CNN
F 1 "1K" V 7000 6200 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 6930 6200 50  0001 C CNN
F 3 "" H 7000 6200 50  0001 C CNN
	1    7000 6200
	0    1    1    0   
$EndComp
Text Notes 900  7850 0    60   ~ 0
https://www.digikey.com/product-detail/en/adafruit-industries-llc/811/1528-1509-ND/5774235
$Comp
L Crystal Crystal1
U 1 1 5A8E64A3
P 8100 3500
F 0 "Crystal1" H 8100 3650 50  0000 C CNN
F 1 "32.768" H 8100 3350 50  0000 C CNN
F 2 "footprints:Crystal_C38-LF_d3.0mm_l8.0mm_Horizontal_1EP_style1" H 8100 3500 50  0001 C CNN
F 3 "" H 8100 3500 50  0001 C CNN
	1    8100 3500
	0    -1   -1   0   
$EndComp
$Comp
L Battery_Cell BT2
U 1 1 5A8E7D04
P 9800 3700
F 0 "BT2" H 9900 3800 50  0000 L CNN
F 1 "3V" H 9900 3650 50  0000 L CNN
F 2 "footprints:BATT_12mm_TH" V 9800 3760 50  0001 C CNN
F 3 "" V 9800 3760 50  0001 C CNN
	1    9800 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A8E9132
P 2000 1800
F 0 "#PWR02" H 2000 1550 50  0001 C CNN
F 1 "GND" H 2000 1650 50  0000 C CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "" H 2000 1800 50  0001 C CNN
	1    2000 1800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A8E98CC
P 9750 2550
F 0 "C2" V 9700 2600 50  0000 L CNN
F 1 "0.1uF" V 9850 2600 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9788 2400 50  0001 C CNN
F 3 "" H 9750 2550 50  0001 C CNN
	1    9750 2550
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A8E9B0C
P 9100 2500
F 0 "#PWR03" H 9100 2350 50  0001 C CNN
F 1 "VCC" H 9100 2650 50  0000 C CNN
F 2 "" H 9100 2500 50  0001 C CNN
F 3 "" H 9100 2500 50  0001 C CNN
	1    9100 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A8E9B54
P 2000 1250
F 0 "#PWR04" H 2000 1100 50  0001 C CNN
F 1 "VCC" H 2000 1400 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A8E9F35
P 2000 1600
F 0 "C1" H 1850 1700 50  0000 L CNN
F 1 "0.1uF" H 1750 1500 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2038 1450 50  0001 C CNN
F 3 "" H 2000 1600 50  0001 C CNN
	1    2000 1600
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 5A8EB119
P 6100 1400
F 0 "CON1" H 5995 1640 50  0000 C CNN
F 1 "ISP" H 5835 1170 50  0000 L BNN
F 2 "footprints:AVR-ISP-6" V 5580 1440 50  0001 C CNN
F 3 "" H 6075 1400 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5A8EB682
P 6650 1250
F 0 "#PWR05" H 6650 1100 50  0001 C CNN
F 1 "VCC" H 6650 1400 50  0000 C CNN
F 2 "" H 6650 1250 50  0001 C CNN
F 3 "" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A8EB73D
P 6450 1500
F 0 "#PWR06" H 6450 1250 50  0001 C CNN
F 1 "GND" H 6450 1350 50  0000 C CNN
F 2 "" H 6450 1500 50  0001 C CNN
F 3 "" H 6450 1500 50  0001 C CNN
	1    6450 1500
	0    -1   -1   0   
$EndComp
$Comp
L Speaker SPKR1
U 1 1 5A8EFCB4
P 8250 2450
F 0 "SPKR1" H 8300 2600 50  0000 R CNN
F 1 "Speaker" H 8300 2200 50  0000 R CNN
F 2 "footprints:PS1240_piezo" H 8250 2250 50  0001 C CNN
F 3 "" H 8240 2400 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5A8F0F9E
P 8200 2000
F 0 "SW3" H 8250 2100 50  0000 L CNN
F 1 "SW_Push" H 8200 1940 50  0000 C CNN
F 2 "footprints:SW_PUSH_SMALL" H 8200 2200 50  0001 C CNN
F 3 "" H 8200 2200 50  0001 C CNN
	1    8200 2000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A8F0FFF
P 8200 1700
F 0 "SW2" H 8250 1800 50  0000 L CNN
F 1 "SW_Push" H 8200 1640 50  0000 C CNN
F 2 "footprints:SW_PUSH_SMALL" H 8200 1900 50  0001 C CNN
F 3 "" H 8200 1900 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A8F1FCA
P 3650 1300
F 0 "#PWR07" H 3650 1050 50  0001 C CNN
F 1 "GND" H 3650 1150 50  0000 C CNN
F 2 "" H 3650 1300 50  0001 C CNN
F 3 "" H 3650 1300 50  0001 C CNN
	1    3650 1300
	0    -1   -1   0   
$EndComp
$Comp
L Q_Photo_NPN Q1
U 1 1 5A8F5C4D
P 8200 1400
F 0 "Q1" V 8400 1200 50  0000 L CNN
F 1 "Photo" V 8150 1100 50  0000 L CNN
F 2 "footprints:PHOTO_TRANS" H 8400 1500 50  0001 C CNN
F 3 "" H 8200 1400 50  0001 C CNN
	1    8200 1400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5A8F5E50
P 8050 2550
F 0 "#PWR08" H 8050 2300 50  0001 C CNN
F 1 "GND" H 8050 2400 50  0000 C CNN
F 2 "" H 8050 2550 50  0001 C CNN
F 3 "" H 8050 2550 50  0001 C CNN
	1    8050 2550
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 5A90EE17
P 800 1250
F 0 "#FLG09" H 800 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG010
U 1 1 5A90EF24
P 800 1750
F 0 "#FLG010" H 800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1900 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5A90EF89
P 800 1250
F 0 "#PWR011" H 800 1100 50  0001 C CNN
F 1 "VCC" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5A90EFEE
P 800 1750
F 0 "#PWR012" H 800 1500 50  0001 C CNN
F 1 "GND" H 800 1600 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Text Label 4000 2600 0    60   ~ 0
D8
Text Label 4000 2700 0    60   ~ 0
D9
Text Label 4000 2800 0    60   ~ 0
D10
Text Label 4000 2900 0    60   ~ 0
D11
Text Label 4000 3000 0    60   ~ 0
D12
Text Label 4000 3100 0    60   ~ 0
D13
Text Label 4000 3450 0    60   ~ 0
A0
Text Label 4000 3550 0    60   ~ 0
A1
Text Label 4000 3650 0    60   ~ 0
A2
Text Label 4000 3750 0    60   ~ 0
A3
Text Label 4000 3850 0    60   ~ 0
A4
Text Label 4000 3950 0    60   ~ 0
A5
Text Label 4000 4200 0    60   ~ 0
D0
Text Label 4000 4300 0    60   ~ 0
D1
Text Label 4000 4400 0    60   ~ 0
D2
Text Label 4000 4500 0    60   ~ 0
D3
Text Label 4000 4600 0    60   ~ 0
D4
Text Label 4000 4700 0    60   ~ 0
D5
Text Label 4000 4800 0    60   ~ 0
D6
Text Label 4000 4900 0    60   ~ 0
D7
$Comp
L KW4-56xxx U2
U 1 1 5A9F4FFB
P 6800 4850
F 0 "U2" H 5850 5300 50  0000 C CNN
F 1 "KW4-56xxx" H 7570 5300 50  0000 C CNN
F 2 "footprints:CA56-12CGKWA" H 6800 4250 50  0001 C CNN
F 3 "" H 6420 4880 50  0001 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A9F8696
P 8400 6350
F 0 "R1" V 8480 6350 50  0000 C CNN
F 1 "100" V 8400 6350 50  0000 C CNN
F 2 "footprints:Resistor_Horz" V 8330 6350 50  0001 C CNN
F 3 "" H 8400 6350 50  0001 C CNN
	1    8400 6350
	0    1    1    0   
$EndComp
$Comp
L DS1302 U3
U 1 1 5AA0619F
P 9100 3200
F 0 "U3" H 9370 3750 50  0000 C CNN
F 1 "DS1302" H 9400 2650 50  0000 C CNN
F 2 "footprints:DIP-8_W7.62mm" H 9100 3200 50  0001 C CNN
F 3 "" H 9100 3200 50  0001 C CNN
	1    9100 3200
	1    0    0    -1  
$EndComp
Text Label 9750 3500 0    60   ~ 0
VBAT
$Comp
L ARDUINO_SHIELD SHIELD1
U 1 1 5AB7DAC8
P 2300 3550
F 0 "SHIELD1" H 1850 4700 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 2350 2600 60  0000 C CNN
F 2 "footprints:ARDUINO_SHIELD" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3550 60  0000 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
Text Label 4000 4050 0    60   ~ 0
RST
Text Label 2050 1300 0    60   ~ 0
VCC
$Comp
L GND #PWR013
U 1 1 5AB88990
P 1350 3450
F 0 "#PWR013" H 1350 3200 50  0001 C CNN
F 1 "GND" H 1350 3300 50  0000 C CNN
F 2 "" H 1350 3450 50  0001 C CNN
F 3 "" H 1350 3450 50  0001 C CNN
	1    1350 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5AB889EC
P 1350 3550
F 0 "#PWR014" H 1350 3300 50  0001 C CNN
F 1 "GND" H 1350 3400 50  0000 C CNN
F 2 "" H 1350 3550 50  0001 C CNN
F 3 "" H 1350 3550 50  0001 C CNN
	1    1350 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR015
U 1 1 5AB88A48
P 3250 2850
F 0 "#PWR015" H 3250 2600 50  0001 C CNN
F 1 "GND" H 3250 2700 50  0000 C CNN
F 2 "" H 3250 2850 50  0001 C CNN
F 3 "" H 3250 2850 50  0001 C CNN
	1    3250 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2700 5400 2700
Wire Wire Line
	5400 2700 5400 6200
Wire Wire Line
	8500 4600 8750 4600
Wire Wire Line
	8500 5000 9000 5000
Wire Wire Line
	8500 5400 9300 5400
Wire Wire Line
	8100 5400 8200 5400
Wire Wire Line
	10050 4200 8900 4200
Wire Wire Line
	10050 1300 10050 6100
Wire Wire Line
	9700 5400 10050 5400
Connection ~ 10050 5400
Wire Wire Line
	9400 5000 10050 5000
Connection ~ 10050 5000
Wire Wire Line
	9150 4600 10050 4600
Connection ~ 10050 4600
Wire Wire Line
	8700 4500 8700 5600
Wire Wire Line
	8700 5600 7150 5600
Wire Wire Line
	8950 5800 7150 5800
Wire Wire Line
	8950 4900 8950 5800
Wire Wire Line
	9200 5300 9200 6000
Wire Wire Line
	9200 6000 7150 6000
Wire Wire Line
	7150 6200 9500 6200
Wire Wire Line
	9500 6200 9500 5700
Wire Wire Line
	4000 2800 5300 2800
Wire Wire Line
	4000 2900 5200 2900
Wire Wire Line
	4000 3000 5100 3000
Wire Wire Line
	4000 3950 7850 3950
Wire Wire Line
	7850 2900 8500 2900
Wire Wire Line
	8100 3650 8100 3700
Wire Wire Line
	8100 3700 8350 3700
Wire Wire Line
	8350 3700 8350 3600
Wire Wire Line
	8350 3600 8500 3600
Wire Wire Line
	8500 3400 8350 3400
Wire Wire Line
	8350 3400 8350 3300
Wire Wire Line
	8350 3300 8100 3300
Wire Wire Line
	8100 3300 8100 3350
Wire Wire Line
	9700 3500 9800 3500
Wire Wire Line
	9100 3800 9100 3950
Wire Wire Line
	9100 3950 10050 3950
Wire Wire Line
	9800 3950 9800 3800
Connection ~ 9800 3950
Wire Wire Line
	2000 1750 2000 1800
Wire Wire Line
	5100 1300 5950 1300
Connection ~ 5100 3000
Wire Wire Line
	4000 3100 5000 3100
Wire Wire Line
	5000 1400 5950 1400
Wire Wire Line
	4000 4050 4900 4050
Wire Wire Line
	4900 4050 4900 1500
Wire Wire Line
	4900 1500 5950 1500
Wire Wire Line
	5200 1650 6650 1650
Wire Wire Line
	6650 1650 6650 1400
Wire Wire Line
	6650 1400 6200 1400
Connection ~ 5200 2900
Wire Wire Line
	6200 1300 6650 1300
Wire Wire Line
	6450 1500 6200 1500
Connection ~ 10050 4200
Connection ~ 10050 3950
Wire Wire Line
	7850 3950 7850 2900
Wire Wire Line
	2000 1250 2000 1450
Wire Wire Line
	2000 1300 2400 1300
Wire Wire Line
	8400 2000 10050 2000
Wire Wire Line
	8400 1300 10050 1300
Wire Wire Line
	7450 1300 7450 3650
Wire Wire Line
	10050 2550 9900 2550
Wire Wire Line
	9100 2550 9600 2550
Wire Wire Line
	9100 2500 9100 2600
Connection ~ 9100 2550
Connection ~ 10050 2550
Connection ~ 10050 2000
Wire Wire Line
	8400 1700 10050 1700
Connection ~ 10050 1700
Wire Wire Line
	2800 1300 3150 1300
Wire Wire Line
	3250 1300 3650 1300
Wire Wire Line
	6650 1300 6650 1250
Connection ~ 2000 1300
Connection ~ 5000 3100
Wire Wire Line
	8200 4200 8150 4200
Wire Wire Line
	8150 4200 8150 4450
Wire Wire Line
	8150 4450 8000 4550
Wire Wire Line
	8200 4600 8200 4600
Wire Wire Line
	8200 4600 8000 4650
Wire Wire Line
	8000 4750 8150 4750
Wire Wire Line
	8150 4750 8150 5000
Wire Wire Line
	8150 5000 8200 5000
Wire Wire Line
	8100 5400 8100 4850
Wire Wire Line
	8100 4850 8000 4850
Wire Wire Line
	8000 4950 8000 6350
Wire Wire Line
	8000 6350 8250 6350
Wire Wire Line
	8550 6350 9700 6350
Wire Wire Line
	9700 6350 9700 5800
Wire Wire Line
	9700 5800 10050 5800
Connection ~ 10050 5800
Wire Wire Line
	5000 1400 5000 4700
Wire Wire Line
	5100 1300 5100 5300
Wire Wire Line
	4000 4500 4400 4500
Wire Wire Line
	4400 4500 4400 5600
Wire Wire Line
	4400 5600 6850 5600
Wire Wire Line
	4300 5800 6850 5800
Wire Wire Line
	4000 4800 4300 4800
Wire Wire Line
	4200 6000 6850 6000
Wire Wire Line
	5400 6200 6850 6200
Wire Wire Line
	4000 4600 4500 4600
Wire Wire Line
	4500 4600 4500 5200
Wire Wire Line
	4500 5200 5700 5200
Wire Wire Line
	4000 4400 4700 4400
Wire Wire Line
	4700 4400 4700 5000
Wire Wire Line
	4700 5000 5700 5000
Wire Wire Line
	5000 4700 5700 4700
Wire Wire Line
	4800 4800 5700 4800
Wire Wire Line
	10200 4050 10200 2900
Wire Wire Line
	10200 2900 9700 2900
Wire Wire Line
	4000 2600 5500 2600
Wire Wire Line
	5700 4900 5500 4900
Wire Wire Line
	5500 4900 5500 2600
Wire Wire Line
	4800 4800 4800 5350
Wire Wire Line
	4800 5350 4000 5350
Wire Wire Line
	4000 5350 4000 4900
Wire Wire Line
	4000 4300 7150 4300
Wire Wire Line
	4300 4800 4300 5800
Wire Wire Line
	4000 4700 4200 4700
Wire Wire Line
	4200 4700 4200 6000
Wire Wire Line
	10200 4050 7600 4050
Wire Wire Line
	7600 4050 7600 3850
Wire Wire Line
	7600 3850 4000 3850
Wire Wire Line
	4000 4200 7050 4200
Wire Wire Line
	7050 2000 8000 2000
Wire Wire Line
	7550 2450 8050 2450
Wire Wire Line
	7450 1300 8000 1300
Wire Wire Line
	5300 2800 5300 4500
Wire Wire Line
	5300 4500 5700 4500
Wire Wire Line
	5200 1650 5200 4600
Wire Wire Line
	5100 5300 5700 5300
Wire Wire Line
	5200 4600 5700 4600
Wire Wire Line
	7350 3100 7350 3750
Wire Wire Line
	7350 3100 8500 3100
Wire Wire Line
	7050 4200 7050 2000
Wire Wire Line
	7150 4300 7150 1700
Wire Wire Line
	7150 1700 8000 1700
Wire Wire Line
	4000 3450 4600 3450
Wire Wire Line
	4600 3450 4600 5100
Wire Wire Line
	4600 5100 5700 5100
Wire Wire Line
	7350 3750 4000 3750
Wire Wire Line
	7450 3650 4000 3650
Wire Wire Line
	7550 2450 7550 3550
Wire Wire Line
	7550 3550 4000 3550
Wire Wire Line
	1350 3150 1250 3150
Wire Wire Line
	1350 3350 1250 3350
Wire Wire Line
	1350 3850 1250 3850
Wire Wire Line
	1350 3950 1250 3950
Wire Wire Line
	1350 4050 1250 4050
Wire Wire Line
	1350 4150 1250 4150
Wire Wire Line
	1350 4250 1250 4250
Wire Wire Line
	1350 4350 1250 4350
Wire Wire Line
	3250 4350 3350 4350
Wire Wire Line
	3250 4250 3350 4250
Wire Wire Line
	3250 4150 3350 4150
Wire Wire Line
	3250 4050 3350 4050
Wire Wire Line
	3250 3950 3350 3950
Wire Wire Line
	3250 3850 3350 3850
Wire Wire Line
	3250 3750 3350 3750
Wire Wire Line
	3250 3650 3350 3650
Wire Wire Line
	3250 3450 3350 3450
Wire Wire Line
	3250 3350 3350 3350
Wire Wire Line
	3250 3250 3350 3250
Wire Wire Line
	3250 3150 3350 3150
Wire Wire Line
	3250 3050 3350 3050
Wire Wire Line
	3250 2950 3350 2950
NoConn ~ 3250 2750
NoConn ~ 1350 3250
NoConn ~ 1350 3650
$Comp
L VCC #PWR016
U 1 1 5AB89CC3
P 1250 3350
F 0 "#PWR016" H 1250 3200 50  0001 C CNN
F 1 "VCC" H 1250 3500 50  0000 C CNN
F 2 "" H 1250 3350 50  0001 C CNN
F 3 "" H 1250 3350 50  0001 C CNN
	1    1250 3350
	0    -1   -1   0   
$EndComp
Text Label 1250 3850 0    60   ~ 0
A0
Text Label 1250 3950 0    60   ~ 0
A1
Text Label 1250 4050 0    60   ~ 0
A2
Text Label 1250 4150 0    60   ~ 0
A3
Text Label 1250 4250 0    60   ~ 0
A4
Text Label 1250 4350 0    60   ~ 0
A5
Text Label 3350 2950 0    60   ~ 0
D13
Text Label 3350 3050 0    60   ~ 0
D12
Text Label 3350 3150 0    60   ~ 0
D11
Text Label 3350 3250 0    60   ~ 0
D10
Text Label 3350 3350 0    60   ~ 0
D9
Text Label 3350 3450 0    60   ~ 0
D8
Text Label 3350 3650 0    60   ~ 0
D7
Text Label 3350 3750 0    60   ~ 0
D6
Text Label 3350 3850 0    60   ~ 0
D5
Text Label 3350 3950 0    60   ~ 0
D4
Text Label 3350 4050 0    60   ~ 0
D3
Text Label 3350 4150 0    60   ~ 0
D2
Text Label 3350 4250 0    60   ~ 0
D1
Text Label 3350 4350 0    60   ~ 0
D0
$Comp
L SW_SPST SW1
U 1 1 5A8F2007
P 2600 1300
F 0 "SW1" H 2600 1425 50  0000 C CNN
F 1 "PWR" H 2600 1200 50  0000 C CNN
F 2 "footprints:SW_Micro_SPST" H 2600 1300 50  0001 C CNN
F 3 "" H 2600 1300 50  0001 C CNN
	1    2600 1300
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5A91FB90
P 3150 1500
F 0 "J1" H 3150 1600 50  0000 C CNN
F 1 "PWR" H 3150 1300 50  0000 C CNN
F 2 "footprints:PhoenixContact_MC-G_02x3.50mm_Angled" H 3150 1500 50  0001 C CNN
F 3 "" H 3150 1500 50  0001 C CNN
	1    3150 1500
	0    -1   1    0   
$EndComp
Text Notes 4200 1150 0    60   ~ 0
Not Used
Text Notes 2000 7000 0    60   ~ 0
#define A 10\n#define B 11\n#define C 13\n#define D 7\n#define E 8\n#define f 2\n#define G A0\n#define DP 4\n\n#define disp1 3    //Q2\n#define disp2 6    //Q3\n#define disp3 5    //Q4\n#define disp4 9    //Q5\n\nint speakerPin = A1;\nint colon = 12;\nint button1pin = 0;\nint button2pin = 1;\nint photopin = A2;\n\n#define DS1302_SCLK_PIN   A5    // Arduino pin for the Serial Clock\n#define DS1302_IO_PIN     A4    // Arduino pin for the Data I/O\n#define DS1302_CE_PIN     A3    // Arduino pin for the Chip Enable
Wire Notes Line
	1700 950  6850 950 
Wire Notes Line
	6850 950  6850 2050
Wire Notes Line
	6850 2050 1700 2050
Wire Notes Line
	1700 2050 1700 950 
$EndSCHEMATC
