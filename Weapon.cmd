#Forging - Weapons

if_1 goto top

ECHO *******************************
ECHO **
ECHO ** This script assumes that you will have an ingot on the anvil
ECHO ** and the weaponsmith book turned to the correct page before starting
ECHO ** and any extra ingredients needed in your tool container.
ECHO ** 
ECHO ** When starting the script, type .weaponsmith <item> <Toolcontainer> <OtherContainer>
ECHO ** Example : .weaponsmith jambiya bag pack
ECHO **
ECHO ** The ToolContainer is where you keep tools and ingredients
ECHO ** The Othercontainer to where you keep ingots, books, finished items
ECHO **
ECHO ********************************
exit

top:
  put glance
  match top1 You glance down at your empty hands
  match weapsend You glance down to see
matchwait

top1:
  pause
  put get weaponsmith book from my %3
  pause
  put study my book
  waitfor Roundtime
  pause 2
  put put my book in my %3
  waitfor You put
  put get my mallet from my %2
  pause
  put get my tongs from my %2
  waitfor You get

PoundIngot:
  put pound ingot on anvil with my mallet
  match Tongs1 could use some straighting along the horn
  match Tongs1 could use some straightening along the horn
  match Tongs1 would benefit from some soft reworking.
  match Bellows1 is unable to consume its fuel.
  match Bellows1 As you finish working the fire dims and produces
  match Shovel1 fire dies down and needs more fuel.
  match Shovel1 fire dies down and appears to need some more fuel.
  match Pound1 Roundtime
matchwait

Pound1:
  save Pound
goto Pound
Tongs1:
  save Tongs
goto Tongs
Bellows1:
  save Bellows
goto Bellows
Shovel1:
  save Shovel
goto Shovel

StowIngot:
  pause 1
  put put my mallet in my %2
  pause
  put get ingot
  pause
  put put my ingot in my %3
  match StowIngot ...wait
  match Stow2 What were you referring to?
  match Stow2 You put
matchwait

Stow2:
  pause
  put get my mallet from my %2
  waitfor You get
goto %s

Pound:
  pause 1
  put pound %1 on anvil with my mallet
  match Pound ...wait
  match Pound Roundtime
  match Tongs could use some straighting along the horn
  match Tongs could use some straightening along the horn
  match Tongs would benefit from some soft reworking.
  match Tub ready for a quench hardening in the slack tub.
  match Bellows As you finish working the fire dims and produces
  match Bellows is unable to consume its fuel.
  match Shovel fire dies down and needs more fuel.
  match Shovel fire dies down and appears to need some more fuel.
matchwait

Tongs:
  pause 1
  put turn %1 on anvil with my tongs
  match Pound Roundtime
  match Tub ready for a quench hardening in the slack tub.
  match Tongs ...wait
matchwait

Tub:
  pause 1
  put put my mallet in my %2
  pause
  put put my tongs in my %2
  waitfor You put
  put push tub
  match Tub ...wait
  match Hilt You need another finished wooden hilt
  match Haft You need another finished wooden haft 
  match ShortCord You need another finished short leather cord
  match LongPole You need another finished long wooden pole
  match NoAssemble The cosh now appears ready for grinding
  match NoAssemble The prod now appears ready for grinding
  match NoAssemble The cudgel now appears ready for grinding
  match NoAssemble The garz now appears ready for grinding
  match NoAssemble The gauntlet now appears ready for grinding
  match NoAssemble The bulhawf now appears ready for grinding
  match NoAssemble The boko now appears ready for grinding
  match NoAssemble The boomerang now appears ready for grinding
  match NoAssemble The pin now appears ready for grinding
  match NoAssemble The chain now appears ready for grinding
  match NoAssemble The nightstick now appears ready for grinding
  match NoAssemble The staff now appears ready for grinding
  match NoAssemble The spike now appears ready for grinding
  match NoAssemble The fan now appears ready for grinding
  match NoAssemble The dart now appears ready for grinding
  match NoAssemble The knuckles now appears ready for grinding
  match NoAssemble The quarterstaff now appears ready for grinding
  match NoAssemble The mace now appears ready for grinding
  match NoAssemble The sha-tai now appears ready
  match NoAssemble The cane now appears ready for grinding
matchwait

Bellows:
  pause 1
  put put my tongs in my %2
  pause
  put get my bellows from my %2
  waitfor You get
  put push bellows
  match Tub ready for a quench hardening in the slack tub.
  match StowBellow Roundtime
matchwait

Shovel:
  pause 1
  put put my tongs in my %2
  pause
  put get my shovel from my %2
  waitfor You get
  put push fuel with my shovel
  match Tub ready for a quench hardening in the slack tub.
  match StowShovel Roundtime
matchwait

StowBellow:
  pause 1
  put put my bellows in my %2
  pause
  put get my tongs from my %2
  waitfor You get
goto Pound

StowShovel:
  pause 1
  put put my shovel in my %2
  pause
  put get my tongs from my %2
  waitfor You get
goto Pound

NoAssemble:
  pause 1
  put get %1 on anvil
goto Turn

Hilt:
  pause 1
  put get %1 on anvil
  waitfor You get
  put get my hilt from my %2
  waitfor You get
  put assemble my Hilt with my %1
goto Turn

Haft:
  pause 1
  put get %1 on anvil
  waitfor You get
  put get my haft from my %2
  waitfor You get
  put assemble my Haft with my %1
goto Turn

ShortCord:
  pause 1
  put get %1 on anvil
  waitfor You get 
  put get my short cord from my %2
  waitfor You get
  put assem my cord with my %1
goto Turn

LongPole:
  pause 1
  put get %1 on anvil
  waitfor You get 
  put get my long pole from my %2
  waitfor You get
  put assem my pole with my %1
goto Turn

Turn:
  pause 1
  put turn grindstone
Turn2:
  match Grind keeping it spinning
  match Turn ...wait
  match Turn Roundtime
  match NoGrind Turn what?
matchwait

Grind:
  put push grindstone with %1
  match Grind ...wait
  match Oil Roundtime
matchwait

Oil:
  pause 1
  put get oil from my %2
  pause
  put pour my oil on my %1
  waitfor Roundtime
  pause 1
  put put my oil in my %2
  ECHO *******************************************************************
  ECHO **If you want to mark items, delete the next line "GOTO DONE"
  ECHO *******************************************************************
goto Done
  pause
  put get my stamp from my %2
  waitfor You get
  put mark my %1 with my stamp
  pause 2
  put put my stamp in my %2
Done:
  pause 2
  echo ********************************************************************
  echo * YOUR HAVE COMPLETED YOUR %1                                      *
  echo ********************************************************************
put get my forg log 
pause
put bundle %1 with log
pause
put stow log
exit

NoGrind:
  ECHO ********************************************************************
  ECHO ** No grindstone here
  ECHO **
  ECHO ** move to and grindstone, turn grindstone, and the script will 
  ECHO ** resume
  ECHO **
  ECHO ********************************************************************
goto Turn2

WEAPSEND:
  pause 2
  echo ********************************************************************
  echo * YOU HAVE SOMETHING IN HAND!  PUT IT AWAY AND RESTART THE SCRIPT! *
  echo ********************************************************************
exit