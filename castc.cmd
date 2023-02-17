action var fullprep yes when ^You feel fully prepared to cast your spell
setvariable fullprep no
setvariable mana %2
put #var lastmana %mana
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

if_2 goto start

put release %1
pause .5
put #class research off

start:

send prepare %1 %mana
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at %mana mana

cast:
if %fullprep = no then waiteval %fullprep = yes
send cast %3 %4
matchre backfire ^Your spell.+backfire[sd]
matchwait 1
put #var last.backfire no
goto exit

backfire:
put #var last.backfire yes

exit:
put #parse SCRIPT DONE