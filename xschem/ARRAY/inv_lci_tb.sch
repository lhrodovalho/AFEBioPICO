v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 790 -205 790 -145 { lab=out}
N 730 -235 750 -235 { lab=in}
N 730 -235 730 -115 { lab=in}
N 730 -115 750 -115 { lab=in}
N 790 -85 790 -35 { lab=vss}
N 790 -315 790 -265 { lab=vdd}
N 790 -235 810 -235 { lab=vdd}
N 810 -275 810 -235 { lab=vdd}
N 790 -275 810 -275 { lab=vdd}
N 790 -115 810 -115 { lab=vss}
N 810 -115 810 -75 { lab=vss}
N 790 -75 810 -75 { lab=vss}
N 690 -175 730 -175 { lab=in}
N 790 -175 830 -175 { lab=out}
N 270 -85 270 -75 { lab=GND}
N 270 -75 590 -75 { lab=GND}
N 590 -85 590 -75 { lab=GND}
N 430 -85 430 -75 { lab=GND}
N 270 -195 270 -145 { lab=vdd}
N 430 -195 430 -145 { lab=vss}
N 590 -195 590 -145 { lab=in}
N 270 -75 270 -55 { lab=GND}
C {n2_1.sym} 770 -115 0 0 {}
C {p1_2.sym} 770 -235 0 0 {}
C {devices/lab_pin.sym} 690 -175 0 0 {name=l1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 830 -175 0 1 {name=l2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 790 -35 1 1 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 790 -315 3 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/code.sym} -5 -345 0 0 {name=LIB_TT only_toplevel=false value="

*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"

.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
"}
C {devices/code.sym} 0 -190 0 0 {name=CONTROL only_toplevel=false value="

*.param mc_mm_switch=0

.control
	op
	dc VIN 0 1.8 10m
	plot out
.endc
"}
C {devices/vsource.sym} 270 -115 0 0 {name=VDD value=1.8}
C {devices/vsource.sym} 430 -115 0 0 {name=VSS value=0}
C {devices/vsource.sym} 590 -115 0 0 {name=VIN value=0}
C {devices/lab_pin.sym} 270 -195 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 430 -195 1 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 590 -195 1 0 {name=l8 sig_type=std_logic lab=in}
C {devices/gnd.sym} 270 -55 0 0 {name=l6 lab=GND}
