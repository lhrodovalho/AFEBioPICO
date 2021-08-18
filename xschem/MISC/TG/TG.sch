v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 -100 100 -100 { lab=OUT}
N 100 -100 100 -40 { lab=OUT}
N 60 -40 100 -40 { lab=OUT}
N 100 -70 150 -70 { lab=OUT}
N -50 -100 0 -100 { lab=IN}
N -50 -100 -50 -40 { lab=IN}
N -50 -40 0 -40 { lab=IN}
N -100 -70 -50 -70 { lab=IN}
N 30 -0 30 30 { lab=nEN}
N 30 -180 30 -140 { lab=xxx}
N 30 -60 30 -40 { lab=OUT}
N 30 -60 100 -60 { lab=OUT}
N 30 -100 30 -80 { lab=IN}
N -50 -80 30 -80 { lab=IN}
C {devices/iopin.sym} 190 -200 0 0 {name=p1 lab=IN}
C {devices/iopin.sym} 190 -180 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} 190 -160 0 0 {name=p3 lab=EN}
C {devices/iopin.sym} 190 -140 0 0 {name=p4 lab=nEN}
C {ARRAY/n1_1.sym} 30 -120 1 0 {name=x1}
C {ARRAY/p1_1.sym} 30 -20 1 1 {name=x2}
C {devices/lab_pin.sym} 150 -70 2 0 {name=l1 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 30 -180 1 0 {name=l2 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -100 -70 0 0 {name=l3 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 30 30 3 0 {name=l4 sig_type=std_logic lab=nEN}
