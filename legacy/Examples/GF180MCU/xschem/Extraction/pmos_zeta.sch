v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 14 70 190 70 400 {}
L 14 70 400 700 400 {}
L 14 700 170 700 400 {}
L 14 70 170 700 170 {}
L 14 70 170 70 190 {}
T {tcleval(qS: [xschem raw value qS 0])} 505 265 0 0 0.4 0.4 {floater=1 layer=15}
T {tcleval(zeta: [xschem raw value zeta 0])} 565 -135 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(idsat: [xschem raw value idsat 0])} 505 235 0 0 0.4 0.4 {floater=1 layer=15}
T {ACM2 using 4PM
to calculate qS} 85 185 0 0 0.4 0.4 {layer=14}
N 360 -60 380 -60 {
lab=GND}
N 420 -30 420 10 {
lab=GND}
N 420 -60 430 -60 {
lab=#net1}
N 420 10 420 30 {
lab=GND}
N 420 -110 420 -90 {
lab=#net1}
N 320 -170 420 -170 {
lab=#net2}
N 360 -60 360 -20 {
lab=GND}
N 360 -20 420 -20 {
lab=GND}
N 430 -100 430 -60 {
lab=#net1}
N 420 -100 430 -100 {
lab=#net1}
N 320 -110 320 -100 {
lab=GND}
N 380 300 400 300 {
lab=GND}
N 440 300 450 300 {
lab=#net3}
N 440 250 440 270 {
lab=#net3}
N 340 190 440 190 {
lab=#net3}
N 380 300 380 340 {
lab=GND}
N 380 340 440 340 {
lab=GND}
N 450 260 450 300 {
lab=#net3}
N 440 260 450 260 {
lab=#net3}
N 340 250 340 260 {
lab=GND}
N 440 330 440 360 {
lab=GND}
N 440 190 440 250 {
lab=#net3}
C {devices/code_shown.sym} 10 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/vsource.sym} 320 -140 0 1 {name=VDD value=3.3 savecurrent=false}
C {devices/launcher.sym} 620 -170 0 0 {name=h1
descr="Ctrl-Left-Click to Show" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code.sym} 20 -110 0 0 {name=NGSPICE only_toplevel=true

value="

.control
pre_osdi ./PMOS_ACM_2V0.osdi
save all

op

let IDsat_=i(V_ID)
save IDsat_

let IS=@n1[is]
save IS

let qS=@n1[qS_op]
save qS

let idsat=IDsat_/IS
save idsat

let sqr=sqrt(1+idsat)
save sqr

let aux1 = 2*(qS+1-sqr)
save aux1

let zeta = aux1/idsat
save zeta

set appenwrite
write pmos_zeta.raw

.endc
"}
C {devices/gnd.sym} 420 30 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 420 -140 0 0 {name=V_ID savecurrent=true}
C {symbols/pfet_03v3.sym} 400 -60 0 0 {name=M1
L=0.3u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/gnd.sym} 320 -100 0 1 {name=l1 lab=GND}
C {devices/vsource.sym} 340 220 0 1 {name=VDD_acm value=3.3 savecurrent=false}
C {devices/gnd.sym} 440 360 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 340 260 0 1 {name=l6 lab=GND}
C {symbol/pmos_acm.sym} 430 300 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.3u 
n=1.43
is=0.709u 
vt0=0.7555
sigma=18.8m 
zeta=1p
}
