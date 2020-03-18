EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	1900 900  2000 1000
Entry Wire Line
	2000 900  2100 1000
Entry Wire Line
	2100 900  2200 1000
Entry Wire Line
	2200 900  2300 1000
Entry Wire Line
	4450 900  4550 1000
Entry Wire Line
	4550 900  4650 1000
Entry Wire Line
	4650 900  4750 1000
Entry Wire Line
	4750 900  4850 1000
Entry Wire Line
	7000 900  7100 1000
Entry Wire Line
	7100 900  7200 1000
Entry Wire Line
	7200 900  7300 1000
Entry Wire Line
	7300 900  7400 1000
Entry Wire Line
	9550 900  9650 1000
Entry Wire Line
	9650 900  9750 1000
Entry Wire Line
	9750 900  9850 1000
Entry Wire Line
	9850 900  9950 1000
Wire Wire Line
	9950 1000 9950 2450
Wire Wire Line
	9850 2450 9850 1000
Wire Wire Line
	9750 1000 9750 2450
Wire Wire Line
	9650 2450 9650 1000
Wire Wire Line
	7100 1000 7100 2450
Wire Wire Line
	7200 2450 7200 1000
Wire Wire Line
	7300 1000 7300 2450
Wire Wire Line
	7400 2450 7400 1000
Wire Wire Line
	4850 1000 4850 2450
Wire Wire Line
	4750 2450 4750 1000
Wire Wire Line
	4650 1000 4650 2450
Wire Wire Line
	4550 2450 4550 1000
Wire Wire Line
	2300 1000 2300 2450
Wire Wire Line
	2200 2450 2200 1000
Wire Wire Line
	2100 1000 2100 2450
Wire Wire Line
	2000 2450 2000 1000
$Comp
L power:VCC #PWR?
U 1 1 5E440004
P 10550 800
AR Path="/5E3CB2C3/5E440004" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E440004" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E62AFFD/5E440004" Ref="#PWR?"  Part="1" 
AR Path="/5E418FD1/5E440004" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 10550 650 50  0001 C CNN
F 1 "VCC" H 10567 973 50  0000 C CNN
F 2 "" H 10550 800 50  0001 C CNN
F 3 "" H 10550 800 50  0001 C CNN
	1    10550 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E44000A
P 10550 1300
AR Path="/5E3CB2C3/5E44000A" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E44000A" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E62AFFD/5E44000A" Ref="#PWR?"  Part="1" 
AR Path="/5E418FD1/5E44000A" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 10550 1050 50  0001 C CNN
F 1 "GND" H 10555 1127 50  0000 C CNN
F 2 "" H 10550 1300 50  0001 C CNN
F 3 "" H 10550 1300 50  0001 C CNN
	1    10550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E440010
P 10550 1050
AR Path="/5E3CB2C3/5E440010" Ref="C?"  Part="1" 
AR Path="/5E60DA07/5E440010" Ref="C?"  Part="1" 
AR Path="/5E60DA07/5E62AFFD/5E440010" Ref="C?"  Part="1" 
AR Path="/5E418FD1/5E440010" Ref="C10"  Part="1" 
F 0 "C10" H 10665 1096 50  0000 L CNN
F 1 "0.1 μF" H 10665 1005 50  0000 L CNN
F 2 "" H 10588 900 50  0001 C CNN
F 3 "~" H 10550 1050 50  0001 C CNN
	1    10550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1300 10550 1200
Wire Wire Line
	10550 900  10550 800 
$Comp
L power:VCC #PWR064
U 1 1 5E44091B
P 2750 2800
F 0 "#PWR064" H 2750 2650 50  0001 C CNN
F 1 "VCC" H 2767 2973 50  0000 C CNN
F 2 "" H 2750 2800 50  0001 C CNN
F 3 "" H 2750 2800 50  0001 C CNN
	1    2750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 5E442E4D
P 550 3100
F 0 "#PWR062" H 550 2850 50  0001 C CNN
F 1 "GND" H 555 2927 50  0000 C CNN
F 2 "" H 550 3100 50  0001 C CNN
F 3 "" H 550 3100 50  0001 C CNN
	1    550  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  3100 550  2950
Wire Wire Line
	550  2950 700  2950
Text Notes 4800 900  0    50   ~ 10
16-bit Common Bus
Text HLabel 700  1800 0    50   Input ~ 0
~RST
Wire Wire Line
	700  1800 1000 1800
Wire Wire Line
	1000 1800 1000 2450
Connection ~ 1000 1800
Text HLabel 700  1650 0    50   Input ~ 0
CLK
Wire Wire Line
	700  1650 1200 1650
Wire Wire Line
	1200 2450 1200 1650
Connection ~ 1200 1650
Wire Wire Line
	2750 2950 2600 2950
Wire Wire Line
	2750 2800 2750 2950
$Comp
L 74xx:74LS194 U31
U 1 1 5E4191A5
P 1700 2950
F 0 "U31" V 1950 3700 50  0000 L CNN
F 1 "74LS194" V 1700 2800 50  0000 L CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS194" H 1700 2950 50  0001 C CNN
	1    1700 2950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS194 U36
U 1 1 5E41C101
P 9350 2950
F 0 "U36" V 9600 3700 50  0000 L CNN
F 1 "74LS194" V 9350 2850 50  0000 L CNN
F 2 "" H 9350 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS194" H 9350 2950 50  0001 C CNN
	1    9350 2950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS194 U32
U 1 1 5E41AAA1
P 4250 2950
F 0 "U32" V 4500 3700 50  0000 L CNN
F 1 "74LS194" V 4250 2800 50  0000 L CNN
F 2 "" H 4250 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS194" H 4250 2950 50  0001 C CNN
	1    4250 2950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR077
U 1 1 5E441409
P 10400 3100
F 0 "#PWR077" H 10400 2950 50  0001 C CNN
F 1 "VCC" H 10417 3273 50  0000 C CNN
F 2 "" H 10400 3100 50  0001 C CNN
F 3 "" H 10400 3100 50  0001 C CNN
	1    10400 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR074
U 1 1 5E444D45
P 8200 3100
F 0 "#PWR074" H 8200 2850 50  0001 C CNN
F 1 "GND" H 8205 2927 50  0000 C CNN
F 2 "" H 8200 3100 50  0001 C CNN
F 3 "" H 8200 3100 50  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR073
U 1 1 5E441291
P 7850 2800
F 0 "#PWR073" H 7850 2650 50  0001 C CNN
F 1 "VCC" H 7867 2973 50  0000 C CNN
F 2 "" H 7850 2800 50  0001 C CNN
F 3 "" H 7850 2800 50  0001 C CNN
	1    7850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR068
U 1 1 5E441127
P 5300 2800
F 0 "#PWR068" H 5300 2650 50  0001 C CNN
F 1 "VCC" H 5317 2973 50  0000 C CNN
F 2 "" H 5300 2800 50  0001 C CNN
F 3 "" H 5300 2800 50  0001 C CNN
	1    5300 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR070
U 1 1 5E44433E
P 5650 3100
F 0 "#PWR070" H 5650 2850 50  0001 C CNN
F 1 "GND" H 5655 2927 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5E443710
P 3100 3100
F 0 "#PWR065" H 3100 2850 50  0001 C CNN
F 1 "GND" H 3105 2927 50  0000 C CNN
F 2 "" H 3100 3100 50  0001 C CNN
F 3 "" H 3100 3100 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
Text Notes 6650 6450 2    50   ~ 10
16-bit Common Bus
Wire Wire Line
	7700 6350 7700 5650
Wire Wire Line
	7500 6350 7500 5650
Wire Wire Line
	7300 6350 7300 5650
Wire Wire Line
	7100 6350 7100 5650
Wire Wire Line
	4650 6350 4650 5650
Wire Wire Line
	4350 6350 4350 5650
Wire Wire Line
	4150 6350 4150 5650
Entry Wire Line
	4250 6450 4150 6350
Entry Wire Line
	4350 6450 4250 6350
Entry Wire Line
	4450 6450 4350 6350
Entry Wire Line
	4550 6450 4450 6350
Entry Wire Line
	4650 6450 4550 6350
Entry Wire Line
	4750 6450 4650 6350
Entry Wire Line
	4850 6450 4750 6350
Entry Wire Line
	4950 6450 4850 6350
Entry Wire Line
	7200 6450 7100 6350
Entry Wire Line
	7300 6450 7200 6350
Entry Wire Line
	7400 6450 7300 6350
Entry Wire Line
	7500 6450 7400 6350
Entry Wire Line
	7600 6450 7500 6350
Entry Wire Line
	7700 6450 7600 6350
Entry Wire Line
	7800 6450 7700 6350
Entry Wire Line
	7900 6450 7800 6350
$Comp
L 74xx:74LS245 U35
U 1 1 5E4BA1BE
P 7300 5150
F 0 "U35" V 7550 5800 50  0000 L CNN
F 1 "74LS245" V 7200 5000 50  0000 L CNN
F 2 "" H 7300 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7300 5150 50  0001 C CNN
	1    7300 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 5E4C0431
P 3400 5300
F 0 "#PWR066" H 3400 5050 50  0001 C CNN
F 1 "GND" H 3405 5127 50  0000 C CNN
F 2 "" H 3400 5300 50  0001 C CNN
F 3 "" H 3400 5300 50  0001 C CNN
	1    3400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5300 3400 5150
Wire Wire Line
	3400 5150 3550 5150
$Comp
L power:VCC #PWR069
U 1 1 5E4C2593
P 5300 5000
F 0 "#PWR069" H 5300 4850 50  0001 C CNN
F 1 "VCC" H 5317 5173 50  0000 C CNN
F 2 "" H 5300 5000 50  0001 C CNN
F 3 "" H 5300 5000 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5000 5300 5150
Wire Wire Line
	5300 5150 5150 5150
$Comp
L power:GND #PWR071
U 1 1 5E4C45FA
P 6350 5300
F 0 "#PWR071" H 6350 5050 50  0001 C CNN
F 1 "GND" H 6355 5127 50  0000 C CNN
F 2 "" H 6350 5300 50  0001 C CNN
F 3 "" H 6350 5300 50  0001 C CNN
	1    6350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5300 6350 5150
Wire Wire Line
	6350 5150 6500 5150
$Comp
L power:VCC #PWR075
U 1 1 5E4C6939
P 8250 5000
F 0 "#PWR075" H 8250 4850 50  0001 C CNN
F 1 "VCC" H 8267 5173 50  0000 C CNN
F 2 "" H 8250 5000 50  0001 C CNN
F 3 "" H 8250 5000 50  0001 C CNN
	1    8250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5000 8250 5150
Wire Wire Line
	8250 5150 8100 5150
$Comp
L power:VCC #PWR072
U 1 1 5E4C8BA1
P 6900 4550
F 0 "#PWR072" H 6900 4400 50  0001 C CNN
F 1 "VCC" H 7000 4550 50  0000 C CNN
F 2 "" H 6900 4550 50  0001 C CNN
F 3 "" H 6900 4550 50  0001 C CNN
	1    6900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5650 4250 6350
Wire Wire Line
	4450 5650 4450 6350
Wire Wire Line
	4550 5650 4550 6350
Wire Wire Line
	7200 5650 7200 6350
Wire Wire Line
	7400 5650 7400 6350
Wire Wire Line
	7600 5650 7600 6350
Wire Wire Line
	7800 5650 7800 6350
Wire Wire Line
	4850 6350 4850 5650
Wire Wire Line
	4750 5650 4750 6350
Text HLabel 700  4000 0    50   Input ~ 0
~SO
Wire Wire Line
	6800 4000 6800 4650
Wire Wire Line
	2300 3450 2300 3500
Wire Wire Line
	2200 4200 2200 3450
Wire Wire Line
	2100 3450 2100 4300
Wire Wire Line
	2000 4400 2000 3450
Wire Wire Line
	6900 4650 6900 4550
$Comp
L 74xx:74LS32 U37
U 1 1 5E563ACE
P 10300 2000
F 0 "U37" H 10300 2200 50  0000 C CNN
F 1 "74LS32" H 10300 2000 50  0000 C CNN
F 2 "" H 10300 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10300 2000 50  0001 C CNN
	1    10300 2000
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS32 U4
U 2 1 5E56558B
P 10300 2600
F 0 "U4" H 10300 2800 50  0000 C CNN
F 1 "74LS32" H 10300 2600 50  0000 C CNN
F 2 "" H 10300 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 10300 2600 50  0001 C CNN
	2    10300 2600
	-1   0    0    1   
$EndComp
Text HLabel 11000 1900 2    50   Input ~ 0
SI
Text HLabel 11000 2500 2    50   Input ~ 0
SFR
Text HLabel 11000 2100 2    50   Input ~ 0
SFL
Wire Wire Line
	1400 2450 1400 2000
Wire Wire Line
	1500 2100 1500 2450
$Comp
L 74xx:74LS194 U34
U 1 1 5E41B69C
P 6800 2950
F 0 "U34" V 7050 3700 50  0000 L CNN
F 1 "74LS194" V 6800 2800 50  0000 L CNN
F 2 "" H 6800 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS194" H 6800 2950 50  0001 C CNN
	1    6800 2950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U33
U 1 1 5E4B0C0B
P 4350 5150
F 0 "U33" V 4600 5800 50  0000 L CNN
F 1 "74LS245" V 4250 5000 50  0000 L CNN
F 2 "" H 4350 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4350 5150 50  0001 C CNN
	1    4350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3100 5650 2950
Wire Wire Line
	5650 2950 5800 2950
Wire Wire Line
	5300 2800 5300 2950
Wire Wire Line
	5300 2950 5150 2950
Wire Wire Line
	3100 3100 3100 2950
Wire Wire Line
	3100 2950 3250 2950
Wire Wire Line
	1000 1800 3550 1800
Wire Wire Line
	3550 2450 3550 1800
Connection ~ 3550 1800
Wire Wire Line
	1400 2000 3950 2000
Wire Wire Line
	3950 2450 3950 2000
Connection ~ 3950 2000
Wire Wire Line
	4050 2450 4050 2100
Connection ~ 4050 2100
Wire Wire Line
	3550 1800 6100 1800
Wire Wire Line
	1200 1650 3750 1650
Wire Wire Line
	3950 2000 6500 2000
Wire Wire Line
	4050 2100 6600 2100
Wire Wire Line
	1500 2100 4050 2100
Wire Wire Line
	3750 2450 3750 1650
Connection ~ 3750 1650
Wire Wire Line
	3750 1650 6300 1650
Wire Wire Line
	6100 2450 6100 1800
Connection ~ 6100 1800
Wire Wire Line
	6300 2450 6300 1650
Connection ~ 6300 1650
Wire Wire Line
	6500 2000 6500 2450
Connection ~ 6500 2000
Wire Wire Line
	6600 2450 6600 2100
Connection ~ 6600 2100
Wire Wire Line
	7850 2800 7850 2950
Wire Wire Line
	7850 2950 7700 2950
Wire Wire Line
	8200 3100 8200 2950
Wire Wire Line
	8200 2950 8350 2950
Wire Wire Line
	11000 1900 10850 1900
Wire Wire Line
	10850 1900 10850 2700
Wire Wire Line
	10850 2700 10600 2700
Connection ~ 10850 1900
Wire Wire Line
	10850 1900 10600 1900
Wire Wire Line
	10600 2500 11000 2500
Wire Wire Line
	11000 2100 10600 2100
Wire Wire Line
	6500 2000 9050 2000
Wire Wire Line
	10000 2600 10000 2100
Wire Wire Line
	6600 2100 9150 2100
Wire Wire Line
	10400 3100 10400 2950
Wire Wire Line
	10400 2950 10250 2950
Wire Wire Line
	8850 1650 8850 2450
Wire Wire Line
	6300 1650 8850 1650
Wire Wire Line
	8650 2450 8650 1800
Wire Wire Line
	6100 1800 8650 1800
Wire Wire Line
	9050 2450 9050 2000
Connection ~ 9050 2000
Wire Wire Line
	9050 2000 10000 2000
Wire Wire Line
	9150 2100 9150 2450
Connection ~ 9150 2100
Wire Wire Line
	9150 2100 10000 2100
Wire Wire Line
	700  4000 3850 4000
$Comp
L power:VCC #PWR067
U 1 1 5E957C58
P 3950 4550
F 0 "#PWR067" H 3950 4400 50  0001 C CNN
F 1 "VCC" H 4050 4550 50  0000 C CNN
F 2 "" H 3950 4550 50  0001 C CNN
F 3 "" H 3950 4550 50  0001 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4650 3850 4000
Connection ~ 3850 4000
Wire Wire Line
	3850 4000 6800 4000
Wire Wire Line
	4850 4650 4850 3500
Wire Wire Line
	4750 3450 4750 4650
Wire Wire Line
	4650 3450 4650 4650
Wire Wire Line
	4550 4650 4550 3600
Wire Wire Line
	2300 4100 4450 4100
Wire Wire Line
	4450 4100 4450 4650
Wire Wire Line
	4350 4650 4350 4200
Wire Wire Line
	4350 4200 2200 4200
Wire Wire Line
	2100 4300 4250 4300
Wire Wire Line
	4250 4300 4250 4650
Wire Wire Line
	4150 4650 4150 4400
Wire Wire Line
	4150 4400 2000 4400
Wire Wire Line
	3950 4550 3950 4650
Wire Wire Line
	7100 3450 7100 3600
Wire Wire Line
	7200 3450 7200 4650
Wire Wire Line
	7300 3450 7300 4650
Wire Wire Line
	7400 4650 7400 3500
Wire Wire Line
	7500 4650 7500 3600
Wire Wire Line
	7500 3600 8000 3600
Wire Wire Line
	9650 3600 9650 3450
Wire Wire Line
	9750 3450 9750 3700
Wire Wire Line
	9750 3700 7600 3700
Wire Wire Line
	7600 3700 7600 4650
Wire Wire Line
	7700 3800 9850 3800
Wire Wire Line
	9850 3800 9850 3450
Wire Wire Line
	7700 3800 7700 4650
Wire Wire Line
	9950 3450 9950 3900
Wire Wire Line
	9950 3900 7800 3900
Wire Wire Line
	7800 3900 7800 4650
Wire Wire Line
	2300 3500 2900 3500
Wire Wire Line
	2900 3500 2900 2250
Wire Wire Line
	2900 2250 4350 2250
Wire Wire Line
	4350 2250 4350 2450
Connection ~ 2300 3500
Wire Wire Line
	2300 3500 2300 4100
Wire Wire Line
	4850 3500 5450 3500
Wire Wire Line
	5450 3500 5450 2250
Wire Wire Line
	5450 2250 6900 2250
Wire Wire Line
	6900 2250 6900 2450
Connection ~ 4850 3500
Wire Wire Line
	4850 3500 4850 3450
Wire Wire Line
	7400 3500 8050 3500
Wire Wire Line
	8050 3500 8050 2250
Wire Wire Line
	8050 2250 9450 2250
Wire Wire Line
	9450 2250 9450 2450
Connection ~ 7400 3500
Wire Wire Line
	7400 3500 7400 3450
$Comp
L power:GND #PWR076
U 1 1 5EA19FAA
P 9350 2400
F 0 "#PWR076" H 9350 2150 50  0001 C CNN
F 1 "GND" H 9450 2400 50  0000 C CNN
F 2 "" H 9350 2400 50  0001 C CNN
F 3 "" H 9350 2400 50  0001 C CNN
	1    9350 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 2400 9350 2450
Wire Wire Line
	8000 3600 8000 2350
Wire Wire Line
	8000 2350 6800 2350
Wire Wire Line
	6800 2350 6800 2450
Connection ~ 8000 3600
Wire Wire Line
	8000 3600 9650 3600
Wire Wire Line
	7100 3600 5400 3600
Wire Wire Line
	5400 3600 5400 2350
Wire Wire Line
	5400 2350 4250 2350
Wire Wire Line
	4250 2350 4250 2450
Connection ~ 7100 3600
Wire Wire Line
	7100 3600 7100 4650
Wire Wire Line
	4550 3600 2850 3600
Wire Wire Line
	2850 3600 2850 2350
Wire Wire Line
	2850 2350 1700 2350
Wire Wire Line
	1700 2350 1700 2450
Connection ~ 4550 3600
Wire Wire Line
	4550 3600 4550 3450
$Comp
L power:GND #PWR063
U 1 1 5EA505DD
P 1800 2250
F 0 "#PWR063" H 1800 2000 50  0001 C CNN
F 1 "GND" V 1805 2122 50  0000 R CNN
F 2 "" H 1800 2250 50  0001 C CNN
F 3 "" H 1800 2250 50  0001 C CNN
	1    1800 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2250 1800 2450
Wire Bus Line
	1700 6450 9900 6450
Wire Bus Line
	1500 900  10000 900 
Text Label 9950 1250 1    50   ~ 0
B0
Text Label 9850 1250 1    50   ~ 0
B1
Text Label 9750 1250 1    50   ~ 0
B2
Text Label 9650 1250 1    50   ~ 0
B3
Text Label 7400 1250 1    50   ~ 0
B4
Text Label 7300 1250 1    50   ~ 0
B5
Text Label 7200 1250 1    50   ~ 0
B6
Text Label 7100 1250 1    50   ~ 0
B7
Text Label 4850 1250 1    50   ~ 0
B8
Text Label 4750 1250 1    50   ~ 0
B9
Text Label 4650 1250 1    50   ~ 0
B10
Text Label 4550 1250 1    50   ~ 0
B11
Text Label 2300 1250 1    50   ~ 0
B12
Text Label 2200 1250 1    50   ~ 0
B13
Text Label 2100 1250 1    50   ~ 0
B14
Text Label 2000 1250 1    50   ~ 0
B15
Text HLabel 1500 900  0    50   BiDi ~ 0
BUS
Text Label 7800 6300 1    50   ~ 0
B0
Text Label 7700 6300 1    50   ~ 0
B1
Text Label 7600 6300 1    50   ~ 0
B2
Text Label 7500 6300 1    50   ~ 0
B3
Text Label 7400 6300 1    50   ~ 0
B4
Text Label 7300 6300 1    50   ~ 0
B5
Text Label 7200 6300 1    50   ~ 0
B6
Text Label 7100 6300 1    50   ~ 0
B7
Text Label 4850 6300 1    50   ~ 0
B8
Text Label 4750 6300 1    50   ~ 0
B9
Text Label 4650 6300 1    50   ~ 0
B10
Text Label 4550 6300 1    50   ~ 0
B11
Text Label 4450 6300 1    50   ~ 0
B12
Text Label 4350 6300 1    50   ~ 0
B13
Text Label 4250 6300 1    50   ~ 0
B14
Text Label 4150 6300 1    50   ~ 0
B15
Text HLabel 1700 6450 0    50   BiDi ~ 0
BUS
$EndSCHEMATC
