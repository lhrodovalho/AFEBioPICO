v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 13570 -8240 13640 -8240 { lab=out}
N 13360 -8240 13410 -8240 { lab=in}
N 13180 -8110 13180 -8080 { lab=GND}
N 13180 -8200 13180 -8170 { lab=in}
C {ideal_lna.sym} 6690 -4160 0 0 {name=X1}
C {devices/lab_pin.sym} 13360 -8240 0 0 {name=l1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 13640 -8240 2 0 {name=l2 sig_type=std_logic lab=out}
C {devices/vsource.sym} 13180 -8140 0 0 {name=V1 value="1 AC 1"}
C {devices/gnd.sym} 13180 -8080 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 13180 -8200 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/code_shown.sym} 13650 -8320 0 0 {name=SPICE only_toplevel=false value=".ac dec 10 0.1 10k
.save all"}
