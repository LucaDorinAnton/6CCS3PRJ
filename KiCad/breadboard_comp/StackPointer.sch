EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 19
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3800 2100 1    50   Input ~ 0
CLK
Text HLabel 4150 1150 1    50   Input ~ 0
~ST_I
Text HLabel 3950 1150 1    50   Input ~ 0
~ST_D
Text HLabel 1100 4750 0    50   Input ~ 0
~ST_O
Text HLabel 8650 1600 2    50   Input ~ 0
~ST_J
Text HLabel 8650 1400 2    50   Input ~ 0
~RST
$Comp
L 74xx:74LS169 U73
U 1 1 5E74F859
P 4400 3650
F 0 "U73" V 4650 4400 50  0000 L CNN
F 1 "74LS169" V 4400 3500 50  0000 L CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS169" H 4400 3650 50  0001 C CNN
	1    4400 3650
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0185
U 1 1 5E7515B1
P 5450 3500
F 0 "#PWR0185" H 5450 3350 50  0001 C CNN
F 1 "VCC" H 5467 3673 50  0000 C CNN
F 2 "" H 5450 3500 50  0001 C CNN
F 3 "" H 5450 3500 50  0001 C CNN
	1    5450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3500 5450 3650
Wire Wire Line
	5450 3650 5300 3650
$Comp
L power:GND #PWR0180
U 1 1 5E751768
P 3350 3800
F 0 "#PWR0180" H 3350 3550 50  0001 C CNN
F 1 "GND" H 3355 3627 50  0000 C CNN
F 2 "" H 3350 3800 50  0001 C CNN
F 3 "" H 3350 3800 50  0001 C CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3800 3350 3650
Wire Wire Line
	3350 3650 3500 3650
Text Notes 8950 2350 3    50   ~ 10
16-Bit Common Bus\n
Entry Wire Line
	8850 2000 8750 2100
Entry Wire Line
	8850 2300 8750 2400
Entry Wire Line
	8850 2600 8750 2700
Entry Wire Line
	8850 2900 8750 3000
Text Label 8650 3000 0    50   ~ 0
B0
$Comp
L power:GND #PWR0183
U 1 1 5E7527A0
P 4400 4300
F 0 "#PWR0183" H 4400 4050 50  0001 C CNN
F 1 "GND" H 4405 4127 50  0000 C CNN
F 2 "" H 4400 4300 50  0001 C CNN
F 3 "" H 4400 4300 50  0001 C CNN
	1    4400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4300 4400 4150
Wire Wire Line
	3800 2100 3800 3150
$Comp
L 74xx:74LS245 U75
U 1 1 5E753C9E
P 4500 5650
F 0 "U75" V 4750 6300 50  0000 L CNN
F 1 "74LS245" V 4600 5500 50  0000 L CNN
F 2 "" H 4500 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 4500 5650 50  0001 C CNN
	1    4500 5650
	0    1    -1   0   
$EndComp
$Comp
L 74xx:74LS245 U72
U 1 1 5E754B8C
P 2400 5650
F 0 "U72" V 2650 6300 50  0000 L CNN
F 1 "74LS245" V 2500 5450 50  0000 L CNN
F 2 "" H 2400 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 2400 5650 50  0001 C CNN
	1    2400 5650
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0184
U 1 1 5E75594C
P 4850 5000
F 0 "#PWR0184" H 4850 4850 50  0001 C CNN
F 1 "VCC" H 4867 5173 50  0000 C CNN
F 2 "" H 4850 5000 50  0001 C CNN
F 3 "" H 4850 5000 50  0001 C CNN
	1    4850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5000 4800 5000
Wire Wire Line
	4700 5000 4700 5150
Wire Wire Line
	4800 5150 4800 5000
Connection ~ 4800 5000
Wire Wire Line
	4800 5000 4700 5000
Wire Wire Line
	4850 5000 4900 5000
Wire Wire Line
	5000 5000 5000 5150
Connection ~ 4850 5000
Wire Wire Line
	4900 5150 4900 5000
Connection ~ 4900 5000
Wire Wire Line
	4900 5000 5000 5000
$Comp
L power:VCC #PWR0179
U 1 1 5E7563C3
P 2550 5000
F 0 "#PWR0179" H 2550 4850 50  0001 C CNN
F 1 "VCC" H 2567 5173 50  0000 C CNN
F 2 "" H 2550 5000 50  0001 C CNN
F 3 "" H 2550 5000 50  0001 C CNN
	1    2550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5000 2600 5000
Wire Wire Line
	2900 5000 2900 5150
Wire Wire Line
	2200 5150 2200 5000
Connection ~ 2550 5000
Wire Wire Line
	2300 5150 2300 5000
Connection ~ 2300 5000
Wire Wire Line
	2300 5000 2400 5000
Wire Wire Line
	2400 5000 2400 5150
Connection ~ 2400 5000
Wire Wire Line
	2400 5000 2500 5000
Wire Wire Line
	2500 5150 2500 5000
Connection ~ 2500 5000
Wire Wire Line
	2500 5000 2550 5000
Wire Wire Line
	2600 5000 2600 5150
Connection ~ 2600 5000
Wire Wire Line
	2600 5000 2700 5000
Wire Wire Line
	2700 5150 2700 5000
Connection ~ 2700 5000
Wire Wire Line
	2700 5000 2800 5000
Wire Wire Line
	2800 5000 2800 5150
Connection ~ 2800 5000
Wire Wire Line
	2800 5000 2900 5000
Text Notes 3000 7000 0    50   ~ 10
16-Bit Common Bus\n
Entry Wire Line
	4900 6900 5000 6800
Entry Wire Line
	4800 6900 4900 6800
Entry Wire Line
	4700 6900 4800 6800
Entry Wire Line
	4600 6900 4700 6800
Entry Wire Line
	4500 6900 4600 6800
Entry Wire Line
	4400 6900 4500 6800
Entry Wire Line
	4300 6900 4400 6800
Entry Wire Line
	4200 6900 4300 6800
Entry Wire Line
	2800 6900 2900 6800
Entry Wire Line
	2700 6900 2800 6800
Entry Wire Line
	2600 6900 2700 6800
Entry Wire Line
	2500 6900 2600 6800
Entry Wire Line
	2400 6900 2500 6800
Entry Wire Line
	2300 6900 2400 6800
Entry Wire Line
	2200 6900 2300 6800
Entry Wire Line
	2100 6900 2200 6800
Wire Wire Line
	5000 6150 5000 6800
Wire Wire Line
	4900 6800 4900 6150
Wire Wire Line
	4800 6150 4800 6800
Wire Wire Line
	4700 6800 4700 6150
Wire Wire Line
	4600 6150 4600 6800
Wire Wire Line
	4500 6800 4500 6150
Wire Wire Line
	4400 6150 4400 6800
Wire Wire Line
	4300 6800 4300 6150
Wire Wire Line
	2900 6150 2900 6800
Wire Wire Line
	2800 6800 2800 6150
Wire Wire Line
	2700 6150 2700 6800
Wire Wire Line
	2600 6800 2600 6150
Wire Wire Line
	2500 6150 2500 6800
Wire Wire Line
	2400 6800 2400 6150
Wire Wire Line
	2300 6150 2300 6800
Wire Wire Line
	2200 6800 2200 6150
$Comp
L power:VCC #PWR0181
U 1 1 5E767A05
P 3350 5800
F 0 "#PWR0181" H 3350 5650 50  0001 C CNN
F 1 "VCC" H 3367 5973 50  0000 C CNN
F 2 "" H 3350 5800 50  0001 C CNN
F 3 "" H 3350 5800 50  0001 C CNN
	1    3350 5800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 5E767B94
P 1450 5500
F 0 "#PWR0178" H 1450 5250 50  0001 C CNN
F 1 "GND" H 1455 5327 50  0000 C CNN
F 2 "" H 1450 5500 50  0001 C CNN
F 3 "" H 1450 5500 50  0001 C CNN
	1    1450 5500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 5E767D00
P 3550 5500
F 0 "#PWR0182" H 3550 5250 50  0001 C CNN
F 1 "GND" H 3555 5327 50  0000 C CNN
F 2 "" H 3550 5500 50  0001 C CNN
F 3 "" H 3550 5500 50  0001 C CNN
	1    3550 5500
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR0186
U 1 1 5E767EA3
P 5450 5800
F 0 "#PWR0186" H 5450 5650 50  0001 C CNN
F 1 "VCC" H 5467 5973 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	5450 5800 5450 5650
Wire Wire Line
	5450 5650 5300 5650
Wire Wire Line
	3700 5650 3550 5650
Wire Wire Line
	3550 5650 3550 5500
Wire Wire Line
	3200 5650 3350 5650
Wire Wire Line
	3350 5650 3350 5800
Wire Wire Line
	1600 5650 1450 5650
Wire Wire Line
	1450 5650 1450 5500
Wire Wire Line
	4900 4150 4900 4400
Wire Wire Line
	2200 5000 2300 5000
Wire Wire Line
	4500 2150 4500 3150
$Comp
L 74xx:74LS157 U76
U 1 1 5E7A427E
P 6000 2400
F 0 "U76" H 5700 3150 50  0000 C CNN
F 1 "74LS157" V 6000 2350 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6000 2400 50  0001 C CNN
	1    6000 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 5E7ABA3E
P 6150 1250
F 0 "#PWR0187" H 6150 1000 50  0001 C CNN
F 1 "GND" V 6155 1122 50  0000 R CNN
F 2 "" H 6150 1250 50  0001 C CNN
F 3 "" H 6150 1250 50  0001 C CNN
	1    6150 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 1250 6100 1250
Wire Wire Line
	6000 1250 6000 1400
Wire Wire Line
	5450 3650 6000 3650
Wire Wire Line
	6000 3650 6000 3300
Connection ~ 5450 3650
Wire Wire Line
	5500 2100 4700 2100
Wire Wire Line
	4700 2100 4700 3150
Wire Wire Line
	4800 3150 4800 2400
Wire Wire Line
	4800 2400 5500 2400
Wire Wire Line
	5500 2700 4900 2700
Wire Wire Line
	4900 2700 4900 3150
Wire Wire Line
	5000 3150 5000 3000
Wire Wire Line
	5000 3000 5500 3000
$Comp
L 74xx:74LS08 U74
U 1 1 5E7D203E
P 4500 1850
F 0 "U74" V 4454 2038 50  0000 L CNN
F 1 "74LS08" V 4500 1700 50  0000 L CNN
F 2 "" H 4500 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4500 1850 50  0001 C CNN
	1    4500 1850
	0    1    1    0   
$EndComp
Text Label 8350 2100 0    50   ~ 0
B3
Text Label 8450 2400 0    50   ~ 0
B2
Text Label 8550 2700 0    50   ~ 0
B1
Wire Wire Line
	6500 3000 8750 3000
Wire Wire Line
	6500 2700 8750 2700
Wire Wire Line
	6500 2400 8750 2400
Wire Wire Line
	6500 2100 8750 2100
$Comp
L power:GND #PWR0189
U 1 1 5E7E54C5
P 7150 2500
F 0 "#PWR0189" H 7150 2250 50  0001 C CNN
F 1 "GND" V 7155 2372 50  0000 R CNN
F 2 "" H 7150 2500 50  0001 C CNN
F 3 "" H 7150 2500 50  0001 C CNN
	1    7150 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2900 7000 2900
Wire Wire Line
	7000 2900 7000 2600
Wire Wire Line
	7000 2500 7150 2500
Wire Wire Line
	7000 2500 7000 2300
Wire Wire Line
	7000 2000 6500 2000
Connection ~ 7000 2500
Wire Wire Line
	6500 2300 7000 2300
Connection ~ 7000 2300
Wire Wire Line
	7000 2300 7000 2000
Wire Wire Line
	7000 2600 6500 2600
Connection ~ 7000 2600
Wire Wire Line
	7000 2600 7000 2500
Wire Wire Line
	8650 1600 8150 1600
Wire Wire Line
	8150 1600 8150 1800
Wire Wire Line
	8150 1800 6500 1800
Wire Wire Line
	6550 1700 6550 1350
Wire Wire Line
	6550 1350 6100 1350
Wire Wire Line
	6100 1350 6100 1250
Wire Wire Line
	6550 1700 6500 1700
Connection ~ 6100 1250
Wire Wire Line
	6100 1250 6000 1250
Wire Wire Line
	8650 1400 7650 1400
Wire Wire Line
	7650 1400 7650 900 
Wire Wire Line
	7650 900  4400 900 
Wire Wire Line
	4400 900  4400 1550
Wire Wire Line
	4600 1550 4600 1050
Wire Wire Line
	4600 1050 7100 1050
Wire Wire Line
	7100 1050 7100 1600
Wire Wire Line
	7100 1600 8150 1600
Connection ~ 8150 1600
$Comp
L 74xx:74LS08 U22
U 2 1 5E8041CD
P 4050 1850
F 0 "U22" V 4250 1900 50  0000 L CNN
F 1 "74LS08" V 4050 1700 50  0000 L CNN
F 2 "" H 4050 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4050 1850 50  0001 C CNN
	2    4050 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 1150 3950 1550
Wire Wire Line
	4150 1550 4150 1450
Wire Wire Line
	4050 2150 4050 2650
Wire Wire Line
	4050 2650 4000 2650
Wire Wire Line
	4000 2650 4000 3150
Wire Wire Line
	4100 3150 4100 2650
Wire Wire Line
	4100 2650 4050 2650
Connection ~ 4050 2650
Wire Wire Line
	4150 1450 4300 1450
Wire Wire Line
	4300 1450 4300 3150
Connection ~ 4150 1450
Wire Wire Line
	4150 1450 4150 1150
$Comp
L Device:R R104
U 1 1 5E815ECF
P 6000 4850
F 0 "R104" V 6100 4950 50  0000 C CNN
F 1 "220" V 6000 4850 50  0000 C CNN
F 2 "" V 5930 4850 50  0001 C CNN
F 3 "~" H 6000 4850 50  0001 C CNN
	1    6000 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D96
U 1 1 5E816457
P 6000 5300
F 0 "D96" H 6000 5200 50  0000 C CNN
F 1 "LED" H 6000 5400 50  0000 C CNN
F 2 "" H 6000 5300 50  0001 C CNN
F 3 "~" H 6000 5300 50  0001 C CNN
	1    6000 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 5150 6000 5000
Wire Wire Line
	4700 4150 4700 4600
$Comp
L Device:R R105
U 1 1 5E823EA2
P 6300 4850
F 0 "R105" V 6400 4950 50  0000 C CNN
F 1 "220" V 6300 4850 50  0000 C CNN
F 2 "" V 6230 4850 50  0001 C CNN
F 3 "~" H 6300 4850 50  0001 C CNN
	1    6300 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D97
U 1 1 5E823EA8
P 6300 5300
F 0 "D97" H 6300 5200 50  0000 C CNN
F 1 "LED" H 6300 5400 50  0000 C CNN
F 2 "" H 6300 5300 50  0001 C CNN
F 3 "~" H 6300 5300 50  0001 C CNN
	1    6300 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 5150 6300 5000
$Comp
L Device:R R106
U 1 1 5E829A94
P 6600 4850
F 0 "R106" V 6700 4950 50  0000 C CNN
F 1 "220" V 6600 4850 50  0000 C CNN
F 2 "" V 6530 4850 50  0001 C CNN
F 3 "~" H 6600 4850 50  0001 C CNN
	1    6600 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D98
U 1 1 5E829A9A
P 6600 5300
F 0 "D98" H 6600 5200 50  0000 C CNN
F 1 "LED" H 6600 5400 50  0000 C CNN
F 2 "" H 6600 5300 50  0001 C CNN
F 3 "~" H 6600 5300 50  0001 C CNN
	1    6600 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 5150 6600 5000
$Comp
L Device:R R107
U 1 1 5E829AA1
P 6900 4850
F 0 "R107" V 7000 4950 50  0000 C CNN
F 1 "220" V 6900 4850 50  0000 C CNN
F 2 "" V 6830 4850 50  0001 C CNN
F 3 "~" H 6900 4850 50  0001 C CNN
	1    6900 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D99
U 1 1 5E829AA7
P 6900 5300
F 0 "D99" H 6900 5200 50  0000 C CNN
F 1 "LED" H 6900 5400 50  0000 C CNN
F 2 "" H 6900 5300 50  0001 C CNN
F 3 "~" H 6900 5300 50  0001 C CNN
	1    6900 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 5150 6900 5000
$Comp
L power:GND #PWR0188
U 1 1 5E82D87D
P 6500 5750
F 0 "#PWR0188" H 6500 5500 50  0001 C CNN
F 1 "GND" H 6505 5577 50  0000 C CNN
F 2 "" H 6500 5750 50  0001 C CNN
F 3 "" H 6500 5750 50  0001 C CNN
	1    6500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5750 6500 5600
Wire Wire Line
	6500 5600 6300 5600
Wire Wire Line
	6000 5600 6000 5450
Wire Wire Line
	6300 5450 6300 5600
Connection ~ 6300 5600
Wire Wire Line
	6300 5600 6000 5600
Wire Wire Line
	6500 5600 6600 5600
Wire Wire Line
	6900 5600 6900 5450
Connection ~ 6500 5600
Wire Wire Line
	6600 5450 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	6600 5600 6900 5600
Wire Wire Line
	6000 4700 6000 4600
Wire Wire Line
	6000 4600 4700 4600
Wire Wire Line
	4800 4500 6300 4500
Wire Wire Line
	6300 4500 6300 4700
Wire Wire Line
	4800 4500 4800 4150
Wire Wire Line
	6600 4700 6600 4400
Wire Wire Line
	6600 4400 4900 4400
Wire Wire Line
	5000 4300 6900 4300
Wire Wire Line
	6900 4300 6900 4700
Wire Wire Line
	5000 4300 5000 4150
$Comp
L power:GND #PWR?
U 1 1 5E85AA83
P 9100 4350
AR Path="/5E85AA83" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E85AA83" Ref="#PWR?"  Part="1" 
AR Path="/5E74B654/5E85AA83" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 9100 4100 50  0001 C CNN
F 1 "GND" H 9105 4177 50  0000 C CNN
F 2 "" H 9100 4350 50  0001 C CNN
F 3 "" H 9100 4350 50  0001 C CNN
	1    9100 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E85AA89
P 9100 4050
AR Path="/5E85AA89" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E85AA89" Ref="#PWR?"  Part="1" 
AR Path="/5E74B654/5E85AA89" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 9100 3900 50  0001 C CNN
F 1 "VCC" H 9117 4223 50  0000 C CNN
F 2 "" H 9100 4050 50  0001 C CNN
F 3 "" H 9100 4050 50  0001 C CNN
	1    9100 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E85AA8F
P 9100 4200
AR Path="/5E85AA8F" Ref="C?"  Part="1" 
AR Path="/5E367421/5E85AA8F" Ref="C?"  Part="1" 
AR Path="/5E74B654/5E85AA8F" Ref="C19"  Part="1" 
F 0 "C19" H 9215 4246 50  0000 L CNN
F 1 "0.1 μF" H 9215 4155 50  0000 L CNN
F 2 "" H 9138 4050 50  0001 C CNN
F 3 "~" H 9100 4200 50  0001 C CNN
	1    9100 4200
	1    0    0    -1  
$EndComp
Text Label 4300 6650 1    50   ~ 0
B0
Text Label 4400 6650 1    50   ~ 0
B1
Text Label 4500 6650 1    50   ~ 0
B2
Text Label 4600 6650 1    50   ~ 0
B3
Text Label 4700 6650 1    50   ~ 0
B4
Text Label 4800 6650 1    50   ~ 0
B5
Text Label 4900 6650 1    50   ~ 0
B6
Text Label 5000 6650 1    50   ~ 0
B7
Text Label 2200 6650 1    50   ~ 0
B8
Text Label 2300 6650 1    50   ~ 0
B9
Text Label 2400 6650 1    50   ~ 0
B10
Text Label 2500 6650 1    50   ~ 0
B11
Text Label 2600 6650 1    50   ~ 0
B12
Text Label 2700 6650 1    50   ~ 0
B13
Text Label 2800 6650 1    50   ~ 0
B14
Text Label 2900 6650 1    50   ~ 0
B15
Text HLabel 1350 6900 0    50   BiDi ~ 0
BUS
Text HLabel 9050 1800 2    50   BiDi ~ 0
BUS
Wire Bus Line
	9050 1800 8850 1800
Wire Wire Line
	5000 4300 5000 4700
Wire Wire Line
	5000 4700 4300 4700
Wire Wire Line
	4300 4700 4300 5150
Connection ~ 5000 4300
Wire Wire Line
	4400 5150 4400 4800
Wire Wire Line
	4400 4800 4900 4800
Wire Wire Line
	4900 4800 4900 4400
Connection ~ 4900 4400
Wire Wire Line
	4800 4500 4800 4900
Wire Wire Line
	4800 4900 4500 4900
Wire Wire Line
	4500 4900 4500 5150
Connection ~ 4800 4500
Wire Wire Line
	4600 5150 4600 4600
Wire Wire Line
	4600 4600 4700 4600
Connection ~ 4700 4600
Wire Wire Line
	1100 4750 1300 4750
Wire Wire Line
	3450 4750 3450 6650
Wire Wire Line
	3450 6650 4000 6650
Wire Wire Line
	4000 6150 4000 6650
Wire Wire Line
	1900 6150 1900 6650
Wire Wire Line
	1900 6650 1300 6650
Wire Wire Line
	1300 6650 1300 4750
Connection ~ 1300 4750
Wire Wire Line
	1300 4750 3450 4750
$Comp
L power:GND #PWR0148
U 1 1 5EB75D42
P 2000 6300
F 0 "#PWR0148" H 2000 6050 50  0001 C CNN
F 1 "GND" H 2005 6127 50  0000 C CNN
F 2 "" H 2000 6300 50  0001 C CNN
F 3 "" H 2000 6300 50  0001 C CNN
	1    2000 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6300 2000 6150
$Comp
L power:GND #PWR0259
U 1 1 5EB7CBD9
P 4100 6300
F 0 "#PWR0259" H 4100 6050 50  0001 C CNN
F 1 "GND" H 4105 6127 50  0000 C CNN
F 2 "" H 4100 6300 50  0001 C CNN
F 3 "" H 4100 6300 50  0001 C CNN
	1    4100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6300 4100 6150
Wire Bus Line
	8850 1800 8850 3100
Wire Bus Line
	1350 6900 5550 6900
$EndSCHEMATC
