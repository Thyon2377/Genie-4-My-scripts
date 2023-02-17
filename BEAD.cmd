var limb.storage Journeypack
var block.storage Duffel.Bag
var knife.storage Bag
var primer.storage Journeypack
var bead.shape wren

TOP:
send get my block from my %block.storage
pause
put put my knife in my %knife.storage
pause
put get my shaper from  %knife.storage
pause
goto Shaping
SHAPING:
pause 1
match SHAPING You masterfully
match SHAPING You skillfully begin
match SHAPING You confidently
match SHAPING Trying your best
match SHAPING With heavy strokes
match SHAPING You smile with satisfaction
match SHAPING You notice the
match SHAPING You work at shaping your
match SHAPING Pursing your lips in concentration
match SHAPING You focus
match SHAPING You adeptly begin shaping
match GOTLIMB You must be holding
match DONE Your spirit soars with pride
put shape block to %bead.shape
matchwait
DONE:
pause
put put shaper in %knife.storage
pause 1
put app bead
pause 10
put put bead on chain
goto TOP
Exit:
echo DONE
echo Created by Promithius