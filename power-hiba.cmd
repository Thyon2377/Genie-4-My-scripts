put #class racial on
put #class rp on
put #class arrive off
put #class combat off
put #class joust off

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

put #mapper load Map116_Hibarnhvidar
put #mapper walk 75
if $roomid != 75 then waiteval $roomid = 75
pause

goto walk

RETURN:
wait
pause .25
return

walk:
move go stone gate
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move go wooden bridge
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move go double-doored gate
gosub power
gosub arcana
gosub skill.check

move go iron gate
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move climb spiral stairway
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move climb spiral stairway
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move climb spiral staircase
gosub power
gosub arcana
gosub skill.check

move go narrow tunnel
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move go narrow tunnel
gosub power
gosub arcana
gosub skill.check

move climb spiral staircase
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move southeast
gosub power
gosub arcana
gosub skill.check

move climb spiral stairway
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move go ogee arch
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move climb narrow staircase
gosub power
gosub arcana
gosub skill.check

move go stone steps
gosub power
gosub arcana
gosub skill.check

move climb narrow stairs
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move go stone bridge
gosub power
gosub arcana
gosub skill.check

move go stone bridge
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move climb narrow stairs
gosub power
gosub arcana
gosub skill.check

move go stone steps
gosub power
gosub arcana
gosub skill.check

move climb narrow stairs
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move south
gosub power
gosub arcana
gosub skill.check

move go ogee arch
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move north
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move climb spiral stairway
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move go five-sided arch
gosub power
gosub arcana
gosub skill.check

goto walk

power:
send power
waitforre ^Roundtime|^Something in the area is interfering
wait
pause .25
return

arcana:
if $Arcana.LearningRate < 34 && $concentration > 99 && $crystaldone = yes then
{
send gaze $sanowret
waitforre ^You gaze intently into your.+sanowret crystal, seeking the promise of hidden knowledge as light dances across its surface
return
}
return

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
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

send #mapper walk 285
waitfor Hvairn's Heraldry Room

exit: