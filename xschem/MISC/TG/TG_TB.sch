v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 450 -360 470 -380 {}
L 4 470 -380 650 -380 {}
L 4 690 -380 720 -380 {}
L 4 720 -380 730 -380 {}
L 4 650 -380 690 -380 {}
L 4 730 -380 750 -380 {}
L 4 750 -380 770 -360 {}
T {Sources} 570 -410 0 0 0.4 0.4 {}
N 0 -250 60 -250 { lab=IN}
N 220 -250 280 -250 { lab=OUT}
N 140 -350 140 -310 { lab=EN}
N 140 -190 140 -130 { lab=nEN}
N 570 -340 570 -310 { lab=PLUS}
N 480 -340 480 -310 { lab=MINUS}
N 650 -340 650 -310 { lab=IBIAS}
C {MISC/TG/TG.sym} 80 -190 0 0 {}
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
*dc V2 0.85 0.95 10u
*plot OUT
*plot deriv(OUT)

ac dec 100 1 10MEG 
plot db(OUT)

*set sqrnoise
noise v(out) V2 dec 100 50m 100
*setplot noise1
*plot log(inoise_spectrum)
*plot onoise_spectrum

print inoise_total
*print onoise_total

.endc
"}
C {devices/isource.sym} 650 -280 0 0 {name=I0 value=10n}
C {devices/vdd.sym} 740 -310 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 740 -280 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 740 -250 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 570 -280 0 0 {name=V2 value="DC 0.9 AC 1"}
C {devices/gnd.sym} 570 -250 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 480 -280 0 0 {name=V4 value="DC 0.9"}
C {devices/gnd.sym} 480 -250 0 0 {*name=V4 value="DC 0.9 AC 1"}
C {devices/lab_pin.sym} 570 -340 2 0 {name=l9 sig_type=std_logic lab=PLUS}
C {devices/gnd.sym} 650 -250 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 650 -340 2 0 {name=l12 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 480 -340 2 0 {name=l8 sig_type=std_logic lab=MINUS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="LCI TEAM"}
C {devices/lab_pin.sym} 0 -250 0 0 {name=l2 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 140 -350 1 0 {name=l3 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 280 -250 2 0 {name=l6 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 140 -130 3 0 {name=l10 sig_type=std_logic lab=nEN}
