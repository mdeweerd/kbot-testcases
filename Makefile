#!make -f

# Set KIBOT according to local machine or general case
ifeq ($(HOSTNAME),YNA010)
  KIBOT=./runInKiAuto kibot
else
  KIBOT?=kibot
endif


# Run test case
.PHONY: default
default:
	$(KIBOT) -e tests/board_samples/kicad_5/kibom-variant_4.sch -b tests/board_samples/kicad_5/kibom-variant_4.kicad_pcb -c tests/yaml_samples/step_variant_2.kibot.yaml -g variant=topvariant PCBWay_bom

tc1:
	$(KIBOT) -e tests/board_samples/kicad_5/kibom-variant_4.sch -b tests/board_samples/kicad_5/kibom-variant_4.kicad_pcb -c tests/yaml_samples/step_variant_2.kibot.yaml -g variant=topvariant schematic_color bom steptopvariant stepleftvariant gerbers compress PCBWay_gerbers PCBWay_drill PCBWay


# Package test case
.PHONY: package
package:
	tar zcv --exclude="*.tar.gz" --exclude=".git*" -f tc1.tar.gz * 


.PHONY: clean
clean:
	rm -rf kibom-variant_4__*


# Private target to check that the file in the VM is recent
.PHONY: checkfile
checkfile:
	./runInKiAuto grep self.bold /usr/local/lib/python3.7/dist-packages/kibot/kicad/v5_sch.py
