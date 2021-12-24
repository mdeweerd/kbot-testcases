# Test case tc5:

- Files are generated in tc5_01_20211224__header:
tc5_01_20211224__header/

- PCBA/tc5_01_20211224-bom.csv -> OK only has header component
- PCBA/tc5_01_20211224-kicost.xlsx
  - NOK
  - Has QR1, test points but not the header component.
  - => Add option for exclude filter?
- PDF/tc5_01_20211224-ibom.html
  - NOK
  - Has QR1 (Footprint "as is" from KiCAD footprint generator)
  - => Add options for exclude filter?
- tc5_01_20211224-both_pos.csv
  - OK for component placement
  - NOK for test pin location
  - => Generate seperate file for TEST PIN Location ?  Best method?
  
  
Other observation: tc5.csv is generated at the output root - I do not think this is requested for one of the targets, I think it's related to the pre-flight BOM XML generation.

