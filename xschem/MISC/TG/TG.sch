v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
B 5 27.5 -182.5 32.5 -177.5 {name=EN
dir=inout}
B 5 -102.5 -72.5 -97.5 -67.5 {name=IN
dir=inout}
B 5 27.5 27.5 32.5 32.5 {name=nEN
dir=inout}
B 5 147.5 -72.5 152.5 -67.5 {name=OUT
dir=inout}
N 60 -100 100 -100 { lab=#net1}
N 100 -100 100 -40 { lab=#net1}
N 60 -40 100 -40 { lab=#net1}
N 100 -70 150 -70 { lab=#net1}
N -50 -100 0 -100 { lab=#net2}
N -50 -100 -50 -40 { lab=#net2}
N -50 -40 0 -40 { lab=#net2}
N -100 -70 -50 -70 { lab=#net2}
N 30 -0 30 30 { lab=#net3}
N 30 -180 30 -140 { lab=#net4}
N 30 -100 30 -90 { lab=#net2}
N 30 -50 30 -40 { lab=#net1}
N 30 -50 100 -50 { lab=#net1}
N -50 -90 30 -90 { lab=#net2}
C {ARRAY/n1_1.sym} 30 -120 1 0 {name=x1}
C {ARRAY/p1_1.sym} 30 -20 1 1 {name=x2}
C {devices/iopin.sym} 240 -160 0 0 {name=p1 lab=IN}
C {devices/iopin.sym} 240 -140 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} 240 -120 0 0 {name=p3 lab=	EN}
C {devices/iopin.sym} 240 -100 0 0 {name=p4 lab=nEN}
