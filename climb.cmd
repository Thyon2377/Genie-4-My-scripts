setvariable climb fir tree
if_1 setvariable climb %1 %2

send stand
waitforre ^You stand back up|^You are already standing
send get my $percussioninst from my $pack
waitforre ^You get|^You are already holding|^What were you referring to

climb:
send play $percussionsong on my $percussioninst
waitforre ^You begin|^You effortlessly begin|^You struggle|^You fumble|^You're already playing a song
send climb practice %climb
waitforre ^You finish practicing your climbing skill and take a well-earned break
tend:
if $bleeding = 1 then
{
put .tend
waitfor SCRIPT DONE
}
athletics.check:
if $Athletics.LearningRate < 33 then goto climb

endclimb:
send echo YOU ARE MIND LOCKED IN ATHLETICS.
put #play MindLocked
exit:
send play $percussionsong on my $percussioninst
waitforre ^You begin|^You effortlessly begin|^You struggle|^You fumble|^You're already playing a song
put .idlep