#carveb - carve bone
#  usage .carveb <bonemade> <toolcontainer> <bookcontainer>
#    where <bonemade> = What is being made, table, pole, club, knife, band, gloves.
#          <toolcontainer> where tools and item starts.
#          <bookcontainer> where the carving book is located.
# example .carveb table (for all table types) bag pack
# example .carveb knife (for a carving knife) bag pack
# example .carveb tailband (for bone tailband) bag pack
# example .carveb helm (for a bone helm) bag pack
#
# Note this script is set up for stormfront.  To make it run for the wizard, 
# change setvariable toolb tooltypes to save tooltypes.  Then change the lines
# goto setvariable toolbc saw to save saw, and everwhere you see put put my %toolbc in my %2
# change it to put put my %s in my %2
#
# This script assumes you have a bone stack in hand already cut to the right size, 
# tools and ingredients in the ToolCcontainer, and book in the bookcontainer and 
# yes you can make both containers the same container.  The carving book must 
# already be turned to the right page.  Two bone items you make in chapter 6 are 
# actually ingredients for items made in chapter 7.  You have two ways to terminate
# the script one is the label Donebc the other is Stampbc which you manually have
# to change in each area where Donebc is used.
#

startbc:
  put get carving book from my %3
waitfor You get
  pause 1
  put study my book
waitfor Roundtime
  pause 1
  put put my carving book in my %3
waitfor You put
  pause 1
  put get my saw from my %2
waitfor You get
  setvariable toolbc saw
#  save saw
  pause 1
  put carve my stack with my saw
  match Raspb developed an uneven texture along its surface.
  match Raspb is uneven
  match Rifflerb Upon completion you notice several rough, jagged
  match Polishb Upon finishing you see some discolored areas
  match Carveb1 Roundtime
matchwait

Carveb1:
  pause 2
  put carve my %1 with my saw
  match Raspb developed an uneven texture along its surface.
  match Raspb is uneven
  match Rifflerb Upon completion you notice several rough, jagged
  match Polishb Upon finishing you see some discolored areas
  match Donebc You cannot figure out how to do that.
  match ShortBPolebc You need another refined short bone pole
  match LongBPolebc You need another refined long bone pole
  match ShortCordbc You need another finished short leather cord
  match Carveb1 Roundtime
matchwait

Raspb:
  pause 2
  put put my saw in my %2
waitfor You put
  setvariable toolbc rasp
#  save rasp
  pause 1
  put get my rasp from my %2
waitfor You get
  pause 1
  put scrape my %1 with my rasp
  match Stowb Roundtime
  match ShortBPolebc You need another refined short bone pole
  match LongBPolebc You need another refined long bone pole
  match ShortCordbc You need another finished short leather cord
matchwait

Rifflerb:
  pause 2
  put put my saw in my %2
waitfor You put
  setvariable toolbc riffler
#  save riffler
  pause 1
  put get my riffler from my %2
waitfor You get
  pause 1
  put rub my %1 with my riffler
  match Stowb Roundtime
  match ShortBPolebc You need another refined short bone pole
  match LongBPolebc You need another refined long bone pole
  match ShortCordbc You need another finished short leather cord
matchwait

Polishb:
  pause 2
  put put my saw in my %2
waitfor You put
  setvariable toolbc polish
#  save polish
  pause 1
  put get polish from my %2
waitfor You get
  pause 1
  put apply my polish to %1
  match Stowb Roundtime
  match ShortBPolebc You need another refined short bone pole
  match LongBPolebc You need another refined long bone pole
  match ShortCordbc You need another finished short leather cord
matchwait

Stowb:
  pause 2
  put put my %toolbc in my %2
#  put put my %s in my %2
waitfor You put
  pause 1
  setvariable toolbc saw
#   save saw
  put get my saw from my %2
goto Carveb1

ShortBPolebc:
  pause 2
  put put my %toolbc in my %2
#  put put my %s in my %2
waitfor You put
  setvariable toolbc saw
#  save saw
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get my saw from my %2
goto Carveb1

LongBPolebc:
  pause 2
  put put my %toolbc in my %2
#  put put my %s in my %2
waitfor You put
  setvariable toolbc saw
#  save saw
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get pole from my %2
waitfor You get
  pause 1
  put assemble my pole with my %1
waitfor You place your
  pause 1
  put get my saw from my %2
goto Carveb1

ShortCordbc:
  pause 2
  put put my %toolbc in my %2
#  put put my %s in my %2
waitfor You put
  setvariable toolbc saw
#  save saw
  pause 1
  put get short cord from my %2
waitfor You get
  pause 1
  put assemble my short cord with my %1
waitfor You place your
  pause 1
  put get my saw from my %2
goto Carveb1

stampbc:
  pause 2
  put put my saw in my %2
waitfor You put
  pause 1
  put get my stamp from my %3
waitfor You get
  pause 1
  put mark %1 with my stamp
waitfor Roundtime
  pause 1
  put put my stamp in my %3
waitfor You put
  pause 1
echo -------------------------------
echo =  One %1 has been carved.
echo -------------------------------
exit

Donebc:
  pause 2
  put put my saw in my %2
waitfor You put
  pause 1
echo -------------------------------
echo =  One %1 has been carved.
echo -------------------------------
exit