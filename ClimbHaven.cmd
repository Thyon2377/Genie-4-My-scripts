debuglevel 5

top:
	move go tower
	move go door
	move climb ladd
	move climb ladd
	move go trap
	move out
	move e
	move e
	move climb ladder
	move climb ladder
	pause 6
	move e
	move e
	move e
	move e
	move e
	move e
	move e
	move e
	move e
	move e
	move e
	move go gate
	move climb mound
	move down
	move ne
	move nw
	move out
	move e
	move go tower
	move climb stair
	move climb ladder
	move climb rope
	pause 6
	move climb rope
	move climb ladder
	move climb stair
	move out
	move n
	move n
	move n
	move n
	move n
	move nw
	move nw
	move nw
	move nw
	move climb ladder
	move climb ladder
	move nw
	move nw
	move w
	move sw
	move sw
	move sw
	move s
	move s
	move s
	move s
	pause 6
	if $Climbing.LearningRate > 20 then goto doneClimb
	goto top

doneClimb:
	echo
	echo *** Locked Climbing ***
	echo
 
	put #parse DONE CLIMBING
	put look
	exit