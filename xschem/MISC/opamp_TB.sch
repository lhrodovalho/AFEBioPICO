v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -110 350 -110 { lab=Vout}
N 80 -80 120 -80 { lab=Vout}
N 80 -80 80 -60 { lab=Vout}
N 80 -60 80 -50 { lab=Vout}
N 450 -140 450 -120 { lab=GND}
N 30 -140 120 -140 { lab=Vin}
N 450 -240 450 -200 { lab=Vin}
N 80 -50 80 0 { lab=Vout}
N 80 0 330 0 { lab=Vout}
N 330 -110 330 0 { lab=Vout}
C {opamp.sym} 120 -40 0 0 {name=X1}
C {devices/vsource.sym} 450 -170 0 0 {name=V1 value=3}
C {devices/code_shown.sym} 0 -280 0 0 {name=SPICE only_toplevel=false value=".dc V1 0 1.8 0.01
.save all"}
C {devices/gnd.sym} 450 -120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 30 -140 0 0 {name=l3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 450 -240 1 0 {name=l4 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 350 -110 2 0 {name=l5 sig_type=std_logic lab=Vout}
