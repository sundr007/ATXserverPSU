EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 3
Title "ATXs PSU "
Date "2021-02-01"
Rev "01"
Comp "Bench Wise"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4750 2450 650  2100
U 6018D5DA
F0 "CRPS_PSU" 50
F1 "CRPS_PSU.sch" 50
F2 "12V" I R 5400 2650 50 
F3 "GND" I R 5400 2750 50 
F4 "PSON" I R 5400 3900 50 
F5 "SDA" I R 5400 4100 50 
F6 "SCL" I R 5400 4200 50 
F7 "SMBAlert" I R 5400 4300 50 
F8 "VSENSE-" I R 5400 2850 50 
F9 "VSENSE+" I R 5400 2550 50 
F10 "PWOK" I R 5400 4000 50 
F11 "A0" I R 5400 3200 50 
F12 "A1" I R 5400 3100 50 
F13 "12Vsb" I R 5400 3550 50 
F14 "CR_BUS" I L 4750 4400 50 
F15 "CurrentShare" I L 4750 4500 50 
F16 "Present" I R 5400 2950 50 
$EndSheet
Wire Wire Line
	4750 6950 4400 6950
Wire Wire Line
	4400 6950 4400 4500
Wire Wire Line
	4400 4500 4750 4500
Wire Wire Line
	4750 4400 4500 4400
Wire Wire Line
	4500 4400 4500 6850
Wire Wire Line
	4500 6850 4750 6850
Wire Wire Line
	5400 5000 5550 5000
Wire Wire Line
	5550 5000 5550 5100
Wire Wire Line
	5550 5100 5400 5100
Wire Wire Line
	5400 5200 5550 5200
Wire Wire Line
	5550 5200 5550 5300
Wire Wire Line
	5550 5300 5400 5300
Wire Wire Line
	5400 5400 5550 5400
Wire Wire Line
	5550 5400 5550 5300
Connection ~ 5550 5300
Wire Wire Line
	5400 5550 5550 5550
Wire Wire Line
	5550 5550 5550 5400
Connection ~ 5550 5400
Wire Wire Line
	5400 2550 5550 2550
Wire Wire Line
	5550 2550 5550 2650
Wire Wire Line
	5550 2650 5400 2650
Wire Wire Line
	5400 2750 5550 2750
Wire Wire Line
	5550 2750 5550 2850
Wire Wire Line
	5550 3200 5400 3200
Wire Wire Line
	5400 2950 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5550 3200
Wire Wire Line
	5400 2850 5550 2850
Connection ~ 5550 2850
Wire Wire Line
	5550 2850 5550 2950
$Comp
L power:GND #PWR0101
U 1 1 601BB39A
P 5550 3200
F 0 "#PWR0101" H 5550 2950 50  0001 C CNN
F 1 "GND" H 5555 3027 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Connection ~ 5550 3200
$Comp
L power:GND #PWR0102
U 1 1 601BBD78
P 5550 5550
F 0 "#PWR0102" H 5550 5300 50  0001 C CNN
F 1 "GND" H 5555 5377 50  0000 C CNN
F 2 "" H 5550 5550 50  0001 C CNN
F 3 "" H 5550 5550 50  0001 C CNN
	1    5550 5550
	1    0    0    -1  
$EndComp
Connection ~ 5550 5550
NoConn ~ 5400 3100
NoConn ~ 5400 5650
Text GLabel 7800 3400 0    50   Input ~ 0
Vmain
Text GLabel 8800 3500 2    50   Input ~ 0
Vmain
Wire Wire Line
	8600 3500 8800 3500
Text GLabel 8800 3400 2    50   Input ~ 0
Vstby
Wire Wire Line
	8800 3400 8600 3400
Text GLabel 8100 6000 0    50   Input ~ 0
SDA
Text GLabel 8100 6100 0    50   Input ~ 0
SCL
Text GLabel 8600 6000 2    50   Input ~ 0
PSON
Text GLabel 8600 6100 2    50   Input ~ 0
PWOK
$Comp
L power:GND #PWR0103
U 1 1 603A139D
P 9000 5900
F 0 "#PWR0103" H 9000 5650 50  0001 C CNN
F 1 "GND" H 9005 5727 50  0000 C CNN
F 2 "" H 9000 5900 50  0001 C CNN
F 3 "" H 9000 5900 50  0001 C CNN
	1    9000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 603A1635
P 7700 5900
F 0 "#PWR0104" H 7700 5650 50  0001 C CNN
F 1 "GND" H 7705 5727 50  0000 C CNN
F 2 "" H 7700 5900 50  0001 C CNN
F 3 "" H 7700 5900 50  0001 C CNN
	1    7700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5900 8600 5900
Text GLabel 5700 2550 2    50   Input ~ 0
Vmain
Wire Wire Line
	5700 2550 5550 2550
Connection ~ 5550 2550
Text GLabel 5700 5000 2    50   Input ~ 0
Vmain
Wire Wire Line
	5700 5000 5550 5000
Connection ~ 5550 5000
Text GLabel 5400 3550 2    50   Input ~ 0
Vstby
Text GLabel 5400 6000 2    50   Input ~ 0
Vstby
NoConn ~ 5400 4300
NoConn ~ 5400 6750
Text GLabel 5400 6650 2    50   Input ~ 0
SCL
$Sheet
S 4750 4900 650  2100
U 601B9C71
F0 "sheet601B9C60" 50
F1 "CRPS_PSU.sch" 50
F2 "12V" I R 5400 5100 50 
F3 "GND" I R 5400 5200 50 
F4 "PSON" I R 5400 6350 50 
F5 "SDA" I R 5400 6550 50 
F6 "SCL" I R 5400 6650 50 
F7 "SMBAlert" I R 5400 6750 50 
F8 "VSENSE-" I R 5400 5300 50 
F9 "VSENSE+" I R 5400 5000 50 
F10 "PWOK" I R 5400 6450 50 
F11 "A0" I R 5400 5650 50 
F12 "A1" I R 5400 5550 50 
F13 "12Vsb" I R 5400 6000 50 
F14 "CR_BUS" I L 4750 6850 50 
F15 "CurrentShare" I L 4750 6950 50 
F16 "Present" I R 5400 5400 50 
$EndSheet
Text GLabel 5400 6550 2    50   Input ~ 0
SDA
Text GLabel 5400 6350 2    50   Input ~ 0
PSON
Text GLabel 5400 6450 2    50   Input ~ 0
PWOK
Text GLabel 5400 3900 2    50   Input ~ 0
PSON
Text GLabel 5400 4000 2    50   Input ~ 0
PWOK
Text GLabel 5400 4100 2    50   Input ~ 0
SDA
Text GLabel 5400 4200 2    50   Input ~ 0
SCL
Wire Wire Line
	8100 3400 7800 3400
Wire Wire Line
	7700 5900 8100 5900
Wire Wire Line
	8100 3400 8100 3500
Wire Wire Line
	8100 5800 8100 5900
Wire Wire Line
	8600 5800 8600 5900
Connection ~ 8100 5900
Connection ~ 8100 3400
Connection ~ 8600 3500
Connection ~ 8600 5900
$Comp
L Connector_Generic:Conn_02x28_Odd_Even J101
U 1 1 60397085
P 8400 4800
F 0 "J101" H 8450 3175 50  0000 C CNN
F 1 "Conn_02x28_Odd_Even" H 8450 3266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x28_P2.54mm_Vertical" H 8400 4800 50  0001 C CNN
F 3 "~" H 8400 4800 50  0001 C CNN
	1    8400 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 3500 8100 3600
Connection ~ 8100 3500
Connection ~ 8100 3600
Wire Wire Line
	8100 3600 8100 3700
Connection ~ 8100 3700
Wire Wire Line
	8100 3700 8100 3800
Connection ~ 8100 3800
Wire Wire Line
	8100 3800 8100 3900
Connection ~ 8100 3900
Wire Wire Line
	8100 3900 8100 4000
Connection ~ 8100 4000
Wire Wire Line
	8100 4000 8100 4100
Connection ~ 8100 4100
Wire Wire Line
	8100 4100 8100 4200
Connection ~ 8100 4200
Wire Wire Line
	8100 4200 8100 4300
Connection ~ 8100 4300
Wire Wire Line
	8100 4300 8100 4400
Connection ~ 8100 4400
Wire Wire Line
	8100 4400 8100 4500
Connection ~ 8100 4500
Wire Wire Line
	8100 4500 8100 4600
Connection ~ 8100 4600
Wire Wire Line
	8100 4600 8100 4700
Connection ~ 8100 4700
Wire Wire Line
	8100 4700 8100 4800
Wire Wire Line
	8600 3500 8600 3600
Connection ~ 8600 3600
Wire Wire Line
	8600 3600 8600 3700
Connection ~ 8600 3700
Wire Wire Line
	8600 3700 8600 3800
Connection ~ 8600 3800
Wire Wire Line
	8600 3800 8600 3900
Connection ~ 8600 3900
Wire Wire Line
	8600 3900 8600 4000
Connection ~ 8600 4000
Wire Wire Line
	8600 4000 8600 4100
Connection ~ 8600 4100
Wire Wire Line
	8600 4100 8600 4200
Connection ~ 8600 4200
Wire Wire Line
	8600 4200 8600 4300
Connection ~ 8600 4300
Wire Wire Line
	8600 4300 8600 4400
Connection ~ 8600 4400
Wire Wire Line
	8600 4400 8600 4500
Connection ~ 8600 4500
Wire Wire Line
	8600 4500 8600 4600
Connection ~ 8600 4600
Wire Wire Line
	8600 4600 8600 4700
Connection ~ 8600 4700
Wire Wire Line
	8600 5800 8600 5700
Connection ~ 8600 5800
Connection ~ 8600 5000
Wire Wire Line
	8600 5000 8600 4900
Connection ~ 8600 5100
Wire Wire Line
	8600 5100 8600 5000
Connection ~ 8600 5200
Wire Wire Line
	8600 5200 8600 5100
Connection ~ 8600 5300
Wire Wire Line
	8600 5300 8600 5200
Connection ~ 8600 5400
Wire Wire Line
	8600 5400 8600 5300
Connection ~ 8600 5500
Wire Wire Line
	8600 5500 8600 5400
Connection ~ 8600 5600
Wire Wire Line
	8600 5600 8600 5500
Connection ~ 8600 5700
Wire Wire Line
	8600 5700 8600 5600
Wire Wire Line
	8100 4900 8100 5000
Connection ~ 8100 5800
Connection ~ 8100 5000
Wire Wire Line
	8100 5000 8100 5100
Connection ~ 8100 5100
Wire Wire Line
	8100 5100 8100 5200
Connection ~ 8100 5200
Wire Wire Line
	8100 5200 8100 5300
Connection ~ 8100 5300
Wire Wire Line
	8100 5300 8100 5400
Connection ~ 8100 5400
Wire Wire Line
	8100 5400 8100 5500
Connection ~ 8100 5500
Wire Wire Line
	8100 5500 8100 5600
Connection ~ 8100 5600
Wire Wire Line
	8100 5600 8100 5700
Connection ~ 8100 5700
Wire Wire Line
	8100 5700 8100 5800
Wire Wire Line
	8600 4700 8600 4800
$EndSCHEMATC
