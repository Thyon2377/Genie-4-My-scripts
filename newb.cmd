action var fullprep yes when ^You feel fully prepared to cast your spell
evalmath harness.heal round(($half.heal) / 2)
evalmath harness.hw round(($half.hw) / 3)
evalmath harness.hs round(($half.hs) / 3)

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

echo ***** Diagnosing your magic-hindering wounds *****
gosub WoundVars
gosub BadWounds
gosub Wounds
gosub Scars
goto End

pause
WoundVars:
var All_Clean 0
var HEAD_MYEW 0
var HEAD_MYIW 0
var HEAD_MYES 0
var HEAD_MYIS 0
var NECK_MYEW 0
var NECK_MYIW 0
var CHEST_MYEW 0
var CHEST_MYIW 0
var ABDOMEN_MYEW 0
var ABDOMEN_MYIW 0
var BACK_MYEW 0
var BACK_MYIW 0
var TAIL_MYEW 0
var TAIL_MYIW 0
var RIGHT_EYE_MYEW 0
var RIGHT_EYE_MYIW 0
var LEFT_EYE_MYEW 0
var LEFT_EYE_MYIW 0
var RIGHT_ARM_MYEW 0
var RIGHT_ARM_MYIW 0
var LEFT_ARM_MYEW 0
var LEFT_ARM_MYIW 0
var RIGHT_HAND_MYEW 0
var RIGHT_HAND_MYIW 0
var LEFT_HAND_MYEW 0
var LEFT_HAND_MYIW 0
var RIGHT_LEG_MYEW 0
var RIGHT_LEG_MYIW 0
var LEFT_LEG_MYEW 0
var LEFT_LEG_MYIW 0
var SKIN_MYEW 0
var SKIN_MYIW 0
var SKIN_MYES 0
var SKIN_MYIS 0
pause
send perceive health self
action setvariable TEMP $1_$2 when ^Wounds to the (LEFT|RIGHT) (\w+):$
action setvariable TEMP $1 when ^Wounds to the (\w+):$
action setvariable %TEMP_MYEW 1 when Fresh External:.*?\-\-\s+insignificant$
action setvariable %TEMP_MYIW 1 when Fresh Internal:.*?\-\-\s+insignificant$
action setvariable %TEMP_MYES 1 when Scars External:.*?\-\-\s+insignificant$
action setvariable %TEMP_MYIS 1 when Scars Internal:.*?\-\-\s+insignificant$
action setvariable %TEMP_MYEW 2 when Fresh External:.*?\-\-\s+negligible$
action setvariable %TEMP_MYIW 2 when Fresh Internal:.*?\-\-\s+negligible$
action setvariable %TEMP_MYES 2 when Scars External:.*?\-\-\s+negligible$
action setvariable %TEMP_MYIS 2 when Scars Internal:.*?\-\-\s+negligible$
action setvariable %TEMP_MYEW 3 when Fresh External:.*?\-\-\s+minor$
action setvariable %TEMP_MYIW 3 when Fresh Internal:.*?\-\-\s+minor$
action setvariable %TEMP_MYES 3 when Scars External:.*?\-\-\s+minor$
action setvariable %TEMP_MYIS 3 when Scars Internal:.*?\-\-\s+minor$
action setvariable %TEMP_MYEW 4 when Fresh External:.*?\-\-\s+more than minor$
action setvariable %TEMP_MYIW 4 when Fresh Internal:.*?\-\-\s+more than minor$
action setvariable %TEMP_MYES 4 when Scars External:.*?\-\-\s+more than minor$
action setvariable %TEMP_MYIS 4 when Scars Internal:.*?\-\-\s+more than minor$
action setvariable %TEMP_MYEW 5 when Fresh External:.*?\-\-\s+harmful$
action setvariable %TEMP_MYIW 5 when Fresh Internal:.*?\-\-\s+harmful$
action setvariable %TEMP_MYES 5 when Scars External:.*?\-\-\s+harmful$
action setvariable %TEMP_MYIS 5 when Scars Internal:.*?\-\-\s+harmful$
action setvariable %TEMP_MYEW 6 when Fresh External:.*?\-\-\s+very harmful$
action setvariable %TEMP_MYIW 6 when Fresh Internal:.*?\-\-\s+very harmful$
action setvariable %TEMP_MYES 6 when Scars External:.*?\-\-\s+very harmful$
action setvariable %TEMP_MYIS 6 when Scars Internal:.*?\-\-\s+very harmful$
action setvariable %TEMP_MYEW 7 when Fresh External:.*?\-\-\s+damaging$
action setvariable %TEMP_MYIW 7 when Fresh Internal:.*?\-\-\s+damaging$
action setvariable %TEMP_MYES 7 when Scars External:.*?\-\-\s+damaging$
action setvariable %TEMP_MYIS 7 when Scars Internal:.*?\-\-\s+damaging$
action setvariable %TEMP_MYEW 8 when Fresh External:.*?\-\-\s+very damaging$
action setvariable %TEMP_MYIW 8 when Fresh Internal:.*?\-\-\s+very damaging$
action setvariable %TEMP_MYES 8 when Scars External:.*?\-\-\s+very damaging$
action setvariable %TEMP_MYIS 8 when Scars Internal:.*?\-\-\s+very damaging$
action setvariable %TEMP_MYEW 9 when Fresh External:.*?\-\-\s+severe$
action setvariable %TEMP_MYIW 9 when Fresh Internal:.*?\-\-\s+severe$
action setvariable %TEMP_MYES 9 when Scars External:.*?\-\-\s+severe$
action setvariable %TEMP_MYIS 9 when Scars Internal:.*?\-\-\s+severe$
action setvariable %TEMP_MYEW 10 when Fresh External:.*?\-\-\s+very severe$
action setvariable %TEMP_MYIW 10 when Fresh Internal:.*?\-\-\s+very severe$
action setvariable %TEMP_MYES 10 when Scars External:.*?\-\-\s+very severe$
action setvariable %TEMP_MYIS 10 when Scars Internal:.*?\-\-\s+very severe$
action setvariable %TEMP_MYEW 11 when Fresh External:.*?\-\-\s+devastating$
action setvariable %TEMP_MYIW 11 when Fresh Internal:.*?\-\-\s+devastating$
action setvariable %TEMP_MYES 11 when Scars External:.*?\-\-\s+devastating$
action setvariable %TEMP_MYIS 11 when Scars Internal:.*?\-\-\s+devastating$
action setvariable %TEMP_MYEW 12 when Fresh External:.*?\-\-\s+very devastating$
action setvariable %TEMP_MYIW 12 when Fresh Internal:.*?\-\-\s+very devastating$
action setvariable %TEMP_MYES 12 when Scars External:.*?\-\-\s+very devastating$
action setvariable %TEMP_MYIS 12 when Scars Internal:.*?\-\-\s+very devastating$
action setvariable %TEMP_MYEW 13 when Fresh External:.*?\-\-\s+useless$
action setvariable %TEMP_MYIW 13 when Fresh Internal:.*?\-\-\s+useless$
action setvariable %TEMP_MYES 13 when Scars External:.*?\-\-\s+useless$
action setvariable %TEMP_MYIS 13 when Scars Internal:.*?\-\-\s+useless$
waitforre ^You .+ vitality
wait
pause
return

BadWounds:
if %SKIN_MYEW > 0 || %SKIN_MYIW > 0 then
{
var part skin
gosub HW
gosub HS
}
if %SKIN_MYES > 0 || %SKIN_MYIS > 0 then
{
var part nerves
gosub HS
}
if %HEAD_MYEW > 0 || %HEAD_MYIW > 0 then
{
var part head
gosub HW
gosub HS
}
if %HEAD_MYES > 0 || %HEAD_MYIS > 0 then
{
var part nerves
gosub HS
}
return

Wounds:
echo ***** Diagnosing your wounds *****
gosub WoundVars
if %NECK_MYEW > 0 || %NECK_MYIW > 0 then
{
var part neck
gosub HW
}
if %CHEST_MYEW > 0 || %CHEST_MYIW > 0 then
{
var part chest
gosub HW
}
if %ABDOMEN_MYEW > 0 || %ABDOMEN_MYIW > 0 then
{
var part abdomen
gosub HW
}
if %BACK_MYEW > 0 || %BACK_MYIW > 0 then
{
var part back
gosub HW
}
if %TAIL_MYEW > 0 || %TAIL_MYIW > 0 then
{
var part tail
gosub HW
}
if %RIGHT_ARM_MYEW > 0 || %RIGHT_ARM_MYIW > 0 then
{
var part right arm
gosub HW
}
if %LEFT_ARM_MYEW > 0 || %LEFT_ARM_MYIW > 0 then
{
var part left arm
gosub HW
}
if %RIGHT_HAND_MYEW > 0 || %RIGHT_HAND_MYIW > 0 then
{
var part right hand
gosub HW
}
if %LEFT_HAND_MYEW > 0 || %LEFT_HAND_MYIW > 0 then
{
var part left hand
gosub HW
}
if %RIGHT_LEG_MYEW > 0 || %RIGHT_LEG_MYIW > 0 then
{
var part right leg
gosub HW
}
if %LEFT_LEG_MYEW > 0 || %LEFT_LEG_MYIW > 0 then
{
var part left leg
gosub HW
}
if %RIGHT_EYE_MYEW > 0 || %RIGHT_EYE_MYIW > 0 then
{
var part right eye
gosub HW
}
if %LEFT_EYE_MYEW > 0 || %LEFT_EYE_MYIW > 0 then
{
var part left eye
gosub HW
}
return

Scars:
echo ***** Diagnosing your scars *****
gosub WoundVars
if %NECK_MYES > 0 || %NECK_MYIS > 0 then
{
var part neck
gosub HS
}
if %CHEST_MYES > 0 || %CHEST_MYIS > 0 then
{
var part chest
gosub HS
}
if %ABDOMEN_MYES > 0 || %ABDOMEN_MYIS > 0 then
{
var part abdomen
gosub HS
}
if %BACK_MYES > 0 || %BACK_MYIS > 0 then
{
var part back
gosub HS
}
if %TAIL_MYES > 0 || %TAIL_MYIS > 0 then
{
var part tail
gosub HS
}
if %RIGHT_ARM_MYES > 0 || %RIGHT_ARM_MYIS > 0 then
{
var part right arm
gosub HS
}
if %LEFT_ARM_MYES > 0 || %LEFT_ARM_MYIS > 0 then
{
var part left arm
gosub HS
}
if %RIGHT_HAND_MYES > 0 || %RIGHT_HAND_MYIS > 0 then
{
var part right hand
gosub HS
}
if %LEFT_HAND_MYES > 0 || %LEFT_HAND_MYIS > 0 then
{
var part left hand
gosub HS
}
if %RIGHT_LEG_MYES > 0 || %RIGHT_LEG_MYIS > 0 then
{
var part right leg
gosub HS
}
if %LEFT_LEG_MYES > 0 || %LEFT_LEG_MYIS > 0 then
{
var part left leg
gosub HS
}
if %RIGHT_EYE_MYES > 0 || %RIGHT_EYE_MYIS > 0 then
{
var part right eye
gosub HS
}
if %LEFT_EYE_MYES > 0 || %LEFT_EYE_MYIS > 0 then
{
var part left eye
gosub HS
}
return

HW:
if $mana < 80 then waiteval $mana >= 80
echo ***** Now healing wounds to your %part *****
send prep hw
var fullprep no
pause 2
send harness %harness.hw
wait
pause
send harness %harness.hw
wait
pause .5
if %fullprep = no then waiteval %fullprep = yes
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HW

HS:
if $mana < 80 then waiteval $mana >= 80
echo ***** Now healing scars to your %part *****
send prep hs
var fullprep no
pause 2
send harness %harness.hs
wait
pause
send harness %harness.hs
wait
pause .5
if %fullprep = no then waiteval %fullprep = yes
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HS

return:
return

End:
echo ***** You are completely healed *****
put #play ScriptEnd