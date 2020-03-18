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
CLK
Text HLabel 4000 5000 3    50   Output ~ 0
~E
Text HLabel 4150 5000 3    50   Output ~ 0
R-~W
$Comp
L 74xx:74LS245 U?
U 1 1 5F4BD824
P 5700 3550
F 0 "U?" V 5450 4200 50  0000 L CNN
F 1 "74LS245" V 5800 3400 50  0000 L CNN
F 2 "" H 5700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 5700 3550 50  0001 C CNN
	1    5700 3550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5F4BE7DB
P 7700 3550
F 0 "U?" V 7450 4200 50  0000 L CNN
F 1 "74LS245" V 7800 3400 50  0000 L CNN
F 2 "" H 7700 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 7700 3550 50  0001 C CNN
	1    7700 3550
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F4BFCC1
P 6650 3400
F 0 "#PWR?" H 6650 3250 50  0001 C CNN
F 1 "VCC" H 6667 3573 50  0000 C CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4C0066
P 6750 3700
F 0 "#PWR?" H 6750 3450 50  0001 C CNN
F 1 "GND" H 6755 3527 50  0000 C CNN
F 2 "" H 6750 3700 50  0001 C CNN
F 3 "" H 6750 3700 50  0001 C CNN
	1    6750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4C023F
P 4750 3700
F 0 "#PWR?" H 4750 3450 50  0001 C CNN
F 1 "GND" H 4755 3527 50  0000 C CNN
F 2 "" H 4750 3700 50  0001 C CNN
F 3 "" H 4750 3700 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F4C0372
P 8650 3400
F 0 "#PWR?" H 8650 3250 50  0001 C CNN
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
Wire Bus Line
	4400 1800 8200 1800
$EndSCHEMATC
