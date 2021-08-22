v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 1130 -760 1310 -760 {}
L 4 1350 -760 1380 -760 {}
L 4 1380 -760 1390 -760 {}
L 4 1310 -760 1350 -760 {}
L 4 1390 -760 1410 -760 {}
L 4 1110 -740 1130 -760 {}
L 4 1490 -760 1510 -740 {}
L 4 1410 -760 1490 -760 {}
T {Sources} 1280 -790 0 0 0.4 0.4 {}
N 590 -420 660 -420 { lab=OUT_10}
N 310 -390 370 -390 { lab=GND}
N 550 -420 590 -420 { lab=OUT_10}
N 1140 -720 1140 -690 { lab=IN}
N 1210 -720 1210 -690 { lab=IBIAS1}
N 470 -350 470 -290 { lab=VSS}
N 1370 -720 1370 -690 { lab=VDD}
N 1440 -720 1440 -690 { lab=VSS}
N 330 -450 370 -450 { lab=MINUS1}
N 330 -590 330 -450 { lab=MINUS1}
N 590 -590 590 -420 { lab=OUT_10}
N 500 -590 590 -590 { lab=OUT_10}
N 330 -590 440 -590 { lab=MINUS1}
N 280 -590 330 -590 { lab=MINUS1}
N 120 -590 220 -590 { lab=IN}
N 1030 -250 1100 -250 { lab=OUT}
N 750 -220 810 -220 { lab=GND}
N 990 -250 1030 -250 { lab=OUT}
N 910 -180 910 -120 { lab=VSS}
N 770 -280 810 -280 { lab=#net1}
N 770 -420 770 -280 { lab=#net1}
N 1030 -420 1030 -250 { lab=OUT}
N 940 -420 1030 -420 { lab=OUT}
N 770 -420 880 -420 { lab=#net1}
N 720 -420 770 -420 { lab=#net1}
N 1070 -190 1070 -170 { lab=VSS}
N 1290 -720 1290 -690 { lab=IBIAS2}
N 770 -540 770 -420 { lab=#net1}
N 770 -540 870 -540 { lab=#net1}
N 930 -540 1020 -540 { lab=OUT}
N 1020 -540 1030 -540 { lab=OUT}
N 1030 -540 1030 -420 { lab=OUT}
N 330 -730 430 -730 { lab=MINUS1}
N 490 -730 580 -730 { lab=OUT_10}
N 580 -730 590 -730 { lab=OUT_10}
N 590 -730 590 -590 { lab=OUT_10}
N 330 -730 330 -590 { lab=MINUS1}
C {devices/lab_pin.sym} 470 -490 1 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -520 1 0 {name=l6 sig_type=std_logic lab=IBIAS1
}
C {devices/lab_pin.sym} 120 -590 0 0 {name=l8 sig_type=std_logic lab=IN}
C {devices/title.sym} 160 -30 0 0 {name=l19 author="LCI TEAM"}
C {devices/isource.sym} 1210 -660 0 0 {name=I0 value=10n}
C {devices/vsource.sym} 1370 -660 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 1370 -630 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1140 -660 0 0 {name=V4 value="AC 1"}
C {devices/gnd.sym} 1210 -630 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 1210 -720 2 0 {name=l12 sig_type=std_logic lab=IBIAS1}
C {devices/lab_pin.sym} 1140 -720 2 0 {name=l10 sig_type=std_logic lab=IN}
C {devices/code.sym} -10 -800 0 0 {name=LIB_TT only_toplevel=false value="

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
C {devices/code.sym} 120 -800 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-15

.control


******************************OP Simulation****************************
op
print OUT
print MINUS1
*print MINUS2
***********************************************************************


******************************DC Simulation****************************
*dc V2 0.85 0.95 10u
*plot OUT
*plot deriv(OUT)
***********************************************************************


******************************AC Simulation****************************
ac dec 100 0.01 1MEG 
plot db(OUT_10)
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
C {devices/lab_pin.sym} 1370 -720 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1440 -660 0 0 {name=V3 value=-0.9}
C {devices/gnd.sym} 1440 -630 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1440 -720 2 0 {name=l9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -290 3 0 {name=l14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -590 1 0 {name=l18 sig_type=std_logic lab=MINUS1}
C {LNA/LNA_OPAMP_0.sym} 370 -350 0 0 {name=X1}
C {devices/gnd.sym} 310 -390 1 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1140 -630 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 470 -590 1 0 {name=C4 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 250 -590 1 0 {name=C2 model=cap_mim_m3_1 W=71 L=71 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 910 -320 1 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 850 -350 1 0 {name=l7 sig_type=std_logic lab=IBIAS2
}
C {devices/lab_pin.sym} 1100 -250 2 0 {name=l17 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 910 -120 3 0 {name=l21 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 640 -420 1 0 {name=l22 sig_type=std_logic lab=OUT_10}
C {LNA/LNA_OPAMP_0.sym} 810 -180 0 0 {name=X2}
C {devices/gnd.sym} 750 -220 1 0 {name=l23 lab=GND}
C {devices/capa.sym} 1070 -220 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/cap_mim_m3_1.sym} 910 -420 1 0 {name=C5 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 690 -420 1 0 {name=C6 model=cap_mim_m3_1 W=71 L=71 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1070 -170 3 0 {name=l24 sig_type=std_logic lab=VSS}
C {devices/isource.sym} 1290 -660 0 0 {name=I1 value=10n}
C {devices/gnd.sym} 1290 -630 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1290 -720 2 0 {name=l16 sig_type=std_logic lab=IBIAS2}
C {devices/res.sym} 900 -540 1 0 {name=R1
value=10E12
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 460 -730 1 0 {name=R2
value=10E12
footprint=1206
device=resistor
m=1}
