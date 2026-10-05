v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 250 -410 760 -10 {flags=graph


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















x1=0.01
color="4 5"
node="\\"Vin;vin\\"
\\"Vout;vout\\""
linewidth_mult=3.0
y2=3.3
y1=0
x2=3.3}
B 2 250 -620 760 -480 {flags=graph


ypos1=0.55
ypos2=29
divy=5
subdivy=4
unity=1


divx=6

xlabmag=1.2
ylabmag=2.2


dataset=-1
unitx=1
logx=0
logy=0





















linewidth_mult=3.0
subdivx=3

color="4 5"
x1=5e-11
x2=1.05e-09
node="\\"Vin;vin\\"
\\"Vout;vout\\""



y1=-0.22

digital=0
y2=3.6}
N 70 -260 70 -230 {
lab=vout}
N 30 -290 30 -200 {
lab=vin}
N 70 -400 110 -400 {
lab=vdd}
N 70 -400 70 -320 {
lab=vdd}
N -190 -260 30 -260 {
lab=vin}
N -190 -200 -190 -180 {
lab=GND}
N 70 -170 70 -140 {
lab=vss}
N 70 -80 70 -60 {
lab=GND}
N 70 -200 80 -200 {
lab=vss}
N 70 -240 150 -240 {
lab=vout}
N 150 -240 160 -240 {
lab=vout}
N 110 -400 140 -400 {
lab=vdd}
N 70 -290 80 -290 {
lab=vdd}
N 80 -340 80 -290 {
lab=vdd}
N 70 -340 80 -340 {
lab=vdd}
N 80 -200 80 -160 {
lab=vss}
N 70 -160 80 -160 {
lab=vss}
C {symbol/nmos_acm.sym} 60 -200 0 0 {name=N2 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=56m
}
C {devices/vsource.sym} -190 -230 0 1 {name=VIN 
value="pulse(0 3.3 10p 10p 10p 200p 400p)"}
C {devices/vsource.sym} 140 -370 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 140 -340 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -190 -180 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 70 -60 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -450 -630 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_ACM
.model PMOS_ACM pmos_ACM
"}
C {symbol/pmos_acm.sym} 60 -290 0 0 {name=N1 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=35m
}
C {devices/lab_wire.sym} -120 -260 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {devices/lab_wire.sym} 100 -400 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 70 -140 0 0 {name=p4 sig_type=std_logic lab=vss

}
C {devices/lab_wire.sym} 130 -240 0 0 {name=p5 sig_type=std_logic lab=vout
}
C {devices/ammeter.sym} 70 -110 0 0 {name=Vs_i}
C {devices/launcher.sym} 305 -435 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload DC Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/launcher.sym} 305 -645 0 0 {name=h1 
descr="Ctrl-Left-Click to load/unload Transient Files" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/code.sym} -460 -480 0 0 {name=NGSPICE1 only_toplevel=true

value="
.option gmin=1e-18
.control
pre_osdi ./NMOS_ACM_2V0.osdi
pre_osdi ./PMOS_ACM_2V0.osdi
save all

tran 1p 1n
write TB_inv_acm.raw
set appendwrite

dc VIN 0 3.3 1m
remzerovec
write TB_inv_acm.raw

.endc
"}
