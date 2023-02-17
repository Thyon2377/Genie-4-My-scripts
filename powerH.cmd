

send close my $book
waitforre ^You close|^That is already|^What were

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the

put #mapper load Map30_Riverhaven
put look

goto PERC1

PMOVE:
pause 1
put #mapper walk %ROOMID
waitfor %ROOMDESC
pause 1
put perc
pause
return

RETURN:
pause 1
return

PERC1:
var ROOMID 8
var ROOMDESC Riverhaven, Town Square
gosub PMOVE
gosub skill.check

PERC2:
var ROOMID 9
var ROOMDESC Riverhaven, Town Hall Road
gosub PMOVE
gosub skill.check

PERC3:
var ROOMID 10
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC4:
var ROOMID 11
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC5:
var ROOMID 12
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC6:
var ROOMID 13
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC7:
var ROOMID 14
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC8:
var ROOMID 15
var ROOMDESC Riverhaven, River Road East
gosub PMOVE
gosub skill.check

PERC9:
var ROOMID 16
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC10:
var ROOMID 17
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC11:
var ROOMID 18
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC12:
var ROOMID 19
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC13:
var ROOMID 20
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC14:
var ROOMID 21
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC15:
var ROOMID 22
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC16:
var ROOMID 23
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC17:
var ROOMID 24
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC18:
var ROOMID 25
var ROOMDESC Riverhaven, Ring Road East
gosub PMOVE
gosub skill.check

PERC19:
var ROOMID 26
var ROOMDESC Riverhaven, Theren Way
gosub PMOVE
gosub skill.check

PERC20:
var ROOMID 27
var ROOMDESC Riverhaven, Ring Road West
gosub PMOVE
gosub skill.check

PERC21:
var ROOMID 28
var ROOMDESC Riverhaven, Ring Road West
gosub PMOVE
gosub skill.check

PERC22:
var ROOMID 29
var ROOMDESC Riverhaven, Ring Road West
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
send close my $book
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what
send stow left
waitforre ^You put|^Stow what
put #goto 59
exit