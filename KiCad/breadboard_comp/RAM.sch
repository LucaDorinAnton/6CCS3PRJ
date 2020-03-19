EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 18 18
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
L IDT_RAM:IDT6116SA U103
U 1 1 5E446B94
P 5600 3100
F 0 "U103" V 5300 2550 50  0000 C CNN
F 1 "IDT6116SA" V 5650 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W10.16mm_LongPads" H 5650 2500 50  0001 C CNN
F 3 "" H 5600 3100 50  0001 C CNN
	1    5600 3100
	0    -1   -1   0   
$EndComp
$Comp
L IDT_RAM:IDT6116SA U104
U 1 1 5E447DBE
P 7000 3100
F 0 "U104" V 6700 2550 50  0000 C CNN
F 1 "IDT6116SA" V 7050 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W10.16mm_LongPads" H 7050 2500 50  0001 C CNN
F 3 "" H 7000 3100 50  0001 C CNN
	1    7000 3100
	0    -1   -1   0   
$EndComp
Text HLabel 6800 5500 3    50   Input ~ 0
A0
Text HLabel 6700 5500 3    50   Input ~ 0
A1
Text HLabel 6600 5500 3    50   Input ~ 0
A2
Text HLabel 6500 5500 3    50   Input ~ 0
A3
Text HLabel 6400 5500 3    50   Input ~ 0
A4
Text HLabel 6300 5500 3    50   Input ~ 0
A5
Text HLabel 6200 5500 3    50   Input ~ 0
A6
Text HLabel 6100 5500 3    50   Input ~ 0
A7
Text HLabel 4300 750  0    50   Input ~ 0
A8
Text HLabel 4300 650  0    50   Input ~ 0
A9
Text HLabel 10150 700  0    50   Input ~ 0
~RO
$Comp
L power:VCC #PWR?
U 1 1 5E72FAA4
P 10250 5150
AR Path="/5E3CB2C3/5E72FAA4" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E72FAA4" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5E72FAA4" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5E72FAA4" Ref="#PWR?"  Part="1" 
AR Path="/5E44241B/5E72FAA4" Ref="#PWR0269"  Part="1" 
F 0 "#PWR0269" H 10250 5000 50  0001 C CNN
F 1 "VCC" H 10267 5323 50  0000 C CNN
F 2 "" H 10250 5150 50  0001 C CNN
F 3 "" H 10250 5150 50  0001 C CNN
	1    10250 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E72FAAA
P 10250 5650
AR Path="/5E3CB2C3/5E72FAAA" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5E72FAAA" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5E72FAAA" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5E72FAAA" Ref="#PWR?"  Part="1" 
AR Path="/5E44241B/5E72FAAA" Ref="#PWR0270"  Part="1" 
F 0 "#PWR0270" H 10250 5400 50  0001 C CNN
F 1 "GND" H 10255 5477 50  0000 C CNN
F 2 "" H 10250 5650 50  0001 C CNN
F 3 "" H 10250 5650 50  0001 C CNN
	1    10250 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E72FAB0
P 10250 5400
AR Path="/5E3CB2C3/5E72FAB0" Ref="C?"  Part="1" 
AR Path="/5E60DA07/5E72FAB0" Ref="C?"  Part="1" 
AR Path="/5E638028/5E72FAB0" Ref="C?"  Part="1" 
AR Path="/5E649D50/5E72FAB0" Ref="C?"  Part="1" 
AR Path="/5E44241B/5E72FAB0" Ref="C23"  Part="1" 
F 0 "C23" H 10365 5446 50  0000 L CNN
F 1 "0.1 μF" H 10365 5355 50  0000 L CNN
F 2 "" H 10288 5250 50  0001 C CNN
F 3 "~" H 10250 5400 50  0001 C CNN
	1    10250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5650 10250 5550
Wire Wire Line
	10250 5250 10250 5150
$Comp
L power:GND #PWR0264
U 1 1 5E7346DA
P 7450 3600
F 0 "#PWR0264" H 7450 3350 50  0001 C CNN
F 1 "GND" H 7455 3427 50  0000 C CNN
F 2 "" H 7450 3600 50  0001 C CNN
F 3 "" H 7450 3600 50  0001 C CNN
	1    7450 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0261
U 1 1 5E734A7D
P 6050 3600
F 0 "#PWR0261" H 6050 3350 50  0001 C CNN
F 1 "GND" H 6055 3427 50  0000 C CNN
F 2 "" H 6050 3600 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
	1    6050 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0262
U 1 1 5E734D64
P 6350 2500
F 0 "#PWR0262" H 6350 2350 50  0001 C CNN
F 1 "VCC" H 6367 2673 50  0000 C CNN
F 2 "" H 6350 2500 50  0001 C CNN
F 3 "" H 6350 2500 50  0001 C CNN
	1    6350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2500 6350 2650
Wire Wire Line
	4950 2650 4950 2500
Wire Wire Line
	6050 3450 6050 3600
Wire Wire Line
	7450 3600 7450 3450
$Comp
L power:GND #PWR0263
U 1 1 5E73982D
P 6950 2450
F 0 "#PWR0263" H 6950 2200 50  0001 C CNN
F 1 "GND" H 6955 2277 50  0000 C CNN
F 2 "" H 6950 2450 50  0001 C CNN
F 3 "" H 6950 2450 50  0001 C CNN
	1    6950 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2450 6950 2550
$Comp
L power:GND #PWR0260
U 1 1 5E73A1BA
P 5550 2500
F 0 "#PWR0260" H 5550 2250 50  0001 C CNN
F 1 "GND" H 5555 2327 50  0000 C CNN
F 2 "" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0001 C CNN
	1    5550 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2500 5550 2550
Wire Wire Line
	5450 2650 5450 2550
Wire Wire Line
	5450 2550 5550 2550
Connection ~ 5550 2550
Wire Wire Line
	5550 2550 5550 2650
Wire Wire Line
	6850 2650 6850 2550
Wire Wire Line
	6850 2550 6950 2550
Connection ~ 6950 2550
Wire Wire Line
	6950 2550 6950 2650
$Comp
L power:VCC #PWR0259
U 1 1 5E734C28
P 4950 2500
F 0 "#PWR0259" H 4950 2350 50  0001 C CNN
F 1 "VCC" H 4967 2673 50  0000 C CNN
F 2 "" H 4950 2500 50  0001 C CNN
F 3 "" H 4950 2500 50  0001 C CNN
	1    4950 2500
	1    0    0    -1  
$EndComp
Text HLabel 1700 4600 0    50   Input ~ 0
MEM_0
Text HLabel 1700 4500 0    50   Input ~ 0
MEM_1
Text HLabel 1700 4400 0    50   Input ~ 0
MEM_2
Text HLabel 1700 4300 0    50   Input ~ 0
MEM_3
Text HLabel 1700 4200 0    50   Input ~ 0
MEM_4
Text HLabel 1700 4100 0    50   Input ~ 0
MEM_5
Text HLabel 1700 4000 0    50   Input ~ 0
MEM_6
Text HLabel 1700 3900 0    50   Input ~ 0
MEM_7
Text HLabel 1700 2500 0    50   Input ~ 0
MEM_8
Text HLabel 1700 2400 0    50   Input ~ 0
MEM_9
Text HLabel 1700 2300 0    50   Input ~ 0
MEM_10
Text HLabel 1700 2200 0    50   Input ~ 0
MEM_11
Text HLabel 1700 2100 0    50   Input ~ 0
MEM_12
Text HLabel 1700 2000 0    50   Input ~ 0
MEM_13
Text HLabel 1700 1900 0    50   Input ~ 0
MEM_14
Text HLabel 1700 1800 0    50   Input ~ 0
MEM_15
$Comp
L 74xx:74LS245 U101
U 1 1 5FB2A453
P 2700 2000
F 0 "U101" V 2950 2650 50  0000 L CNN
F 1 "74LS245" V 2800 1850 50  0000 L CNN
F 2 "" H 2700 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2700 2000 50  0001 C CNN
	1    2700 2000
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS245 U106
U 1 1 5FB2F41A
P 9700 2000
F 0 "U106" V 9950 2650 50  0000 L CNN
F 1 "74LS245" V 9800 1850 50  0000 L CNN
F 2 "" H 9700 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 9700 2000 50  0001 C CNN
	1    9700 2000
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS245 U107
U 1 1 5FB2F420
P 9700 4100
F 0 "U107" V 9950 4750 50  0000 L CNN
F 1 "74LS245" V 9800 4000 50  0000 L CNN
F 2 "" H 9700 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 9700 4100 50  0001 C CNN
	1    9700 4100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0252
U 1 1 5FB2F60A
P 2550 1050
F 0 "#PWR0252" H 2550 800 50  0001 C CNN
F 1 "GND" V 2555 922 50  0000 R CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0253
U 1 1 5FB2FAEF
P 2550 3150
F 0 "#PWR0253" H 2550 2900 50  0001 C CNN
F 1 "GND" V 2555 3022 50  0000 R CNN
F 2 "" H 2550 3150 50  0001 C CNN
F 3 "" H 2550 3150 50  0001 C CNN
	1    2550 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0266
U 1 1 5FB2FFF1
P 9550 3150
F 0 "#PWR0266" H 9550 2900 50  0001 C CNN
F 1 "GND" V 9555 3022 50  0000 R CNN
F 2 "" H 9550 3150 50  0001 C CNN
F 3 "" H 9550 3150 50  0001 C CNN
	1    9550 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0265
U 1 1 5FB30BCE
P 9550 1050
F 0 "#PWR0265" H 9550 800 50  0001 C CNN
F 1 "GND" V 9555 922 50  0000 R CNN
F 2 "" H 9550 1050 50  0001 C CNN
F 3 "" H 9550 1050 50  0001 C CNN
	1    9550 1050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0268
U 1 1 5FB30E85
P 9850 5050
F 0 "#PWR0268" H 9850 4900 50  0001 C CNN
F 1 "VCC" V 9867 5178 50  0000 L CNN
F 2 "" H 9850 5050 50  0001 C CNN
F 3 "" H 9850 5050 50  0001 C CNN
	1    9850 5050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0267
U 1 1 5FB314B0
P 9850 2950
F 0 "#PWR0267" H 9850 2800 50  0001 C CNN
F 1 "VCC" V 9867 3078 50  0000 L CNN
F 2 "" H 9850 2950 50  0001 C CNN
F 3 "" H 9850 2950 50  0001 C CNN
	1    9850 2950
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0254
U 1 1 5FB31CF8
P 2850 2950
F 0 "#PWR0254" H 2850 2800 50  0001 C CNN
F 1 "VCC" V 2867 3078 50  0000 L CNN
F 2 "" H 2850 2950 50  0001 C CNN
F 3 "" H 2850 2950 50  0001 C CNN
	1    2850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2950 2700 2950
Wire Wire Line
	2700 2950 2700 2800
Wire Wire Line
	2700 1200 2700 1050
Wire Wire Line
	2700 1050 2550 1050
Wire Wire Line
	2550 3150 2700 3150
Wire Wire Line
	2700 3150 2700 3300
Wire Wire Line
	9850 5050 9700 5050
Wire Wire Line
	9700 5050 9700 4900
Wire Wire Line
	9700 3300 9700 3150
Wire Wire Line
	9700 3150 9550 3150
Wire Wire Line
	9700 2800 9700 2950
Wire Wire Line
	9700 2950 9850 2950
Wire Wire Line
	9700 1200 9700 1050
Wire Wire Line
	9700 1050 9550 1050
Wire Wire Line
	10350 3600 10200 3600
Wire Wire Line
	10200 1500 10350 1500
Connection ~ 10350 1500
Wire Wire Line
	10350 1500 10350 3600
Wire Wire Line
	3450 3600 3200 3600
Wire Wire Line
	3200 1500 3450 1500
Wire Wire Line
	7900 850  7600 850 
Wire Wire Line
	10150 700  10350 700 
Wire Wire Line
	6800 5500 6800 5250
Wire Wire Line
	6800 5250 7050 5250
Wire Wire Line
	7050 5250 7050 4400
Wire Wire Line
	6950 3450 6950 4300
Wire Wire Line
	6950 5150 6700 5150
Wire Wire Line
	6700 5150 6700 5500
Wire Wire Line
	6600 5500 6600 5050
Wire Wire Line
	6600 5050 6850 5050
Wire Wire Line
	6850 5050 6850 4200
Wire Wire Line
	6500 5500 6500 4950
Wire Wire Line
	6500 4950 6750 4950
Wire Wire Line
	6750 4950 6750 4100
Wire Wire Line
	6650 3450 6650 4000
Wire Wire Line
	6650 4850 6400 4850
Wire Wire Line
	6400 4850 6400 5500
Wire Wire Line
	6300 5500 6300 4750
Wire Wire Line
	6300 4750 6550 4750
Wire Wire Line
	6550 4750 6550 3900
Wire Wire Line
	6450 3450 6450 3800
Wire Wire Line
	6450 4650 6200 4650
Wire Wire Line
	6200 4650 6200 5500
Wire Wire Line
	6100 5500 6100 4550
Wire Wire Line
	6100 4550 6350 4550
Wire Wire Line
	6350 4550 6350 3700
Wire Wire Line
	7050 4400 5650 4400
Wire Wire Line
	5650 4400 5650 3450
Connection ~ 7050 4400
Wire Wire Line
	7050 4400 7050 3450
Wire Wire Line
	5550 3450 5550 4300
Wire Wire Line
	5550 4300 6950 4300
Connection ~ 6950 4300
Wire Wire Line
	6950 4300 6950 5150
Wire Wire Line
	6850 4200 5450 4200
Wire Wire Line
	5450 4200 5450 3450
Connection ~ 6850 4200
Wire Wire Line
	6850 4200 6850 3450
Wire Wire Line
	5350 3450 5350 4100
Wire Wire Line
	5350 4100 6750 4100
Connection ~ 6750 4100
Wire Wire Line
	6750 4100 6750 3450
Wire Wire Line
	6650 4000 5250 4000
Wire Wire Line
	5250 4000 5250 3450
Connection ~ 6650 4000
Wire Wire Line
	6650 4000 6650 4850
Wire Wire Line
	5150 3450 5150 3900
Wire Wire Line
	5150 3900 6550 3900
Connection ~ 6550 3900
Wire Wire Line
	6550 3900 6550 3450
Wire Wire Line
	6450 3800 5050 3800
Wire Wire Line
	5050 3800 5050 3450
Connection ~ 6450 3800
Wire Wire Line
	6450 3800 6450 4650
Wire Wire Line
	4950 3450 4950 3700
Wire Wire Line
	4950 3700 6350 3700
Connection ~ 6350 3700
Wire Wire Line
	6350 3700 6350 3450
Wire Wire Line
	7150 3450 7150 4600
Wire Wire Line
	7150 4600 9200 4600
Wire Wire Line
	7250 3450 7250 4500
Wire Wire Line
	7250 4500 9200 4500
Wire Wire Line
	9200 4400 7350 4400
Wire Wire Line
	7350 4400 7350 3450
Wire Wire Line
	7450 2650 7450 2550
Wire Wire Line
	7450 2550 7700 2550
Wire Wire Line
	7700 2550 7700 4300
Wire Wire Line
	7700 4300 9200 4300
Wire Wire Line
	9200 4200 7800 4200
Wire Wire Line
	7800 4200 7800 2450
Wire Wire Line
	7800 2450 7350 2450
Wire Wire Line
	7350 2450 7350 2650
Wire Wire Line
	7250 2650 7250 2350
Wire Wire Line
	7250 2350 7900 2350
Wire Wire Line
	7900 2350 7900 4100
Wire Wire Line
	7900 4100 9200 4100
Wire Wire Line
	9200 4000 8000 4000
Wire Wire Line
	8000 4000 8000 2250
Wire Wire Line
	8000 2250 7150 2250
Wire Wire Line
	7150 2250 7150 2650
Wire Wire Line
	7050 2650 7050 2150
Wire Wire Line
	7050 2150 8100 2150
Wire Wire Line
	8100 2150 8100 3900
Wire Wire Line
	8100 3900 9200 3900
Wire Wire Line
	4450 2100 8200 2100
Wire Wire Line
	8200 2100 8200 2500
Wire Wire Line
	8200 2500 9200 2500
Wire Wire Line
	9200 2400 8300 2400
Wire Wire Line
	8300 2400 8300 2000
Wire Wire Line
	8300 2000 4350 2000
Wire Wire Line
	5950 4700 4450 4700
Wire Wire Line
	5950 3450 5950 4700
Wire Wire Line
	4450 2100 4450 2300
Wire Wire Line
	5850 4600 4350 4600
Wire Wire Line
	4350 2000 4350 2400
Wire Wire Line
	5850 3450 5850 4600
Wire Wire Line
	5750 3450 5750 4500
Wire Wire Line
	5750 4500 4250 4500
Wire Wire Line
	4250 4500 4250 2500
Wire Wire Line
	4250 1900 8400 1900
Wire Wire Line
	8400 1900 8400 2300
Wire Wire Line
	8400 2300 9200 2300
Wire Wire Line
	3450 1500 3450 3600
Wire Wire Line
	4300 650  5150 650 
Wire Wire Line
	6550 650  6550 2650
Wire Wire Line
	6450 2650 6450 750 
Wire Wire Line
	6450 750  5050 750 
Wire Wire Line
	6650 850  6650 2650
Connection ~ 6650 850 
Wire Wire Line
	5250 2650 5250 850 
Connection ~ 5250 850 
Wire Wire Line
	5250 850  6650 850 
Wire Wire Line
	5150 650  5150 2650
Connection ~ 5150 650 
Wire Wire Line
	5150 650  6550 650 
Wire Wire Line
	5050 2650 5050 750 
Connection ~ 5050 750 
Wire Wire Line
	5050 750  4300 750 
Wire Wire Line
	6050 2650 6050 1800
Wire Wire Line
	6050 1800 8500 1800
Wire Wire Line
	8500 1800 8500 2200
Wire Wire Line
	8500 2200 9200 2200
Wire Wire Line
	9200 2100 8600 2100
Wire Wire Line
	8600 2100 8600 1700
Wire Wire Line
	8600 1700 5950 1700
Wire Wire Line
	5950 1700 5950 2650
Wire Wire Line
	5850 2650 5850 1600
Wire Wire Line
	5850 1600 8700 1600
Wire Wire Line
	8700 1600 8700 2000
Wire Wire Line
	8700 2000 9200 2000
Wire Wire Line
	5750 2650 5750 1500
Wire Wire Line
	5750 1500 8800 1500
Wire Wire Line
	8800 1500 8800 1900
Wire Wire Line
	8800 1900 9200 1900
Wire Wire Line
	9200 1800 8900 1800
Wire Wire Line
	8900 1800 8900 1400
Wire Wire Line
	8900 1400 5650 1400
Wire Wire Line
	5650 1400 5650 2650
Wire Wire Line
	7400 1200 7600 1200
Wire Wire Line
	7600 1200 7600 850 
Wire Wire Line
	7400 1000 7500 1000
Wire Wire Line
	7500 1000 7500 850 
Wire Wire Line
	6650 850  7500 850 
Wire Wire Line
	6800 1100 6750 1100
Wire Wire Line
	5350 1100 5350 2650
Wire Wire Line
	6750 1100 6750 2650
Connection ~ 6750 1100
Wire Wire Line
	6750 1100 5350 1100
$Comp
L power:GND #PWR0272
U 1 1 5FC89738
P 10450 3700
F 0 "#PWR0272" H 10450 3450 50  0001 C CNN
F 1 "GND" V 10455 3572 50  0000 R CNN
F 2 "" H 10450 3700 50  0001 C CNN
F 3 "" H 10450 3700 50  0001 C CNN
	1    10450 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0271
U 1 1 5FC89B6B
P 10450 1600
F 0 "#PWR0271" H 10450 1350 50  0001 C CNN
F 1 "GND" V 10455 1472 50  0000 R CNN
F 2 "" H 10450 1600 50  0001 C CNN
F 3 "" H 10450 1600 50  0001 C CNN
	1    10450 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10450 1600 10200 1600
Wire Wire Line
	10200 3700 10450 3700
Entry Wire Line
	11050 1700 10950 1800
Entry Wire Line
	11050 1800 10950 1900
Entry Wire Line
	11050 1900 10950 2000
Entry Wire Line
	11050 2000 10950 2100
Entry Wire Line
	11050 2100 10950 2200
Entry Wire Line
	11050 2200 10950 2300
Entry Wire Line
	11050 2300 10950 2400
Entry Wire Line
	11050 2400 10950 2500
Entry Wire Line
	11050 3800 10950 3900
Entry Wire Line
	11050 3900 10950 4000
Entry Wire Line
	11050 4000 10950 4100
Entry Wire Line
	11050 4100 10950 4200
Entry Wire Line
	11050 4200 10950 4300
Entry Wire Line
	11050 4300 10950 4400
Entry Wire Line
	11050 4400 10950 4500
Entry Wire Line
	11050 4500 10950 4600
Text Notes 11150 3550 1    50   ~ 10
16-Bit Common Bus 
Wire Wire Line
	10950 4600 10200 4600
Wire Wire Line
	10200 4500 10950 4500
Wire Wire Line
	10950 4400 10200 4400
Wire Wire Line
	10200 4300 10950 4300
Wire Wire Line
	10950 4200 10200 4200
Wire Wire Line
	10200 4100 10950 4100
Wire Wire Line
	10950 4000 10200 4000
Wire Wire Line
	10200 3900 10950 3900
Wire Wire Line
	10950 2500 10200 2500
Wire Wire Line
	10200 2400 10950 2400
Wire Wire Line
	10950 2300 10200 2300
Wire Wire Line
	10200 2200 10950 2200
Wire Wire Line
	10950 2100 10200 2100
Wire Wire Line
	10200 2000 10950 2000
Wire Wire Line
	10950 1900 10200 1900
Wire Wire Line
	10200 1800 10950 1800
Text Label 10850 4600 0    50   ~ 0
B0
Text Label 10850 4500 0    50   ~ 0
B1
Text Label 10850 4400 0    50   ~ 0
B2
Text Label 10850 4300 0    50   ~ 0
B3
Text Label 10850 4200 0    50   ~ 0
B4
Text Label 10850 4100 0    50   ~ 0
B5
Text Label 10850 4000 0    50   ~ 0
B6
Text Label 10850 3900 0    50   ~ 0
B7
Text Label 10850 2500 0    50   ~ 0
B8
Text Label 10850 2400 0    50   ~ 0
B9
Text Label 10850 2300 0    50   ~ 0
B10
Text Label 10850 2200 0    50   ~ 0
B11
Text Label 10850 2100 0    50   ~ 0
B12
Text Label 10850 2000 0    50   ~ 0
B13
Text Label 10850 1900 0    50   ~ 0
B14
Text Label 10850 1800 0    50   ~ 0
B15
Wire Wire Line
	1700 1800 2200 1800
Wire Wire Line
	2200 1900 1700 1900
Wire Wire Line
	1700 2000 2200 2000
Wire Wire Line
	2200 2100 1700 2100
Wire Wire Line
	1700 2200 2200 2200
Wire Wire Line
	2200 2300 1700 2300
Wire Wire Line
	1700 2400 2200 2400
Wire Wire Line
	2200 2500 1700 2500
Wire Wire Line
	1700 3900 2200 3900
Wire Wire Line
	2200 4000 1700 4000
Wire Wire Line
	1700 4100 2200 4100
Wire Wire Line
	2200 4200 1700 4200
Wire Wire Line
	1700 4300 2200 4300
Wire Wire Line
	2200 4400 1700 4400
Wire Wire Line
	1700 4500 2200 4500
Wire Wire Line
	2200 4600 1700 4600
$Comp
L power:GND #PWR0257
U 1 1 5FE430EC
P 3550 3700
F 0 "#PWR0257" H 3550 3450 50  0001 C CNN
F 1 "GND" H 3555 3527 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0256
U 1 1 5FE4FD50
P 3550 1600
F 0 "#PWR0256" H 3550 1350 50  0001 C CNN
F 1 "GND" H 3555 1427 50  0000 C CNN
F 2 "" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3700 3550 3700
Wire Wire Line
	3200 1600 3550 1600
Wire Wire Line
	3200 4600 3300 4600
Wire Wire Line
	3300 4600 3300 6500
Wire Wire Line
	3300 6500 7150 6500
Wire Wire Line
	7150 6500 7150 4600
Connection ~ 7150 4600
Wire Wire Line
	3200 4500 3400 4500
Wire Wire Line
	3400 4500 3400 6400
Wire Wire Line
	3400 6400 7250 6400
Wire Wire Line
	7250 6400 7250 4500
Connection ~ 7250 4500
Wire Wire Line
	3200 4400 3500 4400
Wire Wire Line
	3500 4400 3500 6300
Wire Wire Line
	3500 6300 7350 6300
Wire Wire Line
	7350 6300 7350 4400
Connection ~ 7350 4400
Wire Wire Line
	3200 4300 3600 4300
Wire Wire Line
	3600 4300 3600 6200
Wire Wire Line
	3600 6200 7700 6200
Wire Wire Line
	7700 6200 7700 4300
Connection ~ 7700 4300
Wire Wire Line
	7800 4200 7800 6100
Wire Wire Line
	7800 6100 3700 6100
Wire Wire Line
	3700 6100 3700 4200
Wire Wire Line
	3700 4200 3200 4200
Connection ~ 7800 4200
Wire Wire Line
	3200 4100 3800 4100
Wire Wire Line
	3800 4100 3800 6000
Wire Wire Line
	3800 6000 7900 6000
Wire Wire Line
	7900 6000 7900 4100
Connection ~ 7900 4100
Wire Wire Line
	8000 4000 8000 5900
Wire Wire Line
	8000 5900 3900 5900
Wire Wire Line
	3900 5900 3900 4000
Wire Wire Line
	3900 4000 3200 4000
Connection ~ 8000 4000
Wire Wire Line
	3200 3900 4000 3900
Wire Wire Line
	4000 3900 4000 5800
Wire Wire Line
	4000 5800 8100 5800
Wire Wire Line
	8100 5800 8100 3900
Connection ~ 8100 3900
Wire Wire Line
	3200 2500 4250 2500
Connection ~ 4250 2500
Wire Wire Line
	4250 2500 4250 1900
Wire Wire Line
	3200 2400 4350 2400
Connection ~ 4350 2400
Wire Wire Line
	4350 2400 4350 4600
Wire Wire Line
	4450 2300 3200 2300
Connection ~ 4450 2300
Wire Wire Line
	4450 2300 4450 4700
Wire Wire Line
	3200 2200 4150 2200
Wire Wire Line
	4150 2200 4150 1800
Wire Wire Line
	4150 1800 6050 1800
Connection ~ 6050 1800
Wire Wire Line
	5950 1700 4050 1700
Wire Wire Line
	4050 1700 4050 2100
Wire Wire Line
	4050 2100 3200 2100
Connection ~ 5950 1700
Wire Wire Line
	3200 2000 3950 2000
Wire Wire Line
	3950 2000 3950 1600
Wire Wire Line
	3950 1600 5850 1600
Connection ~ 5850 1600
Wire Wire Line
	5750 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1900
Wire Wire Line
	3850 1900 3200 1900
Connection ~ 5750 1500
Wire Wire Line
	3200 1800 3750 1800
Wire Wire Line
	3750 1800 3750 1400
Wire Wire Line
	3750 1400 5650 1400
Connection ~ 5650 1400
$Comp
L 74xx:74LS00 U105
U 1 1 5FFF3711
P 7100 1100
F 0 "U105" H 7050 1300 50  0000 C CNN
F 1 "74LS00" H 7100 1100 50  0000 C CNN
F 2 "" H 7100 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7100 1100 50  0001 C CNN
	1    7100 1100
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS00 U66
U 3 1 600A2C69
P 8200 850
F 0 "U66" H 8200 650 50  0000 C CNN
F 1 "74LS00" H 8200 850 50  0000 C CNN
F 2 "" H 8200 850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8200 850 50  0001 C CNN
	3    8200 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 700  10350 850 
Wire Wire Line
	8500 750  8650 750 
Wire Wire Line
	8650 750  8650 850 
Wire Wire Line
	8650 850  10350 850 
Connection ~ 10350 850 
Wire Wire Line
	10350 850  10350 1500
Wire Wire Line
	8650 850  8650 950 
Wire Wire Line
	8650 950  8500 950 
Connection ~ 8650 850 
Text HLabel 5050 7300 2    50   Input ~ 0
CLK
$Comp
L 74xx:74LS00 U66
U 2 1 6001FBBE
P 3400 6950
F 0 "U66" H 3500 7100 50  0000 L CNN
F 1 "74LS00" V 3400 6800 50  0000 L CNN
F 2 "" H 3400 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3400 6950 50  0001 C CNN
	2    3400 6950
	-1   0    0    1   
$EndComp
Text HLabel 5050 6850 2    50   Input ~ 0
~RI
$Comp
L Device:C C22
U 1 1 602CA653
P 4550 7300
F 0 "C22" H 4500 7200 50  0000 C CNN
F 1 "0.01 μF" H 4400 7400 50  0000 C CNN
F 2 "" H 4588 7150 50  0001 C CNN
F 3 "~" H 4550 7300 50  0001 C CNN
	1    4550 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R R156
U 1 1 602CB23C
P 3900 7300
F 0 "R156" H 3800 7300 50  0000 C CNN
F 1 "1k" V 3900 7300 50  0000 C CNN
F 2 "" V 3830 7300 50  0001 C CNN
F 3 "~" H 3900 7300 50  0001 C CNN
	1    3900 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 7300 4250 7300
Wire Wire Line
	4700 7300 5050 7300
$Comp
L power:GND #PWR0258
U 1 1 602FBBBF
P 3600 7300
F 0 "#PWR0258" H 3600 7050 50  0001 C CNN
F 1 "GND" V 3605 7172 50  0000 R CNN
F 2 "" H 3600 7300 50  0001 C CNN
F 3 "" H 3600 7300 50  0001 C CNN
	1    3600 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 7300 3750 7300
Wire Wire Line
	3700 7050 4250 7050
Wire Wire Line
	4250 7050 4250 7300
Connection ~ 4250 7300
Wire Wire Line
	4250 7300 4400 7300
Wire Wire Line
	3450 1500 3450 850 
Wire Wire Line
	1050 850  3450 850 
Connection ~ 3450 1500
Connection ~ 3450 850 
Wire Wire Line
	3450 850  5250 850 
Wire Wire Line
	2700 5050 2850 5050
Wire Wire Line
	2700 4900 2700 5050
$Comp
L power:VCC #PWR0255
U 1 1 5FB31A3C
P 2850 5050
F 0 "#PWR0255" H 2850 4900 50  0001 C CNN
F 1 "VCC" V 2867 5178 50  0000 L CNN
F 2 "" H 2850 5050 50  0001 C CNN
F 3 "" H 2850 5050 50  0001 C CNN
	1    2850 5050
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U102
U 1 1 5FB2A459
P 2700 4100
F 0 "U102" V 2950 4750 50  0000 L CNN
F 1 "74LS245" V 2800 4000 50  0000 L CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2700 4100 50  0001 C CNN
	1    2700 4100
	-1   0    0    1   
$EndComp
Text HLabel 1900 7500 3    50   Input ~ 0
PROG
Text HLabel 800  7400 3    50   Input ~ 0
ARDUINO
Wire Wire Line
	5050 6850 3700 6850
$Comp
L 74xx:74LS00 U66
U 4 1 607AC055
P 800 6950
F 0 "U66" H 950 6750 50  0000 C CNN
F 1 "74LS00" H 800 6950 50  0000 C CNN
F 2 "" H 800 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 800 6950 50  0001 C CNN
	4    800  6950
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U97
U 1 1 607F20EA
P 700 6250
F 0 "U97" V 850 6150 50  0000 R CNN
F 1 "74LS08" V 650 6400 50  0000 R CNN
F 2 "" H 700 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 700 6250 50  0001 C CNN
	1    700  6250
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U28
U 2 1 607F347F
P 1250 6250
F 0 "U28" V 1400 6150 50  0000 R CNN
F 1 "74LS08" V 1200 6400 50  0000 R CNN
F 2 "" H 1250 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1250 6250 50  0001 C CNN
	2    1250 6250
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS32 U98
U 1 1 607F4146
P 950 5500
F 0 "U98" V 1150 5450 50  0000 R CNN
F 1 "74LS32" V 950 5650 50  0000 R CNN
F 2 "" H 950 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 950 5500 50  0001 C CNN
	1    950  5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  5950 850  5950
Wire Wire Line
	850  5950 850  5800
Wire Wire Line
	1050 5800 1050 5950
Wire Wire Line
	1050 5950 1250 5950
Wire Wire Line
	800  7400 800  7350
Wire Wire Line
	800  7350 700  7350
Wire Wire Line
	700  7350 700  7250
Wire Wire Line
	800  7350 900  7350
Wire Wire Line
	900  7350 900  7250
Connection ~ 800  7350
Wire Wire Line
	900  7350 1150 7350
Connection ~ 900  7350
Text HLabel 600  6700 3    50   Input ~ 0
ARDUINO_WRITE
Wire Wire Line
	600  6700 600  6550
$Comp
L Switch:SW_Push SW9
U 1 1 608A4EAD
P 1350 6900
F 0 "SW9" V 1396 6852 50  0000 R CNN
F 1 "SW_Push" V 1305 6852 50  0000 R CNN
F 2 "" H 1350 7100 50  0001 C CNN
F 3 "~" H 1350 7100 50  0001 C CNN
	1    1350 6900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0251
U 1 1 608BFA76
P 1350 7200
F 0 "#PWR0251" H 1350 6950 50  0001 C CNN
F 1 "GND" H 1355 7027 50  0000 C CNN
F 2 "" H 1350 7200 50  0001 C CNN
F 3 "" H 1350 7200 50  0001 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7200 1350 7100
Wire Wire Line
	1350 6700 1350 6550
Wire Wire Line
	1150 6550 1150 7350
Wire Wire Line
	800  6650 800  6550
$Comp
L 74xx:74LS00 U100
U 1 1 609CF6E7
P 1900 7050
F 0 "U100" V 2050 6950 50  0000 R CNN
F 1 "74LS00" V 1900 7200 50  0000 R CNN
F 2 "" H 1900 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1900 7050 50  0001 C CNN
	1    1900 7050
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U99
U 1 1 609D0659
P 1800 6300
F 0 "U99" V 2000 6250 50  0000 R CNN
F 1 "74LS08" V 1800 6450 50  0000 R CNN
F 2 "" H 1800 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1800 6300 50  0001 C CNN
	1    1800 6300
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U38
U 2 1 609D2F10
P 2200 6300
F 0 "U38" V 2350 6200 50  0000 R CNN
F 1 "74LS08" V 2200 6450 50  0000 R CNN
F 2 "" H 2200 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2200 6300 50  0001 C CNN
	2    2200 6300
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS32 U37
U 2 1 609D463F
P 2000 5500
F 0 "U37" V 2200 5400 50  0000 R CNN
F 1 "74LS32" V 2000 5650 50  0000 R CNN
F 2 "" H 2000 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2000 5500 50  0001 C CNN
	2    2000 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 850  1050 4800
Wire Wire Line
	1900 7500 1900 7400
Wire Wire Line
	1900 7400 1800 7400
Wire Wire Line
	1800 7400 1800 7350
Wire Wire Line
	1900 7400 2000 7400
Wire Wire Line
	2000 7400 2000 7350
Connection ~ 1900 7400
Wire Wire Line
	1900 6750 1900 6600
Wire Wire Line
	2000 7400 2300 7400
Wire Wire Line
	2300 7400 2300 6600
Connection ~ 2000 7400
Wire Wire Line
	2200 6000 2200 5900
Wire Wire Line
	2200 5900 2100 5900
Wire Wire Line
	2100 5900 2100 5800
Wire Wire Line
	1900 5800 1900 5900
Wire Wire Line
	1900 5900 1800 5900
Wire Wire Line
	1800 5900 1800 6000
Wire Wire Line
	3100 6950 2600 6950
Wire Wire Line
	2600 6950 2600 6750
Wire Wire Line
	2600 6750 2100 6750
Wire Wire Line
	2100 6750 2100 6600
Wire Wire Line
	1050 4800 2000 4800
Wire Wire Line
	2000 4800 2000 5200
Wire Wire Line
	950  5200 950  5000
Wire Wire Line
	950  5000 1600 5000
Wire Wire Line
	1600 5000 1600 6750
Wire Wire Line
	1600 6750 1700 6750
Wire Wire Line
	1700 6750 1700 6600
Text HLabel 11050 4800 3    50   BiDi ~ 0
BUS
Wire Bus Line
	11050 1600 11050 4800
$EndSCHEMATC
