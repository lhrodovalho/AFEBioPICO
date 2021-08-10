v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 800 -225 800 -165 { lab=out}
N 740 -255 760 -255 { lab=in}
N 740 -255 740 -135 { lab=in}
N 740 -135 760 -135 { lab=in}
N 800 -105 800 -55 { lab=vss}
N 800 -335 800 -285 { lab=vdd}
N 800 -255 820 -255 { lab=vdd}
N 820 -295 820 -255 { lab=vdd}
N 800 -295 820 -295 { lab=vdd}
N 800 -135 820 -135 { lab=vss}
N 820 -135 820 -95 { lab=vss}
N 800 -95 820 -95 { lab=vss}
N 700 -195 740 -195 { lab=in}
N 800 -195 840 -195 { lab=out}
N 280 -105 280 -95 { lab=GND}
N 280 -95 600 -95 { lab=GND}
N 600 -105 600 -95 { lab=GND}
N 440 -105 440 -95 { lab=GND}
N 280 -215 280 -165 { lab=vdd}
N 440 -215 440 -165 { lab=vss}
N 600 -215 600 -165 { lab=in}
N 280 -95 280 -75 { lab=GND}
C {n2_1.sym} 780 -135 0 0 {}
C {p1_2.sym} 780 -255 0 0 {}
C {devices/lab_pin.sym} 700 -195 0 0 {name=l1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 840 -195 0 1 {name=l2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 800 -55 1 1 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 800 -335 3 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/code.sym} 5 -365 0 0 {name=LIB_TT only_toplevel=false value="

*.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
*.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
*.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
*.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"

.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
"}
C {devices/code.sym} 10 -210 0 0 {name=CONTROL only_toplevel=false value="

.param mc_mm_switch=0

.control
	op
	dc VIN 0 1.8 10m
	plot out
.endc
"}
C {devices/vsource.sym} 280 -135 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} 440 -135 0 0 {name=VSS value=0}
C {devices/vsource.sym} 600 -135 0 0 {name=VIN value=0}
C {devices/lab_pin.sym} 280 -215 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 440 -215 1 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 600 -215 1 0 {name=l8 sig_type=std_logic lab=in}
C {devices/gnd.sym} 280 -75 0 0 {name=l6 lab=GND}
