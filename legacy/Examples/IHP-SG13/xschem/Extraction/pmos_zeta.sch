v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 14 70 80 70 290 {}
L 14 70 290 700 290 {}
L 14 700 60 700 290 {}
L 14 70 60 700 60 {}
L 14 70 60 70 80 {}
T {tcleval(qS: [xschem raw value qS 0])} 505 155 0 0 0.4 0.4 {floater=1 layer=15}
T {tcleval(zeta: [xschem raw value zeta 0])} 565 -135 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(idsat: [xschem raw value idsat 0])} 505 125 0 0 0.4 0.4 {floater=1 layer=15}
T {ACM2 using 4PM
to calculate qS} 85 75 0 0 0.4 0.4 {layer=14}
N 370 -90 390 -90 {
lab=GND}
N 430 -50 430 0 {
lab=GND}
N 430 -90 440 -90 {
lab=#net1}
N 430 -130 430 -120 {
lab=#net1}
N 330 -200 430 -200 {
lab=#net2}
N 370 -90 370 -50 {
lab=GND}
N 370 -50 430 -50 {
lab=GND}
N 440 -130 440 -90 {
lab=#net1}
N 430 -130 440 -130 {
lab=#net1}
N 330 -140 330 -130 {
lab=GND}
N 430 -60 430 -50 {
lab=GND}
N 430 -140 430 -130 {
lab=#net1}
N 370 200 390 200 {
lab=GND}
N 430 200 440 200 {
lab=#net3}
N 430 160 430 170 {
lab=#net3}
N 330 90 430 90 {
lab=#net3}
N 370 200 370 240 {
lab=GND}
N 370 240 430 240 {
lab=GND}
N 440 160 440 200 {
lab=#net3}
N 430 160 440 160 {
lab=#net3}
N 330 150 330 160 {
lab=GND}
N 430 240 430 260 {
lab=GND}
N 430 90 430 160 {
lab=#net3}
N 430 230 430 240 {
lab=GND}
C {devices/launcher.sym} 620 -170 0 0 {name=h1
descr="Ctrl-Left-Click to Show" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code.sym} 20 -110 0 0 {name=NGSPICE only_toplevel=true

value="

.control
pre_osdi ./PMOS_ACM_2V0.osdi
pre_osdi ./psp103_nqs.osdi
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
C {devices/code_shown.sym} 10 -320 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.model PMOS_ACM pmos_ACM
"}
C {devices/vsource.sym} 330 -170 0 1 {name=VDD value=3.3 savecurrent=false}
C {devices/gnd.sym} 430 0 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 430 -170 0 0 {name=V_ID savecurrent=true}
C {devices/gnd.sym} 330 -130 0 1 {name=l1 lab=GND}
C {devices/vsource.sym} 330 120 0 1 {name=VDD_acm value=3.3 savecurrent=false}
C {devices/gnd.sym} 430 260 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 330 160 0 1 {name=l6 lab=GND}
C {/home/gmaranhao/Documents/MOSFET_model/Examples/IHP-SG13/xschem/symbol/pmos_acm.sym} 420 200 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.12u 
n=1.47 
is=0.67u
vt0=0.617
sigma=9m 
zeta=1p
}
C {sg13g2_pr/sg13_hv_pmos.sym} 410 -90 0 0 {name=M1
L=0.4u
W=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
