EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 4 9
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
L 0002-ATX-rescue:Conn_02x05_Top_Bottom-conn J118
U 1 1 5B6B981A
P 8550 4350
F 0 "J118" H 8600 4767 50  0000 C CNN
F 1 "Conn_02x05_Top_Bottom" H 8600 4676 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-10A_2x05_P4.20mm_Vertical" H 8550 4350 50  0001 C CNN
F 3 "~" H 8550 4350 50  0001 C CNN
	1    8550 4350
	1    0    0    -1  
$EndComp
$Comp
L 0002-ATX-rescue:Conn_02x09_Top_Bottom-conn J119
U 1 1 5B6B9893
P 8550 5600
F 0 "J119" H 8600 6217 50  0000 C CNN
F 1 "Conn_02x09_Top_Bottom" H 8600 6126 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-18A_2x09_P4.20mm_Vertical" H 8550 5600 50  0001 C CNN
F 3 "~" H 8550 5600 50  0001 C CNN
	1    8550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4150 7900 4150
Wire Wire Line
	7900 4150 7900 4250
Wire Wire Line
	7900 6300 7600 6300
Wire Wire Line
	8350 4250 7900 4250
Connection ~ 7900 4250
Wire Wire Line
	7900 4250 7900 5500
Wire Wire Line
	8350 5500 7900 5500
Connection ~ 7900 5500
Wire Wire Line
	7900 5500 7900 5600
Wire Wire Line
	8350 5600 7900 5600
Connection ~ 7900 5600
Wire Wire Line
	7900 5600 7900 5700
Wire Wire Line
	8350 5700 7900 5700
Connection ~ 7900 5700
Wire Wire Line
	7900 5700 7900 6300
Wire Wire Line
	8850 5700 9300 5700
Wire Wire Line
	9300 5700 9300 6300
Wire Wire Line
	9300 6300 7900 6300
Connection ~ 7900 6300
Wire Wire Line
	8850 5600 9300 5600
Wire Wire Line
	9300 5600 9300 5700
Connection ~ 9300 5700
Wire Wire Line
	8850 5500 9300 5500
Wire Wire Line
	9300 5500 9300 5600
Connection ~ 9300 5600
Text HLabel 7600 6300 0    79   Input ~ 0
GND
Wire Wire Line
	8850 6000 9200 6000
Wire Wire Line
	9200 6200 8000 6200
Wire Wire Line
	8000 6200 8000 6000
Wire Wire Line
	8000 5900 8350 5900
Wire Wire Line
	9200 6000 9200 6200
Wire Wire Line
	8350 6000 8000 6000
Connection ~ 8000 6000
Wire Wire Line
	8000 6000 8000 5900
Wire Wire Line
	8850 5900 9200 5900
Wire Wire Line
	9200 5900 9200 6000
Connection ~ 9200 6000
Wire Wire Line
	8000 5900 7600 5900
Connection ~ 8000 5900
Text HLabel 7600 5900 0    79   Input ~ 0
3V3
NoConn ~ 8350 5800
NoConn ~ 8350 4450
NoConn ~ 8350 4350
Wire Wire Line
	8350 4550 7600 4550
Text HLabel 7600 4550 0    79   Input ~ 0
PSON
Wire Wire Line
	8850 4550 9300 4550
Wire Wire Line
	8850 4450 9100 4450
Wire Wire Line
	8850 4350 9300 4350
Wire Wire Line
	8850 4250 9000 4250
Wire Wire Line
	9000 4250 9000 4150
Wire Wire Line
	9000 4150 8850 4150
Wire Wire Line
	9000 4150 9300 4150
Connection ~ 9000 4150
Text HLabel 9300 4150 2    79   Input ~ 0
12V
Text HLabel 9300 4350 2    79   Input ~ 0
-12V
Text HLabel 9300 4450 2    79   Input ~ 0
5Vsb
Text HLabel 9300 4550 2    79   Input ~ 0
PWOK
Wire Wire Line
	8350 5200 8000 5200
Wire Wire Line
	8000 5200 8000 5300
Wire Wire Line
	8000 5400 8350 5400
Wire Wire Line
	8350 5300 8000 5300
Connection ~ 8000 5300
Wire Wire Line
	8000 5300 8000 5400
Wire Wire Line
	8000 5200 8000 4900
Connection ~ 8000 5200
Wire Wire Line
	8000 4900 9200 4900
Wire Wire Line
	8850 5300 9200 5300
Wire Wire Line
	9200 5300 9200 5200
Connection ~ 9200 4900
Wire Wire Line
	9200 4900 9300 4900
Wire Wire Line
	8850 5200 9200 5200
Connection ~ 9200 5200
Wire Wire Line
	9200 5200 9200 4900
Text HLabel 9300 4900 2    79   Input ~ 0
5V
Wire Wire Line
	9100 4450 9100 5400
Wire Wire Line
	9100 5400 8850 5400
Connection ~ 9100 4450
Wire Wire Line
	9100 4450 9300 4450
Text Notes 10550 5850 2    79   ~ 0
Pin 16 is 3V3 RS
Text HLabel 7600 6400 0    79   Input ~ 0
3V3-RS
Wire Wire Line
	7600 6400 9400 6400
Wire Wire Line
	9400 6400 9400 5800
Wire Wire Line
	9400 5800 8850 5800
$EndSCHEMATC
