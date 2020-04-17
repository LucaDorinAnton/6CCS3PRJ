EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 19
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
L Timer:LM555 U?
U 1 1 5E3C7BAD
P 2650 2100
AR Path="/5E3C7BAD" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7BAD" Ref="U1"  Part="1" 
F 0 "U1" H 2350 2450 50  0000 C CNN
F 1 "LM555" H 2900 1750 50  0000 C CNN
F 2 "" H 2650 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2650 2100 50  0001 C CNN
	1    2650 2100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3C7BB3
P 2650 1300
AR Path="/5E3C7BB3" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7BB3" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2650 1150 50  0001 C CNN
F 1 "VCC" H 2667 1473 50  0000 C CNN
F 2 "" H 2650 1300 50  0001 C CNN
F 3 "" H 2650 1300 50  0001 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C7BB9
P 2650 3200
AR Path="/5E3C7BB9" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7BB9" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 2650 2950 50  0001 C CNN
F 1 "GND" H 2655 3027 50  0000 C CNN
F 2 "" H 2650 3200 50  0001 C CNN
F 3 "" H 2650 3200 50  0001 C CNN
	1    2650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2500 2650 2800
$Comp
L Device:CP C?
U 1 1 5E3C7BC0
P 1550 2950
AR Path="/5E3C7BC0" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7BC0" Ref="C1"  Part="1" 
F 0 "C1" H 1668 2996 50  0000 L CNN
F 1 "1 μF" H 1668 2905 50  0000 L CNN
F 2 "" H 1588 2800 50  0001 C CNN
F 3 "~" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3100 2650 3100
Connection ~ 2650 3100
Wire Wire Line
	2650 3100 2650 3200
Wire Wire Line
	2150 1900 1550 1900
Wire Wire Line
	1550 1600 1550 1900
Connection ~ 1550 1900
Wire Wire Line
	1550 1900 1550 2800
$Comp
L Device:C C?
U 1 1 5E3C7BCD
P 1850 2650
AR Path="/5E3C7BCD" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7BCD" Ref="C2"  Part="1" 
F 0 "C2" H 1965 2696 50  0000 L CNN
F 1 "0.01 μF" H 1965 2605 50  0000 L CNN
F 2 "" H 1888 2500 50  0001 C CNN
F 3 "~" H 1850 2650 50  0001 C CNN
	1    1850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2800 2650 2800
Connection ~ 2650 2800
Wire Wire Line
	2650 2800 2650 3100
Wire Wire Line
	1850 2500 1850 2100
Wire Wire Line
	1850 2100 2150 2100
$Comp
L power:GND #PWR?
U 1 1 5E3C7BD8
P 9900 4700
AR Path="/5E3C7BD8" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7BD8" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 9900 4450 50  0001 C CNN
F 1 "GND" H 9905 4527 50  0000 C CNN
F 2 "" H 9900 4700 50  0001 C CNN
F 3 "" H 9900 4700 50  0001 C CNN
	1    9900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3C7BDE
P 9900 4400
AR Path="/5E3C7BDE" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7BDE" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 9900 4250 50  0001 C CNN
F 1 "VCC" H 9917 4573 50  0000 C CNN
F 2 "" H 9900 4400 50  0001 C CNN
F 3 "" H 9900 4400 50  0001 C CNN
	1    9900 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E3C7BE4
P 9900 4550
AR Path="/5E3C7BE4" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7BE4" Ref="C6"  Part="1" 
F 0 "C6" H 10015 4596 50  0000 L CNN
F 1 "0.1 μF" H 10015 4505 50  0000 L CNN
F 2 "" H 9938 4400 50  0001 C CNN
F 3 "~" H 9900 4550 50  0001 C CNN
	1    9900 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C7BEA
P 3750 2100
AR Path="/5E3C7BEA" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7BEA" Ref="R3"  Part="1" 
F 0 "R3" V 3850 2150 50  0000 C CNN
F 1 "1k" V 3750 2100 50  0000 C CNN
F 2 "" V 3680 2100 50  0001 C CNN
F 3 "~" H 3750 2100 50  0001 C CNN
	1    3750 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2300 3350 2300
$Comp
L Device:R_Variable R?
U 1 1 5E3C7BF1
P 3500 2650
AR Path="/5E3C7BF1" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7BF1" Ref="R2"  Part="1" 
F 0 "R2" V 3650 2700 50  0000 C CNN
F 1 "1M" V 3600 2600 50  0000 C CNN
F 2 "" V 3430 2650 50  0001 C CNN
F 3 "~" H 3500 2650 50  0001 C CNN
	1    3500 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2300 3350 1600
Wire Wire Line
	1550 1600 3350 1600
Connection ~ 3350 2300
Wire Wire Line
	3150 2100 3500 2100
$Comp
L Device:R R?
U 1 1 5E3C7BFD
P 3500 2250
AR Path="/5E3C7BFD" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7BFD" Ref="R1"  Part="1" 
F 0 "R1" V 3400 2300 50  0000 C CNN
F 1 "1k" V 3500 2250 50  0000 C CNN
F 2 "" V 3430 2250 50  0001 C CNN
F 3 "~" H 3500 2250 50  0001 C CNN
	1    3500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 1300 2650 1450
Wire Wire Line
	3500 2100 3600 2100
Connection ~ 3500 2100
Wire Wire Line
	3900 2100 3900 1450
Wire Wire Line
	3900 1450 2650 1450
Connection ~ 2650 1450
Wire Wire Line
	2650 1450 2650 1700
$Comp
L Timer:LM555 U?
U 1 1 5E3C7C0A
P 5750 2150
AR Path="/5E3C7C0A" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7C0A" Ref="U5"  Part="1" 
F 0 "U5" H 5450 2500 50  0000 C CNN
F 1 "LM555" H 6000 1800 50  0000 C CNN
F 2 "" H 5750 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 5750 2150 50  0001 C CNN
	1    5750 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3C7C10
P 5750 1150
AR Path="/5E3C7C10" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7C10" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5750 1000 50  0001 C CNN
F 1 "VCC" H 5767 1323 50  0000 C CNN
F 2 "" H 5750 1150 50  0001 C CNN
F 3 "" H 5750 1150 50  0001 C CNN
	1    5750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C7C16
P 5750 3100
AR Path="/5E3C7C16" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7C16" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5750 2850 50  0001 C CNN
F 1 "GND" H 5755 2927 50  0000 C CNN
F 2 "" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0001 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2550 5750 2950
$Comp
L Device:R R?
U 1 1 5E3C7C1D
P 6500 1600
AR Path="/5E3C7C1D" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7C1D" Ref="R5"  Part="1" 
F 0 "R5" H 6570 1646 50  0000 L CNN
F 1 "1M" V 6500 1550 50  0000 L CNN
F 2 "" V 6430 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1450 6500 1350
Wire Wire Line
	6500 1350 5750 1350
Wire Wire Line
	5750 1150 5750 1350
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 5750 1750
Wire Wire Line
	6500 1750 6500 2150
Wire Wire Line
	6250 2350 6500 2350
Connection ~ 6500 2350
Wire Wire Line
	6500 2350 6500 2450
Wire Wire Line
	6250 2150 6500 2150
Connection ~ 6500 2150
Wire Wire Line
	6500 2150 6500 2350
$Comp
L Device:C C?
U 1 1 5E3C7C2F
P 6500 2600
AR Path="/5E3C7C2F" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7C2F" Ref="C4"  Part="1" 
F 0 "C4" H 6615 2646 50  0000 L CNN
F 1 "0.1 μF" H 6615 2555 50  0000 L CNN
F 2 "" H 6538 2450 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2750 6500 2950
Wire Wire Line
	6500 2950 5750 2950
Connection ~ 5750 2950
Wire Wire Line
	5750 2950 5750 3100
Wire Wire Line
	5750 2950 5100 2950
$Comp
L Device:C C?
U 1 1 5E3C7C3A
P 5100 2600
AR Path="/5E3C7C3A" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7C3A" Ref="C3"  Part="1" 
F 0 "C3" H 5215 2646 50  0000 L CNN
F 1 "0.01 μF" H 5215 2555 50  0000 L CNN
F 2 "" H 5138 2450 50  0001 C CNN
F 3 "~" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2150 5100 2150
Wire Wire Line
	5100 2150 5100 2450
Wire Wire Line
	5100 2750 5100 2950
Wire Wire Line
	5250 2350 4950 2350
Wire Wire Line
	4950 2350 4950 1350
Wire Wire Line
	4950 1350 5750 1350
$Comp
L Device:R R?
U 1 1 5E3C7C46
P 4650 1600
AR Path="/5E3C7C46" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7C46" Ref="R4"  Part="1" 
F 0 "R4" H 4720 1646 50  0000 L CNN
F 1 "1k" V 4650 1550 50  0000 L CNN
F 2 "" V 4580 1600 50  0001 C CNN
F 3 "~" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1350 4650 1350
Wire Wire Line
	4650 1350 4650 1450
Connection ~ 4950 1350
$Comp
L Switch:SW_Push SW?
U 1 1 5E3C7C4F
P 4300 1950
AR Path="/5E3C7C4F" Ref="SW?"  Part="1" 
AR Path="/5E367421/5E3C7C4F" Ref="SW1"  Part="1" 
F 0 "SW1" H 4300 2100 50  0000 C CNN
F 1 "SW_Push" H 4300 1850 50  0000 C CNN
F 2 "" H 4300 2150 50  0001 C CNN
F 3 "~" H 4300 2150 50  0001 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1750 4650 1950
Wire Wire Line
	4650 1950 4500 1950
Wire Wire Line
	4650 1950 5250 1950
Connection ~ 4650 1950
Wire Wire Line
	4100 1950 4100 2950
Wire Wire Line
	4100 2950 5100 2950
Connection ~ 5100 2950
$Comp
L Timer:LM555 U?
U 1 1 5E3C7C5C
P 9250 2200
AR Path="/5E3C7C5C" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7C5C" Ref="U6"  Part="1" 
F 0 "U6" H 8950 2550 50  0000 C CNN
F 1 "LM555" H 9500 1850 50  0000 C CNN
F 2 "" H 9250 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 9250 2200 50  0001 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E3C7C62
P 9250 1250
AR Path="/5E3C7C62" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7C62" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 9250 1100 50  0001 C CNN
F 1 "VCC" H 9267 1423 50  0000 C CNN
F 2 "" H 9250 1250 50  0001 C CNN
F 3 "" H 9250 1250 50  0001 C CNN
	1    9250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1250 9250 1400
$Comp
L power:GND #PWR?
U 1 1 5E3C7C69
P 9250 3150
AR Path="/5E3C7C69" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7C69" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 9250 2900 50  0001 C CNN
F 1 "GND" H 9255 2977 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2600 9250 3100
NoConn ~ 9750 2200
$Comp
L Device:C C?
U 1 1 5E3C7C71
P 8600 2850
AR Path="/5E3C7C71" Ref="C?"  Part="1" 
AR Path="/5E367421/5E3C7C71" Ref="C5"  Part="1" 
F 0 "C5" H 8715 2896 50  0000 L CNN
F 1 "0.01 μF" H 8715 2805 50  0000 L CNN
F 2 "" H 8638 2700 50  0001 C CNN
F 3 "~" H 8600 2850 50  0001 C CNN
	1    8600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2700 8600 2200
Wire Wire Line
	8600 2200 8750 2200
Wire Wire Line
	8600 3000 8600 3100
Wire Wire Line
	8600 3100 9250 3100
Connection ~ 9250 3100
Wire Wire Line
	9250 3100 9250 3150
$Comp
L Switch:SW_SPDT SW?
U 1 1 5E3C7C7D
P 7900 2300
AR Path="/5E3C7C7D" Ref="SW?"  Part="1" 
AR Path="/5E367421/5E3C7C7D" Ref="SW2"  Part="1" 
F 0 "SW2" H 7800 2400 50  0000 C CNN
F 1 "SW_SPDT" H 7900 2100 50  0000 C CNN
F 2 "" H 7900 2300 50  0001 C CNN
F 3 "~" H 7900 2300 50  0001 C CNN
	1    7900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2200 8150 2200
Wire Wire Line
	8150 2200 8150 2000
Wire Wire Line
	7700 2300 7700 3100
Connection ~ 8600 3100
Wire Wire Line
	9250 3100 10000 3100
Wire Wire Line
	10000 3100 10000 2400
Wire Wire Line
	10000 2400 9750 2400
$Comp
L Device:R R?
U 1 1 5E3C7C8A
P 8150 1700
AR Path="/5E3C7C8A" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7C8A" Ref="R7"  Part="1" 
F 0 "R7" H 8220 1746 50  0000 L CNN
F 1 "1k" V 8150 1650 50  0000 L CNN
F 2 "" V 8080 1700 50  0001 C CNN
F 3 "~" H 8150 1700 50  0001 C CNN
	1    8150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C7C90
P 8450 1700
AR Path="/5E3C7C90" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7C90" Ref="R8"  Part="1" 
F 0 "R8" H 8520 1746 50  0000 L CNN
F 1 "1k" V 8450 1650 50  0000 L CNN
F 2 "" V 8380 1700 50  0001 C CNN
F 3 "~" H 8450 1700 50  0001 C CNN
	1    8450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3100 8600 3100
Wire Wire Line
	8100 2400 8450 2400
Wire Wire Line
	8150 2000 8750 2000
Wire Wire Line
	8150 2000 8150 1850
Connection ~ 8150 2000
Wire Wire Line
	8150 1550 8150 1400
Wire Wire Line
	8150 1400 8450 1400
Connection ~ 9250 1400
Wire Wire Line
	9250 1400 9250 1800
Wire Wire Line
	8450 1850 8450 2400
Connection ~ 8450 2400
Wire Wire Line
	8450 2400 8750 2400
Wire Wire Line
	8450 1550 8450 1400
Connection ~ 8450 1400
Wire Wire Line
	8450 1400 9250 1400
$Comp
L 74xx:74LS04 U?
U 1 1 5E3C7CA5
P 3600 4850
AR Path="/5E3C7CA5" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7CA5" Ref="U2"  Part="1" 
F 0 "U2" H 3750 4950 50  0000 C CNN
F 1 "74LS04" H 3750 4700 50  0000 C CNN
F 2 "" H 3600 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3600 4850 50  0001 C CNN
	1    3600 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 4 1 5E3C7CAB
P 3250 5650
AR Path="/5E3C7CAB" Ref="U?"  Part="4" 
AR Path="/5E367421/5E3C7CAB" Ref="U2"  Part="4" 
F 0 "U2" H 3400 5750 50  0000 C CNN
F 1 "74LS04" H 3450 5550 50  0000 C CNN
F 2 "" H 3250 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3250 5650 50  0001 C CNN
	4    3250 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 6 1 5E3C7CB1
P 7700 3950
AR Path="/5E3C7CB1" Ref="U?"  Part="6" 
AR Path="/5E367421/5E3C7CB1" Ref="U2"  Part="6" 
F 0 "U2" H 7850 4050 50  0000 C CNN
F 1 "74LS04" H 7900 3800 50  0000 C CNN
F 2 "" H 7700 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7700 3950 50  0001 C CNN
	6    7700 3950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5E3C7CB7
P 4700 4150
AR Path="/5E3C7CB7" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7CB7" Ref="U3"  Part="1" 
F 0 "U3" H 4650 4250 50  0000 C CNN
F 1 "74LS08" H 4700 4150 50  0000 C CNN
F 2 "" H 4700 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4700 4150 50  0001 C CNN
	1    4700 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 5E3C7CBD
P 4700 4950
AR Path="/5E3C7CBD" Ref="U?"  Part="2" 
AR Path="/5E367421/5E3C7CBD" Ref="U3"  Part="2" 
F 0 "U3" H 4650 5050 50  0000 C CNN
F 1 "74LS08" H 4700 4950 50  0000 C CNN
F 2 "" H 4700 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4700 4950 50  0001 C CNN
	2    4700 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 3 1 5E3C7CC3
P 6700 4600
AR Path="/5E3C7CC3" Ref="U?"  Part="3" 
AR Path="/5E367421/5E3C7CC3" Ref="U3"  Part="3" 
F 0 "U3" H 6650 4700 50  0000 C CNN
F 1 "74LS08" H 6700 4600 50  0000 C CNN
F 2 "" H 6700 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6700 4600 50  0001 C CNN
	3    6700 4600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 5E3C7CC9
P 5650 4500
AR Path="/5E3C7CC9" Ref="U?"  Part="1" 
AR Path="/5E367421/5E3C7CC9" Ref="U4"  Part="1" 
F 0 "U4" H 5600 4600 50  0000 C CNN
F 1 "74LS32" H 5650 4250 50  0000 C CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4850 4400 4850
Wire Wire Line
	5000 4950 5200 4950
Wire Wire Line
	5200 4950 5200 4600
Wire Wire Line
	5200 4600 5350 4600
Wire Wire Line
	5000 4150 5200 4150
Wire Wire Line
	5200 4150 5200 4400
Wire Wire Line
	5200 4400 5350 4400
Wire Wire Line
	5950 4500 6400 4500
Wire Wire Line
	7000 4600 7200 4600
Wire Wire Line
	7200 4600 7200 3950
Wire Wire Line
	7200 3950 7400 3950
Wire Wire Line
	3150 1900 3250 1900
Wire Wire Line
	6250 1950 7100 1950
Wire Wire Line
	7100 1950 7100 3400
Wire Wire Line
	7100 3400 2900 3400
Wire Wire Line
	9750 2000 10300 2000
Wire Wire Line
	10300 2000 10300 3600
Wire Wire Line
	10300 3600 3050 3600
Wire Wire Line
	3050 3600 3050 4250
Wire Wire Line
	3050 4850 3300 4850
Wire Wire Line
	2900 3400 2900 5050
Wire Wire Line
	2900 5050 4400 5050
Wire Wire Line
	3250 1900 3250 4050
Wire Wire Line
	3250 4050 4400 4050
Wire Wire Line
	3550 5650 6000 5650
Wire Wire Line
	6000 5650 6000 4700
Wire Wire Line
	6000 4700 6400 4700
Text HLabel 8550 3950 2    50   Output ~ 0
~CLK
Wire Wire Line
	8000 3950 8550 3950
$Comp
L Device:LED D?
U 1 1 5E3C7CEC
P 7200 5100
AR Path="/5E3C7CEC" Ref="D?"  Part="1" 
AR Path="/5E367421/5E3C7CEC" Ref="D1"  Part="1" 
F 0 "D1" V 7250 5050 50  0000 R CNN
F 1 "LED" V 7150 5050 50  0000 R CNN
F 2 "" H 7200 5100 50  0001 C CNN
F 3 "~" H 7200 5100 50  0001 C CNN
	1    7200 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E3C7CF2
P 7200 5500
AR Path="/5E3C7CF2" Ref="R?"  Part="1" 
AR Path="/5E367421/5E3C7CF2" Ref="R6"  Part="1" 
F 0 "R6" H 7270 5546 50  0000 L CNN
F 1 "220" V 7200 5450 50  0000 L CNN
F 2 "" V 7130 5500 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3C7CF8
P 7200 5800
AR Path="/5E3C7CF8" Ref="#PWR?"  Part="1" 
AR Path="/5E367421/5E3C7CF8" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 7200 5550 50  0001 C CNN
F 1 "GND" H 7205 5627 50  0000 C CNN
F 2 "" H 7200 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
	1    7200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4600 7200 4950
Connection ~ 7200 4600
Wire Wire Line
	7200 5250 7200 5350
Wire Wire Line
	7200 5650 7200 5800
Text HLabel 8600 4600 2    50   Output ~ 0
CLK
Wire Wire Line
	7200 4600 8600 4600
Text HLabel 1800 5650 0    50   Input ~ 0
HLT
Wire Wire Line
	1800 5650 2950 5650
Wire Wire Line
	2150 2300 2000 2300
Wire Wire Line
	2000 2300 2000 1450
Wire Wire Line
	2000 1450 2650 1450
Wire Wire Line
	3050 4250 4400 4250
Connection ~ 3050 4250
Wire Wire Line
	3050 4250 3050 4850
Wire Wire Line
	3350 2300 3350 2650
Wire Wire Line
	3650 2650 3650 2550
Wire Wire Line
	3650 2550 3500 2550
Wire Wire Line
	3500 2550 3500 2400
Text Notes 2750 1400 0    50   ~ 0
Clock Generation
Text Notes 5850 1300 0    50   ~ 0
Manual Clock
Text Notes 9350 1850 0    50   ~ 0
Auto/Manual Switch
Text Notes 4350 3950 0    50   ~ 0
If Auto and Clock Pulse 
Text Notes 4150 5250 0    50   ~ 0
If Manual and Manual Pulse
Text Notes 6250 4400 0    50   ~ 0
If Halted, don't pulse
$EndSCHEMATC
