setvariable %1

start:
pause .5
#put perc mana
#waitfor roundtime
goto climb

climb:
pause .5
put playp
pause .5
match climb ...wait
match per You finish practicing
match climb You stop practicing
match outside This climb is no challenge
put climb practice %1
matchwait

per:
pause .5
#put perc mana
#waitfor roundtime
match per ...wait
matchwait

outside:
echo *** Failure ***
echo *** Outside skill range ***
echo *** Failure ***