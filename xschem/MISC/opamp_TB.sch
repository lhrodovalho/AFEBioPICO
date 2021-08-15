v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -110 350 -110 { lab=Vout}
N 450 -140 450 -120 { lab=GND}
N 30 -80 120 -80 { lab=Vin}
N 450 -240 450 -200 { lab=Vin}
N 80 -140 120 -140 {}
N 80 -220 80 -140 {}
N 80 -220 330 -220 {}
N 330 -220 330 -110 {}
C {opamp.sym} 120 -40 0 0 {name=X1}
C {devices/vsource.sym} 450 -170 0 0 {name=V1 value=3}
C {devices/code_shown.sym} 0 -280 0 0 {name=SPICE only_toplevel=false value=".dc V1 0 1.8 0.01
.save all"}
C {devices/gnd.sym} 450 -120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 30 -80 0 0 {name=l3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 450 -240 1 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 350 -110 2 0 {name=l5 sig_type=std_logic lab=Vout}
