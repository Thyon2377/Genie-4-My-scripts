action var fullprep yes when ^You feel fully prepared to cast your spell
var fullprep no
evalmath HARNESS1 round($max.foc / 2)
evalmath HARNESS2 round($max.foc / 4)

put stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

start:

put prep foc $min.foc
waitforre ^You begin chanting a prayer to invoke the|^With tense movements you prepare your body for the|^Heatless orange flames blaze between your fingertips as you prepare|as you prepare|form the patterns of
put #var last.prepared $preparedspell
echo Casting $last.prepared at $max.foc mana
pause 5

send harness %HARNESS1
wait
pause

send harness %HARNESS2
wait
pause

send harness %HARNESS2
wait
pause

if %fullprep = no then waiteval %fullprep = yes
put cast
pause 10
send stand
waitforre ^You stand|^You are already

if $health < 75 then goto vh
if $health >= 75 then goto end

vh:
if $mana < 85 then waiteval $mana >= 85

put prep vh $min.vh
pause 2

send harness 8
wait
pause
send harness 7
wait
pause
send cast
pause .5

end:
put #parse SCRIPT DONE