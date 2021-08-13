v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 310 -280 340 -280 { lab=#net1}
N 340 -280 340 -180 { lab=#net1}
N 100 -180 340 -180 { lab=#net1}
N 100 -250 100 -180 { lab=#net1}
N 100 -250 130 -250 { lab=#net1}
N 840 -250 870 -250 { lab=#net2}
N 870 -250 870 -150 { lab=#net2}
N 630 -150 870 -150 { lab=#net2}
N 630 -220 630 -150 { lab=#net2}
N 630 -220 660 -220 { lab=#net2}
N 10 -310 130 -310 { lab=vin}
N 470 -280 660 -280 { lab=#net3}
N 530 -280 530 -250 { lab=#net3}
N 530 -190 530 -140 { lab=GND}
N 340 -280 410 -280 { lab=#net1}
N 870 -250 920 -250 { lab=#net2}
N 980 -250 1050 -250 { lab=#net4}
N 1050 -250 1050 -230 { lab=#net4}
N 1050 -170 1050 -140 { lab=GND}
N 1360 -220 1390 -220 { lab=vout}
N 1150 -190 1180 -190 { lab=#net5}
N 1050 -250 1180 -250 { lab=#net4}
N 1390 -220 1440 -220 { lab=vout}
N 1400 -220 1400 -120 { lab=vout}
N 1330 -120 1400 -120 { lab=vout}
N 1140 -190 1140 -100 { lab=#net5}
N 1140 -190 1150 -190 { lab=#net5}
N 1290 -120 1330 -120 { lab=vout}
N 1140 -120 1230 -120 { lab=#net5}
N 1140 -40 1140 -20 { lab=GND}
C {devices/res.sym} 440 -280 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 530 -220 0 0 {name=C1
m=1
value=796n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 530 -140 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 950 -250 3 0 {name=C2
m=1
value=3.18u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1050 -200 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1050 -140 0 0 {name=l2 lab=GND}
C {devices/res.sym} 1140 -70 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1260 -120 1 0 {name=R4
value=99k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1140 -20 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 20 -310 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 1430 -220 0 0 {name=p2 lab=vout}
C {MISC/opamp.sym} 130 -210 0 0 {name=X1}
C {MISC/opamp.sym} 660 -180 0 0 {name=X2}
C {MISC/opamp.sym} 1180 -150 0 0 {name=X3}
