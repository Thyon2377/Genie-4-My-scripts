action var fullprep yes when ^You feel fully prepared to cast your spell
action var cambrinthfull yes; var currentmana $cambrinth.capacity when only absorbing part of the energy while the rest dissipates harmlessly\.$|^The.+is already holding as much power as you could possibly charge it with\.$
action goto cast when ^Normally, smart magicians would attempt to harness a positive amount of streams
var fullprep no
setvariable currentmana 0
setvariable chargecount 0
setvariable harnesscount 0
setvariable cambrinthfull no
setvariable mana $half.%1
evalmath manaadd $half.%1 - $min.%1
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

if_2 goto start

put release %1
waitpause .5
put #class research off

start:
if $mana < 40 then waiteval $mana >= 40

send prepare %1 $min.%1
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at %mana mana (preparation of $min.%1 + %manaadd added mana)

if %manaadd <= $cambrinth.capacity then goto cambrinthonly
if %manaadd > $cambrinth.capacity then goto cambrinthharness

cambrinthonly:
evalmath charge round((%manaadd/3),0)
waitpause .5
cambrinthonlycharge:
math chargecount add 1
send charge $cambrinth %charge
math currentmana add %charge
waitpause .5
if %currentmana >= $cambrinth.capacity then
if %currentmana >= $cambrinth.capacity then var currentmana $cambrinth.capacity
echo Current mana: %currentmana
if %chargecount < 3 && %cambrinthfull = no then goto cambrinthonlycharge
if %chargecount >= 3 || %cambrinthfull = yes then
{
var currentmana $cambrinth.capacity
goto cast
}

cambrinthonly2:
evalmath charge %manaadd - %currentmana
waitpause .5
math chargecount add 1
send charge $cambrinth %charge
math currentmana add %charge
waitpause .5
if %currentmana >= $cambrinth.capacity then
if %currentmana >= $cambrinth.capacity then var currentmana $cambrinth.capacity
echo Current mana: %currentmana
goto cast

cambrinthharness:
evalmath charge round(($cambrinth.capacity/3),0)
cambrinthharnesscharge:
waitpause .5
math chargecount add 1
send charge $cambrinth %charge
math currentmana add %charge
waitpause .5
if %currentmana >= $cambrinth.capacity then var currentmana $cambrinth.capacity
echo Current mana: %currentmana
if %chargecount < 3 && %cambrinthfull = no then goto cambrinthharnesscharge
if %chargecount >= 3 || %cambrinthfull = yes then goto harness

harness:
evalmath harness round(((%manaadd - $cambrinth.capacity)/3),0)
if $mana < 40 then waiteval $mana >= 40
harnessmana:
waitpause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
waitpause .5
echo Current mana: %currentmana
if %harnesscount < 3 then goto harnessmana
if %harnesscount = 2 then goto harnessmana2
if %harnesscount >= 3 then goto cast

harnessmana2:
evalmath harness %manaadd - %currentmana
waitpause .5
math harnesscount add 1
send harness %harness
math currentmana add %harness
waitpause .5
echo Current mana: %currentmana
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
send invoke $cambrinth
wait
waitpause .5
gosub casttimer
send cast %2 %3
put #parse SCRIPT DONE