v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 220 -620 250 -570 {}
L 4 250 -570 280 -620 {}
L 4 220 -620 280 -620 {}
L 4 230 -640 230 -620 {}
L 4 270 -640 270 -620 {}
L 4 250 -570 250 -550 {}
L 4 230 -617.5 230 -612.5 {}
L 4 227.5 -615 232.5 -615 {}
L 4 270 -617.5 270 -612.5 {}
B 2 690 -790 1200 -400 {flags=graph


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




y1=0.0015
y2=0.044
color=4
node=sigma
x1=-3.9886}
B 2 690 -390 1200 0 {flags=graph


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




y1=2.8
y2=3


x1=-3.9886
color=5
node=vg}
T {tcleval(sigma: [xschem raw value sigma_value 0])} 225 -225 0 0 0.4 0.4 {floater=1 layer=7}
N 440 -830 440 -810 {
lab=VDD}
N 440 -750 440 -740 {
lab=GND}
N 400 -830 440 -830 {
lab=VDD}
N 400 -550 400 -530 {
lab=VDD}
N 380 -570 400 -570 {
lab=VDD}
N 400 -500 410 -500 {
lab=VDD}
N 410 -550 410 -500 {
lab=VDD}
N 400 -550 410 -550 {
lab=VDD}
N 400 -470 400 -410 {
lab=Vd2}
N 250 -550 250 -500 {
lab=Vg}
N 530 -660 530 -620 {
lab=Vd}
N 270 -660 530 -660 {
lab=Vd}
N 270 -660 270 -640 {
lab=Vd}
N 200 -640 230 -640 {
lab=Vd2}
N 200 -640 200 -410 {
lab=Vd2}
N 200 -410 400 -410 {
lab=Vd2}
N 530 -560 530 -530 {
lab=GND}
N 400 -350 400 -330 {
lab=GND}
N 400 -570 400 -550 {
lab=VDD}
N 60 -610 60 -580 {
lab=Vg}
N 60 -520 60 -490 {
lab=GND}
N 0 -530 20 -530 {
lab=Vd}
N 0 -570 20 -570 {
lab=Vd2}
N 250 -500 360 -500 {
lab=Vg}
C {devices/code.sym} 200 -830 0 0 {name=NGSPICE
only_toplevel=true
value="
.option gmin=1e-18


.control
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
C {devices/isource.sym} 400 -380 0 0 {name=I1 value=10n
}
C {devices/vsource.sym} 530 -590 0 0 {name=Vd_bias value=0
}
C {devices/gnd.sym} 400 -330 0 0 {name=l1 lab=GND
}
C {devices/vsource.sym} 440 -780 0 1 {name=Vdd value=3.3}
C {devices/gnd.sym} 440 -740 0 1 {name=l3 lab=GND}
C {devices/lab_wire.sym} 250 -520 0 0 {name=p1 sig_type=std_logic lab=Vg
}
C {devices/lab_wire.sym} 390 -660 0 0 {name=p2 sig_type=std_logic lab=Vd}
C {devices/lab_wire.sym} 420 -830 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 400 -570 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 530 -530 0 0 {name=l4 lab=GND
}
C {devices/vcvs.sym} 60 -550 0 0 {name=E1 value=100}
C {devices/lab_wire.sym} 0 -570 0 0 {name=p6 sig_type=std_logic lab=Vd2
}
C {devices/lab_wire.sym} 0 -530 0 0 {name=p8 sig_type=std_logic lab=Vd
}
C {devices/gnd.sym} 60 -490 0 0 {name=l5 lab=GND
}
C {devices/lab_wire.sym} 60 -610 0 0 {name=p5 sig_type=std_logic lab=Vg
}
C {devices/lab_wire.sym} 210 -640 0 0 {name=p7 sig_type=std_logic lab=Vd2
}
C {devices/launcher.sym} 245 -265 0 0 {name=h1 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {symbols/pfet_03v3.sym} 380 -500 0 0 {name=M1
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
C {devices/code_shown.sym} 205 -985 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
