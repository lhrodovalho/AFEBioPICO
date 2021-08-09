v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1940 -1160 1980 -1160 { lab=#net1}
N 1980 -1160 1980 -1050 { lab=#net1}
N 1720 -1050 1980 -1050 { lab=#net1}
N 1720 -1130 1720 -1050 { lab=#net1}
N 1720 -1130 1760 -1130 { lab=#net1}
N 2370 -1130 2410 -1130 { lab=#net2}
N 2410 -1130 2410 -1020 { lab=#net2}
N 2150 -1020 2410 -1020 { lab=#net2}
N 2150 -1100 2150 -1020 { lab=#net2}
N 2150 -1100 2190 -1100 { lab=#net2}
N 2860 -1100 2900 -1100 { lab=xxx}
N 2900 -1100 2900 -990 { lab=xxx}
N 2640 -990 2900 -990 { lab=xxx}
N 2640 -1070 2640 -990 { lab=xxx}
N 2640 -1070 2680 -1070 { lab=xxx}
N 1640 -1190 1760 -1190 { lab=vin}
N 1980 -1160 2000 -1160 { lab=#net1}
N 2060 -1160 2080 -1160 { lab=#net3}
N 2080 -1160 2080 -1140 { lab=#net3}
N 2080 -1080 2080 -1050 { lab=GND}
N 2080 -1160 2190 -1160 { lab=#net3}
N 2410 -1130 2430 -1130 { lab=#net2}
N 2490 -1130 2680 -1130 { lab=#net4}
N 2520 -1130 2520 -1110 { lab=#net4}
N 2520 -1050 2520 -1020 { lab=GND}
N 2900 -1100 2960 -1100 { lab=xxx}
C {MISC/opamp.sym} -840 -110 0 0 {name=X1}
C {MISC/opamp.sym} -410 -80 0 0 {name=X2}
C {MISC/opamp.sym} 80 -50 0 0 {name=X3}
C {devices/ipin.sym} 1650 -1190 0 0 {name=p1 lab=vin}
C {devices/gnd.sym} 2080 -1050 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 2520 -1020 0 0 {name=l2 lab=GND}
C {devices/res.sym} 2030 -1160 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2520 -1080 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 2080 -1110 0 0 {name=C1
m=1
value=5.3u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 2460 -1130 1 0 {name=C2
m=1
value=1.6u
footprint=1206
device="ceramic capacitor"}
C {devices/opin.sym} 2950 -1100 0 0 {name=p2 lab=vout}
