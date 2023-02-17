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

put #mapper load Map40_Langenfirth_to_Therenborough
put #mapper walk 209
if $roomid != 209 then waiteval $roomid = 209
pause
put #class arrive off
put #class joust off

goto walk

RETURN:
pause .5
pause .5
return

walk:
move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
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

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southwest
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

move southwest
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move south
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

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southeast
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move go stone bridge
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move go southern shore
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

move southeast
gosub power
gosub skill.check

move south
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move southwest
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

move southwest
gosub power
gosub skill.check

move southwest
gosub power
gosub skill.check

move west
gosub power
gosub skill.check

goto end

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

put #mapper walk 1
waitfor Langenfirth, Blufe Path