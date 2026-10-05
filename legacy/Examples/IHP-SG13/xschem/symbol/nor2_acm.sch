v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -250 190 -250 {
lab=A}
N 160 -160 190 -160 {
lab=B}
N 70 -50 110 -50 {
lab=A}
N 240 -50 280 -50 {
lab=B}
N 230 10 230 30 {
lab=VSSPIN}
N 230 -250 240 -250 {
lab=VDDPIN}
N 230 -330 230 -280 {
lab=VDDPIN}
N 240 -290 240 -250 {
lab=VDDPIN}
N 230 -290 240 -290 {
lab=VDDPIN}
N 230 -220 230 -190 {
lab=#net2}
N 230 -160 240 -160 {
lab=VDDPIN}
N 240 -250 240 -160 {
lab=VDDPIN}
N 130 -160 160 -160 {}
N 150 -80 320 -80 {}
N 230 -130 230 -80 {}
N 150 -20 150 10 {}
N 150 10 320 10 {}
N 320 -20 320 10 {}
N 230 -110 360 -110 {}
C {symbol/nmos_acm.sym} 140 -50 0 0 {name=N1 
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {symbol/pmos_acm.sym} 220 -250 0 0 {name=N2 
model=PMOS_ACM 
w=2u 
l=2u 
n=1.438 
is=17.94n 
vt0=0.7774
sigma=20m 
zeta=5m
}
C {symbol/pmos_acm.sym} 220 -160 0 0 {name=N3 
model=PMOS_ACM 
w=2u 
l=2u 
n=1.438 
is=17.94n 
vt0=0.7774
sigma=20m 
zeta=5m
}
C {symbol/nmos_acm.sym} 310 -50 0 0 {name=N4 
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
C {devices/lab_pin.sym} 230 30 0 0 {name=p2 lab=VSSPIN}
C {devices/ipin.sym} 20 -130 0 0 {name=p3 lab=A}
C {devices/opin.sym} 360 -110 0 0 {name=p4 lab=Y}
C {devices/ipin.sym} 20 -90 0 0 {name=p5 lab=B}
C {devices/lab_pin.sym} 130 -250 0 0 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_pin.sym} 130 -160 0 0 {name=p7 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 240 -50 0 0 {name=p8 sig_type=std_logic lab=B}
C {devices/lab_pin.sym} 70 -50 0 0 {name=p9 sig_type=std_logic lab=A}
