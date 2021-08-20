v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 660 -500 680 -520 {}
L 4 680 -520 860 -520 {}
L 4 900 -520 930 -520 {}
L 4 930 -520 940 -520 {}
L 4 860 -520 900 -520 {}
L 4 940 -520 960 -520 {}
L 4 960 -520 980 -500 {}
T {Sources} 780 -550 0 0 0.4 0.4 {}
N 780 -480 780 -450 { lab=PLUS}
N 690 -480 690 -450 { lab=MINUS}
N 860 -480 860 -450 { lab=IBIAS}
N 240 -300 310 -300 { lab=PLUS}
N 250 -360 310 -360 { lab=MINUS}
N 240 -360 250 -360 { lab=MINUS}
N 410 -450 410 -400 { lab=VDD}
N 490 -330 540 -330 { lab=OUT}
N 410 -260 410 -220 { lab=GND}
N 350 -470 350 -430 { lab=IBIAS}
N 540 -330 540 -300 { lab=OUT}
N 540 -240 540 -220 { lab=GND}
C {devices/isource.sym} 860 -420 0 0 {name=I0 value=100n}
C {devices/vdd.sym} 950 -450 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 950 -420 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 950 -390 0 0 {name=l5 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l6 author="LCI Team"}
C {devices/vsource.sym} 780 -420 0 0 {name=V2 value="DC 0.9 AC 1"}
C {devices/gnd.sym} 780 -390 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 690 -420 0 0 {name=V4 value="DC 0.9"}
C {devices/gnd.sym} 690 -390 0 0 {*name=V4 value="DC 0.9 AC 1"}
C {devices/lab_pin.sym} 780 -480 2 0 {name=l9 sig_type=std_logic lab=PLUS}
C {devices/gnd.sym} 860 -390 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 860 -480 2 0 {name=l12 sig_type=std_logic lab=IBIAS}
C {devices/code.sym} 0 -700 0 0 {name=LIB_TT only_toplevel=false value="

*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"

.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
"
}
C {devices/code.sym} 130 -700 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-13

.control

op
dc V2 0 1.8 10m
plot i(Vo)
plot deriv(i(Vo))

*ac dec 100 1 10MEG 
*plot db(OUT)

*set sqrnoise
*noise v(out) V2 dec 100 50m 100
*setplot noise1
*plot log(inoise_spectrum)
*plot onoise_spectrum

*print inoise_total
*print onoise_total

.endc
"}
C {devices/lab_pin.sym} 690 -480 2 0 {name=l8 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 240 -300 0 0 {name=l1 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 240 -360 0 0 {name=l2 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 350 -470 1 0 {name=l3 sig_type=std_logic lab=IBIAS}
C {devices/gnd.sym} 410 -220 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 540 -330 2 0 {name=l13 sig_type=std_logic lab=OUT}
C {devices/vdd.sym} 410 -450 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 540 -220 0 0 {name=l15 lab=GND}
C {LNA/LNA_OPAMP_2.sym} 310 -260 0 0 {name=X1}
C {devices/vsource.sym} 540 -270 0 0 {name=Vo value="DC 0"}
