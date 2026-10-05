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
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0












y1=1.3e-11
y2=0.0026
x2=3.3
x1=0.1
color="4 5"
node="\\"ID_ACM;i(vs)\\"
\\"ID_GF;i(vs2)\\""
linewidth_mult=3.0}
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
x1=0.1
x2=3.3
node="\\"gm/ID - ACM;i(gm_id)\\"
\\"gm/ID - GF180;i(gm_id_gf)\\""



y1=0.55
y2=29}
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












y1=-11
y2=-2.5
x2=3.3
x1=0.1
color="4 5"
node="\\"ID_ACM;i(vs)\\"
\\"ID_GF;i(vs2)\\""
linewidth_mult=3.0}
N -170 -400 -170 -390 {
lab=GND}
N -160 -520 -160 -510 {
lab=GND}
N -260 -580 -160 -580 {
lab=vd}
N -260 -580 -260 -490 {
lab=vd}
N -360 -400 -360 -380 {
lab=GND}
N -260 -430 -260 -420 {
lab=vs}
N -260 -360 -260 -340 {
lab=GND}
N -190 -460 -170 -460 {
lab=vb}
N -290 -420 -260 -420 {
lab=vs}
N -190 -480 -190 -460 {
lab=vb}
N -480 -370 -480 -360 {
lab=GND}
N -470 -530 -470 -520 {
lab=GND}
N -570 -590 -470 -590 {
lab=vd2}
N -570 -590 -570 -500 {
lab=vd2}
N -570 -440 -570 -430 {
lab=vs2}
N -570 -370 -570 -350 {
lab=GND}
N -500 -470 -480 -470 {
lab=vb2}
N -600 -430 -570 -430 {
lab=vs2}
N -500 -490 -500 -470 {
lab=vb2}
N -480 -470 -480 -430 {
lab=vb2}
N -660 -470 -610 -470 {
lab=vg}
N -360 -460 -300 -460 {
lab=vg}
N -260 -460 -190 -460 {
lab=vb}
N -570 -470 -500 -470 {
lab=vb2}
C {devices/code_shown.sym} -720 -870 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.model NMOS_ACM nmos_ACM
"}
C {devices/vsource.sym} -360 -430 0 0 {name=VG value=0}
C {devices/vsource.sym} -160 -550 0 0 {name=VD value=3.3}
C {devices/vsource.sym} -170 -430 0 0 {name=VB value=0}
C {devices/gnd.sym} -260 -340 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -390 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -160 -510 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -360 -380 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -260 -390 0 0 {name=VS value=0}
C {devices/lab_wire.sym} -320 -460 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} -220 -580 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/lab_wire.sym} -290 -420 0 0 {name=p3 sig_type=std_logic lab=vs
}
C {devices/lab_wire.sym} -190 -480 0 0 {name=p4 sig_type=std_logic lab=vb
}
C {devices/vsource.sym} -470 -560 0 0 {name=VD2 value=3.3}
C {devices/vsource.sym} -480 -400 0 0 {name=VB2 value=0}
C {devices/gnd.sym} -570 -350 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -480 -360 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -470 -520 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -570 -400 0 0 {name=VS2 value=0}
C {devices/lab_wire.sym} -660 -470 0 0 {name=p5 sig_type=std_logic lab=vg
}
C {devices/lab_wire.sym} -530 -590 0 0 {name=p6 sig_type=std_logic lab=vd2}
C {devices/lab_wire.sym} -600 -430 0 0 {name=p7 sig_type=std_logic lab=vs2
}
C {devices/lab_wire.sym} -500 -490 0 0 {name=p8 sig_type=std_logic lab=vb2
}
C {devices/launcher.sym} -5 -775 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} -740 -730 0 0 {name=NGSPICE only_toplevel=true
value="
.control
pre_osdi /home/gmaranhao/Documents/MOSFET_model/Examples/GF180MCU/xschem/symbol/NMOS_ACM_2V0.osdi
save all

dc VG 0.1 3.3 5m

*gm for ACM
let gm_id = deriv(ln(i(Vs)))

*gm for GF180
let gm_id_gf = deriv(ln(i(Vs2)))

save gm_id gm_id_gf
write TB_nmos_acm.raw

.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} -590 -470 0 0 {name=M1
L=2.0u
W=2.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {/home/gmaranhao/Documents/MOSFET_model/Examples/IHP-SG13/xschem/symbol/nmos_acm.sym} -270 -460 0 0 {name=N1 
model=NMOS_ACM 
w=10u 
l=0.12u 
n=1.41
is=11.7u 
vt0=0.490
sigma=52.8m 
zeta=1p
}
