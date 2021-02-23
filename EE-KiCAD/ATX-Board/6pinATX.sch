EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 3 9
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
L 0002-ATX-rescue:Conn_02x03_Top_Bottom-conn J115
U 1 1 5B6B19A1
P 8200 3900
F 0 "J115" H 8250 4217 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 8250 4126 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-06A_2x03_P4.20mm_Vertical" H 8200 3900 50  0001 C CNN
F 3 "~" H 8200 3900 50  0001 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
$Comp
L 0002-ATX-rescue:Conn_02x03_Top_Bottom-conn J116
U 1 1 5B6B19E5
P 8200 4500
F 0 "J116" H 8250 4817 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 8250 4726 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-06A_2x03_P4.20mm_Vertical" H 8200 4500 50  0001 C CNN
F 3 "~" H 8200 4500 50  0001 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
$Comp
L 0002-ATX-rescue:Conn_02x03_Top_Bottom-conn J117
U 1 1 5B6B1A23
P 8200 5100
F 0 "J117" H 8250 5417 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 8250 5326 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-06A_2x03_P4.20mm_Vertical" H 8200 5100 50  0001 C CNN
F 3 "~" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3200 7350 3200
Wire Wire Line
	7350 3200 7350 3800
Wire Wire Line
	7350 5000 8000 5000
Wire Wire Line
	8000 4400 7350 4400
Connection ~ 7350 4400
Wire Wire Line
	7350 4400 7350 5000
Wire Wire Line
	8000 3800 7350 3800
Connection ~ 7350 3800
Wire Wire Line
	7350 3800 7350 4400
Wire Wire Line
	8500 3200 8750 3200
Wire Wire Line
	8750 3200 8750 3800
Wire Wire Line
	8750 5000 8500 5000
Wire Wire Line
	8500 4400 8750 4400
Connection ~ 8750 4400
Wire Wire Line
	8750 4400 8750 5000
Wire Wire Line
	8500 3800 8750 3800
Connection ~ 8750 3800
Wire Wire Line
	8750 3800 8750 4400
Wire Wire Line
	8750 5000 8750 5650
Connection ~ 8750 5000
Wire Wire Line
	7700 5100 7700 5650
Wire Wire Line
	7700 5100 8000 5100
Connection ~ 7700 5650
Wire Wire Line
	7700 5650 8750 5650
Wire Wire Line
	7700 5100 7700 4500
Wire Wire Line
	7700 3300 8000 3300
Connection ~ 7700 5100
Wire Wire Line
	8000 3900 7700 3900
Connection ~ 7700 3900
Wire Wire Line
	7700 3900 7700 3300
Wire Wire Line
	8000 4500 7700 4500
Connection ~ 7700 4500
Wire Wire Line
	7700 4500 7700 3900
Wire Wire Line
	8000 3400 7500 3400
Wire Wire Line
	7500 3400 7500 4000
Wire Wire Line
	7500 5200 8000 5200
Wire Wire Line
	8000 4600 7500 4600
Connection ~ 7500 4600
Wire Wire Line
	7500 4600 7500 5200
Wire Wire Line
	8000 4000 7500 4000
Connection ~ 7500 4000
Wire Wire Line
	7500 4000 7500 4600
Wire Wire Line
	8500 5100 8850 5100
Wire Wire Line
	8850 5100 8850 4500
Wire Wire Line
	8850 3300 8500 3300
Wire Wire Line
	8500 3900 8850 3900
Connection ~ 8850 3900
Wire Wire Line
	8850 3900 8850 3300
Wire Wire Line
	8500 4500 8850 4500
Connection ~ 8850 4500
Wire Wire Line
	8850 4500 8850 3900
NoConn ~ 8500 4000
NoConn ~ 8500 4600
NoConn ~ 8500 5200
Wire Wire Line
	7350 3200 7150 3200
Connection ~ 7350 3200
Wire Wire Line
	7500 3400 7150 3400
Connection ~ 7500 3400
Wire Wire Line
	8850 3300 8850 2900
Wire Wire Line
	8850 2900 7150 2900
Connection ~ 8850 3300
Wire Wire Line
	7150 5650 7700 5650
Text HLabel 7150 5650 0    118  Input ~ 0
GND
Text HLabel 7150 2900 0    118  Input ~ 0
12V
Text HLabel 7150 3200 0    118  Input ~ 0
3V3
Text HLabel 7150 3400 0    118  Input ~ 0
5V
$Comp
L 0002-ATX-rescue:Conn_02x03_Top_Bottom-conn J114
U 1 1 5BFE05F3
P 8200 3300
F 0 "J114" H 8250 3617 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 8250 3526 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-06A_2x03_P4.20mm_Vertical" H 8200 3300 50  0001 C CNN
F 3 "~" H 8200 3300 50  0001 C CNN
	1    8200 3300
	1    0    0    -1  
$EndComp
NoConn ~ 8500 3400
$EndSCHEMATC
