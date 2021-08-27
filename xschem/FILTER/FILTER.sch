v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 480 -340 720 -340 { lab=OUT}
N 670 -470 670 -340 { lab=OUT}
N 670 -470 930 -470 { lab=OUT}
N 930 -470 930 -310 { lab=OUT}
N 900 -310 930 -310 { lab=OUT}
N 930 -600 930 -470 { lab=OUT}
N 690 -610 930 -610 { lab=OUT}
N 930 -610 930 -600 { lab=OUT}
N 680 -280 720 -280 { lab=GND}
N 680 -280 680 -260 { lab=GND}
N 250 -310 300 -310 { lab=IN}
N 690 -670 720 -670 { lab=GND}
N 720 -670 720 -660 { lab=GND}
N 240 -640 510 -640 { lab=#net1}
N 240 -640 240 -370 { lab=#net1}
N 240 -370 300 -370 { lab=#net1}
N 420 -640 420 -620 { lab=#net1}
N 540 -340 540 -330 { lab=OUT}
N 240 -310 250 -310 { lab=IN}
N 930 -310 1090 -310 { lab=OUT}
C {LNA/LNA_OPAMP_3.sym} 300 -270 0 0 {name=X1}
C {LNA/LNA_OPAMP_3.sym} 720 -240 0 0 {name=X2}
C {LNA/LNA_OPAMP_2.sym} 690 -570 0 1 {name=x3}
C {devices/capa.sym} 540 -300 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -590 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 540 -270 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 680 -260 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 720 -660 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 420 -560 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 400 -270 2 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 820 -240 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -570 2 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 590 -710 2 0 {name=l22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 820 -380 2 0 {name=l23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -410 2 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 340 -440 2 0 {name=l25 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 760 -410 2 0 {name=l26 sig_type=std_logic lab=IBIAS2}
C {devices/lab_pin.sym} 650 -740 2 0 {name=l27 sig_type=std_logic lab=IBIAS3}
C {devices/lab_pin.sym} 240 -310 0 0 {name=l6 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1090 -310 2 0 {name=l28 sig_type=std_logic lab=OUT}
C {devices/title.sym} 160 -40 0 0 {name=l19 author="LCI TEAM"}
C {devices/iopin.sym} 1240 -580 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 1240 -540 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 1240 -500 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} 1240 -460 0 0 {name=p4 lab=IN}
C {devices/iopin.sym} 1240 -420 0 0 {name=p5 lab=OUT}
C {devices/iopin.sym} 1380 -580 0 0 {name=p6 lab=IBIAS1
}
C {devices/iopin.sym} 1380 -540 0 0 {name=p7 lab=IBIAS2
}
C {devices/iopin.sym} 1380 -500 0 0 {name=p8 lab=IBIAS3
}
