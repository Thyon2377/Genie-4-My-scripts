#shapebowenhance
#
# Make sure shaping book is turned to the correct page for what you plan
# to do.
#
# parameters are .shapebowenchance <container1> <container2> <item> <enhancement>
#
# example .shapebowenhance bag pack longbow
#     or  .shapebowenhance bag bag shortbow
#     or  .shapebowenhance pack pack bow
#
# where <item> = what is being enhanced, bow, shortbow, or longbow
#       <container1> = bag, backpack, rucksack, etc.
#       <container2> = bag, backpack, rucksack, etc.
#
# This script assumes you have a bow of some kind in the left hand, tools and ingredients in the 
# container1, and shaping book and maybe a stamp in the container2 and yes they can both be the same
# container.  The Shaping book must be turned to the right page.  The script is currently set up to
# not stamp your items if you have a stamp.  If you want to stamp your item, find the one goto's as
# follows:
#
# goto shapend1
#
# and remove the numbersign from in front of it.  Then you will stamp each bow.  Though since
# this is just an enhancement to a bow probably already stamped, I'm not sure it will work.
#
# This script has nothing special in it, so it should work in the wizard front end,
# stormfront, and genie.  In the script I tend to put items in containers.  But you 
# can easily use stow left and stow right if your store help variables are set up.  In Fact
# if you do set up store and stow properly, you can remove large sections of this script and 
# use a simple stow right, then get the item needed out and continue on.  For those that don't
# understand store and stow this will work.  If you do use store and stow, make sure the bow
# to be enchanced starts in the left hand.  That way you can always store right and have 
# everything go in the right container.
#

starteitem:
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
  put get clamps from my %1
waitfor You get
  pause 1
  put push my %3 with my clamps
  match shaper Shaping with a wood shaper
  match carve is ready to have more fine detail carved with a carving knife
  match carve grain looks solid and ready for continued knife carving
  match carve further carving with a knife
  match rasp A bulbous knot will make continued shaping difficult
  match clampsfin materials are ready to be compressed with clamps or
matchwait

shaper:
  pause 1
  put put my clamps in my %1
waitfor You put
shaper1:
  pause 1
  put get my shaper from my %1
waitfor You get
goto shaperfin

shaperg:
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

shaperfin:
  pause 1
  put shape my %3 with my shaper
  match shaperfin Shaping with a wood shaper
  match carves is ready to have more fine detail carved with a carving knife
  match carves grain looks solid and ready for continued knife carving
  match carves further carving with a knife
  match rasps A bulbous knot will make continued shaping difficult
  match clampss materials are ready to be compressed with clamps or
  match glues Glue should now be applied so assembly can begin
  match backers appears ready to be reinforced with some backer material
  match stains Some wood stain should be applied to the wood to finish it
  match stripss appears ready to be strengthened with some leather strips
  match stripss is ready to be assembled with leather strips
matchwait

carve:
  pause 1
  put put my clamps in my %1
waitfor You put
carve1:
  pause 1
  put get my knife from my %1
waitfor You get
goto carvefin

carveg:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
goto carvefin

carves:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
goto carvefin

carver:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
goto carvefin

carvefin:
  pause 1
  put carve my %3 with my knife
  match shaperc Shaping with a wood shaper
  match carvefin is ready to have more fine detail carved with a carving knife
  match carvefin grain looks solid and ready for continued knife carving
  match carvefin further carving with a knife
  match raspc A bulbous knot will make continued shaping difficult
  match clampsc materials are ready to be compressed with clamps or
  match gluec Glue should now be applied so assembly can begin
  match backerc appears ready to be reinforced with some backer material
  match stainc Some wood stain should be applied to the wood to finish it
  match stripsc appears ready to be strengthened with some leather strips
  match stripsc is ready to be assembled with leather strips
matchwait

rasp:
  pause 1
  put put my clamps in my %1
waitfor You put
rasp1:
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

raspg:
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
  put put my knife in my %1
waitfor You put
  pause 1
  put get my rasp from my %1
waitfor You get
goto raspfin

raspfin:
  pause 1
  put rub my %3 with my rasp
  match shaperr Shaping with a wood shaper
  match carver is ready to have more fine detail carved with a carving knife
  match carver grain looks solid and ready for continued knife carving
  match carver further carving with a knife
  match raspfin A bulbous knot will make continued shaping difficult
  match clampsr materials are ready to be compressed with clamps or
  match gluer Glue should now be applied so assembly can begin
  match backerr appears ready to be reinforced with some backer material
  match stainr Some wood stain should be applied to the wood to finish it
  match stripsr appears ready to be strengthened with some leather strips
  match stripsr is ready to be assembled with leather strips
matchwait

clamps:
  pause 1
  put put my clamps in my %1
waitfor You put
clamps1:
  pause 1
  put get my clamps from my %1
waitfor You get
goto clampsfin

clampsg:
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
  put put my knife in my %1
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
  match shaper Shaping with a wood shaper
  match carve is ready to have more fine detail carved with a carving knife
  match carve grain looks solid and ready for continued knife carving
  match carve further carving with a knife
  match rasp A bulbous knot will make continued shaping difficult
  match clampsfin materials are ready to be compressed with clamps or
  match gluecl Glue should now be applied so assembly can begin
  match backercl appears ready to be reinforced with some backer material
  match staincl Some wood stain should be applied to the wood to finish it
  match stripscl appears ready to be strengthened with some leather strips
  match stripscl is ready to be assembled with leather strips
matchwait

glues:  
  pause 1
  put put my shaper in my %1
waitfor You put
glue1:
  pause 1
  put get my glue from my %1
waitfor You get
goto gluefin

gluec:  
  pause 1
  put put my knife in my %1
waitfor You put
  pause 1
  put get my glue from my %1
waitfor You get
goto gluefin

gluer:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my glue from my %1
waitfor You get
goto gluefin

gluecl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my glue from my %1
waitfor You get
goto gluefin

gluefin:
  pause 1
  put apply my glue to my %3
  match shaperg Shaping with a wood shaper
  match carveg is ready to have more fine detail carved with a carving knife
  match carveg grain looks solid and ready for continued knife carving
  match carveg further carving with a knife
  match raspg A bulbous knot will make continued shaping difficult
  match clampsg materials are ready to be compressed with clamps or
  match gluefin Glue should now be applied so assembly can begin
  match backerg appears ready to be reinforced with some backer material
  match staing Some wood stain should be applied to the wood to finish it
  match stripsg appears ready to be strengthened with some leather strips
  match stripsg is ready to be assembled with leather strips
matchwait

backers:
  pause 1
  put put my shaper in my %1
waitfor You put
backer1:
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backerg:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my backer from my %1
waitfor You get
goto backerfin

backerc:
  pause 1
  put put my knife in my %1
waitfor You put
backer1:
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
  put analyze my %3
  match shaper1 Shaping with a wood shaper
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match clamps1 materials are ready to be compressed with clamps or
  match glue1 Glue should now be applied so assembly can begin
  match backer1 appears ready to be reinforced with some backer material
  match stain1 Some wood stain should be applied to the wood to finish it
  match strips1 appears ready to be strengthened with some leather strips
  match strips1 is ready to be assembled with leather strips
matchwait

stripss:  
  pause 1
  put put my shaper in my %1
waitfor You put
strips1:
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripsg:  
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my strips from my %1
waitfor You get
goto stripsfin

stripsc:  
  pause 1
  put put my knife in my %1
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
  match carve1 is ready to have more fine detail carved with a carving knife
  match carve1 grain looks solid and ready for continued knife carving
  match carve1 further carving with a knife
  match rasp1 A bulbous knot will make continued shaping difficult
  match clamps1 materials are ready to be compressed with clamps or
  match glue1 Glue should now be applied so assembly can begin
  match backer1 appears ready to be reinforced with some backer material
  match stain1 Some wood stain should be applied to the wood to finish it
  match strips1 appears ready to be strengthened with some leather strips
  match strips1 is ready to be assembled with leather strips
matchwait

stains:  
  pause 1
  put put my shaper in my %1
waitfor You put
stain1:
  pause 1
  put get my stain from my %1
waitfor You get
goto stainfin

staing:  
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my stain from my %1
waitfor You get
goto stainfin

stainc:  
  pause 1
  put put my knife in my %1
waitfor You put
  pause 1
  put get my stain from my %1
waitfor You get
goto stainfin

stainr:  
  pause 1
  put put my rasp in my %1
waitfor You put
  pause 1
  put get my stain from my %1
waitfor You get
goto stainfin

staincl:  
  pause 1
  put put my clamps in my %1
waitfor You put
  pause 1
  put get my stain from my %1
waitfor You get
goto stainfin

stainfin:
  pause 1
  put apply my stain to my %3
  match shapeend Close inspection of the completed
  match shapeend weight and draw strength appears significantly
  match shapeend construction shows improved signs of durability and wear resistance
matchwait

shapeend:
  pause 1
  put put my stain in my %1
waitfor You put
# goto shapend1
  pause 1
echo *** One %3 is enhanced. ***
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
echo *** One %3 is enhanced and stamped. ***
exit