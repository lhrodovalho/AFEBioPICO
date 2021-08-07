v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 700 -2240 960 -2240 { lab=vin}
N 1140 -2210 1200 -2210 { lab=vout}
N 890 -2180 960 -2180 { lab=#net1}
N 890 -2180 890 -2000 { lab=#net1}
N 890 -1750 890 -1710 { lab=GND}
N 890 -1950 890 -1880 { lab=#net1}
N 890 -2010 930 -2010 { lab=#net1}
N 890 -1930 980 -1930 { lab=#net1}
N 990 -2010 1030 -2010 { lab=#net2}
N 1040 -1930 1110 -1930 { lab=#net3}
N 1170 -1930 1200 -1930 { lab=vout}
N 1200 -2210 1240 -2210 { lab=vout}
N 1200 -1930 1240 -1930 { lab=vout}
N 1060 -2080 1060 -2050 { lab=x10}
N 1240 -2210 1280 -2210 { lab=vout}
N 1240 -2010 1280 -2010 { lab=vout}
N 1240 -1930 1280 -1930 { lab=vout}
N 1140 -1990 1140 -1970 { lab=x100}
N 1090 -2010 1240 -2010 { lab=vout}
N 890 -1880 890 -1810 { lab=#net1}
N 890 -1860 1050 -1860 { lab=#net1}
N 1110 -1860 1190 -1860 { lab=#net4}
N 1250 -1860 1280 -1860 { lab=vout}
N 1280 -2210 1280 -1910 { lab=vout}
N 1280 -2210 1330 -2210 { lab=vout}
N 890 -2000 890 -1950 { lab=#net1}
N 1280 -1910 1280 -1860 { lab=vout}
N 970 -2100 1280 -2100 { lab=vout}
N 890 -2100 910 -2100 { lab=#net1}
N 920 -2160 920 -2140 { lab=GND}
N 1040 -2070 1040 -2050 { lab=GND}
N 1120 -1980 1120 -1970 { lab=GND}
N 1200 -1910 1200 -1900 { lab=GND}
N 1220 -1910 1220 -1900 { lab=#net5}
N 940 -2160 940 -2140 { lab=x1}
N 1220 -1920 1220 -1910 {}
C {MISC/opamp.sym} -1640 -1160 0 0 {name=X1}
C {devices/res.sym} 890 -1780 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 890 -1710 0 0 {name=l1 lab=GND}
C {devices/res.sym} 960 -2010 1 0 {name=R2
value=9k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1010 -1930 1 0 {name=R3
value=99k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1080 -1860 1 0 {name=R4
value=999k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 710 -2240 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 940 -2150 1 0 {name=p2 lab=x1}
C {devices/ipin.sym} 1060 -2070 1 0 {name=p3 lab=x10}
C {devices/ipin.sym} 1140 -1980 1 0 {name=p4 lab=x100}
C {devices/ipin.sym} 1220 -1910 1 0 {name=p5 lab=x1000}
C {devices/opin.sym} 1320 -2210 0 0 {name=p6 lab=vout}
C {devices/gnd.sym} 920 -2160 2 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1040 -2070 2 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1120 -1980 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1200 -1910 2 0 {name=l5 lab=GND}
C {devices/switch_v_xyce.sym} 940 -2100 1 0 {name=S5 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 1060 -2010 1 0 {name=S1 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 1140 -1930 1 0 {name=S2 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 1220 -1860 1 0 {name=S3 model=switch1 state=OFF}
