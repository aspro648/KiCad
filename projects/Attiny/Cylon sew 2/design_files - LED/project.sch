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
LIBS:switches
LIBS:badgelife_shitty_connector
LIBS:project-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Flatland"
Date "2018-08-16"
Rev ""
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D5
U 1 1 5B6126D8
P 7200 4100
F 0 "D5" H 7200 4200 50  0000 C CNN
F 1 "LED" H 7200 4000 50  0000 C CNN
F 2 "footprints:LED-1206" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0000 C CNN
	1    7200 4100
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5B612743
P 6850 4100
F 0 "R5" V 6930 4100 50  0000 C CNN
F 1 "100" V 6850 4100 50  0000 C CNN
F 2 "footprints:R_1206" V 6780 4100 30  0001 C CNN
F 3 "" H 6850 4100 30  0000 C CNN
	1    6850 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 4100 7400 4100
$Comp
L GND #PWR011
U 1 1 5C623CD0
P 7500 4100
F 0 "#PWR011" H 7500 3850 50  0001 C CNN
F 1 "GND" H 7500 3950 50  0000 C CNN
F 2 "" H 7500 4100 60  0000 C CNN
F 3 "" H 7500 4100 60  0000 C CNN
	1    7500 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 4100 6700 4100
$Comp
L CONN_01X01 P8
U 1 1 5C8B29F3
P 5900 4100
F 0 "P8" H 6000 4100 50  0000 C CNN
F 1 "CONN_01X01" V 6000 4100 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_1-5mmDrill" H 5900 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0000 C CNN
	1    5900 4100
	-1   0    0    1   
$EndComp
$EndSCHEMATC
