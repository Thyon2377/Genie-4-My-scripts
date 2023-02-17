#carves - carve stone
#  usage .carves <stonesize> <stonemade> <specialitem> <toolcontainer> <bookcontainer>
#    where <StoneSize> = Boulder, rock, stone, or slab for tables or block for cases.
#          <StoneMade> = what is being made, table, hammer, etc.
#          <SpecialItem> = 0 normally
#                        = 1 round stone table
#                        = 2 long stone table
#                        = 2 stone buffet table
#                        = 2 stone dining table
#                        = 3 stone meditation table
#                        = 4 stone parquet table
#                        = 5 Stone Flail
#          <toolcontainer> where tools and item starts.
#          <bookcontainer> where the carving book is located.
# example carves boulder slab 0 (for all non special table types) bag pack
# example carves boulder slab 1 (for round stone table) bag pack
# example carves slab table 0 bag pack
# example carves rock club 0 (for war club) bag pack
# example carves rock flail 5 (for stone flail) bag pack
#
# Note this script is set up for stormfront.  To make it run for the wizard, 
# change setvariable toolr tooltypes to save tooltypes.  Then change the line
# goto myc%toolc to goto myc%s.
#
# This script assumes you have a type of stone item in front of you, tools and ingredients
# in the StoneCcontainer, and book in the bookcontainer and yes you can make both containers
# the same container.  The carving book must already be turned to the right page.  Ten 
# stone items you make in chapter 1 are actually ingredients for items made in chapter 2+.
# Note all tables start with a thick stone slab in hand. You have two ways to terminate
# the script one is the label Donesc the other is Stampsc which you manually have
# to change in each area where Donesc is used.
#

startsc:
  put get carving book from my %5
waitfor You get
  pause 1
  put study my book
waitfor Roundtime
  pause 1
  put put my carving book in my %5
waitfor You put
  pause 1
  put get my chisel from my %4
waitfor You get
  setvariable toolsc chisel
#  save chisel
  pause 1
  put carve %1 with my chisel
  match Rasps developed an uneven texture along its surface.
  match Rasps determine it is no longer level.
  match Rifflers Upon completion you notice several rough, jagged
  match Polishs Upon finishing you see some discolored areas
  match Carves1 Roundtime
matchwait

Carves1:
  pause 2
  put carve %2 with my chisel
  match Rasps developed an uneven texture along its surface.
  match Rasps determine it is no longer level.
  match Rifflers Upon completion you notice several rough, jagged
  match Polishs Upon finishing you see some discolored areas
  match Donesc You cannot figure out how to do that.
  match SmallBlocksc You need another refined small stone block
  match LargeBlocksc You need another refined large stone block
  match ThinSlabsc You need another refined thin stone slab
  match ThickSlabsc You need another refined thick stone slab
  match ShalBasinsc You need another refined shallow stone basin
  match DeepBasinsc You need another refined deep stone basin
  match ShortSPolesc You need another refined short stone pole
  match LongSPolesc You need another refined long stone pole
  match SmallSpheresc You need another refined small stone sphere
  match LargeSpheresc You need another refined large stone sphere
  match ShortCordsc You need another finished short leather cord
  match LargeCordsc You need another finished long leather cord
  match ShorWPolesc You need another finished short wooden pole
  match LongWPolesc You need another finished long wooden pole
  match Carves1 Roundtime
matchwait

Rasps:
  pause 2
  put put my chisel in my %4
waitfor You put
  setvariable toolsc rasp
#  save rasp
  pause 1
  put get my rasp from my %4
waitfor You get
  pause 1
  put scrape %2 with my rasp
  match Stows Roundtime
  match SmallBlocksc You need another refined small stone block
  match LargeBlocksc You need another refined large stone block
  match ThinSlabsc You need another refined thin stone slab
  match ThickSlabsc You need another refined thick stone slab
  match ShalBasinsc You need another refined shallow stone basin
  match DeepBasinsc You need another refined deep stone basin
  match ShortSPolesc You need another refined short stone pole
  match LongSPolesc You need another refined long stone pole
  match SmallSpheresc You need another refined small stone sphere
  match LargeSpheresc You need another refined large stone sphere
  match ShortCordsc You need another finished short leather cord
  match LargeCordsc You need another finished long leather cord
  match ShorWPolesc You need another finished short wooden pole
  match LongWPolesc You need another finished long wooden pole
matchwait

Rifflers:
  pause 2
  put put my chisel in my %4
waitfor You put
  setvariable toolsc riffler
#  save riffler
  pause 1
  put get my riffler from my %4
waitfor You get
  pause 1
  put rub %2 with my riffler
  match Stows Roundtime
  match SmallBlocksc You need another refined small stone block
  match LargeBlocksc You need another refined large stone block
  match ThinSlabsc You need another refined thin stone slab
  match ThickSlabsc You need another refined thick stone slab
  match ShalBasinsc You need another refined shallow stone basin
  match DeepBasinsc You need another refined deep stone basin
  match ShortSPolesc You need another refined short stone pole
  match LongSPolesc You need another refined long stone pole
  match SmallSpheresc You need another refined small stone sphere
  match LargeSpheresc You need another refined large stone sphere
  match ShortCordsc You need another finished short leather cord
  match LargeCordsc You need another finished long leather cord
  match ShorWPolesc You need another finished short wooden pole
  match LongWPolesc You need another finished long wooden pole
matchwait

Polishs:
  pause 2
  put put my chisel in my %4
waitfor You put
  setvariable toolsc polish
#  save polish
  pause 1
  put get polish from my %4
waitfor You get
  pause 1
  put apply my polish to %2
  match Stows Roundtime
  match SmallBlocksc You need another refined small stone block
  match LargeBlocksc You need another refined large stone block
  match ThinSlabsc You need another refined thin stone slab
  match ThickSlabsc You need another refined thick stone slab
  match ShalBasinsc You need another refined shallow stone basin
  match DeepBasinsc You need another refined deep stone basin
  match ShortSPolesc You need another refined short stone pole
  match LongSPolesc You need another refined long stone pole
  match SmallSpheresc You need another refined small stone sphere
  match LargeSpheresc You need another refined large stone sphere
  match ShortCordsc You need another finished short leather cord
  match LargeCordsc You need another finished long leather cord
  match ShorWPolesc You need another finished short wooden pole
  match LongWPolesc You need another finished long wooden pole
matchwait

Stows:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  pause 1
  setvariable toolsc chisel
#  save chisel
  put get my chisel from my %4
goto Carves1

SmallBlocksc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get small block
waitfor You pick up
  pause 1
  put assemble my small block with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1


LargeBlocksc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get large block
waitfor You pick up
  pause 1
  put assemble my large block with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

ThinSlabsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get thin slab
waitfor You pick up
  pause 1
  put assemble my thin slab with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

Thickslabsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get thick slab
waitfor You pick up
  pause 1
  put assemble my thick slab with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

ShalBasinsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get shallow basin
waitfor You pick up
  pause 1
  put assemble my shallow basin with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

DeepBasinsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get deep basin
waitfor You pick up
  pause 1
  put assemble my deep basin with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

ShortSPolesc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get short pole
waitfor You pick up
  pause 1
  put assemble my short pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

LongSPolesc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
goto lsp%3

lsp0:
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

lsp1:
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

lsp2:
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

lsp4:
  pause 2
  put get long pole
waitfor You pick up
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 2
  put get thin slab
waitfor You pick up
  pause 1
  put assemble my thin slab with %2
waitfor You place your
  pause 2
  put get thin slab
waitfor You pick up
  pause 1
  put assemble my thin slab with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

SmallSpheresc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
goto sss%3

sss0:
  pause 2
  put get small sphere
waitfor You pick up
  pause 1
  put assemble my small sphere with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

sss2:
  pause 2
  put get small sphere
waitfor You pick up
  pause 1
  put assemble my small sphere with %2
waitfor You place your
  pause 2
  put get small sphere
waitfor You pick up
  pause 1
  put assemble my small sphere with %2
waitfor You place your
  pause 2
  put get small sphere
waitfor You pick up
  pause 1
  put assemble my small sphere with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

LargeSpheresc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get large sphere
waitfor You pick up
  pause 1
  put assemble my large sphere with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

ShortCordsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get short cord from my %4
waitfor You get
  pause 1
  put assemble my short cord with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

LargeCordsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
goto lcs%3

lcs0:
  pause 2
  put get long cord from my %4
waitfor You get
  pause 1
  put assemble my long cord with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

lcs5:
  pause 2
  put get long cord from my %4
waitfor You get
  pause 1
  put assemble my long cord with %2
waitfor You place your
  pause 2
  put get long pole from my %4
waitfor You get
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

ShorWPolesc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get short pole from my %4
waitfor You get
  pause 1
  put assemble my short pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

LongWPolesc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  setvariable toolsc chisel
#  save chisel
  pause 1
  put get long pole from my %4
waitfor You get
  pause 1
  put assemble my long pole with %2
waitfor You place your
  pause 1
  put get my chisel from my %4
goto Carves1

stampsc:
  pause 2
  put put my %toolsc in my %4
#  put put my %s in my %4
waitfor You put
  pause 1
  put get my stamp from my %5
waitfor You get
  pause 1
  put mark %2 with my stamp
waitfor Roundtime
  pause 1
  put put my stamp in my %5
waitfor You put
  pause 1
echo -------------------------------
echo =  One %2 has been carved.
echo -------------------------------
exit

Donesc:
  pause 2
  put put my %toolsc in my %4
  put put my %s in my %4
waitfor You put
  pause 1
echo -------------------------------
echo =  One %2 has been carved.
echo -------------------------------
exit