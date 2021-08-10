v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -180 260 -180 { lab=G}
N 80 -180 100 -180 { lab=G}
N 80 -180 80 -120 { lab=G}
N 40 -120 80 -120 { lab=G}
N 80 -120 240 -120 { lab=G}
N 240 -180 240 -120 { lab=G}
N 140 -150 140 -80 { lab=D}
N 140 -80 300 -80 { lab=D}
N 300 -150 300 -80 { lab=D}
N 140 -80 140 -40 { lab=D}
N 140 -180 180 -180 { lab=B}
N 180 -220 180 -180 { lab=B}
N 180 -220 340 -220 { lab=B}
N 340 -220 340 -180 { lab=B}
N 300 -180 340 -180 { lab=B}
N 340 -220 380 -220 { lab=B}
N 300 -260 300 -210 { lab=S}
N 140 -260 300 -260 { lab=S}
N 140 -260 140 -210 { lab=S}
N 140 -300 140 -260 { lab=S}
C {devices/lab_pin.sym} 40 -120 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 380 -220 0 1 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 140 -300 3 1 {name=l3 sig_type=std_logic lab=S}
C {devices/lab_pin.sym} 140 -40 1 1 {name=l4 sig_type=std_logic lab=D}
C {devices/iopin.sym} 435 -220 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 435 -180 0 0 {name=p2 lab=G}
C {devices/iopin.sym} 435 -140 0 0 {name=p3 lab=S}
C {devices/iopin.sym} 435 -100 0 0 {name=p4 lab=B}
C {p2_1.sym} 120 -180 0 0 {name=xl}
C {p2_1.sym} 280 -180 0 0 {name=xr}
