send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

send stop teach
waitforre ^You stop teaching|^But you aren't teaching anyone

send stop listen
waitforre ^You stop listening to|^But you aren't listening to anyone

send release all
waitforre ^You aren't harnessing any mana|^You aren't preparing a spell|^You have no cyclic spell active to release|^Release\?

send avoid all
waitforre ^All AVOID options cleared

send disband
waitforre ^You disband|^There was no one to disband

send leave
waitforre ^You have left your group|^You are not in a group to leave

put who full
waitforre ^Staff On Duty:$

put echo $date $time ($gametime)
pause .5

send exit