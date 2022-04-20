EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2021-12-24"
Rev "01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L tc5-rescue:SYM_Arrow_Normal-Graphic QR1
U 1 1 61C5D077
P 1925 1450
F 0 "QR1" H 1925 1510 50  0001 C CNN
F 1 "Product QR Code" H 1935 1400 50  0001 C CNN
F 2 "tc5:TC5" H 1925 1450 50  0001 C CNN
F 3 "~" H 1925 1450 50  0001 C CNN
F 4 "virtual" H 1925 1450 50  0001 C CNN "manf"
F 5 "virtual" H 1925 1450 50  0001 C CNN "manf#"
	1    1925 1450
	1    0    0    -1  
$EndComp
Text Notes 1475 1375 0    50   ~ 0
Symbol to represent QRCode on PCB
$Comp
L tc5-rescue:MCP6001-OT-Amplifier_Operational U1001
U 1 1 61C5DBDB
P 3300 2375
F 0 "U1001" H 3350 2225 50  0000 L CNN
F 1 "MCP6001-OT" H 3250 2550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3200 2175 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3300 2575 50  0001 C CNN
F 4 "Microchip" H 3300 2375 50  0001 C CNN "manf"
F 5 "MCP6001-OT" H 3300 2375 50  0001 C CNN "manf#"
F 6 "opamp" H 3300 2375 50  0001 C CNN "variant"
	1    3300 2375
	1    0    0    -1  
$EndComp
$Comp
L tc5-rescue:R_Small-Device R1001
U 1 1 61C60726
P 3225 3100
F 0 "R1001" V 3300 3100 50  0000 C CNN
F 1 "10k" V 3150 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3225 3100 50  0001 C CNN
F 3 "~" H 3225 3100 50  0001 C CNN
F 4 "Dummy" H 3225 3100 50  0001 C CNN "manf"
F 5 "10k" H 3225 3100 50  0001 C CNN "manf#"
F 6 "opamp" H 3225 3100 50  0001 C CNN "variant"
	1    3225 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2875 2475 2875 3100
Wire Wire Line
	2875 3100 3125 3100
Wire Wire Line
	3000 2475 2875 2475
Wire Wire Line
	3325 3100 3600 3100
Wire Wire Line
	3600 3100 3600 2375
Wire Wire Line
	3600 3100 4100 3100
Connection ~ 3600 3100
$Comp
L tc5-rescue:Conn_01x04_Male-Connector J1001
U 1 1 61C635DD
P 1525 2250
F 0 "J1001" H 1632 2527 50  0000 C CNN
F 1 "SSM-104-L-SV" H 1632 2438 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 1525 2250 50  0001 C CNN
F 3 "~" H 1525 2250 50  0001 C CNN
F 4 "Samtec" H 1525 2250 50  0001 C CNN "manf"
F 5 "SSM-104-L-SV" H 1525 2250 50  0001 C CNN "manf#"
F 6 "header" H 1525 2250 50  0001 C CNN "variant"
	1    1525 2250
	1    0    0    -1  
$EndComp
Text Label 1950 2150 2    50   ~ 0
VCC
Text Label 1950 2250 2    50   ~ 0
GND
Text Label 1950 2350 2    50   ~ 0
IN
Text Label 1950 2450 2    50   ~ 0
OUT
Wire Wire Line
	1950 2150 1725 2150
Wire Wire Line
	1725 2250 1950 2250
Wire Wire Line
	1950 2350 1725 2350
Wire Wire Line
	1725 2450 1950 2450
$Comp
L tc5-rescue:VCC-power #PWR0101
U 1 1 61C66B30
P 1950 2150
F 0 "#PWR0101" H 1950 2000 50  0001 C CNN
F 1 "VCC" V 1965 2277 50  0000 L CNN
F 2 "" H 1950 2150 50  0001 C CNN
F 3 "" H 1950 2150 50  0001 C CNN
	1    1950 2150
	0    1    1    0   
$EndComp
$Comp
L tc5-rescue:GND-power #PWR0102
U 1 1 61C67A4F
P 1950 2250
F 0 "#PWR0102" H 1950 2000 50  0001 C CNN
F 1 "GND" V 1955 2123 50  0000 R CNN
F 2 "" H 1950 2250 50  0001 C CNN
F 3 "" H 1950 2250 50  0001 C CNN
	1    1950 2250
	0    -1   -1   0   
$EndComp
$Comp
L tc5-rescue:VCC-power #PWR0103
U 1 1 61C686E2
P 3200 2075
F 0 "#PWR0103" H 3200 1925 50  0001 C CNN
F 1 "VCC" H 3215 2246 50  0000 C CNN
F 2 "" H 3200 2075 50  0001 C CNN
F 3 "" H 3200 2075 50  0001 C CNN
	1    3200 2075
	1    0    0    -1  
$EndComp
$Comp
L tc5-rescue:GND-power #PWR0104
U 1 1 61C68E55
P 3200 2675
F 0 "#PWR0104" H 3200 2425 50  0001 C CNN
F 1 "GND" H 3205 2504 50  0000 C CNN
F 2 "" H 3200 2675 50  0001 C CNN
F 3 "" H 3200 2675 50  0001 C CNN
	1    3200 2675
	1    0    0    -1  
$EndComp
Text Label 4100 3100 2    50   ~ 0
OUT
Text Label 2850 2275 0    50   ~ 0
IN
Wire Wire Line
	2850 2275 3000 2275
Text Label 2875 2475 0    0    ~ 0
_opa_neg
Text Label 2875 2675 1    31   ~ 0
_AOPIN+
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1003
U 1 1 61C6D8DC
P 4100 3100
F 0 "TP1003" H 4252 3200 50  0000 L CNN
F 1 "TP_OUT" H 4252 3111 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4300 3100 50  0001 C CNN
F 3 "~" H 4300 3100 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1002
U 1 1 61C6F0D8
P 2875 3100
F 0 "TP1002" H 3050 3350 50  0000 R CNN
F 1 "TP_NEG" H 3075 3275 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3075 3100 50  0001 C CNN
F 3 "~" H 3075 3100 50  0001 C CNN
	1    2875 3100
	-1   0    0    1   
$EndComp
Connection ~ 2875 3100
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1001
U 1 1 61C7065D
P 2850 2275
F 0 "TP1001" H 3250 2300 50  0000 R CNN
F 1 "TP_IN" H 3200 2225 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3050 2275 50  0001 C CNN
F 3 "~" H 3050 2275 50  0001 C CNN
	1    2850 2275
	-1   0    0    1   
$EndComp
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1005
U 1 1 61C76041
P 1925 3175
F 0 "TP1005" V 1934 3327 50  0000 L CNN
F 1 "TP_GND" V 2023 3327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2125 3175 50  0001 C CNN
F 3 "~" H 2125 3175 50  0001 C CNN
	1    1925 3175
	0    1    1    0   
$EndComp
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1004
U 1 1 61C77FC1
P 1925 2950
F 0 "TP1004" V 1934 3102 50  0000 L CNN
F 1 "TP_VCC" V 2023 3102 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 2125 2950 50  0001 C CNN
F 3 "~" H 2125 2950 50  0001 C CNN
	1    1925 2950
	0    1    1    0   
$EndComp
$Comp
L tc5-rescue:GND-power #PWR0105
U 1 1 61C784ED
P 1775 3175
F 0 "#PWR0105" H 1775 2925 50  0001 C CNN
F 1 "GND" H 1780 3004 50  0000 C CNN
F 2 "" H 1775 3175 50  0001 C CNN
F 3 "" H 1775 3175 50  0001 C CNN
	1    1775 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 3175 1925 3175
$Comp
L tc5-rescue:VCC-power #PWR0106
U 1 1 61C78DD6
P 1775 2950
F 0 "#PWR0106" H 1775 2800 50  0001 C CNN
F 1 "VCC" H 1790 3121 50  0000 C CNN
F 2 "" H 1775 2950 50  0001 C CNN
F 3 "" H 1775 2950 50  0001 C CNN
	1    1775 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 2950 1925 2950
$Comp
L Graphic:SYM_Arrow_XLarge BRD1
U 1 1 62329410
P 2000 1075
F 0 "BRD1" H 2000 1165 50  0001 C CNN
F 1 "SYM_Arrow_XLarge" H 2000 995 50  0001 C CNN
F 2 "tc5:DemoBoard" H 2000 1075 50  0001 C CNN
F 3 "~" H 2000 1075 50  0001 C CNN
	1    2000 1075
	1    0    0    -1  
$EndComp
Text Notes 1475 975  0    50   ~ 0
Symbol to represent PCB
Text Notes 3925 3725 0    59   ~ 0
Voltage divider to set board type
Wire Wire Line
	3450 3850 3525 3850
$Comp
L Device:R R60
U 1 1 5D72370C
P 4050 3850
F 0 "R60" V 3975 3825 50  0000 C CNN
F 1 "100k" V 4050 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 3850 50  0001 C CNN
F 3 "" H 4050 3850 50  0001 C CNN
F 4 "Vishay" H -10000 -2725 50  0001 C CNN "S1MN"
F 5 "CRCW0603100KFKEA" H -10000 -2725 50  0001 C CNN "S1PN"
F 6 "R0603 100k" H -10000 -2725 50  0001 C CNN "desc"
F 7 "Vishay" H -10000 -2725 50  0001 C CNN "manf"
F 8 "CRCW0603100KFKEAHP" H -10000 -2725 50  0001 C CNN "manf#"
F 9 "Voltage divider sets boards type." H 4050 3850 50  0001 C CNN "comment"
F 10 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_star:manf"
F 11 "CRCW0603100KFKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_star:manf#"
F 12 "100k" H 3675 3850 50  0001 C CNN "kicost.board_type_star:value"
F 13 "R0603 100k" H 3675 3850 50  0001 C CNN "kicost.board_type_star:desc"
F 14 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_star:S1MN"
F 15 "CRCW0603100KFKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_star:S1PN"
F 16 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:manf"
F 17 "CRCW060310K0FKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:manf#"
F 18 "10k" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:value"
F 19 "R0603 10k" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:desc"
F 20 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:S1MN"
F 21 "CRCW060310K0FKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:S1PN"
F 22 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:manf"
F 23 "CRCW060339K0FKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:manf#"
F 24 "39k" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:value"
F 25 "R0603 39k" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:desc"
F 26 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:S1MN"
F 27 "CRCW060339K0FKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:S1PN"
F 28 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:manf"
F 29 "CRCW0603330RFKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:manf#"
F 30 "330R" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:value"
F 31 "R0603 330R" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:desc"
F 32 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:S1MN"
F 33 "CRCW0603330RFKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:S1PN"
	1    4050 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5D723E5A
P 4275 3850
F 0 "#PWR0133" H 4275 3600 50  0001 C CNN
F 1 "GND" H 4280 3679 50  0000 C CNN
F 2 "" H 4275 3850 50  0001 C CNN
F 3 "" H 4275 3850 50  0001 C CNN
	1    4275 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4275 3850 4200 3850
Wire Wire Line
	3825 3850 3850 3850
Wire Wire Line
	3850 3850 3850 3700
Connection ~ 3850 3850
Wire Wire Line
	3850 3850 3900 3850
$Comp
L Device:R R59
U 1 1 5D659C9E
P 3675 3850
F 0 "R59" V 3600 3825 50  0000 C CNN
F 1 "100k" V 3675 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3675 3850 50  0001 C CNN
F 3 "" H 3675 3850 50  0001 C CNN
F 4 "Vishay" H -10375 -2725 50  0001 C CNN "S1MN"
F 5 "CRCW0603100KFKEA" H -10375 -2725 50  0001 C CNN "S1PN"
F 6 "R0603 100k" H -10375 -2725 50  0001 C CNN "desc"
F 7 "Vishay" H -10375 -2725 50  0001 C CNN "manf"
F 8 "CRCW0603100KFKEAHP" H -10375 -2725 50  0001 C CNN "manf#"
F 9 "Voltage divider sets board type." H 3675 3850 50  0001 C CNN "comment"
F 10 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_star:manf"
F 11 "CRCW0603100KFKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_star:manf#"
F 12 "100k" H 3675 3850 50  0001 C CNN "kicost.board_type_star:value"
F 13 "R0603 100k" H 3675 3850 50  0001 C CNN "kicost.board_type_star:desc"
F 14 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_star:S1MN"
F 15 "CRCW0603100KFKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_star:S1PN"
F 16 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:manf"
F 17 "CRCW060339K0FKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:manf#"
F 18 "39k" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:value"
F 19 "R0603 39k" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:desc"
F 20 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_cp:S1MN"
F 21 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:manf"
F 22 "CRCW060310K0FKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:manf#"
F 23 "10k" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:value"
F 24 "R0603 10k" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:desc"
F 25 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:S1MN"
F 26 "CRCW060310K0FKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:S1PN"
F 27 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:manf"
F 28 "CRCW060310K0FKEA" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:manf#"
F 29 "10k" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:value"
F 30 "R0603 10k" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:desc"
F 31 "Vishay" H 3675 3850 50  0001 C CNN "kicost.board_type_pe:S1MN"
F 32 "CRCW060310K0FKEAHP" H 3675 3850 50  0001 C CNN "kicost.board_type_tp:S1PN"
	1    3675 3850
	0    1    1    0   
$EndComp
Text Label 3150 3700 0    59   ~ 0
V_HW_TYPE
Wire Wire Line
	3150 3700 3850 3700
$Comp
L tc5-rescue:VCC-power #PWR0107
U 1 1 6242683E
P 3450 3850
F 0 "#PWR0107" H 3450 3700 50  0001 C CNN
F 1 "VCC" H 3465 4021 50  0000 C CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "" H 3450 3850 50  0001 C CNN
	1    3450 3850
	0    -1   -1   0   
$EndComp
$Comp
L tc5-rescue:TestPoint_Probe-Connector TP1006
U 1 1 62428AED
P 3150 3700
F 0 "TP1006" H 3550 3725 50  0000 R CNN
F 1 "TP_HW_TYPE" H 3650 3650 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3350 3700 50  0001 C CNN
F 3 "~" H 3350 3700 50  0001 C CNN
	1    3150 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 6242B268
P 3875 4200
F 0 "R18" V 3775 4175 50  0000 C CNN
F 1 "100k" V 3875 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9950 4100 50  0001 C CNN
F 3 "" H 9950 4100 50  0001 C CNN
F 4 "Vishay" H -5250 -800 50  0001 C CNN "S1MN"
F 5 "CRCW0603100KFKEA" H -5250 -800 50  0001 C CNN "S1PN"
F 6 "R0603 100k" H -5250 -800 50  0001 C CNN "desc"
F 7 "Vishay" H -5250 -800 50  0001 C CNN "manf"
F 8 "CRCW0603100KFKEAHP" H -5250 -800 50  0001 C CNN "manf#"
F 9 "inp1" H 9950 4100 50  0001 C CNN "variant"
	1    3875 4200
	0    1    1    0   
$EndComp
$Comp
L tc5-rescue:VCC-power #PWR0108
U 1 1 6242C310
P 3650 4200
F 0 "#PWR0108" H 3650 4050 50  0001 C CNN
F 1 "VCC" H 3665 4371 50  0000 C CNN
F 2 "" H 3650 4200 50  0001 C CNN
F 3 "" H 3650 4200 50  0001 C CNN
	1    3650 4200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6242C790
P 4100 4200
F 0 "#PWR0109" H 4100 3950 50  0001 C CNN
F 1 "GND" H 4105 4029 50  0000 C CNN
F 2 "" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0001 C CNN
	1    4100 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 4200 3725 4200
Wire Wire Line
	4025 4200 4100 4200
$Comp
L Connector_Generic:Conn_02x03_Odd_Even P1
U 1 1 62606E62
P 4975 1650
F 0 "P1" H 5025 1964 50  0000 C CNN
F 1 "TC2030" H 5025 1875 50  0000 C CNN
F 2 "tc5:TC2030-MCP-FP" H 4975 1650 50  0001 C CNN
F 3 "~" H 4975 1650 50  0001 C CNN
	1    4975 1650
	1    0    0    -1  
$EndComp
NoConn ~ 4775 1550
NoConn ~ 4775 1650
NoConn ~ 4775 1750
NoConn ~ 5275 1750
NoConn ~ 5275 1650
NoConn ~ 5275 1550
$EndSCHEMATC
