v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -430 780 0 {flags=graph


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
color="4 6 7"
node="A
B
Y"
digital=1
sim_type=tran
divy=5
subdivx=5}
N -280 -215 -280 -195 {
lab=GND}
N -280 -300 -280 -275 {
lab=VDD}
N -280 -195 -280 -185 {
lab=GND}
N -205 -215 -205 -195 {
lab=GND}
N -205 -300 -205 -275 {
lab=VSS}
N -205 -195 -205 -185 {
lab=GND}
N 245 -660 415 -660 {
lab=A}
N 365 -620 415 -620 {
lab=B}
N 225 -600 245 -600 {
lab=VSS}
N 345 -560 365 -560 {
lab=VSS}
N 535 -640 580 -640 {
lab=Y}
C {devices/code_shown.sym} -460 -425 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {devices/code.sym} -470 -295 0 0 {name=NGSPICE only_toplevel=true

value="
.option gmin=1e-15

.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all


tran 1n 500n
remzerovec
write TB_nor2_acm.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} 245 -630 0 1 {name=VA value="pulse(0 3.3 50n 200p 200p 25n 100n)"}
C {devices/vsource.sym} -280 -245 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} -280 -185 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -280 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -205 -245 0 0 {name=VSS value=0}
C {devices/gnd.sym} -205 -185 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -205 -300 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 225 -600 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 345 -560 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 365 -590 0 1 {name=VA1 value="pulse(0 3.3 125n 200p 200p 50n 100n)"}
C {devices/launcher.sym} 65 -455 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload Tran Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/lab_wire.sym} 320 -660 0 1 {name=p6 sig_type=std_logic lab=A}
C {devices/lab_wire.sym} 385 -620 0 1 {name=p7 sig_type=std_logic lab=B}
C {symbol/nor2_acm.sym} 470 -640 0 0 {name=x1 m=1 VDDPIN=VDD VSSPIN=VSS}
C {devices/lab_wire.sym} 580 -640 0 1 {name=p5 sig_type=std_logic lab=Y}
