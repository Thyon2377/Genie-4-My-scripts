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
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

put #mapper load Map61_Leth_Deriel
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
var ROOMID 165
var ROOMDESC Madame Orris' Perfumerie, Salon
gosub PMOVE
gosub skill.check

PERC2:
var ROOMID 186
var ROOMDESC Arthianna's Clinic, Healing Tent
gosub PMOVE
gosub skill.check

PERC3:
var ROOMID 157
var ROOMDESC Khushi's, Back Room
gosub PMOVE
gosub skill.check

PERC4:
var ROOMID 170
var ROOMDESC Ongadine's Garb and Gear, Showroom
gosub PMOVE
gosub skill.check

PERC5:
var ROOMID 146
var ROOMDESC Reena's Rainbow, Salesroom
gosub PMOVE
gosub skill.check

PERC6:
var ROOMID 148
var ROOMDESC Dove's Delightful Dwellings
gosub PMOVE
gosub skill.check

PERC7:
var ROOMID 151
var ROOMDESC Sinjian's Bardic Requisites, Sales Room
gosub PMOVE
gosub skill.check

PERC8:
var ROOMID 154
var ROOMDESC Blanca's Basketry and Wickerworks, Showroom
gosub PMOVE
gosub skill.check

PERC9:
var ROOMID 156
var ROOMDESC Leth Deriel, Wooden Shack
gosub PMOVE
gosub skill.check

PERC10:
var ROOMID 160
var ROOMDESC Huyelm's Trueflight Bow and Arrow Shop, Salesroom
gosub PMOVE
gosub skill.check

PERC11:
var ROOMID 162
var ROOMDESC Morikai's, Salesroom
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
put #class arrive off
put avoid all
waitforre ^All AVOID options cleared
send ask %gs for leave
waitforre ^With a sad look, (a|an) .+ (avenger|colepexy|dirnel|guardian|narmorbreth|woodwisp)|^To whom are you speaking
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
put #mapper walk Kilth Aldiyaus
waitfor Kilth Aldiyaus, Prayer Branch
