EESchema Schematic File Version 2
LIBS:project
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
LIBS:motor_drivers
LIBS:switches
LIBS:sensors
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "ArduStryfe"
Date "2019-06-13"
Rev "0.0"
Comp "@TheMakersBox"
Comment1 "648.ken@gmail.com"
Comment2 "Ken Olsen"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 5BB52604
P 2950 2200
F 0 "#PWR01" H 2950 1950 50  0001 C CNN
F 1 "GND" H 2950 2050 50  0000 C CNN
F 2 "" H 2950 2200 50  0001 C CNN
F 3 "" H 2950 2200 50  0001 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5BB53674
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
U 1 1 5BB54F5E
P 1350 900
F 0 "#FLG03" H 1350 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1050 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-PU U5
U 1 1 5BB5CB12
P 5700 2650
F 0 "U5" H 4950 3900 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 6100 1250 50  0000 L BNN
F 2 "footprints:DIP-28_W7.62mm" H 5700 2650 50  0001 C CIN
F 3 "" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5BB60B89
P 900 900
F 0 "#PWR04" H 900 750 50  0001 C CNN
F 1 "VCC" H 900 1050 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5BB64A88
P 4750 3900
F 0 "#PWR05" H 4750 3650 50  0001 C CNN
F 1 "GND" H 4750 3750 50  0000 C CNN
F 2 "" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 5BB64B59
P 4700 1550
F 0 "#PWR06" H 4700 1400 50  0001 C CNN
F 1 "VCC" H 4700 1700 50  0000 C CNN
F 2 "" H 4700 1550 50  0001 C CNN
F 3 "" H 4700 1550 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
Text Label 6700 1550 0    60   ~ 0
8
Text Label 6700 1650 0    60   ~ 0
9(**)
Text Label 6700 2400 0    60   ~ 0
A0
Text Label 6700 2500 0    60   ~ 0
A1
Text Label 6700 2600 0    60   ~ 0
A2
Text Label 6700 2700 0    60   ~ 0
A3
Text Label 6700 2800 0    60   ~ 0
A4(SDA)
Text Label 6700 2900 0    60   ~ 0
A5(SCL)
Text Label 6700 3150 0    60   ~ 0
0(Rx)
Text Label 6700 3250 0    60   ~ 0
1(Tx)
Text Label 6700 3350 0    60   ~ 0
2
Text Label 6700 3450 0    60   ~ 0
3(**)
Text Label 6700 3550 0    60   ~ 0
4
Text Label 6700 3650 0    60   ~ 0
5(**)
Text Label 6700 3750 0    60   ~ 0
6(**)
Text Label 6700 3850 0    60   ~ 0
7
Text Label 4600 2150 0    60   ~ 0
AREF
$Comp
L VCC #PWR07
U 1 1 5BB6E9E6
P 8800 2700
F 0 "#PWR07" H 8800 2550 50  0001 C CNN
F 1 "VCC" V 8800 2900 50  0000 C CNN
F 2 "" H 8800 2700 50  0001 C CNN
F 3 "" H 8800 2700 50  0001 C CNN
	1    8800 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5BB6ECFF
P 8800 2500
F 0 "#PWR08" H 8800 2250 50  0001 C CNN
F 1 "GND" V 8800 2300 50  0000 C CNN
F 2 "" H 8800 2500 50  0001 C CNN
F 3 "" H 8800 2500 50  0001 C CNN
	1    8800 2500
	0    1    1    0   
$EndComp
$Comp
L Resonator Y1
U 1 1 5BB6F476
P 7200 2300
F 0 "Y1" V 7200 2300 50  0000 C CNN
F 1 "16Mhz" V 7000 2250 50  0000 C CNN
F 2 "footprints:Resonator-3pin_w7.0mm_h2.5mm" H 7175 2300 50  0001 C CNN
F 3 "" H 7175 2300 50  0001 C CNN
	1    7200 2300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5BB6F98E
P 7400 2300
F 0 "#PWR09" H 7400 2050 50  0001 C CNN
F 1 "GND" V 7300 2250 50  0000 C CNN
F 2 "" H 7400 2300 50  0001 C CNN
F 3 "" H 7400 2300 50  0001 C CNN
	1    7400 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5BB777E0
P 2800 3450
F 0 "R9" V 2700 3450 50  0000 C CNN
F 1 "10K" V 2800 3450 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 2730 3450 50  0001 C CNN
F 3 "" H 2800 3450 50  0001 C CNN
	1    2800 3450
	-1   0    0    1   
$EndComp
$Comp
L C_Small C5
U 1 1 5BB79E45
P 4750 3500
F 0 "C5" H 4650 3600 50  0000 L CNN
F 1 "0.1uF" H 4500 3400 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 4750 3500 50  0001 C CNN
F 3 "" H 4750 3500 50  0001 C CNN
	1    4750 3500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5BB7ABD8
P 4750 3300
F 0 "#PWR010" H 4750 3150 50  0001 C CNN
F 1 "VCC" H 4750 3450 50  0000 C CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5BB7BA99
P 5300 5400
F 0 "R2" V 5200 5400 50  0000 C CNN
F 1 "1K" V 5300 5400 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 5230 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5BB7BB61
P 5700 5400
F 0 "D2" H 5650 5500 50  0000 C CNN
F 1 "D13" H 5700 5300 50  0000 C CNN
F 2 "footprints:LED_D3.0mm_Horizontal_O1.27mm_Z10.0mm" H 5700 5400 50  0001 C CNN
F 3 "" H 5700 5400 50  0001 C CNN
	1    5700 5400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5BB7BC30
P 6000 5400
F 0 "#PWR011" H 6000 5150 50  0001 C CNN
F 1 "GND" H 6000 5250 50  0000 C CNN
F 2 "" H 6000 5400 50  0001 C CNN
F 3 "" H 6000 5400 50  0001 C CNN
	1    6000 5400
	1    0    0    -1  
$EndComp
Text Label 6700 3000 0    60   ~ 0
Reset
Text Label 6700 1850 0    60   ~ 0
11(MOSI)
Text Label 6700 1950 0    60   ~ 0
12(MISO)
Text Label 6700 2050 0    60   ~ 0
13(SCK)
Text Label 6700 1750 0    60   ~ 0
10(SS)
$Comp
L VCC #PWR012
U 1 1 5CDF9F79
P 3250 1700
F 0 "#PWR012" H 3250 1550 50  0001 C CNN
F 1 "VCC" H 3250 1850 50  0000 C CNN
F 2 "" H 3250 1700 50  0001 C CNN
F 3 "" H 3250 1700 50  0001 C CNN
	1    3250 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5CDFB7ED
P 2800 3700
F 0 "#PWR013" H 2800 3450 50  0001 C CNN
F 1 "GND" H 2800 3550 50  0000 C CNN
F 2 "" H 2800 3700 50  0001 C CNN
F 3 "" H 2800 3700 50  0001 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5CE0B0F0
P 1350 900
F 0 "#PWR014" H 1350 650 50  0001 C CNN
F 1 "GND" H 1350 750 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5CE1198B
P 2100 4550
F 0 "R6" V 2000 4550 50  0000 C CNN
F 1 "10K" V 2100 4550 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 2030 4550 50  0001 C CNN
F 3 "" H 2100 4550 50  0001 C CNN
	1    2100 4550
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5CE11991
P 1950 4750
F 0 "R7" V 1850 4750 50  0000 C CNN
F 1 "1K" V 1950 4750 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 1880 4750 50  0001 C CNN
F 3 "" H 1950 4750 50  0001 C CNN
	1    1950 4750
	0    -1   -1   0   
$EndComp
$Comp
L C C7
U 1 1 5CE11997
P 2100 4950
F 0 "C7" H 2125 5050 50  0000 L CNN
F 1 "0.1uF" H 2125 4850 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2138 4800 50  0001 C CNN
F 3 "" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J5
U 1 1 5CE17509
P 9150 1800
F 0 "J5" H 9150 2000 50  0000 C CNN
F 1 "I2C" H 9150 1500 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0410_04x1.25mm_Straight" H 9150 1800 50  0001 C CNN
F 3 "" H 9150 1800 50  0001 C CNN
	1    9150 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5CE1871D
P 8900 2100
F 0 "#PWR015" H 8900 1850 50  0001 C CNN
F 1 "GND" V 8800 2050 50  0000 C CNN
F 2 "" H 8900 2100 50  0001 C CNN
F 3 "" H 8900 2100 50  0001 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 5CE19B8E
P 8700 1900
F 0 "#PWR016" H 8700 1750 50  0001 C CNN
F 1 "VCC" H 8700 2050 50  0000 C CNN
F 2 "" H 8700 1900 50  0001 C CNN
F 3 "" H 8700 1900 50  0001 C CNN
	1    8700 1900
	0    -1   -1   0   
$EndComp
Text Label 8650 1700 0    60   ~ 0
A4(SDA)
Text Label 8650 1800 0    60   ~ 0
A5(SCL)
Text Label 3450 7000 0    60   ~ 0
4
$Comp
L R R8
U 1 1 5CE03953
P 3700 5250
F 0 "R8" V 3700 5250 50  0000 C CNN
F 1 "100K 1%" V 3800 5200 50  0000 C CNN
F 2 "footprints:R_7.5mm" V 3630 5250 50  0001 C CNN
F 3 "" H 3700 5250 50  0001 C CNN
	1    3700 5250
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 5CE03959
P 3700 5650
F 0 "R12" V 3700 5650 50  0000 C CNN
F 1 "10K 1%" V 3600 5650 50  0000 C CNN
F 2 "footprints:R_7.5mm" V 3630 5650 50  0001 C CNN
F 3 "" H 3700 5650 50  0001 C CNN
	1    3700 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5CE0396B
P 3700 5900
F 0 "#PWR017" H 3700 5650 50  0001 C CNN
F 1 "GND" V 3600 5850 50  0000 C CNN
F 2 "" H 3700 5900 50  0001 C CNN
F 3 "" H 3700 5900 50  0001 C CNN
	1    3700 5900
	1    0    0    -1  
$EndComp
Text Label 3400 5450 0    60   ~ 0
A3
$Comp
L Conn_01x06 J7
U 1 1 5CE157C8
P 9150 2800
F 0 "J7" H 9150 3100 50  0000 C CNN
F 1 "FTDI" H 9150 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9150 2800 50  0001 C CNN
F 3 "" H 9150 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    1   
$EndComp
Text Label 8750 2900 0    60   ~ 0
1(Tx)
Text Label 8750 2800 0    60   ~ 0
0(Rx)
Text Label 4750 5400 0    60   ~ 0
13(SCK)
$Comp
L A1101ELHL U3
U 1 1 5CE1F6F9
P 7400 5250
F 0 "U3" H 7400 5700 50  0000 L CNN
F 1 "HALL SENSOR" H 7400 5600 50  0000 L CNN
F 2 "footprints:Hall_Sensor" H 7400 4900 50  0001 L CIN
F 3 "" H 7400 5900 50  0001 C CNN
	1    7400 5250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 5CE20740
P 7300 4850
F 0 "#PWR018" H 7300 4700 50  0001 C CNN
F 1 "VCC" V 7300 5050 50  0000 C CNN
F 2 "" H 7300 4850 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5CE207B7
P 7300 5650
F 0 "#PWR019" H 7300 5400 50  0001 C CNN
F 1 "GND" V 7300 5450 50  0000 C CNN
F 2 "" H 7300 5650 50  0001 C CNN
F 3 "" H 7300 5650 50  0001 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L A1101ELHL U4
U 1 1 5CE20965
P 8250 5250
F 0 "U4" H 8250 5700 50  0000 L CNN
F 1 "HALL SENSOR" H 8250 5600 50  0000 L CNN
F 2 "footprints:Hall_Sensor" H 8250 4900 50  0001 L CIN
F 3 "" H 8250 5900 50  0001 C CNN
	1    8250 5250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 5CE2096B
P 8150 4850
F 0 "#PWR020" H 8150 4700 50  0001 C CNN
F 1 "VCC" V 8150 5050 50  0000 C CNN
F 2 "" H 8150 4850 50  0001 C CNN
F 3 "" H 8150 4850 50  0001 C CNN
	1    8150 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5CE20971
P 8150 5650
F 0 "#PWR021" H 8150 5400 50  0001 C CNN
F 1 "GND" V 8150 5450 50  0000 C CNN
F 2 "" H 8150 5650 50  0001 C CNN
F 3 "" H 8150 5650 50  0001 C CNN
	1    8150 5650
	1    0    0    -1  
$EndComp
$Comp
L A1101ELHL U6
U 1 1 5CE214B0
P 9100 5250
F 0 "U6" H 9100 5700 50  0000 L CNN
F 1 "HALL SENSOR" H 9100 5600 50  0000 L CNN
F 2 "footprints:Hall_Sensor" H 9100 4900 50  0001 L CIN
F 3 "" H 9100 5900 50  0001 C CNN
	1    9100 5250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR022
U 1 1 5CE214B6
P 9000 4850
F 0 "#PWR022" H 9000 4700 50  0001 C CNN
F 1 "VCC" V 9000 5050 50  0000 C CNN
F 2 "" H 9000 4850 50  0001 C CNN
F 3 "" H 9000 4850 50  0001 C CNN
	1    9000 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5CE214BC
P 9000 5650
F 0 "#PWR023" H 9000 5400 50  0001 C CNN
F 1 "GND" V 9000 5450 50  0000 C CNN
F 2 "" H 9000 5650 50  0001 C CNN
F 3 "" H 9000 5650 50  0001 C CNN
	1    9000 5650
	1    0    0    -1  
$EndComp
Text Label 7700 5250 0    60   ~ 0
10(SS)
Text Label 8550 5250 0    60   ~ 0
11(MOSI)
Text Label 9400 5250 0    60   ~ 0
12(MISO)
$Comp
L MCP1700-5002E_TO92 U1
U 1 1 5CE399AF
P 2400 1700
F 0 "U1" H 2250 1575 50  0000 C CNN
F 1 "MCP1702" H 2450 1950 50  0000 L CNN
F 2 "footprints:TO-92_Inline_Narrow_Oval" H 2400 1500 50  0001 C CIN
F 3 "" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5CE3AD1B
P 1950 1950
F 0 "C1" H 1975 2050 50  0000 L CNN
F 1 "1uF" H 1975 1850 50  0000 L CNN
F 2 "footprints:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1988 1800 50  0001 C CNN
F 3 "" H 1950 1950 50  0001 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5CE3B609
P 2950 1950
F 0 "C4" H 2975 2050 50  0000 L CNN
F 1 "1uF" H 2975 1850 50  0000 L CNN
F 2 "footprints:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2988 1800 50  0001 C CNN
F 3 "" H 2950 1950 50  0001 C CNN
	1    2950 1950
	1    0    0    -1  
$EndComp
Text Notes 3300 6150 0    60   ~ 0
VOLTAGE DIVIDER
Text Notes 7950 6050 0    60   ~ 0
CLIP DETECT
$Comp
L Conn_01x02 J2
U 1 1 5CE59139
P 1050 2250
F 0 "J2" H 1050 2350 50  0000 C CNN
F 1 "BATT_IN" H 1050 2050 50  0000 C CNN
F 2 "footprints:TerminalBlock_P3.50mm_Horizontal" H 1050 2250 50  0001 C CNN
F 3 "" H 1050 2250 50  0001 C CNN
	1    1050 2250
	-1   0    0    -1  
$EndComp
Text Notes 900  2400 0    60   ~ 0
+\n-
Text Label 2850 3300 0    60   ~ 0
9(**)
Text Notes 3550 3900 0    60   ~ 0
A0 BUTTON\nA1 DART IR\nA2 \nA3 Voltage\nD2 \nD3 REV SW\nD4 SPKR\nD5 \nD6 \nD7 CLIP\nD8 \nD9 FW MTRS\nD10 Clip U3\nD11 Clip U4\nD12 Clip U6\nD13 LED
Text Label 2550 5800 0    60   ~ 0
7
$Comp
L CONN_01X01 J14
U 1 1 5CE78195
P 6000 7750
F 0 "J14" H 6000 7850 50  0000 C CNN
F 1 "NPTH" V 6100 7750 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_2-5mmDrill" H 6000 7750 50  0001 C CNN
F 3 "" H 6000 7750 50  0001 C CNN
	1    6000 7750
	1    0    0    -1  
$EndComp
NoConn ~ 10050 6300
Text Label 2550 6900 0    60   ~ 0
A0
NoConn ~ 4600 2150
$Comp
L C C9
U 1 1 5CF78490
P 8200 3000
F 0 "C9" V 8050 2850 50  0000 L CNN
F 1 "0.1uF" V 8350 2850 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 8238 2850 50  0001 C CNN
F 3 "" H 8200 3000 50  0001 C CNN
	1    8200 3000
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5CF785A0
P 7900 2850
F 0 "R17" H 8050 2800 50  0000 C CNN
F 1 "10K" V 7900 2850 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 7830 2850 50  0001 C CNN
F 3 "" H 7900 2850 50  0001 C CNN
	1    7900 2850
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR024
U 1 1 5CF7868B
P 7900 2700
F 0 "#PWR024" H 7900 2550 50  0001 C CNN
F 1 "VCC" H 7950 2850 50  0000 C CNN
F 2 "" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
Text Label 8750 3000 0    60   ~ 0
#RTS
$Comp
L Conn_01x02 J6
U 1 1 5CFB521F
P 1600 4750
F 0 "J6" H 1600 4850 50  0000 C CNN
F 1 "REV" H 1600 4550 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0210_02x1.25mm_Straight" H 1600 4750 50  0001 C CNN
F 3 "" H 1600 4750 50  0001 C CNN
	1    1600 4750
	-1   0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5CFBC339
P 2100 6700
F 0 "R19" V 2000 6700 50  0000 C CNN
F 1 "10K" V 2100 6700 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 2030 6700 50  0001 C CNN
F 3 "" H 2100 6700 50  0001 C CNN
	1    2100 6700
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 5CFBC33F
P 1950 6900
F 0 "R18" V 1850 6900 50  0000 C CNN
F 1 "1K" V 1950 6900 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 1880 6900 50  0001 C CNN
F 3 "" H 1950 6900 50  0001 C CNN
	1    1950 6900
	0    -1   -1   0   
$EndComp
$Comp
L C C10
U 1 1 5CFBC345
P 2100 7100
F 0 "C10" H 2125 7200 50  0000 L CNN
F 1 "0.1uF" H 2125 7000 50  0000 L CNN
F 2 "footprints:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2138 6950 50  0001 C CNN
F 3 "" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J21
U 1 1 5CFBC365
P 1600 6900
F 0 "J21" H 1600 7000 50  0000 C CNN
F 1 "BUTTON" H 1550 6700 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0210_02x1.25mm_Straight" H 1600 6900 50  0001 C CNN
F 3 "" H 1600 6900 50  0001 C CNN
	1    1600 6900
	-1   0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 5CDFA006
P 2500 3300
F 0 "Q1" H 2650 3450 50  0000 L CNN
F 1 "IRLR8729" H 2200 3500 50  0000 L CNN
F 2 "footprints:TO-252-3_TabPin2" H 2700 3400 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	-1   0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 5CF98DB6
P 3750 7000
F 0 "LS1" H 3800 7225 50  0000 R CNN
F 1 "Speaker" H 3800 7150 50  0000 R CNN
F 2 "footprints:SPEAKER" H 3750 6800 50  0001 C CNN
F 3 "" H 3740 6950 50  0001 C CNN
	1    3750 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5CF993BF
P 3450 7150
F 0 "#PWR025" H 3450 6900 50  0001 C CNN
F 1 "GND" V 3350 7100 50  0000 C CNN
F 2 "" H 3450 7150 50  0001 C CNN
F 3 "" H 3450 7150 50  0001 C CNN
	1    3450 7150
	1    0    0    -1  
$EndComp
Text Label 1350 2250 0    60   ~ 0
BATT
Text Label 3550 4950 0    60   ~ 0
BATT
$Comp
L GND #PWR026
U 1 1 5CFE0A5C
P 2100 6150
F 0 "#PWR026" H 2100 5900 50  0001 C CNN
F 1 "GND" H 2200 6050 50  0000 C CNN
F 2 "" H 2100 6150 50  0001 C CNN
F 3 "" H 2100 6150 50  0001 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5CFE0ED9
P 2100 7250
F 0 "#PWR027" H 2100 7000 50  0001 C CNN
F 1 "GND" H 2200 7150 50  0000 C CNN
F 2 "" H 2100 7250 50  0001 C CNN
F 3 "" H 2100 7250 50  0001 C CNN
	1    2100 7250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5CFE10BB
P 2100 5100
F 0 "#PWR028" H 2100 4850 50  0001 C CNN
F 1 "GND" H 2200 5000 50  0000 C CNN
F 2 "" H 2100 5100 50  0001 C CNN
F 3 "" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR029
U 1 1 5CFE7374
P 2100 4400
F 0 "#PWR029" H 2100 4250 50  0001 C CNN
F 1 "VCC" H 2200 4450 50  0000 C CNN
F 2 "" H 2100 4400 50  0001 C CNN
F 3 "" H 2100 4400 50  0001 C CNN
	1    2100 4400
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse F1
U 1 1 5CFFD544
P 1400 2750
F 0 "F1" V 1450 2900 50  0000 C CNN
F 1 "PTC" V 1450 2750 50  0000 C CNN
F 2 "footprints:Fuse_Littelfuse-LVR125" H 1450 2550 50  0001 L CNN
F 3 "" H 1400 2750 50  0001 C CNN
	1    1400 2750
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR030
U 1 1 5D02D809
P 2100 6550
F 0 "#PWR030" H 2100 6400 50  0001 C CNN
F 1 "VCC" H 2200 6600 50  0000 C CNN
F 2 "" H 2100 6550 50  0001 C CNN
F 3 "" H 2100 6550 50  0001 C CNN
	1    2100 6550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J12
U 1 1 5D02EB46
P 1550 5800
F 0 "J12" H 1550 5900 50  0000 C CNN
F 1 "CLIP" H 1500 5600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0210_02x1.25mm_Straight" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	1    1550 5800
	-1   0    0    -1  
$EndComp
Text Notes 1900 7600 0    60   ~ 12
DEBOUNCE
$Comp
L D D1
U 1 1 5CDFABAB
P 2400 2600
F 0 "D1" H 2400 2700 50  0000 C CNN
F 1 "1N5401" H 2400 2500 50  0000 C CNN
F 2 "footprints:D_DO-15_P12.70mm_Horizontal" H 2400 2600 50  0001 C CNN
F 3 "" H 2400 2600 50  0001 C CNN
	1    2400 2600
	0    1    1    0   
$EndComp
$Comp
L Conn_01x03 J8
U 1 1 5D078FBB
P 9150 3650
F 0 "J8" H 9150 3850 50  0000 C CNN
F 1 "PHOTO" H 9150 3450 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 9150 3650 50  0001 C CNN
F 3 "" H 9150 3650 50  0001 C CNN
	1    9150 3650
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5D07A39E
P 8600 3500
F 0 "R20" V 8700 3450 50  0000 C CNN
F 1 "10K" V 8600 3500 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 8530 3500 50  0001 C CNN
F 3 "" H 8600 3500 50  0001 C CNN
	1    8600 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 5D07A447
P 8600 3650
F 0 "R21" V 8500 3650 50  0000 C CNN
F 1 "100" V 8600 3650 50  0000 C CNN
F 2 "footprints:R__P5.08mm" V 8530 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR031
U 1 1 5D07CC9C
P 8850 3850
F 0 "#PWR031" H 8850 3600 50  0001 C CNN
F 1 "GND" V 8750 3800 50  0000 C CNN
F 2 "" H 8850 3850 50  0001 C CNN
F 3 "" H 8850 3850 50  0001 C CNN
	1    8850 3850
	1    0    0    -1  
$EndComp
Text Label 8700 3300 0    60   ~ 0
A1
Text Label 2450 4750 0    60   ~ 0
3(**)
$Comp
L Conn_01x02 J9
U 1 1 5CE592FA
P 1050 2750
F 0 "J9" H 1050 2850 50  0000 C CNN
F 1 "FW_MTRS" H 1050 2550 50  0000 C CNN
F 2 "footprints:TerminalBlock_P3.50mm_Horizontal" H 1050 2750 50  0001 C CNN
F 3 "" H 1050 2750 50  0001 C CNN
	1    1050 2750
	-1   0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 5D0C2F8E
P 7500 1050
F 0 "CON1" H 7395 1290 50  0000 C CNN
F 1 "ISP" H 7235 820 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 6980 1090 50  0001 C CNN
F 3 "" H 7475 1050 50  0001 C CNN
	1    7500 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR032
U 1 1 5D0C303E
P 7900 900
F 0 "#PWR032" H 7900 750 50  0001 C CNN
F 1 "VCC" H 7900 1050 50  0000 C CNN
F 2 "" H 7900 900 50  0001 C CNN
F 3 "" H 7900 900 50  0001 C CNN
	1    7900 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5D0C30CA
P 7900 1200
F 0 "#PWR033" H 7900 950 50  0001 C CNN
F 1 "GND" V 7800 1150 50  0000 C CNN
F 2 "" H 7900 1200 50  0001 C CNN
F 3 "" H 7900 1200 50  0001 C CNN
	1    7900 1200
	1    0    0    -1  
$EndComp
Text Label 6900 950  0    60   ~ 0
12(MISO)
Text Label 6900 1050 0    60   ~ 0
13(SCK)
Text Label 6900 1150 0    60   ~ 0
Reset
Text Label 7700 1050 0    60   ~ 0
11(MOSI)
$Comp
L Conn_01x02 J1
U 1 1 5D105A3F
P 1800 1400
F 0 "J1" H 1800 1500 50  0000 C CNN
F 1 "JAM" H 1800 1200 50  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0210_02x1.25mm_Straight" H 1800 1400 50  0001 C CNN
F 3 "" H 1800 1400 50  0001 C CNN
	1    1800 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	3450 7100 3450 7150
Wire Wire Line
	3550 7100 3450 7100
Wire Wire Line
	3450 7000 3550 7000
Wire Wire Line
	1800 7250 2100 7250
Wire Wire Line
	1800 7000 1800 7250
Wire Wire Line
	1800 6900 1800 6900
Connection ~ 2100 6900
Wire Wire Line
	2100 6900 2650 6900
Wire Wire Line
	2100 6850 2100 6950
Wire Wire Line
	1800 5100 2100 5100
Wire Wire Line
	1750 5800 2650 5800
Wire Wire Line
	1250 2250 1700 2250
Wire Notes Line
	7900 6000 7150 6000
Wire Notes Line
	8550 6000 9600 6000
Wire Wire Line
	9400 5250 9600 5250
Wire Wire Line
	8550 5250 8750 5250
Wire Wire Line
	7700 5250 7900 5250
Wire Wire Line
	8950 2900 8750 2900
Wire Wire Line
	8950 2800 8750 2800
Wire Wire Line
	8800 2500 8950 2500
Wire Wire Line
	3700 4950 3550 4950
Wire Wire Line
	3700 5800 3700 5900
Connection ~ 3700 5450
Wire Wire Line
	3400 5450 3700 5450
Wire Wire Line
	3700 5400 3700 5500
Wire Wire Line
	3700 4950 3700 5100
Wire Wire Line
	8900 2000 8950 2000
Wire Wire Line
	8900 2100 8900 2000
Wire Wire Line
	8700 1900 8950 1900
Wire Wire Line
	8600 1800 8950 1800
Wire Wire Line
	8600 1700 8950 1700
Connection ~ 2100 5800
Connection ~ 2100 4750
Wire Wire Line
	2100 4750 2650 4750
Wire Wire Line
	2100 4700 2100 4800
Wire Wire Line
	2400 3500 2400 3700
Wire Wire Line
	1950 2150 2950 2150
Wire Wire Line
	1950 1700 1950 1800
Wire Wire Line
	6700 3000 8050 3000
Wire Wire Line
	5850 5400 6000 5400
Wire Wire Line
	5450 5400 5550 5400
Wire Wire Line
	4750 5400 5150 5400
Wire Wire Line
	4750 3400 4750 3300
Connection ~ 4750 3750
Wire Wire Line
	7050 2450 7200 2450
Wire Wire Line
	7050 2250 7050 2450
Wire Wire Line
	4750 3600 4750 3900
Connection ~ 4700 1550
Wire Wire Line
	4700 1850 4800 1850
Wire Wire Line
	4600 2150 4800 2150
Wire Wire Line
	6700 3850 6950 3850
Wire Wire Line
	6700 3750 6950 3750
Wire Wire Line
	6700 3650 6950 3650
Wire Wire Line
	6700 3550 6950 3550
Wire Wire Line
	6700 3450 6950 3450
Wire Wire Line
	6700 3350 6950 3350
Wire Wire Line
	6700 3250 6950 3250
Wire Wire Line
	6700 3150 6950 3150
Wire Wire Line
	6700 2900 6950 2900
Wire Wire Line
	6700 2800 6950 2800
Wire Wire Line
	6700 2700 6950 2700
Wire Wire Line
	6700 2500 6950 2500
Wire Wire Line
	6700 2400 6950 2400
Wire Wire Line
	6700 2250 7050 2250
Wire Wire Line
	6700 2150 7200 2150
Connection ~ 2400 2150
Wire Wire Line
	2400 2150 2400 2000
Connection ~ 2950 2150
Wire Wire Line
	2950 2100 2950 2200
Wire Wire Line
	6700 2050 6950 2050
Wire Wire Line
	6700 1950 6950 1950
Wire Wire Line
	6700 1850 6950 1850
Wire Wire Line
	6700 1750 6950 1750
Wire Wire Line
	6700 1650 6950 1650
Connection ~ 4750 3850
Wire Wire Line
	4750 3850 4800 3850
Wire Wire Line
	4800 3750 4750 3750
Wire Wire Line
	4700 1550 4800 1550
Wire Wire Line
	4700 1550 4700 1850
Connection ~ 2950 1700
Wire Wire Line
	2950 1700 2950 1800
Wire Wire Line
	2700 1700 3250 1700
Wire Wire Line
	1800 1700 2100 1700
Connection ~ 1950 1700
Wire Wire Line
	1950 2150 1950 2100
Wire Wire Line
	1800 4850 1800 5100
Wire Wire Line
	1750 5900 1750 6150
Wire Wire Line
	1750 6150 2100 6150
Wire Wire Line
	8800 2700 8950 2700
Wire Wire Line
	2700 3300 3050 3300
Connection ~ 2800 3300
Wire Wire Line
	2800 3700 2800 3600
Wire Wire Line
	1600 3700 2800 3700
Wire Wire Line
	1250 2350 1600 2350
Connection ~ 1700 2250
Wire Wire Line
	1700 1600 1700 2750
Wire Wire Line
	1700 2750 1550 2750
Wire Wire Line
	1250 2750 1250 2750
Wire Wire Line
	1250 2850 2400 2850
Wire Wire Line
	2400 2750 2400 3100
Connection ~ 2400 2850
Wire Wire Line
	1700 2450 2400 2450
Connection ~ 1700 2450
Wire Wire Line
	1600 2350 1600 3700
Connection ~ 2400 3700
Wire Wire Line
	8950 2600 8900 2600
Wire Wire Line
	8900 2600 8900 2500
Connection ~ 8900 2500
Connection ~ 7900 3000
Wire Wire Line
	8350 3000 8950 3000
Wire Wire Line
	8950 3750 8850 3750
Wire Wire Line
	8850 3750 8850 3850
Wire Wire Line
	8950 3650 8750 3650
Wire Wire Line
	8850 3550 8950 3550
Wire Wire Line
	8850 3300 8850 3550
Wire Wire Line
	8850 3500 8750 3500
Wire Wire Line
	8350 3650 8450 3650
Wire Wire Line
	8350 3350 8350 3650
Wire Wire Line
	8350 3500 8450 3500
Connection ~ 8350 3500
Wire Wire Line
	8850 3300 8650 3300
Connection ~ 8850 3500
Wire Wire Line
	6700 1550 6950 1550
Wire Wire Line
	7600 950  7900 950 
Wire Wire Line
	7900 950  7900 900 
Wire Wire Line
	7600 1050 8050 1050
Wire Wire Line
	7600 1150 7900 1150
Wire Wire Line
	7900 1150 7900 1200
Wire Wire Line
	7350 1150 6900 1150
Wire Wire Line
	7350 1050 6900 1050
Wire Wire Line
	7350 950  6900 950 
Wire Wire Line
	1800 1600 1800 1700
Wire Wire Line
	6700 2600 6950 2600
$Comp
L VCC #PWR034
U 1 1 5D11B811
P 8300 3350
F 0 "#PWR034" H 8300 3200 50  0001 C CNN
F 1 "VCC" H 8300 3500 50  0000 C CNN
F 2 "" H 8300 3350 50  0001 C CNN
F 3 "" H 8300 3350 50  0001 C CNN
	1    8300 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 3350 8300 3350
$EndSCHEMATC
