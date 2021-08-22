v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 -0 -40 0 { lab=G}
N -0 30 -0 80 { lab=S}
N 0 -0 40 -0 { lab=B}
N -0 -80 -0 -30 { lab=D}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 0 0 0 {name=M1
L=0.4
W=8
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
C {devices/lab_pin.sym} -80 0 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 40 0 0 1 {name=l2 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 0 -80 3 1 {name=l3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 0 80 1 1 {name=l4 sig_type=std_logic lab=S}
C {devices/iopin.sym} 100 -60 0 0 {name=p1 lab=D}
C {devices/iopin.sym} 100 -20 0 0 {name=p2 lab=G}
C {devices/iopin.sym} 100 20 0 0 {name=p3 lab=S}
C {devices/iopin.sym} 100 60 0 0 {name=p4 lab=B}
