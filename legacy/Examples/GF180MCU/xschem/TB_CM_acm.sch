v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 350 -455 1130 -25 {flags=graph


ypos1=0.10382902
ypos2=1.904149

subdivy=4
unity=u


divx=6

xlabmag=1.5
ylabmag=1


dataset=-1
unitx=1
logx=0
logy=0















x1=0


linewidth_mult=4.0
y2=1.2e-05
y1=5.2e-16
x2=3.3


digital=0
sim_type=tran
divy=5
subdivx=5

color=4
node=i(v_iout)}
B 2 350 -25 1130 405 {flags=graph


ypos1=0.10382902
ypos2=1.904149

subdivy=4
unity=u


divx=6

xlabmag=1.5
ylabmag=1


dataset=-1
unitx=1
logx=0
logy=0















x1=0


linewidth_mult=4.0
y2=1.7e-06
y1=-3.8e-21
x2=3.3


digital=0
sim_type=tran
divy=5
subdivx=5


color=4
node=i(v_iout2)}
N 110 -120 110 -90 {
lab=VSS}
N 110 -90 250 -90 {
lab=VSS}
N 250 -120 250 -90 {
lab=VSS}
N 100 -150 110 -150 {
lab=VSS}
N 100 -150 100 -90 {
lab=VSS}
N 100 -90 110 -90 {
lab=VSS}
N 250 -150 260 -150 {
lab=VSS}
N 260 -150 260 -90 {
lab=VSS}
N 250 -90 260 -90 {
lab=VSS}
N 150 -150 210 -150 {
lab=#net1}
N 110 -230 110 -180 {
lab=#net1}
N 170 -200 170 -150 {
lab=#net1}
N 110 -200 170 -200 {
lab=#net1}
N 110 -320 110 -290 {
lab=VDD}
N 250 -290 290 -290 {
lab=out}
N 290 -230 290 -220 {
lab=GND}
N -250 -150 -250 -130 {
lab=GND}
N -250 -220 -250 -210 {
lab=VDD}
N -270 -220 -250 -220 {
lab=VDD}
N -170 -150 -170 -130 {
lab=GND}
N -170 -220 -170 -210 {
lab=VSS}
N -190 -220 -170 -220 {
lab=VSS}
N 250 -290 250 -260 {
lab=out}
N 250 -200 250 -180 {
lab=#net2}
N 110 310 110 340 {
lab=VSS}
N 110 340 250 340 {
lab=VSS}
N 250 310 250 340 {
lab=VSS}
N 100 280 110 280 {
lab=VSS}
N 100 280 100 340 {
lab=VSS}
N 100 340 110 340 {
lab=VSS}
N 250 280 260 280 {
lab=VSS}
N 260 280 260 340 {
lab=VSS}
N 250 340 260 340 {
lab=VSS}
N 150 280 210 280 {
lab=#net3}
N 110 200 110 250 {
lab=#net3}
N 170 230 170 280 {
lab=#net3}
N 110 230 170 230 {
lab=#net3}
N 110 110 110 140 {
lab=VDD}
N 250 140 290 140 {
lab=#net4}
N 290 200 290 210 {
lab=GND}
N 250 140 250 170 {
lab=#net4}
N 250 230 250 250 {
lab=#net5}
C {symbol/nmos_acm.sym} 120 -150 0 1 {name=N1 
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {symbol/nmos_acm.sym} 240 -150 0 0 {name=N2
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {devices/isource.sym} 110 -260 0 0 {name=I0 value=10u}
C {devices/vsource.sym} 290 -260 0 0 {name=Vout value=0}
C {devices/gnd.sym} 290 -220 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -250 -180 0 0 {name=VDD value=3.3 savecurrent=false}
C {devices/gnd.sym} -250 -130 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -250 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -445 -345 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/code.sym} -455 -215 0 0 {name=NGSPICE only_toplevel=true

value="
.option gmin=1e-15
.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all


dc Vout 0 3.3 1m
remzerovec
write TB_CM_acm.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} -170 -180 0 0 {name=VSS value=0 savecurrent=false}
C {devices/gnd.sym} -170 -130 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -170 -220 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 160 -90 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 415 -485 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/ammeter.sym} 250 -230 0 1 {name=V_iout savecurrent=true}
C {symbol/nmos_acm.sym} 120 280 0 1 {name=N3[1:10]
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {symbol/nmos_acm.sym} 240 280 0 0 {name=N4
model=NMOS_ACM 
w=2u 
l=2u 
n=1.38 
is=67.3n 
vt0=0.652
sigma=20m 
zeta=5m
}
C {devices/isource.sym} 110 170 0 0 {name=I1 value=10u}
C {devices/gnd.sym} 290 210 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 110 110 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 340 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ammeter.sym} 250 200 0 1 {name=V_iout2 savecurrent=true}
C {devices/bsource.sym} 290 170 0 0 {name=B1 VAR=V FUNC="V(out)"}
C {devices/lab_wire.sym} 280 -290 0 0 {name=p7 sig_type=std_logic lab=out}
