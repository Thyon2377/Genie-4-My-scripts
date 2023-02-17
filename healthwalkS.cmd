#debug 10
put #class racial on
put #class rp on
put #class arrive off
put #class combat off
put #class joust off

timer clear
timer start
var cyclic_time 0
var lastaction APPRAISE

put avoid !drag
waitforre ^You're now avoiding

put avoid !hold
waitforre ^You're now avoiding

put avoid !join
waitforre ^You're now avoiding

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .* is too long to fit in the
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .* is too long to fit in the

send get my compendium
waitforre ^You get.*compendium|^You are already holding that
send open my compendium
waitforre ^You open your.*compendium to the section on|^That is already open!

put #mapper load Map67_Shard
put look
action put #queue clear;send $lastcommand when ^(\.\.\.wait|Sorry,)
action goto PERC1 when ^AUTOMAPPER MOVEMENT FAILED

goto PERC1

COMP:
if $bleeding = 1 then
{
put .tend
waitforre SCRIPT DONE|Script error: File not found:
}
if ($First_Aid.LearningRate >= 34) && ($Scholarship.LearningRate >= 34) then goto MAGIC
send turn my compendium
waitforre ^You turn to the section containing|^You attempt to turn.*compendium
send study my compendium
wait
pause .5
var lastaction COMP
goto HPERC

MAGIC:
if %t < %cyclic_time then goto FORAGE
var spell gs
if $Utility.LearningRate > $Augmentation.LearningRate then var spell MEF
send release all
waitforre ^You aren't harnessing any mana|^You aren't preparing a spell|^You have no cyclic spell active to release
if $mana < 65 then waiteval $mana >= 65
send prep %spell 20
waitforre ^You feel fully prepared to cast your spell|^You have no idea how to cast that spell
send cast
waitforre ^The world around you seems to slow|^(The|An?).*alfar warrior|^Rutilant sparks of light encircle you|^You don't have a spell prepared
var cyclic_time %t
math cyclic_time add 300
var lastaction MAGIC
goto HPERC

FORAGE:
if ($Perception.LearningRate >= 34) && ($Outdoorsmanship.LearningRate >= 34) then goto APPRAISE
matchre FORAGE2 ^You manage to collect
send collect torn cloth
matchwait 1
goto KICK
FORAGE2:
pause .5
send collect torn cloth
wait
KICK:
pause .5
send kick pile
waitforre Assuming you mean a pile|^I could not find what you were referring to|^\.\.\.wait
send kick pile
waitforre Assuming you mean a pile|^I could not find what you were referring to|^\.\.\.wait
var lastaction FORAGE
goto HPERC

APPRAISE:
if ($Appraisal.LearningRate >= 34) then goto HPERC
if (%spell = MEF) then goto ASSESS
if matchre ("$monsterlist", "(alfar warrior)") then goto APPRAISE2
waitforre ^(The|An?).*alfar warrior
APPRAISE2:
send appraise warrior quick
wait
pause
var lastaction APPRAISE
goto HPERC

ASSESS:
send get my $instrument from my $pack
waitforre ^You get|^You are already holding|^What were you referring to
send assess my $instrument
wait
pause
send appraise my $instrument
wait
pause
send put my $instrument in my $pack
waitforre ^You put your|^What were you referring to
var lastaction APPRAISE
goto HPERC

OTHER:
wait
pause 5
goto HPERC

HPERC:
if $Empathy.LearningRate > 33 then goto end
pause .5
matchre %section ^You're not ready to do that again, yet\.$
matchre RETURN ^You sense|^You fail to sense anything, however
send perceive health
matchwait

ACTIONCHOOSE:
if %lastaction = COMP then var section MAGIC
if %lastaction = MAGIC then var section FORAGE
if %lastaction = FORAGE then var section APPRAISE
if %lastaction = APPRAISE then var section COMP
return

PHMOVE:
if $Attunement.LearningRate < 34 then put #var powerwalk 1
if $Attunement.LearningRate >= 34 then put #var powerwalk 0
pause .5
put #mapper walk %ROOMID
waitfor %ROOMDESC
pause .5
return

RETURN:
pause .5
return

PERC1:
gosub ACTIONCHOOSE
var ROOMID 488
var ROOMDESC Stormwill Tower, Entrance Hall
gosub PHMOVE
gosub %section

PERC2:
gosub ACTIONCHOOSE
var ROOMID 452
var ROOMDESC Zerek's General Store
gosub PHMOVE
gosub %section

PERC3:
gosub ACTIONCHOOSE
var ROOMID 574
var ROOMDESC Painted Ladies Design
gosub PHMOVE
gosub %section

PERC4:
gosub ACTIONCHOOSE
var ROOMID 509
var ROOMDESC Traders' Guild, Sales Returns
gosub PHMOVE
gosub %section

PERC5:
gosub ACTIONCHOOSE
var ROOMID 436
var ROOMDESC Sister Imadrail's Emporium
gosub PHMOVE
gosub %section

PERC6:
gosub ACTIONCHOOSE
var ROOMID 548
var ROOMDESC Province of Ilithi, Citizenship Office
gosub PHMOVE
gosub %section

PERC7:
gosub ACTIONCHOOSE
var ROOMID 215
var ROOMDESC Budd's Barber Shop
gosub PHMOVE
gosub %section

PERC8:
gosub ACTIONCHOOSE
var ROOMID 225
var ROOMDESC Bettin' Birdies, The Casino
gosub PHMOVE
gosub %section

PERC9:
gosub ACTIONCHOOSE
var ROOMID 221
var ROOMDESC The Heraldry Shop
gosub PHMOVE
gosub %section

PERC10:
gosub ACTIONCHOOSE
var ROOMID 220
var ROOMDESC Blazons and Banners
gosub PHMOVE
gosub %section

PERC11:
gosub ACTIONCHOOSE
var ROOMID 208
var ROOMDESC Coin of the Realm
gosub PHMOVE
gosub %section

PERC13:
gosub ACTIONCHOOSE
var ROOMID 158
var ROOMDESC Aelik's Pawn
gosub PHMOVE
gosub %section

PERC14:
gosub ACTIONCHOOSE
var ROOMID 164
var ROOMDESC Balint's Tiles
gosub PHMOVE
gosub %section

PERC15:
gosub ACTIONCHOOSE
var ROOMID 181
var ROOMDESC Mirrors by Noelle
gosub PHMOVE
gosub %section

PERC16:
gosub ACTIONCHOOSE
var ROOMID 249
var ROOMDESC Liani's Heaven, Private Table
gosub PHMOVE
gosub %section

PERC17:
gosub ACTIONCHOOSE
var ROOMID 243
var ROOMDESC Tower of Honor, Guildleader's Office
gosub PHMOVE
gosub %section

PERC18:
gosub ACTIONCHOOSE
var ROOMID 487
var ROOMDESC A Grand Entrance
gosub PHMOVE
gosub %section

PERC19:
gosub ACTIONCHOOSE
var ROOMID 483
var ROOMDESC Seats of Plenty
gosub PHMOVE
gosub %section

PERC20:
gosub ACTIONCHOOSE
var ROOMID 462
var ROOMDESC Golden Phoenix, Front Desk
gosub PHMOVE
gosub %section

PERC21:
gosub ACTIONCHOOSE
var ROOMID 463
var ROOMDESC Golden Phoenix, Tavern Room
gosub PHMOVE
gosub %section

PERC22:
gosub ACTIONCHOOSE
var ROOMID 395
var ROOMDESC Temple of Darkness, Glassus' Shop
gosub PHMOVE
gosub %section

PERC23:
gosub ACTIONCHOOSE
var ROOMID 385
var ROOMDESC Shard's Osut'vie
gosub PHMOVE
gosub %section

gosub skill.check
goto PERC1

skill.check:
if $Empathy.LearningRate > 33 then
goto end
else
return

end:
send echo YOU ARE MIND LOCKED IN EMPATHY.
put #play MindLocked
put #class arrive off
put avoid all
waitforre ^All AVOID options cleared
send release all
waitforre ^You aren't harnessing any mana|^You aren't preparing a spell|^You have no cyclic spell active to release|^Release\?
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what
send stow left
waitforre ^You put|^Stow what
put #mapper walk Kureta
waitfor Shard, West City Gates