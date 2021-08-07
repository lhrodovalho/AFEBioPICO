v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 6450 -4180 6480 -4180 { lab=#net1}
N 6480 -4180 6480 -4080 { lab=#net1}
N 6240 -4080 6480 -4080 { lab=#net1}
N 6240 -4150 6240 -4080 { lab=#net1}
N 6240 -4150 6270 -4150 { lab=#net1}
N 6980 -4150 7010 -4150 { lab=#net2}
N 7010 -4150 7010 -4050 { lab=#net2}
N 6770 -4050 7010 -4050 { lab=#net2}
N 6770 -4120 6770 -4050 { lab=#net2}
N 6770 -4120 6800 -4120 { lab=#net2}
N 6150 -4210 6270 -4210 { lab=vin}
N 6610 -4180 6800 -4180 { lab=#net3}
N 6670 -4180 6670 -4150 { lab=#net3}
N 6670 -4090 6670 -4040 { lab=GND}
N 6480 -4180 6550 -4180 { lab=#net1}
N 7010 -4150 7060 -4150 { lab=#net2}
N 7120 -4150 7190 -4150 { lab=#net4}
N 7190 -4150 7190 -4130 { lab=#net4}
N 7190 -4070 7190 -4040 { lab=GND}
N 7500 -4120 7530 -4120 { lab=vout}
N 7290 -4090 7320 -4090 { lab=#net5}
N 7190 -4150 7320 -4150 { lab=#net4}
N 7530 -4120 7580 -4120 { lab=vout}
N 7540 -4120 7540 -4020 { lab=vout}
N 7470 -4020 7540 -4020 { lab=vout}
N 7280 -4090 7280 -4000 { lab=#net5}
N 7280 -4090 7290 -4090 { lab=#net5}
N 7430 -4020 7470 -4020 { lab=vout}
N 7280 -4020 7370 -4020 { lab=#net5}
N 7280 -3940 7280 -3920 { lab=GND}
C {opamp.sym} 3670 -3130 0 0 {name=X1}
C {opamp.sym} 4200 -3100 0 0 {name=X2}
C {devices/res.sym} 6580 -4180 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 6670 -4120 0 0 {name=C1
m=1
value=796n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 6670 -4040 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 7090 -4150 3 0 {name=C2
m=1
value=3.18u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 7190 -4100 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 7190 -4040 0 0 {name=l2 lab=GND}
C {opamp.sym} 4720 -3070 0 0 {name=X3}
C {devices/res.sym} 7280 -3970 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 7400 -4020 1 0 {name=R4
value=99k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 7280 -3920 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 6160 -4210 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 7570 -4120 0 0 {name=p2 lab=vout}
