action var fullprep yes when ^You feel fully prepared to cast your spell
action goto cast when ^Normally, smart magicians would attempt to harness a positive amount of streams
var fullprep no
setvariable currentmana 0
setvariable harnesscount 0
setvariable mana $half.%1
evalmath manaadd $half.%1 - $min.%1
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

if_2 goto start

put release %1
pause .5
put #class research off

start:
if $mana < 40 then waiteval $mana >= 40

send prepare %1 $min.%1
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at %mana mana (preparation of $min.%1 + %manaadd added mana)

harness:
evalmath harness round((%manaadd/3),0)
if $mana < 40 then waiteval $mana >= 40
harnessmana:
pause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
pause .5
echo Current Mana: %currentmana
if %harnesscount < 3 then goto harnessmana
if %harnesscount = 2 then goto harnessmana2
if %harnesscount >= 3 then goto cast

harnessmana2:
evalmath harness %manaadd - %currentmana
pause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
pause .5
echo Current Mana: %currentmana
goto cast

casttimer:
if $spelltime >= 12 then
{
return
}
pause
goto casttimer

cast:
put #var lastmana %currentmana
gosub casttimer
send cast %2 %3
put #parse SCRIPT DONE