var limb.storage Journeypack
var block.storage Duffel Bag
var knife.storage Bag
var primer.storage Journeypack
var bead.shape wren
var wood.type oak
TOP:
pause 2
match START In the silver vial you see
match bless There is nothing
send look in vial in %limb.storage
matchwait
bless:
gosub bless1
pause 2
START:
pause 2
put put shaper in my %knife.storage
put put my knife in my %knife.storage
pause 5
GOTLIMB:
match CONTINUE You get a
match FORAGE What were you referring to
put get my limb from my %limb.storage
matchwait
FORAGE:
pause 4
match FORAGE unable to find anything.
match CONTINUE manage to find a
put forage limb
matchwait
NONOTHING:
echo
CONTINUE:
pause 2
put put my limb in my %limb.storage
pause 3
put prep bless 5
pause 2
send get vial in %limb.storage
pause 2
put get my limb from my %limb.storage
pause 2
put sprinkle vial on limb
pause 3
put cast my limb
pause 2
send stow vial
pause 2
put get my knife from my %knife.storage
goto CARVING
CARVING:
pause
match carving You begin to hack away
match carving With fluid strokes
match carving You continue to whittle away
match carving You grow more careful in your movements
match GOSHAPING With a final deep cut
put carve my limb with my knife
matchwait
GOSHAPING:
send put my block in my %block.storage
pause
if $Mechanical_Lore.LearningRate > 30 then goto exit
         goto TOP
bless1:
send open sack;get chalice in sack;push my purse
pause 2
send commune eluned
pause 5
send prep bless
pause 24
send cast water in chal
pause 3
send put chal in sack;close sack
pause 4
return
exit:
pause 5
echo ################# DONE WITH BEADS ############################
send #parse donecarving
put #parse donecarving
pause 5
exit