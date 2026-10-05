v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -230 110 -230 {
lab=A}
N 240 -230 270 -230 {
lab=B}
N 150 -60 190 -60 {
lab=A}
N 150 30 190 30 {
lab=B}
N 230 -30 230 0 {
lab=#net1}
N 230 60 230 90 {
lab=VSS}
N 230 30 240 30 {
lab=VSS}
N 240 30 240 90 {
lab=VSS}
N 230 -60 240 -60 {
lab=VSS}
N 240 -60 240 30 {
lab=VSS}
N 150 -200 150 -140 {
lab=Y}
N 150 -140 310 -140 {
lab=Y}
N 310 -200 310 -140 {
lab=Y}
N 230 -140 230 -90 {
lab=Y}
N 150 -280 150 -260 {
lab=VDDPIN}
N 150 -280 310 -280 {
lab=VDDPIN}
N 310 -280 310 -260 {
lab=VDDPIN}
N 230 90 240 90 {
lab=VSS}
N 230 90 230 110 {
lab=VSS}
N 230 110 230 130 {
lab=VSS}
N 150 -230 160 -230 {
lab=VDDPIN}
N 160 -280 160 -230 {
lab=VDDPIN}
N 310 -230 320 -230 {
lab=VDDPIN}
N 320 -280 320 -230 {
lab=VDDPIN}
N 310 -280 320 -280 {
lab=VDDPIN}
N 230 -330 230 -280 {
lab=VDDPIN}
N 230 -110 280 -110 {
lab=Y}
N 280 -110 400 -110 {
lab=Y}
C {symbol/nmos_acm.sym} 220 -60 0 0 {name=N1 
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {symbol/pmos_acm.sym} 140 -230 0 0 {name=N2 
model=PMOS_ACM 
w=2u 
l=2u 
n=1.438 
is=17.94n 
vt0=0.7774
sigma=20m 
zeta=5m
}
C {symbol/pmos_acm.sym} 300 -230 0 0 {name=N3 
model=PMOS_ACM 
w=2u 
l=2u 
n=1.438 
is=17.94n 
vt0=0.7774
sigma=20m 
zeta=5m
}
C {symbol/nmos_acm.sym} 220 30 0 0 {name=N4 
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {devices/lab_pin.sym} 230 -330 0 0 {name=p1 lab=VDDPIN}
C {devices/lab_pin.sym} 230 130 0 0 {name=p2 lab=VSSPIN}
C {devices/ipin.sym} 40 -120 0 0 {name=p3 lab=A}
C {devices/opin.sym} 400 -110 0 0 {name=p4 lab=Y}
C {devices/ipin.sym} 40 -80 0 0 {name=p5 lab=B}
C {devices/lab_pin.sym} 50 -230 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 240 -230 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 150 30 0 0 {name=p8 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 150 -60 0 0 {name=p9 sig_type=std_logic lab=A}
