put #class arrive off
put #class joust off
put poweron

put avoid !drag
waitforre ^You're now avoiding

put avoid !hold
waitforre ^You're now avoiding

put avoid !join
waitforre ^You're now avoiding

send close my compendium
waitforre ^You close|^That is already|^What were

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the

put #mapper load Map67_Shard
put look

goto PERC1

PMOVE:
pause 1
put #mapper walk %ROOMID
waitfor %ROOMDESC
pause 1
return

RETURN:
pause 1
return

PERC1:
var ROOMID 488
var ROOMDESC Stormwill Tower, Entrance Hall
gosub PMOVE
gosub skill.check

PERC2:
var ROOMID 452
var ROOMDESC Zerek's General Store
gosub PMOVE
gosub skill.check

PERC3:
var ROOMID 574
var ROOMDESC Painted Ladies Design
gosub PMOVE
gosub skill.check

PERC4:
var ROOMID 508
var ROOMDESC Brickwell Tower, Guildmaster's Office
gosub PMOVE
gosub skill.check

PERC5:
var ROOMID 436
var ROOMDESC Sister Imadrail's Emporium
gosub PMOVE
gosub skill.check

PERC6:
var ROOMID 548
var ROOMDESC Province of Ilithi, Citizenship Office
gosub PMOVE
gosub skill.check

PERC7:
var ROOMID 215
var ROOMDESC Budd's Barber Shop
gosub PMOVE
gosub skill.check

PERC8:
var ROOMID 225
var ROOMDESC Bettin' Birdies, The Casino
gosub PMOVE
gosub skill.check

PERC9:
var ROOMID 221
var ROOMDESC The Heraldry Shop
gosub PMOVE
gosub skill.check

PERC10:
var ROOMID 220
var ROOMDESC Blazons and Banners
gosub PMOVE
gosub skill.check

PERC11:
var ROOMID 208
var ROOMDESC Coin of the Realm
gosub PMOVE
gosub skill.check

PERC12:
var ROOMID 158
var ROOMDESC Aelik's Pawn
gosub PMOVE
gosub skill.check

PERC13:
var ROOMID 164
var ROOMDESC Balint's Tiles
gosub PMOVE
gosub skill.check

PERC14:
var ROOMID 181
var ROOMDESC Mirrors by Noelle
gosub PMOVE
gosub skill.check

PERC15:
var ROOMID 249
var ROOMDESC Liani's Heaven, Private Table
gosub PMOVE
gosub skill.check

PERC16:
var ROOMID 243
var ROOMDESC Tower of Honor, Guildleader's Office
gosub PMOVE
gosub skill.check

PERC17:
var ROOMID 487
var ROOMDESC A Grand Entrance
gosub PMOVE
gosub skill.check

PERC18:
var ROOMID 483
var ROOMDESC Seats of Plenty
gosub PMOVE
gosub skill.check

PERC19:
var ROOMID 462
var ROOMDESC Golden Phoenix, Front Desk
gosub PMOVE
gosub skill.check

PERC20:
var ROOMID 463
var ROOMDESC Golden Phoenix, Tavern Room
gosub PMOVE
gosub skill.check

PERC21:
var ROOMID 395
var ROOMDESC Temple of Darkness, Glassus' Shop
gosub PMOVE
gosub skill.check

PERC22:
var ROOMID 385
var ROOMDESC Shard's Osut'vie
gosub PMOVE
gosub skill.check
goto PERC1

skill.check:
if $bleeding = 1 then
{
put .tend
waitfor SCRIPT DONE
}
if $Attunement.LearningRate > 33 then
{
goto end
}
return

end:
send echo YOU ARE MIND LOCKED IN ATTUNEMENT.
put #play MindLocked
put poweroff
put #class arrive on
put avoid all
waitforre ^All AVOID options cleared
send ask %gs for leave
waitforre ^With a sad look, (a|an) .+ (avenger|colepexy|dirnel|guardian|narmorbreth|woodwisp)|^To whom are you speaking
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what
send stow left
waitforre ^You put|^Stow what
put #mapper walk 29
waitfor Shard, Katamba's Crescent Road