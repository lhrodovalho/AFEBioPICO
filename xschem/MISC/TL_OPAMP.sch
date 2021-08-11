v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 660 -500 680 -520 {}
L 4 680 -520 860 -520 {}
L 4 860 -520 890 -520 {}
L 4 890 -520 900 -520 {}
L 4 900 -520 920 -500 {}
T {Sources} 750 -550 0 0 0.4 0.4 {}
N 120 -450 220 -450 { lab=IBIAS}
N 460 -520 460 -480 { lab=VDD}
N 80 -520 260 -520 { lab=VDD}
N 80 -520 80 -480 { lab=VDD}
N 460 -420 460 -390 { lab=#net1}
N 170 -450 170 -380 { lab=IBIAS}
N 80 -380 170 -380 { lab=IBIAS}
N 460 -100 460 -90 { lab=GND}
N 180 -530 180 -520 { lab=VDD}
N 460 -450 480 -450 { lab=VDD}
N 480 -520 480 -450 { lab=VDD}
N 460 -520 480 -520 { lab=VDD}
N 60 -450 80 -450 { lab=VDD}
N 60 -520 60 -450 { lab=VDD}
N 60 -520 80 -520 { lab=VDD}
N 460 -390 460 -340 { lab=#net1}
N 80 -420 80 -370 { lab=IBIAS}
N 260 -520 470 -520 { lab=VDD}
N 220 -450 430 -450 { lab=IBIAS}
N 360 -340 360 -320 { lab=#net1}
N 560 -340 560 -320 { lab=#net1}
N 400 -340 520 -340 { lab=#net1}
N 360 -260 360 -190 { lab=#net2}
N 560 -260 560 -190 { lab=OUT}
N 360 -340 400 -340 { lab=#net1}
N 520 -340 560 -340 { lab=#net1}
N 360 -130 360 -100 { lab=GND}
N 360 -100 560 -100 { lab=GND}
N 560 -130 560 -100 { lab=GND}
N 80 -300 80 -180 { lab=IBIAS}
N 80 -310 80 -300 { lab=IBIAS}
N 400 -160 520 -160 { lab=#net2}
N 280 -290 320 -290 { lab=PLUS}
N 360 -290 560 -290 { lab=VDD}
N 430 -300 430 -290 { lab=VDD}
N 330 -160 360 -160 { lab=GND}
N 330 -160 330 -100 { lab=GND}
N 560 -160 600 -160 { lab=GND}
N 600 -160 600 -100 { lab=GND}
N 560 -100 600 -100 { lab=GND}
N 360 -230 460 -230 { lab=#net2}
N 460 -230 460 -160 { lab=#net2}
N 560 -230 620 -230 { lab=OUT}
N 760 -480 760 -450 { lab=PLUS}
N 690 -480 690 -450 { lab=MINUS}
N 820 -480 820 -450 { lab=IBIAS}
N 600 -290 630 -290 { lab=MINUS}
N 330 -100 360 -100 { lab=GND}
N 80 -370 80 -310 { lab=IBIAS}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 440 -450 0 0 {name=M1
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 100 -450 0 1 {name=M2
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/isource.sym} 820 -420 0 0 {name=I0 value=1u}
C {devices/gnd.sym} 460 -90 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 180 -530 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 900 -450 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 900 -420 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 900 -390 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 0 -650 0 0 {name=SPICE MODELS only_toplevel=false value=".lib ~/OpenPDK/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt
.dc I0 1u 10u 1u
.save I(V2)"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 340 -290 0 0 {name=M3
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 580 -290 0 1 {name=M4
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 540 -160 0 0 {name=M5
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 380 -160 0 1 {name=M6
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/vdd.sym} 430 -300 0 0 {name=l2 lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l6 author="LCI Team"}
C {devices/vsource.sym} 760 -420 0 0 {name=V2 value="DC 0.9 AC 1"}
C {devices/gnd.sym} 760 -390 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 690 -420 0 0 {name=V4 value="DC 0.9 AC 1"}
C {devices/gnd.sym} 690 -390 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 760 -480 2 0 {name=l9 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 690 -480 2 0 {name=l10 sig_type=std_logic lab=MINUS}
C {devices/gnd.sym} 820 -390 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 820 -480 2 0 {name=l12 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 280 -290 0 0 {name=l13 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 630 -290 2 0 {name=l14 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 80 -180 2 0 {name=l15 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 620 -230 2 0 {name=l16 sig_type=std_logic lab=OUT}
