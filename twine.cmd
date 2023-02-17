
var stepCount 0
var lastStepCount 0
var simple lace|pull
var skilled push|poke|lace
var expert turn|nibble|tilt|pry
var master pull|turn|flip|lace|push
var lastStep lace|turn|flip|pull|push|poke|raise|pry|tilt|nibble

if_1 then goto SKILLCHECK
	else goto noParameter
	
noParameter:
echo You must enter Perception level simple (<200), skilled (<300), expert(<500), or master (500+)
exit

SKILLCHECK:
pause 1
send exp perception
match END nearly locked|mind lock
match %1 EXP
matchwait

SIMPLE:
pause 1
if %stepCount == 2 then goto LASTSTEPS
send %simple(%stepCount) my twine
math stepCount add 1
match SHAKE You attempt
match SIMPLE You lace
match SIMPLE You pull
matchwait

SKILLED:
pause 1
if %stepCount == 3 then goto LASTSTEPS
send %skilled(%stepCount) my twine
math stepCount add 1
match SHAKE You attempt to incorporate your last movement
match SKILLED You lace
match SKILLED You carefully
match SKILLED You lightly
matchwait

EXPERT:
pause 1
if %stepCount == 4 then goto LASTSTEPS
send %expert(%stepCount) my twine
math stepCount add 1
match SHAKE You attempt to incorporate your last movement
match SHAKE The twine is a tangled mess!  
match EXPERT You pry
match EXPERT You carefully
match EXPERT You bite
match EXPERT You lightly
matchwait

MASTER:
pause .5
if %stepCount == 5 then goto LASTSTEPS
send %master(%stepCount) my twine
math stepCount add 1
match SHAKE You attempt to incorporate your last movement
match MASTER You pull
match MASTER You carefully turn
match MASTER You carefully flip
match MASTER You lace
match MASTER You carefully push
matchwait

LASTSTEPS:
pause 1
echo lastStep is %lastStepCount
send %lastStep(%lastStepCount) my twine
math lastStepCount add 1
wait
goto SHAKE

SHAKE:
if %lastStepCount == 10 then var lastStepCount 0
pause 1
send shake my twine
pause 1
var stepCount 0
goto SKILLCHECK

END:
echo ###Perception is Locked.  Ending script.###
exit

