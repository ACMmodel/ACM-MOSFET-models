v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 240 -240 270 -190 {}
L 4 270 -190 300 -240 {}
L 4 240 -240 300 -240 {}
L 4 250 -260 250 -240 {}
L 4 290 -260 290 -240 {}
L 4 270 -190 270 -170 {}
L 4 250 -237.5 250 -232.5 {}
L 4 247.5 -235 252.5 -235 {}
L 4 290 -237.5 290 -232.5 {}
B 2 520 -440 1030 -50 {flags=graph


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





















linewidth_mult=4.0
subdivx=3


x1=0.05
x2=1.4745




y1=0.011
y2=0.21




color=4
node=sigma}
B 2 520 -50 1030 340 {flags=graph


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





















linewidth_mult=4.0
subdivx=3


x1=0.05
x2=1.4745




y1=0.083
y2=0.13





color=7
node=vg}
T {tcleval(sigma: [xschem raw value sigma_value 0])} 95 65 0 0 0.4 0.4 {floater=1 layer=7}
N 270 -170 270 -100 {
lab=Vg}
N 160 -100 270 -100 {
lab=Vg}
N 120 -260 250 -260 {
lab=Vd2}
N 120 -260 120 -130 {
lab=Vd2}
N 290 -260 390 -260 {
lab=Vd}
N 390 -260 390 -160 {
lab=Vd}
N 120 -70 120 -50 {
lab=GND}
N 120 -50 390 -50 {
lab=GND}
N 390 -100 390 -50 {
lab=GND}
N 110 -100 120 -100 {
lab=GND}
N 110 -100 110 -50 {
lab=GND}
N 110 -50 120 -50 {
lab=GND}
N 120 -350 120 -330 {
lab=#net1}
N 70 -350 120 -350 {
lab=#net1}
N 70 -350 70 -330 {
lab=#net1}
N 70 -270 70 -260 {
lab=GND}
N 120 -270 120 -260 {
lab=Vd2}
N 400 -450 400 -420 {
lab=Vg}
N 400 -360 400 -330 {
lab=GND}
N 340 -370 360 -370 {
lab=Vd}
N 340 -410 360 -410 {
lab=Vd2}
C {devices/code.sym} 30 -480 0 0 {name=NGSPICE
only_toplevel=true
value="

.option gmin = 1e-18

.nodeset V(vd2)=1.5

.control
pre_osdi ./psp103_nqs.osdi
save all

dc Vd_bias 0.05 1.5 25.9m

let vd_interp = 1.5/3
let sigma = -deriv(V(vg))/deriv(V(vd))
save sigma

echo
echo
echo


echo Sigma @ VD=$&vd_interp:
meas dc sigma_value FIND sigma WHEN V(vd)=vd_interp

echo
echo
echo
write nmos_sigma_ext.raw

.endc


" }
C {devices/isource.sym} 120 -300 0 0 {name=I0 value=100n}
C {devices/vsource.sym} 390 -130 0 0 {name=Vd_bias value=0}
C {devices/gnd.sym} 260 -50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 70 -300 0 1 {name=Vdd value=1.5}
C {devices/gnd.sym} 70 -260 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} 230 -100 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} 360 -260 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -100 2 0 {name=M1
L=0.12u
W=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 210 -260 0 0 {name=p3 sig_type=std_logic lab=Vd2}
C {devices/vcvs.sym} 400 -390 0 0 {name=E1 value=100}
C {devices/lab_wire.sym} 340 -410 0 0 {name=p6 sig_type=std_logic lab=Vd2}
C {devices/lab_wire.sym} 340 -370 0 0 {name=p8 sig_type=std_logic lab=Vd}
C {devices/gnd.sym} 400 -330 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 400 -450 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {devices/launcher.sym} 135 35 0 0 {name=h1 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} 40 -600 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
"}
