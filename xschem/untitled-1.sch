v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4860 -2850 4960 -2850 { lab=#net1}
N 5000 -2920 5000 -2880 { lab=VDD}
N 4820 -2920 5000 -2920 { lab=VDD}
N 4820 -2920 4820 -2880 { lab=VDD}
N 5000 -2820 5000 -2790 { lab=GND}
N 4820 -2820 4820 -2700 { lab=#net1}
N 4910 -2850 4910 -2780 { lab=#net1}
N 4820 -2780 4910 -2780 { lab=#net1}
N 4820 -2700 4820 -2680 { lab=#net1}
N 4820 -2620 4820 -2600 { lab=GND}
N 5000 -2790 5000 -2660 { lab=GND}
N 4820 -2600 4820 -2590 { lab=GND}
N 5000 -2660 5000 -2590 { lab=GND}
N 4920 -2930 4920 -2920 { lab=VDD}
N 4610 -2830 4610 -2820 { lab=VDD}
N 4610 -2730 4610 -2720 { lab=GND}
N 4610 -2740 4610 -2730 { lab=GND}
N 4610 -2820 4610 -2800 { lab=VDD}
N 5000 -2850 5020 -2850 { lab=VDD}
N 5020 -2920 5020 -2850 { lab=VDD}
N 5000 -2920 5020 -2920 { lab=VDD}
N 4800 -2850 4820 -2850 { lab=VDD}
N 4800 -2920 4800 -2850 { lab=VDD}
N 4800 -2920 4820 -2920 { lab=VDD}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 4980 -2850 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 4840 -2850 0 1 {name=M2
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
C {devices/isource.sym} 4820 -2650 0 0 {name=I0 value=10u}
C {devices/gnd.sym} 4820 -2590 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 5000 -2590 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 4920 -2930 0 0 {name=l3 lab=VDD}
C {devices/vdd.sym} 4610 -2830 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 4610 -2770 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 4610 -2720 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 5200 -2830 0 0 {name=SPICE only_toplevel=false value=".op
.save all"}
