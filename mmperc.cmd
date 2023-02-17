var toPower xibar|planets|trans|yavash|watch|perc|katamba|moonl man|psychic|moons|geometry
var totalPower 11

action goto end when eval $Power_Perceive.LearningRate > 33
action put #queue clear;put #send 1 $lastcommand when ^Sorry,|^\.\.\.wait

counter set 0

loop:
if (%c > %totalPower) then counter set 0
gosub do.Power
counter add 1
goto loop


do.Power:
send power %toPower(%c)
waitforre ^Roundtime
pause 1
return


end:
exit