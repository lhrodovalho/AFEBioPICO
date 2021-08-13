v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -80 300 -80 { lab=out}
N 20 -80 70 -80 { lab=in}
N 610 -220 610 -190 { lab=GND}
N 610 -310 610 -280 { lab=in}
C {ideal_lna.sym} 70 0 0 0 {name=X1}
C {devices/lab_pin.sym} 20 -80 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 300 -80 2 0 {name=l2 sig_type=std_logic lab=out}
C {devices/vsource.sym} 610 -250 0 0 {name=V1 value="1 AC 1"}
C {devices/gnd.sym} 610 -190 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 610 -310 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/code_shown.sym} 0 -330 0 0 {name=SPICE only_toplevel=false value=".ac dec 10 0.1 10k
.save all"}
