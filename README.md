# ACM model repository: Advanced Compact MOSFET models

The Advanced Compact MOSFET (ACM) models are charge-based MOSFET models for the design and simulation of analog,
mixed-signal and RF circuits. Currents, charges, transconductances and capacitances are single-piece expressions valid
in all regions of operation, from weak to strong inversion, and the models preserve the source-drain symmetry of the
transistor. Each model is one Verilog-A module for NMOS (`type=1`) and PMOS (`type=-1`), so it runs in proprietary and
open-source circuit simulators.

## Models

| Model | Version | DC parameters | Source | Equations and plots |
|---|---|---|---|---|
| ACM2 | 2.0.0 | 5: `vt0`, `ish`, `n`, `sigma`, `zeta` | [`models/acm2.va`](models/acm2.va) | [web page](https://acmmodel.github.io/ACM-MOSFET-models/acm2.html) |
| ACM3 | 3.0.0 | 8: `vt0`, `ish`, `phi`, `gamma`, `theta`, `sigma_wi`, `sigma_si`, `zeta` | [`models/acm3.va`](models/acm3.va) | [web page](https://acmmodel.github.io/ACM-MOSFET-models/acm3.html) |
| ACM2 2V0 | pre-release ([v1.0.0](https://github.com/ACMmodel/ACM-MOSFET-models/releases/tag/v1.0.0)) | 5 | [`legacy/Verilog-A/`](legacy/Verilog-A/) | [2V0 report (PDF)](docs/ACM_Report_Github.pdf) |

- **ACM2** has a constant slope factor `n`; `sigma` sets the drain-induced barrier lowering (DIBL) and `zeta` the
  velocity saturation.
- **ACM3** adds a slope factor that depends on the gate voltage through the body-effect parameters `phi` and `gamma`,
  mobility reduction (`theta`), and a DIBL coefficient that changes from `sigma_wi` in weak inversion to `sigma_si` in
  strong inversion, normalized by the technology supply voltage `vddmax`.
- **ACM2 2V0** is the pre-release code (separate NMOS and PMOS modules), kept with its examples in [`legacy/`](legacy/).
  Its parameter interface differs from that of version 2.0.0: its cards and test benches do not run with
  `models/acm2.va`.

In ACM2 2.0.0 and ACM3 3.0.0, the specific current of a device is **I_S = ish·w/l**: one card covers every width at its
length. The **model pages** ([acmmodel.github.io/ACM-MOSFET-models](https://acmmodel.github.io/ACM-MOSFET-models/)) give every equation of the Verilog-A code, in
the order of the code, with the parameters and the DC, small-signal, capacitance, RF and noise characteristics of an
IHP SG13G2 NMOS device.

## Repository layout

| Folder | Contents |
|---|---|
| `models/` | the models (Verilog-A) |
| `cards/ihp_sg13g2/` | `.model` cards for the IHP SG13G2 low-voltage NMOS and PMOS devices, for each model |
| `examples/ngspice/` | eight example circuits, one deck per model, with their expected results |
| `colab/` | parameter extraction from your own or the public IHP I-V data (Google Colab), one notebook per model |
| `docs/` | model web pages (GitHub Pages), parameter tables, technical papers, presentations and the 2V0 report |
| `legacy/` | the 2V0 code and its examples (Sky130, IHP SG13G2 and GF180MCU; resistive-feedback LNA design) |
| `images/` | logos |

## Quick start (ngspice)
Compile a model once with [OpenVAF-Reloaded](https://github.com/OpenVAF/OpenVAF-Reloaded) and load it with `pre_osdi`:
```
openvaf-r models/acm3.va -o models/acm3.osdi
```
```
* NMOS, W = 10 um, L = 0.13 um, IHP SG13G2 card
.temp 27
.include cards/ihp_sg13g2/acm3_nmos_perL.lib
N1 d g 0 0 acm3n_L0p13 w=10u l=0.13u ad=3.4p as=3.4p pd=20.68u ps=20.68u
Vd d 0 0.6
Vg g 0 0.6
.control
pre_osdi models/acm3.osdi
op
print i(Vd)
.endc
.end
```
For ACM2, write `acm2` in place of `acm3` (model file, card file and card name `acm2n_L0p13`).
Model parameters (`type`, the DC parameters, capacitance, temperature and noise parameters) go on the `.model` line;
the device line takes only `w, l, ad, as, pd, ps, m, dtemp, avt0, ak, rg`. Every parameter, with its default, range and
units, is listed in [`docs/parameters.md`](docs/parameters.md).

## IHP SG13G2 cards
`cards/ihp_sg13g2/<model>_{nmos,pmos}_point.lib` hold one card per measured geometry (38 NMOS, 38 PMOS;
W = 0.15-10 um, L = 0.12-10 um); `<model>_{nmos,pmos}_perL.lib` hold one card per length for W >= 2 um. Each card states
the W and L of its extraction. DC parameters: extracted from the public IHP measurements (IHP-Open-PDK, 27 C,
V_B = 0). Oxide, overlap, charge-length and junction parameters: fitted to the IHP PSP103 card. Temperature,
flicker-noise and mismatch parameters are not extracted (model defaults). See `cards/README.md`.

## Examples
Device characterization, common-source amplifier and current mirror, differential pair, inverter and ring
oscillator, latch, D flip-flop, resistive-feedback LNA and LC-VCO, each with its expected results for ACM2 and ACM3
and the IHP PSP103 values for reference: [`examples/ngspice/README.md`](examples/ngspice/README.md).

## Parameter extraction
Open the notebook of your model in Google Colab:
[ACM2](https://colab.research.google.com/github/ACMmodel/ACM-MOSFET-models/blob/main/colab/ACM2_Parameter_Extraction.ipynb),
[ACM3](https://colab.research.google.com/github/ACMmodel/ACM-MOSFET-models/blob/main/colab/ACM3_Parameter_Extraction.ipynb).
Each fits the DC parameters to any of the 76 public IHP devices or to your own I-V files and exports a `.model` card
with `ish` and the W and L of the extraction.

## Documentation
- Model pages, with the equations and characteristics: [ACM2 2.0.0](https://acmmodel.github.io/ACM-MOSFET-models/acm2.html) and
  [ACM3 3.0.0](https://acmmodel.github.io/ACM-MOSFET-models/acm3.html); the data of each figure are in [`docs/data/`](docs/data/).
- [Parameters](docs/parameters.md) of both models, generated from the Verilog-A attributes.
- [Technical documents](docs/readme.md): selected papers on the ACM model.
- [Presentations](docs/presentations/): slides from tutorials and presentations related to the ACM2 model:
  [NEWCAS 2025 Tutorial](docs/presentations/ACM2_NEWCAS_2025.pdf),
  [FSIC 2025 presentation](docs/presentations/FSiC_2025_DGAN_ACM2.pdf),
  [ESSERC 2025 Tutorial](docs/presentations/T2-Design_and_Simulation_of_Analog-RF_IC_ESSERC.pdf).
- [ACM2 2V0 report](docs/ACM_Report_Github.pdf) (2023): formulation and implementation of the pre-release code.

## Citation

Researchers are kindly requested to cite the paper of the model they use and this repository.

ACM2:

>D. G. A. Neto et al., "[Design-Oriented Single-Piece 5-DC-Parameter MOSFET Model](https://ieeexplore.ieee.org/document/10565864)," *IEEE Access*, vol. 12, pp. 87420–87437, 2024, doi: 10.1109/ACCESS.2024.3417316.

ACM3:

>D. G. A. Neto, M. C. Schneider, M. J. Barragan, S. Bourdel, and C. Galup-Montoro, "ACM3—An Advanced Compact MOSFET Model for Analog IC Design and Simulation," accepted for publication, 2026 (journal and DOI: to be added).

Repository:

> D. G. A. Neto, M. C. Schneider, M. J. Barragan, S. Bourdel, and C. Galup-Montoro, “Advanced Compact MOSFET Model 2 (ACM2),” 2026. [Online]. Available: https://doi.org/10.5281/zenodo.20434089

## Authors
[**Deni Germano Alves Neto**](https://www.linkedin.com/in/deni-alves-neto)¹⁺²
**Gabriel Maranhão Soares**¹
**Márcio Cherem Schneider**¹
**Manuel J. Barragan**²
**Sylvain Bourdel**²
[**Carlos Galup-Montoro**](https://www.linkedin.com/in/carlos-galup-montoro-6736185)¹

Past developer of ACM2: Cristina Missel Adornes¹.

### Affiliations

|  |  |
| :---: | :--- |
| <p align="center"><img src="images/UFSC_logo_white3.png" alt="UFSC Logo" height="80"></p> | ¹ Federal University of Santa Catarina, 88040-900 Florianópolis, Brazil. |
| <p align="center"><img src="images/TIMA_logo_white.png" alt="TIMA Logo" height="40"></p> | ² Univ. Grenoble Alpes, Grenoble INP, CNRS, TIMA, 38000 Grenoble, France. |

---

More about the ACM model:
[Integrated Circuit Laboratory](https://lci.ufsc.br/) @ Universidade Federal de Santa Catarina

## Contact

Requests for more information about the ACM models can be emailed to acmmodelgit@gmail.com

# License

The ACM models are released under the [ECL-2.0 license](LICENSE).

The copyright details are:

        Copyright 2023 Universidade Federal de Santa Catarina Licensed under the
        Educational Community License, Version 2.0 (the "License"); you may
        not use this file except in compliance with the License. You may
        obtain a copy of the License at

http://opensource.org/licenses/ECL-2.0

        Unless required by applicable law or agreed to in writing,
        software distributed under the License is distributed on an "AS IS"
        BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
        or implied. See the License for the specific language governing
        permissions and limitations under the License.
