# Model parameters

Generated from the attributes of `models/acm2.va` and `models/acm3.va`. Model parameters go on the `.model` line;
instance parameters go on the device line (an instance parameter written on the `.model` line acts as the default
for every device).

## ACM2 2.0.0 (`acm2_va`)

| Name | Kind | Default | Range | Units | Description |
|---|---|---|---|---|---|
| `type` | model | 1 | [-1:1] exclude 0 |  | Device type: +1=NMOS, -1=PMOS |
| `w` | instance | 1e-6 | (0:inf) | m | Channel width |
| `l` | instance | 1e-6 | (0:inf) | m | Channel length |
| `ad` | instance | 2e-12 | [0:inf) | m^2 | Drain diffusion area |
| `as` | instance | 2e-12 | [0:inf) | m^2 | Source diffusion area |
| `pd` | instance | 10e-6 | [0:inf) | m | Drain diffusion perimeter |
| `ps` | instance | 10e-6 | [0:inf) | m | Source diffusion perimeter |
| `m` | instance | 1 | [1:inf) |  | Number of transistors in parallel |
| `vt0` | model | 0.5 | [0:inf) | V | Threshold voltage |
| `ish` | model | 5e-6 | (0:inf) | A | Sheet specific current I_SH: specific current of one device = ish*w/l |
| `dlc` | model | 0.0 | [0:inf) | m | Charge-length offset: lc = l - dlc in charges, capacitances, mobility and noise |
| `n` | model | 1.3 | [1:3] |  | Slope factor |
| `sigma` | model | 0.03 | [0:inf) |  | Sigma |
| `zeta` | model | 0.05 | [0:inf) |  | Zeta (0: no velocity saturation) |
| `cj0` | model | 4e-3 | [0:inf) | F/m^2 | Zero-bias bottom junction cap |
| `cj0sw` | model | 4e-3 | [0:inf) | F/m^2 | Zero-bias side-wall junction cap |
| `xd_mj` | model | 0.5 | [0:inf) |  | Bottom junction grading coeff |
| `xd_mjsw` | model | 0.5 | [0:inf) |  | Side-wall junction grading coeff |
| `phi_zero` | model | 0.6 | (0:inf) | V | Bottom junction built-in potential |
| `phi_zerosw` | model | 0.6 | (0:inf) | V | Side-wall junction built-in potential |
| `xj` | model | 150e-9 | [0:inf) | m | Junction depth |
| `ld` | model | 30e-9 | [0:inf) | m | Gate overlap length |
| `tox` | model | 4e-9 | (0:inf) | m | Oxide thickness |
| `epsrox` | model | 3.97 | (0:inf) |  | Oxide relative permittivity |
| `avt0` | instance | 0.0 | (-inf:inf) | V*m | vt0 mismatch coefficient |
| `ak` | instance | 0.0 | [0:inf) | m | IS mismatch coefficient |
| `tref` | model | 300.15 | (0:inf) | K | Parameter reference temperature |
| `dtemp` | instance | 0.0 | (-inf:inf) | K | Device temperature offset |
| `alphavt0` | model | -0.4e-3 | [-1:1] | V/K | vt0 temperature coefficient |
| `alphais` | model | 1.5 | [0:inf) |  | IS temperature coefficient |
| `alphasigma` | model | 0.3e-6 | [0:inf) |  | Sigma temperature coefficient |
| `alphazeta` | model | 0.2e-3 | [0:inf) |  | Zeta temperature coefficient |
| `n_ot` | model | 1e12 | [0:inf) | m^-2 | Equivalent oxide trap density |
| `rg` | instance | 10 | [0:inf) | Ohm | Gate resistance per device (divided by m); 0 removes the gate node |

Aliases: `trise` = `dtemp`.

## ACM3 3.0.0 (`acm3_va`)

| Name | Kind | Default | Range | Units | Description |
|---|---|---|---|---|---|
| `type` | model | 1 | [-1:1] exclude 0 |  | Device type: +1=NMOS, -1=PMOS |
| `w` | instance | 1e-6 | (0:inf) | m | Channel width |
| `l` | instance | 1e-6 | (0:inf) | m | Channel length |
| `ad` | instance | 2e-12 | [0:inf) | m^2 | Drain diffusion area |
| `as` | instance | 2e-12 | [0:inf) | m^2 | Source diffusion area |
| `pd` | instance | 10e-6 | [0:inf) | m | Drain diffusion perimeter |
| `ps` | instance | 10e-6 | [0:inf) | m | Source diffusion perimeter |
| `m` | instance | 1 | [1:inf) |  | Number of transistors in parallel |
| `vt0` | model | 0.5 | [0:inf) | V | Threshold voltage |
| `ish` | model | 5e-6 | (0:inf) | A | Sheet specific current I_SH: specific current of one device = ish*w/l |
| `dlc` | model | 0.0 | [0:inf) | m | Charge-length offset: lc = l - dlc in charges, capacitances, mobility and noise |
| `sigma_wi` | model | 0.03 | [0:inf) |  | Weak inversion sigma |
| `sigma_si` | model | 0.03 | [0:inf) |  | Strong inversion sigma |
| `zeta` | model | 0.05 | [0:inf) |  | Velocity saturation coefficient (0: none) |
| `theta` | model | 0.05 | [0:inf) |  | Mobility reduction coefficient |
| `gamma` | model | 0.51 | [0:inf) |  | Body-effect coefficient |
| `phi` | model | 0.89 | [0:inf) | V | Two times the Fermi potential |
| `cj0` | model | 4e-3 | [0:inf) | F/m^2 | Zero-bias bottom junction cap |
| `cj0sw` | model | 4e-3 | [0:inf) | F/m^2 | Zero-bias side-wall junction cap |
| `xd_mj` | model | 0.5 | [0:inf) |  | Bottom junction grading coeff |
| `xd_mjsw` | model | 0.5 | [0:inf) |  | Side-wall junction grading coeff |
| `phi_zero` | model | 0.6 | (0:inf) | V | Bottom junction built-in potential |
| `phi_zerosw` | model | 0.6 | (0:inf) | V | Side-wall junction built-in potential |
| `xj` | model | 150e-9 | [0:inf) | m | Junction depth |
| `ld` | model | 30e-9 | [0:inf) | m | Gate overlap length |
| `tox` | model | 2.2404e-9 | (0:inf) | m | Oxide thickness |
| `epsrox` | model | 3.97 | (0:inf) |  | Oxide relative permittivity |
| `vddmax` | model | 1.4 | [0:inf) | V | Technology supply voltage |
| `avt0` | instance | 0.0 | (-inf:inf) | V*m | VT0 mismatch coefficient |
| `ak` | instance | 0.0 | [0:inf) | m | IS mismatch coefficient |
| `tref` | model | 300.15 | (0:inf) | K | Parameter reference temperature |
| `dtemp` | instance | 0.0 | (-inf:inf) | K | Device temperature offset |
| `alphavt0` | model | -0.4e-3 | [-1:1] | V/K | VT0 temperature coefficient |
| `alphais` | model | 1.5 | [0:inf) |  | IS temperature coefficient |
| `alphasigma` | model | 0.3e-6 | [0:inf) |  | Sigma temperature coefficient |
| `alphazeta` | model | 0.2e-3 | [0:inf) |  | Zeta temperature coefficient |
| `n_ot` | model | 1e12 | [0:inf) | m^-2 | Equivalent oxide trap density |
| `rg` | instance | 10 | [0:inf) | Ohm | Gate resistance per device (divided by m); 0 removes the gate node |

Aliases: `trise` = `dtemp`.

Notes (both models): the specific current of one device is I_S = ish*w/l; the charge length is lc = l - dlc
(dlc < l); the gate resistance rg is per device and divided by m; rg = 0 removes the internal gate node.
ACM3: vddmax is the technology supply voltage that normalises the transition of sigma from sigma_wi (weak
inversion) to sigma_si (strong inversion); the IHP SG13G2 cards use vddmax = 1.4 V.
