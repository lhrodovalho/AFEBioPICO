v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 6170 -3120 6220 -3120 { lab=Vout}
N 5950 -3090 5990 -3090 { lab=Vout}
N 5950 -3090 5950 -3070 { lab=Vout}
N 5950 -3070 5950 -3060 { lab=Vout}
N 5780 -3070 5780 -3050 { lab=GND}
N 5900 -3150 5990 -3150 { lab=Vin}
N 5780 -3170 5780 -3130 { lab=Vin}
N 5950 -3060 5950 -3010 { lab=Vout}
N 5950 -3010 6200 -3010 { lab=Vout}
N 6200 -3120 6200 -3010 { lab=Vout}
C {opamp.sym} 3390 -2070 0 0 {name=X1}
C {devices/vsource.sym} 5780 -3100 0 0 {name=V1 value=3}
C {devices/code_shown.sym} 6210 -3240 0 0 {name=SPICE only_toplevel=false value=".dc V1 0 1.8 0.01
.save all"}
C {devices/gnd.sym} 5780 -3050 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 5900 -3150 0 0 {name=l3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 5780 -3170 1 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 6220 -3120 2 0 {name=l5 sig_type=std_logic lab=Vout}