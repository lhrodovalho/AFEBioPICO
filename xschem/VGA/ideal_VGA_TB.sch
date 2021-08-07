v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1360 -4790 1360 -4770 { lab=GND}
N 1360 -4670 1360 -4650 { lab=GND}
N 1360 -4550 1360 -4530 { lab=GND}
N 1360 -4430 1360 -4410 { lab=GND}
N 1360 -4300 1360 -4280 { lab=GND}
C {ideal_VGA.sym} 1020 -2290 0 0 {name=X1}
C {devices/lab_pin.sym} 1770 -4520 0 0 {name=l1 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 1840 -4610 1 0 {name=l2 sig_type=std_logic lab=1x}
C {devices/lab_pin.sym} 1860 -4610 1 0 {name=l3 sig_type=std_logic lab=10x}
C {devices/lab_pin.sym} 1880 -4610 1 0 {name=l4 sig_type=std_logic lab=100x}
C {devices/lab_pin.sym} 1900 -4610 1 0 {name=l5 sig_type=std_logic lab=1000x}
C {devices/lab_pin.sym} 1980 -4520 2 0 {name=l6 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1360 -4820 0 0 {name=V1 value=10m}
C {devices/vsource.sym} 1360 -4700 0 0 {name=V2 value="DC 0 pulse(-10 10 0us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 1360 -4580 0 0 {name=V3 value="DC 0 pulse(-10 10 1us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 1360 -4460 0 0 {name=V4 value="DC 0 pulse(-10 10 2us 0s 0s 1us 4us)"}
C {devices/vsource.sym} 1360 -4330 0 0 {name=V5 value="DC 0 pulse(-10 10 3us 0s 0s 1us 4us)"}
C {devices/gnd.sym} 1360 -4770 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 1360 -4650 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1360 -4530 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 1360 -4410 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 1360 -4280 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1360 -4850 0 0 {name=l12 sig_type=std_logic lab=vin
}
C {devices/lab_pin.sym} 1360 -4730 0 0 {name=l13 sig_type=std_logic lab=1x}
C {devices/lab_pin.sym} 1360 -4610 0 0 {name=l14 sig_type=std_logic lab=10x}
C {devices/lab_pin.sym} 1360 -4490 0 0 {name=l15 sig_type=std_logic lab=100x}
C {devices/lab_pin.sym} 1360 -4360 0 0 {name=l16 sig_type=std_logic lab=1000x}
C {devices/code_shown.sym} 2080 -4710 0 0 {name=SPICE only_toplevel=false value=".tran 1n 10u
.model switch1 sw vt=10mV ron=1 roff=1e8
.save all"}
