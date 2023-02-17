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

put #mapper load Map1_Crossing
put #mapper walk 139
if $roomid != 139 then waiteval $roomid = 139
pause
put #class arrive off
put #class joust off

goto walk

RETURN:
pause .5
pause .5
return

walk:
move north
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move go bridge
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move northeast
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move northeast
gosub power
gosub skill.check

move go longbow bridge
gosub power
gosub skill.check

move northeast
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move northeast
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move northwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move northwest
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move east
gosub power
gosub skill.check

move northeast
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move north
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

goto walk

power:
send power
waitforre ^Roundtime|^Something in the area is interfering
pause .5
pause .5
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
put #class arrive on
put avoid all
waitforre ^All AVOID options cleared
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what
send stow left
waitforre ^You put|^Stow what

put #mapper walk 42
waitfor The Crossing, Hodierna Way