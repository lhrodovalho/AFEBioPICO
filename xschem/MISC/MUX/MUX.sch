v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -160 -320 -0 -320 { lab=IN1}
N -160 -110 -0 -110 { lab=IN2}
N 160 -320 240 -320 { lab=xxx}
N 240 -320 240 -110 { lab=xxx}
N 160 -110 240 -110 { lab=xxx}
N 240 -220 360 -220 { lab=xxx}
N 80 -260 80 -220 { lab=#net1}
N 80 -220 80 -170 { lab=#net1}
N 170 -280 170 -240 { lab=VDD}
N 170 -200 170 -160 { lab=VSS}
N 80 -220 140 -220 { lab=#net1}
N 200 -220 210 -220 { lab=CTRL}
N 210 -390 210 -220 { lab=CTRL}
N 80 -390 210 -390 { lab=CTRL}
N 80 -390 80 -380 { lab=CTRL}
N 210 -220 210 -40 { lab=CTRL}
N 80 -40 210 -40 { lab=CTRL}
N 80 -50 80 -40 { lab=CTRL}
N 80 -420 80 -390 { lab=CTRL}
C {MISC/TG/TG.sym} 20 -50 0 0 {name=X1}
C {MISC/TG/TG.sym} 20 -260 0 0 {name=X2}
C {MISC/inverter.sym} 210 -220 0 1 {name=X3}
C {devices/iopin.sym} 480 -420 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 480 -400 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 480 -380 0 0 {name=p3 lab=IN1}
C {devices/iopin.sym} 480 -360 0 0 {name=p4 lab=IN2}
C {devices/iopin.sym} 480 -340 0 0 {name=p5 lab=CTRL}
C {devices/iopin.sym} 480 -320 0 0 {name=p6 lab=OUT}
C {devices/lab_pin.sym} 170 -280 1 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 170 -160 3 0 {name=l2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -220 2 0 {name=l3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 80 -420 1 0 {name=l4 sig_type=std_logic lab=CTRL}
C {devices/lab_pin.sym} -160 -320 0 0 {name=l5 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -160 -110 0 0 {name=l6 sig_type=std_logic lab=IN2}
