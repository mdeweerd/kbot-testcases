#!make -f

# Set KIBOT according to local machine or general case
ifeq ($(HOSTNAME),YNA010)
  KIBOT=./runInKiAuto kibot
else
  KIBOT?=kibot
endif

KICAD_PRO_DIR=designs/

TARGETS_3D=render_2d_top_black
TARGETS_3D+=render_2d_bottom_black
TARGETS_3D+=render_3d_top_black
TARGETS_3D+=render_3d_bottom_black

TARGETS_2D=pcbtop_img
TARGETS_2D+=pcbbottom_img

TARGET_ALLPADS=allpads_pcb allpads_drill allpads_position allpads_zip

TARGETS=
TARGETS+=schematic_color schematic_bw
TARGETS+=bom ibom
TARGETS+=position gerbers gerb_drill excellon
TARGETS+=$(TARGETS_2D)
TARGETS+=pdf_pcb pdf_pcb_fab
TARGETS+=step
TARGETS+=$(TARGETS_3D)
TARGETS+=$(TARGET_ALLPADS)
TARGETS+=kicost
TARGETS=report

VERBOSE=-vvvv
VERBOSE=

VARIANTS=header
DESIGN=$(KICAD_PRO_DIR)tc5/tc5

# Run test case
.PHONY: default
tc5:
	for i in $(VARIANTS) ; do \
             echo $$i ; \
             $(KIBOT) -c $(DESIGN).kibot.yaml -b $(DESIGN).kicad_pcb -e $(DESIGN).sch \
                      -g variant=$$i $(VERBOSE)  $(TARGETS) \
             | tee $$(basename $(DESIGN))_$${i}_build.log ; \
        done

package: package-tc5

# Package test case
.PHONY: package
package-%:
	tar zcv --exclude="*.tar.gz" --exclude=".git*" -f $*.tar.gz $(KICOD_PRO_DIR)$** $**


.PHONY: clean
clean:
	rm -rf kibom-variant_4__* kibot.log *.tar.gz


