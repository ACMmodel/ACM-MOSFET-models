v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 530 -790 1040 -400 {flags=graph


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

color=5
x1=0.05
x2=3.3
node=i(gm_id)



y1=0.12
y2=28}
B 2 530 -400 1040 0 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1


divx=6
subdivx=3
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=1





color=4




node=i(vs)

y1=-13
y2=-4.4
x2=3.3
x1=0.05}
T {tcleval(VT0: [xschem raw value vt0 0])} 255 -615 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(IS0: [xschem raw value is 0])} 260 -590 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(n: [xschem raw value n 0])} 260 -565 0 0 0.4 0.4 {floater=1 layer=7}
N 50 -360 130 -360 {
lab=vg}
N 170 -470 170 -390 {
lab=#net1}
N 170 -470 250 -470 {
lab=#net1}
N 170 -330 170 -280 {
lab=#net2}
N 250 -410 250 -400 {
lab=GND}
N 270 -300 270 -280 {
lab=GND}
N 170 -220 170 -200 {
lab=GND}
N 50 -300 50 -280 {
lab=GND}
N 170 -360 270 -360 {
lab=#net3}
C {devices/vsource.sym} 250 -440 0 0 {name=Vds value=13m}
C {devices/vsource.sym} 270 -330 0 0 {name=V3 value=0}
C {devices/vsource.sym} 170 -250 0 0 {name=Vs value=0}
C {devices/gnd.sym} 50 -280 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 170 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 270 -280 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 250 -400 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 245 -655 0 0 {name=h4 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} 10 -820 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 150 -360 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
C {devices/vsource.sym} 50 -330 0 0 {name=Vgb value=0}
C {devices/code.sym} 0 -710 0 0 {name=NGSPICE
only_toplevel=true
value="

.control
save all
dc Vgb 0.05 3.3 1m

let gm_id = deriv(ln(i(Vs)))
save gm_id

meas dc gm_id_max MAX gm_id
let gm_id_vt = 0.531*gm_id_max
save gm_id_vt

meas dc vt0 FIND V(vg) WHEN gm_id=gm_id_vt
meas dc is_ FIND i(Vs) WHEN V(vg)=vt0

let is = is_/0.88
let VT_val=0.026
let n = 1/(gm_id_max*VT_val)
save is vt0 n
echo
echo
echo

echo Extracted parameters:
print is vt0 n


echo
echo
echo

remzerovec
write nmos_ext.raw

.endc

" }
C {devices/lab_wire.sym} 100 -360 0 0 {name=p1 sig_type=std_logic lab=vg}
