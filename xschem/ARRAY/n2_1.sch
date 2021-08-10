v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -160 340 -160 { lab=B}
N 340 -160 340 -120 { lab=B}
N 340 -120 380 -120 { lab=B}
N 140 -160 180 -160 { lab=B}
N 180 -160 180 -120 { lab=B}
N 180 -120 340 -120 { lab=B}
N 300 -130 300 -80 { lab=S}
N 140 -80 300 -80 { lab=S}
N 140 -130 140 -80 { lab=S}
N 80 -160 100 -160 { lab=G}
N 80 -220 80 -160 { lab=G}
N 80 -220 240 -220 { lab=G}
N 240 -220 240 -160 { lab=G}
N 240 -160 260 -160 { lab=G}
N 40 -220 80 -220 { lab=G}
N 140 -260 140 -190 { lab=D}
N 140 -260 300 -260 { lab=D}
N 300 -260 300 -190 { lab=D}
N 140 -300 140 -260 { lab=D}
N 300 -80 300 -40 { lab=S}
C {devices/lab_pin.sym} 40 -220 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 380 -120 0 1 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 140 -300 3 1 {name=l3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 300 -40 1 1 {name=l4 sig_type=std_logic lab=S}
C {devices/iopin.sym} 435 -220 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 435 -180 0 0 {name=p2 lab=G}
C {devices/iopin.sym} 435 -140 0 0 {name=p3 lab=S}
C {devices/iopin.sym} 435 -100 0 0 {name=p4 lab=B}
C {n1_1.sym} 280 -160 0 0 {name=xr}
C {n1_1.sym} 120 -160 0 0 {name=xl}
