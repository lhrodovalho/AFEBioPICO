v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -170 340 -170 { lab=#net1}
N 340 -170 340 -60 { lab=#net1}
N 80 -60 340 -60 { lab=#net1}
N 80 -140 80 -60 { lab=#net1}
N 80 -140 120 -140 { lab=#net1}
N 730 -140 770 -140 { lab=#net2}
N 770 -140 770 -30 { lab=#net2}
N 510 -30 770 -30 { lab=#net2}
N 510 -110 510 -30 { lab=#net2}
N 510 -110 550 -110 { lab=#net2}
N 1220 -110 1260 -110 { lab=xxx}
N 1260 -110 1260 0 { lab=xxx}
N 1000 0 1260 0 { lab=xxx}
N 1000 -80 1000 0 { lab=xxx}
N 1000 -80 1040 -80 { lab=xxx}
N 0 -200 120 -200 { lab=vin}
N 340 -170 360 -170 { lab=#net1}
N 420 -170 440 -170 { lab=#net3}
N 440 -170 440 -150 { lab=#net3}
N 440 -90 440 -60 { lab=GND}
N 440 -170 550 -170 { lab=#net3}
N 770 -140 790 -140 { lab=#net2}
N 850 -140 1040 -140 { lab=#net4}
N 880 -140 880 -120 { lab=#net4}
N 880 -60 880 -30 { lab=GND}
N 1260 -110 1320 -110 { lab=xxx}
C {MISC/opamp.sym} 120 -100 0 0 {name=X1}
C {MISC/opamp.sym} 550 -70 0 0 {name=X2}
C {MISC/opamp.sym} 1040 -40 0 0 {name=X3}
C {devices/ipin.sym} 10 -200 0 0 {name=p1 lab=vin}
C {devices/gnd.sym} 440 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 880 -30 0 0 {name=l2 lab=GND}
C {devices/res.sym} 390 -170 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 880 -90 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 440 -120 0 0 {name=C1
m=1
value=5.3u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 820 -140 1 0 {name=C2
m=1
value=1.6u
footprint=1206
device="ceramic capacitor"}
C {devices/opin.sym} 1310 -110 0 0 {name=p2 lab=vout}
