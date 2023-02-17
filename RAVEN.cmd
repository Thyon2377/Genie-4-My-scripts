if_1 goto startstudy
if $roomid != 72 then
{
put #goto 72
waitfor YOU HAVE ARRIVED
}
move go build
move n
move climb step
move climb stair
move s

startstudy:
setvariable room 1
gosub study sculpture
gosub study painting
gosub study carving
gosub study statue
gosub study second painting
move w
setvariable room 2
gosub study painting
gosub study triptych
gosub study statue
gosub study figurine
gosub study second painting
move s
setvariable room 3
gosub study cylinder
gosub study sculpture
gosub study statue
gosub study painting
gosub study second painting
move s
setvariable room 4
gosub study sphere
gosub study panel
gosub study painting
gosub study canvas
gosub study statue
move e
setvariable room 5
gosub study painting
gosub study diorama
gosub study figure
gosub study statue
gosub study second painting
leavestudy5:
move w
leavestudy4:
move n
leavestudy3:
move n
leavestudy2:
move e
leavestudy1:
move n
move climb stair
move climb step
move s
move go door
put #parse DONE
exit

study:
setvariable object $0
if $charactername = Rishlu then
 {
 if $Appraisal.LearningRate > 30 then goto leavestudy%room
 }
else if $Scholarship.LearningRate > 30 then goto leavestudy%room
put study %object
pause 0.5
pause 0.5
return