send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room
send get my runestone
waitforre ^You get|^You are already holding|^What were you referring to

focus:
send focus my runestone
wait
pause .25

sorcery.check:
if $Sorcery.LearningRate > 33 then
goto end
else
goto focus

end:
send echo YOU ARE MIND LOCKED IN SORCERY.
put #play MindLocked
send stow my runestone