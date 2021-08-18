v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
L 4 770 -580 950 -580 {}
L 4 990 -580 1020 -580 {}
L 4 1020 -580 1030 -580 {}
L 4 950 -580 990 -580 {}
L 4 750 -560 770 -580 {}
L 4 1040 -580 1060 -560 {}
L 4 1030 -580 1040 -580 {}
T {Sources} 870 -610 0 0 0.4 0.4 {}
N 510 -450 600 -450 { lab=OUT}
N 340 -450 450 -450 { lab=MINUS1}
N 290 -450 340 -450 { lab=MINUS1}
N 20 -450 120 -450 { lab=VM}
N 340 -590 440 -590 { lab=MINUS1}
N 500 -590 590 -590 { lab=OUT}
N 590 -590 600 -590 { lab=OUT}
N 600 -590 600 -450 { lab=OUT}
N 340 -590 340 -450 { lab=MINUS1}
N 340 -320 370 -320 { lab=MINUS1}
N 340 -450 340 -320 { lab=MINUS1}
N 550 -290 590 -290 { lab=OUT}
N 590 -290 600 -290 { lab=OUT}
N 600 -450 600 -290 { lab=OUT}
N 470 -220 470 -180 { lab=VSS}
N 310 -260 370 -260 { lab=#net1}
N 210 -260 210 -240 { lab=#net1}
N 210 -180 210 -140 { lab=GND}
N 60 -260 120 -260 { lab=VP}
N 180 -450 290 -450 { lab=MINUS1}
N 230 -260 310 -260 { lab=#net1}
N 180 -260 230 -260 { lab=#net1}
N 10 -260 60 -260 { lab=VP}
N 330 -260 330 -240 { lab=#net1}
N 330 -180 330 -140 { lab=GND}
N 780 -540 780 -510 { lab=IN}
N 930 -540 930 -510 { lab=VDD}
N 1000 -540 1000 -510 { lab=VSS}
N 850 -540 850 -510 { lab=IBIAS}
N 0 -260 10 -260 { lab=VP}
N -0 -450 20 -450 { lab=VM}
N 600 -290 670 -290 { lab=OUT}
N 670 -290 670 -270 { lab=OUT}
N 670 -210 670 -180 { lab=GND}
N 950 -240 950 -210 { lab=GND}
N 910 -250 910 -230 { lab=GND}
N 910 -230 950 -230 { lab=GND}
N 860 -290 910 -290 { lab=IN}
N 950 -330 950 -300 { lab=VP}
N 1100 -240 1100 -210 { lab=GND}
N 1060 -250 1060 -230 { lab=GND}
N 1060 -230 1100 -230 { lab=GND}
N 1010 -290 1060 -290 { lab=IN}
N 1100 -330 1100 -300 { lab=VM}
N 1100 -350 1100 -330 { lab=VM}
N 950 -340 950 -330 { lab=VP}
C {devices/lab_pin.sym} 0 -450 0 0 {name=l8 sig_type=std_logic lab=VM}
C {devices/lab_pin.sym} 340 -450 1 0 {name=l18 sig_type=std_logic lab=MINUS1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 480 -450 1 0 {name=C4 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 150 -450 1 0 {name=C2 model=cap_mim_m3_1 W=71 L=71 MF=1 spiceprefix=X}
C {devices/res.sym} 470 -590 1 0 {name=R2
value=1E12
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 210 -210 0 0 {name=C1 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 150 -260 1 0 {name=C3 model=cap_mim_m3_1 W=71 L=71 MF=1 spiceprefix=X}
C {devices/res.sym} 330 -210 0 0 {name=R1
value=1E12
footprint=1206
device=resistor
m=1}
C {devices/code.sym} 20 -830 0 0 {name=LIB_TT only_toplevel=false value="

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
C {devices/code.sym} 150 -830 0 0 {name=CONTROL only_toplevel=false value="

.option gmin=1E-15

.control

******************OP Simulation*************************************
op
print OUT
print MINUS1
********************************************************************


*******************DC Simulation************************************
*dc V2 0.85 0.95 10u
*plot OUT
*plot deriv(OUT)
********************************************************************


********************AC Simulation***********************************
ac dec 100 0.01 1MEG 
plot db(OUT)
********************************************************************


********************Transient Simulation****************************
*tran 1m 2
*plot VP VM OUT
********************************************************************

********************Noise Simulation********************************
*set sqrnoise
noise v(out) V4 dec 100 50m 100
*setplot noise1
*plot log(inoise_spectrum)
*plot onoise_spectrum

print inoise_total
*print onoise_total
********************************************************************
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l19 author="LCI TEAM"}
C {devices/vsource.sym} 930 -480 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} 930 -450 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 780 -480 0 0 {name=V4 value="AC 1"}
C {devices/lab_pin.sym} 780 -540 2 0 {name=l10 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 930 -540 2 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1000 -480 0 0 {name=V3 value=-0.9}
C {devices/gnd.sym} 1000 -450 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1000 -540 2 0 {name=l9 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 780 -450 0 0 {name=l15 lab=GND}
C {devices/isource.sym} 850 -480 0 0 {name=I1 value=10n}
C {devices/gnd.sym} 850 -450 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 850 -540 2 0 {name=l16 sig_type=std_logic lab=IBIAS}
C {devices/lab_pin.sym} 470 -180 2 0 {name=l1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 470 -360 2 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -390 2 0 {name=l6 sig_type=std_logic lab=IBIAS}
C {devices/gnd.sym} 330 -140 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 210 -140 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 0 -260 0 0 {name=l17 sig_type=std_logic lab=VP}
C {devices/capa.sym} 670 -240 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 670 -180 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 670 -290 2 0 {name=l21 sig_type=std_logic lab=OUT}
C {devices/vcvs.sym} 950 -270 0 0 {name=E1 value=0.5}
C {devices/gnd.sym} 950 -210 0 0 {name=l11 lab=GND}
C {devices/vcvs.sym} 1100 -270 0 0 {name=E2 value=-.5}
C {devices/gnd.sym} 1100 -210 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 860 -290 0 0 {name=l22 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1010 -290 0 0 {name=l23 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 1100 -350 1 0 {name=l24 sig_type=std_logic lab=VM}
C {devices/lab_pin.sym} 950 -340 1 0 {name=l25 sig_type=std_logic lab=VP}
C {MISC/opamp.sym} 370 -220 0 0 {name=X1}
