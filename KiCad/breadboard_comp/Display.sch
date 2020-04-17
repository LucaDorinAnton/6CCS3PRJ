EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 19
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
L IDT_RAM:MC21605C6W U69
U 1 1 5F489B0A
P 5500 4100
F 0 "U69" V 5800 4450 50  0000 C CNN
F 1 "MC21605C6W" H 5500 4100 50  0000 C CNN
F 2 "" H 5400 4150 50  0001 C CNN
F 3 "" H 5400 4150 50  0001 C CNN
	1    5500 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 5F48A672
P 5500 5250
F 0 "#PWR0169" H 5500 5000 50  0001 C CNN
F 1 "GND" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5250 5500 4900
Wire Wire Line
	5500 4900 6000 4900
Wire Wire Line
	6000 4900 6000 4600
Wire Wire Line
	6000 4600 5900 4600
Connection ~ 5500 4900
Wire Wire Line
	5500 4900 5500 4750
$Comp
L Device:R_Variable R103
U 1 1 5F48ADC6
P 6000 4100
F 0 "R103" H 6128 4146 50  0000 L CNN
F 1 "20k" H 6128 4055 50  0000 L CNN
F 2 "" V 5930 4100 50  0001 C CNN
F 3 "~" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4600 6000 4250
Connection ~ 6000 4600
NoConn ~ 6000 4100
Wire Wire Line
	6000 4100 5900 4100
NoConn ~ 6000 3950
$Comp
L power:VCC #PWR0168
U 1 1 5F48B346
P 5500 2950
F 0 "#PWR0168" H 5500 2800 50  0001 C CNN
F 1 "VCC" H 5517 3123 50  0000 C CNN
F 2 "" H 5500 2950 50  0001 C CNN
F 3 "" H 5500 2950 50  0001 C CNN
	1    5500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2950 5500 3100
Wire Wire Line
	5900 3600 6000 3600
Wire Wire Line
	6000 3600 6000 3100
Wire Wire Line
	6000 3100 5500 3100
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 5500 3450
$Comp
L 74xx:74LS245 U67
U 1 1 5F48B6D5
P 3650 2400
F 0 "U67" H 4050 1850 50  0000 C CNN
F 1 "74LS245" V 3750 2400 50  0000 C CNN
F 2 "" H 3650 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U68
U 1 1 5F48C5A3
P 3650 4400
F 0 "U68" H 4050 3850 50  0000 C CNN
F 1 "74LS245" V 3750 4450 50  0000 C CNN
F 2 "" H 3650 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 3650 4400 50  0001 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4600 5150 4600
Wire Wire Line
	5150 4500 4150 4500
Wire Wire Line
	4150 4400 5150 4400
Wire Wire Line
	5150 4300 4150 4300
Wire Wire Line
	4150 4200 5150 4200
Wire Wire Line
	5150 4100 4150 4100
Wire Wire Line
	4150 4000 5150 4000
Wire Wire Line
	5150 3900 4150 3900
Wire Wire Line
	5150 3800 4650 3800
Wire Wire Line
	4650 3800 4650 2600
Wire Wire Line
	4650 2600 4150 2600
Entry Wire Line
	1950 2500 2050 2600
Entry Wire Line
	1950 3800 2050 3900
Entry Wire Line
	1950 3900 2050 4000
Entry Wire Line
	1950 4000 2050 4100
Entry Wire Line
	1950 4100 2050 4200
Entry Wire Line
	1950 4200 2050 4300
Entry Wire Line
	1950 4300 2050 4400
Entry Wire Line
	1950 4400 2050 4500
Entry Wire Line
	1950 4500 2050 4600
Wire Wire Line
	2050 2600 3150 2600
$Comp
L power:VCC #PWR0165
U 1 1 5F4A0F1F
P 3800 1450
F 0 "#PWR0165" H 3800 1300 50  0001 C CNN
F 1 "VCC" V 3817 1578 50  0000 L CNN
F 2 "" H 3800 1450 50  0001 C CNN
F 3 "" H 3800 1450 50  0001 C CNN
	1    3800 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1600
$Comp
L power:GND #PWR0163
U 1 1 5F4A231B
P 3500 3250
F 0 "#PWR0163" H 3500 3000 50  0001 C CNN
F 1 "GND" V 3505 3122 50  0000 R CNN
F 2 "" H 3500 3250 50  0001 C CNN
F 3 "" H 3500 3250 50  0001 C CNN
	1    3500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3250 3650 3250
$Comp
L power:VCC #PWR0166
U 1 1 5F4A3841
P 3800 3450
F 0 "#PWR0166" H 3800 3300 50  0001 C CNN
F 1 "VCC" V 3817 3578 50  0000 L CNN
F 2 "" H 3800 3450 50  0001 C CNN
F 3 "" H 3800 3450 50  0001 C CNN
	1    3800 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3450 3650 3450
Wire Wire Line
	3650 3450 3650 3600
$Comp
L power:GND #PWR0164
U 1 1 5F4A4EBB
P 3500 5350
F 0 "#PWR0164" H 3500 5100 50  0001 C CNN
F 1 "GND" V 3505 5222 50  0000 R CNN
F 2 "" H 3500 5350 50  0001 C CNN
F 3 "" H 3500 5350 50  0001 C CNN
	1    3500 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5350 3650 5350
Wire Wire Line
	3650 5350 3650 5200
Wire Wire Line
	3150 4600 2050 4600
Wire Wire Line
	2050 4500 3150 4500
Wire Wire Line
	3150 4400 2050 4400
Wire Wire Line
	2050 4300 3150 4300
Wire Wire Line
	3150 4200 2050 4200
Wire Wire Line
	2050 4100 3150 4100
Wire Wire Line
	3150 4000 2050 4000
Wire Wire Line
	2050 3900 3150 3900
$Comp
L power:VCC #PWR0162
U 1 1 5F4B37F1
P 3000 4800
F 0 "#PWR0162" H 3000 4650 50  0001 C CNN
F 1 "VCC" V 3018 4927 50  0000 L CNN
F 2 "" H 3000 4800 50  0001 C CNN
F 3 "" H 3000 4800 50  0001 C CNN
	1    3000 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 4800 3150 4800
$Comp
L power:VCC #PWR0161
U 1 1 5F4B583D
P 3000 2800
F 0 "#PWR0161" H 3000 2650 50  0001 C CNN
F 1 "VCC" V 3018 2927 50  0000 L CNN
F 2 "" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
	1    3000 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2800 3150 2800
Text Notes 1900 3700 1    50   ~ 10
16-Bit Common Bus
Text Label 2150 2600 0    50   ~ 0
B8
$Comp
L power:VCC #PWR?
U 1 1 5F4D77B2
P 5950 1650
AR Path="/5E34AD27/5F4D77B2" Ref="#PWR?"  Part="1" 
AR Path="/5F4881EC/5F4D77B2" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 5950 1500 50  0001 C CNN
F 1 "VCC" H 5967 1823 50  0000 C CNN
F 2 "" H 5950 1650 50  0001 C CNN
F 3 "" H 5950 1650 50  0001 C CNN
	1    5950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4D77B8
P 5950 2150
AR Path="/5E34AD27/5F4D77B8" Ref="#PWR?"  Part="1" 
AR Path="/5F4881EC/5F4D77B8" Ref="#PWR0171"  Part="1" 
F 0 "#PWR0171" H 5950 1900 50  0001 C CNN
F 1 "GND" H 5955 1977 50  0000 C CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4D77BE
P 5950 1900
AR Path="/5E34AD27/5F4D77BE" Ref="C?"  Part="1" 
AR Path="/5F4881EC/5F4D77BE" Ref="C17"  Part="1" 
F 0 "C17" H 6065 1946 50  0000 L CNN
F 1 "0.1 μF" H 6065 1855 50  0000 L CNN
F 2 "" H 5988 1750 50  0001 C CNN
F 3 "~" H 5950 1900 50  0001 C CNN
	1    5950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1750 5950 1650
Wire Wire Line
	5950 2050 5950 2150
Text HLabel 2400 6150 3    50   Input ~ 0
OUT
Text HLabel 2350 3300 0    50   Input ~ 0
CLK
Text HLabel 1950 4900 3    50   BiDi ~ 0
BUS
Connection ~ 4650 2200
Wire Wire Line
	4650 2200 4150 2200
Wire Wire Line
	4650 2300 4650 2200
Wire Wire Line
	4150 2300 4650 2300
Connection ~ 4650 2000
Wire Wire Line
	4650 1900 4150 1900
Wire Wire Line
	4650 2000 4650 1900
Wire Wire Line
	4650 2100 4150 2100
Connection ~ 4650 2100
Wire Wire Line
	4650 2000 4650 2100
Wire Wire Line
	4150 2000 4650 2000
Wire Wire Line
	4750 2200 4650 2200
$Comp
L power:GND #PWR0167
U 1 1 5F491E9C
P 4750 2200
F 0 "#PWR0167" H 4750 1950 50  0001 C CNN
F 1 "GND" V 4755 2072 50  0000 R CNN
F 2 "" H 4750 2200 50  0001 C CNN
F 3 "" H 4750 2200 50  0001 C CNN
	1    4750 2200
	0    -1   -1   0   
$EndComp
Connection ~ 2650 2000
Wire Wire Line
	2650 1900 3150 1900
Wire Wire Line
	2650 2000 2650 1900
Connection ~ 2650 2200
Wire Wire Line
	2650 2300 2650 2200
Wire Wire Line
	3150 2300 2650 2300
Wire Wire Line
	2650 2200 3150 2200
Wire Wire Line
	2650 2100 3150 2100
Connection ~ 2650 2100
Wire Wire Line
	2650 2000 2650 2100
Wire Wire Line
	3150 2000 2650 2000
$Comp
L power:GND #PWR0160
U 1 1 5F49AAE3
P 2500 2200
F 0 "#PWR0160" H 2500 1950 50  0001 C CNN
F 1 "GND" V 2505 2072 50  0000 R CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "" H 2500 2200 50  0001 C CNN
	1    2500 2200
	0    1    1    0   
$EndComp
Text Label 2150 4200 0    50   ~ 0
B4
Text Label 2150 4300 0    50   ~ 0
B3
Text Label 2150 4100 0    50   ~ 0
B5
Text Label 2150 4400 0    50   ~ 0
B2
Text Label 2150 4000 0    50   ~ 0
B6
Text Label 2150 4500 0    50   ~ 0
B1
Text Label 2150 4600 0    50   ~ 0
B0
Text Label 2150 3900 0    50   ~ 0
B7
Wire Wire Line
	3150 2400 2650 2400
Wire Wire Line
	2650 2400 2650 2300
Connection ~ 2650 2300
Wire Wire Line
	2500 2200 2650 2200
Wire Wire Line
	4150 2400 4650 2400
Wire Wire Line
	4650 2400 4650 2300
Connection ~ 4650 2300
$Comp
L 74xx:74LS08 U105
U 1 1 5EB9CB63
P 2850 3400
F 0 "U105" H 2800 3600 50  0000 C CNN
F 1 "74LS08" H 2850 3400 50  0000 C CNN
F 2 "" H 2850 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3250 3650 3200
Wire Wire Line
	2350 3300 2550 3300
Wire Wire Line
	2550 3500 2400 3500
$Comp
L 74xx:74LS04 U66
U 1 1 5EBAA100
P 2600 5300
F 0 "U66" V 2750 5200 50  0000 R CNN
F 1 "74LS04" V 2500 5450 50  0000 R CNN
F 2 "" H 2600 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2600 5300 50  0001 C CNN
	1    2600 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 5800 2600 5800
Wire Wire Line
	2600 5800 2600 5600
Connection ~ 2400 5800
Wire Wire Line
	2400 5800 2400 6150
Wire Wire Line
	2400 3500 2400 5800
Wire Wire Line
	2600 5000 2600 4900
Wire Wire Line
	2600 4900 3150 4900
Wire Wire Line
	2600 4900 2600 3650
Wire Wire Line
	2600 3650 2050 3650
Wire Wire Line
	2050 3650 2050 2900
Connection ~ 2600 4900
Wire Wire Line
	2050 2900 3150 2900
Wire Wire Line
	3150 3400 5000 3400
Wire Wire Line
	5000 3400 5000 3600
Wire Wire Line
	5000 3600 5150 3600
$Comp
L power:GND #PWR0140
U 1 1 5EBBD185
P 5000 3700
F 0 "#PWR0140" H 5000 3450 50  0001 C CNN
F 1 "GND" V 5005 3572 50  0000 R CNN
F 2 "" H 5000 3700 50  0001 C CNN
F 3 "" H 5000 3700 50  0001 C CNN
	1    5000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3700 5150 3700
Wire Wire Line
	3150 2500 2650 2500
Wire Wire Line
	2650 2500 2650 2400
Connection ~ 2650 2400
Wire Wire Line
	4650 2400 4650 2500
Wire Wire Line
	4650 2500 4150 2500
Connection ~ 4650 2400
Wire Wire Line
	2650 2100 2650 2200
Wire Wire Line
	4650 2100 4650 2200
Wire Bus Line
	1950 1700 1950 4900
$EndSCHEMATC
