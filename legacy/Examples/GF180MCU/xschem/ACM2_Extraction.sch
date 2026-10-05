v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 7 20 -990 20 -620 {}
L 7 370 -990 370 -620 {}
L 7 720 -990 720 -620 {}
L 7 1060 -990 1060 -620 {}
T {NMOS} 120 -980 0 0 0.8 0.8 {}
T {PMOS} 460 -980 0 0 0.8 0.8 {}
T {GlobalFoundries 180 nm 
Open-Source PDK} 520 -1140 0 0 0.65 0.65 {}
T {ACM2 MOSFET Model} 20 -1220 0 0 0.8 0.8 {}
T {Extraction} 170 -930 0 0 0.4 0.4 {}
T {Extraction} 530 -930 0 0 0.4 0.4 {}
T {Vt0, IS, n} 50 -840 0 0 0.3 0.3 {}
T {sigma} 50 -770 0 0 0.4 0.4 {}
T {zeta} 50 -700 0 0 0.4 0.4 {}
T {Vt0, IS, n} 400 -840 0 0 0.3 0.3 {}
T {sigma} 400 -770 0 0 0.4 0.4 {}
T {zeta} 400 -700 0 0 0.4 0.4 {}
T {ACM2 vs. BSIM4 - nfet GF180 nm} 760 -840 0 0 0.3 0.3 {}
T {ACM2 vs. BSIM4 - pfet GF180 nm} 760 -770 0 0 0.3 0.3 {}
T {ID - VG 
Characteristics} 740 -990 0 0 0.8 0.8 {}
C {devices/launcher.sym} 90 -1100 0 0 {name=h1
descr="ACM2 Model Report"
url="https://github.com/ACMmodel/MOSFET_model/blob/main/docs/ACM_Report_Github.pdf"}
C {devices/launcher.sym} 90 -1050 0 0 {name=h2
descr="Github"
url="https://github.com/ACMmodel/MOSFET_model"}
C {devices/title.sym} 160 -430 0 0 {name=l1 author="ACM2 MOSFET Model Authors"}
C {Extraction/nmos_ext.sym} 180 -810 0 0 {name=x1}
C {Extraction/nmos_sigma_ext.sym} 180 -740 0 0 {name=x2}
C {Extraction/nmos_zeta.sym} 180 -670 0 0 {name=x3}
C {Extraction/pmos_ext.sym} 530 -810 0 0 {name=x4}
C {Extraction/pmos_sigma_ext.sym} 530 -740 0 0 {name=x5}
C {Extraction/pmos_zeta.sym} 530 -670 0 0 {name=x6}
C {Extraction/TB_nmos_acm.sym} 890 -810 0 0 {name=x7}
C {Extraction/TB_pmos_acm.sym} 890 -740 0 0 {name=x8}
