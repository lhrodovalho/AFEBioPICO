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
N 330 -380 390 -380 { lab=X}
N 300 -440 300 -420 { lab=X}
N 300 -440 420 -440 { lab=X}
N 420 -440 420 -420 { lab=X}
N 360 -440 360 -380 { lab=X}
N 220 -380 270 -380 { lab=A}
N 450 -380 500 -380 { lab=B}
N 300 -380 300 -360 { lab=A}
N 260 -360 300 -360 { lab=A}
N 260 -380 260 -360 { lab=A}
N 420 -380 420 -360 { lab=B}
N 420 -360 460 -360 { lab=B}
N 460 -380 460 -360 { lab=B}
N 220 -80 220 -60 { lab=GND}
N 220 -60 380 -60 { lab=GND}
N 380 -80 380 -60 { lab=GND}
N 220 -200 220 -140 { lab=A}
N 380 -200 380 -140 { lab=B}
N 220 -60 220 -40 { lab=GND}
N 300 -480 300 -440 { lab=X}
C {devices/code.sym} 30 -150 0 0 {name=TT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="

.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice"
.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice"
.include "~/git/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/all.spice"

* All models
*.include /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice
"}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 420 -400 1 0 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -400 3 1 {name=M2
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
C {devices/vsource.sym} 220 -110 0 0 {name=VA value=0}
C {devices/vsource.sym} 380 -110 0 0 {name=VB value=0}
C {devices/lab_pin.sym} 380 -200 1 0 {name=l1 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 220 -200 1 0 {name=l2 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 500 -380 2 0 {name=l3 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 220 -380 0 0 {name=l4 sig_type=std_logic lab=A}
C {devices/gnd.sym} 220 -40 0 0 {name=l5 lab=GND}
C {devices/code.sym} 30 -330 0 0 {name=CONTROL only_toplevel=false value="

.options gmin=1e-13
.options rshunt = 1.0e13

.control
  dc VA -0.9 0.9 0.011
  let r=abs(deriv(v(a))/deriv(i(va)))
  plot r ylog
.endc
"}
C {devices/lab_pin.sym} 300 -480 1 0 {name=l6 sig_type=std_logic lab=X}