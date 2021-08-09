v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4740 -2470 4740 -2440 { lab=GND}
N 4740 -2560 4740 -2530 { lab=in}
C {FILTER/ideal_FILTER.sym} 2510 -1410 0 0 {name=X1}
C {devices/code_shown.sym} 5480 -2650 0 0 {name=SPICE only_toplevel=false value=".ac dec 10 0.1 1k
.save all"}
C {devices/vsource.sym} 4740 -2500 0 0 {name=V1 value="1 AC 1"}
C {devices/gnd.sym} 4740 -2440 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 4740 -2560 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 5070 -2600 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 5250 -2600 2 0 {name=l2 sig_type=std_logic lab=out
}
