# TC1.md

Demonstrates that multiple output directories are created where only 1 is expected.

# Usage

Run `make` to run the default target, which runs kibot with parameters:


```
kibot -e tests/board_samples/kicad_5/kibom-variant_4.sch -b tests/board_samples/kicad_5/kibom-variant_4.kicad_pcb -c tests/yaml_samples/step_variant_2.kibot.yaml -g variant=topvariant JLCPCB_bom

```


# Discussion

`kibot` reports that the filter `only_jlc_parts` is unknown, while it is defined in the included `JCLPCB_positions.yaml`

The documentation suggests that when importing a file without specifying which filters, etc should be imported, all items are imported.

It seems that this is not the case for filters.


# Files

## Scripts/Documentation

- `TC2.md` - This file
- `Makefile` - Makefile where the default target runs the test case
- `runInKiAuto` - Local script to run kibot in Docker VM using Cygwin on Windows 10
- `TC1.md` - Description older testcase

## Output files

- `kibot.log` - Trace (console) from testcase run
- `kibom-variant_4__*` - Output directories generated using kibot tests

## Input files
- `docs/samples/JLCPCB_position.kibot.yaml` - File used in TC2 for `JLCPCB_bom` target
- `tests/yaml_samples/step_variant_2.kibot.yaml` - Main configuration for test case
- `tests/yaml_samples/PCBWay2.kibot.yaml` - Configuration to generate PCBWay production files - variation on example
- `tests/board_samples/kicad_5/kibom-variant_4.pro` - Project file for Variant 4 project
- `tests/board_samples/kicad_5/kibom-variant_4.sch` - Schematic for Variant 4 project
- `tests/board_samples/kicad_5/kibom-variant_4.kicad_pcb` - PCB Design file for Variant 4 project
- `tests/board_samples/kicad_5/steps` - Directory with some steps used in the PCB footprint models
