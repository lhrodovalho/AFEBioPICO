v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 30 -140 110 -140 { lab=vp}
N 30 -100 110 -100 { lab=vm}
N 150 -90 150 -40 { lab=GND}
N 150 -200 150 -150 { lab=out}
N 150 -40 150 -20 { lab=GND}
C {devices/vcvs.sym} 150 -120 0 0 {name=E1 value=1E6}
C {devices/gnd.sym} 150 -20 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} 40 -140 0 0 {name=p1 lab=vp}
C {devices/ipin.sym} 40 -100 0 0 {name=p2 lab=vm}
C {devices/opin.sym} 150 -190 3 0 {name=p3 lab=out}
