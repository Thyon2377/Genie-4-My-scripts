#shapearrows
#
# Make sure shaping book is turned to the correct page for what you plan
# to do.
#
# parameters are .shapearrows <container1> <container2> <part>
#
# example .shapearrows bag pack boar-tusk
#     or  .shapearrows bag bag cougar-claw
#     or  .shapearrows pack pack sabertooth
#     or  .shapearrows bag rucksack angiswaerd
#
#
# where <part> = what is being made, cougar-claw, boar-tusk, sabretooth,
#                angiswaerd, hele'la, basilisk, elsralael, soot-stained,
#                ice-adder, jagged-horn, drake-fang.
#       <container1> = bag, backpack, rucksack, etc.
#       <container2> = bag, backpack, rucksack, etc.
#
# This script assumes you have some shafts, arrowheads, tools and flights are 
# in the container1, and shaping book and maybe a stamp are in the container2 
# and yes they can both be the same container if you wish.  The Shaping book must
# be turned to the right page.  The script is currently set up to not stamp your
# arrows if you have a stamp.  If you want to stamp your arrows go find goto arrowend1
# and change that to goto arrowend2 and you will then stamp your arrows as you
# complete them.  Each arrowhead and shaft will make 5 arrows.  This script goes
# through one cycle to make 5 arrows.  Run it again to make 5 more etc.
#
# This script has nothing special in it, so it should work in the wizard front end,
# stormfront, and genie.  In the script I tend to put items in containers.  But you 
# can easily use stow left and stow right if your store help variables are set up.
#

startarrow:
  put glance
  match shapebook You glance down at your empty hands
  match arrowend You glance down to see
matchwait

shapebook:
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
  put get shaper from my %1
waitfor You get
  pause 1
  put get shafts from my %1
waitfor You get
  pause 1
  put shape shafts with my shaper
waitfor Roundtime
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get %3 arrowheads from my %1
waitfor You get
  put assemble my arrows with my arrowheads
  pause 1
  put get glue from my %1
waitfor You get
  pause 1
  put apply my glue to my arrows
  match carvearrows A handful of rough edges require carving with a knife
  match shapearrows Roundtime
matchwait

shapearrows:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shapearrows1

shapearrowsk:  
  pause 1
  put put my knife in my %1
waitfor You put
  pause 1
  put get my shaper from my %1
waitfor You get
goto shapearrows1

shapearrows1:
  pause 1
  put shape my arrows with my shaper
  match carvearrowsk A handful of rough edges require carving with a knife
  match arrowflights The arrows are ready for an application of glue to attach the flights
  match shapearrows1 Roundtime
matchwait

carvearrows:
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
goto carvearrows1

carvearrowsk:  
  pause 1
  put put my shaper in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
goto carvearrows1

carvearrows1:
  pause 1
  put carve my arrows with my knife
  match carvearrows1 A handful of rough edges require carving with a knife
  match arrowflightk The arrows are ready for an application of glue to attach the flights
  match shapearrowsk Roundtime
matchwait

arrowflights:
  pause 1
  put put my shaper in my %1
waitfor You put
goto arrowflightf

arrowflightk:
  pause 1
  put put my knife in my %1
waitfor You put
goto arrowflightf

arrowflightf:
  pause 1
  put get flights from my %1
waitfor You get
  put assemble my arrows with my flights
  pause 1
  put get glue from my %1
waitfor You get
  pause 1
  put apply my glue to my arrows
waitfor Roundtime
  pause 1
  put put my glue in my %1
waitfor You put
  pause 1
  put get my knife from my %1
waitfor You get
  pause 1
  put carve my arrows with my knife
waitfor Roundtime
goto arrowend1

arrowend:
  pause 1
  echo *** you have something in hand. ***
  echo *** Clear hands before starting this script. ***
exit

arrowend1:
  pause 1
  put put my knife in my %1
  pause 1
  echo *** One Set of 5 arrows is completed. ***
exit

arrowend2:
  pause 1
  put put my knife in my %1
waitfor You put
  pause 1
  echo *** One Set of 5 arrows is completed. ***
exit