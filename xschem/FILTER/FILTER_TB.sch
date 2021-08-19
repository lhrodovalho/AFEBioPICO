v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 850 -890 1030 -890 {}
L 4 1070 -890 1100 -890 {}
L 4 1100 -890 1110 -890 {}
L 4 1030 -890 1070 -890 {}
L 4 1110 -890 1130 -890 {}
L 4 830 -870 850 -890 {}
L 4 1260 -890 1280 -870 {}
L 4 1130 -890 1210 -890 {}
L 4 1210 -890 1260 -890 {}
T {Sources} 1030 -920 0 0 0.4 0.4 {}
N 860 -850 860 -820 { lab=IN}
N 930 -850 930 -820 { lab=IBIAS1}
N 1160 -850 1160 -820 { lab=VDD}
N 1230 -850 1230 -820 { lab=VSS}
N 1010 -850 1010 -820 { lab=IBIAS2}
N 440 -250 680 -250 { lab=OUT}
N 630 -380 630 -250 { lab=OUT}
N 630 -380 890 -380 { lab=OUT}
N 890 -380 890 -220 { lab=OUT}
N 860 -220 890 -220 { lab=OUT}
N 890 -510 890 -380 { lab=OUT}
N 650 -520 890 -520 { lab=OUT}
N 890 -520 890 -510 { lab=OUT}
N 640 -190 680 -190 { lab=GND}
N 640 -190 640 -170 { lab=GND}
N 210 -220 260 -220 { lab=IN}
N 650 -580 680 -580 { lab=GND}
N 680 -580 680 -570 { lab=GND}
N 200 -550 470 -550 { lab=#net1}
N 200 -550 200 -280 { lab=#net1}
N 200 -280 260 -280 { lab=#net1}
N 1080 -850 1080 -820 { lab=IBIAS3}
N 380 -550 380 -530 { lab=#net1}
N 500 -250 500 -240 { lab=OUT}
N 200 -220 210 -220 { lab=IN}
N 890 -220 1000 -220 { lab=OUT}
C {devices/code.sym} -20 -860 0 0 {name=LIB_TT only_toplevel=false value="

*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice"
*.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"
*.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__cap_mim_m3_1.model.spice"
 


.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130_fd_pr__model__r+c.model.spice"
.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/r+c/res_typical__cap_typical.spice"
.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/r+c/res_typical__cap_typical__lin.spice"
"
}
C {devices/code.sym} 110 -860 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-15

.control


******************************OP Simulation****************************
op
print OUT
*print MINUS1
*print MINUS2
***********************************************************************


******************************DC Simulation****************************
*dc V2 0.85 0.95 10u
*plot OUT
*plot deriv(OUT)
***********************************************************************


******************************AC Simulation****************************
ac dec 100 0.01 1MEG 
plot db(OUT)
***********************************************************************


******************************Noise Simulation*************************
*set sqrnoise
noise v(out) V4 dec 100 50m 100
*setplot noise1
*plot log(inoise_spectrum)
*plot onoise_spectrum

print inoise_total
*print onoise_total
***********************************************************************


.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l19 author="LCI TEAM"}
C {LNA/LNA_OPAMP_0.sym} 260 -180 0 0 {name=X1}
C {devices/isource.sym} 930 -790 0 0 {name=I0 value=1n}
C {devices/vsource.sym} 1160 -790 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 1160 -760 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 860 -790 0 0 {name=V4 value="AC 1"}
C {devices/gnd.sym} 930 -760 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 930 -850 2 0 {name=l12 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 860 -850 2 0 {name=l10 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1160 -850 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1230 -790 0 0 {name=V3 value=-0.9}
C {devices/gnd.sym} 1230 -760 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1230 -850 2 0 {name=l9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 860 -760 0 0 {name=l15 lab=GND}
C {devices/isource.sym} 1010 -790 0 0 {name=I1 value=10n}
C {devices/gnd.sym} 1010 -760 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1010 -850 2 0 {name=l16 sig_type=std_logic lab=IBIAS2}
C {LNA/LNA_OPAMP_0.sym} 680 -150 0 0 {name=X2}
C {LNA/LNA_OPAMP_0.sym} 650 -480 0 1 {name=X3}
C {devices/isource.sym} 1080 -790 0 0 {name=I2 value=1n}
C {devices/gnd.sym} 1080 -760 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1080 -850 2 0 {name=l3 sig_type=std_logic lab=IBIAS3}
C {devices/capa.sym} 500 -210 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 380 -500 0 0 {name=C2
m=1
value=1000p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 500 -180 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 640 -170 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 680 -570 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 380 -470 0 0 {name=l17 lab=GND}
C {devices/lab_pin.sym} 360 -180 2 0 {name=l18 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -150 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -480 2 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -620 2 0 {name=l22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -290 2 0 {name=l23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -320 2 0 {name=l24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 300 -350 2 0 {name=l25 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 720 -320 2 0 {name=l26 sig_type=std_logic lab=IBIAS2}
C {devices/lab_pin.sym} 610 -650 2 0 {name=l27 sig_type=std_logic lab=IBIAS3}
C {devices/lab_pin.sym} 200 -220 0 0 {name=l6 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1000 -220 2 0 {name=l28 sig_type=std_logic lab=OUT}
