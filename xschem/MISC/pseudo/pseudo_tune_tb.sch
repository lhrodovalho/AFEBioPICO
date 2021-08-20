v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 330 -420 390 -420 { lab=X}
N 300 -480 300 -460 { lab=Y}
N 300 -480 420 -480 { lab=Y}
N 420 -480 420 -460 { lab=Y}
N 220 -420 270 -420 { lab=A}
N 450 -420 500 -420 { lab=B}
N 300 -420 300 -400 { lab=A}
N 260 -400 300 -400 { lab=A}
N 420 -420 420 -400 { lab=B}
N 420 -400 460 -400 { lab=B}
N 220 -120 220 -100 { lab=CM}
N 220 -100 380 -100 { lab=CM}
N 380 -120 380 -100 { lab=CM}
N 220 -240 220 -180 { lab=A}
N 380 -240 380 -180 { lab=B}
N 220 -100 220 -80 { lab=CM}
N 300 -520 300 -480 { lab=Y}
N 360 -420 360 -380 { lab=X}
N 600 -230 600 -170 { lab=Y}
N 560 -260 600 -260 { lab=GND}
N 560 -260 560 -140 { lab=GND}
N 560 -140 600 -140 { lab=GND}
N 600 -110 600 -100 { lab=GND}
N 560 -100 600 -100 { lab=GND}
N 560 -140 560 -100 { lab=GND}
N 640 -140 720 -140 { lab=Z}
N 600 -100 800 -100 { lab=GND}
N 800 -140 800 -100 { lab=GND}
N 760 -140 800 -140 { lab=GND}
N 760 -110 760 -100 { lab=GND}
N 640 -260 680 -260 { lab=X}
N 600 -200 640 -200 { lab=Y}
N 760 -230 760 -170 { lab=Z}
N 760 -320 760 -290 { lab=VDD}
N 600 -320 760 -320 { lab=VDD}
N 600 -320 600 -290 { lab=VDD}
N 560 -100 560 -80 { lab=GND}
N 940 -110 940 -100 { lab=GND}
N 800 -100 940 -100 { lab=GND}
N 940 -320 940 -170 { lab=VDD}
N 760 -320 940 -320 { lab=VDD}
N 1080 -110 1080 -100 { lab=GND}
N 940 -100 1080 -100 { lab=GND}
N 1040 -120 1040 -100 { lab=GND}
N 1000 -160 1040 -160 { lab=VDD}
N 1000 -200 1000 -160 { lab=VDD}
N 940 -200 1000 -200 { lab=VDD}
N 1080 -220 1080 -170 { lab=CM}
N 700 -200 760 -200 { lab=Z}
N 700 -200 700 -140 { lab=Z}
N 940 -320 980 -320 { lab=VDD}
N 220 -80 220 -60 { lab=CM}
N 760 -220 800 -220 { lab=Z}
N 460 -420 460 -400 { lab=B}
N 260 -420 260 -400 { lab=A}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 -440 1 0 {name=M1
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -440 3 1 {name=M2
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 220 -150 0 0 {name=VA value="DC 1m AC 1"}
C {devices/vsource.sym} 380 -150 0 0 {name=VB value=0}
C {devices/lab_pin.sym} 380 -240 1 0 {name=l1 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 220 -240 1 0 {name=l2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 500 -420 2 0 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 220 -420 0 0 {name=l4 sig_type=std_logic lab=A}
C {devices/code.sym} 30 -370 0 0 {name=CONTROL only_toplevel=false value="

.nodeset v(x) = 0.9
.param mc_mm_switch=0

.options gmin=1e-18
*.options rshunt = 1.0e15

.control
  op
  print x y z a b

  ac DEC 1 1 1
  print 1/abs(I(VA))

  dc VA -0.9 0.9 1.1m
  let r=abs(deriv(v(a))/deriv(i(va)))
  plot r ylog

.endc
"}
C {devices/lab_pin.sym} 300 -520 1 0 {name=l6 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} 360 -380 3 0 {name=l7 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} 680 -260 2 0 {name=l8 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} 640 -200 2 0 {name=l9 sig_type=std_logic lab=Y}
C {devices/isource.sym} 760 -260 0 0 {name=I0 value=0.01n}
C {devices/gnd.sym} 560 -80 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 940 -140 0 0 {name=VDD value=1.8}
C {devices/vcvs.sym} 1080 -140 0 0 {name=E1 value=0.5}
C {devices/lab_pin.sym} 1080 -220 1 0 {name=l11 sig_type=std_logic lab=CM}
C {devices/lab_pin.sym} 980 -320 2 0 {name=l12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 -60 3 0 {name=l5 sig_type=std_logic lab=CM}
C {devices/lab_pin.sym} 800 -220 2 0 {name=l13 sig_type=std_logic lab=Z}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 740 -140 0 0 {name=M3
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -140 0 1 {name=M4
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -260 0 1 {name=M5
L=8
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 30 -560 0 0 {name=LIB_TT only_toplevel=false value="

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_g5v0d10v5__ff.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_g5v0d10v5__ff.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice"

.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice"
.include "/usr/share/pdk/sky130A/libs.ref/spi/sky130_fd_pr/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice"

.include "~/OpenPDK/skywater-pdk/skywater-pdk/libraries/sky130_fd_pr/latest/models/all.spice"
"
}
