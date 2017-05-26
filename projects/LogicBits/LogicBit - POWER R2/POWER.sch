EESchema Schematic File Version 2
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
LIBS:POWER-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Full Adder"
Date ""
Rev ""
Comp "MakersBox"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR01
U 1 1 5663B8F6
P 800 800
F 0 "#PWR01" H 800 650 50  0001 C CNN
F 1 "+5V" H 800 940 50  0000 C CNN
F 2 "" H 800 800 60  0000 C CNN
F 3 "" H 800 800 60  0000 C CNN
	1    800  800 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 5663B910
P 1200 800
F 0 "#PWR02" H 1200 550 50  0001 C CNN
F 1 "GND" H 1200 650 50  0000 C CNN
F 2 "" H 1200 800 60  0000 C CNN
F 3 "" H 1200 800 60  0000 C CNN
	1    1200 800 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5667CD4C
P 800 800
F 0 "#FLG03" H 800 895 50  0001 C CNN
F 1 "PWR_FLAG" H 800 980 50  0000 C CNN
F 2 "" H 800 800 60  0000 C CNN
F 3 "" H 800 800 60  0000 C CNN
	1    800  800 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5667D1F4
P 1200 800
F 0 "#FLG04" H 1200 895 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 980 50  0000 C CNN
F 2 "" H 1200 800 60  0000 C CNN
F 3 "" H 1200 800 60  0000 C CNN
	1    1200 800 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 566DEE5D
P 2100 1800
F 0 "P2" H 2100 2000 50  0000 C CNN
F 1 "JMP_IN" V 2200 1800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03" H 2100 1800 60  0001 C CNN
F 3 "" H 2100 1800 60  0000 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR06
U 1 1 566DEE63
P 2500 1600
F 0 "#PWR06" H 2500 1450 50  0001 C CNN
F 1 "+5V" H 2400 1600 50  0000 C CNN
F 2 "" H 2500 1600 60  0000 C CNN
F 3 "" H 2500 1600 60  0000 C CNN
	1    2500 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 566DEE69
P 2500 2050
F 0 "#PWR07" H 2500 1800 50  0001 C CNN
F 1 "GND" H 2400 2050 50  0000 C CNN
F 2 "" H 2500 2050 60  0000 C CNN
F 3 "" H 2500 2050 60  0000 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P6
U 1 1 566DEFAD
P 4750 1800
F 0 "P6" H 4750 2000 50  0000 C CNN
F 1 "JMP_OUT" V 4850 1800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 4750 1800 60  0001 C CNN
F 3 "" H 4750 1800 60  0000 C CNN
	1    4750 1800
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 566E0700
P 4200 2250
F 0 "R4" V 4280 2250 50  0000 C CNN
F 1 "330" V 4200 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4130 2250 30  0001 C CNN
F 3 "" H 4200 2250 30  0000 C CNN
	1    4200 2250
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 566E0899
P 4550 2250
F 0 "D1" H 4550 2350 50  0000 C CNN
F 1 "LED" H 4550 2150 50  0000 C CNN
F 2 "LEDs:LED-1206" H 4550 2250 60  0001 C CNN
F 3 "" H 4550 2250 60  0000 C CNN
	1    4550 2250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 566E555A
P 4750 2250
F 0 "#PWR010" H 4750 2000 50  0001 C CNN
F 1 "GND" V 4800 2050 50  0000 C CNN
F 2 "" H 4750 2250 60  0000 C CNN
F 3 "" H 4750 2250 60  0000 C CNN
	1    4750 2250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 566E5ADF
P 3250 2900
F 0 "#PWR011" H 3250 2650 50  0001 C CNN
F 1 "GND" V 3300 2700 50  0000 C CNN
F 2 "" H 3250 2900 60  0000 C CNN
F 3 "" H 3250 2900 60  0000 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
$Comp
L USB_B P3
U 1 1 567A91EF
P 3550 2800
F 0 "P3" H 3750 2600 50  0000 C CNN
F 1 "USB_B" H 3500 3000 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 3500 2700 60  0001 C CNN
F 3 "" V 3500 2700 60  0000 C CNN
	1    3550 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5912C235
P 3650 3100
F 0 "#PWR?" H 3650 2850 50  0001 C CNN
F 1 "GND" V 3700 2900 50  0000 C CNN
F 2 "" H 3650 3100 60  0000 C CNN
F 3 "" H 3650 3100 60  0000 C CNN
	1    3650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1700 2300 1700
Wire Wire Line
	2300 1800 4550 1800
Wire Wire Line
	2300 1900 4550 1900
Wire Wire Line
	2500 1600 2500 1700
Connection ~ 2500 1700
Wire Wire Line
	2500 2050 2500 1800
Connection ~ 2500 1800
Wire Wire Line
	4050 2250 3850 2250
Wire Wire Line
	3850 2250 3850 1700
Connection ~ 3850 1700
Wire Wire Line
	3250 2600 3250 1700
Connection ~ 3250 1700
$EndSCHEMATC
