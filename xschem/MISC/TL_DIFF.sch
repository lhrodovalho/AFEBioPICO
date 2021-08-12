v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -480 210 -480 { lab=IBIAS}
N 450 -550 450 -510 { lab=VDD}
N 70 -550 250 -550 { lab=VDD}
N 70 -550 70 -510 { lab=VDD}
N 160 -480 160 -410 { lab=IBIAS}
N 70 -410 160 -410 { lab=IBIAS}
N 450 -480 470 -480 { lab=VDD}
N 470 -550 470 -480 { lab=VDD}
N 450 -550 470 -550 { lab=VDD}
N 50 -480 70 -480 { lab=VDD}
N 50 -550 50 -480 { lab=VDD}
N 50 -550 70 -550 { lab=VDD}
N 70 -450 70 -400 { lab=IBIAS}
N 250 -550 460 -550 { lab=VDD}
N 350 -370 350 -350 { lab=#net1}
N 550 -370 550 -350 { lab=#net1}
N 390 -370 510 -370 { lab=#net1}
N 350 -290 350 -220 { lab=#net2}
N 550 -290 550 -220 { lab=OUT}
N 350 -370 390 -370 { lab=#net1}
N 510 -370 550 -370 { lab=#net1}
N 350 -160 350 -130 { lab=VSS}
N 350 -130 550 -130 { lab=VSS}
N 550 -160 550 -130 { lab=VSS}
N 70 -330 70 -210 { lab=IBIAS}
N 70 -340 70 -330 { lab=IBIAS}
N 390 -190 510 -190 { lab=#net2}
N 270 -320 310 -320 { lab=PLUS}
N 350 -320 550 -320 { lab=VDD}
N 420 -330 420 -320 { lab=VDD}
N 320 -190 350 -190 { lab=VSS}
N 320 -190 320 -130 { lab=VSS}
N 550 -190 590 -190 { lab=VSS}
N 590 -190 590 -130 { lab=VSS}
N 550 -130 590 -130 { lab=VSS}
N 350 -260 450 -260 { lab=#net2}
N 450 -260 450 -190 { lab=#net2}
N 550 -260 610 -260 { lab=OUT}
N 590 -320 620 -320 { lab=MINUS}
N 320 -130 350 -130 { lab=VSS}
N 70 -400 70 -340 { lab=IBIAS}
N 450 -450 450 -440 { lab=#net3}
N 450 -380 450 -370 { lab=#net1}
N 250 -580 250 -550 { lab=VDD}
N 470 -130 470 -120 { lab=VSS}
N 210 -480 410 -480 { lab=IBIAS}
C {devices/vdd.sym} 420 -330 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 270 -320 0 0 {name=l13 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 620 -320 2 0 {name=l14 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 70 -210 2 0 {name=l15 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 610 -260 2 0 {name=l16 sig_type=std_logic lab=OUT}
C {devices/vsource.sym} 450 -410 0 0 {name=V3 value=0}
C {devices/title.sym} 160 -30 0 0 {name=l6 author="LCI Team"}
C {devices/iopin.sym} 840 -540 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 840 -510 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 840 -480 0 0 {name=p3 lab=PLUS}
C {devices/iopin.sym} 840 -450 0 0 {name=p4 lab=MINUS}
C {devices/iopin.sym} 840 -420 0 0 {name=p5 lab=OUT}
C {devices/iopin.sym} 840 -390 0 0 {name=p6 lab=IBIAS}
C {devices/lab_pin.sym} 250 -580 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 470 -120 3 0 {name=l1 sig_type=std_logic lab=VSS}
C {ARRAY/p1_4.sym} 430 -480 0 0 {name=x1}
C {ARRAY/p1_4.sym} 90 -480 2 0 {name=x2}
C {ARRAY/p1_4.sym} 330 -320 0 0 {name=x3}
C {ARRAY/p1_4.sym} 570 -320 2 0 {name=x4}
C {ARRAY/n1_4.sym} 530 -190 0 0 {name=x5}
C {ARRAY/n1_4.sym} 370 -190 2 0 {name=x6}
