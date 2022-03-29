EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Lights Attiny826"
Date "2022-03-18"
Rev "0.0"
Comp "www.MakersBox.us"
Comment1 "648.ken@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L project:VCC #PWR013
U 1 1 623666E7
P -6250 5650
F 0 "#PWR013" H -6250 5500 50  0001 C CNN
F 1 "VCC" H -6250 5800 50  0000 C CNN
F 2 "" H -6250 5650 50  0001 C CNN
F 3 "" H -6250 5650 50  0001 C CNN
	1    -6250 5650
	1    0    0    -1  
$EndComp
$Comp
L project:R R1
U 1 1 62366FAD
P -6000 5700
F 0 "R1" V -5920 5700 50  0000 C CNN
F 1 "1" V -6000 5700 50  0000 C CNN
F 2 "footprints:R_0603" V -6070 5700 50  0001 C CNN
F 3 "" H -6000 5700 50  0001 C CNN
	1    -6000 5700
	0    -1   -1   0   
$EndComp
$Comp
L project:R R2
U 1 1 62367648
P -5450 5700
F 0 "R2" V -5370 5700 50  0000 C CNN
F 1 "2" V -5450 5700 50  0000 C CNN
F 2 "footprints:R_0603" V -5520 5700 50  0001 C CNN
F 3 "" H -5450 5700 50  0001 C CNN
	1    -5450 5700
	0    -1   -1   0   
$EndComp
$Comp
L project:GND #PWR014
U 1 1 623679D4
P -5050 5750
F 0 "#PWR014" H -5050 5500 50  0001 C CNN
F 1 "GND" H -5050 5600 50  0000 C CNN
F 2 "" H -5050 5750 50  0001 C CNN
F 3 "" H -5050 5750 50  0001 C CNN
	1    -5050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6250 5650 -6250 5700
Wire Wire Line
	-6250 5700 -6150 5700
Wire Wire Line
	-5850 5700 -5750 5700
Wire Wire Line
	-5300 5700 -5050 5700
Wire Wire Line
	-5050 5700 -5050 5750
Wire Wire Line
	-5750 5700 -5750 5900
Wire Wire Line
	-5750 5900 -6100 5900
Connection ~ -5750 5700
Wire Wire Line
	-5750 5700 -5600 5700
Text Label -6100 5900 0    60   ~ 0
A5
Text Notes -5950 6050 0    60   ~ 0
39K / 10K ?
Text Notes -6300 6250 0    60   ~ 0
A5 = Vcc * ( R2 / (R1 + R2) ) \nhttps://gist.github.com/dwhacks/7208805
$EndSCHEMATC
