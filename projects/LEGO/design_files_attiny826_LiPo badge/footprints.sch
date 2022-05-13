EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Transistor_BJT:BC807 Q?
U 1 1 6281025B
P 3900 1300
F 0 "Q?" H 4091 1391 50  0000 L CNN
F 1 "SOT-23" H 4091 1300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4150 1400 50  0000 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC808-D.pdf" H 3900 1300 50  0001 L CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC818W Q?
U 1 1 62810261
P 3900 1850
F 0 "Q?" H 4091 1941 50  0000 L CNN
F 1 "SOT-323" H 4091 1850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 4091 1759 50  0000 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 3900 1850 50  0001 L CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L Driver_FET:MCP1415 U?
U 1 1 62810267
P 3900 2450
F 0 "U?" H 4344 2541 50  0000 L CNN
F 1 "SOT-23-5" H 4344 2450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3550 2100 50  0000 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002092F.pdf" H 3700 2700 50  0001 C CNN
	1    3900 2450
	1    0    0    -1  
$EndComp
$Comp
L Driver_FET:NCV8402xST Q?
U 1 1 6281026D
P 4350 4850
AR Path="/6281026D" Ref="Q?"  Part="1" 
AR Path="/627F5198/6281026D" Ref="Q?"  Part="1" 
F 0 "Q?" H 4778 4941 50  0000 L CNN
F 1 "SOT-223" H 4778 4850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3950 4350 50  0000 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NCV8402-D.PDF" H 4650 4850 50  0001 C CNN
	1    4350 4850
	1    0    0    -1  
$EndComp
$Comp
L Driver_FET:PM8834M U?
U 1 1 62810273
P 9150 1800
AR Path="/62810273" Ref="U?"  Part="1" 
AR Path="/627F5198/62810273" Ref="U?"  Part="1" 
F 0 "U?" H 9150 2571 50  0000 C CNN
F 1 "MSOP-8" H 9150 2480 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.95x2.15mm" H 9650 1200 50  0000 C CNN
F 3 "http://www.st.com/resource/en/datasheet/pm8834.pdf" H 9150 1800 50  0001 C CNN
	1    9150 1800
	1    0    0    -1  
$EndComp
$Comp
L Driver_FET:MCP14A1202xMNY U?
U 1 1 62810279
P 9150 3600
AR Path="/62810279" Ref="U?"  Part="1" 
AR Path="/627F5198/62810279" Ref="U?"  Part="1" 
F 0 "U?" H 9494 3691 50  0000 L CNN
F 1 "TDFN-8" H 9494 3600 50  0000 L CNN
F 2 "Package_DFN_QFN:TDFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.4mm" H 8450 3150 50  0000 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP14A1201-Family-Data-Sheet-DS20006228A.pdf" H 9150 3300 50  0001 C CNN
	1    9150 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny13V-10MU U?
U 1 1 6281027F
P 2250 1550
F 0 "U?" H 1707 1641 50  0000 R CNN
F 1 "QFN-20" H 1707 1550 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 3250 850 50  0000 R CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2535.pdf" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny40-XU U?
U 1 1 62810285
P 2250 3950
AR Path="/62810285" Ref="U?"  Part="1" 
AR Path="/627F5198/62810285" Ref="U?"  Part="1" 
F 0 "U?" H 1721 4041 50  0000 R CNN
F 1 "TSSOP-20" H 1721 3950 50  0000 R CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 3000 2500 50  0000 R CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8263-8-bit-avr-microcontroller-tinyavr-attiny40_datasheet.pdf" H 2250 3950 50  0001 C CNN
	1    2250 3950
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny1616-M U?
U 1 1 6281028B
P 6800 2150
F 0 "U?" H 6800 3200 50  0000 C CNN
F 1 "VQFN-20" H 6800 3100 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-20-1EP_3x3mm_P0.4mm_EP1.7x1.7mm" H 6900 1200 50  0000 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny3216_ATtiny1616-data-sheet-40001997B.pdf" H 6800 2150 50  0001 C CNN
	1    6800 2150
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-CCU U?
U 1 1 62810291
P 6800 4300
F 0 "U?" H 6271 4391 50  0000 R CNN
F 1 "UFBGA-15" H 6271 4300 50  0000 R CNN
F 2 "Package_BGA:UFBGA-15_3.0x3.0mm_Layout4x4_P0.65mm" H 8050 3300 50  0000 R CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 6800 4300 50  0001 C CNN
	1    6800 4300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny13V-10SSU U?
U 1 1 62810297
P 4300 3550
AR Path="/62810297" Ref="U?"  Part="1" 
AR Path="/627F5198/62810297" Ref="U?"  Part="1" 
F 0 "U?" H 3771 3596 50  0000 R CNN
F 1 "SOIC-8" H 3771 3505 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 2850 50  0000 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2535.pdf" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
