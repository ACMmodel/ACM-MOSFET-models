v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 250 -220 250 -210 {
lab=GND}
N 260 -340 260 -330 {
lab=GND}
N 160 -400 260 -400 {
lab=vd}
N 160 -400 160 -310 {
lab=vd}
N 30 -280 120 -280 {
lab=vg}
N 30 -220 30 -200 {
lab=GND}
N 160 -250 160 -240 {
lab=vs}
N 160 -180 160 -160 {
lab=GND}
N 160 -280 250 -280 {
lab=vb}
N 130 -240 160 -240 {
lab=vs}
N 230 -300 230 -280 {
lab=vb}
N -140 -170 -140 -160 {
lab=GND}
N -130 -330 -130 -320 {
lab=GND}
N -230 -390 -130 -390 {
lab=vd2}
N -230 -390 -230 -300 {
lab=vd2}
N -230 -240 -230 -230 {
lab=vs2}
N -230 -170 -230 -150 {
lab=GND}
N -230 -270 -140 -270 {
lab=vb2}
N -260 -230 -230 -230 {
lab=vs2}
N -160 -290 -160 -270 {
lab=vb2}
N -140 -270 -140 -230 {
lab=vb2}
N -320 -270 -270 -270 {
lab=vg}
C {devices/code_shown.sym} -770 -660 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_5PM
"}
C {devices/code_shown.sym} -780 -520 0 0 {name=NGSPICE only_toplevel=true
value="
.control
pre_osdi /home/<USER>/<PATH_TO>/NMOS_ACM_2V0.osdi
dc VG 0.1 3.3 5m

*gm for ACM
let gm = deriv(i(vs))
let gm_id = gm/i(vs)

*gm for GF180
let gm_gf = @m.xm1.m0[gm]
let gm_id_gf = gm_gf/i(vs2)

save gm_id gm_id_gf

set filetype = binary
write TB_nmos_acm_out.raw

.endc
.save all  @m.xm1.m0[gm]
"}
C {devices/vsource.sym} 30 -250 0 0 {name=VG value=0}
C {devices/vsource.sym} 260 -370 0 0 {name=VD value=3.3}
C {devices/vsource.sym} 250 -250 0 0 {name=VB value=0}
C {devices/gnd.sym} 160 -160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 250 -210 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 -330 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 30 -200 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 160 -210 0 0 {name=VS value=0}
C {devices/lab_wire.sym} 70 -280 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} 200 -400 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/lab_wire.sym} 130 -240 0 0 {name=p3 sig_type=std_logic lab=vs
}
C {devices/lab_wire.sym} 230 -300 0 0 {name=p4 sig_type=std_logic lab=vb
}
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} 150 -280 0 0 {name=N1 
model=NMOS_ACM 
w=5u 
l=0.30u 
n=1.383 
is=1.076u 
vt0=0.6493
sigma=26m 
zeta=22m
}
C {symbols/nfet_03v3.sym} -250 -270 0 0 {name=M1
L=0.30u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} -130 -360 0 0 {name=VD2 value=3.3}
C {devices/vsource.sym} -140 -200 0 0 {name=VB2 value=0}
C {devices/gnd.sym} -230 -150 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -140 -160 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -130 -320 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -230 -200 0 0 {name=VS2 value=0}
C {devices/lab_wire.sym} -320 -270 0 0 {name=p5 sig_type=std_logic lab=vg
}
C {devices/lab_wire.sym} -190 -390 0 0 {name=p6 sig_type=std_logic lab=vd2}
C {devices/lab_wire.sym} -260 -230 0 0 {name=p7 sig_type=std_logic lab=vs2
}
C {devices/lab_wire.sym} -160 -290 0 0 {name=p8 sig_type=std_logic lab=vb2
}
