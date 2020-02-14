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
LIBS:base-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "OSH Park I Can Solder Badge"
Date ""
Rev ""
Comp "www.MakersBox.us"
Comment1 "K. Olsen"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R1
U 1 1 56CEB2B5
P 6500 4850
F 0 "R1" V 6580 4850 50  0000 C CNN
F 1 "100" V 6500 4850 50  0000 C CNN
F 2 "footprints:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6430 4850 30  0001 C CNN
F 3 "" H 6500 4850 30  0000 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L Battery-RESCUE-base BT1
U 1 1 56CFA61E
P 6050 4650
F 0 "BT1" V 6200 4650 50  0000 L CNN
F 1 "Battery" V 5900 4550 50  0000 L CNN
F 2 "footprints:BATT_CR2032_SMD" V 6050 4690 60  0001 C CNN
F 3 "" V 6050 4690 60  0000 C CNN
	1    6050 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4650 6500 4650
$Comp
L LED-RESCUE-base D1
U 1 1 58C49927
P 6100 5050
F 0 "D1" H 6100 5150 50  0000 C CNN
F 1 "LED" H 6100 4950 50  0000 C CNN
F 2 "footprints:LED_D5.0mm" H 6100 5050 50  0001 C CNN
F 3 "" H 6100 5050 50  0000 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4650 5900 4650
$Comp
L R R2
U 1 1 5ADAE3D9
P 5700 4850
F 0 "R2" V 5780 4850 50  0000 C CNN
F 1 "100" V 5700 4850 50  0000 C CNN
F 2 "footprints:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5630 4850 30  0001 C CNN
F 3 "" H 5700 4850 30  0000 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4700 5700 4650
Wire Wire Line
	5700 5050 5700 5000
Wire Wire Line
	6500 4650 6500 4700
Wire Wire Line
	6500 5000 6500 5050
Wire Wire Line
	6500 5050 6300 5050
Wire Wire Line
	5900 5050 5700 5050
$EndSCHEMATC
