v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -170 40 -120 { lab=OUT}
N -30 -200 0 -200 { lab=IN}
N -30 -200 -30 -90 { lab=IN}
N -30 -90 0 -90 { lab=IN}
N -80 -140 -30 -140 { lab=IN}
N 40 -140 110 -140 { lab=OUT}
N 40 -290 40 -230 { lab=VDD}
N 40 -250 60 -250 { lab=VDD}
N 60 -250 60 -200 { lab=VDD}
N 40 -200 60 -200 { lab=VDD}
N 40 -60 40 -30 { lab=VSS}
N 40 -90 60 -90 { lab=VSS}
N 60 -90 60 -40 { lab=VSS}
N 40 -40 60 -40 { lab=VSS}
N 40 -30 40 -10 { lab=VSS}
N 40 -10 40 -0 { lab=VSS}
C {ARRAY/TG_n1_1.sym} 20 -90 0 0 {name=x1}
C {ARRAY/TG_p1_1.sym} 20 -200 0 0 {name=x2}
C {devices/iopin.sym} 220 -250 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 220 -230 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 220 -210 0 0 {name=p3 lab=IN}
C {devices/iopin.sym} 220 -190 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} -80 -140 0 0 {name=l1 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 110 -140 2 0 {name=l2 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 40 -290 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 40 0 3 0 {name=l4 sig_type=std_logic lab=VSS}
