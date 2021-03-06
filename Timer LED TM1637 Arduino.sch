EESchema Schematic File Version 4
LIBS:Timer LED TM1637 Arduino-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Timer LED Arduino TM1637"
Date "2021-02-25"
Rev "1/1"
Comp "T. Stoica"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 603813A1
P 7150 4525
F 0 "Q2" H 7341 4571 50  0000 L CNN
F 1 "BC547" H 7341 4480 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7350 4450 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7150 4525 50  0001 L CNN
	1    7150 4525
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 60381471
P 5550 5725
F 0 "Q1" H 5741 5771 50  0000 L CNN
F 1 "BC547" H 5741 5680 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5750 5650 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5550 5725 50  0001 L CNN
	1    5550 5725
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 6038159F
P 7350 4225
F 0 "BZ1" H 7503 4254 50  0000 L CNN
F 1 "Buzzer 5V" H 7503 4163 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 7325 4325 50  0001 C CNN
F 3 "~" V 7325 4325 50  0001 C CNN
	1    7350 4225
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 603816EB
P 6000 4325
F 0 "SW1" H 6000 4692 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 6000 4601 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5850 4485 50  0001 C CNN
F 3 "~" H 6000 4585 50  0001 C CNN
	1    6000 4325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 603818F0
P 5200 5725
F 0 "R1" V 5000 5675 50  0000 L CNN
F 1 "15K" V 5100 5675 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5130 5725 50  0001 C CNN
F 3 "~" H 5200 5725 50  0001 C CNN
	1    5200 5725
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 603819E7
P 6100 5225
F 0 "D2" V 6450 5275 50  0000 L CNN
F 1 "1N4148" V 6525 5200 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6100 5225 50  0001 C CNN
F 3 "~" H 6100 5225 50  0001 C CNN
	1    6100 5225
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial_Power J1
U 1 1 6038196F
P 3980 2450
F 0 "J1" V 3730 2350 50  0000 C CNN
F 1 "+12V" V 3830 2325 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 3980 2400 50  0001 C CNN
F 3 "~" H 3980 2400 50  0001 C CNN
	1    3980 2450
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 60381C64
P 5650 5925
F 0 "#PWR08" H 5650 5675 50  0001 C CNN
F 1 "GNDD" H 5654 5770 50  0000 C CNN
F 2 "" H 5650 5925 50  0001 C CNN
F 3 "" H 5650 5925 50  0001 C CNN
	1    5650 5925
	1    0    0    -1  
$EndComp
$Comp
L Timer-LED-TM1637-Arduino-rescue:TM1637module-New_Library_3 U2
U 1 1 603971D3
P 6075 3100
F 0 "U2" H 6000 2800 50  0000 L CNN
F 1 "TM1637module" H 6150 2800 50  0000 L CNN
F 2 "Module:TM1637 module" H 6075 3100 50  0001 C CNN
F 3 "" H 6075 3100 50  0001 C CNN
	1    6075 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR04
U 1 1 60397E61
P 4800 4825
F 0 "#PWR04" H 4800 4575 50  0001 C CNN
F 1 "GNDD" H 4900 4675 50  0000 C CNN
F 2 "" H 4800 4825 50  0001 C CNN
F 3 "" H 4800 4825 50  0001 C CNN
	1    4800 4825
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR03
U 1 1 60397E9E
P 4700 4825
F 0 "#PWR03" H 4700 4575 50  0001 C CNN
F 1 "GNDD" H 4625 4675 50  0000 C CNN
F 2 "" H 4700 4825 50  0001 C CNN
F 3 "" H 4700 4825 50  0001 C CNN
	1    4700 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5525 6100 5525
$Comp
L Device:R R2
U 1 1 60398FA6
P 5900 4925
F 0 "R2" H 5700 5125 50  0000 L CNN
F 1 "1K2/.25W" H 5850 5125 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5830 4925 50  0001 C CNN
F 3 "~" H 5900 4925 50  0001 C CNN
	1    5900 4925
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6039901D
P 5900 5225
F 0 "D1" V 5975 5375 50  0000 R CNN
F 1 "LED Power" V 5850 5675 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5900 5225 50  0001 C CNN
F 3 "~" H 5900 5225 50  0001 C CNN
	1    5900 5225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 5375 5900 5525
Connection ~ 5900 5525
Wire Wire Line
	5900 5525 5650 5525
Wire Wire Line
	6100 5375 6100 5525
Connection ~ 6100 5525
Wire Wire Line
	6100 5525 5900 5525
Wire Wire Line
	6100 5075 6100 4775
Wire Wire Line
	6100 4775 6450 4775
Wire Wire Line
	6450 4775 6450 4925
Connection ~ 6100 4775
$Comp
L power:GNDD #PWR09
U 1 1 603994E0
P 5700 4325
F 0 "#PWR09" H 5700 4075 50  0001 C CNN
F 1 "GNDD" V 5900 4225 50  0000 C CNN
F 2 "" H 5700 4325 50  0001 C CNN
F 3 "" H 5700 4325 50  0001 C CNN
	1    5700 4325
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 4225 5700 4225
Wire Wire Line
	5300 4425 5700 4425
Wire Wire Line
	5300 4325 5425 4325
Wire Wire Line
	5425 4325 5425 4650
Wire Wire Line
	5425 4650 6300 4650
Wire Wire Line
	6300 4650 6300 4425
$Comp
L power:GNDD #PWR010
U 1 1 6039A51C
P 6300 4225
F 0 "#PWR010" H 6300 3975 50  0001 C CNN
F 1 "GNDD" V 6175 4075 50  0000 C CNN
F 2 "" H 6300 4225 50  0001 C CNN
F 3 "" H 6300 4225 50  0001 C CNN
	1    6300 4225
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 6039ACF3
P 7250 4725
F 0 "#PWR011" H 7250 4475 50  0001 C CNN
F 1 "GNDD" H 7425 4625 50  0000 C CNN
F 2 "" H 7250 4725 50  0001 C CNN
F 3 "" H 7250 4725 50  0001 C CNN
	1    7250 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6039AF28
P 6950 4375
F 0 "R3" H 7025 4475 50  0000 L CNN
F 1 "15K" H 7000 4375 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 4375 50  0001 C CNN
F 3 "~" H 6950 4375 50  0001 C CNN
	1    6950 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4225 6950 3875
Wire Wire Line
	5300 3425 5375 3425
Wire Wire Line
	5375 2800 5625 2800
Wire Wire Line
	5375 2800 5375 3425
Wire Wire Line
	5300 3525 5425 3525
Wire Wire Line
	5425 3525 5425 3000
Wire Wire Line
	5425 3000 5625 3000
Wire Wire Line
	7250 4125 7250 3600
Wire Wire Line
	7250 3600 5625 3600
Wire Wire Line
	5625 3600 5625 3350
$Comp
L power:GNDD #PWR07
U 1 1 6039C8F1
P 5625 3200
F 0 "#PWR07" H 5625 2950 50  0001 C CNN
F 1 "GNDD" V 5500 3125 50  0000 C CNN
F 2 "" H 5625 3200 50  0001 C CNN
F 3 "" H 5625 3200 50  0001 C CNN
	1    5625 3200
	0    1    1    0   
$EndComp
NoConn ~ 4300 3225
NoConn ~ 4300 3325
NoConn ~ 4300 3625
NoConn ~ 4300 3925
NoConn ~ 4300 4025
NoConn ~ 4300 4125
NoConn ~ 4300 4225
NoConn ~ 4300 4325
NoConn ~ 4300 4425
NoConn ~ 4300 4525
NoConn ~ 5300 3625
NoConn ~ 5300 3825
NoConn ~ 5300 3925
NoConn ~ 5300 4025
NoConn ~ 4600 2825
NoConn ~ 4700 2825
NoConn ~ 5300 3225
NoConn ~ 5300 3325
Wire Wire Line
	4900 2825 4900 2450
Wire Wire Line
	4900 2450 4600 2450
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 603A3802
P 4900 1900
F 0 "U1" H 4900 2142 50  0000 C CNN
F 1 "LM7805_TO220" H 4900 2051 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4900 2125 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 4900 1850 50  0001 C CNN
	1    4900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1900 4600 2450
Connection ~ 4600 2450
Wire Wire Line
	7250 3600 7250 1900
Connection ~ 7250 3600
Wire Wire Line
	5200 1900 5625 1900
$Comp
L Device:CP_Small C1
U 1 1 603A670E
P 5625 2000
F 0 "C1" H 5713 2046 50  0000 L CNN
F 1 "10uF/6V" H 5713 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5625 2000 50  0001 C CNN
F 3 "~" H 5625 2000 50  0001 C CNN
	1    5625 2000
	1    0    0    -1  
$EndComp
Connection ~ 5625 1900
Wire Wire Line
	5625 1900 7250 1900
$Comp
L power:GNDD #PWR05
U 1 1 603A40DC
P 4900 2200
F 0 "#PWR05" H 4900 1950 50  0001 C CNN
F 1 "GNDD" H 4904 2045 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR06
U 1 1 603A6F32
P 5625 2100
F 0 "#PWR06" H 5625 1850 50  0001 C CNN
F 1 "GNDD" H 5629 1945 50  0000 C CNN
F 2 "" H 5625 2100 50  0001 C CNN
F 3 "" H 5625 2100 50  0001 C CNN
	1    5625 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 603A72C2
P 7500 5425
F 0 "J2" H 7580 5417 50  0000 L CNN
F 1 "Out Relay NO" H 7580 5326 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type094_RT03502HBLU_1x02_P5.00mm_Horizontal" H 7500 5425 50  0001 C CNN
F 3 "~" H 7500 5425 50  0001 C CNN
	1    7500 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5525 7300 5525
Wire Wire Line
	6950 4925 7300 4925
Wire Wire Line
	7300 4925 7300 5425
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 603A87FD
P 7775 3725
F 0 "SW2" H 7700 3550 50  0000 C CNN
F 1 "PUSHbutmic" H 7775 3425 50  0000 C CNN
F 2 "Button_Switch_THT:SWlinmic" H 7775 3725 50  0001 C CNN
F 3 "" H 7775 3725 50  0001 C CNN
	2    7775 3725
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR013
U 1 1 603ABD04
P 7975 3625
F 0 "#PWR013" H 7975 3375 50  0001 C CNN
F 1 "GNDD" V 7950 3400 50  0000 C CNN
F 2 "" H 7975 3625 50  0001 C CNN
F 3 "" H 7975 3625 50  0001 C CNN
	1    7975 3625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4080 5200 5625 5200
Wire Wire Line
	5625 5200 5625 4775
$Comp
L power:PWR_FLAG #FLG02
U 1 1 603B00DB
P 4320 2450
F 0 "#FLG02" H 4320 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 4370 2630 50  0000 C CNN
F 2 "" H 4320 2450 50  0001 C CNN
F 3 "~" H 4320 2450 50  0001 C CNN
	1    4320 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 603B0230
P 3825 3375
F 0 "#FLG01" H 3825 3450 50  0001 C CNN
F 1 "PWR_FLAG" H 3825 3549 50  0000 C CNN
F 2 "" H 3825 3375 50  0001 C CNN
F 3 "~" H 3825 3375 50  0001 C CNN
	1    3825 3375
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 603B02D4
P 3825 3375
F 0 "#PWR02" H 3825 3125 50  0001 C CNN
F 1 "GNDD" H 3829 3220 50  0000 C CNN
F 2 "" H 3825 3375 50  0001 C CNN
F 3 "" H 3825 3375 50  0001 C CNN
	1    3825 3375
	1    0    0    -1  
$EndComp
NoConn ~ 7975 3825
NoConn ~ 6750 4925
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 603A89D2
P 7775 3150
F 0 "SW2" H 7775 3435 50  0000 C CNN
F 1 "PUSHbutmic" H 7775 3344 50  0000 C CNN
F 2 "Button_Switch_THT:SWlinmic" H 7775 3150 50  0001 C CNN
F 3 "" H 7775 3150 50  0001 C CNN
	1    7775 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3725 7575 3725
$Comp
L power:GNDD #PWR012
U 1 1 603AAEDD
P 7575 3150
F 0 "#PWR012" H 7575 2900 50  0001 C CNN
F 1 "GNDD" V 7775 3050 50  0000 C CNN
F 2 "" H 7575 3150 50  0001 C CNN
F 3 "" H 7575 3150 50  0001 C CNN
	1    7575 3150
	0    1    1    0   
$EndComp
Connection ~ 5900 4775
Wire Wire Line
	5900 4775 5625 4775
Wire Wire Line
	6100 4775 5900 4775
$Comp
L Device:R R4
U 1 1 603AC1BC
P 8150 2600
F 0 "R4" H 8220 2646 50  0000 L CNN
F 1 "330" H 8200 2550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8080 2600 50  0001 C CNN
F 3 "~" H 8150 2600 50  0001 C CNN
	1    8150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 603AC1C2
P 8150 2900
F 0 "D3" V 8225 2725 50  0000 R CNN
F 1 "LED Memory" V 8125 2725 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8150 2900 50  0001 C CNN
F 3 "~" H 8150 2900 50  0001 C CNN
	1    8150 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 3050 7975 3050
Wire Wire Line
	7250 1900 8150 1900
Wire Wire Line
	8150 1900 8150 2450
Connection ~ 7250 1900
NoConn ~ 7975 3250
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 603A9FF3
P 6650 5225
F 0 "K1" H 6825 4775 50  0000 L CNN
F 1 "Relay 12V" H 6700 4675 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 7100 5175 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 6650 5225 50  0001 C CNN
	1    6650 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4320 2450 4600 2450
Wire Wire Line
	4080 2450 4320 2450
Connection ~ 4080 2450
Connection ~ 4320 2450
$Comp
L power:GNDD #PWR01
U 1 1 603A1D45
P 3780 2670
F 0 "#PWR01" H 3780 2420 50  0001 C CNN
F 1 "GNDD" H 3784 2515 50  0000 C CNN
F 2 "" H 3780 2670 50  0001 C CNN
F 3 "" H 3780 2670 50  0001 C CNN
	1    3780 2670
	1    0    0    -1  
$EndComp
Wire Wire Line
	4080 2450 4080 5200
Wire Wire Line
	3780 2450 3780 2670
Wire Wire Line
	5550 4125 5300 4125
Wire Wire Line
	5550 3875 5550 4125
Wire Wire Line
	6950 3875 5550 3875
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60380FB4
P 4800 3825
F 0 "A1" H 4850 3775 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 4725 3750 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4950 2875 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4800 2825 50  0001 C CNN
	1    4800 3825
	-1   0    0    -1  
$EndComp
NoConn ~ 5300 4525
Wire Wire Line
	4200 5725 4200 3825
Wire Wire Line
	4200 3825 4300 3825
Wire Wire Line
	4200 5725 5050 5725
$EndSCHEMATC
