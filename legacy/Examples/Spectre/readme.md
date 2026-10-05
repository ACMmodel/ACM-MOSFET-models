# Simulation of the ACM model using circuit simulator Spectre 

Verilog-A is integrated into Cadence Virtuoso and situated in Spectre for easy modeling and verification of testing or other components. 

To create a Verilog-A-defined component, 

* First create a new cell view, changing the type from schematic to Verilog-A.

** In this step you can add the [NMOS_ACM Verilog-A](/legacy/Verilog-A/NMOS_ACM_2V0.va) or the [PMOS_ACM Verilog-A](/legacy/Verilog-A/PMOS_ACM_2V0.va) codes.

* Cadence will prompt you to create a symbol for your new component once you do.

**Edit the shape and text of the new symbol to help describe the component’s function.

* Now that you have a symbol, validate your description by using a schematic testbench. Run an ADE simulation of the testbench to ensure the model works as intended for the appropriate simulations in which the model will be used.
