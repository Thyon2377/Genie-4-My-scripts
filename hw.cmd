action var fullprep yes when ^You feel fully prepared to cast your spell
action goto casttimer when ^Normally, smart magicians would attempt to harness a positive amount of streams
var fullprep no
setvariable currentmana 0
setvariable harnesscount 0
evalmath mana round(($half.hw/2),0)
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
put #class research off

send prepare hw $min.hw
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at %mana mana

harness:
evalmath harness round((%mana/2),0)
if $mana < 60 then waiteval $mana >= 60
harnessmana:
pause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
pause .5
echo Current Mana: %currentmana
if %harnesscount = 1 then goto harnessmana2
if %harnesscount >= 2 then goto casttimer

harnessmana2:
evalmath harness %mana - %currentmana
pause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
pause .5
echo Current Mana: %currentmana
goto casttimer

casttimer:
if $spelltime >= 12 then
{
goto cast
}
pause
goto casttimer

cast:
put #var lastmana %currentmana
send cast %1 %2 %3
put #parse SCRIPT DONE