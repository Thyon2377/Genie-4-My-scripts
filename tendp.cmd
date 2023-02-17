put #class tend on
var patient %1
action goto end when ^Your .+ too injured

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway

tendstart:
gosub tend head
gosub tend neck
gosub tend chest
gosub tend abdomen
gosub tend back
gosub tend tail
gosub tend right arm
gosub tend left arm
gosub tend right hand
gosub tend left hand
gosub tend right leg
gosub tend left leg
gosub tend right eye
gosub tend left eye
goto wait

tend:
send tend %1 $0
waitforre ^You work|^That area|^Look again|^%1 will have to sit down for you to work on (him|her)\.$
matchre return ^You work|^That area|^Look again|^%1 will have to sit down for you to work on (him|her)\.$

return:
return

wait:
action goto tendstart when ^The bandages binding %patient's (.+) (soak|come)
waitforre ^blood as it begins bleeding again\.$
pause

end:
exit