action (combo) var combo $1 when by landing (.*)\.$
action (combo) var combo $1 when by landing (.*)\.$
action (combo) off
action var everild 1 when less confident in its ability to defend Itself.
action var everild 0 when regains its confidence, and ability to defend itself
var avalanche 0
var everild 0
count:
if $Expertise.LearningRate < 30 then goto Expertise
if $Tactics.LearningRate < 30 then goto Tactics

Normal:
gosub Melee.Attack slice
goto count


Expertise:
action (combo) on
var last.label Expertise
put ana flame
pause 0.5
pause 0.5
gosub combo
goto count

Tactics:
action (combo) on
var last.label Tactics
match gcombo massive
match gcombo unable
match gcombo You fail
match Tactics Roundtime
match face Analyze what\?
put ana
matchwait

face:
put face next
goto count

gcombo:
gosub combo
goto count

combo:
eval combo replace("%combo", ", ", "|")  
eval combo replace("%combo", " and ", "|")  
var combo |%combo|
eval total count("%combo", "|")  
action (combo) off

Loop:  
         eval maneuver element("%combo", 1)  
         eval number count("%combo", "|%maneuver")  
         var count 0
         gosub RemoveLoop
         action setvariable maneuver $1 when ^@a (\S+)$
         put #parse @%maneuver
         counter set %count
         gosub combo.attack %maneuver
         if %combo != "|" then goto Loop  
         return
          
RemoveLoop:
         eval number count("%combo", "|%maneuver|")
         eval combo replace("%combo", "|%maneuver|", "|")
         eval combo replace("%combo", "||" "|")
         evalmath count %count + %number
         if !contains("%combo", "|%maneuver|") then return
         goto RemoveLoop

combo.attack:
counter subtract 1
melee.attack:
        if $monstercount > %monster.limit then goto sd
        if $stamina > 80 then goto melee.att
        if $avalanche = 0 then put ber aval
        if %everild = 0 then
                {
                put roar everild
                pause 0.5
                pause 0.5
                }
        pause 1
        goto melee.attack

melee.att:
pause 0.1
pause 0.1
        pause 0.1
        match count There is nothing else to face!
        match advance You aren't close enough to attack
        match attackreturn hit
        match attackreturn strike
        match melee.att position.]
        match melee.att opponent.]
        match melee.att  advantage.]
        match brawl.change You can't do that
        match Melee.attack ...wait
        match dead balanced]
        match dead balance]
        if $Offhand_Weapon.LearningRate < 30 then put $1 left
                else put $1
        matchwait

attackreturn:
if contains("$roomobjs", "that appears dead") then goto dead
if contains("$roomobjs", "which appears dead") then goto dead
pause 0.5
pause 0.5
if "%current.label" = "normal" then goto melee.att
if %c = 0 then return
goto combo.attack


dead:
put search shaman
put search eel
return