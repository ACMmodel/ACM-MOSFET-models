v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 580 -650 1040 -250 {flags=graph


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
x2=1.8
node=i(gm_id)



y1=0.57
y2=30
digital=0
rainbow=0}
B 2 580 -250 1040 150 {flags=graph


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












y1=-14
y2=-5.4

x1=0.05
x2=1.8
color=4
node=i(vs)}
N 260 -260 340 -260 {
lab=vg}
N 380 -370 380 -290 {
lab=#net1}
N 380 -370 460 -370 {
lab=#net1}
N 380 -230 380 -180 {
lab=#net2}
N 460 -310 460 -300 {
lab=GND}
N 480 -200 480 -180 {
lab=GND}
N 380 -120 380 -100 {
lab=GND}
N 260 -200 260 -180 {
lab=GND}
N 380 -260 480 -260 {
lab=#net3}
C {sky130_fd_pr/corner.sym} 390 -630 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 260 -230 0 0 {name=Vgb value=0}
C {devices/vsource.sym} 460 -340 0 0 {name=Vds value=13m}
C {devices/vsource.sym} 480 -230 0 0 {name=V3 value=0}
C {devices/vsource.sym} 380 -150 0 0 {name=Vs value=0}
C {devices/gnd.sym} 260 -180 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 380 -100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 480 -180 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 460 -300 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} 605 -685 0 0 {name=h4 
descr="Ctrl-Left-Click to load/unload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw dc
"
}
C {sky130_fd_pr/nfet_01v8.sym} 360 -260 0 0 {name=M1
L=0.4
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 320 -260 0 0 {name=p1 sig_type=std_logic lab=vg}
C {devices/code.sym} 220 -630 0 0 {name=NGSPICE1
only_toplevel=true
value="

.control
  save all
  dc Vgb 0.05 1.8 1m

  let gm_id = deriv(ln(i(Vs)))
  save gm_id

  meas dc gm_id_max MAX gm_id
  let gm_id_vt = 0.531*gm_id_max
  save gm_id_vt

  meas dc vt0 FIND V(vg) WHEN gm_id=gm_id_vt
  meas dc is0_ FIND i(Vs) WHEN V(vg)=vt0

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
  write nmos_ext.raw
.endc

"}
