v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 170 -170 410 0 {}
L 4 170 170 410 0 {}
L 4 170 -170 170 170 {}
L 4 570 -170 810 0 {}
L 4 570 170 810 0 {}
L 4 570 -170 570 170 {}
L 4 970 -170 1210 0 {}
L 4 970 170 1210 0 {}
L 4 970 -170 970 170 {}
B 2 480 260 1260 690 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.5
ylabmag=1.5


dataset=-1
unitx=1
logx=0
logy=0















x1=0
color=4
node="\\"Vout;vout\\""
linewidth_mult=3.0
y2=1.8
y1=-0.00032
x2=2e-08}
N 260 -180 260 -110 {
lab=vdd}
N 260 -20 260 10 {
lab=#net1}
N 220 -50 220 40 {
lab=vout}
N 260 40 270 40 {
lab=GND}
N 260 -50 270 -50 {
lab=vdd}
N 270 40 270 80 {
lab=GND}
N 260 80 270 80 {
lab=GND}
N 260 -110 260 -80 {
lab=vdd}
N 260 70 260 100 {
lab=GND}
N 270 -90 270 -50 {
lab=vdd}
N 260 -90 270 -90 {
lab=vdd}
N 260 0 450 0 {
lab=#net1}
N 160 0 220 0 {
lab=vout}
N 40 0 160 0 {
lab=vout}
N 260 -180 290 -180 {
lab=vdd}
N 450 0 560 0 {
lab=#net1}
N 260 100 260 150 {
lab=GND}
N 660 -180 660 -110 {
lab=vdd}
N 660 -20 660 10 {
lab=#net2}
N 620 -50 620 40 {
lab=#net1}
N 660 40 670 40 {
lab=GND}
N 660 -50 670 -50 {
lab=vdd}
N 670 40 670 80 {
lab=GND}
N 660 80 670 80 {
lab=GND}
N 660 -110 660 -80 {
lab=vdd}
N 660 70 660 100 {
lab=GND}
N 670 -90 670 -50 {
lab=vdd}
N 660 -90 670 -90 {
lab=vdd}
N 660 0 850 0 {
lab=#net2}
N 560 0 620 0 {
lab=#net1}
N 660 -180 690 -180 {
lab=vdd}
N 850 0 960 0 {
lab=#net2}
N 660 100 660 150 {
lab=GND}
N 1060 -180 1060 -110 {
lab=vdd}
N 1060 -20 1060 10 {
lab=vout}
N 1020 -50 1020 40 {
lab=#net2}
N 1060 40 1070 40 {
lab=GND}
N 1060 -50 1070 -50 {
lab=vdd}
N 1070 40 1070 80 {
lab=GND}
N 1060 80 1070 80 {
lab=GND}
N 1060 -110 1060 -80 {
lab=vdd}
N 1060 70 1060 100 {
lab=GND}
N 1070 -90 1070 -50 {
lab=vdd}
N 1060 -90 1070 -90 {
lab=vdd}
N 960 0 1020 0 {
lab=#net2}
N 1060 -180 1090 -180 {
lab=vdd}
N 1060 100 1060 150 {
lab=GND}
N 40 -210 1240 -210 {
lab=vout}
N 1060 -0 1240 0 {
lab=vout}
N 60 40 60 80 {
lab=vdd}
N 1240 60 1240 70 {
lab=GND}
N 880 60 880 70 {
lab=GND}
N 480 60 480 70 {
lab=GND}
N 40 -210 40 -0 {
lab=vout}
N 1240 -210 1240 0 {
lab=vout}
C {devices/vsource.sym} 60 110 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 60 140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 260 150 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 60 40 0 1 {name=p3 sig_type=std_logic lab=vdd

}
C {symbol/nmos_acm.sym} 250 40 0 0 {name=N2 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=\{zeta_var\}
}
C {symbol/pmos_acm.sym} 250 -50 0 0 {name=N1 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=\{zeta_var\}
}
C {devices/lab_wire.sym} 290 -180 0 0 {name=p1 sig_type=std_logic lab=vdd

}
C {devices/capa.sym} 480 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 660 150 0 0 {name=l1 lab=GND}
C {symbol/nmos_acm.sym} 650 40 0 0 {name=N3 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=\{zeta_var\}
}
C {symbol/pmos_acm.sym} 650 -50 0 0 {name=N4 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=\{zeta_var\}
}
C {devices/lab_wire.sym} 690 -180 0 0 {name=p2 sig_type=std_logic lab=vdd

}
C {devices/capa.sym} 880 30 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1060 150 0 0 {name=l3 lab=GND}
C {symbol/nmos_acm.sym} 1050 40 0 0 {name=N5 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=\{zeta_var\}
}
C {symbol/pmos_acm.sym} 1050 -50 0 0 {name=N6 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=\{zeta_var\}
}
C {devices/lab_wire.sym} 1090 -180 0 0 {name=p4 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 100 -210 0 1 {name=p5 sig_type=std_logic lab=vout

}
C {devices/code_shown.sym} 10 240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/launcher.sym} 545 235 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload Tran Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code.sym} 0 370 0 0 {name=NGSPICE only_toplevel=true

value="

.param zeta_var = 0.1m

.ic V(vout)=1.65
.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all

tran 0.1p 20n
remzerovec 
write TB_rosc_acm.raw

.endc
"}
C {devices/gnd.sym} 480 70 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 880 70 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 1240 30 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1240 70 0 0 {name=l7 lab=GND}
