action var fullprep yes when ^You feel fully prepared to cast your spell
evalmath harness.heal round(($half.heal) / 2) 9
evalmath harness.hw round(($half.hw) / 3) 
evalmath harness.hs round(($half.hs) / 3) 

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

echo ***** Diagnosing your high-priority wounds *****
gosub WoundVars
#gosub BadWounds
gosub ReduceWounds
gosub InternalWounds
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
gosub HWR
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
gosub HWR
gosub HS
}
if %HEAD_MYES > 0 || %HEAD_MYIS > 0 then
{
var part nerves
gosub HS
}
return

ReduceWounds:
if %RIGHT_ARM_MYEW > 0&& %RIGHT_ARM_MYEW > 8 then
{
var part right arm
gosub HWM 2
}
if %LEFT_ARM_MYEW > 0&& %LEFT_ARM_MYEW > 8 then
{
var part left arm
gosub HWM 2
}
if %RIGHT_HAND_MYEW > 0&& %RIGHT_HAND_MYEW > 8 then
{
var part right hand
gosub HWM 2
}
if %LEFT_HAND_MYEW > 0&& %LEFT_HAND_MYEW > 8 then
{
var part left hand
gosub HWM 2
}
if %NECK_MYEW > 0&& %NECK_MYEW > 8 then
{
var part neck
gosub HWM 3
}
if %CHEST_MYEW > 0&& %CHEST_MYEW > 8 then
{
var part chest
gosub HWM 3
}
if %ABDOMEN_MYEW > 0&& %ABDOMEN_MYEW > 8 then
{
var part abdomen
gosub HWM 3
}
if %BACK_MYEW > 0&& %BACK_MYEW > 8 then
{
var part back
gosub HWM 3
}
if %TAIL_MYEW > 0&& %TAIL_MYEW > 8 then
{
var part tail
gosub HWM 2
}
if %RIGHT_LEG_MYEW > 0&& %RIGHT_LEG_MYEW > 8 then
{
var part right leg
gosub HWM 2
}
if %LEFT_LEG_MYEW > 0&& %LEFT_LEG_MYEW > 8 then
{
var part left leg
gosub HWM 2
}
if %RIGHT_EYE_MYEW > 0&& %RIGHT_EYE_MYEW > 8 then
{
var part right eye
gosub HWM 3
}
if %LEFT_EYE_MYEW > 0&& %LEFT_EYE_MYEW > 8 then
{
var part left eye
gosub HWM 3
}
return

InternalWounds:
echo ***** Diagnosing your internal wounds *****
gosub WoundVars
if %NECK_MYIW > 0 then
{
var part neck
gosub HWI
}
if %CHEST_MYIW > 0 then
{
var part chest
gosub HWI
}
if %ABDOMEN_MYIW > 0 then
{
var part abdomen
gosub HWI
}
if %BACK_MYIW > 0 then
{
var part back
gosub HWI
}
if %TAIL_MYIW > 0 then
{
var part tail
gosub HWI
}
if %RIGHT_ARM_MYIW > 0 then
{
var part right arm
gosub HWI
}
if %LEFT_ARM_MYIW > 0 then
{
var part left arm
gosub HWI
}
if %RIGHT_HAND_MYIW > 0 then
{
var part right hand
gosub HWI
}
if %LEFT_HAND_MYIW > 0 then
{
var part left hand
gosub HWI
}
if %RIGHT_LEG_MYIW > 0 then
{
var part right leg
gosub HWI
}
if %LEFT_LEG_MYIW > 0 then
{
var part left leg
gosub HWI
}
if %RIGHT_EYE_MYIW > 0 then
{
var part right eye
gosub HWI
}
if %LEFT_EYE_MYIW > 0 then
{
var part left eye
gosub HWI
}
return

HS:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing your scars *****
send prepare heal
var fullprep no
pause 2

send charge $cambrinth 2
wait
pause

send charge $cambrinth 2
wait
pause

send invoke $cambrinth
wait
pause

gosub casttimer
send cast scar
matchre end ^Your wounds are completely healed|^Your scars are completely healed|^Your body is completely healed
matchwait 1
goto scars

casttimer:
if $spelltime >= 12 then
{
return
}
pause
goto casttimer

HWR:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing wounds to your %part *****
send prepare hw 12
var fullprep no
pause 2
send charge $cambrinth 3
wait
pause .25
send charge $cambrinth 3
wait
pause .25
send invoke $cambrinth
wait
pause .25
gosub casttimer
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HWR

HWI:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing internal wounds to your %part *****
send prepare hw 12
var fullprep no
pause 2
send charge $cambrinth 3
wait
pause .25
send charge $cambrinth 3
wait
pause .25
send invoke $cambrinth
wait
pause .25
gosub casttimer
send cast %part internal
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HWI

HS:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing scars to your %part *****
send prepare hs 12
var fullprep no
pause 2
send charge $cambrinth 3
wait
pause .25
send charge $cambrinth 3
wait
pause .25
send invoke $cambrinth
wait
pause .25
gosub casttimer
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HS

HWM:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now reducing external wounds to your %part *****
put prepare hw $0
pause 3
CAST:
send cast %part
waitforre ^You gesture
goto return

return:
return

End:
echo ***** Now healing your scars *****
send .healscar 32