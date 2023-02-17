#debuglevel 10
put #class tend off
action var fullprep yes when ^You feel fully prepared to cast your spell
put #class tend off

put demeanor neutral
waitforre ^You decide to take things as they come

put avoid touch
waitforre ^You're now allowing attempts to touch you

vhcheck:
if $health < 60 then
{
gosub vh
}

start:
action setvariable part $1;goto tend when ^The bandages binding your (.*) (soak|come|become)
waitforre you begin bleeding again\.$

tend:
put whisper %1 Tend my %part.
waitforre ^You whisper|^Whisper what
goto start

vh:
evalmath HARNESS round($half.vh / 2)
put prep VH
pause 2
send charge $cambrinth %HARNESS
wait
pause
send charge $cambrinth %HARNESS
wait
pause
send invoke $cambrinth
wait
pause .25
if %fullprep = no then waiteval %fullprep = yes
send cast
pause .5
return

end:
put #class tend on