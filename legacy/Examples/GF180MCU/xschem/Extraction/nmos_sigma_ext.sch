v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -240 370 -210 420 {}
L 4 -210 420 -180 370 {}
L 4 -240 370 -180 370 {}
L 4 -230 350 -230 370 {}
L 4 -190 350 -190 370 {}
L 4 -210 420 -210 440 {}
L 4 -230 372.5 -230 377.5 {}
L 4 -232.5 375 -227.5 375 {}
L 4 -190 372.5 -190 377.5 {}
B 2 30 130 540 520 {flags=graph


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


x1=0.2
x2=3.4893




y1=0.023
y2=0.037
color=4
node=sigma}
B 2 30 520 540 910 {flags=graph


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


x1=0.2
x2=3.4893




y1=0.22
y2=0.31





color=7
node=vg}
T {tcleval(sigma: [xschem raw value sigma_value 0])} -275 145 0 0 0.4 0.4 {floater=1 layer=7}
N -360 390 -360 480 {
lab=Vd2}
N -210 440 -210 510 {
lab=Vg}
N -320 510 -210 510 {
lab=Vg}
N -360 350 -230 350 {
lab=Vd2}
N -360 340 -360 390 {
lab=Vd2}
N -190 350 -90 350 {
lab=Vd}
N -90 350 -90 450 {
lab=Vd}
N -360 540 -360 560 {
lab=GND}
N -360 560 -90 560 {
lab=GND}
N -90 510 -90 560 {
lab=GND}
N -370 510 -360 510 {
lab=GND}
N -370 510 -370 560 {
lab=GND}
N -370 560 -360 560 {
lab=GND}
N -360 260 -360 280 {
lab=#net1}
N -410 260 -360 260 {
lab=#net1}
N -410 260 -410 280 {
lab=#net1}
N -410 340 -410 350 {
lab=GND}
N -500 390 -500 420 {
lab=Vg}
N -500 480 -500 510 {
lab=GND}
N -560 470 -540 470 {
lab=Vd}
N -560 430 -540 430 {
lab=Vd2}
C {devices/code_shown.sym} -440 -30 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code.sym} -450 80 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all

dc Vd 0.2 3.5 25.9m

let vd_interp = 3.3/3
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
C {devices/isource.sym} -360 310 0 0 {name=I0 value=1n}
C {devices/vsource.sym} -90 480 0 0 {name=Vd value=0}
C {devices/gnd.sym} -220 560 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -410 310 0 1 {name=Vdd value=3.3}
C {devices/gnd.sym} -410 350 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} -250 510 0 0 {name=p1 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} -120 350 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {devices/launcher.sym} -235 115 0 0 {name=h1 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/vcvs.sym} -500 450 0 0 {name=E1 value=1000}
C {devices/lab_wire.sym} -560 430 0 0 {name=p6 sig_type=std_logic lab=Vd2}
C {devices/lab_wire.sym} -560 470 0 0 {name=p8 sig_type=std_logic lab=Vd}
C {devices/gnd.sym} -500 510 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -500 390 0 0 {name=p4 sig_type=std_logic lab=Vg}
C {devices/lab_wire.sym} -270 350 0 0 {name=p3 sig_type=std_logic lab=Vd2}
C {symbols/nfet_03v3.sym} -340 510 0 1 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
