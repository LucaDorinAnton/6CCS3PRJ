EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 19
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
L 74xx:74LS273 U65
U 1 1 5F47C6D0
P 3350 2650
F 0 "U65" V 3650 3300 50  0000 L CNN
F 1 "74LS273" V 3350 2500 50  0000 L CNN
F 2 "" H 3350 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 3350 2650 50  0001 C CNN
	1    3350 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 5F47C9E8
P 2400 2800
F 0 "#PWR0156" H 2400 2550 50  0001 C CNN
F 1 "GND" H 2405 2627 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2800 2400 2650
Wire Wire Line
	2400 2650 2550 2650
$Comp
L power:VCC #PWR0159
U 1 1 5F47CB69
P 4300 2500
F 0 "#PWR0159" H 4300 2350 50  0001 C CNN
F 1 "VCC" H 4317 2673 50  0000 C CNN
F 2 "" H 4300 2500 50  0001 C CNN
F 3 "" H 4300 2500 50  0001 C CNN
	1    4300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2500 4300 2650
Wire Wire Line
	4300 2650 4150 2650
$Comp
L 74xx:74LS08 U64
U 1 1 5F47CE74
P 2350 1250
F 0 "U64" H 2550 1150 50  0000 C CNN
F 1 "74LS08" H 2350 1250 50  0000 C CNN
F 2 "" H 2350 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2350 1250 50  0001 C CNN
	1    2350 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 5F47D7B6
P 3350 3650
F 0 "#PWR0158" H 3350 3400 50  0001 C CNN
F 1 "GND" H 3355 3477 50  0000 C CNN
F 2 "" H 3350 3650 50  0001 C CNN
F 3 "" H 3350 3650 50  0001 C CNN
	1    3350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3450 3150 3150
Wire Wire Line
	3250 3150 3250 3450
Connection ~ 3250 3450
Wire Wire Line
	3250 3450 3150 3450
Wire Wire Line
	3350 3450 3350 3150
Connection ~ 3350 3450
Wire Wire Line
	3350 3450 3250 3450
Wire Wire Line
	3550 3450 3550 3150
Wire Wire Line
	3450 3150 3450 3450
Connection ~ 3450 3450
Wire Wire Line
	3450 3450 3550 3450
Wire Wire Line
	3350 3450 3450 3450
Wire Wire Line
	3350 3650 3350 3450
$Comp
L power:GND #PWR0157
U 1 1 5F47F150
P 3350 1650
F 0 "#PWR0157" H 3350 1400 50  0001 C CNN
F 1 "GND" H 3355 1477 50  0000 C CNN
F 2 "" H 3350 1650 50  0001 C CNN
F 3 "" H 3350 1650 50  0001 C CNN
	1    3350 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 1850 3550 2150
Wire Wire Line
	3450 2150 3450 1850
Connection ~ 3450 1850
Wire Wire Line
	3450 1850 3550 1850
Wire Wire Line
	3350 1850 3350 2150
Connection ~ 3350 1850
Wire Wire Line
	3350 1850 3450 1850
Wire Wire Line
	3150 1850 3150 2150
Wire Wire Line
	3250 2150 3250 1850
Connection ~ 3250 1850
Wire Wire Line
	3250 1850 3150 1850
Wire Wire Line
	3350 1850 3250 1850
Wire Wire Line
	3350 1650 3350 1850
Text HLabel 1650 1150 0    50   Input ~ 0
CLK
Text HLabel 1650 1350 0    50   Input ~ 0
FI
Text HLabel 1650 1650 0    50   Input ~ 0
~RST
Wire Wire Line
	1650 1650 2850 1650
Wire Wire Line
	2850 1650 2850 2150
Wire Wire Line
	2950 2150 2950 1250
Wire Wire Line
	2650 1250 2950 1250
Wire Wire Line
	2050 1150 1650 1150
Wire Wire Line
	1650 1350 2050 1350
Text HLabel 3650 1150 1    50   Input ~ 0
CF
Text HLabel 3750 1150 1    50   Input ~ 0
ZF
Text HLabel 3850 1150 1    50   Input ~ 0
PF
Wire Wire Line
	3850 1150 3850 2150
Wire Wire Line
	3750 2150 3750 1150
Wire Wire Line
	3650 1150 3650 2150
Text HLabel 3650 4150 3    50   Output ~ 0
CF_O
Text HLabel 3750 4150 3    50   Output ~ 0
ZF_O
Text HLabel 3850 4150 3    50   Output ~ 0
PF_O
Wire Wire Line
	3850 4150 3850 3150
Wire Wire Line
	3750 3150 3750 4150
Wire Wire Line
	3650 4150 3650 3150
$Comp
L power:VCC #PWR?
U 1 1 5F486F42
P 1550 2050
AR Path="/5E34AD27/5F486F42" Ref="#PWR?"  Part="1" 
AR Path="/5F46F293/5F486F42" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 1550 1900 50  0001 C CNN
F 1 "VCC" H 1567 2223 50  0000 C CNN
F 2 "" H 1550 2050 50  0001 C CNN
F 3 "" H 1550 2050 50  0001 C CNN
	1    1550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F486F48
P 1550 2550
AR Path="/5E34AD27/5F486F48" Ref="#PWR?"  Part="1" 
AR Path="/5F46F293/5F486F48" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 1550 2300 50  0001 C CNN
F 1 "GND" H 1555 2377 50  0000 C CNN
F 2 "" H 1550 2550 50  0001 C CNN
F 3 "" H 1550 2550 50  0001 C CNN
	1    1550 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F486F4E
P 1550 2300
AR Path="/5E34AD27/5F486F4E" Ref="C?"  Part="1" 
AR Path="/5F46F293/5F486F4E" Ref="C16"  Part="1" 
F 0 "C16" H 1665 2346 50  0000 L CNN
F 1 "0.1 μF" H 1665 2255 50  0000 L CNN
F 2 "" H 1588 2150 50  0001 C CNN
F 3 "~" H 1550 2300 50  0001 C CNN
	1    1550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2150 1550 2050
Wire Wire Line
	1550 2450 1550 2550
$EndSCHEMATC
