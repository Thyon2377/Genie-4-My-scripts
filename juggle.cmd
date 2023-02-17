
send get my $juggle
waitforre ^You|^What

juggle:
send juggle my $juggle
wait
pause
goto perception.check

perception.check:
if $Perception.LearningRate > 33 then
	goto endperception
	else
	goto juggle

endperception:
send echo YOU ARE MIND LOCKED IN PERCEPTION.
put #play MindLocked
send stow my $juggle
waitforre ^You put|^Stow what