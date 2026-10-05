v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 690 -200 930 -30 {}
L 4 690 140 930 -30 {}
L 4 690 -200 690 140 {}
L 4 180 -200 420 -30 {}
L 4 180 140 420 -30 {}
L 4 180 -200 180 140 {}
B 2 30 310 960 700 {flags=graph


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
color="4 6 5"
node="\\"Vin;vin\\"
\\"Vout_ACM;vout\\"
\\"Vout_BSIM;vout2\\""
linewidth_mult=2.5
y2=3.3
y1=0
x2=3.3}
B 2 30 700 960 1090 {flags=graph


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
color="6 5"
node="\\"Id_ACM;i(vs_i_acm)\\"
\\"Id_BSIM;i(vs_i_bsim)\\""
linewidth_mult=3
y2=0.00045
y1=3.3e-12
x2=3.3}
N 50 30 50 50 {
lab=GND}
N 270 -30 460 -30 {
lab=vout}
N 170 -30 230 -30 {
lab=vin}
N 780 70 780 100 {
lab=vss}
N 780 160 780 180 {
lab=GND}
N 780 -210 850 -210 {
lab=vdd}
N 780 -210 780 -140 {
lab=vdd}
N 780 -50 780 -20 {
lab=vout2}
N 740 -80 740 10 {
lab=vin}
N 780 10 790 10 {
lab=vss}
N 780 -80 790 -80 {
lab=vdd}
N 790 10 790 50 {
lab=vss}
N 780 50 790 50 {
lab=vss}
N 780 -140 780 -110 {
lab=vdd}
N 780 40 780 70 {
lab=vss}
N 790 -120 790 -80 {
lab=vdd}
N 780 -120 790 -120 {
lab=vdd}
N 780 -30 970 -30 {
lab=vout2}
N 680 -30 740 -30 {
lab=vin}
N 560 -30 680 -30 {
lab=vin}
N 270 -50 270 -20 {
lab=vout}
N 230 -80 230 10 {
lab=vin}
N 270 10 280 10 {
lab=#net1}
N 270 -80 280 -80 {
lab=vdd}
N 280 10 280 50 {
lab=#net1}
N 270 50 280 50 {
lab=#net1}
N 270 -140 270 -110 {
lab=vdd}
N 270 40 270 70 {
lab=#net1}
N 280 -120 280 -80 {
lab=vdd}
N 270 -120 280 -120 {
lab=vdd}
N 170 -30 230 -30 {
lab=vin}
N 270 70 270 120 {
lab=#net1}
N 270 -210 340 -210 {
lab=vdd}
N 270 -210 270 -140 {
lab=vdd}
N 50 -30 180 -30 {
lab=vin}
N 270 180 270 200 {
lab=GND}
C {devices/code_shown.sym} -390 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/launcher.sym} 85 285 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code.sym} -400 -110 0 0 {name=NGSPICE only_toplevel=true

value="
*.option gmin=1e-18
.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all

op
remzerovec 
write TB_inv_acm_vt0.raw
set appendwrite

dc VIN 0 3.3 1m
remzerovec
write TB_inv_acm_vt0.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} 50 0 0 1 {name=VIN 
value=0
}
C {devices/vsource.sym} 340 -180 0 0 {name=VDD value=3.3
}
C {devices/gnd.sym} 340 -150 0 0 {name=l2 lab=GND
}
C {devices/gnd.sym} 50 50 0 0 {name=l3 lab=GND
}
C {devices/lab_wire.sym} 310 -210 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {devices/launcher.sym} 80 250 0 0 {name=h2
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {symbol/nmos_acm.sym} 260 10 0 0 {name=N2 
model=NMOS_ACM 
w=10u 
l=0.5u 
n=1.37 
is=1.33u 
vt0=0.692
sigma=6.1m 
zeta=0.1m
}
C {symbol/pmos_acm.sym} 260 -80 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.5u 
n=1.42 
is=0.41u 
vt0=0.791
sigma=6.1m 
zeta=0.1m
}
C {devices/lab_wire.sym} 460 -30 0 0 {name=p2 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} 90 -30 0 0 {name=p7 sig_type=std_logic lab=vin
}
C {devices/gnd.sym} 780 180 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 820 -210 0 0 {name=p1 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 780 100 0 0 {name=p5 sig_type=std_logic lab=vss

}
C {devices/ammeter.sym} 780 130 0 0 {name=Vs_i_bsim}
C {devices/lab_wire.sym} 970 -30 0 0 {name=p6 sig_type=std_logic lab=vout2
}
C {devices/lab_wire.sym} 600 -30 0 0 {name=p8 sig_type=std_logic lab=vin
}
C {symbols/nfet_03v3.sym} 760 10 0 0 {name=M1
L=0.5u
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
C {symbols/pfet_03v3.sym} 760 -80 0 0 {name=M2
L=0.5u
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
C {devices/ammeter.sym} 270 150 0 0 {name=Vs_i_acm}
C {devices/gnd.sym} 270 200 0 0 {name=l1 lab=GND}
