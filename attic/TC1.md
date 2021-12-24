# TC1.md

Demonstrates that multiple output directories are created where only 1 is expected.

# Usage

Run `make` to run the default target, which run kibot.


# Discussion

The goal of setting a global directory using paramters is to generate all the files in a single output directory that is still dependent on the date ("version"), and variant, and project name, etc.  
Generating files to different directory is not helping with that goal.  

Therefore, only root output directory is expected which would look like `kibom-variant_4__<DATE>_leftvariant` . 
 
However, 4 output directories are generated:
- kibom-variant_4__2021-11-19_17-50-53_leftvariant
- kibom-variant_4__2021-11-20_14-57-29
- kibom-variant_4__2021-11-20_14-57-29_leftvariant
- kibom-variant_4__2021-11-20_14-57-29_rightvariant


The 'global' setting 'dir' should depend on the global variant used for running the rest of the script.  
The goal is to have one output directory for each variant.  
Some files may be repeated/regenerated (e.g., the board will always be the same), but at least the files are all located in the 'variant' directory which can be considered a package for distribution.


Also not that when the date is read from the schematic or pcb, only the date is used.  When it is coming from the file then the time is added.  That's not an issue for me (I'll use the PCB date), but it's not uniform.
  

We can also see that there are two different dates - one is the date of the schematic and the other the date of the PCB.  
While we could suppose that the user notices it, the user may also overlook that the files are not all in the same directory.  
Several solutions:
- Generate a warning or error when the dates are not the same;
- Use the most recent date do determine the global output directory.



# Files

## Scripts/Documentation

- TC1.md - This file
- Makefile - Makefile where the default target runs the test case
- runInKiAuto - Local script to run kibot in Docker VM using Cygwin on Windows 10

## Output files

- kibot.log - Trace (console) from testcase run
- kibom-variant_4__* - Output directories generated using kibot
tests

## Input files
- tests/yaml_samples/step_variant_2.kibot.yaml - Main configuration for this test case
- tests/yaml_samples/PCBWay2.kibot.yaml - Configuration to generate PCBWay production files - variation on example
- tests/board_samples/kicad_5/kibom-variant_4.pro - Project file for Variant 4 project
- tests/board_samples/kicad_5/kibom-variant_4.sch - Schematic for Variant 4 project
- tests/board_samples/kicad_5/kibom-variant_4.kicad_pcb - PCB Design file for Variant 4 project
- tests/board_samples/kicad_5/steps - Directory with some steps used in the PCB footprint models
