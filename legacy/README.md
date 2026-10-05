# Legacy: ACM2 pre-release code (2V0)

This folder keeps the pre-release ACM2 code and its examples as they were published in release
[v1.0.0](https://github.com/ACMmodel/ACM-MOSFET-models/releases/tag/v1.0.0). For new work, use ACM2 2.0.0 or ACM3 3.0.0 (`models/`; see the
[repository README](../README.md)).

| Folder | Contents |
|---|---|
| [`Verilog-A/`](Verilog-A/) | `NMOS_ACM_2V0.va` and `PMOS_ACM_2V0.va` (modules `nmos_ACM` and `pmos_ACM`) and notes on OpenVAF |
| [`Examples/`](Examples/) | comparisons with Sky130, IHP SG13G2 and GF180MCU (xschem test benches, Colab notebooks), Spectre and QucsStudio notes, and the resistive-feedback LNA design methodology |

The 2V0 code has its own parameter interface: for example, it takes the specific current `IS` of each device on the
instance line, where version 2.0.0 takes the sheet specific current `ish` on the `.model` line. 2V0 cards and test
benches therefore do not run with `models/acm2.va` without conversion. The Sky130 and GF180MCU notebooks clone release
v1.0.0, so their file paths stay valid. Some xschem schematics contain absolute paths of the machine where they were
drawn and need local editing.
