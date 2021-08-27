v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 520 -760 700 -760 {}
L 4 740 -760 770 -760 {}
L 4 770 -760 780 -760 {}
L 4 700 -760 740 -760 {}
L 4 780 -760 800 -760 {}
L 4 500 -740 520 -760 {}
L 4 800 -760 880 -760 {}
L 4 880 -760 930 -760 {}
L 4 930 -760 950 -740 {}
T {Sources} 680 -790 0 0 0.4 0.4 {}
N 530 -720 530 -690 { lab=IN}
N 600 -720 600 -690 { lab=IBIAS1}
N 820 -720 820 -690 { lab=VDD}
N 890 -720 890 -690 { lab=VSS}
N 680 -720 680 -690 { lab=IBIAS2}
N 750 -720 750 -690 { lab=IBIAS3}
C {devices/code.sym} 50 -720 0 0 {name=LIB_TT only_toplevel=false value="

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
C {devices/code.sym} 180 -720 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-14

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
ac dec 100 0.01 10000 
plot db(OUT)
***********************************************************************


******************************Noise Simulation*************************
*set sqrnoise
*noise v(out) V4 dec 100 50m 100
*setplot noise1
*plot log(inoise_spectrum)
*plot onoise_spectrum

*print inoise_total
*print onoise_total
***********************************************************************


.endc
"}
C {devices/isource.sym} 600 -660 0 0 {name=I0 value=210n}
C {devices/vsource.sym} 820 -660 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 820 -630 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 530 -660 0 0 {name=V4 value="AC 1"}
C {devices/gnd.sym} 600 -630 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 600 -720 2 0 {name=l12 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 530 -720 2 0 {name=l10 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 820 -720 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 890 -660 0 0 {name=V3 value=-0.9}
C {devices/gnd.sym} 890 -630 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 890 -720 2 0 {name=l9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 530 -630 0 0 {name=l15 lab=GND}
C {devices/isource.sym} 680 -660 0 0 {name=I1 value=200n}
C {devices/gnd.sym} 680 -630 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 680 -720 2 0 {name=l16 sig_type=std_logic lab=IBIAS2}
C {devices/isource.sym} 750 -660 0 0 {name=I2 value=1n}
C {devices/gnd.sym} 750 -630 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 750 -720 2 0 {name=l3 sig_type=std_logic lab=IBIAS3}
C {devices/title.sym} 160 -30 0 0 {name=l19 author="LCI TEAM"}
C {FILTER/FILTER.sym} 360 -360 0 0 {name=X1}
C {devices/lab_pin.sym} 390 -430 3 1 {name=p1 lab=IBIAS1}
C {devices/lab_pin.sym} 540 -290 1 1 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 440 -430 3 1 {name=p3 lab=IBIAS2}
C {devices/lab_pin.sym} 390 -290 1 1 {name=p4 lab=GND}
C {devices/lab_pin.sym} 490 -430 3 1 {name=p5 lab=IBIAS3}
C {devices/lab_pin.sym} 360 -360 2 1 {name=p6 lab=IN}
C {devices/lab_pin.sym} 570 -360 0 1 {name=p7 lab=OUT}
C {devices/lab_pin.sym} 540 -430 3 1 {name=p8 lab=VDD}
