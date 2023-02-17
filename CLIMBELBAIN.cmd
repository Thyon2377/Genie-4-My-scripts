put #goto 142
waitfor El'Bain's Stop

Athletics.Check:
if ($Athletics.LearningRate >= 32) then goto End1
gosub Climb

Time.Check:
if ($Athletics.LearningRate >= 32) then goto End1
if ($gametime >= %Climb.Time && $Athletics.LearningRate < 32) then goto Athletics.Check
pause 2
goto Time.Check

Climb:

#####################

var Climb.Time $gametime
math Climb.Time add 70

#####################

move w
move climb young log
move sw
move climb log
move s
move climb log
move sw
move climb log
move s
move climb log
move s
move go bridge
move s
move s
move go shore
move s
move s
move s
move sw
move w
move w
move sw
move sw
move s
move s
move s
move s
move s


#move climb birch tree
#move climb trunk

#move climb pine tree
#move climb trunk

#move climb oak tree
#move climb trunk

move n
move n
move w 

#move climb deobar tree
#move climb trunk

move e
move n
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move n
move go bridge
move n
move n
move go shore
move n
move climb log
move n
move climb log
move ne
move climb log
move n
move climb log
move ne
move climb log
move e
pause 70
goto Athletics.Check

RETURN

End1:
put #goto 246
pause 5
put #PARSE DONE WITH ATHLETICS
exit