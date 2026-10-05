v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -400 20 -370 70 {}
L 4 -370 70 -340 20 {}
L 4 -400 20 -340 20 {}
L 4 -390 0 -390 20 {}
L 4 -350 0 -350 20 {}
L 4 -370 70 -370 90 {}
L 4 -390 22.5 -390 27.5 {}
L 4 -392.5 25 -387.5 25 {}
L 4 -350 22.5 -350 27.5 {}
B 2 70 -150 580 240 {flags=graph


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



x2=0




y1=0.0062
y2=0.029
color=4
node=sigma
x1=-3.9886}
B 2 70 250 580 640 {flags=graph


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



x2=0




y1=2.7
y2=2.9


x1=-3.9886
color=5
node=vg}
T {tcleval(sigma: [xschem raw value sigma_value 0])} -395 415 0 0 0.4 0.4 {floater=1 layer=7}
N -180 -190 -180 -170 {
lab=VDD}
N -180 -110 -180 -100 {
lab=GND}
N -220 -190 -180 -190 {
lab=VDD}
N -220 90 -220 110 {
lab=VDD}
N -240 70 -220 70 {
lab=VDD}
N -220 140 -210 140 {
lab=VDD}
N -210 90 -210 140 {
lab=VDD}
N -220 90 -210 90 {
lab=VDD}
N -220 170 -220 230 {
lab=Vd2}
N -370 90 -370 140 {
lab=Vg}
N -90 -20 -90 20 {
lab=Vd}
N -350 -20 -90 -20 {
lab=Vd}
N -350 -20 -350 0 {
lab=Vd}
N -420 -0 -390 -0 {
lab=Vd2}
N -420 -0 -420 230 {
lab=Vd2}
N -420 230 -220 230 {
lab=Vd2}
N -90 80 -90 110 {
lab=GND}
N -220 290 -220 310 {
lab=GND}
N -220 70 -220 90 {
lab=VDD}
N -560 30 -560 60 {
lab=Vg}
N -560 120 -560 150 {
lab=GND}
N -620 110 -600 110 {
lab=Vd}
N -620 70 -600 70 {
lab=Vd2}
N -370 140 -260 140 {
lab=Vg}
C {devices/code.sym} -420 -190 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
pre_osdi ./psp103_nqs.osdi
save all

dc Vd_bias  0 -4 -25.9m

let vd_interp = -3.3/3
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
write pmos_sigma_ext.raw

.endc


" }
C {devices/isource.sym} -220 260 0 0 {name=I1 value=350n
}
C {devices/vsource.sym} -90 50 0 0 {name=Vd_bias value=0
}
C {devices/gnd.sym} -220 310 0 0 {name=l1 lab=GND
}
C {devices/vsource.sym} -180 -140 0 1 {name=Vdd value=3.3}
C {devices/gnd.sym} -180 -100 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} -370 120 0 0 {name=p1 sig_type=std_logic lab=Vg
}
C {devices/lab_wire.sym} -230 -20 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {devices/lab_wire.sym} -200 -190 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -220 70 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -90 110 0 0 {name=l4 lab=GND
}
C {devices/vcvs.sym} -560 90 0 0 {name=E1 value=100}
C {devices/lab_wire.sym} -620 70 0 0 {name=p6 sig_type=std_logic lab=Vd2
}
C {devices/lab_wire.sym} -620 110 0 0 {name=p8 sig_type=std_logic lab=Vd
}
C {devices/gnd.sym} -560 150 0 0 {name=l5 lab=GND
}
C {devices/lab_wire.sym} -560 30 0 0 {name=p5 sig_type=std_logic lab=Vg
}
C {devices/lab_wire.sym} -410 0 0 0 {name=p7 sig_type=std_logic lab=Vd2
}
C {devices/code_shown.sym} -390 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
"}
C {devices/launcher.sym} -375 375 0 0 {name=h1 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {sg13g2_pr/sg13_hv_pmos.sym} -240 140 0 0 {name=M2
L=0.4u
W=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
