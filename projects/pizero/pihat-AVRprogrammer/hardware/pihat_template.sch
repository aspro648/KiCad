EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:pihat_template-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Raspberry_Pi_+_Conn P3
U 1 1 54E92361
P 2250 4350
F 0 "P3" H 1150 6300 60  0000 C CNN
F 1 "Raspberry_Pi_+_Conn" H 2550 2900 60  0000 C CNN
F 2 "w_conn_strip:vasch_strip_20x2" H 2250 4350 60  0001 C CNN
F 3 "" H 2250 4350 60  0000 C CNN
F 4 "517-30340-6002" H 2250 4350 60  0001 C CNN "Mouser Part No."
	1    2250 4350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E963F9
P 1000 4050
F 0 "#PWR01" H 1000 4050 30  0001 C CNN
F 1 "GND" H 1000 3980 30  0001 C CNN
F 2 "" H 1000 4050 60  0000 C CNN
F 3 "" H 1000 4050 60  0000 C CNN
	1    1000 4050
	1    0    0    -1  
$EndComp
Text Notes 4650 1850 0    157  Italic 31
Pi AVR Programmer
$Comp
L AVR-ISP-6 CON_ISP1
U 1 1 582AA185
P 6700 2900
F 0 "CON_ISP1" H 6595 3140 50  0000 C CNN
F 1 "AVR-ISP-6" H 6435 2670 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 6180 2940 50  0001 C CNN
F 3 "" H 6675 2900 60  0000 C CNN
	1    6700 2900
	1    0    0    -1  
$EndComp
$Comp
L DIL28 P1
U 1 1 582AA77B
P 8950 4600
F 0 "P1" H 8950 5500 70  0000 C CNN
F 1 "DIL28" V 8950 4600 50  0000 C CNN
F 2 "myFootPrints:Zif_228-3341" H 8950 4600 60  0001 C CNN
F 3 "" H 8950 4600 60  0000 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 582AA986
P 1050 2550
F 0 "#PWR02" H 1050 2400 50  0001 C CNN
F 1 "+5V" H 1050 2690 50  0000 C CNN
F 2 "" H 1050 2550 60  0000 C CNN
F 3 "" H 1050 2550 60  0000 C CNN
	1    1050 2550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 582AA9BD
P 7150 2800
F 0 "#PWR03" H 7150 2650 50  0001 C CNN
F 1 "+5V" H 7150 2940 50  0000 C CNN
F 2 "" H 7150 2800 60  0000 C CNN
F 3 "" H 7150 2800 60  0000 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 582AA9D1
P 7150 3000
F 0 "#PWR04" H 7150 3000 30  0001 C CNN
F 1 "GND" H 7150 2930 30  0001 C CNN
F 2 "" H 7150 3000 60  0000 C CNN
F 3 "" H 7150 3000 60  0000 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON_85
U 1 1 582AADB6
P 6700 3950
F 0 "CON_85" H 6595 4190 50  0000 C CNN
F 1 "AVR-ISP-6" H 6435 3720 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 6180 3990 50  0001 C CNN
F 3 "" H 6675 3950 60  0000 C CNN
	1    6700 3950
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON_84
U 1 1 582AAE52
P 6700 4800
F 0 "CON_84" H 6595 5040 50  0000 C CNN
F 1 "AVR-ISP-6" H 6435 4570 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 6180 4840 50  0001 C CNN
F 3 "" H 6675 4800 60  0000 C CNN
	1    6700 4800
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON_328
U 1 1 582AAE94
P 6700 5700
F 0 "CON_328" H 6595 5940 50  0000 C CNN
F 1 "AVR-ISP-6" H 6435 5470 50  0000 L BNN
F 2 "myFootPrints:AVR-ISP-6" V 6180 5740 50  0001 C CNN
F 3 "" H 6675 5700 60  0000 C CNN
	1    6700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3950 1150 3950
Wire Wire Line
	1000 3250 1000 3350
Wire Wire Line
	1000 3350 1000 3450
Wire Wire Line
	1000 3450 1000 3550
Wire Wire Line
	1000 3550 1000 3650
Wire Wire Line
	1000 3650 1000 3750
Wire Wire Line
	1000 3750 1000 3850
Wire Wire Line
	1000 3850 1000 3950
Wire Wire Line
	1000 3950 1000 4050
Wire Wire Line
	1150 3250 1000 3250
Connection ~ 1000 3950
Wire Wire Line
	1150 3850 1000 3850
Connection ~ 1000 3850
Wire Wire Line
	1150 3750 1000 3750
Connection ~ 1000 3750
Wire Wire Line
	1150 3650 1000 3650
Connection ~ 1000 3650
Wire Wire Line
	1150 3550 1000 3550
Connection ~ 1000 3550
Wire Wire Line
	1150 3450 1000 3450
Connection ~ 1000 3450
Wire Wire Line
	1150 3350 1000 3350
Connection ~ 1000 3350
Wire Wire Line
	1150 2650 1050 2650
Wire Wire Line
	1050 2650 1050 2550
Connection ~ 1050 2550
Wire Wire Line
	1050 2550 1150 2550
Wire Wire Line
	6800 3000 7150 3000
Wire Wire Line
	6800 2800 7150 2800
Wire Wire Line
	3700 5650 5350 5650
Wire Wire Line
	5350 5650 5350 3000
Wire Wire Line
	5350 3000 6550 3000
Wire Wire Line
	6800 2900 7300 2900
Wire Wire Line
	7300 2900 7300 2550
Wire Wire Line
	7300 2550 3700 2550
Wire Wire Line
	5350 2650 5350 2900
Wire Wire Line
	5350 2650 3700 2650
Wire Wire Line
	5350 2900 6550 2900
Wire Wire Line
	5200 2800 6550 2800
Wire Wire Line
	3700 4750 5200 4750
Wire Wire Line
	5200 4750 5200 2800
Wire Wire Line
	6800 3850 7550 3850
Wire Wire Line
	7550 3500 7550 3850
Wire Wire Line
	7550 3850 7550 4900
Wire Wire Line
	7550 3500 9450 3500
Wire Wire Line
	9450 3500 9450 3850
Wire Wire Line
	9450 3850 9300 3850
Wire Wire Line
	6800 3950 7650 3950
Wire Wire Line
	7650 3950 7650 3600
Wire Wire Line
	7650 3600 9550 3600
Wire Wire Line
	9550 3600 9550 4150
Wire Wire Line
	9550 4150 9300 4150
Wire Wire Line
	6550 3850 6100 3850
Wire Wire Line
	6100 3850 6100 3400
Wire Wire Line
	6100 3400 9650 3400
Wire Wire Line
	9650 3400 9650 4050
Wire Wire Line
	9650 4050 9300 4050
Wire Wire Line
	6550 3950 6000 3950
Wire Wire Line
	6000 3950 6000 3300
Wire Wire Line
	6000 3300 9750 3300
Wire Wire Line
	9750 3300 9750 3950
Wire Wire Line
	9750 3950 9300 3950
Wire Wire Line
	6800 4050 7950 4050
Wire Wire Line
	6550 4050 6100 4050
Wire Wire Line
	6100 4050 6100 4250
Wire Wire Line
	6100 4250 7750 4250
Wire Wire Line
	7750 3850 7750 4250
Wire Wire Line
	7750 4250 7750 4700
Wire Wire Line
	7750 4700 7750 6000
Wire Wire Line
	7750 3850 8600 3850
Wire Wire Line
	6550 4700 6050 4700
Wire Wire Line
	6050 4700 6050 5200
Wire Wire Line
	6050 5200 7850 5200
Wire Wire Line
	7850 4550 7850 5200
Wire Wire Line
	7850 5200 7850 5800
Wire Wire Line
	7850 4550 8600 4550
Wire Wire Line
	9550 4350 9550 5300
Wire Wire Line
	9550 5300 6150 5300
Wire Wire Line
	6150 5300 6150 4800
Wire Wire Line
	6150 4800 6550 4800
Wire Wire Line
	9550 4350 9300 4350
Wire Wire Line
	7750 4700 6800 4700
Connection ~ 7750 4250
Wire Wire Line
	6800 4800 7650 4800
Wire Wire Line
	7650 4450 7650 4800
Wire Wire Line
	7650 4800 7650 5600
Wire Wire Line
	7650 4450 8600 4450
Wire Wire Line
	6550 4900 6250 4900
Wire Wire Line
	6250 4900 6250 5050
Wire Wire Line
	6250 5050 7950 5050
Wire Wire Line
	7950 5050 7950 4150
Wire Wire Line
	7950 4150 7950 4050
Connection ~ 7950 4150
Wire Wire Line
	7950 4150 8600 4150
Wire Wire Line
	7650 5600 6800 5600
Connection ~ 7650 4800
Wire Wire Line
	6800 5700 9650 5700
Wire Wire Line
	9650 5700 9650 4950
Wire Wire Line
	9650 4950 9300 4950
Wire Wire Line
	6800 5800 7850 5800
Wire Wire Line
	7850 5800 9850 5800
Connection ~ 7850 5200
Wire Wire Line
	6550 5800 6250 5800
Wire Wire Line
	6250 5800 6250 6000
Wire Wire Line
	6250 6000 7750 6000
Connection ~ 7750 4700
Wire Wire Line
	6550 5700 6150 5700
Wire Wire Line
	6150 5700 6150 6100
Wire Wire Line
	6150 6100 9750 6100
Wire Wire Line
	9750 6100 9750 4750
Wire Wire Line
	9750 4750 9300 4750
Wire Wire Line
	6550 5600 6050 5600
Wire Wire Line
	6050 5600 6050 6200
Wire Wire Line
	6050 6200 9450 6200
Wire Wire Line
	9450 6200 9450 4850
Wire Wire Line
	9450 4850 9300 4850
Wire Wire Line
	7550 4900 6800 4900
Connection ~ 7550 3850
Wire Wire Line
	9300 4450 9850 4450
Wire Wire Line
	9850 4450 9850 5800
Connection ~ 7850 5800
$Comp
L Crystal_Small Y1
U 1 1 582ABAEE
P 8250 4750
F 0 "Y1" H 8250 4850 50  0000 C CNN
F 1 "16Mhz" V 8400 4750 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical_3Pin" H 8250 4750 60  0001 C CNN
F 3 "" H 8250 4750 60  0000 C CNN
	1    8250 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4650 8250 4650
Wire Wire Line
	8600 4750 8400 4750
Wire Wire Line
	8400 4750 8400 4850
Wire Wire Line
	8400 4850 8250 4850
Wire Wire Line
	8600 3950 8500 3950
$Comp
L LED D1
U 1 1 582ABCD6
P 8700 6350
F 0 "D1" H 8700 6450 50  0000 C CNN
F 1 "LED" H 8700 6250 50  0000 C CNN
F 2 "myFootPrints:LED-3MM" H 8700 6350 60  0001 C CNN
F 3 "" H 8700 6350 60  0000 C CNN
	1    8700 6350
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 582ABCFB
P 9050 6350
F 0 "R1" V 9130 6350 50  0000 C CNN
F 1 "330" V 9050 6350 50  0000 C CNN
F 2 "myFootPrints:Resistor_Horz" V 8980 6350 30  0001 C CNN
F 3 "" H 9050 6350 30  0000 C CNN
	1    9050 6350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 582ABDF9
P 9200 6350
F 0 "#PWR05" H 9200 6350 30  0001 C CNN
F 1 "GND" H 9200 6280 30  0001 C CNN
F 2 "" H 9200 6350 60  0000 C CNN
F 3 "" H 9200 6350 60  0000 C CNN
	1    9200 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 3950 8500 4250
Wire Wire Line
	8500 4250 8500 5900
Wire Wire Line
	8500 5900 8500 6350
Wire Wire Line
	8600 4250 8500 4250
Connection ~ 8500 4250
Wire Wire Line
	9300 4250 9950 4250
Wire Wire Line
	9950 4250 9950 5900
Wire Wire Line
	9950 5900 8500 5900
Connection ~ 8500 5900
NoConn ~ 3700 2900
NoConn ~ 3700 3000
NoConn ~ 3700 3250
NoConn ~ 3700 3350
NoConn ~ 3700 3450
NoConn ~ 3700 3550
NoConn ~ 3700 3650
NoConn ~ 3700 4050
NoConn ~ 3700 4150
NoConn ~ 3700 4250
NoConn ~ 3700 4350
NoConn ~ 3700 4450
NoConn ~ 3700 4550
NoConn ~ 3700 4650
NoConn ~ 3700 4850
NoConn ~ 3700 4950
NoConn ~ 3700 5050
NoConn ~ 3700 5150
NoConn ~ 3700 5250
NoConn ~ 3700 5350
NoConn ~ 3700 5450
NoConn ~ 3700 5550
NoConn ~ 1150 4750
NoConn ~ 1150 4650
NoConn ~ 1150 3000
NoConn ~ 1150 2900
NoConn ~ 9300 5150
NoConn ~ 9300 5050
NoConn ~ 8600 5150
NoConn ~ 8600 5050
NoConn ~ 8600 4950
NoConn ~ 8600 4850
NoConn ~ 8600 4350
NoConn ~ 8600 4050
NoConn ~ 9300 4550
NoConn ~ 9300 4650
$Comp
L PWR_FLAG #FLG06
U 1 1 582ACD45
P 1000 1150
F 0 "#FLG06" H 1000 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1330 50  0000 C CNN
F 2 "" H 1000 1150 60  0000 C CNN
F 3 "" H 1000 1150 60  0000 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 582ACD72
P 1300 1150
F 0 "#FLG07" H 1300 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 1330 50  0000 C CNN
F 2 "" H 1300 1150 60  0000 C CNN
F 3 "" H 1300 1150 60  0000 C CNN
	1    1300 1150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 582ACD98
P 1000 1150
F 0 "#PWR08" H 1000 1000 50  0001 C CNN
F 1 "+5V" H 1000 1290 50  0000 C CNN
F 2 "" H 1000 1150 60  0000 C CNN
F 3 "" H 1000 1150 60  0000 C CNN
	1    1000 1150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 582ACDBE
P 1300 1150
F 0 "#PWR09" H 1300 1150 30  0001 C CNN
F 1 "GND" H 1300 1080 30  0001 C CNN
F 2 "" H 1300 1150 60  0000 C CNN
F 3 "" H 1300 1150 60  0000 C CNN
	1    1300 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 582BDD78
P 8200 4750
F 0 "#PWR010" H 8200 4750 30  0001 C CNN
F 1 "GND" H 8200 4680 30  0001 C CNN
F 2 "" H 8200 4750 60  0000 C CNN
F 3 "" H 8200 4750 60  0000 C CNN
	1    8200 4750
	0    1    1    0   
$EndComp
Text Notes 1550 7500 0    60   ~ 0
# Linux GPIO configuration for avrdude.\n# Change the lines below to the GPIO pins connected to the AVR.\nprogrammer\n  id    = "pi_1";\n  desc  = "Use the Linux sysfs interface to bitbang GPIO lines";\n  type  = "linuxgpio";\n  reset = 27;\n  sck   = 3;\n  mosi  = 2;\n  miso  = 18;\n;\n
$EndSCHEMATC
