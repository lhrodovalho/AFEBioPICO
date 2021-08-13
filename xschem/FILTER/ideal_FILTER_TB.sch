v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -110 320 -80 { lab=GND}
N 320 -200 320 -170 { lab=in}
C {FILTER/ideal_FILTER.sym} 0 0 0 0 {name=X1}
C {devices/code_shown.sym} 0 -230 0 0 {name=SPICE only_toplevel=false value=".ac dec 10 0.1 1k
.save all"}
C {devices/vsource.sym} 320 -140 0 0 {name=V1 value="1 AC 1"}
C {devices/gnd.sym} 320 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 320 -200 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 0 -50 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 180 -50 2 0 {name=l2 sig_type=std_logic lab=out
}
