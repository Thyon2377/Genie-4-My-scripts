#shapeitem
#
# Make sure shaping book is turned to the correct page for what you plan
# to do.
#
# parameters are .shapeitem <container1> <container2> <item> <chapter8>
#
# example .shapeitem bag pack staff 0
#     or  .shapeitem bag bag longbow 0
#     or  .shapeitem pack pack bow 0
#     or  .shapeitem bag rucksack buckle 0
#     or  .shapeitem bag pack bead 1
#
# where <part> = what is being made, staff, crook, cane, nightstick, quarterstaff, bow, 
#                shortbow, longbow, pole, band, ring, bracelet, anklet, pin, cup, 
#                hairpin, pendant, amulet, medallion, earrings, earcuff, brooch, armband,
#                buckle, choker, circlet, crown, mask, haircomb, bead, totem, table.
#       <container1> = bag, backpack, rucksack, etc.
#       <container2> = bag, backpack, rucksack, etc.
#       <Chapter8> = 1 for yes and 0 for no.
#
# This script assumes you have some processed lumber in the left hand or in front of you, tools
# and ingredients in the container1, and shaping book and maybe a stamp in the container2 and yes
# they can both be the same container.  The Shaping book must be turned to the right page.
# The script is currently set up to not stamp your items if you have a stamp.  If you want to stamp
# your item, find the five goto's as follows:
#
# goto shapend1
#
# and remove the numbersign from in front of it.  Then you will stamp all your items.
#
# This script has nothing special in it, so it should work in the wizard front end,
# stormfront, and genie.  In the script I tend to put items in containers.  But you 
# can easily use stow left and stow right if your store help variables are set up.  In Fact
# if you do set up store and stow properly, you can remove large sections of this script and 
# use a simple stow right, then get the item needed out and continue on.  For those that don't
# understand store and stow this will work.
#

startitem:
goto chaptereight0
##goto chaptereight%4

chaptereight0:
  pause 1
  put get shaping book from my %2
waitfor You get
  pause 1
  put study my book
waitfor Roundtime
  pause 1
  put put my shaping book in my %2
waitfor You put
goto startitem1

chaptereight1:
  pause 1
  put get shaping book from my %2
waitfor You get
  pause 1
  put study my book
waitfor Roundtime
  pause 1
  put put my shaping book in my %2
waitfor You put
  pause 1
  put get my codex from my %2
waitfor You get
  pause 1
  put study my codex
waitfor Roundtime
  pause 1
  put put my codex in my %2
waitfor You put

startitem1:
  pause 1
  put get drawknife from my %1
waitfor You get
  pause 1
  put scrape lumber with my drawknife
  match shaper Shaping with a wood shaper
  match shaper shaping with a wood shaper
  match carve is ready to have more fine detail carved with a carving knife
  match carve grain looks solid and ready for continued knife carving
  match carve further carving with a knife
  match rasp A bulbous knot will make continued shaping difficult
  match rasp A cluster of small knots deforms
  match clamps The bow now must be pushed with clamps
  match clamps The bow's pieces and backing material are now ready to be clamped
matchwait

shaper:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shaper1:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shaperc:  
  pause 1
  put put my knife in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shaperr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shapercl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shaperfin:
  pause 1
  put shape my %3 with my shaper
  match shaperfin Shaping with a wood shaper
  match shaperfin shaping with a wood shaper
  match carves is ready to have more fine detail carved with a carving knife
  match carves grain looks solid and ready for continued knife carving
  match carves further carving with a knife
  match rasps A bulbous knot will make continued shaping difficult
  match rasps A cluster of small knots deforms
  match clampss The bow now must be pushed with clamps
  match clampss The bow's pieces and backing material are now ready to be clamped
  match backers assembly with the backing material can begin
  match stripss You need another finished leather strips to continue
  match cords You need another finished short leather cord to continue
  match tables wooden pole to continue crafting
  match bowstrings Some wood stain should be applied to the wood to finish it
  match shapeends You cannot figure out how to do that.  Perhaps finding suitable ingredients
  match shapeends Applying the final touches, you complete working on
matchwait

carve:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
  put get my carving knife from my %1
waitfor You get
goto carvefin

carve1:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my carving knife from my %1
waitfor You get
goto carvefin

carves:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my carving knife from my %1
waitfor You get
goto carvefin

carver:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my carving knife from my %1
waitfor You get
goto carvefin

carvecl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my carving knife from my %1
waitfor You get
goto carvefin

carvefin:
  pause 1
  put carve my %3 with my carving knife
  match shaperc Shaping with a wood shaper
  match shaperc shaping with a wood shaper
  match carvefin is ready to have more fine detail carved with a carving knife
  match carvefin grain looks solid and ready for continued knife carving
  match carvefin further carving with a knife
  match raspc A bulbous knot will make continued shaping difficult
  match raspc A cluster of small knots deforms
  match clampsc The bow now must be pushed with clamps
  match clampsc The bow's pieces and backing material are now ready to be clamped
  match backerc assembly with the backing material can begin
  match stripsc You need another finished leather strips to continue
  match cordc You need another finished short leather cord to continue
  match tablec wooden pole to continue crafting
  match bowstringc Some wood stain should be applied to the wood to finish it
  match shapeendc You cannot figure out how to do that.  Perhaps finding suitable ingredients
  match shapeendc Applying the final touches, you complete working on
matchwait

rasp:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

rasp1:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

rasps:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

raspc:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

raspcl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

raspfin:
  pause 1
  put rub my %3 with my rasp
  match shaperr Shaping with a wood shaper
  match shaperr shaping with a wood shaper
  match carver is ready to have more fine detail carved with a carving knife
  match carver grain looks solid and ready for continued knife carving
  match carver further carving with a knife
  match raspfin A bulbous knot will make continued shaping difficult
  match raspfin A cluster of small knots deforms
  match clampsr The bow now must be pushed with clamps
  match clampsr The bow's pieces and backing material are now ready to be clamped
  match backerr assembly with the backing material can begin
  match stripsr You need another finished leather strips to continue
  match cordr You need another finished short leather cord to continue
  match tabler wooden pole to continue crafting
  match bowstringr Some wood stain should be applied to the wood to finish it
  match shapeendr You cannot figure out how to do that.  Perhaps finding suitable ingredients
  match shapeendr Applying the final touches, you complete working on
matchwait

clamps:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clamps1:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clampss:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clampsc:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clampsr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clampsfin:
  pause 1
  put push my %3 with my clamps
  match shapercl Shaping with a wood shaper
  match shapercl shaping with a wood shaper
  match carvecl is ready to have more fine detail carved with a carving knife
  match carvecl grain looks solid and ready for continued knife carving
  match carvecl further carving with a knife
  match raspcl A bulbous knot will make continued shaping difficult
  match raspcl A cluster of small knots deforms
  match clampsfin The bow now must be pushed with clamps
  match clampsfin The bow's pieces and backing material are now ready to be clamped
  match backercl assembly with the backing material can begin
  match stripscl You need another finished leather strips to continue
  match cordcl You need another finished short leather cord to continue
  match tablecl wooden pole to continue crafting
  match bowstringcl Some wood stain should be applied to the wood to finish it
  match shapeendcl You cannot figure out how to do that.  Perhaps finding suitable ingredients
  match shapeendcl Applying the final touches, you complete working on
matchwait

backers:
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backerc:
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backerr:
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backercl:
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backerfin:
  pause 1
  put assemble my backer with my %3
  pause 1
  put get my glue from my %1
waitfor You get
  pause 1
  put apply my glue to my %3
  match shaper1 Shaping with a wood shaper
  match shaper1 shaping with a wood shaper
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match rasp1 A cluster of small knots deforms
  match clamps1 The bow now must be pushed with clamps
  match clamps1 The bow's pieces and backing material are now ready to be clamped
matchwait

bowstrings:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my string from my %1
waitfor You get
goto bowstringfin

bowstringc:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my string from my %1
waitfor You get
goto bowstringfin

bowstringr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my string from my %1
waitfor You get
goto bowstringfin

bowstringcl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my string from my %1
waitfor You get
goto bowstringfin

bowstringfin:
  pause 1
  put assemble my string with my %3
  pause 1
  put get my stain from my %1
waitfor You get
  pause 1
  put apply my stain to my %3
waitfor Roundtime
  pause 1
  put put my stain in my %1
waitfor You put
  pause .5
goto shapeendb

stripss:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripsc:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripsr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripscl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripsfin:
  pause 1
  put assemble my strips with my %3
  pause 1
  put analyze my %3
  match shaper1 Shaping with a wood shaper
  match shaper1 shaping with a wood shaper
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match rasp1 A cluster of small knots deforms
  match clamps1 The bow now must be pushed with clamps
  match clamps1 The bow's pieces and backing material are now ready to be clamped
matchwait

cords:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my cord from my %1
waitfor You get
goto cordfin

cordc:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my cord from my %1
waitfor You get
goto cordfin

cordr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my cord from my %1
waitfor You get
goto cordfin

cordcl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my cord from my %1
waitfor You get
goto cordfin

cordfin:
  pause 1
  put assemble my cord with my %3
  pause 1
  put analyze my %3
  match shaper1 Shaping with a wood shaper
  match shaper1 shaping with a wood shaper
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match rasp1 A cluster of small knots deforms
  match clamps1 The bow now must be pushed with clamps
  match clamps1 The bow's pieces and backing material are now ready to be clamped
matchwait

tables:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my pole from my %1
waitfor You get
goto tablefin

tablec:  
  pause 1
  put put my carving knife in my %1
waitfor You put
  pause 1
  put get my pole from my %1
waitfor You get
goto tablefin

tabler:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my pole from my %1
waitfor You get
goto tablefin

tablecl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my pole from my %1
waitfor You get
goto tablefin

tablefin:
  pause 1
  put assemble my pole with my %3
  pause 1
  put get my pole from my %1
waitfor You get
  pause 1
  put assemble my pole with my %3
  pause 1
  put get my pole from my %1
waitfor You get
  pause 1
  put assemble my pole with my %3
  pause 1
  put get my pole from my %1
waitfor You get
  pause 1
  put assemble my pole with my %3
  pause 1
  put analyze my %3
  match shaper1 Shaping with a wood shaper
  match shaper1 shaping with a wood shaper
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match rasp1 A cluster of small knots deforms
  match clamps1 The bow now must be pushed with clamps
  match clamps1 The bow's pieces and backing material are now ready to be clamped
matchwait

shapeendb:
  pause .5
# goto shapend1
echo *** One %3 is completed. ***
exit

shapeends:
  pause 1
  put put my shaper in my %1
waitfor You put
# goto shapend1
  pause 1
echo *** One %3 is completed. ***
exit

shapeendc:
  pause 1
  put put my carving knife in my %1
waitfor You put
# goto shapend1
  pause 1
echo *** One %3 is completed. ***
exit

shapeendr:
  pause 1
  put put my rasp in my %1
waitfor You put
# goto shapend1
  pause 1
echo *** One %3 is completed. ***
exit

shapeendcl:
  pause 1
  put put my clamps in my %1
waitfor You put
# goto shapend1
  pause 1
echo *** One %3 is completed. ***
exit

shapend1:
  pause 1
  put get my stamp from my %2
waitfor You get
  pause 1
  put mark my %3 with my stamp
waitfor Roundtime
  pause 1
  put put my stamp in my %2
  pause 1
echo *** One %3 is completed and stamped. ***
exit