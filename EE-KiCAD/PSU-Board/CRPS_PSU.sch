EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 3
Title ""
Date "2021-02-01"
Rev "01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x25_Row_Letter_First J104
U 1 1 6018D8AD
P 8300 5250
AR Path="/6018D5DA/6018D8AD" Ref="J104"  Part="1" 
AR Path="/601B93C9/6018D8AD" Ref="J?"  Part="1" 
AR Path="/601B9C71/6018D8AD" Ref="J105"  Part="1" 
F 0 "J104" H 8350 6667 50  0000 C CNN
F 1 "Conn_02x25_Row_Letter_First" H 8350 6576 50  0000 C CNN
F 2 "AEvan:CRPS_FCI_10035388-102LF" H 8300 5250 50  0001 C CNN
F 3 "~" H 8300 5250 50  0001 C CNN
	1    8300 5250
	1    0    0    -1  
$EndComp
Text HLabel 7950 4950 0    50   Input ~ 0
12V
Text HLabel 7950 4050 0    50   Input ~ 0
GND
Text HLabel 8100 6050 0    50   Input ~ 0
PSON
Text HLabel 8100 5850 0    50   Input ~ 0
SDA
Text HLabel 8100 5950 0    50   Input ~ 0
SCL
Text HLabel 8100 6150 0    50   Input ~ 0
SMBAlert
Text HLabel 8100 6250 0    50   Input ~ 0
VSENSE-
Text HLabel 8100 6350 0    50   Input ~ 0
VSENSE+
Text HLabel 8100 6450 0    50   Input ~ 0
PWOK
Text HLabel 8600 5850 2    50   Input ~ 0
A0
Text HLabel 8600 5950 2    50   Input ~ 0
A1
Text HLabel 8600 6050 2    50   Input ~ 0
12Vsb
Text HLabel 8600 6150 2    50   Input ~ 0
CR_BUS
Text HLabel 8600 6250 2    50   Input ~ 0
CurrentShare
Text HLabel 8600 6350 2    50   Input ~ 0
Present
Text HLabel 8750 4950 2    50   Input ~ 0
12V
Text HLabel 8750 4050 2    50   Input ~ 0
GND
Wire Wire Line
	7950 4050 8100 4050
Wire Wire Line
	8100 4850 8100 4750
Connection ~ 8100 4050
Connection ~ 8100 4150
Wire Wire Line
	8100 4150 8100 4050
Connection ~ 8100 4250
Wire Wire Line
	8100 4250 8100 4150
Connection ~ 8100 4350
Wire Wire Line
	8100 4350 8100 4250
Connection ~ 8100 4450
Wire Wire Line
	8100 4450 8100 4350
Connection ~ 8100 4550
Wire Wire Line
	8100 4550 8100 4450
Connection ~ 8100 4650
Wire Wire Line
	8100 4650 8100 4550
Connection ~ 8100 4750
Wire Wire Line
	8100 4750 8100 4650
Wire Wire Line
	8600 4050 8750 4050
Wire Wire Line
	8600 4850 8600 4750
Connection ~ 8600 4050
Connection ~ 8600 4150
Wire Wire Line
	8600 4150 8600 4050
Connection ~ 8600 4250
Wire Wire Line
	8600 4250 8600 4150
Connection ~ 8600 4350
Wire Wire Line
	8600 4350 8600 4250
Connection ~ 8600 4450
Wire Wire Line
	8600 4450 8600 4350
Connection ~ 8600 4550
Wire Wire Line
	8600 4550 8600 4450
Connection ~ 8600 4650
Wire Wire Line
	8600 4650 8600 4550
Connection ~ 8600 4750
Wire Wire Line
	8600 4750 8600 4650
Wire Wire Line
	7950 4950 8100 4950
Wire Wire Line
	8600 4950 8750 4950
Wire Wire Line
	8100 5750 8100 5650
Connection ~ 8100 4950
Connection ~ 8100 5050
Wire Wire Line
	8100 5050 8100 4950
Connection ~ 8100 5150
Wire Wire Line
	8100 5150 8100 5050
Connection ~ 8100 5250
Wire Wire Line
	8100 5250 8100 5150
Connection ~ 8100 5350
Wire Wire Line
	8100 5350 8100 5250
Connection ~ 8100 5450
Wire Wire Line
	8100 5450 8100 5350
Connection ~ 8100 5550
Wire Wire Line
	8100 5550 8100 5450
Connection ~ 8100 5650
Wire Wire Line
	8100 5650 8100 5550
Wire Wire Line
	8600 5750 8600 5650
Connection ~ 8600 4950
Connection ~ 8600 5050
Wire Wire Line
	8600 5050 8600 4950
Connection ~ 8600 5150
Wire Wire Line
	8600 5150 8600 5050
Connection ~ 8600 5250
Wire Wire Line
	8600 5250 8600 5150
Connection ~ 8600 5350
Wire Wire Line
	8600 5350 8600 5250
Connection ~ 8600 5450
Wire Wire Line
	8600 5450 8600 5350
Connection ~ 8600 5550
Wire Wire Line
	8600 5550 8600 5450
Connection ~ 8600 5650
Wire Wire Line
	8600 5650 8600 5550
NoConn ~ 8600 6450
$EndSCHEMATC
