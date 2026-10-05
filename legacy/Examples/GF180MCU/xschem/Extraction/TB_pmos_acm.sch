v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -60 -360 450 40 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1
ylabmag=1


dataset=-1
unitx=1
logx=0
logy=0












y1=3.3e-12
y2=0.0024
x2=3.3404971
x1=-0.0095029134
color="4 5"
node="\\"ID_ACM;i(vd)\\"
\\"ID_BSIM4;i(vd2)\\""
linewidth_mult=4.0}
B 2 -60 -750 450 -360 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6

xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0





















linewidth_mult=3.0
subdivx=3

color="4 5"
x1=-0.0095029134
x2=3.3404971
node="\\"gm/ID - ACM;i(gm_id)\\"
\\"gm/ID - BSIM4;i(gm_id_gf)\\""



y1=-0.32
y2=27}
B 2 450 -360 960 40 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1


divx=6
subdivx=3
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=1












y1=-12
y2=-2.6
x2=3.3404971
x1=-0.0095029134
color="4 5"
node="\\"ID_ACM;i(vd)\\"
\\"ID_BSIM4;i(vd2)\\""
linewidth_mult=3.0}
N -690 -470 -610 -470 {
lab=vg}
N -570 -580 -570 -500 {
lab=vs2}
N -570 -580 -490 -580 {
lab=vs2}
N -570 -440 -570 -390 {
lab=vd2}
N -490 -520 -490 -510 {
lab=GND}
N -470 -410 -470 -390 {
lab=GND}
N -570 -330 -570 -310 {
lab=GND}
N -375 -415 -375 -395 {
lab=GND}
N -570 -470 -470 -470 {
lab=#net1}
N -375 -475 -295 -475 {
lab=vg}
N -255 -585 -255 -505 {
lab=vs}
N -255 -585 -175 -585 {
lab=vs}
N -255 -445 -255 -395 {
lab=vd}
N -175 -525 -175 -515 {
lab=GND}
N -155 -415 -155 -395 {
lab=GND}
N -255 -335 -255 -315 {
lab=GND}
N -255 -475 -155 -475 {
lab=#net2}
C {devices/launcher.sym} -5 -775 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} -700 -870 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model PMOS_ACM pmos_ACM
"}
C {devices/vsource.sym} -375 -445 0 0 {name=VG value=0}
C {devices/vsource.sym} -490 -550 0 0 {name=VS2 value=3.3}
C {devices/vsource.sym} -470 -440 0 0 {name=VB2 value=3.3}
C {devices/vsource.sym} -570 -360 0 0 {name=VD2 value=0}
C {devices/gnd.sym} -375 -395 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -570 -310 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -470 -390 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -490 -510 0 0 {name=l11 lab=GND}
C {symbols/pfet_03v3.sym} -590 -470 0 0 {name=M7
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
C {devices/lab_wire.sym} -570 -415 0 0 {name=p11 sig_type=std_logic lab=vd2}
C {devices/lab_wire.sym} -535 -580 0 0 {name=p10 sig_type=std_logic lab=vs2
}
C {devices/vsource.sym} -175 -555 0 0 {name=VS value=3.3}
C {devices/vsource.sym} -155 -445 0 0 {name=VB value=3.3}
C {devices/vsource.sym} -255 -365 0 0 {name=VD value=0}
C {devices/gnd.sym} -255 -315 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -155 -395 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -175 -515 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -325 -475 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} -255 -420 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/lab_wire.sym} -220 -585 0 0 {name=p3 sig_type=std_logic lab=vs
}
C {symbol/pmos_acm.sym} -265 -475 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.3u 
n=1.43
is=0.709u 
vt0=0.7555
sigma=18.8m 
zeta=6.7m
}
C {devices/code.sym} -705 -730 0 0 {name=NGSPICE only_toplevel=true
value="
.control
pre_osdi ./PMOS_ACM_2V0.osdi
save all

dc VG -0.05 3.3 5m


*gm for ACM
let gm_id = -deriv(ln(i(Vd)))

*gm for GF180
let gm_id_gf = -deriv(ln(i(Vd2)))

save gm_id gm_id_gf
write TB_pmos_acm.raw

.endc
"}
C {devices/lab_wire.sym} -670 -470 0 0 {name=p4 sig_type=std_logic lab=vg}
