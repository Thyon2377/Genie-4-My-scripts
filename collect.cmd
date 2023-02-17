put #class racial on
put #class rp on
put #class combat off
put #class joust off

setvariable COLLECT DIRT
if_1 setvariable COLLECT %1

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
#send remove my $percussioninst
#waitforre ^You slide a pair of|^You aren't wearing that|^Remove what
#send put my $percussioninst in my $pack
#waitforre ^You put your.+in your|^What were you referring to

send stand
waitforre ^You stand|^You are already standing

collect:
send collect %COLLECT
pause
match junk The room is too cluttered to find anything here
matchwait 1
send kick pile
pause .5
send kick pile
waitforre Assuming you mean a pile|^I could not find what you were referring to|^\.\.\.wait
pause

perception.check:
if $Outdoorsmanship.LearningRate > 33 && $Perception.LearningRate > 33 then
goto endclean
else
goto collect

junk:
send stand
waitforre ^You stand|^You are already standing
send kick pile
matchre collect I could not find what you were referring to
matchre junk Assuming you mean a pile
matchwait 1
goto junk

endclean:
send kick pile
matchre endperception I could not find what you were referring to
matchre endclean Assuming you mean a pile
matchwait 1

endperception:
send echo YOU ARE MIND LOCKED IN OUTDOORSMANSHIP AND PERCEPTION.
put #play MindLocked

exit: