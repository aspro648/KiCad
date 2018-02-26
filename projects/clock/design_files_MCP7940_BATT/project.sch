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
Title "Arduino Clock"
Date ""
Rev ""
Comp "Maker's Box"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 900  7100 0    60   ~ 0
https://www.electronicshub.org/arduino-4-digit-7-segment-led-display/
Text Notes 900  7250 0    60   ~ 0
https://www.digikey.com/product-detail/en/adafruit-industries-llc/811/1528-1509-ND/5774235
$Comp
L PWR_FLAG #FLG01
U 1 1 5A90EE17
P 800 1250
F 0 "#FLG01" H 800 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A90EF24
P 800 1750
F 0 "#FLG02" H 800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 800 1900 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A90EF89
P 800 1250
F 0 "#PWR03" H 800 1100 50  0001 C CNN
F 1 "VCC" H 800 1400 50  0000 C CNN
F 2 "" H 800 1250 50  0001 C CNN
F 3 "" H 800 1250 50  0001 C CNN
	1    800  1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A90EFEE
P 800 1750
F 0 "#PWR04" H 800 1500 50  0001 C CNN
F 1 "GND" H 800 1600 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 7500 3450
Text Label 7350 3450 0    60   ~ 0
VBAT
$Comp
L Conn_01x01 P1
U 1 1 5A93ABE2
P 7700 3450
F 0 "P1" H 7850 3450 50  0000 C CNN
F 1 "Pin" H 7700 3350 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 3450 50  0001 C CNN
F 3 "" H 7700 3450 50  0001 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 P2
U 1 1 5A93AC8C
P 7700 3950
F 0 "P2" H 7850 3950 50  0000 C CNN
F 1 "Pin" H 7700 3850 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 P4
U 1 1 5A93B466
P 7700 4350
F 0 "P4" H 7850 4350 50  0000 C CNN
F 1 "Pin" H 7700 4250 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 4350 50  0001 C CNN
F 3 "" H 7700 4350 50  0001 C CNN
	1    7700 4350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 P3
U 1 1 5A93B4D6
P 7700 4150
F 0 "P3" H 7850 4150 50  0000 C CNN
F 1 "Pin" H 7700 4050 50  0000 C CNN
F 2 "footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 7700 4150 50  0001 C CNN
F 3 "" H 7700 4150 50  0001 C CNN
	1    7700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4350 7500 3950
Connection ~ 7500 4150
$Comp
L Battery_Cell BT1
U 1 1 5A93D14B
P 6650 3750
F 0 "BT1" H 6750 3850 50  0000 L CNN
F 1 "Battery_Cell" H 6750 3750 50  0000 L CNN
F 2 "footprints:BATT_12mm_TH" V 6650 3810 50  0001 C CNN
F 3 "" V 6650 3810 50  0001 C CNN
	1    6650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 6650 3550
Wire Wire Line
	6650 3850 6650 4150
Wire Wire Line
	6650 4150 7500 4150
$Comp
L GND #PWR05
U 1 1 5A93D2B4
P 6650 4150
F 0 "#PWR05" H 6650 3900 50  0001 C CNN
F 1 "GND" H 6650 4000 50  0000 C CNN
F 2 "" H 6650 4150 50  0001 C CNN
F 3 "" H 6650 4150 50  0001 C CNN
	1    6650 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
