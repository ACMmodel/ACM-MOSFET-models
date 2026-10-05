# Example circuits (ngspice)

Each folder holds one deck per model (`<example>_acm2.cir`, `<example>_acm3.cir`) that includes the IHP SG13G2
cards of `../../../cards/ihp_sg13g2` and loads the compiled model from `../../../models`. Build once:

```
openvaf-r models/acm2.va -o models/acm2.osdi
openvaf-r models/acm3.va -o models/acm3.osdi
openvaf-r examples/ngspice/lc_vco/varactor_tanh.va -o examples/ngspice/lc_vco/varactor_tanh.osdi
```

then run a deck from its folder, e.g. `cd examples/ngspice/lna && ngspice -b lna_acm3.cir`. Each deck writes
`<example>_<model>_results.txt`. Expected values (ngspice 47, OpenVAF-Reloaded, 27 C) are below; the IHP PSP103
column is the PDK model run on the same circuits (PDK files not included here), shown for reference only.

- `device`: I_D-V_G, I_D-V_D (data files), gm and f_T = gm/(2 pi C_gg) of NMOS and PMOS, W = 10 um, L = 0.13 um (per-L cards).
- `cs_mirror`: Common-source amplifier (R_D = 1 kohm, C_L = 50 fF): OP, AC, transient; 1:1 current mirror (L = 0.5 um, 100 uA): output sweep.
- `diff_pair`: Five-transistor OTA: NMOS input pair, PMOS mirror load, NMOS tail mirror, L = 0.5 um, I_tail = 200 uA, C_L = 200 fF.
- `inverter_ring`: CMOS inverter VTC and 11-stage ring oscillator; NMOS W = 0.6 um, PMOS W = 2 um, L = 0.13 um (point cards).
- `latch`: SR latch: cross-coupled inverters with NMOS set/reset pull-downs (point cards).
- `flipflop`: Positive-edge D flip-flop, transmission-gate master-slave, 500 MHz clock (point cards).
- `lna`: Resistive-feedback LNA at 1.5 GHz: NMOS W = 100 um, L = 0.13 um (per-L card, ish scaling), r_g = 43 ohm; gain, S11, NF.
- `lc_vco`: Cross-coupled NMOS LC-VCO at 2.45 GHz (L = 2 nH per side, Q = 10), W = 100 um, L = 0.13 um, 1 mA tail, ideal tanh varactors.

| Example | Quantity | ACM2 | ACM3 | IHP PSP103 |
|---|---|---|---|---|
| device | NMOS I_D (V_GS = V_DS = 0.6 V, W = 10 um, L = 0.13 um) (uA) | 289.4 | 328.5 | 304.1 |
| device | NMOS gm (mS) | 2.56 | 3.12 | 2.82 |
| device | NMOS f_T (GHz) | 23.7 | 29.0 | 27.6 |
| device | PMOS I_D (V_GS = V_DS = -0.6 V) (uA) | 133.0 | 140.7 | 130.9 |
| device | PMOS f_T (GHz) | 11.9 | 13.6 | 13.4 |
| cs_mirror | CS amplifier gain (dB) | 5.73 | 7.50 | 6.29 |
| cs_mirror | CS amplifier -3 dB frequency (GHz) | 2.96 | 2.98 | 2.94 |
| cs_mirror | Mirror output current at 0.6 V (uA) | 101.7 | 103.6 | 107.4 |
| cs_mirror | Mirror output current at 1.2 V (uA) | 108.9 | 117.9 | 126.9 |
| diff_pair | Differential pair DC gain (dB) | 34.8 | 25.4 | 23.6 |
| diff_pair | Gain-bandwidth (C_L = 200 fF) (MHz) | 537 | 611 | 532 |
| inverter_ring | Inverter switching voltage V_M (V) | 0.654 | 0.648 | 0.646 |
| inverter_ring | Ring oscillator frequency (11 stages) (GHz) | 1.353 | 1.456 | 1.496 |
| latch | Latch set delay (ps) | 92.2 | 84.3 | 80.4 |
| latch | Latch reset delay (ps) | 35.8 | 33.1 | 30.8 |
| flipflop | Flip-flop clock-to-Q (rising) (ps) | 87.2 | 80.0 | 80.5 |
| lna | LNA gain at 1.5 GHz (from 1 V source EMF) (dB) | 7.68 | 8.51 | 8.19 |
| lna | LNA S11 at 1.5 GHz (dB) | -21.6 | -22.1 | -26.6 |
| lna | LNA noise figure at 1.5 GHz (dB) | 4.45 | 4.13 | 4.18 |
| lc_vco | VCO frequency (V_ctrl = 0.6 V) (GHz) | 2.393 | 2.389 | 2.451 |
| lc_vco | VCO differential amplitude (peak-to-peak) (V) | 0.695 | 0.709 | 0.725 |

The cards are extracted from IHP measurements (DC) and fitted to PSP103 for the capacitances; differences to
PSP103 reflect both models. The LC-VCO varactor is an ideal charge-conserving model (`varactor_tanh.va`), not a
PDK device. r_g of the RF devices is given on the instance line.
