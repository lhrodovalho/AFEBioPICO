v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -80 80 -80 { lab=vss}
N 40 -80 40 -40 { lab=vss}
N 40 -40 80 -40 { lab=vss}
N 80 -50 80 -40 { lab=vss}
N 80 -40 240 -40 { lab=vss}
N 80 -140 80 -110 { lab=ib}
N 120 -80 140 -80 { lab=ib}
N 140 -140 140 -80 { lab=ib}
N 80 -140 140 -140 { lab=ib}
N 180 -80 200 -80 { lab=ib}
N 180 -140 180 -80 { lab=ib}
N 240 -50 240 -40 { lab=vss}
N 240 -40 280 -40 { lab=vss}
N 280 -80 280 -40 { lab=vss}
N 240 -80 280 -80 { lab=vss}
N 400 -50 400 -40 { lab=vss}
N 340 -80 360 -80 { lab=ib}
N 340 -140 340 -80 { lab=ib}
N 400 -80 440 -80 { lab=vss}
N 440 -80 440 -40 { lab=vss}
N 400 -40 440 -40 { lab=vss}
N 280 -40 400 -40 { lab=vss}
N 400 -190 400 -110 { lab=#net1}
N 240 -190 240 -110 { lab=#net2}
N 240 -220 280 -220 { lab=vss}
N 280 -220 280 -80 { lab=vss}
N 400 -220 440 -220 { lab=vss}
N 440 -220 440 -80 { lab=vss}
N 400 -300 400 -250 { lab=io}
N 240 -300 240 -250 { lab=io}
N 240 -300 400 -300 { lab=io}
N 140 -140 340 -140 { lab=ib}
N 340 -220 360 -220 { lab=s3}
N 180 -220 200 -220 { lab=s4}
N 560 -50 560 -40 { lab=vss}
N 500 -80 520 -80 { lab=ib}
N 500 -140 500 -80 { lab=ib}
N 560 -80 600 -80 { lab=vss}
N 600 -80 600 -40 { lab=vss}
N 560 -40 600 -40 { lab=vss}
N 560 -190 560 -110 { lab=#net3}
N 560 -220 600 -220 { lab=vss}
N 600 -220 600 -80 { lab=vss}
N 560 -300 560 -250 { lab=io}
N 500 -220 520 -220 { lab=s2}
N 340 -140 500 -140 { lab=ib}
N 440 -40 560 -40 { lab=vss}
N 660 -80 680 -80 { lab=ib}
N 660 -140 660 -80 { lab=ib}
N 720 -50 720 -40 { lab=vss}
N 720 -40 760 -40 { lab=vss}
N 760 -80 760 -40 { lab=vss}
N 720 -80 760 -80 { lab=vss}
N 880 -50 880 -40 { lab=vss}
N 820 -80 840 -80 { lab=ib}
N 820 -140 820 -80 { lab=ib}
N 880 -80 920 -80 { lab=vss}
N 920 -80 920 -40 { lab=vss}
N 880 -40 920 -40 { lab=vss}
N 760 -40 880 -40 { lab=vss}
N 880 -190 880 -110 { lab=#net4}
N 720 -190 720 -110 { lab=#net5}
N 720 -220 760 -220 { lab=vss}
N 760 -220 760 -80 { lab=vss}
N 880 -220 920 -220 { lab=vss}
N 920 -220 920 -80 { lab=vss}
N 880 -300 880 -250 { lab=io}
N 720 -300 720 -250 { lab=io}
N 720 -300 880 -300 { lab=io}
N 820 -220 840 -220 { lab=s4}
N 660 -220 680 -220 { lab=s1}
N 600 -40 720 -40 { lab=vss}
N 400 -300 560 -300 { lab=io}
N 560 -300 720 -300 { lab=io}
N 500 -140 660 -140 { lab=ib}
N 660 -140 820 -140 { lab=ib}
N 80 -180 80 -140 { lab=ib}
N 920 -40 960 -40 { lab=vss}
N 880 -340 880 -300 { lab=io}
C {../ARRAY/n1_1.sym} 100 -80 0 1 {name=x1}
C {../ARRAY/n4_1.sym} 220 -80 0 0 {name=x2}
C {../ARRAY/n1_2.sym} 380 -80 0 0 {name=x3}
C {../ARRAY/n1_1.sym} 220 -220 0 0 {name=x4}
C {../ARRAY/n1_1.sym} 380 -220 0 0 {name=x5}
C {devices/lab_pin.sym} 80 -180 1 0 {name=l3 sig_type=std_logic lab=ib}
C {../ARRAY/n1_1.sym} 540 -80 0 0 {name=x6}
C {../ARRAY/n1_1.sym} 540 -220 0 0 {name=x7}
C {../ARRAY/n1_2.sym} 700 -80 0 0 {name=x8}
C {../ARRAY/n1_4.sym} 860 -80 0 0 {name=x9}
C {../ARRAY/n1_1.sym} 700 -220 0 0 {name=x10}
C {../ARRAY/n1_1.sym} 860 -220 0 0 {name=x11}
C {devices/lab_pin.sym} 880 -340 1 0 {name=l7 sig_type=std_logic lab=io}
C {devices/lab_pin.sym} 960 -40 2 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 70 -340 0 0 {name=p1 lab=ib}
C {devices/iopin.sym} 70 -300 0 0 {name=p2 lab=io}
C {devices/iopin.sym} 70 -260 0 0 {name=p3 lab=vss}
C {devices/ipin.sym} 180 -220 0 0 {name=p4 lab=s4}
C {devices/ipin.sym} 340 -220 0 0 {name=p5 lab=s3}
C {devices/ipin.sym} 500 -220 0 0 {name=p6 lab=s2}
C {devices/ipin.sym} 660 -220 0 0 {name=p7 lab=s1}
C {devices/ipin.sym} 820 -220 0 0 {name=p8 lab=s0}
