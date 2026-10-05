v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 10 -400 790 30 {flags=graph


ypos1=-0.00032
ypos2=1.8

subdivy=4
unity=1


divx=6

xlabmag=1.5
ylabmag=1


dataset=-1
unitx=1
logx=0
logy=0















x1=0


linewidth_mult=4.0
y2=3.3
y1=0
x2=5e-07
color="4 7"
node="A
Y"
digital=1
sim_type=tran
divy=5
subdivx=5}
N -270 -185 -270 -165 {
lab=GND}
N -270 -270 -270 -245 {
lab=VDD}
N -270 -165 -270 -155 {
lab=GND}
N -195 -185 -195 -165 {
lab=GND}
N -195 -270 -195 -245 {
lab=VSS}
N -195 -165 -195 -155 {
lab=GND}
N 255 -500 275 -500 {
lab=VSS}
N 270 -560 330 -560 {
lab=A}
N 410 -560 450 -560 {
lab=Y}
C {devices/code_shown.sym} -450 -395 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/code.sym} -460 -265 0 0 {name=NGSPICE only_toplevel=true

value="
.option gmin=1e-15

.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all


tran 1n 500n
remzerovec
write TB_not_acm.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} 275 -530 0 1 {name=VA value="pulse(0 3.3 50n 200p 200p 50n 100n)"}
C {devices/vsource.sym} -270 -215 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} -270 -155 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -270 -270 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -195 -215 0 0 {name=VSS value=0}
C {devices/gnd.sym} -195 -155 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -195 -270 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 255 -500 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 75 -425 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload Tran Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/lab_wire.sym} 300 -560 0 1 {name=p6 sig_type=std_logic lab=A}
C {symbol/not_acm.sym} 370 -560 0 0 {name=x1 m=1 VDDPIN=VDD VSSPIN=VSS}
C {devices/lab_wire.sym} 450 -560 0 1 {name=p4 sig_type=std_logic lab=Y}
