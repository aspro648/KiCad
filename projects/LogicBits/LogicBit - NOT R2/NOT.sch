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
LIBS:XOR_mc74vhc1g86
LIBS:NOT-cache
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
P 2100 2950
F 0 "P2" H 2100 3150 50  0000 C CNN
F 1 "JMP_IN" V 2200 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 2100 2950 60  0001 C CNN
F 3 "" H 2100 2950 60  0000 C CNN
	1    2100 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 566DEE69
P 2600 3400
F 0 "#PWR05" H 2600 3150 50  0001 C CNN
F 1 "GND" H 2500 3400 50  0000 C CNN
F 2 "" H 2600 3400 60  0000 C CNN
F 3 "" H 2600 3400 60  0000 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P6
U 1 1 566DEFAD
P 4250 2950
F 0 "P6" H 4250 3150 50  0000 C CNN
F 1 "JMP_OUT" V 4350 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 4250 2950 60  0001 C CNN
F 3 "" H 4250 2950 60  0000 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 566E5ADF
P 3250 4850
F 0 "#PWR06" H 3250 4600 50  0001 C CNN
F 1 "GND" V 3300 4650 50  0000 C CNN
F 2 "" H 3250 4850 60  0000 C CNN
F 3 "" H 3250 4850 60  0000 C CNN
	1    3250 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 566DEE63
P 2600 2650
F 0 "#PWR07" H 2600 2500 50  0001 C CNN
F 1 "+5V" H 2500 2650 50  0000 C CNN
F 2 "" H 2600 2650 60  0000 C CNN
F 3 "" H 2600 2650 60  0000 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
Text Notes 5700 1450 0    60   ~ 0
MC74HC1G04DTT1G
Wire Wire Line
	2300 2850 4050 2850
Wire Wire Line
	2300 2950 4050 2950
Wire Wire Line
	2600 2850 2600 2650
Connection ~ 2600 2850
Wire Wire Line
	2600 2950 2600 3400
Connection ~ 2600 2950
$Comp
L NOT U1
U 1 1 5913DF17
P 3250 3900
F 0 "U1" H 3445 4015 60  0000 C CNN
F 1 "NOT" H 3550 3750 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3250 3900 60  0001 C CNN
F 3 "" H 3250 3900 60  0000 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3650 3250 2850
Connection ~ 3250 2850
Wire Wire Line
	2400 3900 2850 3900
Wire Wire Line
	2850 3800 2850 4000
Connection ~ 2850 3900
Wire Wire Line
	2300 3050 2400 3050
Wire Wire Line
	2400 3050 2400 4000
Wire Wire Line
	3700 3900 3850 3900
Wire Wire Line
	3850 3050 3850 4000
Wire Wire Line
	3850 3050 4050 3050
$Comp
L R R2
U 1 1 5913E207
P 3850 4150
F 0 "R2" V 3930 4150 50  0000 C CNN
F 1 "330" V 3850 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3780 4150 30  0001 C CNN
F 3 "" H 3850 4150 30  0000 C CNN
	1    3850 4150
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5913E27E
P 3850 4500
F 0 "D2" H 3850 4600 50  0000 C CNN
F 1 "LED" H 3850 4400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 3850 4500 60  0001 C CNN
F 3 "" H 3850 4500 60  0000 C CNN
	1    3850 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5913E44D
P 2400 4150
F 0 "R1" V 2480 4150 50  0000 C CNN
F 1 "330" V 2400 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2330 4150 30  0001 C CNN
F 3 "" H 2400 4150 30  0000 C CNN
	1    2400 4150
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5913E4AE
P 2400 4500
F 0 "D1" H 2400 4600 50  0000 C CNN
F 1 "LED" H 2400 4400 50  0000 C CNN
F 2 "LEDs:LED-1206" H 2400 4500 60  0001 C CNN
F 3 "" H 2400 4500 60  0000 C CNN
	1    2400 4500
	0    -1   -1   0   
$EndComp
Connection ~ 2400 3900
Wire Wire Line
	2400 4700 3850 4700
Connection ~ 3850 3900
Wire Wire Line
	3250 4150 3250 4850
Connection ~ 3250 4700
$EndSCHEMATC
