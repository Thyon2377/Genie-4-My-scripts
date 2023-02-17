send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
if $bleeding = 1 then
{
put .tend
waitfor SCRIPT DONE
}
send get $instrument from my harp case
waitforre ^You get|^You are already holding|^What were you referring to

play:
put #class perform on
send play $playsong on $instrument
waitforre ^You begin|^You effortlessly begin|^You struggle|^You fumble|^You're already playing a song
pause 30
bleeding:
if $bleeding = 1 then
{
put .tend
waitfor SCRIPT DONE
}
goto play