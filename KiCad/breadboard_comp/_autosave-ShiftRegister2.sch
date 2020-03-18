EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 11
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
L 74xx:74LS273 U?
U 1 1 5E576367
P 2950 3500
F 0 "U?" V 3200 4150 50  0000 L CNN
F 1 "74LS273" V 2950 3400 50  0000 L CNN
F 2 "" H 2950 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 2950 3500 50  0001 C CNN
	1    2950 3500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS273 U?
U 1 1 5E57751D
P 5150 3500
F 0 "U?" V 5400 4150 50  0000 L CNN
F 1 "74LS273" V 5150 3400 50  0000 L CNN
F 2 "" H 5150 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 5150 3500 50  0001 C CNN
	1    5150 3500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E578D26
P 3900 3350
F 0 "#PWR?" H 3900 3200 50  0001 C CNN
F 1 "VCC" H 3917 3523 50  0000 C CNN
F 2 "" H 3900 3350 50  0001 C CNN
F 3 "" H 3900 3350 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3350 3900 3500
Wire Wire Line
	3900 3500 3750 3500
$Comp
L power:GND #PWR?
U 1 1 5E578F29
P 2000 3650
F 0 "#PWR?" H 2000 3400 50  0001 C CNN
F 1 "GND" H 2005 3477 50  0000 C CNN
F 2 "" H 2000 3650 50  0001 C CNN
F 3 "" H 2000 3650 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3650 2000 3500
Wire Wire Line
	2000 3500 2150 3500
$Comp
L power:GND #PWR?
U 1 1 5E57911F
P 4200 3650
F 0 "#PWR?" H 4200 3400 50  0001 C CNN
F 1 "GND" H 4205 3477 50  0000 C CNN
F 2 "" H 4200 3650 50  0001 C CNN
F 3 "" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3650 4200 3500
Wire Wire Line
	4200 3500 4350 3500
$Comp
L power:VCC #PWR?
U 1 1 5E579364
P 6100 3350
F 0 "#PWR?" H 6100 3200 50  0001 C CNN
F 1 "VCC" H 6117 3523 50  0000 C CNN
F 2 "" H 6100 3350 50  0001 C CNN
F 3 "" H 6100 3350 50  0001 C CNN
	1    6100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3350 6100 3500
Wire Wire Line
	6100 3500 5950 3500
Text Label 5750 1450 1    50   ~ 0
B0
Text Label 5650 1500 1    50   ~ 0
B1
Text Label 5550 1600 1    50   ~ 0
B2
Text Label 5450 1650 1    50   ~ 0
B3
Text Label 5350 1700 1    50   ~ 0
B4
Text Label 5250 1750 1    50   ~ 0
B5
Text Label 5150 1800 1    50   ~ 0
B6
Text Label 5050 1850 1    50   ~ 0
B7
Entry Wire Line
	5550 1250 5650 1350
Entry Wire Line
	5450 1250 5550 1350
Entry Wire Line
	5350 1250 5450 1350
Entry Wire Line
	5250 1250 5350 1350
Entry Wire Line
	5150 1250 5250 1350
Entry Wire Line
	5050 1250 5150 1350
Entry Wire Line
	4950 1250 5050 1350
Entry Wire Line
	4850 1250 4950 1350
Entry Wire Line
	2650 1250 2750 1350
Entry Wire Line
	2850 1250 2950 1350
Entry Wire Line
	2950 1250 3050 1350
Entry Wire Line
	2750 1250 2850 1350
Entry Wire Line
	3050 1250 3150 1350
Entry Wire Line
	3150 1250 3250 1350
Entry Wire Line
	3250 1250 3350 1350
Entry Wire Line
	3350 1250 3450 1350
Text Label 3550 1450 1    50   ~ 0
B8
Text Label 3450 1500 1    50   ~ 0
B9
Text Label 3350 1600 1    50   ~ 0
B10
Text Label 3250 1650 1    50   ~ 0
B11
Text Label 3150 1700 1    50   ~ 0
B12
Text Label 3050 1750 1    50   ~ 0
B13
Text Label 2950 1800 1    50   ~ 0
B14
Text Label 2850 1850 1    50   ~ 0
B15
Wire Wire Line
	2750 1350 2750 3000
Wire Wire Line
	2850 1350 2850 3000
Wire Wire Line
	2950 1350 2950 3000
Wire Wire Line
	3050 1350 3050 3000
Wire Wire Line
	3150 1350 3150 3000
Wire Wire Line
	3250 1350 3250 3000
Wire Wire Line
	3350 1350 3350 3000
Wire Wire Line
	3450 1350 3450 3000
Wire Wire Line
	4950 1350 4950 3000
Wire Wire Line
	5050 1350 5050 3000
Wire Wire Line
	5150 1350 5150 3000
Wire Wire Line
	5250 1350 5250 3000
Wire Wire Line
	5350 1350 5350 3000
Wire Wire Line
	5450 1350 5450 3000
Wire Wire Line
	5550 1350 5550 3000
Wire Wire Line
	5650 1350 5650 3000
Text HLabel 1000 2500 0    50   Input ~ 0
~RST
Wire Wire Line
	1000 2500 4650 2500
Wire Wire Line
	4650 2500 4650 3000
Wire Bus Line
	1400 1250 8500 1250
Text HLabel 1000 2200 0    50   Input ~ 0
CLK
Text HLabel 1000 2350 0    50   Input ~ 0
SI
$EndSCHEMATC
