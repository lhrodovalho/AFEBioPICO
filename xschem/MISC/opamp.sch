v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2600 -1080 2680 -1080 { lab=vp}
N 2600 -1040 2680 -1040 { lab=v-}
N 2720 -1030 2720 -980 { lab=GND}
N 2720 -1140 2720 -1090 { lab=out}
N 2720 -980 2720 -960 { lab=GND}
C {devices/vcvs.sym} 2720 -1060 0 0 {name=E1 value=1000}
C {devices/gnd.sym} 2720 -960 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} 2610 -1080 0 0 {name=p1 lab=vp}
C {devices/ipin.sym} 2610 -1040 0 0 {name=p2 lab=vm}
C {devices/opin.sym} 2720 -1130 3 0 {name=p3 lab=out}
