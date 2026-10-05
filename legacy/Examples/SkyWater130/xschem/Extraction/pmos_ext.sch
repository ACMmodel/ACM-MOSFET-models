v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 640 -800 1090 -400 {flags=graph


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


node=i(gm_id)




y2=31
y1=-26
x1=0.05
x2=2.49}
B 2 640 -400 1090 0 {flags=graph


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
















linewidth_mult=3.0




color=4
node=i(vd)

x1=0.05
x2=2.49

y1=-15
y2=-4.6}
N 350 -410 430 -410 {
lab=vg}
N 470 -520 470 -440 {
lab=#net1}
N 470 -520 550 -520 {
lab=#net1}
N 470 -380 470 -330 {
lab=#net2}
N 550 -460 550 -450 {
lab=GND}
N 570 -350 570 -330 {
lab=GND}
N 470 -270 470 -250 {
lab=GND}
N 350 -350 350 -330 {
lab=GND}
N 470 -410 570 -410 {
lab=#net3}
C {sky130_fd_pr/corner.sym} 510 -770 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 350 -380 0 0 {name=Vgb value=0}
C {devices/vsource.sym} 550 -490 0 0 {name=Vsd value=1.8}
C {devices/vsource.sym} 570 -380 0 0 {name=V3 value=1.8}
C {devices/vsource.sym} 470 -300 0 0 {name=Vd value=1.787}
C {devices/gnd.sym} 350 -330 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 470 -250 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 570 -330 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 550 -450 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 685 -835 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {sky130_fd_pr/pfet_01v8.sym} 450 -410 0 0 {name=M1
L=0.5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 420 -410 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/code.sym} 360 -770 0 0 {name=NGSPICE1
only_toplevel=true
value="

.control
save all
dc Vgb 0.05 2.5 20m

let gm_id = -deriv(ln(i(Vd)))
save gm_id

meas dc gm_id_max MAX gm_id
let gm_id_vt = 0.531*gm_id_max
save gm_id_vt

meas dc vt FIND V(vg) WHEN gm_id=gm_id_vt
let vt0=vt-1.8
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

"}
