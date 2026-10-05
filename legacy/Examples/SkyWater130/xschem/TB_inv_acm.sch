v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -70 140 -40 {
lab=vout}
N 100 -100 100 -10 {
lab=vin}
N 140 -100 280 -100 {
lab=#net1}
N 140 -210 180 -210 {
lab=vdd}
N 140 -210 140 -130 {
lab=vdd}
N -120 -70 100 -70 {
lab=vin}
N -120 -10 -120 10 {
lab=GND}
N 140 20 140 50 {
lab=vss}
N 140 110 140 130 {
lab=GND}
N 140 -10 150 -10 {
lab=#net2}
N 150 -10 150 50 {
lab=#net2}
N 150 50 190 50 {
lab=#net2}
N 140 -50 220 -50 {
lab=vout}
N 220 -50 230 -50 {
lab=vout}
C {/home/gmaranhao/Desktop/gf180_work/ACM/nmos_acm.sym} 130 -10 0 0 {name=N2 
model=NMOS_ACM 
w=5u 
l=0.18u 
n=1.37 
is=5.52u 
vt0=0.558
sigma=27m 
zeta=56m
}
C {devices/vsource.sym} -120 -40 0 0 {name=VIN 
value="pulse(0 3.3 10p 10p 10p 200p 400p)"}
C {devices/vsource.sym} 180 -180 0 0 {name=VDD value=3.3}
C {devices/vsource.sym} 140 80 0 0 {name=VS value=0}
C {devices/vsource.sym} 280 -70 0 0 {name=VBP value=3.3}
C {devices/gnd.sym} 280 -40 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 190 80 0 0 {name=VBN value=0}
C {devices/gnd.sym} 190 110 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 -150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -120 10 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 140 130 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 380 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.model NMOS_ACM nmos_5PM
.model PMOS_ACM pmos_5PM
"}
C {devices/code_shown.sym} 390 -250 0 0 {name=NGSPICE only_toplevel=true

value="
.option gmin=1e-18
.control

pre_osdi /home/<USER>/<PATH-TO>/NMOS_ACM_2V0.osdi
pre_osdi /home/<USER>/<PATH-TO>/PMOS_ACM_2V0.osdi

.endc
.tran 0.1p 3n
.save all
"}
C {/home/gmaranhao/Desktop/gf180_work/ACM/pmos_acm.sym} 130 -100 0 0 {name=N1 
model=PMOS_ACM 
w=5u 
l=0.18u 
n=1.40 
is=1.82u 
vt0=0.525
sigma=24m 
zeta=35m
}
C {devices/lab_wire.sym} -50 -70 0 0 {name=p1 sig_type=std_logic lab=vin
}
C {devices/lab_wire.sym} 170 -210 0 0 {name=p3 sig_type=std_logic lab=vdd

}
C {devices/lab_wire.sym} 140 40 0 0 {name=p4 sig_type=std_logic lab=vss

}
C {devices/lab_wire.sym} 200 -50 0 0 {name=p5 sig_type=std_logic lab=vout
}
