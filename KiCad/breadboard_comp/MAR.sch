EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 19
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
L 74xx:74LS273 U54
U 1 1 5E4571CD
P 2100 2500
F 0 "U54" V 2400 3150 50  0000 L CNN
F 1 "74LS273" V 2100 2350 50  0000 L CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 2100 2500 50  0001 C CNN
	1    2100 2500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS273 U55
U 1 1 5E457C3A
P 4100 2500
F 0 "U55" V 4400 3150 50  0000 L CNN
F 1 "74LS273" V 4100 2350 50  0000 L CNN
F 2 "" H 4100 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 4100 2500 50  0001 C CNN
	1    4100 2500
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0131
U 1 1 5E45A3D8
P 3050 2350
F 0 "#PWR0131" H 3050 2200 50  0001 C CNN
F 1 "VCC" H 3067 2523 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2500 3050 2500
Wire Wire Line
	3050 2500 3050 2350
$Comp
L power:GND #PWR0128
U 1 1 5E45A71B
P 1150 2650
F 0 "#PWR0128" H 1150 2400 50  0001 C CNN
F 1 "GND" H 1155 2477 50  0000 C CNN
F 2 "" H 1150 2650 50  0001 C CNN
F 3 "" H 1150 2650 50  0001 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2650 1150 2500
Wire Wire Line
	1150 2500 1300 2500
$Comp
L power:GND #PWR0132
U 1 1 5E45A911
P 3150 2650
F 0 "#PWR0132" H 3150 2400 50  0001 C CNN
F 1 "GND" H 3155 2477 50  0000 C CNN
F 2 "" H 3150 2650 50  0001 C CNN
F 3 "" H 3150 2650 50  0001 C CNN
	1    3150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2500 3150 2650
Wire Wire Line
	3150 2500 3300 2500
$Comp
L power:VCC #PWR0133
U 1 1 5E45AD5F
P 5050 2350
F 0 "#PWR0133" H 5050 2200 50  0001 C CNN
F 1 "VCC" H 5067 2523 50  0000 C CNN
F 2 "" H 5050 2350 50  0001 C CNN
F 3 "" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2350 5050 2500
Wire Wire Line
	5050 2500 4900 2500
Text HLabel 5200 1100 2    50   Input ~ 0
~RST
Text HLabel 5500 1750 2    50   Input ~ 0
MI
Entry Wire Line
	3800 750  3900 850 
Entry Wire Line
	2400 750  2500 850 
Entry Wire Line
	2500 750  2600 850 
Entry Wire Line
	3900 750  4000 850 
Entry Wire Line
	4000 750  4100 850 
Entry Wire Line
	4100 750  4200 850 
Entry Wire Line
	4200 750  4300 850 
Entry Wire Line
	4300 750  4400 850 
Entry Wire Line
	4400 750  4500 850 
Entry Wire Line
	4500 750  4600 850 
Wire Wire Line
	4500 2000 4500 850 
Wire Wire Line
	4400 850  4400 2000
Wire Wire Line
	4300 2000 4300 850 
Wire Wire Line
	4200 850  4200 2000
Wire Wire Line
	4100 2000 4100 850 
Wire Wire Line
	4000 850  4000 2000
Wire Wire Line
	3900 2000 3900 850 
Wire Wire Line
	2600 850  2600 2000
Wire Wire Line
	2500 2000 2500 850 
$Comp
L power:GND #PWR0130
U 1 1 5E467D50
P 2400 1700
F 0 "#PWR0130" H 2400 1450 50  0001 C CNN
F 1 "GND" H 2405 1527 50  0000 C CNN
F 2 "" H 2400 1700 50  0001 C CNN
F 3 "" H 2400 1700 50  0001 C CNN
	1    2400 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2000 2400 1750
Wire Wire Line
	2300 2000 2300 1750
Wire Wire Line
	2300 1750 2400 1750
Connection ~ 2400 1750
Wire Wire Line
	2400 1750 2400 1700
Wire Wire Line
	2300 1750 2200 1750
Wire Wire Line
	1900 1750 1900 2000
Connection ~ 2300 1750
Wire Wire Line
	2000 2000 2000 1750
Connection ~ 2000 1750
Wire Wire Line
	2000 1750 1900 1750
Wire Wire Line
	2100 2000 2100 1750
Connection ~ 2100 1750
Wire Wire Line
	2100 1750 2000 1750
Wire Wire Line
	2200 1750 2200 2000
Connection ~ 2200 1750
Wire Wire Line
	2200 1750 2100 1750
$Comp
L power:GND #PWR0129
U 1 1 5E46B764
P 2200 3600
F 0 "#PWR0129" H 2200 3350 50  0001 C CNN
F 1 "GND" H 2205 3427 50  0000 C CNN
F 2 "" H 2200 3600 50  0001 C CNN
F 3 "" H 2200 3600 50  0001 C CNN
	1    2200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3000 2300 3500
Wire Wire Line
	2300 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3000
Wire Wire Line
	2200 3000 2200 3500
Wire Wire Line
	2200 3500 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	2100 3000 2100 3500
Wire Wire Line
	2100 3500 2200 3500
Connection ~ 2200 3500
Wire Wire Line
	2000 3000 2000 3500
Wire Wire Line
	2000 3500 2100 3500
Connection ~ 2100 3500
Wire Wire Line
	1900 3000 1900 3500
Wire Wire Line
	1900 3500 2000 3500
Connection ~ 2000 3500
Text HLabel 5500 1950 2    50   Input ~ 0
CLK
Wire Wire Line
	5200 1100 3600 1100
Wire Wire Line
	1600 1100 1600 2000
Wire Wire Line
	3600 2000 3600 1100
Connection ~ 3600 1100
Wire Wire Line
	3600 1100 1600 1100
$Comp
L 74xx:74LS08 U56
U 1 1 5EA5BF2C
P 4950 1850
F 0 "U56" H 5150 2000 50  0000 C CNN
F 1 "74LS08" H 4950 1850 50  0000 C CNN
F 2 "" H 4950 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4950 1850 50  0001 C CNN
	1    4950 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1950 5250 1950
Wire Wire Line
	5250 1750 5500 1750
Wire Wire Line
	4650 1850 3700 1850
Wire Wire Line
	1700 1850 1700 2000
Wire Wire Line
	3700 2000 3700 1850
Connection ~ 3700 1850
Wire Wire Line
	3700 1850 1700 1850
Text Notes 2700 750  0    50   ~ 10
16-Bit Common Bus
$Comp
L power:VCC #PWR?
U 1 1 5EFFC7C1
P 1000 3300
AR Path="/5E3CB2C3/5EFFC7C1" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5EFFC7C1" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5EFFC7C1" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5EFFC7C1" Ref="#PWR?"  Part="1" 
AR Path="/5EF95BB7/5EFFC7C1" Ref="#PWR?"  Part="1" 
AR Path="/5E4488B6/5EFFC7C1" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 1000 3150 50  0001 C CNN
F 1 "VCC" H 1017 3473 50  0000 C CNN
F 2 "" H 1000 3300 50  0001 C CNN
F 3 "" H 1000 3300 50  0001 C CNN
	1    1000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFFC7C7
P 1000 3800
AR Path="/5E3CB2C3/5EFFC7C7" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5EFFC7C7" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5EFFC7C7" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5EFFC7C7" Ref="#PWR?"  Part="1" 
AR Path="/5EF95BB7/5EFFC7C7" Ref="#PWR?"  Part="1" 
AR Path="/5E4488B6/5EFFC7C7" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1000 3550 50  0001 C CNN
F 1 "GND" H 1005 3627 50  0000 C CNN
F 2 "" H 1000 3800 50  0001 C CNN
F 3 "" H 1000 3800 50  0001 C CNN
	1    1000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EFFC7CD
P 1000 3550
AR Path="/5E3CB2C3/5EFFC7CD" Ref="C?"  Part="1" 
AR Path="/5E60DA07/5EFFC7CD" Ref="C?"  Part="1" 
AR Path="/5E638028/5EFFC7CD" Ref="C?"  Part="1" 
AR Path="/5E649D50/5EFFC7CD" Ref="C?"  Part="1" 
AR Path="/5EF95BB7/5EFFC7CD" Ref="C?"  Part="1" 
AR Path="/5E4488B6/5EFFC7CD" Ref="C14"  Part="1" 
F 0 "C14" H 1115 3596 50  0000 L CNN
F 1 "0.1 μF" H 1115 3505 50  0000 L CNN
F 2 "" H 1038 3400 50  0001 C CNN
F 3 "~" H 1000 3550 50  0001 C CNN
	1    1000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3800 1000 3700
Wire Wire Line
	1000 3400 1000 3300
Wire Wire Line
	550  5500 550  4300
Text HLabel 4500 3500 3    50   Output ~ 0
MAR_1
Text HLabel 4300 3500 3    50   Output ~ 0
MAR_3
Text HLabel 4400 3500 3    50   Output ~ 0
MAR_2
Text HLabel 4200 3500 3    50   Output ~ 0
MAR_4
Text HLabel 4100 3500 3    50   Output ~ 0
MAR_5
Text HLabel 4000 3500 3    50   Output ~ 0
MAR_6
Text HLabel 3900 3500 3    50   Output ~ 0
MAR_7
Text HLabel 2600 3500 3    50   Output ~ 0
MAR_8
Text HLabel 2500 3500 3    50   Output ~ 0
MAR_9
Wire Wire Line
	2500 3000 2500 3500
Wire Wire Line
	2600 3500 2600 3000
Wire Wire Line
	3900 3000 3900 3500
Wire Wire Line
	4000 3500 4000 3000
Wire Wire Line
	4100 3000 4100 3500
Wire Wire Line
	4200 3500 4200 3000
Wire Wire Line
	4300 3000 4300 3500
Wire Wire Line
	4400 3500 4400 3000
Wire Wire Line
	4500 3000 4500 3500
Wire Wire Line
	4600 3500 4600 3000
Text Label 4600 950  1    50   ~ 0
B0
Text Label 4500 950  1    50   ~ 0
B1
Text Label 4400 950  1    50   ~ 0
B2
Text Label 4300 950  1    50   ~ 0
B3
Text Label 4200 950  1    50   ~ 0
B4
Text Label 4100 950  1    50   ~ 0
B5
Text Label 4000 950  1    50   ~ 0
B6
Text Label 3900 950  1    50   ~ 0
B7
Text Label 2600 950  1    50   ~ 0
B8
Text Label 2500 950  1    50   ~ 0
B9
Text HLabel 4600 3500 3    50   Output ~ 0
MAR_0
Wire Wire Line
	2200 3600 2200 3500
$Comp
L power:VCC #PWR0137
U 1 1 6010484A
P 7900 3100
AR Path="/5E4488B6/6010484A" Ref="#PWR0137"  Part="1" 
AR Path="/5F379153/6010484A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0137" H 7900 2950 50  0001 C CNN
F 1 "VCC" H 7917 3273 50  0000 C CNN
F 2 "" H 7900 3100 50  0001 C CNN
F 3 "" H 7900 3100 50  0001 C CNN
	1    7900 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R101
U 1 1 60104850
P 7600 2700
AR Path="/5E4488B6/60104850" Ref="R101"  Part="1" 
AR Path="/5F379153/60104850" Ref="R?"  Part="1" 
F 0 "R101" V 7700 2700 50  0000 C CNN
F 1 "1k" V 7600 2700 50  0000 C CNN
F 2 "" V 7530 2700 50  0001 C CNN
F 3 "~" H 7600 2700 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R102
U 1 1 60104856
P 7900 2700
AR Path="/5E4488B6/60104856" Ref="R102"  Part="1" 
AR Path="/5F379153/60104856" Ref="R?"  Part="1" 
F 0 "R102" V 8000 2700 50  0000 C CNN
F 1 "1k" V 7900 2700 50  0000 C CNN
F 2 "" V 7830 2700 50  0001 C CNN
F 3 "~" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2850 7600 2950
Wire Wire Line
	7600 2950 7900 2950
Wire Wire Line
	7900 2950 7900 2850
$Comp
L Device:LED D95
U 1 1 6010485F
P 7900 2250
AR Path="/5E4488B6/6010485F" Ref="D95"  Part="1" 
AR Path="/5F379153/6010485F" Ref="D?"  Part="1" 
F 0 "D95" H 7900 2150 50  0000 C CNN
F 1 "LED" H 7900 2350 50  0000 C CNN
F 2 "" H 7900 2250 50  0001 C CNN
F 3 "~" H 7900 2250 50  0001 C CNN
	1    7900 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D94
U 1 1 60104865
P 7600 2250
AR Path="/5E4488B6/60104865" Ref="D94"  Part="1" 
AR Path="/5F379153/60104865" Ref="D?"  Part="1" 
F 0 "D94" H 7600 2150 50  0000 C CNN
F 1 "LED" H 7600 2350 50  0000 C CNN
F 2 "" H 7600 2250 50  0001 C CNN
F 3 "~" H 7600 2250 50  0001 C CNN
	1    7600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2400 7600 2550
Wire Wire Line
	7900 2550 7900 2400
$Comp
L Switch:SW_SPDT SW5
U 1 1 6010486D
P 7750 1700
AR Path="/5E4488B6/6010486D" Ref="SW5"  Part="1" 
AR Path="/5F379153/6010486D" Ref="SW?"  Part="1" 
F 0 "SW5" H 7750 1550 50  0000 C CNN
F 1 "SW_SPDT" H 7700 1900 50  0000 C CNN
F 2 "" H 7750 1700 50  0001 C CNN
F 3 "~" H 7750 1700 50  0001 C CNN
	1    7750 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1900 7650 2000
Wire Wire Line
	7650 2000 7600 2000
Wire Wire Line
	7600 2000 7600 2100
Wire Wire Line
	7900 2100 7900 2000
Wire Wire Line
	7900 2000 7850 2000
Wire Wire Line
	7850 2000 7850 1900
$Comp
L power:GND #PWR0136
U 1 1 60104879
P 7900 1350
AR Path="/5E4488B6/60104879" Ref="#PWR0136"  Part="1" 
AR Path="/5F379153/60104879" Ref="#PWR?"  Part="1" 
F 0 "#PWR0136" H 7900 1100 50  0001 C CNN
F 1 "GND" H 7905 1177 50  0000 C CNN
F 2 "" H 7900 1350 50  0001 C CNN
F 3 "" H 7900 1350 50  0001 C CNN
	1    7900 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 1350 7750 1350
Wire Wire Line
	7750 1350 7750 1500
Wire Wire Line
	7600 2000 7300 2000
Connection ~ 7600 2000
Text HLabel 7300 1600 1    50   Output ~ 0
PROG
Wire Wire Line
	7900 3100 7900 2950
Connection ~ 7900 2950
Wire Wire Line
	7300 1600 7300 2000
Wire Wire Line
	6300 1600 6300 2000
Connection ~ 6900 2950
Wire Wire Line
	6900 3100 6900 2950
Text HLabel 6300 1600 1    50   Output ~ 0
ARDUINO
Connection ~ 6600 2000
Wire Wire Line
	6600 2000 6300 2000
Wire Wire Line
	6750 1350 6750 1500
Wire Wire Line
	6900 1350 6750 1350
$Comp
L power:GND #PWR0134
U 1 1 6010488F
P 6900 1350
AR Path="/5E4488B6/6010488F" Ref="#PWR0134"  Part="1" 
AR Path="/5F379153/6010488F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0134" H 6900 1100 50  0001 C CNN
F 1 "GND" H 6905 1177 50  0000 C CNN
F 2 "" H 6900 1350 50  0001 C CNN
F 3 "" H 6900 1350 50  0001 C CNN
	1    6900 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2000 6850 1900
Wire Wire Line
	6900 2000 6850 2000
Wire Wire Line
	6900 2100 6900 2000
Wire Wire Line
	6600 2000 6600 2100
Wire Wire Line
	6650 2000 6600 2000
Wire Wire Line
	6650 1900 6650 2000
$Comp
L Switch:SW_SPDT SW4
U 1 1 6010489B
P 6750 1700
AR Path="/5E4488B6/6010489B" Ref="SW4"  Part="1" 
AR Path="/5F379153/6010489B" Ref="SW?"  Part="1" 
F 0 "SW4" H 6750 1550 50  0000 C CNN
F 1 "SW_SPDT" H 6700 1900 50  0000 C CNN
F 2 "" H 6750 1700 50  0001 C CNN
F 3 "~" H 6750 1700 50  0001 C CNN
	1    6750 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2550 6900 2400
Wire Wire Line
	6600 2400 6600 2550
$Comp
L Device:LED D92
U 1 1 601048A3
P 6600 2250
AR Path="/5E4488B6/601048A3" Ref="D92"  Part="1" 
AR Path="/5F379153/601048A3" Ref="D?"  Part="1" 
F 0 "D92" H 6600 2150 50  0000 C CNN
F 1 "LED" H 6600 2350 50  0000 C CNN
F 2 "" H 6600 2250 50  0001 C CNN
F 3 "~" H 6600 2250 50  0001 C CNN
	1    6600 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D93
U 1 1 601048A9
P 6900 2250
AR Path="/5E4488B6/601048A9" Ref="D93"  Part="1" 
AR Path="/5F379153/601048A9" Ref="D?"  Part="1" 
F 0 "D93" H 6900 2150 50  0000 C CNN
F 1 "LED" H 6900 2350 50  0000 C CNN
F 2 "" H 6900 2250 50  0001 C CNN
F 3 "~" H 6900 2250 50  0001 C CNN
	1    6900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2950 6900 2850
Wire Wire Line
	6600 2950 6900 2950
Wire Wire Line
	6600 2850 6600 2950
$Comp
L Device:R R100
U 1 1 601048B2
P 6900 2700
AR Path="/5E4488B6/601048B2" Ref="R100"  Part="1" 
AR Path="/5F379153/601048B2" Ref="R?"  Part="1" 
F 0 "R100" V 7000 2700 50  0000 C CNN
F 1 "1k" V 6900 2700 50  0000 C CNN
F 2 "" V 6830 2700 50  0001 C CNN
F 3 "~" H 6900 2700 50  0001 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R99
U 1 1 601048B8
P 6600 2700
AR Path="/5E4488B6/601048B8" Ref="R99"  Part="1" 
AR Path="/5F379153/601048B8" Ref="R?"  Part="1" 
F 0 "R99" V 6700 2700 50  0000 C CNN
F 1 "1k" V 6600 2700 50  0000 C CNN
F 2 "" V 6530 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0135
U 1 1 601048BE
P 6900 3100
AR Path="/5E4488B6/601048BE" Ref="#PWR0135"  Part="1" 
AR Path="/5F379153/601048BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0135" H 6900 2950 50  0001 C CNN
F 1 "VCC" H 6917 3273 50  0000 C CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	-1   0    0    1   
$EndComp
Text HLabel 5200 750  2    50   BiDi ~ 0
BUS
Wire Wire Line
	4600 2000 4600 850 
Wire Bus Line
	500  750  5200 750 
$EndSCHEMATC
