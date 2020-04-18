EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7100 1250 1    50   Input ~ 0
ARDUINO_ADDR_0
Text HLabel 6800 1250 1    50   Input ~ 0
ARDUINO_ADDR_1
Text HLabel 6500 1250 1    50   Input ~ 0
ARDUINO_ADDR_2
Text HLabel 6200 1250 1    50   Input ~ 0
ARDUINO_ADDR_3
Text HLabel 4700 1250 1    50   Input ~ 0
ARDUINO_ADDR_4
Text HLabel 4400 1250 1    50   Input ~ 0
ARDUINO_ADDR_5
Text HLabel 4100 1250 1    50   Input ~ 0
ARDUINO_ADDR_6
Text HLabel 3800 1250 1    50   Input ~ 0
ARDUINO_ADDR_7
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB209
P 4200 2850
AR Path="/5FD2EA30/5F3BB209" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB209" Ref="U50"  Part="1" 
F 0 "U50" V 4500 3650 50  0000 L CNN
F 1 "74LS157" V 4200 2700 50  0000 L CNN
F 2 "" H 4200 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4200 2850 50  0001 C CNN
	1    4200 2850
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB215
P 1800 5350
AR Path="/5FD2EA30/5F3BB215" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB215" Ref="U49"  Part="1" 
F 0 "U49" V 2050 6100 50  0000 L CNN
F 1 "74LS157" V 1800 5200 50  0000 L CNN
F 2 "" H 1800 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 1800 5350 50  0001 C CNN
	1    1800 5350
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB21B
P 4200 5350
AR Path="/5FD2EA30/5F3BB21B" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB21B" Ref="U51"  Part="1" 
F 0 "U51" V 4450 6100 50  0000 L CNN
F 1 "74LS157" V 4200 5200 50  0000 L CNN
F 2 "" H 4200 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4200 5350 50  0001 C CNN
	1    4200 5350
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB221
P 6600 5350
AR Path="/5FD2EA30/5F3BB221" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB221" Ref="U53"  Part="1" 
F 0 "U53" V 6900 6100 50  0000 L CNN
F 1 "74LS157" V 6600 5200 50  0000 L CNN
F 2 "" H 6600 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6600 5350 50  0001 C CNN
	1    6600 5350
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB26D
P 6600 2850
AR Path="/5FD2EA30/5F3BB26D" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB26D" Ref="U52"  Part="1" 
F 0 "U52" V 6850 3600 50  0000 L CNN
F 1 "74LS157" V 6600 2700 50  0000 L CNN
F 2 "" H 6600 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6600 2850 50  0001 C CNN
	1    6600 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3BB28B
P 650 3000
AR Path="/5FD2EA30/5F3BB28B" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB28B" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 650 2750 50  0001 C CNN
F 1 "GND" H 655 2827 50  0000 C CNN
F 2 "" H 650 3000 50  0001 C CNN
F 3 "" H 650 3000 50  0001 C CNN
	1    650  3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3000 650  2850
Wire Wire Line
	650  2850 800  2850
Wire Wire Line
	650  2850 650  2300
Wire Wire Line
	650  2300 1100 2300
Wire Wire Line
	1100 2300 1100 2350
Connection ~ 650  2850
$Comp
L power:GND #PWR?
U 1 1 5F3BB297
P 3050 3000
AR Path="/5FD2EA30/5F3BB297" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB297" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 3050 2750 50  0001 C CNN
F 1 "GND" H 3055 2827 50  0000 C CNN
F 2 "" H 3050 3000 50  0001 C CNN
F 3 "" H 3050 3000 50  0001 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3000 3050 2850
Wire Wire Line
	3050 2850 3200 2850
Wire Wire Line
	3050 2850 3050 2300
Wire Wire Line
	3050 2300 3500 2300
Wire Wire Line
	3500 2300 3500 2350
Connection ~ 3050 2850
$Comp
L power:GND #PWR?
U 1 1 5F3BB2A3
P 5450 3000
AR Path="/5FD2EA30/5F3BB2A3" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB2A3" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 5450 2750 50  0001 C CNN
F 1 "GND" H 5455 2827 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3000 5450 2850
Wire Wire Line
	5450 2850 5600 2850
Wire Wire Line
	5450 2850 5450 2300
Wire Wire Line
	5450 2300 5900 2300
Wire Wire Line
	5900 2300 5900 2350
Connection ~ 5450 2850
$Comp
L power:VCC #PWR?
U 1 1 5F3BB2C3
P 7650 2700
AR Path="/5FD2EA30/5F3BB2C3" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB2C3" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 7650 2550 50  0001 C CNN
F 1 "VCC" H 7667 2873 50  0000 C CNN
F 2 "" H 7650 2700 50  0001 C CNN
F 3 "" H 7650 2700 50  0001 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2700 7650 2850
Wire Wire Line
	7650 2850 7500 2850
$Comp
L power:VCC #PWR?
U 1 1 5F3BB2CB
P 5250 2700
AR Path="/5FD2EA30/5F3BB2CB" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB2CB" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 5250 2550 50  0001 C CNN
F 1 "VCC" H 5267 2873 50  0000 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2700 5250 2850
Wire Wire Line
	5250 2850 5100 2850
$Comp
L power:VCC #PWR?
U 1 1 5F3BB2D3
P 2850 2700
AR Path="/5FD2EA30/5F3BB2D3" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB2D3" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 2850 2550 50  0001 C CNN
F 1 "VCC" H 2867 2873 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2700 2850 2850
Wire Wire Line
	2850 2850 2700 2850
Wire Wire Line
	4500 1750 4500 2350
Wire Wire Line
	4800 2350 4800 1850
$Comp
L power:GND #PWR?
U 1 1 5F3BB316
P 650 5500
AR Path="/5FD2EA30/5F3BB316" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB316" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 650 5250 50  0001 C CNN
F 1 "GND" H 655 5327 50  0000 C CNN
F 2 "" H 650 5500 50  0001 C CNN
F 3 "" H 650 5500 50  0001 C CNN
	1    650  5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  5500 650  5350
Wire Wire Line
	650  5350 800  5350
Connection ~ 650  5350
$Comp
L power:GND #PWR?
U 1 1 5F3BB31F
P 3050 5500
AR Path="/5FD2EA30/5F3BB31F" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB31F" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3050 5250 50  0001 C CNN
F 1 "GND" H 3055 5327 50  0000 C CNN
F 2 "" H 3050 5500 50  0001 C CNN
F 3 "" H 3050 5500 50  0001 C CNN
	1    3050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5500 3050 5350
Wire Wire Line
	3050 5350 3200 5350
Wire Wire Line
	3050 5350 3050 4750
Wire Wire Line
	3050 4750 3500 4750
Wire Wire Line
	3500 4750 3500 4850
Connection ~ 3050 5350
$Comp
L power:GND #PWR?
U 1 1 5F3BB32B
P 5450 5500
AR Path="/5FD2EA30/5F3BB32B" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB32B" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5450 5250 50  0001 C CNN
F 1 "GND" H 5455 5327 50  0000 C CNN
F 2 "" H 5450 5500 50  0001 C CNN
F 3 "" H 5450 5500 50  0001 C CNN
	1    5450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5500 5450 5350
Wire Wire Line
	5450 5350 5600 5350
Wire Wire Line
	5450 5350 5450 4750
Wire Wire Line
	5450 4750 5900 4750
Wire Wire Line
	5900 4750 5900 4850
Connection ~ 5450 5350
Wire Wire Line
	650  4750 1100 4750
Wire Wire Line
	650  4750 650  5350
Wire Wire Line
	1100 4750 1100 4850
$Comp
L power:VCC #PWR?
U 1 1 5F3BB346
P 2850 5200
AR Path="/5FD2EA30/5F3BB346" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB346" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 2850 5050 50  0001 C CNN
F 1 "VCC" H 2867 5373 50  0000 C CNN
F 2 "" H 2850 5200 50  0001 C CNN
F 3 "" H 2850 5200 50  0001 C CNN
	1    2850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5200 2850 5350
Wire Wire Line
	2850 5350 2700 5350
$Comp
L power:VCC #PWR?
U 1 1 5F3BB34E
P 5250 5200
AR Path="/5FD2EA30/5F3BB34E" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB34E" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 5250 5050 50  0001 C CNN
F 1 "VCC" H 5267 5373 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 5250 5350
Wire Wire Line
	5250 5350 5100 5350
$Comp
L power:VCC #PWR?
U 1 1 5F3BB356
P 7650 5200
AR Path="/5FD2EA30/5F3BB356" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB356" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 7650 5050 50  0001 C CNN
F 1 "VCC" H 7667 5373 50  0000 C CNN
F 2 "" H 7650 5200 50  0001 C CNN
F 3 "" H 7650 5200 50  0001 C CNN
	1    7650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5200 7650 5350
Wire Wire Line
	7650 5350 7500 5350
Wire Wire Line
	4800 3350 4800 3450
Wire Wire Line
	4800 3450 4700 3450
Wire Wire Line
	4500 3350 4500 3450
Wire Wire Line
	4500 3450 4400 3450
Wire Wire Line
	4200 3350 4200 3450
Wire Wire Line
	4200 3450 4100 3450
Wire Wire Line
	3900 3350 3900 3450
Wire Wire Line
	3900 3450 3800 3450
Wire Wire Line
	4700 3450 4700 4850
Wire Wire Line
	3800 3450 3800 4850
Wire Wire Line
	4100 3450 4100 4850
Wire Wire Line
	4400 3450 4400 4850
Wire Wire Line
	2100 3350 2100 3450
Wire Wire Line
	2100 3450 2000 3450
Wire Wire Line
	2400 3350 2400 3450
Wire Wire Line
	2400 3450 2300 3450
Wire Wire Line
	2000 3450 2000 4850
Wire Wire Line
	2300 3450 2300 4850
Wire Wire Line
	4500 4850 4500 4100
Wire Wire Line
	4200 4850 4200 4200
Wire Wire Line
	2400 4850 2400 4500
Wire Wire Line
	7200 3350 7200 3450
Wire Wire Line
	7200 3450 7100 3450
Wire Wire Line
	6900 3350 6900 3450
Wire Wire Line
	6900 3450 6800 3450
Wire Wire Line
	6600 3350 6600 3450
Wire Wire Line
	6600 3450 6500 3450
Wire Wire Line
	6300 3350 6300 3450
Wire Wire Line
	6300 3450 6200 3450
Wire Wire Line
	6200 3450 6200 4850
Wire Wire Line
	6500 3450 6500 4850
Wire Wire Line
	6800 3450 6800 4850
Wire Wire Line
	7100 3450 7100 4850
Text HLabel 2100 6200 3    50   Output ~ 0
A9
Text HLabel 2400 6200 3    50   Output ~ 0
A8
Text HLabel 3900 6200 3    50   Output ~ 0
A7
Text HLabel 4200 6200 3    50   Output ~ 0
A6
Text HLabel 4500 6200 3    50   Output ~ 0
A5
Text HLabel 4800 6200 3    50   Output ~ 0
A4
Text HLabel 6300 6200 3    50   Output ~ 0
A3
Text HLabel 6600 6200 3    50   Output ~ 0
A2
Text HLabel 6900 6200 3    50   Output ~ 0
A1
Text HLabel 7200 6200 3    50   Output ~ 0
A0
Wire Wire Line
	7200 6200 7200 5950
Wire Wire Line
	6900 5850 6900 6050
Wire Wire Line
	6600 6200 6600 6050
Wire Wire Line
	6300 5850 6300 6050
Wire Wire Line
	4800 6200 4800 6050
Wire Wire Line
	4500 5850 4500 6050
Wire Wire Line
	4200 6200 4200 6050
Wire Wire Line
	3900 5850 3900 6050
Wire Wire Line
	2400 6200 2400 6050
Wire Wire Line
	2100 5850 2100 6050
$Comp
L power:VCC #PWR?
U 1 1 5F3BB3F8
P 10550 4950
AR Path="/5E3CB2C3/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5E44241B/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5FD2EA30/5F3BB3F8" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB3F8" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 10550 4800 50  0001 C CNN
F 1 "VCC" H 10567 5123 50  0000 C CNN
F 2 "" H 10550 4950 50  0001 C CNN
F 3 "" H 10550 4950 50  0001 C CNN
	1    10550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3BB3FE
P 10550 5450
AR Path="/5E3CB2C3/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5E60DA07/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5E638028/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5E649D50/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5E44241B/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5FD2EA30/5F3BB3FE" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB3FE" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 10550 5200 50  0001 C CNN
F 1 "GND" H 10555 5277 50  0000 C CNN
F 2 "" H 10550 5450 50  0001 C CNN
F 3 "" H 10550 5450 50  0001 C CNN
	1    10550 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F3BB404
P 10550 5200
AR Path="/5E3CB2C3/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5E60DA07/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5E638028/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5E649D50/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5E44241B/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5FD2EA30/5F3BB404" Ref="C?"  Part="1" 
AR Path="/5F379153/5F3BB404" Ref="C13"  Part="1" 
F 0 "C13" H 10665 5246 50  0000 L CNN
F 1 "0.1 μF" H 10665 5155 50  0000 L CNN
F 2 "" H 10588 5050 50  0001 C CNN
F 3 "~" H 10550 5200 50  0001 C CNN
	1    10550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 5450 10550 5350
Wire Wire Line
	10550 5050 10550 4950
$Comp
L Device:LED D?
U 1 1 5F3BB426
P 1900 6300
AR Path="/5FD2EA30/5F3BB426" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB426" Ref="D82"  Part="1" 
F 0 "D82" V 2000 6250 50  0000 R CNN
F 1 "LED" H 1950 6200 50  0000 R CNN
F 2 "" H 1900 6300 50  0001 C CNN
F 3 "~" H 1900 6300 50  0001 C CNN
	1    1900 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB42C
P 1900 6700
AR Path="/5FD2EA30/5F3BB42C" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB42C" Ref="R89"  Part="1" 
F 0 "R89" V 2000 6600 50  0000 L CNN
F 1 "220" V 1900 6650 50  0000 L CNN
F 2 "" V 1830 6700 50  0001 C CNN
F 3 "~" H 1900 6700 50  0001 C CNN
	1    1900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6550 1900 6450
$Comp
L Device:LED D?
U 1 1 5F3BB433
P 2200 6300
AR Path="/5FD2EA30/5F3BB433" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB433" Ref="D83"  Part="1" 
F 0 "D83" V 2300 6250 50  0000 R CNN
F 1 "LED" H 2250 6200 50  0000 R CNN
F 2 "" H 2200 6300 50  0001 C CNN
F 3 "~" H 2200 6300 50  0001 C CNN
	1    2200 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB439
P 2200 6700
AR Path="/5FD2EA30/5F3BB439" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB439" Ref="R90"  Part="1" 
F 0 "R90" V 2300 6600 50  0000 L CNN
F 1 "220" V 2200 6650 50  0000 L CNN
F 2 "" V 2130 6700 50  0001 C CNN
F 3 "~" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6550 2200 6450
$Comp
L Device:LED D?
U 1 1 5F3BB440
P 3700 6300
AR Path="/5FD2EA30/5F3BB440" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB440" Ref="D84"  Part="1" 
F 0 "D84" V 3800 6250 50  0000 R CNN
F 1 "LED" H 3750 6200 50  0000 R CNN
F 2 "" H 3700 6300 50  0001 C CNN
F 3 "~" H 3700 6300 50  0001 C CNN
	1    3700 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB446
P 3700 6700
AR Path="/5FD2EA30/5F3BB446" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB446" Ref="R91"  Part="1" 
F 0 "R91" V 3800 6600 50  0000 L CNN
F 1 "220" V 3700 6650 50  0000 L CNN
F 2 "" V 3630 6700 50  0001 C CNN
F 3 "~" H 3700 6700 50  0001 C CNN
	1    3700 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6550 3700 6450
$Comp
L Device:LED D?
U 1 1 5F3BB44D
P 4000 6300
AR Path="/5FD2EA30/5F3BB44D" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB44D" Ref="D85"  Part="1" 
F 0 "D85" V 4100 6250 50  0000 R CNN
F 1 "LED" H 4050 6200 50  0000 R CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "~" H 4000 6300 50  0001 C CNN
	1    4000 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB453
P 4000 6700
AR Path="/5FD2EA30/5F3BB453" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB453" Ref="R92"  Part="1" 
F 0 "R92" V 4100 6600 50  0000 L CNN
F 1 "220" V 4000 6650 50  0000 L CNN
F 2 "" V 3930 6700 50  0001 C CNN
F 3 "~" H 4000 6700 50  0001 C CNN
	1    4000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6550 4000 6450
$Comp
L Device:LED D?
U 1 1 5F3BB45A
P 4300 6300
AR Path="/5FD2EA30/5F3BB45A" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB45A" Ref="D86"  Part="1" 
F 0 "D86" V 4400 6250 50  0000 R CNN
F 1 "LED" H 4350 6200 50  0000 R CNN
F 2 "" H 4300 6300 50  0001 C CNN
F 3 "~" H 4300 6300 50  0001 C CNN
	1    4300 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB460
P 4300 6700
AR Path="/5FD2EA30/5F3BB460" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB460" Ref="R93"  Part="1" 
F 0 "R93" V 4400 6600 50  0000 L CNN
F 1 "220" V 4300 6650 50  0000 L CNN
F 2 "" V 4230 6700 50  0001 C CNN
F 3 "~" H 4300 6700 50  0001 C CNN
	1    4300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6550 4300 6450
$Comp
L Device:LED D?
U 1 1 5F3BB467
P 4600 6300
AR Path="/5FD2EA30/5F3BB467" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB467" Ref="D87"  Part="1" 
F 0 "D87" V 4700 6250 50  0000 R CNN
F 1 "LED" H 4650 6200 50  0000 R CNN
F 2 "" H 4600 6300 50  0001 C CNN
F 3 "~" H 4600 6300 50  0001 C CNN
	1    4600 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB46D
P 4600 6700
AR Path="/5FD2EA30/5F3BB46D" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB46D" Ref="R94"  Part="1" 
F 0 "R94" V 4700 6600 50  0000 L CNN
F 1 "220" V 4600 6650 50  0000 L CNN
F 2 "" V 4530 6700 50  0001 C CNN
F 3 "~" H 4600 6700 50  0001 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 6550 4600 6450
$Comp
L Device:LED D?
U 1 1 5F3BB474
P 6100 6300
AR Path="/5FD2EA30/5F3BB474" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB474" Ref="D88"  Part="1" 
F 0 "D88" V 6200 6250 50  0000 R CNN
F 1 "LED" H 6150 6200 50  0000 R CNN
F 2 "" H 6100 6300 50  0001 C CNN
F 3 "~" H 6100 6300 50  0001 C CNN
	1    6100 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB47A
P 6100 6700
AR Path="/5FD2EA30/5F3BB47A" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB47A" Ref="R95"  Part="1" 
F 0 "R95" V 6200 6600 50  0000 L CNN
F 1 "220" V 6100 6650 50  0000 L CNN
F 2 "" V 6030 6700 50  0001 C CNN
F 3 "~" H 6100 6700 50  0001 C CNN
	1    6100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6550 6100 6450
$Comp
L Device:LED D?
U 1 1 5F3BB481
P 6400 6300
AR Path="/5FD2EA30/5F3BB481" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB481" Ref="D89"  Part="1" 
F 0 "D89" V 6500 6250 50  0000 R CNN
F 1 "LED" H 6450 6200 50  0000 R CNN
F 2 "" H 6400 6300 50  0001 C CNN
F 3 "~" H 6400 6300 50  0001 C CNN
	1    6400 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB487
P 6400 6700
AR Path="/5FD2EA30/5F3BB487" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB487" Ref="R96"  Part="1" 
F 0 "R96" V 6500 6600 50  0000 L CNN
F 1 "220" V 6400 6650 50  0000 L CNN
F 2 "" V 6330 6700 50  0001 C CNN
F 3 "~" H 6400 6700 50  0001 C CNN
	1    6400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6550 6400 6450
$Comp
L Device:LED D?
U 1 1 5F3BB48E
P 6700 6300
AR Path="/5FD2EA30/5F3BB48E" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB48E" Ref="D90"  Part="1" 
F 0 "D90" V 6800 6250 50  0000 R CNN
F 1 "LED" H 6750 6200 50  0000 R CNN
F 2 "" H 6700 6300 50  0001 C CNN
F 3 "~" H 6700 6300 50  0001 C CNN
	1    6700 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB494
P 6700 6700
AR Path="/5FD2EA30/5F3BB494" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB494" Ref="R97"  Part="1" 
F 0 "R97" V 6800 6600 50  0000 L CNN
F 1 "220" V 6700 6650 50  0000 L CNN
F 2 "" V 6630 6700 50  0001 C CNN
F 3 "~" H 6700 6700 50  0001 C CNN
	1    6700 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6550 6700 6450
$Comp
L Device:LED D?
U 1 1 5F3BB49B
P 7450 5950
AR Path="/5FD2EA30/5F3BB49B" Ref="D?"  Part="1" 
AR Path="/5F379153/5F3BB49B" Ref="D91"  Part="1" 
F 0 "D91" V 7550 5900 50  0000 R CNN
F 1 "LED" H 7500 5850 50  0000 R CNN
F 2 "" H 7450 5950 50  0001 C CNN
F 3 "~" H 7450 5950 50  0001 C CNN
	1    7450 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3BB4A1
P 7850 5950
AR Path="/5FD2EA30/5F3BB4A1" Ref="R?"  Part="1" 
AR Path="/5F379153/5F3BB4A1" Ref="R98"  Part="1" 
F 0 "R98" V 7950 5850 50  0000 L CNN
F 1 "220" V 7850 5900 50  0000 L CNN
F 2 "" V 7780 5950 50  0001 C CNN
F 3 "~" H 7850 5950 50  0001 C CNN
	1    7850 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 5950 7600 5950
Wire Wire Line
	7300 5950 7200 5950
Connection ~ 7200 5950
Wire Wire Line
	7200 5950 7200 5850
Wire Wire Line
	6700 6150 6700 6050
Wire Wire Line
	6700 6050 6900 6050
Connection ~ 6900 6050
Wire Wire Line
	6900 6050 6900 6200
Wire Wire Line
	6600 6050 6400 6050
Wire Wire Line
	6400 6050 6400 6150
Connection ~ 6600 6050
Wire Wire Line
	6600 6050 6600 5850
Wire Wire Line
	6300 6050 6100 6050
Wire Wire Line
	6100 6050 6100 6150
Connection ~ 6300 6050
Wire Wire Line
	6300 6050 6300 6200
Wire Wire Line
	4600 6150 4600 6050
Wire Wire Line
	4600 6050 4800 6050
Connection ~ 4800 6050
Wire Wire Line
	4800 6050 4800 5850
Wire Wire Line
	4500 6050 4300 6050
Wire Wire Line
	4300 6050 4300 6150
Connection ~ 4500 6050
Wire Wire Line
	4500 6050 4500 6200
Wire Wire Line
	4000 6150 4000 6050
Wire Wire Line
	4000 6050 4200 6050
Connection ~ 4200 6050
Wire Wire Line
	4200 6050 4200 5850
Wire Wire Line
	3900 6050 3700 6050
Wire Wire Line
	3700 6050 3700 6150
Connection ~ 3900 6050
Wire Wire Line
	3900 6050 3900 6200
Wire Wire Line
	2200 6150 2200 6050
Wire Wire Line
	2200 6050 2400 6050
Connection ~ 2400 6050
Wire Wire Line
	2400 6050 2400 5850
Wire Wire Line
	2100 6050 1900 6050
Wire Wire Line
	1900 6050 1900 6150
Connection ~ 2100 6050
Wire Wire Line
	2100 6050 2100 6200
$Comp
L power:GND #PWR?
U 1 1 5F3BB531
P 8100 5800
AR Path="/5FD2EA30/5F3BB531" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB531" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 8100 5550 50  0001 C CNN
F 1 "GND" H 8105 5627 50  0000 C CNN
F 2 "" H 8100 5800 50  0001 C CNN
F 3 "" H 8100 5800 50  0001 C CNN
	1    8100 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 5800 8100 5950
Wire Wire Line
	8100 5950 8000 5950
$Comp
L power:GND #PWR?
U 1 1 5F3BB539
P 6400 7350
AR Path="/5FD2EA30/5F3BB539" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB539" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 6400 7100 50  0001 C CNN
F 1 "GND" H 6405 7177 50  0000 C CNN
F 2 "" H 6400 7350 50  0001 C CNN
F 3 "" H 6400 7350 50  0001 C CNN
	1    6400 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 7350 6400 7000
Wire Wire Line
	6100 6850 6100 7000
Wire Wire Line
	6100 7000 6400 7000
Connection ~ 6400 7000
Wire Wire Line
	6400 7000 6400 6850
Wire Wire Line
	6400 7000 6700 7000
Wire Wire Line
	6700 7000 6700 6850
$Comp
L power:GND #PWR?
U 1 1 5F3BB546
P 4150 7350
AR Path="/5FD2EA30/5F3BB546" Ref="#PWR?"  Part="1" 
AR Path="/5F379153/5F3BB546" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4150 7100 50  0001 C CNN
F 1 "GND" H 4155 7177 50  0000 C CNN
F 2 "" H 4150 7350 50  0001 C CNN
F 3 "" H 4150 7350 50  0001 C CNN
	1    4150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7350 4150 7250
Wire Wire Line
	4150 7250 4000 7250
Wire Wire Line
	3700 7250 3700 6850
Wire Wire Line
	4150 7250 4300 7250
Wire Wire Line
	4600 7250 4600 6850
Connection ~ 4150 7250
Wire Wire Line
	4300 6850 4300 7250
Connection ~ 4300 7250
Wire Wire Line
	4300 7250 4600 7250
Wire Wire Line
	4000 7250 4000 6850
Connection ~ 4000 7250
Wire Wire Line
	4000 7250 3700 7250
Wire Wire Line
	2200 7200 2200 6850
Wire Wire Line
	1900 6850 1900 7200
Wire Wire Line
	1900 7200 2050 7200
Text HLabel 2300 1250 1    50   Input ~ 0
ARDUINO_ADDR_8
Text HLabel 2000 1250 1    50   Input ~ 0
ARDUINO_ADDR_9
NoConn ~ 1800 2350
NoConn ~ 1700 2350
NoConn ~ 1500 2350
NoConn ~ 1400 2350
$Comp
L 74xx:74LS157 U?
U 1 1 5F3BB203
P 1800 2850
AR Path="/5FD2EA30/5F3BB203" Ref="U?"  Part="1" 
AR Path="/5F379153/5F3BB203" Ref="U48"  Part="1" 
F 0 "U48" V 2100 3600 50  0000 L CNN
F 1 "74LS157" V 1800 2650 50  0000 L CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 1800 2850 50  0001 C CNN
	1    1800 2850
	0    1    1    0   
$EndComp
NoConn ~ 1800 4850
NoConn ~ 1700 4850
NoConn ~ 1500 4850
NoConn ~ 1400 4850
NoConn ~ 1800 5850
NoConn ~ 1500 5850
$Comp
L power:GND #PWR0109
U 1 1 5F6D1718
P 2050 7350
F 0 "#PWR0109" H 2050 7100 50  0001 C CNN
F 1 "GND" H 2055 7177 50  0000 C CNN
F 2 "" H 2050 7350 50  0001 C CNN
F 3 "" H 2050 7350 50  0001 C CNN
	1    2050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7350 2050 7200
Connection ~ 2050 7200
Wire Wire Line
	2050 7200 2200 7200
$Comp
L Switch:SW_DIP_x10 SW3
U 1 1 5F6DC11B
P 8000 1850
F 0 "SW3" H 8000 2617 50  0000 C CNN
F 1 "SW_DIP_x10" H 8000 2526 50  0000 C CNN
F 2 "" H 8000 1850 50  0001 C CNN
F 3 "~" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1250 7100 2350
Wire Wire Line
	6800 1250 6800 2350
Wire Wire Line
	6500 1250 6500 2350
Wire Wire Line
	6200 1250 6200 2350
Wire Wire Line
	4700 1250 4700 2350
Wire Wire Line
	4400 1250 4400 2350
Wire Wire Line
	4100 1250 4100 2350
Wire Wire Line
	3800 1250 3800 2350
Wire Wire Line
	7700 2250 7200 2250
Wire Wire Line
	7200 2250 7200 2350
Wire Wire Line
	6900 2350 6900 2150
Wire Wire Line
	6900 2150 7700 2150
Wire Wire Line
	7700 2050 6600 2050
Wire Wire Line
	6600 2050 6600 2350
Wire Wire Line
	6300 2350 6300 1950
Wire Wire Line
	6300 1950 7700 1950
Wire Wire Line
	7700 1850 4800 1850
Wire Wire Line
	4500 1750 7700 1750
Wire Wire Line
	7700 1650 4200 1650
Wire Wire Line
	4200 1650 4200 2350
Wire Wire Line
	3900 1550 7700 1550
Wire Wire Line
	3900 1550 3900 2350
Wire Wire Line
	7700 1450 2400 1450
Wire Wire Line
	2400 1450 2400 2350
Wire Wire Line
	2000 1250 2000 2350
Wire Wire Line
	2300 1250 2300 2350
Wire Wire Line
	2100 2350 2100 1350
Wire Wire Line
	2100 1350 7700 1350
$Comp
L power:GND #PWR0123
U 1 1 5F7B60ED
P 8600 1800
F 0 "#PWR0123" H 8600 1550 50  0001 C CNN
F 1 "GND" V 8605 1672 50  0000 R CNN
F 2 "" H 8600 1800 50  0001 C CNN
F 3 "" H 8600 1800 50  0001 C CNN
	1    8600 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1800 8450 1800
Wire Wire Line
	8450 1800 8450 1750
Wire Wire Line
	8450 1350 8300 1350
Wire Wire Line
	8300 2250 8450 2250
Wire Wire Line
	8450 2250 8450 2150
Connection ~ 8450 1800
Wire Wire Line
	8300 2150 8450 2150
Connection ~ 8450 2150
Wire Wire Line
	8450 2150 8450 2050
Wire Wire Line
	8450 2050 8300 2050
Connection ~ 8450 2050
Wire Wire Line
	8450 2050 8450 1950
Wire Wire Line
	8300 1950 8450 1950
Connection ~ 8450 1950
Wire Wire Line
	8450 1950 8450 1850
Wire Wire Line
	8450 1850 8300 1850
Connection ~ 8450 1850
Wire Wire Line
	8450 1850 8450 1800
Wire Wire Line
	8300 1750 8450 1750
Connection ~ 8450 1750
Wire Wire Line
	8450 1750 8450 1650
Wire Wire Line
	8450 1650 8300 1650
Connection ~ 8450 1650
Wire Wire Line
	8450 1650 8450 1550
Wire Wire Line
	8300 1550 8450 1550
Connection ~ 8450 1550
Wire Wire Line
	8450 1550 8450 1450
Wire Wire Line
	8450 1450 8300 1450
Connection ~ 8450 1450
Wire Wire Line
	8450 1450 8450 1350
Wire Wire Line
	10350 4600 2100 4600
Wire Wire Line
	2100 4600 2100 4850
Wire Wire Line
	2400 4500 10350 4500
Wire Wire Line
	6300 3800 10350 3800
Wire Wire Line
	6300 3800 6300 4850
Wire Wire Line
	6600 3700 10350 3700
Wire Wire Line
	6600 3700 6600 4850
Wire Wire Line
	6900 3600 10350 3600
Wire Wire Line
	6900 3600 6900 4850
Wire Wire Line
	7200 3500 10350 3500
Wire Wire Line
	7200 3500 7200 4850
Wire Wire Line
	4800 4000 4800 4850
Wire Wire Line
	4500 4100 10350 4100
Wire Wire Line
	4800 4000 10350 4000
Wire Wire Line
	10350 4200 4200 4200
Wire Wire Line
	3900 4300 10350 4300
Wire Wire Line
	3900 4300 3900 4850
Wire Wire Line
	8700 500  6000 500 
Wire Wire Line
	1200 500  1200 2350
Wire Wire Line
	3600 2350 3600 500 
Connection ~ 3600 500 
Wire Wire Line
	3600 500  1200 500 
Wire Wire Line
	6000 500  6000 2350
Connection ~ 6000 500 
Wire Wire Line
	6000 500  3600 500 
Wire Wire Line
	9550 3000 9550 4700
Wire Wire Line
	9550 4700 6000 4700
Wire Wire Line
	1200 4700 1200 4850
Wire Wire Line
	6000 4700 6000 4850
Connection ~ 6000 4700
Wire Wire Line
	6000 4700 3600 4700
Wire Wire Line
	3600 4850 3600 4700
Connection ~ 3600 4700
Wire Wire Line
	3600 4700 1200 4700
Text HLabel 10350 4000 2    50   Input ~ 0
MAR_4
Text HLabel 10350 4100 2    50   Input ~ 0
MAR_5
Text HLabel 10350 4200 2    50   Input ~ 0
MAR_6
Text HLabel 10350 4300 2    50   Input ~ 0
MAR_7
Text HLabel 10350 4500 2    50   Input ~ 0
MAR_8
Text HLabel 10350 4600 2    50   Input ~ 0
MAR_9
Text HLabel 10350 3800 2    50   Input ~ 0
MAR_3
Text HLabel 10350 3700 2    50   Input ~ 0
MAR_2
Text HLabel 10350 3600 2    50   Input ~ 0
MAR_1
Text HLabel 10350 3500 2    50   Input ~ 0
MAR_0
Text HLabel 8700 900  3    50   Input ~ 0
ARDUINO
Wire Wire Line
	8700 900  8700 500 
Text HLabel 9550 3000 1    50   Input ~ 0
PROG
NoConn ~ 1800 3350
NoConn ~ 1500 3350
$EndSCHEMATC
