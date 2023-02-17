put #window close Familiar
var LOOP 0
var poison 1
var disease 1
action send touch %1 when ^You have no empathic link
action goto done when ^\.\.\. no injuries to speak of
action var poison 0 when ^Your patient does not have any poison in their body|^%1 does not have any poison
action var disease 0 when ^Your patient does not have any disease|^%1 does not have any disease
put #var patient %1
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

refreshcheck:
if $REFRESH = OFF && $Courage = OFF then
{
gosub refresh
}

vhcheck:
if $health < 60 then
{
gosub vh
}

start:
var head.bleed 0
var neck.bleed 0
var chest.bleed 0
var abdo.bleed 0
var back.bleed 0
var tail.bleed 0
var rarm.bleed 0
var larm.bleed 0
var rhnd.bleed 0
var lhnd.bleed 0
var rleg.bleed 0
var lleg.bleed 0
var reye.bleed 0
var leye.bleed 0
var HEAD_MYEW 0
var HEAD_MYIW 0
var HEAD_MYES 0
var HEAD_MYIS 0
var NECK_MYEW 0
var NECK_MYIW 0
var NECK_MYES 0
var NECK_MYIS 0
var CHEST_MYEW 0
var CHEST_MYIW 0
var CHEST_MYES 0
var CHEST_MYIS 0
var ABDOMEN_MYEW 0
var ABDOMEN_MYIW 0
var ABDOMEN_MYES 0
var ABDOMEN_MYIS 0
var BACK_MYEW 0
var BACK_MYIW 0
var BACK_MYES 0
var BACK_MYIS 0
var TAIL_MYEW 0
var TAIL_MYIW 0
var TAIL_MYES 0
var TAIL_MYIS 0
var RIGHT_EYE_MYEW 0
var RIGHT_EYE_MYIW 0
var RIGHT_EYE_MYES 0
var RIGHT_EYE_MYIS 0
var LEFT_EYE_MYEW 0
var LEFT_EYE_MYIW 0
var LEFT_EYE_MYES 0
var LEFT_EYE_MYIS 0
var RIGHT_ARM_MYEW 0
var RIGHT_ARM_MYIW 0
var RIGHT_ARM_MYES 0
var RIGHT_ARM_MYIS 0
var LEFT_ARM_MYEW 0
var LEFT_ARM_MYIW 0
var LEFT_ARM_MYES 0
var LEFT_ARM_MYIS 0
var RIGHT_HAND_MYEW 0
var RIGHT_HAND_MYIW 0
var RIGHT_HAND_MYES 0
var RIGHT_HAND_MYIS 0
var LEFT_HAND_MYEW 0
var LEFT_HAND_MYIW 0
var LEFT_HAND_MYES 0
var LEFT_HAND_MYIS 0
var RIGHT_LEG_MYEW 0
var RIGHT_LEG_MYIW 0
var RIGHT_LEG_MYES 0
var RIGHT_LEG_MYIS 0
var LEFT_LEG_MYEW 0
var LEFT_LEG_MYIW 0
var LEFT_LEG_MYES 0
var LEFT_LEG_MYIS 0
var SKIN_MYEW 0
var SKIN_MYIW 0
var SKIN_MYES 0
var SKIN_MYIS 0
var HEAD_EW 0
var HEAD_IW 0
var HEAD_ES 0
var HEAD_IS 0
var NECK_EW 0
var NECK_IW 0
var NECK_ES 0
var NECK_IS 0
var CHEST_EW 0
var CHEST_IW 0
var CHEST_ES 0
var CHEST_IS 0
var ABDOMEN_EW 0
var ABDOMEN_IW 0
var ABDOMEN_ES 0
var ABDOMEN_IS 0
var BACK_EW 0
var BACK_IW 0
var BACK_ES 0
var BACK_IS 0
var TAIL_EW 0
var TAIL_IW 0
var TAIL_ES 0
var TAIL_IS 0
var RIGHT_EYE_EW 0
var RIGHT_EYE_IW 0
var RIGHT_EYE_ES 0
var RIGHT_EYE_IS 0
var LEFT_EYE_EW 0
var LEFT_EYE_IW 0
var LEFT_EYE_ES 0
var LEFT_EYE_IS 0
var RIGHT_ARM_EW 0
var RIGHT_ARM_IW 0
var RIGHT_ARM_ES 0
var RIGHT_ARM_IS 0
var LEFT_ARM_EW 0
var LEFT_ARM_IW 0
var LEFT_ARM_ES 0
var LEFT_ARM_IS 0
var RIGHT_HAND_EW 0
var RIGHT_HAND_IW 0
var RIGHT_HAND_ES 0
var RIGHT_HAND_IS 0
var LEFT_HAND_EW 0
var LEFT_HAND_IW 0
var LEFT_HAND_ES 0
var LEFT_HAND_IS 0
var RIGHT_LEG_EW 0
var RIGHT_LEG_IW 0
var RIGHT_LEG_ES 0
var RIGHT_LEG_IS 0
var LEFT_LEG_EW 0
var LEFT_LEG_IW 0
var LEFT_LEG_ES 0
var LEFT_LEG_IS 0
var SKIN_EW 0
var SKIN_IW 0
var SKIN_ES 0
var SKIN_IS 0

pause
EmpathWounds:
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

PatientWounds:
action setvariable TEMP $1_$2 when ^Wounds to the (LEFT|RIGHT) (\w+):$
action setvariable TEMP $1 when ^Wounds to the (\w+):$
action setvariable %TEMP_EW 1 when Fresh External:.*?\-\-\s+insignificant$
action setvariable %TEMP_IW 1 when Fresh Internal:.*?\-\-\s+insignificant$
action setvariable %TEMP_ES 1 when Scars External:.*?\-\-\s+insignificant$
action setvariable %TEMP_IS 1 when Scars Internal:.*?\-\-\s+insignificant$
action setvariable %TEMP_EW 2 when Fresh External:.*?\-\-\s+negligible$
action setvariable %TEMP_IW 2 when Fresh Internal:.*?\-\-\s+negligible$
action setvariable %TEMP_ES 2 when Scars External:.*?\-\-\s+negligible$
action setvariable %TEMP_IS 2 when Scars Internal:.*?\-\-\s+negligible$
action setvariable %TEMP_EW 3 when Fresh External:.*?\-\-\s+minor$
action setvariable %TEMP_IW 3 when Fresh Internal:.*?\-\-\s+minor$
action setvariable %TEMP_ES 3 when Scars External:.*?\-\-\s+minor$
action setvariable %TEMP_IS 3 when Scars Internal:.*?\-\-\s+minor$
action setvariable %TEMP_EW 4 when Fresh External:.*?\-\-\s+more than minor$
action setvariable %TEMP_IW 4 when Fresh Internal:.*?\-\-\s+more than minor$
action setvariable %TEMP_ES 4 when Scars External:.*?\-\-\s+more than minor$
action setvariable %TEMP_IS 4 when Scars Internal:.*?\-\-\s+more than minor$
action setvariable %TEMP_EW 5 when Fresh External:.*?\-\-\s+harmful$
action setvariable %TEMP_IW 5 when Fresh Internal:.*?\-\-\s+harmful$
action setvariable %TEMP_ES 5 when Scars External:.*?\-\-\s+harmful$
action setvariable %TEMP_IS 5 when Scars Internal:.*?\-\-\s+harmful$
action setvariable %TEMP_EW 6 when Fresh External:.*?\-\-\s+very harmful$
action setvariable %TEMP_IW 6 when Fresh Internal:.*?\-\-\s+very harmful$
action setvariable %TEMP_ES 6 when Scars External:.*?\-\-\s+very harmful$
action setvariable %TEMP_IS 6 when Scars Internal:.*?\-\-\s+very harmful$
action setvariable %TEMP_EW 7 when Fresh External:.*?\-\-\s+damaging$
action setvariable %TEMP_IW 7 when Fresh Internal:.*?\-\-\s+damaging$
action setvariable %TEMP_ES 7 when Scars External:.*?\-\-\s+damaging$
action setvariable %TEMP_IS 7 when Scars Internal:.*?\-\-\s+damaging$
action setvariable %TEMP_EW 8 when Fresh External:.*?\-\-\s+very damaging$
action setvariable %TEMP_IW 8 when Fresh Internal:.*?\-\-\s+very damaging$
action setvariable %TEMP_ES 8 when Scars External:.*?\-\-\s+very damaging$
action setvariable %TEMP_IS 8 when Scars Internal:.*?\-\-\s+very damaging$
action setvariable %TEMP_EW 9 when Fresh External:.*?\-\-\s+severe$
action setvariable %TEMP_IW 9 when Fresh Internal:.*?\-\-\s+severe$
action setvariable %TEMP_ES 9 when Scars External:.*?\-\-\s+severe$
action setvariable %TEMP_IS 9 when Scars Internal:.*?\-\-\s+severe$
action setvariable %TEMP_EW 10 when Fresh External:.*?\-\-\s+very severe$
action setvariable %TEMP_IW 10 when Fresh Internal:.*?\-\-\s+very severe$
action setvariable %TEMP_ES 10 when Scars External:.*?\-\-\s+very severe$
action setvariable %TEMP_IS 10 when Scars Internal:.*?\-\-\s+very severe$
action setvariable %TEMP_EW 11 when Fresh External:.*?\-\-\s+devastating$
action setvariable %TEMP_IW 11 when Fresh Internal:.*?\-\-\s+devastating$
action setvariable %TEMP_ES 11 when Scars External:.*?\-\-\s+devastating$
action setvariable %TEMP_IS 11 when Scars Internal:.*?\-\-\s+devastating$
action setvariable %TEMP_EW 12 when Fresh External:.*?\-\-\s+very devastating$
action setvariable %TEMP_IW 12 when Fresh Internal:.*?\-\-\s+very devastating$
action setvariable %TEMP_ES 12 when Scars External:.*?\-\-\s+very devastating$
action setvariable %TEMP_IS 12 when Scars Internal:.*?\-\-\s+very devastating$
action setvariable %TEMP_EW 13 when Fresh External:.*?\-\-\s+useless$
action setvariable %TEMP_IW 13 when Fresh Internal:.*?\-\-\s+useless$
action setvariable %TEMP_ES 13 when Scars External:.*?\-\-\s+useless$
action setvariable %TEMP_IS 13 when Scars Internal:.*?\-\-\s+useless$
send touch %1
waitforre /^%1.+ vitality/i
if %poison = 1 then
{
send take %1 quick poison
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
}
if %disease = 1 then
{
send take %1 quick disease
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
}

CombinedWounds:
evalmath COMBHEAD_EW %HEAD_MYEW+%HEAD_EW
evalmath COMBHEAD_IW %HEAD_MYIW+%HEAD_IW
evalmath COMBHEAD_ES %HEAD_MYES+%HEAD_ES
evalmath COMBHEAD_IS %HEAD_MYIS+%HEAD_IS
evalmath COMBNECK_EW %NECK_MYEW+%NECK_EW
evalmath COMBNECK_IW %NECK_MYIW+%NECK_IW
evalmath COMBNECK_ES %NECK_MYES+%NECK_ES
evalmath COMBNECK_IS %NECK_MYIS+%NECK_IS
evalmath COMBCHEST_EW %CHEST_MYEW+%CHEST_EW
evalmath COMBCHEST_IW %CHEST_MYIW+%CHEST_IW
evalmath COMBCHEST_ES %CHEST_MYES+%CHEST_ES
evalmath COMBCHEST_IS %CHEST_MYIS+%CHEST_IS
evalmath COMBABDOMEN_EW %ABDOMEN_MYEW+%ABDOMEN_EW
evalmath COMBABDOMEN_IW %ABDOMEN_MYIW+%ABDOMEN_IW
evalmath COMBABDOMEN_ES %ABDOMEN_MYES+%ABDOMEN_ES
evalmath COMBABDOMEN_IS %ABDOMEN_MYIS+%ABDOMEN_IS
evalmath COMBBACK_EW %BACK_MYEW+%BACK_EW
evalmath COMBBACK_IW %BACK_MYIW+%BACK_IW
evalmath COMBBACK_ES %BACK_MYES+%BACK_ES
evalmath COMBBACK_IS %BACK_MYIS+%BACK_IS
evalmath COMBTAIL_EW %TAIL_MYEW+%TAIL_EW
evalmath COMBTAIL_IW %TAIL_MYIW+%TAIL_IW
evalmath COMBTAIL_ES %TAIL_MYES+%TAIL_ES
evalmath COMBTAIL_IS %TAIL_MYIS+%TAIL_IS
evalmath CHKSCRHEAD_MYE %HEAD_MYEW+%HEAD_MYES
evalmath CHKSCRHEAD_MYI %HEAD_MYIW+%HEAD_MYIS
evalmath CHKSCRNECK_MYE %NECK_MYEW+%NECK_MYES
evalmath CHKSCRNECK_MYI %NECK_MYIW+%NECK_MYIS
evalmath CHKSCRCHEST_MYE %CHEST_MYEW+%CHEST_MYES
evalmath CHKSCRCHEST_MYI %CHEST_MYIW+%CHEST_MYIS
evalmath CHKSCRABDOMEN_MYE %ABDOMEN_MYEW+%ABDOMEN_MYES
evalmath CHKSCRABDOMEN_MYI %ABDOMEN_MYIW+%ABDOMEN_MYIS
evalmath CHKSCRBACK_MYE %BACK_MYEW+%BACK_MYES
evalmath CHKSCRBACK_MYI %BACK_MYIW+%BACK_MYIS
evalmath CHKSCRTAIL_MYE %TAIL_MYEW+%TAIL_MYES
evalmath CHKSCRTAIL_MYI %TAIL_MYIW+%TAIL_MYIS
pause

math LOOP add 1
echo ***** Wound variables set! Starting round %LOOP. *****

if %RIGHT_EYE_EW > 0 && %RIGHT_EYE_EW < 5 then
{
gosub takequick right eye
}

if %RIGHT_EYE_EW > 0 && %RIGHT_EYE_EW > 8 then
{
gosub takepart2 right eye
}

if %RIGHT_EYE_IW > 0 then
{
gosub takequick internal right eye
}

if %RIGHT_EYE_ES > 0 then
{
gosub takequick right eye scar
}

if %RIGHT_EYE_IS > 0 then
{
gosub takequick internal right eye scar
}

if %LEFT_EYE_EW > 0 && %LEFT_EYE_EW < 5 then
{
gosub takequick left eye
}

if %LEFT_EYE_EW > 0 && %LEFT_EYE_EW > 8 then
{
gosub takepart2 left eye
}

if %LEFT_EYE_IW > 0 then
{
gosub takequick internal left eye
}

if %LEFT_EYE_ES > 0 then
{
gosub takequick left eye scar
}

if %LEFT_EYE_IS > 0 then
{
gosub takequick internal left eye scar
}

if %RIGHT_ARM_EW > 0 && %RIGHT_ARM_EW < 5 then
{
gosub takequick right arm
}

if %RIGHT_ARM_EW > 0 && %RIGHT_ARM_EW > 8 then
{
gosub takepart right arm
}

if %RIGHT_ARM_IW > 0 then
{
gosub takequick internal right arm
}

if %RIGHT_ARM_ES > 0 then
{
gosub takequick right arm scar
}

if %RIGHT_ARM_IS > 0 then
{
gosub takequick internal right arm scar
}

if %LEFT_ARM_EW > 0 && %LEFT_ARM_EW < 5 then
{
gosub takequick left arm
}

if %LEFT_ARM_EW > 0 && %LEFT_ARM_EW > 8 then
{
gosub takepart left arm
}

if %LEFT_ARM_IW > 0 then
{
gosub takequick internal left arm
}

if %LEFT_ARM_ES > 0 then
{
gosub takequick left arm scar
}

if %LEFT_ARM_IS > 0 then
{
gosub takequick internal left arm scar
}

if %RIGHT_HAND_EW > 0 && %RIGHT_HAND_EW < 5 then
{
gosub takequick right hand
}

if %RIGHT_HAND_EW > 0 && %RIGHT_HAND_EW > 8 then
{
gosub takepart right hand
}

if %RIGHT_HAND_IW > 0 then
{
gosub takequick internal right hand
}

if %RIGHT_HAND_ES > 0 then
{
gosub takequick right hand scar
}

if %RIGHT_HAND_IS > 0 then
{
gosub takequick internal right hand scar
}

if %LEFT_HAND_EW > 0 && %LEFT_HAND_EW < 5 then
{
gosub takequick left hand
}

if %LEFT_HAND_EW > 0 && %LEFT_HAND_EW > 8 then
{
gosub takepart left hand
}

if %LEFT_HAND_IW > 0 then
{
gosub takequick internal left hand
}

if %LEFT_HAND_ES > 0 then
{
gosub takequick left hand scar
}

if %LEFT_HAND_IS > 0 then
{
gosub takequick internal left hand scar
}

if %RIGHT_LEG_EW > 0 && %RIGHT_LEG_EW < 5 then
{
gosub takequick right leg
}

if %RIGHT_LEG_EW > 0 && %RIGHT_LEG_EW > 8 then
{
gosub takepart right leg
}

if %RIGHT_LEG_IW > 0 then
{
gosub takequick internal right leg
}

if %RIGHT_LEG_ES > 0 then
{
gosub takequick right leg scar
}

if %RIGHT_LEG_IS > 0 then
{
gosub takequick internal right leg scar
}

if %LEFT_LEG_EW > 0 && %LEFT_LEG_EW < 5 then
{
gosub takequick left leg
}

if %LEFT_LEG_EW > 0 && %LEFT_LEG_EW > 8 then
{
gosub takepart left leg
}

if %LEFT_LEG_IW > 0 then
{
gosub takequick internal left leg
}

if %LEFT_LEG_ES > 0 then
{
gosub takequick left leg scar
}

if %LEFT_LEG_IS > 0 then
{
gosub takequick internal left leg scar
}

if %SKIN_EW > 0 then
{
gosub takequick skin
}

if %SKIN_IW > 0 then
{
gosub takequick internal skin
}

if %SKIN_ES > 0 then
{
gosub takequick skin scar
}

if %SKIN_IS > 0 then
{
gosub takequick internal skin scar
}

if %COMBHEAD_EW > 0 && %COMBHEAD_EW< 12 && %HEAD_EW > 0 && %HEAD_EW < 5 then
{
gosub takequick head
}

if %COMBHEAD_IW > 0 && %COMBHEAD_IW< 12 && %HEAD_IW> 0 then
{
gosub takequick internal head
}

if %COMBHEAD_ES > 0 && %COMBHEAD_ES< 12 && %HEAD_ES> 0 then
{
gosub takequick head scar
}

if %COMBHEAD_IS > 0 && %COMBHEAD_IS< 12 && %HEAD_IS> 0 then
{
gosub takequick internal head scar
}

if %COMBNECK_EW > 0 && %COMBNECK_EW< 12 && %NECK_EW > 0 && %NECK_EW < 5 then
{
gosub takequick neck
}

if %COMBNECK_IW > 0 && %COMBNECK_IW< 12 && %NECK_IW> 0 then
{
gosub takequick internal neck
}

if %COMBNECK_ES > 0 && %COMBNECK_ES< 12 && %NECK_ES> 0 then
{
gosub takequick neck scar
}

if %COMBNECK_IS > 0 && %COMBNECK_IS< 12 && %NECK_IS> 0 then
{
gosub takequick internal neck scar
}

if %COMBCHEST_EW > 0 && %COMBCHEST_EW< 12 && %CHEST_EW > 0 && %CHEST_EW < 5 then
{
gosub takequick chest
}

if %COMBCHEST_IW > 0 && %COMBCHEST_IW< 12 && %CHEST_IW> 0 then
{
gosub takequick internal chest
}

if %COMBCHEST_ES > 0 && %COMBCHEST_ES< 12 && %CHEST_ES> 0 then
{
gosub takequick chest scar
}

if %COMBCHEST_IS > 0 && %COMBCHEST_IS< 12 && %CHEST_IS> 0 then
{
gosub takequick internal chest scar
}

if %COMBABDOMEN_EW > 0 && %COMBABDOMEN_EW< 12 && %ABDOMEN_EW > 0 && %ABDOMEN_EW < 5 then
{
gosub takequick abdomen
}

if %COMBABDOMEN_IW > 0 && %COMBABDOMEN_IW< 12 && %ABDOMEN_IW> 0 then
{
gosub takequick internal abdomen
}

if %COMBABDOMEN_ES > 0 && %COMBABDOMEN_ES< 12 && %ABDOMEN_ES> 0 then
{
gosub takequick abdomen scar
}

if %COMBABDOMEN_IS > 0 && %COMBABDOMEN_IS< 12 && %ABDOMEN_IS> 0 then
{
gosub takequick internal abdomen scar
}

if %COMBBACK_EW > 0 && %COMBBACK_EW< 12 && %BACK_EW > 0 && %BACK_EW < 5 then
{
gosub takequick back
}

if %COMBBACK_IW > 0 && %COMBBACK_IW< 12 && %BACK_IW> 0 then
{
gosub takequick internal back
}

if %COMBBACK_ES > 0 && %COMBBACK_ES< 12 && %BACK_ES> 0 then
{
gosub takequick back scar
}

if %COMBBACK_IS > 0 && %COMBBACK_IS< 12 && %BACK_IS> 0 then
{
gosub takequick internal back scar
}

if %COMBTAIL_EW > 0 && %COMBTAIL_EW< 12 && %TAIL_EW > 0 && %TAIL_EW < 5 then
{
gosub takequick tail
}

if %COMBTAIL_IW > 0 && %COMBTAIL_IW< 12 && %TAIL_IW> 0 then
{
gosub takequick internal tail
}

if %COMBTAIL_ES > 0 && %COMBTAIL_ES< 12 && %TAIL_ES> 0 then
{
gosub takequick tail scar
}

if %COMBTAIL_IS > 0 && %COMBTAIL_IS< 12 && %TAIL_IS> 0 then
{
gosub takequick internal tail scar
}

if %COMBHEAD_EW> 11 && %HEAD_EW < 5 then
{
var location external
var part head
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick head
}

if %COMBHEAD_IW> 11 && %HEAD_IW< 12 then
{
var location internal
var part head
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal head
}

if %COMBHEAD_ES> 11 && %HEAD_ES< 12 then
{
var location external
var part head
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick head scar
}

if %COMBHEAD_IS> 11 && %HEAD_IS< 12 then
{
var location internal
var part head
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal head scar
}

if %COMBNECK_EW> 11 && %NECK_EW < 5 then
{
var location external
var part neck
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick neck
}

if %COMBNECK_IW> 11 && %NECK_IW< 12 then
{
var location internal
var part neck
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal neck
}

if %COMBNECK_ES> 11 && %NECK_ES< 12 then
{
var location external
var part neck
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick neck scar
}

if %COMBNECK_IS> 11 && %NECK_IS< 12 then
{
var location internal
var part neck
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal neck scar
}

if %COMBCHEST_EW> 11 && %CHEST_EW < 5 then
{
var location external
var part chest
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick chest
}

if %COMBCHEST_IW> 11 && %CHEST_IW< 12 then
{
var location internal
var part chest
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal chest
}

if %COMBCHEST_ES> 11 && %CHEST_ES< 12 then
{
var location external
var part chest
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick chest scar
}

if %COMBCHEST_IS> 11 && %CHEST_IS< 12 then
{
var location internal
var part chest
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal chest scar
}

if %COMBABDOMEN_EW> 11 && %ABDOMEN_EW < 5 then
{
var location external
var part abdomen
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick abdomen
}

if %COMBABDOMEN_IW> 11 && %ABDOMEN_IW< 12 then
{
var location internal
var part abdomen
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal abdomen
}

if %COMBABDOMEN_ES> 11 && %ABDOMEN_ES< 12 then
{
var location external
var part abdomen
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick abdomen scar
}

if %COMBABDOMEN_IS> 11 && %ABDOMEN_IS< 12 then
{
var location internal
var part abdomen
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal abdomen scar
}

if %COMBBACK_EW> 11 && %BACK_EW < 5 then
{
var location external
var part back
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick back
}

if %COMBBACK_IW> 11 && %BACK_IW< 12 then
{
var location internal
var part back
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal back
}

if %COMBBACK_ES> 11 && %BACK_ES< 12 then
{
var location external
var part back
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick back scar
}

if %COMBBACK_IS> 11 && %BACK_IS< 12 then
{
var location internal
var part back
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal back scar
}

if %COMBTAIL_EW> 11 && %TAIL_EW < 5 then
{
var location external
var part tail
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick tail
}

if %COMBTAIL_IW> 11 && %TAIL_IW< 12 then
{
var location internal
var part tail
echo ***** You need to heal your %location %part wound before you can safely transfer %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takequick internal tail
}

if %COMBTAIL_ES> 11 && %TAIL_ES< 12 then
{
var location external
var part tail
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick tail scar
}

if %COMBTAIL_IS> 11 && %TAIL_IS< 12 then
{
var location internal
var part tail
echo ***** You need to heal your %location %part scar before you can safely transfer %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takequick internal tail scar
}

if %HEAD_MYEW< 8 && %HEAD_EW> 8 then
{
gosub takepart2 head
}

if %HEAD_MYIW< 5 && %HEAD_IW> 11 then
{
gosub takehalf internal head
}

if %HEAD_MYES< 5 && %HEAD_ES> 11 then
{
gosub takehalf head scar
}

if %HEAD_MYIS< 5 && %HEAD_IS> 11 then
{
gosub takehalf internal head scar
}

if %NECK_MYEW< 8 && %NECK_EW> 8 then
{
gosub takepart2 neck
}

if %NECK_MYIW< 5 && %NECK_IW> 11 then
{
gosub takehalf internal neck
}

if %NECK_MYES< 5 && %NECK_ES> 11 then
{
gosub takehalf neck scar
}

if %NECK_MYIS< 5 && %NECK_IS> 11 then
{
gosub takehalf internal neck scar
}

if %CHEST_MYEW< 8 && %CHEST_EW> 8 then
{
gosub takepart2 chest
}

if %CHEST_MYIW< 5 && %CHEST_IW> 11 then
{
gosub takehalf internal chest
}

if %CHEST_MYES< 5 && %CHEST_ES> 11 then
{
gosub takehalf chest scar
}

if %CHEST_MYIS< 5 && %CHEST_IS> 11 then
{
gosub takehalf internal chest scar
}

if %ABDOMEN_MYEW< 8 && %ABDOMEN_EW> 8 then
{
gosub takepart2 abdomen
}

if %ABDOMEN_MYIW< 5 && %ABDOMEN_IW> 11 then
{
gosub takehalf internal abdomen
}

if %ABDOMEN_MYES< 5 && %ABDOMEN_ES> 11 then
{
gosub takehalf abdomen scar
}

if %ABDOMEN_MYIS< 5 && %ABDOMEN_IS> 11 then
{
gosub takehalf internal abdomen scar
}

if %BACK_MYEW< 8 && %BACK_EW> 8 then
{
gosub takepart2 back
}

if %BACK_MYIW< 5 && %BACK_IW> 11 then
{
gosub takehalf internal back
}

if %BACK_MYES< 5 && %BACK_ES> 11 then
{
gosub takehalf back scar
}

if %BACK_MYIS< 5 && %BACK_IS> 11 then
{
gosub takehalf internal back scar
}

if %TAIL_MYEW< 8 && %TAIL_EW> 8 then
{
gosub takepart2 tail
}

if %TAIL_MYIW< 5 && %TAIL_IW> 11 then
{
gosub takehalf internal tail
}

if %TAIL_MYES< 5 && %TAIL_ES> 11 then
{
gosub takehalf tail scar
}

if %TAIL_MYIS< 5 && %TAIL_IS> 11 then
{
gosub takehalf internal tail scar
}

if %HEAD_MYEW> 7 && %HEAD_EW> 8 then
{
var location external
var part head
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 head
}

if %HEAD_MYIW> 4 && %HEAD_IW> 11 then
{
var location internal
var part head
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal head
}

if %HEAD_MYES> 4 && %HEAD_ES> 11 then
{
var location external
var part head
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf head scar
}

if %HEAD_MYIS> 4 && %HEAD_IS> 11 then
{
var location internal
var part head
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal head scar
}

if %NECK_MYEW> 7 && %NECK_EW> 8 then
{
var location external
var part neck
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 neck
}

if %NECK_MYIW> 4 && %NECK_IW> 11 then
{
var location internal
var part neck
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal neck
}

if %NECK_MYES> 4 && %NECK_ES> 11 then
{
var location external
var part neck
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf neck scar
}

if %NECK_MYIS> 4 && %NECK_IS> 11 then
{
var location internal
var part neck
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal neck scar
}

if %CHEST_MYEW> 7 && %CHEST_EW> 8 then
{
var location external
var part chest
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 chest
}

if %CHEST_MYIW> 4 && %CHEST_IW> 11 then
{
var location internal
var part chest
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal chest
}

if %CHEST_MYES> 4 && %CHEST_ES> 11 then
{
var location external
var part chest
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf chest scar
}

if %CHEST_MYIS> 4 && %CHEST_IS> 11 then
{
var location internal
var part chest
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal chest scar
}

if %ABDOMEN_MYEW> 7 && %ABDOMEN_EW> 8 then
{
var location external
var part abdomen
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 abdomen
}

if %ABDOMEN_MYIW> 4 && %ABDOMEN_IW> 11 then
{
var location internal
var part abdomen
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal abdomen
}

if %ABDOMEN_MYES> 4 && %ABDOMEN_ES> 11 then
{
var location external
var part abdomen
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf abdomen scar
}

if %ABDOMEN_MYIS> 4 && %ABDOMEN_IS> 11 then
{
var location internal
var part abdomen
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal abdomen scar
}

if %BACK_MYEW> 7 && %BACK_EW> 8 then
{
var location external
var part back
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 back
}

if %BACK_MYIW> 4 && %BACK_IW> 11 then
{
var location internal
var part back
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal back
}

if %BACK_MYES> 4 && %BACK_ES> 11 then
{
var location external
var part back
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf back scar
}

if %BACK_MYIS> 4 && %BACK_IS> 11 then
{
var location internal
var part back
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal back scar
}

if %TAIL_MYEW> 7 && %TAIL_EW> 8 then
{
var location external
var part tail
echo ***** You need to heal your %location %part wound before you can safely transfer part of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takepart2 tail
}

if %TAIL_MYIW> 4 && %TAIL_IW> 11 then
{
var location internal
var part tail
echo ***** You need to heal your %location %part wound before you can safely transfer half of %1's %location %part wound. Now healing your %location %part wound. *****
gosub HW2
send touch %1
gosub takehalf internal tail
}

if %TAIL_MYES> 4 && %TAIL_ES> 11 then
{
var location external
var part tail
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf tail scar
}

if %TAIL_MYIS> 4 && %TAIL_IS> 11 then
{
var location internal
var part tail
echo ***** You need to heal your %location %part scar before you can safely transfer half of %1's %location %part scar. Now healing your %location %part scar. *****
gosub HS2
send touch %1
gosub takehalf internal tail scar
}

goto loop

takequick:
send take %1 $0 quick
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
return

takehalf:
send take %1 $0 half quick
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
return

takepart:
send take %1 $0 part quick
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
return

takepart2:
echo take %1 $0 part quick
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
return

HW:
if $mana < 80 then waiteval $mana >= 80
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send prep HW
pause 2
send charge $cambrinth 7
wait
pause
send charge $cambrinth 7
wait
pause
send invoke $cambrinth
wait
pause
send cast %part reverse
matchre return %location.+appears? completely healed\.$
match return but it cannot heal what is not injured
matchwait 1
goto HW

HW2:
if $mana < 80 then waiteval $mana >= 80
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send prep HW
pause 2
send harness 7
wait
pause
send harness 7
wait
pause
send cast %part reverse
matchre return %location.+appears? completely healed\.$
match return but it cannot heal what is not injured
matchwait 1
goto HW2

HS:
if $mana < 80 then waiteval $mana >= 80
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send prep HS
pause 2
send charge $cambrinth 7
wait
pause
send charge $cambrinth 7
wait
pause
send invoke $cambrinth
wait
pause
send cast %part reverse
matchre return %location.+appears? completely healed\.$
match return but it cannot heal what is not injured
matchwait 1
goto HS

HS2:
if $mana < 80 then waiteval $mana >= 80
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send prep HS
pause 2
send harness 7
wait
pause
send harness 7
wait
pause
send cast %part reverse
matchre return %location.+appears? completely healed\.$
match return but it cannot heal what is not injured
matchwait 1
goto HS2

return:
return

loop:
echo ***** End of round %LOOP. Now pausing for 10 seconds to allow %1's wounds to be completely transferred to you. *****
pause 10
if $bleeding = 1 then
{
gosub tendstart
}
if %LOOP < 3 then
{
goto start
}
if %LOOP > 2 then
{
goto done
}

refresh:
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send prep Refresh
pause 2
send charge $cambrinth 7
wait
pause
send charge $cambrinth 7
wait
pause
send invoke $cambrinth
wait
pause
send cast
waitforre ^You gesture
return

VH:
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
evalmath HARNESS round((100-$health) / 5)
send prep VH
pause 2
send charge $cambrinth %HARNESS
wait
pause
send charge $cambrinth %HARNESS
wait
pause
send invoke $cambrinth
wait
pause
send cast
waitforre ^You gesture
return

tendstart:
ACTION setvar head 1 WHEN ^\s+head       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar neck 1 WHEN ^\s+neck       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar chest 1 WHEN ^\s+chest       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar abdomen 1 WHEN ^\s+abdomen       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar back 1 WHEN ^\s+back       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar tail 1 WHEN ^\s+tail       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar rightarm 1 WHEN ^\s+right arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar leftarm 1 WHEN ^\s+left arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar righthand 1 WHEN ^\s+right hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar lefthand 1 WHEN ^\s+left hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar rightleg 1 WHEN ^\s+right leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar leftleg 1 WHEN ^\s+left leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar righteye 1 WHEN ^\s+right eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar lefteye 1 WHEN ^\s+left eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
put health
waitforre ^Bleeding$
if %head = 1 then gosub tend head
if %neck = 1 then gosub tend neck
if %chest = 1 then gosub tend chest
if %abdomen = 1 then gosub tend abdomen
if %back = 1 then gosub tend back
if %tail = 1 then gosub tend tail
if %rightarm = 1 then gosub tend right arm
if %leftarm = 1 then gosub tend left arm
if %righthand = 1 then gosub tend right hand
if %lefthand = 1 then gosub tend left hand
if %rightleg = 1 then gosub tend right leg
if %leftleg = 1 then gosub tend left leg
if %righteye = 1 then gosub tend right eye
if %lefteye = 1 then gosub tend left eye
return

tend:
send tend my $0
waitforre ^You work|^That area|^Look again|^Your .+ too injured
return

done:
send touch %1
waitforre /^%1.+ vitality/i
put '}%1 You are competely healed except for your bleeding wounds.
put #play ScriptEndput #parse PATIENT HEALED