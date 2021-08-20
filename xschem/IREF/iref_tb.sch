v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 -110 220 -100 { lab=GND}
N 220 -100 220 -80 { lab=GND}
N 380 -110 380 -100 { lab=GND}
N 220 -100 380 -100 { lab=GND}
N 220 -220 220 -170 { lab=vdd}
N 380 -220 380 -170 { lab=vss}
N 420 -460 460 -460 { lab=io}
N 300 -620 300 -580 { lab=vdd}
N 300 -340 300 -300 { lab=vss}
N 540 -110 540 -100 { lab=GND}
N 540 -220 540 -170 { lab=io}
N 380 -100 540 -100 { lab=GND}
C {devices/code.sym} 30 -190 0 0 {name=LIB_TT only_toplevel=false value="

*.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_g5v0d10v5__ss.corner.spice"
*.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
*.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
*.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"

.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
"}
C {devices/code.sym} 30 -370 0 0 {name=CONTROL only_toplevel=false value="

.param mc_mm_switch=0

.options gmin=1e-12
.options reltol=1e-5
.options abstol=1e-15
*.options rshunt = 1.0e15

.control
  op
  print i(VO)

  dc VDD 0.3 1.8 1m

  let io = i(VO)
  wrdata ../../SIM_DATA/iref_io.txt io
  plot io

  let psrr = deriv(io)/io
  wrdata ../../SIM_DATA/iref_psrr.txt io
  plot ylog abs(psrr)

.endc
"}
C {devices/vsource.sym} 220 -140 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 220 -80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 380 -140 0 0 {name=VSS value=0.0}
C {iref.sym} 300 -460 0 0 {name=x1}
C {devices/lab_pin.sym} 300 -300 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 300 -620 1 0 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 220 -220 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 380 -220 1 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 460 -460 2 0 {name=l6 sig_type=std_logic lab=io}
C {devices/vsource.sym} 540 -140 0 0 {name=VO value=0.0}
C {devices/lab_pin.sym} 540 -220 1 0 {name=l7 sig_type=std_logic lab=io}
