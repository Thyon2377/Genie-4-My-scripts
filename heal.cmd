action var fullprep yes when ^You feel fully prepared to cast your spell
evalmath harness.heal round(($half.heal) / 2)
evalmath harness.hw round(($half.hw) / 3)
evalmath harness.hs round(($half.hs) / 3)

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

start:
var All_Clean 0
var SKIN_MYW 0
var SKIN_MYS 0
var HEAD_MYW 0
var HEAD_MYS 0
var NECK_MYW 0
var CHEST_MYW 0
var ABDOMEN_MYW 0
var BACK_MYW 0
var TAIL_MYW 0
var RIGHT_ARM_MYW 0
var LEFT_ARM_MYW 0
var RIGHT_HAND_MYW 0
var LEFT_HAND_MYW 0
var RIGHT_LEG_MYW 0
var LEFT_LEG_MYW 0
var RIGHT_EYE_MYW 0
var LEFT_EYE_MYW 0
var NECK_MYS 0
var CHEST_MYS 0
var ABDOMEN_MYS 0
var BACK_MYS 0
var TAIL_MYS 0
var RIGHT_ARM_MYS 0
var LEFT_ARM_MYS 0
var RIGHT_HAND_MYS 0
var LEFT_HAND_MYS 0
var RIGHT_LEG_MYS 0
var LEFT_LEG_MYS 0
var RIGHT_EYE_MYS 0
var LEFT_EYE_MYS 0

pause
EmpathWounds:
echo ***** Checking for magic-hindering wounds *****
send perceive health self
action setvariable TEMP $1_$2 when ^Wounds to the (LEFT|RIGHT) (\w+):$
action setvariable TEMP $1 when ^Wounds to the (\w+):$
action setvariable %TEMP_MYW 1 when Fresh (External|Internal):.*?\-\-\s+insignificant$
action setvariable %TEMP_MYS 1 when Scars (External|Internal):.*?\-\-\s+insignificant$
action setvariable %TEMP_MYW 2 when Fresh (External|Internal):.*?\-\-\s+negligible$
action setvariable %TEMP_MYS 2 when Scars (External|Internal):.*?\-\-\s+negligible$
action setvariable %TEMP_MYW 3 when Fresh (External|Internal):.*?\-\-\s+minor$
action setvariable %TEMP_MYS 3 when Scars (External|Internal):.*?\-\-\s+minor$
action setvariable %TEMP_MYW 4 when Fresh (External|Internal):.*?\-\-\s+more than minor$
action setvariable %TEMP_MYS 4 when Scars (External|Internal):.*?\-\-\s+more than minor$
action setvariable %TEMP_MYW 5 when Fresh (External|Internal):.*?\-\-\s+harmful$
action setvariable %TEMP_MYS 5 when Scars (External|Internal):.*?\-\-\s+harmful$
action setvariable %TEMP_MYW 6 when Fresh (External|Internal):.*?\-\-\s+very harmful$
action setvariable %TEMP_MYS 6 when Scars (External|Internal):.*?\-\-\s+very harmful$
action setvariable %TEMP_MYW 7 when Fresh (External|Internal):.*?\-\-\s+damaging$
action setvariable %TEMP_MYS 7 when Scars (External|Internal):.*?\-\-\s+damaging$
action setvariable %TEMP_MYW 8 when Fresh (External|Internal):.*?\-\-\s+very damaging$
action setvariable %TEMP_MYS 8 when Scars (External|Internal):.*?\-\-\s+very damaging$
action setvariable %TEMP_MYW 9 when Fresh (External|Internal):.*?\-\-\s+severe$
action setvariable %TEMP_MYS 9 when Scars (External|Internal):.*?\-\-\s+severe$
action setvariable %TEMP_MYW 10 when Fresh (External|Internal):.*?\-\-\s+very severe$
action setvariable %TEMP_MYS 10 when Scars (External|Internal):.*?\-\-\s+very severe$
action setvariable %TEMP_MYW 11 when Fresh (External|Internal):.*?\-\-\s+devastating$
action setvariable %TEMP_MYS 11 when Scars (External|Internal):.*?\-\-\s+devastating$
action setvariable %TEMP_MYW 12 when Fresh (External|Internal):.*?\-\-\s+very devastating$
action setvariable %TEMP_MYS 12 when Scars (External|Internal):.*?\-\-\s+very devastating$
action setvariable %TEMP_MYW 13 when Fresh (External|Internal):.*?\-\-\s+useless$
action setvariable %TEMP_MYS 13 when Scars (External|Internal):.*?\-\-\s+useless$
waitforre ^You .+ vitality
pause

echo ***** Wound variables set! *****

BadWounds:

if %SKIN_MYW > 0 then
{
var part skin
gosub HW
}

if %SKIN_MYS > 0 then
{
var part nerves
gosub HS
}

if %HEAD_MYW > 0 then
{
var part head
gosub HW
}

if %HEAD_MYS > 0 then
{
var part head
gosub HS
}

wounds:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing your wounds *****
send prepare heal
var fullprep no
pause 2

send charge $cambrinth %harness.heal
wait
pause

send charge $cambrinth %harness.heal
wait
pause

send invoke $cambrinth
wait
pause

if %fullprep = no then waiteval %fullprep = yes
send cast wound
matchre scars ^Your wounds are completely healed|^Your scars are completely healed|^Your body is completely healed
matchwait 1
goto wounds

scars:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing your scars *****
send prepare heal
var fullprep no
pause 2

send charge $cambrinth %harness.heal
wait
pause

send charge $cambrinth %harness.heal
wait
pause

send invoke $cambrinth
wait
pause

if %fullprep = no then waiteval %fullprep = yes
send cast scar
matchre end ^Your wounds are completely healed|^Your scars are completely healed|^Your body is completely healed
matchwait 1
goto scars

HW:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing wounds to your %part *****
send prepare hw
var fullprep no
pause 2
send charge $cambrinth %harness.hw
wait
pause .25
send charge $cambrinth %harness.hw
wait
pause .25
send invoke $cambrinth
wait
pause .25
if %fullprep = no then waiteval %fullprep = yes
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HW

HS:
if $mana < 40 then waiteval $mana >= 40
echo ***** Now healing scars to your %part *****
send prepare hs
var fullprep no
pause 2
send charge $cambrinth %harness.hs
wait
pause .25
send charge $cambrinth %harness.hs
wait
pause .25
send invoke $cambrinth
wait
pause .25
if %fullprep = no then waiteval %fullprep = yes
send cast %part reverse
matchre return appears? completely healed\.$
matchre return but it cannot heal what is not injured
matchwait 1
goto HS

return:
return

end:
send perceive health self
waitforre ^You .+ vitality
pause
echo ***** You are fully healed *****
put #play ScriptEnd