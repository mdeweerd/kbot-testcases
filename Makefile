#!make -f

# Set KIBOT according to local machine or general case
ifeq ($(HOSTNAME),YNA010)
  KIBOT=./runInKiAuto kibot
else ifeq ($(HOSTNAME),YNA007)
  KIBOT=./runInKiAuto kibot
else
  KIBOT?=kibot
endif

KICAD_PRO_DIR=designs/

TARGETS_3D=render_2d_top_black
TARGETS_3D+=render_2d_bottom_black
TARGETS_3D+=render_3d_top_black
TARGETS_3D+=render_3d_bottom_black

#TARGETS_2D=pcbtop_img
#TARGETS_2D+=pcbbottom_img

#TARGET_ALLPADS=allpads_pcb allpads_drill allpads_position allpads_zip

TARGETS_ALL=
#TARGETS+=position_test_points
TARGETS_ALL+=schematic_color schematic_bw
TARGETS_ALL+=bom ibom
TARGETS_ALL+=position gerbers gerb_drill excellon
TARGETS_ALL+=$(TARGETS_2D)
TARGETS_ALL+=pdf_pcb pdf_pcb_fab
TARGETS_ALL+=step
TARGETS_ALL+=$(TARGETS_3D)
TARGETS_ALL+=$(TARGET_ALLPADS)
TARGETS_ALL+=kicost
TARGETS_ALL+=report
TARGETS_ALL+=test_points

VERBOSE=-vvvv
VERBOSE=

VARIANTS=header
DESIGN=$(KICAD_PRO_DIR)tc5/tc5
DESIGN=$(KICAD_PRO_DIR)tc6/tc6
DESIGN=$(KICAD_PRO_DIR)tc7/tc7

TARGETS=bom ibom

TARGETS=report

TARGETS=diff_variants

TARGETS=test_points

TARGETS=$(TARGETS_ALL)

# Run test case
.PHONY: selected
selected:
	for i in $(VARIANTS) ; do \
             echo $$i ; \
             $(KIBOT) -c $(DESIGN).kibot.yaml -b $(DESIGN).kicad_pcb -e $(DESIGN).kicad_sch \
                      -g variant=$$i $(VERBOSE) info $(TARGETS) \
             | tee $$(basename $(DESIGN))_$${i}_build.log ; \
        done



.PHONY: info
info: TARGETS=info
info: selected

.PHONY: diff
diff: TARGETS=diff_prev_sch diff_prev_pcb
diff: selected

package: package-tc5

# Package test case
.PHONY: package
package-%:
	tar zcv --exclude="*.tar.gz" --exclude=".git*" --exclude='*.sw?' -f $*.tar.gz $(KICOD_PRO_DIR)$** $** designs/$** Makefile yaml 


.PHONY: clean
clean:
	rm -rf kibom-variant_4__* kibot.log *.tar.gz


