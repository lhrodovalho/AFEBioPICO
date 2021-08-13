v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 560 -580 560 -560 { lab=GND}
N 560 -460 560 -440 { lab=GND}
N 560 -340 560 -320 { lab=GND}
N 560 -220 560 -200 { lab=GND}
N 560 -90 560 -70 { lab=GND}
C {ideal_VGA.sym} 10 -10 0 0 {name=X1}
C {devices/lab_pin.sym} 10 -80 0 0 {name=l1 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 80 -170 1 0 {name=l2 sig_type=std_logic lab=1x}
C {devices/lab_pin.sym} 100 -170 1 0 {name=l3 sig_type=std_logic lab=10x}
C {devices/lab_pin.sym} 120 -170 1 0 {name=l4 sig_type=std_logic lab=100x}
C {devices/lab_pin.sym} 140 -170 1 0 {name=l5 sig_type=std_logic lab=1000x}
C {devices/lab_pin.sym} 220 -80 2 0 {name=l6 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 560 -610 0 0 {name=V1 value=10m}
C {devices/vsource.sym} 560 -490 0 0 {name=V2 value="DC 0 pulse(-10 10 0us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 560 -370 0 0 {name=V3 value="DC 0 pulse(-10 10 1us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 560 -250 0 0 {name=V4 value="DC 0 pulse(-10 10 2us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 560 -120 0 0 {name=V5 value="DC 0 pulse(-10 10 3us 0s 0s 1us 4us)"}
C {devices/gnd.sym} 560 -560 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 560 -440 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 560 -320 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 560 -200 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 560 -70 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 560 -640 0 0 {name=l12 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 560 -520 0 0 {name=l13 sig_type=std_logic lab=1x}
C {devices/lab_pin.sym} 560 -400 0 0 {name=l14 sig_type=std_logic lab=10x}
C {devices/lab_pin.sym} 560 -280 0 0 {name=l15 sig_type=std_logic lab=100x}
C {devices/lab_pin.sym} 560 -150 0 0 {name=l16 sig_type=std_logic lab=1000x}
C {devices/code_shown.sym} 0 -410 0 0 {name=SPICE only_toplevel=false value=".tran 1n 10u
.model switch1 sw vt=10mV ron=1 roff=1e8
.save all"}
