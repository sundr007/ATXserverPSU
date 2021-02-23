EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ArtesynParts
LIBS:CRPS_to_ATX-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Conn_01x02 J2
U 1 1 5B5762F5
P 8950 3300
F 0 "J2" H 8950 3400 50  0000 C CNN
F 1 "Conn_01x02" H 8950 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 8950 3300 50  0001 C CNN
F 3 "" H 8950 3300 50  0001 C CNN
	1    8950 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5B5763B0
P 2100 3300
F 0 "J1" H 2100 3400 50  0000 C CNN
F 1 "Conn_01x02" H 2100 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 2100 3300 50  0001 C CNN
F 3 "" H 2100 3300 50  0001 C CNN
	1    2100 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2450 3400
Wire Wire Line
	2450 3400 2450 3650
$Comp
L GND #PWR01
U 1 1 5B576523
P 2450 3650
F 0 "#PWR01" H 2450 3400 50  0001 C CNN
F 1 "GND" H 2450 3500 50  0000 C CNN
F 2 "" H 2450 3650 50  0001 C CNN
F 3 "" H 2450 3650 50  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B576553
P 8600 3650
F 0 "#PWR02" H 8600 3400 50  0001 C CNN
F 1 "GND" H 8600 3500 50  0000 C CNN
F 2 "" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3300 8750 3300
Wire Wire Line
	8600 3650 8600 3400
Wire Wire Line
	8600 3400 8750 3400
$EndSCHEMATC
