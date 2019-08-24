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
LIBS:motors
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "ArduStryfe MOSFET"
Date "2019-08-23"
Rev "0.4"
Comp "@TheMakersBox"
Comment1 "648.ken@gmail.com"
Comment2 "Ken Olsen"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PWR_FLAG #FLG01
U 1 1 5BB53674
P 900 900
F 0 "#FLG01" H 900 975 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1050 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5BB54F5E
P 1350 900
F 0 "#FLG02" H 1350 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1050 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5BB60B89
P 900 900
F 0 "#PWR03" H 900 750 50  0001 C CNN
F 1 "VCC" H 900 1050 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "" H 900 900 50  0001 C CNN
	1    900  900 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5CE0B0F0
P 1350 900
F 0 "#PWR04" H 1350 650 50  0001 C CNN
F 1 "GND" H 1350 750 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J14
U 1 1 5CE78195
P 5150 7150
F 0 "J14" H 5150 7250 50  0000 C CNN
F 1 "MOUNT" V 5250 7150 50  0000 C CNN
F 2 "footprints:SolderWirePad_single_2-5mmDrill" H 5150 7150 50  0001 C CNN
F 3 "" H 5150 7150 50  0001 C CNN
	1    5150 7150
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 5D5DCB20
P 5700 3900
F 0 "J3" V 5700 3700 50  0001 C CNN
F 1 "SOLDER" V 5700 4150 50  0000 C CNB
F 2 "footprints:Pin_Header_Straight_1x02_Pitch2.00mm" H 5700 3900 50  0001 C CNN
F 3 "" H 5700 3900 50  0001 C CNN
	1    5700 3900
	1    0    0    1   
$EndComp
$Comp
L Polyfuse F1
U 1 1 5D60788B
P 4450 3900
F 0 "F1" V 4350 3800 50  0001 C CNN
F 1 "FUSE" V 4300 3900 50  0000 C CNB
F 2 "footprints:Fuse_Littelfuse-LVR125" H 4500 3700 50  0001 L CNN
F 3 "" H 4450 3900 50  0001 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5D6078DF
P 4450 4450
F 0 "BT1" H 4550 4550 50  0001 L CNN
F 1 "BATT" V 4300 4350 50  0000 L CNB
F 2 "footprints:Terminal_no_silk" V 4450 4510 50  0001 C CNN
F 3 "" V 4450 4510 50  0001 C CNN
	1    4450 4450
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5D60795D
P 5150 3900
F 0 "D1" V 5150 4050 50  0001 C CNN
F 1 "KICKBACK" H 5150 3800 50  0000 C CNB
F 2 "footprints:D_DO-41" H 5150 3900 50  0001 C CNN
F 3 "" H 5150 3900 50  0001 C CNN
	1    5150 3900
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 5D6079B8
P 4900 4450
F 0 "Q1" H 5050 4600 50  0001 L CNN
F 1 "MOSFET" V 5150 4300 50  0000 L CNB
F 2 "footprints:TO-220-3_Horizontal" H 5100 4550 50  0001 C CNN
F 3 "" H 4900 4450 50  0001 C CNN
	1    4900 4450
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5D60817A
P 5400 4650
F 0 "R1" V 5400 4650 50  0001 C CNN
F 1 "10K" V 5400 4650 50  0000 C CNN
F 2 "footprints:R__P7mm" V 5330 4650 50  0001 C CNN
F 3 "" H 5400 4650 50  0001 C CNN
	1    5400 4650
	-1   0    0    1   
$EndComp
$Comp
L SW_SPST J1
U 1 1 5D6081C2
P 5400 4100
F 0 "J1" H 5400 4225 50  0001 C CNN
F 1 "REV_SW" H 5400 4200 50  0000 C CNB
F 2 "footprints:Molex_PicoBlade_53047-0210_02x1.25mm_Straight" H 5400 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 3600 4800 3650
Wire Wire Line
	4800 4150 4800 4250
Wire Wire Line
	4800 4650 4800 4850
Wire Wire Line
	4450 4850 5400 4850
Wire Wire Line
	4450 4850 4450 4650
Connection ~ 4800 4850
Wire Wire Line
	5100 4450 5550 4450
Wire Wire Line
	4800 4200 5150 4200
Wire Wire Line
	5150 4200 5150 4050
Connection ~ 4800 4200
Wire Wire Line
	4450 3600 5550 3600
Wire Wire Line
	5150 3600 5150 3750
Connection ~ 4800 3600
Wire Wire Line
	4450 4250 4450 4050
Wire Wire Line
	4450 3750 4450 3600
Connection ~ 5150 3600
Wire Wire Line
	5400 4850 5400 4800
Wire Wire Line
	5400 4300 5400 4500
Connection ~ 5400 4450
Wire Wire Line
	5400 3600 5400 3900
$Comp
L Motor_DC_ALT M1
U 1 1 5D60B0F5
P 4800 3850
F 0 "M1" H 4900 3950 50  0001 L CNN
F 1 "MTRS" V 4600 3700 50  0000 L TNB
F 2 "footprints:Terminal_no_silk" H 4800 3760 50  0001 C CNN
F 3 "" H 4800 3760 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3600 5550 3800
Connection ~ 5400 3600
Wire Wire Line
	5550 4450 5550 3900
Text Notes 5050 4350 2    40   ~ 8
DRAIN
Text Notes 5100 4450 2    40   ~ 8
GATE
Text Notes 5100 4650 2    40   ~ 8
SOURCE
$Comp
L GND #PWR05
U 1 1 5D614BDC
P 4950 4900
F 0 "#PWR05" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4950 4750 50  0000 C CNN
F 2 "" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0001 C CNN
	1    4950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4900 4950 4850
Connection ~ 4950 4850
$EndSCHEMATC
