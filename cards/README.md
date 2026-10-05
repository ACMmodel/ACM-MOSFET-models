# IHP SG13G2 cards for ACM2 and ACM3

Each card states the W and L of its extraction (`p` stands for the decimal point, e.g. `L0p13` = 0.13 um).
The specific current of every device is I_S = ish*w/l. Both models share the following:

**tox, epsrox**: IHP PSP103 TOXO (NMOS 2.2404 nm, PMOS 1.9704 nm) and EPSROXO (3.9).
**Junction** (cj0, xd_mj, phi_zero, cj0sw, xd_mjsw, phi_zerosw; xj = 0.15 um): fitted to the PSP103 drain-junction
C(V) of four layouts, 0-1.2 V reverse bias; RMS error 0.17 % (NMOS), 0.41 % (PMOS).
**dlc, ld**: fitted to the PSP103 gate-row capacitances (C_gs, C_gd, C_gb at 100 MHz, V_GS 0-1.2 V, V_DS 0 and
1.2 V) of the W = 10 um devices, one ld per polarity and model. At L >= 0.5 um, dlc is an effective value: it also
absorbs the lower inversion capacitance of PSP103, not only a length offset.
**Not extracted** (model defaults): temperature coefficients, flicker noise (n_ot), mismatch (avt0, ak).
**rg = 0** in the cards: give the gate resistance per device on the instance line.

## ACM2

| File | Cards | Validity |
|---|---|---|
| `acm2_nmos_point.lib`, `acm2_pmos_point.lib` | 38 each, named `acm2n_W<W>_L<L>` / `acm2p_...` | W and L of the extraction |
| `acm2_nmos_perL.lib`, `acm2_pmos_perL.lib` | 10 each, named `acm2n_L<L>` / `acm2p_L<L>` | that L, W >= 2 um |

**DC parameters** (vt0, ish, n, sigma, zeta): extracted from the IHP measurements (IHP-Open-PDK
`ihp-sg13g2/libs.doc/meas/MOS/SG13_nmosXm1Y3`, `SG13_pmosXm1Y3`; 27 C, V_S = V_B = 0) with differential evolution
and L-BFGS-B on I_D-V_G, I_D-V_D and their derivatives. Body bias was not measured.

Capacitance fit per length (RMS of the C_gs, C_gd, C_gb residuals, in % of C_gg):

| Type | L (um) | dlc (nm) | ld (nm) | fit RMS (%) |
|---|---|---|---|---|
| NMOS | 0.12 | 83.1 | 39.4 | 3.8 |
| NMOS | 0.13 | 84.6 | 39.4 | 3.5 |
| NMOS | 0.14 | 86.2 | 39.4 | 3.2 |
| NMOS | 0.15 | 87.9 | 39.4 | 3.0 |
| NMOS | 0.18 | 94.7 | 39.4 | 3.1 |
| NMOS | 0.5 | 151.8 | 39.4 | 2.2 |
| NMOS | 1.2 | 265.4 | 39.4 | 2.4 |
| NMOS | 2 | 435.2 | 39.4 | 14.4 |
| NMOS | 5 | 1005.5 | 39.4 | 16.0 |
| NMOS | 10 | 1866.0 | 39.4 | 13.7 |
| PMOS | 0.12 | 84.4 | 25.5 | 2.7 |
| PMOS | 0.13 | 86.0 | 25.5 | 2.7 |
| PMOS | 0.14 | 87.7 | 25.5 | 2.8 |
| PMOS | 0.15 | 90.4 | 25.5 | 3.2 |
| PMOS | 0.18 | 97.6 | 25.5 | 4.2 |
| PMOS | 0.5 | 177.0 | 25.5 | 8.8 |
| PMOS | 1.2 | 356.0 | 25.5 | 11.4 |
| PMOS | 2 | 562.9 | 25.5 | 12.2 |
| PMOS | 5 | 1339.8 | 25.5 | 9.6 |
| PMOS | 10 | 2611.6 | 25.5 | 10.2 |

## ACM3

| File | Cards | Validity |
|---|---|---|
| `acm3_nmos_point.lib`, `acm3_pmos_point.lib` | 38 each, named `acm3n_W<W>_L<L>` / `acm3p_...` | W and L of the extraction |
| `acm3_nmos_perL.lib`, `acm3_pmos_perL.lib` | 10 each, named `acm3n_L<L>` / `acm3p_L<L>` | that L, W >= 2 um |

**DC parameters** (vt0, ish, phi, gamma, theta, sigma_wi, sigma_si, zeta; vddmax = 1.4 V): extracted from the IHP measurements (IHP-Open-PDK
`ihp-sg13g2/libs.doc/meas/MOS/SG13_nmosXm1Y3`, `SG13_pmosXm1Y3`; 27 C, V_S = V_B = 0) with differential evolution
and L-BFGS-B on I_D-V_G, I_D-V_D and their derivatives. Body bias was not measured, so phi and gamma are effective values for V_B = 0.

Capacitance fit per length (RMS of the C_gs, C_gd, C_gb residuals, in % of C_gg):

| Type | L (um) | dlc (nm) | ld (nm) | fit RMS (%) |
|---|---|---|---|---|
| NMOS | 0.12 | 91.8 | 42.6 | 5.3 |
| NMOS | 0.13 | 93.4 | 42.6 | 5.3 |
| NMOS | 0.14 | 95.2 | 42.6 | 5.4 |
| NMOS | 0.15 | 96.9 | 42.6 | 5.4 |
| NMOS | 0.18 | 105.1 | 42.6 | 6.2 |
| NMOS | 0.5 | 193.6 | 42.6 | 10.7 |
| NMOS | 1.2 | 386.1 | 42.6 | 12.3 |
| NMOS | 2 | 765.5 | 42.6 | 17.0 |
| NMOS | 5 | 1726.0 | 42.6 | 16.6 |
| NMOS | 10 | 3436.2 | 42.6 | 16.6 |
| PMOS | 0.12 | 94.8 | 28.9 | 5.2 |
| PMOS | 0.13 | 96.5 | 28.9 | 5.2 |
| PMOS | 0.14 | 98.3 | 28.9 | 5.2 |
| PMOS | 0.15 | 100.7 | 28.9 | 5.2 |
| PMOS | 0.18 | 108.1 | 28.9 | 5.4 |
| PMOS | 0.5 | 200.9 | 28.9 | 5.4 |
| PMOS | 1.2 | 441.1 | 28.9 | 6.1 |
| PMOS | 2 | 776.0 | 28.9 | 8.6 |
| PMOS | 5 | 1653.4 | 28.9 | 3.9 |
| PMOS | 10 | 3289.6 | 28.9 | 4.0 |
