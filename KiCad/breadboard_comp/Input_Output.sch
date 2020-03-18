EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5550 1800 0    50   ~ 10
16-Bit Common Bus
Text HLabel 5600 5050 3    50   BiDi ~ 0
ARDUINO_IO_1
Text HLabel 5700 5050 3    50   BiDi ~ 0
ARDUINO_IO_2
Text HLabel 5500 5050 3    50   BiDi ~ 0
ARDUINO_IO_0
Text HLabel 5800 5050 3    50   BiDi ~ 0
ARDUINO_IO_3
Text HLabel 6000 5050 3    50   BiDi ~ 0
ARDUINO_IO_5
Text HLabel 6100 5050 3    50   BiDi ~ 0
ARDUINO_IO_6
Text HLabel 6200 5050 3    50   BiDi ~ 0
ARDUINO_IO_7
Text HLabel 7500 5050 3    50   BiDi ~ 0
ARDUINO_IO_8
Text HLabel 7600 5050 3    50   BiDi ~ 0
ARDUINO_IO_9
Text HLabel 7700 5050 3    50   BiDi ~ 0
ARDUINO_IO_10
Text HLabel 7800 5050 3    50   BiDi ~ 0
ARDUINO_IO_11
Text HLabel 7900 5050 3    50   BiDi ~ 0
ARDUINO_IO_12
Text HLabel 8000 5050 3    50   BiDi ~ 0
ARDUINO_IO_13
Text HLabel 8100 5050 3    50   BiDi ~ 0
ARDUINO_IO_14
Text HLabel 8200 5050 3    50   BiDi ~ 0
ARDUINO_IO_15
Text HLabel 5900 5050 3    50   BiDi ~ 0
ARDUINO_IO_4
Text HLabel 4300 5000 3    50   Output ~ 0
CLK_ARDUINO
Text HLabel 4000 5000 3    50   Output ~ 0
~E_ARDUINO
$Comp
L 74xx:74LS245 U70
U 1 1 5F4BD824
P 5700 3550
F 0 "U70" V 5450 4200 50  0000 L CNN
F 1 "74LS245" V 5800 3400 50  0000 L CNN
F 2 "" H 5700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5700 3550 50  0001 C CNN
	1    5700 3550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U71
U 1 1 5F4BE7DB
P 7700 3550
F 0 "U71" V 7450 4200 50  0000 L CNN
F 1 "74LS245" V 7800 3400 50  0000 L CNN
F 2 "" H 7700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7700 3550 50  0001 C CNN
	1    7700 3550
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0173
U 1 1 5F4BFCC1
P 6650 3400
F 0 "#PWR0173" H 6650 3250 50  0001 C CNN
F 1 "VCC" H 6667 3573 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0174
U 1 1 5F4C0066
P 6750 3700
F 0 "#PWR0174" H 6750 3450 50  0001 C CNN
F 1 "GND" H 6755 3527 50  0000 C CNN
F 2 "" H 6750 3700 50  0001 C CNN
F 3 "" H 6750 3700 50  0001 C CNN
	1    6750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 5F4C023F
P 4750 3700
F 0 "#PWR0172" H 4750 3450 50  0001 C CNN
F 1 "GND" H 4755 3527 50  0000 C CNN
F 2 "" H 4750 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0177
U 1 1 5F4C0372
P 8650 3400
F 0 "#PWR0177" H 8650 3250 50  0001 C CNN
F 1 "VCC" H 8667 3573 50  0000 C CNN
F 2 "" H 8650 3400 50  0001 C CNN
F 3 "" H 8650 3400 50  0001 C CNN
	1    8650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3400 8650 3550
Wire Wire Line
	8650 3550 8500 3550
Wire Wire Line
	6900 3550 6750 3550
Wire Wire Line
	6750 3550 6750 3700
Wire Wire Line
	6500 3550 6650 3550
Wire Wire Line
	6650 3550 6650 3400
Wire Wire Line
	4900 3550 4750 3550
Wire Wire Line
	4750 3550 4750 3700
Text HLabel 3700 2100 0    50   Input ~ 0
CLK
Text HLabel 3700 2250 0    50   Input ~ 0
~E
Text HLabel 3700 2400 0    50   Input ~ 0
R-~W
Entry Wire Line
	8100 1800 8200 1900
Entry Wire Line
	8000 1800 8100 1900
Entry Wire Line
	7900 1800 8000 1900
Entry Wire Line
	7800 1800 7900 1900
Entry Wire Line
	7700 1800 7800 1900
Entry Wire Line
	7600 1800 7700 1900
Entry Wire Line
	7500 1800 7600 1900
Entry Wire Line
	7400 1800 7500 1900
Entry Wire Line
	6100 1800 6200 1900
Entry Wire Line
	6000 1800 6100 1900
Entry Wire Line
	5900 1800 6000 1900
Entry Wire Line
	5800 1800 5900 1900
Entry Wire Line
	5700 1800 5800 1900
Entry Wire Line
	5600 1800 5700 1900
Entry Wire Line
	5500 1800 5600 1900
Entry Wire Line
	5400 1800 5500 1900
Wire Wire Line
	5500 1900 5500 3050
Wire Wire Line
	5600 3050 5600 1900
Wire Wire Line
	5700 1900 5700 3050
Wire Wire Line
	5800 3050 5800 1900
Wire Wire Line
	5900 1900 5900 3050
Wire Wire Line
	6000 3050 6000 1900
Wire Wire Line
	6100 1900 6100 3050
Wire Wire Line
	6200 3050 6200 1900
Wire Wire Line
	7500 1900 7500 3050
Wire Wire Line
	7600 3050 7600 1900
Wire Wire Line
	7700 1900 7700 3050
Wire Wire Line
	7800 3050 7800 1900
Wire Wire Line
	7900 1900 7900 3050
Wire Wire Line
	8000 3050 8000 1900
Wire Wire Line
	8100 1900 8100 3050
Wire Wire Line
	8200 3050 8200 1900
Wire Wire Line
	8200 4050 8200 5050
Wire Wire Line
	8100 5050 8100 4050
Wire Wire Line
	8000 4050 8000 5050
Wire Wire Line
	7900 5050 7900 4050
Wire Wire Line
	7800 4050 7800 5050
Wire Wire Line
	7700 5050 7700 4050
Wire Wire Line
	7600 4050 7600 5050
Wire Wire Line
	7500 5050 7500 4050
Wire Wire Line
	6200 4050 6200 5050
Wire Wire Line
	6100 5050 6100 4050
Wire Wire Line
	6000 4050 6000 5050
Wire Wire Line
	5900 5050 5900 4050
Wire Wire Line
	5800 4050 5800 5050
Wire Wire Line
	5700 5050 5700 4050
Wire Wire Line
	5600 4050 5600 5050
Wire Wire Line
	5500 5050 5500 4050
Wire Wire Line
	3700 2400 4150 2400
Wire Wire Line
	7300 2400 7300 3050
Wire Wire Line
	5300 3050 5300 2400
Connection ~ 5300 2400
Wire Wire Line
	5300 2400 7300 2400
Wire Wire Line
	3700 2250 4000 2250
Wire Wire Line
	7200 2250 7200 3050
Wire Wire Line
	5200 3050 5200 2250
Connection ~ 5200 2250
Wire Wire Line
	5200 2250 7200 2250
Wire Wire Line
	3700 2100 4300 2100
Wire Wire Line
	4300 2100 4300 5000
Wire Wire Line
	4150 5000 4150 2400
Connection ~ 4150 2400
Wire Wire Line
	4150 2400 5300 2400
Wire Wire Line
	4000 2250 4000 5000
Connection ~ 4000 2250
Wire Wire Line
	4000 2250 5200 2250
$Comp
L power:VCC #PWR?
U 1 1 5F4DADE8
P 8600 1450
AR Path="/5E34AD27/5F4DADE8" Ref="#PWR?"  Part="1" 
AR Path="/5F4BCEAF/5F4DADE8" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 8600 1300 50  0001 C CNN
F 1 "VCC" H 8617 1623 50  0000 C CNN
F 2 "" H 8600 1450 50  0001 C CNN
F 3 "" H 8600 1450 50  0001 C CNN
	1    8600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4DADEE
P 8600 1950
AR Path="/5E34AD27/5F4DADEE" Ref="#PWR?"  Part="1" 
AR Path="/5F4BCEAF/5F4DADEE" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 8600 1700 50  0001 C CNN
F 1 "GND" H 8605 1777 50  0000 C CNN
F 2 "" H 8600 1950 50  0001 C CNN
F 3 "" H 8600 1950 50  0001 C CNN
	1    8600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F4DADF4
P 8600 1700
AR Path="/5E34AD27/5F4DADF4" Ref="C?"  Part="1" 
AR Path="/5F4BCEAF/5F4DADF4" Ref="C18"  Part="1" 
F 0 "C18" H 8715 1746 50  0000 L CNN
F 1 "0.1 μF" H 8715 1655 50  0000 L CNN
F 2 "" H 8638 1550 50  0001 C CNN
F 3 "~" H 8600 1700 50  0001 C CNN
	1    8600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1550 8600 1450
Wire Wire Line
	8600 1850 8600 1950
Text HLabel 4150 5000 3    50   Output ~ 0
R-~W~_ARDUINO
Text Label 8200 1950 3    50   ~ 0
B0
Text Label 8100 1950 3    50   ~ 0
B1
Text Label 8000 1950 3    50   ~ 0
B2
Text Label 7900 1950 3    50   ~ 0
B3
Text Label 7800 1950 3    50   ~ 0
B4
Text Label 7700 1950 3    50   ~ 0
B5
Text Label 7600 1950 3    50   ~ 0
B6
Text Label 7500 1950 3    50   ~ 0
B7
Text Label 6200 1950 3    50   ~ 0
B8
Text Label 6100 1950 3    50   ~ 0
B9
Text Label 6000 2050 1    50   ~ 0
B10
Text Label 5900 2050 1    50   ~ 0
B11
Text Label 5800 2050 1    50   ~ 0
B12
Text Label 5700 2050 1    50   ~ 0
B13
Text Label 5600 2050 1    50   ~ 0
B14
Text Label 5500 2050 1    50   ~ 0
B15
Text HLabel 3700 1800 0    50   BiDi ~ 0
BUS
Wire Bus Line
	3700 1800 8200 1800
$EndSCHEMATC
