v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -240 100 -240 { lab=G}
N 140 -210 140 -150 { lab=X}
N 80 -240 80 -120 { lab=G}
N 80 -120 100 -120 { lab=G}
N 140 -120 180 -120 { lab=B}
N 180 -240 180 -120 { lab=B}
N 140 -240 180 -240 { lab=B}
N 140 -90 140 -40 { lab=S}
N 140 -320 140 -270 { lab=D}
N 40 -240 80 -240 { lab=G}
N 180 -120 220 -120 { lab=B}
N 140 -180 220 -180 { lab=X}
C {devices/lab_pin.sym} 40 -240 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 220 -120 0 1 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 140 -320 3 1 {name=l3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 140 -40 1 1 {name=l4 sig_type=std_logic lab=S}
C {devices/iopin.sym} 290 -240 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 290 -200 0 0 {name=p2 lab=G}
C {devices/iopin.sym} 290 -160 0 0 {name=p3 lab=S}
C {devices/iopin.sym} 290 -120 0 0 {name=p4 lab=B}
C {n1_1.sym} 120 -240 0 0 {name=xd}
C {n1_1.sym} 120 -120 0 0 {name=xs}
C {devices/lab_pin.sym} 220 -180 0 1 {name=l5 sig_type=std_logic lab=X}
