
setvariable dir South

Swim:
Swimming:
echo ************************
echo ******* Swimming *******
echo ************************
echo


pause 5
move dive river
put prep athl 20
waitfor You feel fully prepared
put cast
swim0:
swim1:
swim2:
swim3:
match rock_south An enormous slab of rock is upthrust
match north_bank The Riverhaven town wall 
match north_bank You can't swim in that direction.
match swim_continue You struggle against the strong current
match swim_continue Obvious paths:
match swim_continue You slap at the water
match swim_continue can't seem to make much headway
put %dir
matchwait
rock_south:
setvariable dir north
pause 1
pause 1
counter add 1
goto swim%c
north_bank:
setvariable dir south
pause 1
pause 1
counter add 1
put prep athletic 20
waitfor You feel fully prepared
put cast
goto swim%c
swim_continue:
pause 1
pause 1
counter add 1
goto swim%c
swim4:
swim_exp_check:
counter set 0
match swim0 EXP HELP
match swim_done mind lock
put exp skill athletic
matchwait
swim_done:
match swim_leave You can't swim in that direction.
match swim_leave_pause You struggle against the strong current

match swim_leave_pause Obvious paths:
put north
matchwait
swim_leave_pause:
pause 1
pause 1
goto swim_done
swim_leave:
move climb bri
exit