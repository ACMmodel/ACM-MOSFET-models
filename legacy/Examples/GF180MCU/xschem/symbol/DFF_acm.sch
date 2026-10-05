v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -200 130 -150 {
lab=value}
N 130 -110 240 -110 {
lab=value}
N 130 -280 240 -280 {
lab=D}
N 40 -280 130 -280 {
lab=D}
N 360 -260 450 -260 {
lab=#net1}
N 360 -130 450 -130 {
lab=#net2}
N 570 -150 650 -150 {
lab=QN}
N 570 -240 650 -240 {
lab=Q}
N 220 -240 240 -240 {
lab=CLK}
N 650 -240 670 -240 {
lab=Q}
N 650 -150 670 -150 {
lab=QN}
N 130 -150 130 -110 {
lab=value}
N 220 -240 220 -150 {
lab=CLK}
N 220 -150 240 -150 {
lab=CLK}
N 200 -190 220 -190 {
lab=CLK}
N 430 -170 450 -170 {
lab=Q}
N 430 -220 450 -220 {
lab=QN}
N 590 -180 590 -150 {
lab=QN}
N 430 -200 590 -180 {
lab=QN}
N 430 -220 430 -200 {
lab=QN}
N 590 -240 590 -210 {
lab=Q}
N 430 -190 590 -210 {
lab=Q}
N 430 -190 430 -170 {
lab=Q}
N 360 -370 370 -370 {
lab=VDD}
N 360 -330 370 -330 {
lab=VSS}
C {symbol/nand2_acm.sym} 300 -260 0 0 {name=x1 m=1 VDDPIN=VDD VSSPIN=VSS}
C {symbol/nand2_acm.sym} 300 -130 0 0 {name=x2 m=1 VDDPIN=VDD VSSPIN=VSS}
C {symbol/nand2_acm.sym} 510 -240 0 0 {name=x3 m=1 VDDPIN=VDD VSSPIN=VSS}
C {symbol/nand2_acm.sym} 510 -150 0 0 {name=x4 m=1 VDDPIN=VDD VSSPIN=VSS}
C {symbol/not_acm.sym} 130 -240 1 0 {name=x5 m=1 VDDPIN=VDD VSSPIN=VSS}
C {devices/ipin.sym} 40 -280 0 0 {name=p3 lab=D}
C {devices/ipin.sym} 200 -190 0 0 {name=p5 lab=CLK}
C {devices/opin.sym} 670 -150 0 0 {name=p4 lab=QN}
C {devices/opin.sym} 670 -240 0 0 {name=p1 lab=Q}
C {devices/lab_pin.sym} 130 -150 0 0 {name=p2 sig_type=std_logic lab=value}
C {devices/noconn.sym} 370 -370 0 1 {name=l2}
C {devices/noconn.sym} 370 -330 0 1 {name=l1}
C {devices/lab_pin.sym} 360 -370 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -330 0 0 {name=p6 sig_type=std_logic lab=VSS}
