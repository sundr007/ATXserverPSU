EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 7 8
Title ""
Date "2018-08-24"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6850 4950 0    50   Input ~ 0
PWOK
Text HLabel 6850 3900 0    50   Input ~ 0
PSON
Text HLabel 13400 3750 0    50   Input ~ 0
5Vsb
$Comp
L 74xx:7402 U104
U 1 1 5B89ED6B
P 9300 4950
F 0 "U104" H 9300 5275 50  0000 C CNN
F 1 "7402" H 9300 5184 50  0000 C CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 9300 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7402" H 9300 4950 50  0001 C CNN
	1    9300 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:7402 U104
U 2 1 5B89EECB
P 10200 4450
F 0 "U104" H 10200 4775 50  0000 C CNN
F 1 "7402" H 10200 4684 50  0000 C CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 10200 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7402" H 10200 4450 50  0001 C CNN
	2    10200 4450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:7402 U104
U 3 1 5B89EF84
P 7650 4000
F 0 "U104" H 7650 4325 50  0000 C CNN
F 1 "7402" H 7650 4234 50  0000 C CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 7650 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7402" H 7650 4000 50  0001 C CNN
	3    7650 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:7402 U104
U 4 1 5B89F024
P 7650 4850
F 0 "U104" H 7650 5175 50  0000 C CNN
F 1 "7402" H 7650 5084 50  0000 C CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 7650 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7402" H 7650 4850 50  0001 C CNN
	4    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:7402 U104
U 5 1 5B89F0EF
P 13600 4500
F 0 "U104" H 13830 4546 50  0000 L CNN
F 1 "7402" H 13830 4455 50  0000 L CNN
F 2 "Package_SO:SOIC-14W_7.5x9mm_P1.27mm" H 13600 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7402" H 13600 4500 50  0001 C CNN
	5    13600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5B89F2F7
P 13600 5100
F 0 "#PWR0114" H 13600 4850 50  0001 C CNN
F 1 "GND" H 13605 4927 50  0000 C CNN
F 2 "" H 13600 5100 50  0001 C CNN
F 3 "" H 13600 5100 50  0001 C CNN
	1    13600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 4000 13600 3950
Wire Wire Line
	13600 3750 13400 3750
Wire Wire Line
	13600 5050 13600 5000
Wire Wire Line
	6850 3900 7200 3900
Wire Wire Line
	9750 3550 7200 3550
Wire Wire Line
	7200 3550 7200 3900
Connection ~ 7200 3900
Wire Wire Line
	7200 3900 7350 3900
Wire Wire Line
	7350 4100 7200 4100
Wire Wire Line
	7200 4100 7200 4350
Wire Wire Line
	7200 4350 8100 4350
Wire Wire Line
	8100 4350 8100 4850
Wire Wire Line
	8100 4850 7950 4850
Wire Wire Line
	7350 4750 7250 4750
Wire Wire Line
	7250 4750 7250 4450
Wire Wire Line
	7250 4450 8200 4450
Wire Wire Line
	8200 4450 8200 4000
Wire Wire Line
	8200 4000 7950 4000
Wire Wire Line
	6850 4950 7150 4950
Wire Wire Line
	9000 5050 7150 5050
Wire Wire Line
	7150 5050 7150 4950
Connection ~ 7150 4950
Wire Wire Line
	7150 4950 7350 4950
Wire Wire Line
	9000 4850 8100 4850
Connection ~ 8100 4850
Wire Wire Line
	9600 4950 9800 4950
Wire Wire Line
	10500 4450 10700 4450
Wire Notes Line
	7050 5300 8300 5300
Wire Notes Line
	8300 5300 8300 3300
Wire Notes Line
	8300 3300 7050 3300
Wire Notes Line
	7050 5300 7050 3300
Text Notes 7050 3250 0    118  ~ 0
SR Flip Flop
Text Notes 7100 4900 0    50   ~ 0
set
Text Notes 7100 4000 0    50   ~ 0
reset
Text Notes 8200 4800 0    50   ~ 0
Q'
Text Notes 8200 3950 0    50   ~ 0
Q
Wire Notes Line
	12900 3300 12900 5300
Wire Notes Line
	12900 5300 14200 5300
Wire Notes Line
	14200 5300 14200 3300
Wire Notes Line
	14200 3300 12900 3300
Wire Wire Line
	9800 4350 9900 4350
Wire Wire Line
	9800 4350 9800 4950
Wire Wire Line
	9900 4550 9750 4550
Wire Wire Line
	9750 3550 9750 4550
$Comp
L Device:C C130
U 1 1 5B9BFE7A
P 13050 4500
F 0 "C130" H 13165 4546 50  0000 L CNN
F 1 "0.1uF" H 13165 4455 50  0000 L CNN
F 2 "AEvan:0805_C" H 13088 4350 50  0001 C CNN
F 3 "~" H 13050 4500 50  0001 C CNN
	1    13050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 4350 13050 3950
Wire Wire Line
	13050 3950 13600 3950
Connection ~ 13600 3950
Wire Wire Line
	13600 3950 13600 3750
Wire Wire Line
	13050 4650 13050 5050
Wire Wire Line
	13050 5050 13600 5050
Connection ~ 13600 5050
Wire Wire Line
	13600 5100 13600 5050
$Comp
L Transistor_FET:2N7002E Q109
U 1 1 60339ACA
P 10900 4450
F 0 "Q109" H 11104 4496 50  0000 L CNN
F 1 "2N7002E" H 11104 4405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11100 4375 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 10900 4450 50  0001 L CNN
	1    10900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 4750 11000 4650
$Comp
L power:GND #PWR0113
U 1 1 5B89DF5F
P 11000 4750
F 0 "#PWR0113" H 11000 4500 50  0001 C CNN
F 1 "GND" H 11005 4577 50  0000 C CNN
F 2 "" H 11000 4750 50  0001 C CNN
F 3 "" H 11000 4750 50  0001 C CNN
	1    11000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 4100 11000 4250
Wire Wire Line
	11400 4100 11000 4100
Text HLabel 11400 4100 2    50   Input ~ 0
PSU-ENABLE
$EndSCHEMATC
