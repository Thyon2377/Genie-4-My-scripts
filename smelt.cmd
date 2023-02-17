action put $lastcommand when \.\.\.wait|type ahead

action setvariable deed.volume 0;setvariable deed.ready 0;setvariable deed.pure 1 when ^You flip your deed register|^But you're already on page|Turn the register to CONTENTS to see a full listing
action setvariable deed.volume $1 when Volume:       (\d+)
action setvariable deed.ready 1 when You think the item is ready for reclaiming in any Society Hall by now
action setvariable deed.pure 0 when The metal appears to be composed of


if "$charactername" = "Golldylachs" then setvariable tool.container pack
if "$charactername" = "Golldylachs" then setvariable smelt.container pack

if "$charactername" = "Anomalis" then setvariable tool.container backpack
if "$charactername" = "Anomalis" then setvariable smelt.container backpack

if "$charactername" = "Chyral" then setvariable tool.container satchel
if "$charactername" = "Chyral" then setvariable smelt.container satchel

setvariable smelt.room.count 0
setvariable smelt.room.index 0

setvariable HF.smelt.room 9342|8790|8787|9340|8729
setvariable CF.smelt.room 8779|8774|8773|19030
setvariable LvF.smelt.room 778|779|780
setvariable SF.smelt.room 647|651|656|659
setvariable FC.smelt.room 216|218|248

setvariable HF.supply.room 8785
setvariable CF.supply.room 8775


if "$zoneid" = 1 then
		{
			setvariable smelt.room %CF.smelt.room
			setvariable supply.room %CF.supply.room
		}
else				
if "$zoneid" = 30 then
		{
			setvariable smelt.room %HF.smelt.room
			setvariable supply.room %HF.supply.room
		}
				
 eval smelt.room.count count("%smelt.room", "|")

setvariable coal.order 2
setvariable oravir.order 3
setvariable tin.order 4
setvariable zinc.order 5
setvariable tiny.iron.order 6
setvariable big.iron.order 7
setvariable nickel.order 10
setvariable copper.order 12
setvariable lead.order 13

# Set the page range where pure steel is stored in the register
setvariable register.steel.first 1
setvariable register.steel.last 5
setvariable register.oravir.first 6
setvariable register.oravir.last 8
setvariable register.gold.first 9
setvariable register.gold.last 12



if_1 then goto pick.action
goto display.help

pick.action:
if %1 = cru or %1 = cruc or %1 = cruci or %1 = crucib or %1 = crucibl or %1 = crucible then
{
put #echo cyan Smelting what's in the crucible
gosub smelt
exit
} 

if %1 = ref or %1 = refi or %1 = refin or %1 = refine or %1 = flux then
{
if "$lefthandnoun" = "ingot" or "$righthandnoun" = "ingot" then
{
put #echo cyan Place the ingot in the crucible manually and try again
exit
}
put #echo cyan Refining what's in the crucible
gosub refine
exit
}

if %1 = list then
{
put #echo cyan Listing the existing mix recipes
put #echo cyan Usage is .smelt mix <mix number>
put #echo
put #echo
goto display.list
}

if %1 = recipe or %1 = mix then
{
if_2 then goto recipe.%2
put #echo cyan Please specify which mix to smelt
put #echo cyan Usage is .smelt mix <mix number>
put #echo
put #echo
goto display.list
}

goto display.help

display.list:
put #echo cyan MIX 1: -51 volume- -68.63%- -35*HCS, 16*Oravir- -3.745 Density-
put #echo cyan MIX 2: -69 volume- -71.01%- -49*HCS, 19*Oravir, 1*Tin- -3.870 Density-
put #echo cyan MIX 3: -60 volume- -75.00%- -45*HCS, 15*Oravir- -4.000 Density-
put #echo cyan MIX 4: -50 volume- -80.00%- -40*HCS, 10*Oravir- -4.200 Density-
put #echo cyan MIX 5: -60 volume- -85.00%- -51*HCS, 9*Oravir- -4.400 Density-
put #echo cyan MIX 6: -50 volume- -90.00%- -45*HCS, 5*Oravir- -4.600 Density-
put #echo cyan MIX 7: -56 volume- -96.43%- -54*HCS, 2*Oravir- -4.857 Density-
put #echo cyan MIX 8: -50 volume- -100.0%- -50*HCS- -5.000 Density-
put #echo cyan MIX 9: -50 volume- -96.00%- -48*HCS, 2*Lead- -5.120 Density-
put #echo cyan MIX 10: -50 volume- -90.00%- -45*HCS, 5*Lead- -5.300 Density-
put #echo cyan MIX 11: -50 volume- -86.00%- -43*HCS, 7*Lead- -5.420 Density-
put #echo cyan MIX 12: -50 volume- -82.00%- -41*HCS, 9*Lead- -5.540 Density-
put #echo cyan MIX 13: -50 volume- -68.00%- -34*HCS, 10*Gold, 6*Lead- -6.160 Density-
put #echo cyan MIX 14: -52 volume- -67.31%- -35*HCS, 15*Gold, 2*Lead- -6.269 Density-
put #echo cyan MIX 15: -46 volume- -67.39%- -31*HCS, 15*Gold- -6.304 Density-
put #echo cyan MIX 16: -168 volume- -100% High Carbon Steel- -Refined- -39942 Dokoras- -4 minutes- 
put #echo cyan MIX 17: -210 volume- -100% High Carbon Steel- -Unrefined- -39942 Dokoras- -7 minutes- 
put #echo cyan MIX 18: -168 volume- -100% Tin- -Refined- -7560 Dokoras- -35 minutes-
put #echo cyan MIX 19: -168 volume- -100% Medium Carbon Steel- -Refined- -39942 Dokoras- -4 minutes- 
put #echo cyan MIX 20: -168 volume- -100% Low Carbon Steel- -Refined- -39942 Dokoras- -4 minutes-
put #echo cyan MIX 21: -168 volume- -100% Oravir- -Refined- -7560 Dokoras- -35 minutes-
put #echo cyan MIX 22: -200 volume- -100% Bronze
put #echo cyan MIX 23: -168 volume- -100% Nickel -Refined- 
exit

display.help:
put #echo cyan This script creates ingots from pre-defined recipes
pause 2
put #echo cyan Usage: 
put #echo cyan .smelt help - Will display this help message
put #echo cyan .smelt crucible - Will smelt what's in the crucible
put #echo cyan .smelt refine - Will refine what's in the crucible
put #echo cyan .smelt list - Display the list of currently supported recipes
put #echo cyan .smelt mix <recipe number> - Mix the specified recipe
exit


########################################################## RECIPES ##################################################################

recipe.1:
put #echo cyan MIX 1: -51 volumes- -68.63%- -35*HCS, 16*Oravir- -3.745 Density-
pause 2
gosub register steel 35
gosub buy oravir 16
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 16
gosub smelt
exit

recipe.2:
put #echo cyan MIX 2: -69 volume- -71.01%- -49*HCS, 19*Oravir, 1*Tin- -3.870 Density-
pause 2
gosub register steel 49
gosub buy oravir 19
gosub buy tin 1
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 19
gosub add tin 1
gosub smelt
exit

recipe.3:
put #echo cyan MIX 3: -60 volume- -75.00%- -45*HCS, 15*Oravir- -4.000 Density-
pause 2
gosub register steel 45
gosub buy oravir 15
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 15
gosub smelt
exit

recipe.4:
put #echo cyan MIX 4: -50 volume- -80.00%- -40*HCS, 10*Oravir- -4.200 Density-
pause 2
gosub register steel 40
gosub buy oravir 10
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 10
gosub smelt
exit

recipe.5:
put #echo cyan MIX 5: -60 volume- -85.00%- -51*HCS, 9*Oravir- -4.400 Density-
pause 2
gosub register steel 51
gosub buy oravir 9
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 9
gosub smelt
exit

recipe.6:
put #echo cyan MIX 6: -50 volume- -90.00%- -45*HCS, 5*Oravir- -4.600 Density-
pause 2
gosub register steel 45
gosub buy oravir 5
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 5
gosub smelt
exit

recipe.7:
put #echo cyan MIX 7: -56 volume- -96.43%- -54*HCS, 2*Oravir- -4.857 Density-
pause 2
gosub register steel 54
gosub buy oravir 2
gosub find.crucible
gosub add.ingot steel 1
gosub add oravir 2
gosub smelt
exit

recipe.8:
put #echo cyan MIX 8: -50 volume- -100.0%- -50*HCS- -5.000 Density-
pause 2
gosub register steel 50
put get steel ingot from my %smelt.container
exit

recipe.9:
put #echo cyan MIX 9: -50 volume- -96.00%- -48*HCS, 2*Lead- -5.120 Density-
pause 2
gosub register steel 48
gosub buy lead 2
gosub find.crucible
gosub add.ingot steel 1
gosub add lead 2
gosub smelt
exit

recipe.10:
put #echo cyan MIX 10: -50 volume- -90.00%- -45*HCS, 5*Lead- -5.300 Density-
pause 2
gosub register steel 45
gosub buy lead 5
gosub find.crucible
gosub add.ingot steel 1
gosub add lead 5
gosub smelt
exit

recipe.11:
put #echo cyan MIX 11: -50 volume- -86.00%- -43*HCS, 7*Lead- -5.420 Density-
pause 2
gosub register steel 43
gosub buy lead 7
gosub find.crucible
gosub add.ingot steel 1
gosub add lead 7
gosub smelt
exit

recipe.12:
put #echo cyan MIX 12: -50 volume- -82.00%- -41*HCS, 9*Lead- -5.540 Density-
pause 2
gosub register steel 41
gosub buy lead 9
gosub find.crucible
gosub add.ingot steel 1
gosub add lead 9
gosub smelt
exit

recipe.13:
put #echo cyan MIX 13: -50 volume- -68.00%- -34*HCS, 10*Gold, 6*Lead- -6.160 Density-
pause 2
gosub register steel 34
gosub register gold 10
gosub buy lead 6
gosub find.crucible
gosub add.ingot steel 1
gosub add.ingot gold 1
gosub add lead 6
gosub smelt
exit

recipe.14:
put #echo cyan MIX 14: -52 volume- -67.31%- -35*HCS, 15*Gold, 2*Lead- -6.269 Density-
pause 2
gosub register steel 35
gosub register gold 15
gosub buy lead 2
gosub find.crucible
gosub add.ingot steel 1
gosub add.ingot gold 1
gosub add lead 2
gosub smelt
exit

recipe.15:
put #echo cyan MIX 15: -46 volume- -67.39%- -31*HCS, 15*Gold- -6.304 Density-
pause 2
gosub register steel 31
gosub register gold 15
gosub find.crucible
gosub add.ingot steel 1
gosub add.ingot gold 1
gosub smelt
exit

recipe.16:
put #echo cyan MIX 16: -168 volumes- -100% High Carbon Steel- -Refined- -39942 Dokoras- -4 minutes- 
gosub buy big.iron 21
gosub buy coal 63
gosub find.crucible
gosub add iron 20
gosub add coal 63
gosub add iron 1
gosub smelt
gosub refine
exit

recipe.17:
pause 2
put #echo cyan MIX 17: -210 volumes- -100% High Carbon Steel- -Unrefined- -39942 Dokoras- -7 minutes- 
gosub buy big.iron 21
gosub buy coal 63
gosub find.crucible
gosub add iron 20
gosub add coal 63
gosub add iron 1
gosub smelt
exit

recipe.18:
put #echo cyan MIX 18: -168 volumes- -100% Tin- -Refined- -7560 Dokoras- -35 minutes-
pause 2
setvariable recipe.loop 10
setvariable current.loop 0

recipe.18.loop:
math current.loop add 1
if %current.loop > %recipe.loop then goto recipe.18.continue
gosub buy tin 21
gosub find.crucible
gosub add tin 21
gosub smelt
put put my tin ingot in my %smelt.container
waitforre ^You put
goto recipe.18.loop

recipe.18.continue:
gosub add.ingot tin 10
gosub smelt
gosub refine
exit

recipe.19:
put #echo >Log orange Mix 19: Start
put #echo cyan MIX 19: -168 volumes- -100% Medium Carbon Steel- -Refined- -39942 Dokoras- -4 minutes- 
gosub buy big.iron 21
gosub buy coal 42
gosub find.crucible
gosub add iron 20
gosub add coal 42
gosub add iron 1
gosub smelt
gosub refine
put #parse SMELT DONE
put #echo >Log orange Mix 19: Done
pause roundtime
exit


recipe.20:
put #echo cyan MIX 20: -168 volumes- -100% Low Carbon Steel- -Refined- -39942 Dokoras- -4 minutes- 
gosub buy big.iron 21
gosub buy coal 21
gosub find.crucible
gosub add iron 20
gosub add coal 21
gosub add iron 1
gosub smelt
gosub refine
exit

recipe.21:
put #echo cyan MIX 21: -168 volumes- -100% Oravir- -Refined- -7560 Dokoras- -35 minutes-
pause 2
setvariable recipe.loop 10
setvariable current.loop 0

recipe.21.loop:
math current.loop add 1
if %current.loop > %recipe.loop then goto recipe.21.continue
gosub buy oravir 21
gosub find.crucible
gosub add oravir 21
gosub smelt
put put my oravir ingot in my %smelt.container
waitforre ^You put
goto recipe.21.loop

recipe.21.continue:
gosub add.ingot oravir 10
gosub smelt
gosub refine
exit

recipe.22:
put #echo cyan MIX 22: -168 volumes- -100% Bronze- -Refined- -7560 Dokoras- -35 minutes-
pause 2
setvariable recipe.loop 10 9   
setvariable current.loop 0

recipe.22.loop:
math current.loop add 1
if %current.loop > %recipe.loop then goto recipe.22.continue
gosub buy tin 4
gosub buy copper 16
gosub find.crucible
gosub add tin 4
gosub add copper 16
gosub smelt
put put my bronze ingot in my %smelt.container
waitforre ^You put
goto recipe.22.loop

recipe.22.continue:
gosub add.ingot bronze 10
gosub smelt
gosub refine
exit

recipe.23:
put #echo cyan MIX 23: -168 volumes- -100% Nickel- -Refined-
pause 2
setvariable recipe.loop 10
setvariable current.loop 0

recipe.23.loop:
math current.loop add 1
if %current.loop > %recipe.loop then goto recipe.23.continue
gosub buy nickel 21
gosub find.crucible
gosub add nickel 21
gosub smelt
put put my nickel ingot in my %smelt.container
waitforre ^You put
goto recipe.23.loop

recipe.23.continue:
gosub add.ingot nickel 10
gosub smelt
gosub refine
exit

############################################################# BUYING ################################################################


buy:

if "$zoneid" !=1 and "$zoneid" !=30 then
	{
		put #echo cyan Currently only works in Crossing and Riverhaven
		exit
	}

setvariable metal.buy $1
setvariable quantity.buy $2
setvariable counter.buy 0
put ,go2 %supply.room
waitforre go2 has exited
goto buy.order

buy.order:
put #echo >Log cyan Buying: %quantity.buyx %metal.buy

buy.order.loop:
if %counter.buy >= %quantity.buy then goto buy.order.done
put order %%metal.buy.order
waitforre Just order it again
put order %%metal.buy.order
waitforre The attendant takes some coins
put put my nugget in my %smelt.container
waitforre ^You put
math counter.buy add 1
goto buy.order.loop

buy.order.done:
put #echo >Log cyan Bought: %counter.buyx %metal.buy
return

############################################################# ADDING ################################################################

add:
setvariable metal.add $1
setvariable quantity.add $2
setvariable counter.add 0

add.metal:
put #echo >Log cyan Adding: %quantity.addx %metal.add


add.metal.loop:
if %counter.add >= %quantity.add then goto add.metal.done
put get %metal.add nugget from my %smelt.container
waitforre ^You get
put put my %metal.add nugget in crucible
waitforre ^You put
math counter.add add 1
goto add.metal.loop

add.metal.done:
put #echo >Log cyan Added: %counter.addx %metal.add
return


add.ingot:
setvariable metal.add $1
setvariable quantity.add $2
setvariable counter.add 0
put #echo >Log cyan Adding: %quantity.addx %metal.add ingots


add.ingot.loop:
if %counter.add >= %quantity.add then goto add.ingot.done
put get %metal.add ingot from my %smelt.container
waitforre ^You get
put put my %metal.add ingot in crucible
waitforre ^You put
math counter.add add 1
goto add.ingot.loop

add.ingot.done:
put #echo >Log cyan Added: %counter.addx %metal.add ingots
return

############################################################# PULL REGISTER ################################################################
register:
setvariable required.metal $1
setvariable required.volume $2
put get my register
waitforre ^You get
setvariable page.counter %register.%required.metal.first

register.loop:
if %page.counter > %register.%required.metal.last then goto register.fail

put turn my register to page %page.counter 
waitforre ^You flip your deed register to page|^But you're already on page
put read my register
waitforre ^You think it will still take|^You think the item is ready|Turn the register to CONTENTS to see a full listing
pause 0.5

if %deed.volume >= %required.volume and %deed.ready = 1 and %deed.pure = 1 then goto register.pull

math page.counter add 1
goto register.loop



register.pull:
put #echo >Log cyan Found steel ingot!
put pull my register
waitforre ^You remove a deed for a %required.metal
put stow my register
waitforre ^You put
put tap my deed
waitforre ^An attendant arrives
if %required.volume > 100 then goto register.cut.inverse
goto register.cut

register.cut:
put turn cutter to %required.volume
waitforre ^You dial the device to
goto register.done

register.cut.inverse:
evalmath cut.volume %deed.volume - %required.volume
put turn cutter to %cut.volume
waitforre ^You dial the device to
goto register.done

register.done:
put push my ingot with cutter
waitforre ^Roundtime
put put my other ingot in my %smelt.container
waitforre ^You put
put get my packet
waitforre ^You get
put push my ingot with my packet
waitforre ^You push the ingot to the side
put stow packet
waitforre ^You put|Stow what
put get my register
waitforre ^You get
put put my deed in my register
waitforre ^You place
put stow my register
waitforre ^You put
return

register.fail:
put #echo >Log red Failed to find steel ingot!
put stow my register
waitforre ^You put
exit

############################################################# FIND ROOM ################################################################

find.crucible:

    if (%smelt.room.index > %smelt.room.count) then goto all.rooms.occupied
    echo Checking Crucible: %smelt.room.index of %smelt.room.count
	send ,go2 %smelt.room(%smelt.room.index)
	waitforre go2 has exited
	gosub crucible.check
	if %good.crucible = 1 then return
crucible.check:
setvariable good.crucible 0

if "$roomplayers" != "" then goto crucible.occupied

if "$roomplayers" = "" then goto forge.check.crucible

forge.check.crucible:
put look in crucible
matchre crucible.empty There is nothing in there
matchre crucible.occupied nugget|ingot|molten
matchwait

crucible.empty:
put #echo >Log cyan Crucible: Empty
setvariable good.crucible 1
return

crucible.occupied:
put #echo >Log cyan Crucible: Occupied!
setvariable good.crucible 0
math smelt.room.index add 1
return

all.rooms.occupied:
put #echo >Log All Crucibles Occuplied! Pausing for 45s
pause 45
setvariable smelt.room.index 0
goto find.crucible

###################################################### MOVE #######################################################

move:
setvariable move.string $0
put #log >gather.txt gosub move %move.string
goto move.go

move.go.p:
pause 0.5
move.go:
put %move.string
matchre move.retreat You are engaged to|You can't do that while engaged|^While in combat
matchre move.stand ^You can't do that while kneeling|^You can't do that while sitting|^You can't do that while lying down|^You must be standing
matchre move.stand steepness is intimidating|can't seem to find purchase|find it hard going|your footing is questionable|slip after a few feet|A wave of dizziness hits you|Struck by vertigo
matchre move.go.p You are still stunned|still recovering from|\.\.\.wait|type ahead|You can't do that while entangled in a web
matchre move.error You can't go there|What were you referring to|You can't climb that
matchre return ^Obvious paths|^Obvious exits|^It's pitch dark and you can't see a thing
matchwait

move.stand:
if $standing = 1 then goto move.go
put stand
matchre move.stand \.\.\.wait|type ahead|The weight of all your possessions prevents you from standing|You can't do that while entangled in a web
matchre move.go ^You stand back up|You begin to get up and \*\*SMACK!\*\*
#matchre move.error You begin to get up and \*\*SMACK!\*\*
matchwait

move.retreat:
put retreat
matchre move.retreat You retreat back to pole range|You stop advancing|Roundtime|You are still stunned|\.\.\.wait|type ahead|You can't do that while entangled in a web
matchre move.go You retreat from combat|You are already as far away as you can get
matchre move.stand that while lying down
matchre move.kill ^Retreat to where
matchwait

move.kill:
put punch left
matchre move.go ^There is nothing else to face|^You aren't close enough to attack
matchre move.kill Roundtime|\.\.\.wait|type ahead
matchwait

move.error:
put #echo >Log green Move: Error!
exit



############################################################# SMELTING ################################################################
refine:
if "$lefthandnoun" = "ingot" or "$righthandnoun" = "ingot" then goto refine.add.ingot
gosub switch.tool right flux
put pour my flux in crucible
matchre bellows As you finish the fire flickers and is unable to consume its fuel
matchre shovel As you complete working the fire dies down and needs more fuel
matchre turn Upon finishing you observe clumps of molten metal accumulating
matchre mix Roundtime
matchwait

refine.add.ingot:
put put my ingot in crucible
waitforre ^You put
goto refine

smelt:
mix:
if $lefthandnoun = ingot then goto smelt.done
gosub switch.tool right "stirring rod"
put mix crucible with my rod
matchre bellows As you finish the fire flickers and is unable to consume its fuel
matchre shovel As you complete working the fire dies down and needs more fuel
matchre turn Upon finishing you observe clumps of molten metal accumulating
matchre mix Roundtime
matchwait

turn:
gosub switch.tool right "stirring rod"
put turn crucible with my rod
matchre bellows As you finish the fire flickers and is unable to consume its fuel
matchre shovel As you complete working the fire dies down and needs more fuel
matchre turn Upon finishing you observe clumps of molten metal accumulating
matchre mix Roundtime
matchwait

bellows:
gosub switch.tool right bellows
put push my bellows
matchre bellows As you finish the fire flickers and is unable to consume its fuel
matchre shovel As you complete working the fire dies down and needs more fuel
matchre turn Upon finishing you observe clumps of molten metal accumulating
matchre mix Roundtime
matchwait

shovel:
gosub switch.tool right shovel
put push fuel with my shovel
matchre bellows As you finish the fire flickers and is unable to consume its fuel
matchre shovel As you complete working the fire dies down and needs more fuel
matchre turn Upon finishing you observe clumps of molten metal accumulating
matchre mix Roundtime
matchwait



smelt.done:
return



switch.tool:
setvariable switch.side $1
setvariable switch.tool $2

put #echo Currently Holding: $%switch.sidehand
put #echo Need tobe Holding: %switch.tool

if "$%switch.sidehand" = "Empty" then goto switch.tool.get

if contains("$%switch.sidehand", "%switch.tool") then goto switch.tool.skip

switch.tool.stow:
put #echo Stowing...
put put my $%switch.sidehandnoun in my %tool.container
waitfor You put

switch.tool.get:
put #echo Getting...
if %switch.tool = sieve or %switch.tool = pestle then put get my %switch.tool from my %tool.container
else put get my %switch.tool
waitfor You get

switch.tool.skip:
if %adjusting.tongs = tongs and %tongs.mode != tongs then goto switch.tongs
if %adjusting.tongs = shovel and %tongs.mode != shovel then goto switch.tongs
put #echo Done!
return

switch.tongs:
math adjust.counter add 1
if %adjust.counter > 3 then goto switch.tongs.error
put adjust my tongs
matchre switch.tongs.error You cannot|referring to|holding that
matchre switch.tool.skip ^You lock|^With a yank
matchwait

switch.tongs.error:
put #echo >Log red Tongs: Error!
exit

return:
return