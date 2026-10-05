v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -60 240 -60 {
lab=VSSPIN}
N 230 -160 240 -160 {
lab=VDDPIN}
N 230 -130 230 -90 {
lab=Y}
N 150 -60 190 -60 {
lab=A}
N 150 -160 190 -160 {
lab=A}
N 150 -160 150 -60 {
lab=A}
N 230 -30 230 -10 {
lab=VSSPIN}
N 230 -220 230 -190 {
lab=VDDPIN}
N 240 -60 240 -10 {
lab=VSSPIN}
N 230 -10 240 -10 {
lab=VSSPIN}
N 240 -220 240 -160 {
lab=VDDPIN}
N 230 -220 240 -220 {
lab=VDDPIN}
N 230 -240 230 -220 {
lab=VDDPIN}
N 230 -10 230 20 {
lab=VSSPIN}
N 230 -110 310 -110 {
lab=Y}
N 130 -110 150 -110 {}
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
C {symbol/pmos_acm.sym} 220 -160 0 0 {name=N2 
model=PMOS_ACM 
w=2u 
l=2u 
n=1.438 
is=17.94n 
vt0=0.7774
sigma=20m 
zeta=5m
}
C {devices/ipin.sym} 130 -110 0 0 {name=p3 lab=A}
C {devices/opin.sym} 310 -110 0 0 {name=p4 lab=Y}
C {devices/lab_pin.sym} 230 -240 0 0 {name=p1 lab=VDDPIN}
C {devices/lab_pin.sym} 230 20 0 0 {name=p2 lab=VSSPIN}
