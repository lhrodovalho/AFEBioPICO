v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -40 70 70 70 { lab=#net1}
N -40 -70 -40 70 { lab=#net1}
N -40 -70 -0 -70 { lab=#net1}
N 180 -100 250 -100 { lab=#net2}
N 250 -100 250 70 { lab=#net2}
N 130 70 250 70 { lab=#net2}
N -100 -70 -40 -70 { lab=#net1}
N 250 -100 320 -100 {}
N 380 -100 490 -100 {}
N 440 70 560 70 {}
N 440 -100 440 70 {}
N 670 -130 700 -130 {}
N 700 -130 700 70 {}
N 620 70 700 70 {}
N -60 -130 -0 -130 {}
N 420 -160 490 -160 {}
N 420 -210 420 -160 {}
N -60 -210 -60 -130 {}
N -200 -70 -160 -70 {}
C {VGA/VGA_OPAMP.sym} 0 0 0 0 {name=X1}
C {VGA/VGA_OPAMP.sym} 490 -30 0 0 {name=X2}
C {sky130_fd_pr/cap_mim_m3_2.sym} 100 70 1 0 {name=C1 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -130 -70 1 0 {name=C2 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 590 70 1 0 {name=C3 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 350 -100 1 0 {name=C4 model=cap_mim_m3_2 W=1 L=1 MF=1 spiceprefix=X}
