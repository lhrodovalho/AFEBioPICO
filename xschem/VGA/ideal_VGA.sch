v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -550 260 -550 { lab=vin}
N 440 -520 500 -520 { lab=vout}
N 190 -490 260 -490 { lab=#net1}
N 190 -490 190 -310 { lab=#net1}
N 190 -60 190 -20 { lab=GND}
N 190 -260 190 -190 { lab=#net1}
N 190 -320 230 -320 { lab=#net1}
N 190 -240 280 -240 { lab=#net1}
N 290 -320 330 -320 { lab=#net2}
N 340 -240 410 -240 { lab=#net3}
N 470 -240 500 -240 { lab=vout}
N 500 -520 540 -520 { lab=vout}
N 500 -240 540 -240 { lab=vout}
N 360 -390 360 -360 { lab=x10}
N 540 -520 580 -520 { lab=vout}
N 540 -320 580 -320 { lab=vout}
N 540 -240 580 -240 { lab=vout}
N 440 -300 440 -280 { lab=x100}
N 390 -320 540 -320 { lab=vout}
N 190 -190 190 -120 { lab=#net1}
N 190 -170 350 -170 { lab=#net1}
N 410 -170 490 -170 { lab=#net4}
N 550 -170 580 -170 { lab=vout}
N 580 -520 580 -220 { lab=vout}
N 580 -520 630 -520 { lab=vout}
N 190 -310 190 -260 { lab=#net1}
N 580 -220 580 -170 { lab=vout}
N 270 -410 580 -410 { lab=vout}
N 190 -410 210 -410 { lab=#net1}
N 220 -470 220 -450 { lab=GND}
N 340 -380 340 -360 { lab=GND}
N 420 -290 420 -280 { lab=GND}
N 500 -220 500 -210 { lab=GND}
N 520 -220 520 -210 { lab=#net5}
N 240 -470 240 -450 { lab=x1}
N 520 -230 520 -220 {}
C {MISC/opamp.sym} 260 -450 0 0 {name=X1}
C {devices/res.sym} 190 -90 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 190 -20 0 0 {name=l1 lab=GND}
C {devices/res.sym} 260 -320 1 0 {name=R2
value=9k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 310 -240 1 0 {name=R3
value=99k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 -170 1 0 {name=R4
value=999k
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} 10 -550 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 240 -460 1 0 {name=p2 lab=x1}
C {devices/ipin.sym} 360 -380 1 0 {name=p3 lab=x10}
C {devices/ipin.sym} 440 -290 1 0 {name=p4 lab=x100}
C {devices/ipin.sym} 520 -220 1 0 {name=p5 lab=x1000}
C {devices/opin.sym} 620 -520 0 0 {name=p6 lab=vout}
C {devices/gnd.sym} 220 -470 2 0 {name=l2 lab=GND}
C {devices/gnd.sym} 340 -380 2 0 {name=l3 lab=GND}
C {devices/gnd.sym} 420 -290 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 500 -220 2 0 {name=l5 lab=GND}
C {devices/switch_v_xyce.sym} 240 -410 1 0 {name=S5 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 360 -320 1 0 {name=S1 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 440 -240 1 0 {name=S2 model=switch1 state=OFF}
C {devices/switch_v_xyce.sym} 520 -170 1 0 {name=S3 model=switch1 state=OFF}
