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

put #mapper load Map47_Muspar'i
put #mapper walk 33
if $roomid != 33 then waiteval $roomid = 33
pause
put #class arrive off
put #class joust off

goto walk

RETURN:
wait
pause .25
return

walk:
move south
gosub power
gosub arcana
gosub skill.check

move west
gosub power
gosub arcana
gosub skill.check

move southwest
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

move west
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move go white arch
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

move west
gosub power
gosub arcana
gosub skill.check

move northeast
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

move south
gosub power
gosub arcana
gosub skill.check

move east
gosub power
gosub arcana
gosub skill.check

move southwest
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

move southeast
gosub power
gosub arcana
gosub skill.check

move go white arch
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

move north
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

move northeast
gosub power
gosub arcana
gosub skill.check

move go low shop
gosub power
gosub arcana
gosub skill.check

move out
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

move southwest
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

move west
gosub power
gosub arcana
gosub skill.check

move go marble steps
gosub power
gosub arcana
gosub skill.check

move go paneled doors
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

move go stairway
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

move go stairway
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

move go paneled doors
gosub power
gosub arcana
gosub skill.check

move go marble steps
gosub power
gosub arcana
gosub skill.check

move east
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

move northeast
gosub power
gosub arcana
gosub skill.check

move northwest
gosub power
gosub arcana
gosub skill.check

move southwest
gosub power
gosub arcana
gosub skill.check

move go limestone gate
gosub power
gosub arcana
gosub skill.check

move northeast
gosub power
gosub arcana
gosub skill.check

move northwest
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

move go limestone gate
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

move southwest
gosub power
gosub arcana
gosub skill.check

move southwest
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

move go white arch
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

move west
gosub power
gosub arcana
gosub skill.check

move northeast
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

put #mapper walk 295
waitfor Royal Library of Muspar'i, Foyer