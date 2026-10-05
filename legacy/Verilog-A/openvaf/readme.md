# Getting started with OpenVAF

OpenVAF is an executable open-source tool designed to convert Verilog-A (".va") files into ".osdi" files. These ".osdi" files enable the insertion of the [ACM2V0](/legacy/Verilog-A/) model into the ngspice 39+ simulator.

Build a OSDI file for ngspice using OpenVAF:

* [OpenVAF site](https://openvaf.semimod.de/)

* [OpenVAF GitHub repo](https://github.com/pascalkuthe/OpenVAF)

* [How to use](https://openvaf.semimod.de/docs/getting-started/usage/)


### How to add ".osdi" files to ngspice netlist
```
* model definitions:
.model NMOS_ACM nmos_ACM

VG1 g1 0 DC 0
VS1 s1 0 DC 0
VB1 b1 0 DC 0
VD1 d1 0 DC 1.8

N1 d1 g1 s1 b1 NMOS_ACM W=1u L=1u n=1.3 IS=5u VT0=0.5 sigma=20m zeta=20m

.control
pre_osdi NMOS_ACM_2V0.osdi
dc VG1 0.0 1.8 5m
wrdata example1_out.txt i(VS1)
.endc

.end
```
