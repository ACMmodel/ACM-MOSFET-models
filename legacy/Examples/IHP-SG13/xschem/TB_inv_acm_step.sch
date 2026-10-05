v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 -520 -1180 -280 -1010 {}
L 4 -520 -840 -280 -1010 {}
L 4 -520 -1180 -520 -840 {}
L 4 -1030 -1180 -790 -1010 {}
L 4 -1030 -840 -790 -1010 {}
L 4 -1030 -1180 -1030 -840 {}
B 2 -1695 -650 -870 -40 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.2
ylabmag=1.2


dataset=-1
unitx=1
logx=0
logy=0















x1=0
color="4 6 5"
node="\\"Vin;vin\\"
\\"Vout-ACM2;vout\\"
\\"Vout-PSP;vout2\\""

y2=1.6
y1=0
x2=8e-11
sim_type=tran
linewidth_mult=10}
B 2 -870 -650 -45 -40 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=6
subdivx=3
xlabmag=1.2
ylabmag=1.2


dataset=-1
unitx=1
logx=0
logy=0















x1=0
color="6 5"
node="\\"Id(ACM);i(vs_i_acm)\\"
\\"Id(PSP);i(vs_i_psp)\\""

y2=0.009
y1=6.7e-10
x2=8e-11
sim_type=tran
linewidth_mult=10}
N -1160 -950 -1160 -930 {
lab=GND}
N -940 -1010 -750 -1010 {
lab=vout}
N -430 -820 -430 -800 {
lab=GND}
N -430 -1190 -360 -1190 {
lab=vdd}
N -430 -1190 -430 -1100 {
lab=vdd}
N -430 -1010 -430 -1000 {
lab=vout2}
N -470 -1010 -470 -970 {
lab=vin}
N -430 -970 -420 -970 {
lab=vss}
N -430 -1060 -420 -1060 {
lab=vdd}
N -420 -970 -420 -930 {
lab=vss}
N -430 -930 -420 -930 {
lab=vss}
N -430 -1100 -430 -1090 {
lab=vdd}
N -430 -930 -430 -880 {
lab=vss}
N -420 -1100 -420 -1060 {
lab=vdd}
N -430 -1100 -420 -1100 {
lab=vdd}
N -430 -1010 -240 -1010 {
lab=vout2}
N -650 -1010 -470 -1010 {
lab=vin}
N -940 -1010 -940 -1000 {
lab=vout}
N -980 -1010 -980 -970 {
lab=vin}
N -940 -970 -930 -970 {
lab=#net1}
N -940 -1060 -930 -1060 {
lab=vdd}
N -930 -970 -930 -930 {
lab=#net1}
N -940 -930 -930 -930 {
lab=#net1}
N -940 -1100 -940 -1090 {
lab=vdd}
N -940 -930 -940 -860 {
lab=#net1}
N -930 -1100 -930 -1060 {
lab=vdd}
N -940 -1100 -930 -1100 {
lab=vdd}
N -940 -1190 -870 -1190 {
lab=vdd}
N -940 -1190 -940 -1100 {
lab=vdd}
N -940 -800 -940 -780 {
lab=GND}
N -940 -1030 -940 -1010 {
lab=vout}
N -1160 -1010 -980 -1010 {
lab=vin}
N -980 -1060 -980 -1010 {
lab=vin}
N -430 -940 -430 -930 {
lab=vss}
N -430 -1030 -430 -1010 {
lab=vout2}
N -470 -1060 -470 -1010 {
lab=vin}
N -940 -940 -940 -930 {
lab=#net1}
N -240 -950 -240 -935 {
lab=GND}
N -750 -950 -750 -935 {
lab=GND}
C {devices/launcher.sym} -1125 -700 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code.sym} -1620 -1025 0 0 {name=NGSPICE only_toplevel=true

value="
.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
pre_osdi ./psp103_nqs.osdi
save all

tran 0.1p 80p
remzerovec
write TB_inv_acm_step.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} -870 -1160 0 0 {name=VDD value=1.5
}
C {devices/gnd.sym} -870 -1130 0 0 {name=l2 lab=GND
}
C {devices/gnd.sym} -1160 -930 0 0 {name=l3 lab=GND
}
C {devices/lab_wire.sym} -900 -1190 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {symbol/nmos_acm.sym} -950 -970 0 0 {name=N2 
model=NMOS_ACM 
w=10u 
l=0.12u 
n=1.41 
is=11.78u 
vt0=0.490
sigma=53mm 
zeta=7m
}
C {symbol/pmos_acm.sym} -950 -1060 0 0 {name=N1 
model=PMOS_ACM 
w=10u 
l=0.12u 
n=1.46 
is=9.39u 
vt0=0.478
sigma=48m 
zeta=31m
}
C {devices/lab_wire.sym} -750 -1010 0 0 {name=p2 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} -1120 -1010 0 0 {name=p7 sig_type=std_logic lab=vin
}
C {devices/gnd.sym} -430 -800 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -390 -1190 0 0 {name=p1 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} -430 -880 0 0 {name=p5 sig_type=std_logic lab=vss

}
C {devices/ammeter.sym} -430 -850 0 0 {name=Vs_i_psp}
C {devices/lab_wire.sym} -240 -1010 0 0 {name=p6 sig_type=std_logic lab=vout2
}
C {devices/lab_wire.sym} -610 -1010 0 0 {name=p8 sig_type=std_logic lab=vin
}
C {devices/ammeter.sym} -940 -830 0 0 {name=Vs_i_acm}
C {devices/gnd.sym} -940 -780 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -450 -970 2 1 {name=M1
L=0.12u
W=10.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} -1615 -1175 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -450 -1060 0 0 {name=M2
L=0.12u
W=10u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vsource.sym} -1160 -980 0 1 {name=VDD1 value="pulse(0 1.5 10p 10p 10p 100p 200p)"}
C {devices/capa.sym} -750 -980 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -240 -980 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -240 -935 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -750 -935 0 0 {name=l5 lab=GND}
