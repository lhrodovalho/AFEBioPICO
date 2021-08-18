v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 830 -360 850 -380 {}
L 4 850 -380 970 -380 {}
L 4 970 -380 1070 -380 {}
L 4 1070 -380 1090 -360 {}
T {Sources} 920 -410 0 0 0.4 0.4 {}
N 30 -250 90 -250 { lab=IN}
N 170 -350 170 -310 { lab=EN}
N 170 -190 170 -130 { lab=nEN}
N 950 -340 950 -310 { lab=EN}
N 860 -340 860 -310 { lab=IN}
N 610 -260 610 -240 { lab=nEN}
N 520 -290 570 -290 { lab=EN}
N 520 -290 520 -210 { lab=EN}
N 520 -210 570 -210 { lab=EN}
N 470 -250 520 -250 { lab=EN}
N 610 -250 670 -250 { lab=nEN}
N 610 -380 610 -320 { lab=VDD}
N 610 -180 610 -130 { lab=GND}
N 1030 -340 1030 -310 { lab=VDD}
N 610 -290 630 -290 { lab=VDD}
N 630 -340 630 -290 { lab=VDD}
N 610 -340 630 -340 { lab=VDD}
N 610 -210 630 -210 { lab=GND}
N 630 -210 630 -170 { lab=GND}
N 610 -170 630 -170 { lab=GND}
N 250 -250 320 -250 { lab=OUT}
C {devices/code.sym} -10 -530 0 0 {name=LIB_TT only_toplevel=false value="

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
C {devices/code.sym} 120 -530 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-14

.control

op
dc V4 0 1.8 10m
*.tran 1u 10m 
plot OUT
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
C {devices/vsource.sym} 950 -280 0 0 {name=V2 value="DC 1.8"}
C {devices/gnd.sym} 950 -250 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 860 -280 0 0 {name=V4 value="DC 1.8"}
C {devices/gnd.sym} 860 -250 0 0 {*name=V4 value="DC 0.9 AC 1"}
C {devices/lab_pin.sym} 950 -340 2 0 {name=l9 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 860 -340 2 0 {name=l8 sig_type=std_logic lab=IN}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="LCI TEAM"}
C {devices/lab_pin.sym} 30 -250 0 0 {name=l2 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 170 -350 1 0 {name=l3 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 170 -130 3 0 {name=l10 sig_type=std_logic lab=nEN}
C {ARRAY/n1_1.sym} 590 -210 0 0 {name=x1}
C {ARRAY/p1_1.sym} 590 -290 0 0 {name=x2}
C {devices/gnd.sym} 610 -130 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 470 -250 0 0 {name=l5 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 670 -250 2 0 {name=l11 sig_type=std_logic lab=nEN}
C {devices/vsource.sym} 1030 -280 0 0 {name=V1 value="DC 1.8"}
C {devices/gnd.sym} 1030 -250 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 1030 -340 2 0 {name=l13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 610 -380 1 0 {name=l14 sig_type=std_logic lab=VDD}
C {MISC/TG/TG.sym} 110 -190 0 0 {name=X1}
C {devices/lab_pin.sym} 320 -250 2 0 {name=l6 sig_type=std_logic lab=OUT}
