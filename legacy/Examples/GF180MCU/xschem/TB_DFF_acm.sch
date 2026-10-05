v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 10 -400 790 30 {flags=graph


ypos1=0.10382902
ypos2=1.904149

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


digital=1
sim_type=tran
divy=5
subdivx=5
color="6 4 7 5"
node="d
clk
q
qn"}
N 550 -630 600 -630 {
lab=Q}
N 550 -590 600 -590 {
lab=QN}
N 540 -630 550 -630 {
lab=Q}
N 540 -590 550 -590 {
lab=QN}
N 255 -630 420 -630 {
lab=D}
N 365 -590 420 -590 {
lab=CLK}
N 255 -490 255 -475 {
lab=VSS}
N 365 -530 365 -515 {
lab=VSS}
N -190 -180 -190 -160 {
lab=GND}
N -260 -180 -260 -160 {
lab=GND}
N -260 -250 -260 -240 {
lab=VDD}
N -190 -250 -190 -240 {
lab=VSS}
N -190 -250 -170 -250 {
lab=VSS}
N 255 -570 255 -560 {
lab=VSS}
N 255 -500 255 -490 {
lab=VSS}
N 255 -560 255 -500 {
lab=VSS}
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


tran 0.1n 500n
remzerovec
write TB_DFF_acm.raw
set appendwrite

.endc
"}
C {devices/vsource.sym} 255 -600 0 1 {name=VA value="pulse(0 3.3 10n 200p 200p 50n 100n)"}
C {devices/lab_wire.sym} 595 -630 0 1 {name=p5 sig_type=std_logic lab=Q}
C {devices/vsource.sym} 365 -560 0 0 {name=Vclk value="pulse(0 3.3 85n 200p 200p 10n 80n)"}
C {devices/launcher.sym} 75 -425 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload Tran Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/lab_wire.sym} 330 -630 0 1 {name=p6 sig_type=std_logic lab=D}
C {devices/lab_wire.sym} 395 -590 0 1 {name=p7 sig_type=std_logic lab=CLK}
C {devices/lab_wire.sym} 595 -590 0 1 {name=p8 sig_type=std_logic lab=QN}
C {symbol/DFF_acm.sym} 480 -610 0 0 {name=x1 m=1 VDDPIN=VDD VSSPIN=VSS}
C {devices/vsource.sym} -260 -210 0 1 {name=VDD value=3.3}
C {devices/vsource.sym} -190 -210 0 1 {name=VSS value=0}
C {devices/gnd.sym} -260 -160 0 1 {name=l1 lab=GND}
C {devices/gnd.sym} -190 -160 0 1 {name=l3 lab=GND}
C {devices/vdd.sym} -260 -250 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -250 0 0 {name=l7 lab=VSS}
C {devices/gnd.sym} 365 -515 0 0 {name=l9 lab=VSS}
C {devices/gnd.sym} 255 -475 0 0 {name=l10 lab=VSS}
