v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 470 -450 470 -310 { lab=#net1}
N 180 -280 250 -280 { lab=#net2}
N 180 -450 180 -280 { lab=#net2}
N 180 -450 300 -450 { lab=#net2}
N 120 -280 180 -280 { lab=#net2}
N 470 -250 540 -250 { lab=#net1}
N 600 -250 710 -250 { lab=#net3}
N 1030 -450 1030 -280 { lab=OUT}
N 770 -250 800 -250 { lab=#net3}
N 770 -450 770 -250 { lab=#net3}
N 770 -450 850 -450 { lab=#net3}
N 190 -220 250 -220 { lab=VCM}
N 730 -190 800 -190 { lab=VCM}
N 20 -280 60 -280 { lab=IN}
N 710 -250 770 -250 { lab=#net3}
N 180 -620 300 -620 { lab=#net2}
N 360 -620 470 -620 { lab=#net1}
N 470 -620 470 -450 { lab=#net1}
N 910 -620 1030 -620 { lab=OUT}
N 770 -620 850 -620 { lab=#net3}
N 330 -710 330 -660 { lab=CTRL_1}
N 470 -310 470 -250 { lab=#net1}
N 430 -250 470 -250 { lab=#net1}
N 1030 -280 1030 -220 { lab=OUT}
N 980 -220 1030 -220 { lab=OUT}
N 1030 -220 1090 -220 { lab=OUT}
N 910 -450 930 -450 { lab=#net4}
N 990 -450 1030 -450 { lab=OUT}
N 960 -540 960 -490 { lab=CTRL_2}
N 410 -540 410 -490 { lab=CTRL_1}
N 360 -450 380 -450 { lab=#net5}
N 440 -450 470 -450 { lab=#net1}
N 880 -710 880 -660 { lab=CTRL_2}
N 410 -450 410 -410 { lab=VSS}
N 960 -450 960 -410 { lab=VSS}
N 330 -620 330 -580 { lab=VDD}
N 880 -630 880 -590 { lab=VDD}
N 40 -620 180 -620 {}
N 40 -620 40 -280 {}
N 470 -620 770 -620 {}
N 1030 -620 1030 -450 {}
C {VGA/VGA_OPAMP.sym} 250 -180 0 0 {name=X1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 330 -450 3 0 {name=C1 model=cap_mim_m3_2 W=71 L=71 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 90 -280 1 0 {name=C2 model=cap_mim_m3_2 W=22.5 L=22.5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 880 -450 3 0 {name=C3 model=cap_mim_m3_2 W=71 L=71 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 570 -250 1 0 {name=C4 model=cap_mim_m3_2 W=22.5 L=22.5 MF=1 spiceprefix=X}
C {devices/iopin.sym} 1220 -400 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 1220 -380 0 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 1220 -360 0 0 {name=p3 lab=IN}
C {devices/iopin.sym} 1220 -340 0 0 {name=p4 lab=OUT}
C {devices/iopin.sym} 1220 -320 0 0 {name=p5 lab=IBIAS}
C {devices/iopin.sym} 1220 -300 0 0 {name=p6 lab=CTRL_1}
C {devices/iopin.sym} 1220 -280 0 0 {name=p7 lab=CTRL_2}
C {devices/iopin.sym} 1220 -260 0 0 {name=p8 lab=VCM}
C {devices/lab_pin.sym} 350 -320 1 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 -290 1 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 900 -150 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 350 -180 3 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 -320 1 0 {name=l5 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 290 -350 1 0 {name=l6 sig_type=std_logic lab=IBIAS
}
C {devices/lab_pin.sym} 1090 -220 2 0 {name=l7 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 20 -280 0 0 {name=l8 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 190 -220 0 0 {name=l9 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 730 -190 0 0 {name=l10 sig_type=std_logic lab=VCM}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 330 -640 1 0 {name=M1
L=0.15
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 880 -640 1 0 {name=M2
L=0.15
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
C {devices/lab_pin.sym} 330 -710 1 0 {name=l11 sig_type=std_logic lab=CTRL_1}
C {devices/lab_pin.sym} 880 -710 1 0 {name=l12 sig_type=std_logic lab=CTRL_2}
C {VGA/VGA_OPAMP.sym} 800 -150 0 0 {name=X2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 960 -470 1 0 {name=M3
L=0.15
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
C {devices/lab_pin.sym} 960 -540 1 0 {name=l13 sig_type=std_logic lab=CTRL_2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 410 -470 1 0 {name=M4
L=0.15
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
C {devices/lab_pin.sym} 410 -540 1 0 {name=l14 sig_type=std_logic lab=CTRL_1}
C {devices/lab_pin.sym} 410 -410 3 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 960 -410 3 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -580 3 0 {name=l17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 880 -590 3 0 {name=l18 sig_type=std_logic lab=VDD}
C {devices/title.sym} 160 -30 0 0 {name=l19 author="LCI TEAM"}
