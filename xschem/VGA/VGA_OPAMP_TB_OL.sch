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
L 4 960 -520 1060 -520 {}
L 4 1060 -520 1080 -500 {}
T {Sources} 840 -550 0 0 0.4 0.4 {}
N 780 -480 780 -450 { lab=PLUS}
N 690 -480 690 -450 { lab=MINUS}
N 860 -480 860 -450 { lab=IBIAS}
N 240 -300 310 -300 { lab=PLUS}
N 210 -360 220 -360 { lab=MINUS}
N 410 -450 410 -400 { lab=VDD}
N 490 -330 540 -330 { lab=OUT}
N 410 -260 410 -220 { lab=VSS}
N 350 -470 350 -430 { lab=IBIAS}
N 540 -330 540 -300 { lab=OUT}
N 540 -240 540 -220 { lab=GND}
N 950 -480 950 -450 { lab=VDD}
N 1020 -480 1020 -450 { lab=VSS}
N 270 -360 310 -360 { lab=#net1}
N 220 -360 270 -360 { lab=#net1}
C {devices/isource.sym} 860 -420 0 0 {name=I0 value=50n}
C {devices/title.sym} 160 -30 0 0 {name=l6 author="LCI Team"}
C {devices/vsource.sym} 780 -420 0 0 {name=V2 value="DC 0 AC 1"}
C {devices/gnd.sym} 780 -390 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 690 -420 0 0 {name=V4 value="DC 0"}
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

.option gmin=1E-14

.control

op
print OUT
*dc V2 0.85 0.95 10u
*plot OUT
*plot deriv(OUT)

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
C {devices/lab_pin.sym} 210 -360 0 0 {name=l2 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 350 -470 1 0 {name=l3 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 540 -330 2 0 {name=l13 sig_type=std_logic lab=OUT}
C {devices/capa.sym} 540 -270 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 540 -220 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 950 -420 0 0 {name=V3 value=0.9}
C {devices/gnd.sym} 950 -390 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 950 -480 2 0 {name=l20 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1020 -420 0 0 {name=V6 value=-0.9}
C {devices/gnd.sym} 1020 -390 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 1020 -480 2 0 {name=l22 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -450 1 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -220 3 0 {name=l5 sig_type=std_logic lab=VSS}
C {LNA/LNA_OPAMP_0.sym} 310 -260 0 0 {name=X1}
