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












y1=2.5e-12
y2=0.0025
x2=3.3
x1=-0.05
color="4 5"
node="\\"ID_ACM;i(vd)\\"
\\"ID_GF;i(vd2)\\""
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
x1=-0.05
x2=3.3
node="\\"gm/ID - ACM;i(gm_id)\\"
\\"gm/ID - GF180;i(gm_id_gf)\\""



y1=0.58
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
x2=3.3
x1=-0.05
color="4 5"
node="\\"ID_ACM;i(vd)\\"
\\"ID_GF;i(vd2)\\""
linewidth_mult=3.0}
N -710 -330 -630 -330 {
lab=vg}
N -590 -440 -590 -360 {
lab=vs2}
N -590 -440 -510 -440 {
lab=vs2}
N -590 -300 -590 -250 {
lab=vd2}
N -510 -380 -510 -370 {
lab=GND}
N -490 -270 -490 -250 {
lab=GND}
N -590 -190 -590 -170 {
lab=GND}
N -395 -275 -395 -255 {
lab=GND}
N -590 -330 -490 -330 {
lab=#net1}
N -395 -335 -315 -335 {
lab=vg}
N -275 -445 -275 -365 {
lab=vs}
N -275 -445 -195 -445 {
lab=vs}
N -275 -305 -275 -255 {
lab=vd}
N -195 -385 -195 -375 {
lab=GND}
N -175 -275 -175 -255 {
lab=GND}
N -275 -195 -275 -175 {
lab=GND}
N -275 -335 -175 -335 {
lab=#net2}
C {devices/launcher.sym} -5 -775 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/vsource.sym} -395 -305 0 0 {name=VG value=0}
C {devices/vsource.sym} -510 -410 0 0 {name=VS2 value=3.3}
C {devices/vsource.sym} -490 -300 0 0 {name=VB2 value=3.3}
C {devices/vsource.sym} -590 -220 0 0 {name=VD2 value=0}
C {devices/gnd.sym} -395 -255 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -590 -170 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} -490 -250 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -510 -370 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -590 -275 0 0 {name=p11 sig_type=std_logic lab=vd2}
C {devices/lab_wire.sym} -555 -440 0 0 {name=p10 sig_type=std_logic lab=vs2
}
C {devices/vsource.sym} -195 -415 0 0 {name=VS value=3.3}
C {devices/vsource.sym} -175 -305 0 0 {name=VB value=3.3}
C {devices/vsource.sym} -275 -225 0 0 {name=VD value=0}
C {devices/gnd.sym} -275 -175 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -175 -255 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -195 -375 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -345 -335 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} -275 -280 0 0 {name=p2 sig_type=std_logic lab=vd}
C {devices/lab_wire.sym} -240 -445 0 0 {name=p3 sig_type=std_logic lab=vs
}
C {devices/lab_wire.sym} -690 -330 0 0 {name=p4 sig_type=std_logic lab=vg}
C {sg13g2_pr/sg13_hv_pmos.sym} -610 -330 0 0 {name=M1
L=0.4u
W=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {/home/gmaranhao/Documents/MOSFET_model/Examples/IHP-SG13/xschem/symbol/pmos_acm.sym} -285 -335 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.4u 
n=1.47 
is=0.67u
vt0=0.617
sigma=9m 
zeta=5.7m
}
C {devices/code.sym} -540 -730 0 0 {name=NGSPICE only_toplevel=true

value="

.control
pre_osdi ./PMOS_ACM_2V0.osdi
pre_osdi ./psp103_nqs.osdi
ssave all

dc VG -0.05 3.3 5m


*gm for ACM
let gm_id = -deriv(ln(i(Vd)))

*gm for GF180
let gm_id_gf = -deriv(ln(i(Vd2)))

save gm_id gm_id_gf
write TB_pmos_acm.raw

.endc
"}
C {devices/code_shown.sym} -550 -890 0 0 {name=MODELS2 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.model PMOS_ACM pmos_ACM
"}
