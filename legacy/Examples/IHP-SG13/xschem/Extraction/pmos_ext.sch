v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 515 -795 1025 -405 {flags=graph


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
x2=3.05
node=i(gm_id)



y1=0.21
y2=27}
B 2 515 -405 1025 -5 {flags=graph


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




node=i(vd)

y1=-11
y2=-4.5
x2=3.05
x1=0.05}
T {tcleval(VT0: [xschem raw value vt0 0])} 270 -595 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(IS0: [xschem raw value is0 0])} 275 -570 0 0 0.4 0.4 {floater=1 layer=7}
T {tcleval(n: [xschem raw value n 0])} 275 -545 0 0 0.4 0.4 {floater=1 layer=7}
N 155 -275 235 -275 {
lab=vg}
N 275 -385 275 -305 {
lab=#net1}
N 275 -385 355 -385 {
lab=#net1}
N 275 -245 275 -195 {
lab=#net2}
N 355 -325 355 -315 {
lab=GND}
N 375 -215 375 -195 {
lab=GND}
N 275 -135 275 -115 {
lab=GND}
N 155 -215 155 -195 {
lab=GND}
N 275 -275 375 -275 {
lab=#net3}
C {devices/vsource.sym} 155 -245 0 0 {name=Vgb value=0}
C {devices/vsource.sym} 355 -355 0 0 {name=Vsd value=3.3}
C {devices/vsource.sym} 375 -245 0 0 {name=V3 value=3.3}
C {devices/vsource.sym} 275 -165 0 0 {name=Vd value=3.287}
C {devices/gnd.sym} 155 -195 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 275 -115 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 375 -195 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 355 -315 0 0 {name=l4 lab=GND}
C {devices/code.sym} 0 -655 0 0 {name=NGSPICE1
only_toplevel=true
value="

.control
pre_osdi ./psp103_nqs.osdi
save all
dc Vgb 0.05 3.05 10m

let gm_id = -deriv(ln(i(Vd)))
save gm_id

meas dc gm_id_max MAX gm_id
let gm_id_vt = 0.531*gm_id_max
save gm_id_vt

meas dc vt FIND V(vg) WHEN gm_id=gm_id_vt
let vt0=vt-3.3
meas dc is0_ FIND i(Vd) WHEN V(vg)=vt

let is0 = is0_/0.88
let VT_val=0.026
let n = 1/(gm_id_max*VT_val)
save is0 vt0 n
echo
echo
echo

echo Extracted parameters:
print is0 vt0 n


echo
echo
echo

remzerovec
write pmos_ext.raw

.endc

" }
C {devices/lab_wire.sym} 205 -275 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/launcher.sym} 260 -635 0 0 {name=h4 
descr="Ctrl-Left-Click to Show" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {devices/code_shown.sym} -10 -790 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerMOShv.lib mos_tt
"}
C {sg13g2_pr/sg13_hv_pmos.sym} 255 -275 0 0 {name=M1
L=0.4u
W=10u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
