#######################################
###         Aveda's Amazing         ###
###       Crossing Recall Run       ###
###      Last updated 6/01/2008     ###
### http://dr.aveda.googlepages.com ###
###                                 ###
###      Begin in the Crossing      ###
### Bards's Guild, Performance Hall ###
###     To operate, just type:      ###
###              .crr               ###
###                                 ###
#######################################

start:
pause
move go arch
save 1recall
goto recallit1

1recall:
pause
move e
move e
move e
save 2recall
goto recallit1

2recall:
pause
move w
move out
save 3recall
goto recallit1

3recall:
pause
move e
move e
move s
save 4recall
goto recallit1

4recall:
pause
move s
move s
save 5recall
goto recallit1

5recall:
pause
move s
move s
move e
move e
move se
move e
move s
move s
save 6recall
goto recallit1

6recall:
pause
move s
save 7recall
goto recallit1

7recall:
pause
move climb stair
move down
move go dock
save 8recall
goto recallit1

8recall:
pause
move n
move climb stair
move up
move n
move n
move n
move e
move e
move n
move n
move n
move ne
save 9recall
goto recallit1

9recall:
pause
move n
move w
move w
move w
move n
move w
move w
move w
move w
move w
move go build
move go portal
goto end

recallit1:
match recallit1 ...wait
match percit1 mind lock
match recallit2 Overall state of mind
put skill SCH
matchwait

recallit2:
match recallit2 Roundtime: 3 seconds.
match percit1 Roundtime:
match recallit2 ...wait
put recall history
matchwait


percit1:
match percit1 ...wait
match %s mind lock
match percit2 overall state of
put skill Attune
matchwait

percit2:
pause
put perceive
waitfor Roundtime:
pause
goto %s

end:
put skill Attune
put skill Scholar


