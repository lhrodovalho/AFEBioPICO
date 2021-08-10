v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 160 -210 160 -150 { lab=X}
N 80 -120 120 -120 { lab=G}
N 80 -240 80 -120 { lab=G}
N 80 -240 120 -240 { lab=G}
N 160 -240 200 -240 { lab=B}
N 200 -240 200 -120 { lab=B}
N 160 -120 200 -120 { lab=B}
N 160 -90 160 -40 { lab=D}
N 160 -320 160 -270 { lab=S}
N 200 -240 240 -240 { lab=B}
N 160 -180 240 -180 { lab=X}
N 40 -120 80 -120 { lab=G}
C {devices/lab_pin.sym} 40 -120 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 160 -320 3 1 {name=l3 sig_type=std_logic lab=S}
C {devices/iopin.sym} 295 -240 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 295 -200 0 0 {name=p2 lab=G}
C {devices/iopin.sym} 295 -160 0 0 {name=p3 lab=S}
C {devices/iopin.sym} 295 -120 0 0 {name=p4 lab=B}
C {p1_1.sym} 140 -240 0 0 {name=xs}
C {p1_1.sym} 140 -120 0 0 {name=xd}
C {devices/lab_pin.sym} 160 -40 1 1 {name=l2 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 240 -240 0 1 {name=l4 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 240 -180 0 1 {name=l5 sig_type=std_logic lab=X}
