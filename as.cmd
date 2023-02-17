action instant send exit when eval $health < 40
action instant send exit when eval $spirit < 40
action instant send exit when eval $dead = 1
action instant send exit when ^You are Dead!
setvariable EchoOff 1


if "$zoneid" != "99" then goto backtostart
if "$zoneid" = "99" & "$roomid" != "92" then goto RightRoom
if "%EchoOff" = "1" then goto StartScript
echo
Echo Raggdoll's Aesry Survival Script
Echo
echo Trains Swimming, Foraging, Perception, Climbing, Vocals, Scholarship, First Aid and Mech lore.
echo
Echo Script edited by Dogish7
echo All credit goes to Stephinroth and Teloc.
Echo Main Scripts include 
echo Stephinroth's Compendium Studying Script
Echo Teloc's Aesry Survival Script
Echo		
Echo Must set $orig (Instruction) 
echo example #var orig star
echo
Echo *SCRIPT IS CURRENTLY SET TO INFINATLY LOOP! Disclaimer, this script is not intended to be used as an afk script.
Echo
Echo Requires a Script named .m (movement script) -Included on First Post
Echo
Echo


backtostart:
send .m town
waitforre YOU HAVE ARRIVED
RightRoom:
send .m 92
waitforre YOU HAVE ARRIVED

StartScript:
goto Compend
CompendDone:
move w
send power
pause $roundtime 
move go gate
send power
pause $roundtime 
move w
send power
pause $roundtime 
move w
send power
pause $roundtime 
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause $roundtime
move w
send climb stair
waitfor You reach the end
pause
move w
send climb step
waitfor You reach the end
move w
move go gate
move w
move w
pause
send climb path
waitfor You reach the end
pause
move sw
move w
send climb trail
waitfor You reach the end
pause
move n
send climb trail
waitfor You reach the end
pause
move nw
move w
send climb road
waitfor You reach the end
pause
move s
send climb trail
waitfor You reach the end
pause
move sw
send climb path
waitfor You reach the end
pause
move nw
send climb ramp
waitfor You reach the end
pause
move w
send climb walk
waitfor You reach the end
move w
move w
move w
move s
move s
move s
move climb lad
send power
pause $roundtime 
move climb jet
send power
pause $roundtime 
move go sea

swim:
if $Swimming.LearningRate > 30 then goto ToForagestart
if "$roomid" = "20" then send west
pause $roundtime
pause .5
if "$roomid" = "22" then send north
pause $roundtime
pause .5
if "$roomid" = "21" then send southeast
pause $roundtime
pause .5
goto swim

swimroomwait:
send .m 20
pause 15
goto swim

ToForagestart:
if "$roomid" = "20" then goto ToForage
send .m 20
waitforre YOU HAVE ARRIVED


ToForage:
move go bea
move climb jet
move climb lad
move n
move n
move n
move e
move e
move e
send climb walk
waitfor You reach the end
pause
move e
send climb ramp
waitfor You reach the end
pause
move se
send climb path
waitfor You reach the end
pause
move ne
send climb trail
waitfor You reach the end
pause
move n
send climb road
waitfor You reach the end
pause
move e
move se
send climb trail
waitfor You reach the end
pause
move s
send climb trail
waitfor You reach the end
pause
move e
move ne
send climb path
waitfor You reach the end
pause
move e
move go gate
move e
move e
send climb stair
waitfor You reach the end
pause
move e
send climb stair
waitfor You reach the end
pause
move e
send climb stair
waitfor You reach the end
pause
move e
send climb stair
waitfor You reach the end
pause
move e
send climb stair
waitfor You reach the end
pause
move e
send climb stair
waitfor You reach the end
pause
move e
send power
pause $roundtime 
send climb stair
waitfor You reach the end
pause
move e
send power
pause $roundtime 
send climb stair
waitfor You reach the end
move e
send power
pause $roundtime 
move e
send power
pause $roundtime 
send bow dolphin
pause .5
move go gate
send power
pause $roundtime 

forageprep:
start:
send hum jig
pause
send collect rock
pause 2
pause
pause
send kick pile
pause 2
send stand
if $Perception.LearningRate > 15 then goto jugstow
goto start


jugstow:
pause
move e
move e
move go gate

paper:
pause
send get my paper
match envelope What were you
match studyx You are already holding
match studyx You get
matchwait

envelope:
pause
send pull my envelope
match locked I'm afraid that you can't pull that
match studyx You get a
match newenv The envelope is empty.
matchwait

newenv:
pause
send hold my envelope
send poke my envelope
pause
send get my envelope
send wear my envelope
pause
goto envelope

studyx:
pause
send l my $orig inst in my primer
match studyprimer You must be holding
match study I could not find
match fold You've already started
matchwait

studyprimer:
pause
send study my $orig instruction in my primer
pause $roundtime
goto foldx

study:
pause
send study my $orig instruction
pause $roundtime 

fold:
send hum $hum master
pause
send fold my paper

match fold but it doesn't come out quite
match fold make another fold
match fold a fold
match next the final fold
matchwait

next:
pause
send exhale my $righthandnoun
pause
send empty right
pause 2
send drop my hat
pause .5
if $Mechanical_Lore.LearningRate > 30 then goto locked
goto paper

foldx:
pause
send fold my paper

match foldx but it doesn't come out quite
match foldx make another fold
match foldx a fold
match nextx the final fold
matchwait

nextx:
pause
send exhale my $righthandnoun
pause
send empty right
pause 2
send drop my hat
pause .5
if $Mechanical_Lore.LearningRate > 30 then goto locked
goto paper

locked:
pause
send stow left
send stow right
pause
move go gate
goto StartScript

#Stephinroth's Compendium Studying Script
# Version 1.0

action send $lastcommand when ...wait
Compend:
Comp_Start:
timer clear
Compcheck:
match GotComp You tap
match NoComp I could not find what you were referring to.
match NoComp What were you referring to?
send tap my comp
matchwait 10
NoComp:
goto NoCompendium
GotComp:
if "$righthand" = "Empty" then send get my comp
if "$righthand" = "Empty" then waitfor You get

FindPatternsInComp:
action (Patterns) on
action (Patterns) eval temp replacere("$1"," |'","") ; var %temp on when (Snow Goblin|Silver Leucro|S'Kra Mur|Elven|Dwarven|Rock Troll|Prydaen|Rakash|Gnome|Gor'Tog|Halfling|Human|Peccary|River caiman|Gidii|Lanky grey lach|Ape|Merrows|Selkie|Geni|Trekhalo|Giant|Bobcat|Snowbeast|Arzumos|Caracal|Firecat|Gryphon|Seordmaor|Bull|Mammoth|Hawk|Armadillo|Shark|La'heke|Angiswaerd|Toad|Elsralael|Celpeze|Spider|Silverfish|Crab|Westanuryn|Dolomar|Warklin|Wasp)
pause 0.5
send look my comp
pause 3
action (Patterns) off
goto FigureWhatToStudy


FigureWhatToStudy:
if "%SnowGoblin" = "on" then If $Scholarship.Ranks >= 120 then gosub PreTurnToPage Snow Goblin
if "%SilverLeucro" = "on" then If $Scholarship.Ranks >= 40 then gosub PreTurnToPage Silver Leucro
if "%SKraMur" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage S'Kra Mur
if "%Elven" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Elven
if "%Dwarven" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Dwarven
if "%RockTroll" = "on" then If $Scholarship.Ranks >=  180 then gosub PreTurnToPage Rock Troll
if "%Prydaen" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Prydaen
if "%Rakash" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Rakash
if "%Gnome" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Gnome
if "%GorTog" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Gor'Tog
if "%Halfling" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Halfling
if "%Human" = "on" then If $Scholarship.Ranks >=  100 then gosub PreTurnToPage Human
if "%Peccary" = "on" then If $Scholarship.Ranks >=  230 then gosub PreTurnToPage Peccary
if "%RiverCaiman" = "on" then If $Scholarship.Ranks >= 260 then gosub PreTurnToPage  River caiman
if "%Gidii" = "on" then If $Scholarship.Ranks >= 280 then gosub PreTurnToPage Gidii
if "%LankyGreyLach" = "on" then If $Scholarship.Ranks >= 400 then gosub PreTurnToPage Lanky Grey Lach
if "%Ape" = "on" then If $Scholarship.Ranks >= 410 then gosub PreTurnToPage Ape
if "%Merrows" = "on" then If $Scholarship.Ranks >= 420 then gosub PreTurnToPage Merrows
if "%Selkie" = "on" then If $Scholarship.Ranks >= 430 then gosub PreTurnToPage Selkie
if "%Geni" = "on" then If $Scholarship.Ranks >= 440  then gosub PreTurnToPage Geni
if "%Trekhalo" = "on" then If $Scholarship.Ranks >= 450 then gosub PreTurnToPage Trekhalo
if "%Giant" = "on" then If $Scholarship.Ranks >= 460 then gosub PreTurnToPage Giant
if "%Bobcat" = "on" then If $Scholarship.Ranks >= 470 then gosub PreTurnToPage  Bobcat
if "%Snowbeast" = "on" then If $Scholarship.Ranks >= 480 then gosub PreTurnToPage  Snowbeast
if "%Arzumos" = "on" then If $Scholarship.Ranks >= 490 then gosub PreTurnToPage Arzumos
if "%Caracal" = "on" then If $Scholarship.Ranks >= 500 then gosub PreTurnToPage Caracal
if "%Firecat" = "on" then If $Scholarship.Ranks >= 510 then gosub PreTurnToPage Firecat
if "%Gryphon" = "on" then If $Scholarship.Ranks >= 520 then gosub PreTurnToPage Gryphon
if "%Seordmaor" = "on" then If $Scholarship.Ranks >= 530 then gosub PreTurnToPage Seordmaor
if "%Bull" = "on" then If $Scholarship.Ranks >= 540 then gosub PreTurnToPage Bull
if "%Mammoth" = "on" then If $Scholarship.Ranks >= 550 then gosub PreTurnToPage Mammoth
if "%Hawk" = "on" then If $Scholarship.Ranks >= 560 then gosub PreTurnToPage Hawk
if "%Armadillo" = "on" then If $Scholarship.Ranks >= 570 then gosub PreTurnToPage Armadillo 
if "%Shark" = "on" then If $Scholarship.Ranks >= 580 then gosub PreTurnToPage Shark
if "%Laheke" = "on" then If $Scholarship.Ranks >= 590 then gosub PreTurnToPage La'heke
if "%Angiswaerd" = "on" then If $Scholarship.Ranks >= 600 then gosub PreTurnToPage Angiswaerd
if "%Toad" = "on" then If $Scholarship.Ranks >= 610 then gosub PreTurnToPage Toad
if "%Elsealael" = "on" then If $Scholarship.Ranks >= 620 then gosub PreTurnToPage  Elsealael
if "%Celepeze" = "on" then If $Scholarship.Ranks >= 630 then gosub PreTurnToPage Celepeze
if "%Spider" = "on" then If $Scholarship.Ranks >=640 then gosub PreTurnToPage Spider
if "%Silverfish" = "on" then If $Scholarship.Ranks >= 650 then gosub PreTurnToPage Silverfish
if "%Crab" = "on" then If $Scholarship.Ranks >= 660 then gosub PreTurnToPage Crab
if "%Westanuryn" = "on" then If $Scholarship.Ranks >= 670 then gosub PreTurnToPage Westanuryn
if "%Dolomar" = "on" then If $Scholarship.Ranks >= 680 then gosub PreTurnToPage Dolomar
if "%Warklin" = "on" then If $Scholarship.Ranks >= 690 then gosub PreTurnToPage Warklin
if "%Wasp" = "on" then If $Scholarship.Ranks >= 700 then gosub PreTurnToPage Wasp
goto Done

PreTurnToPage:
var Rightpage $0
TurnToPage:
matchre RightPage You turn to the section containing %Rightpage
match TurnToPage You turn
send turn my comp
matchwait

RightPage:
matchre return (clarity|Why do you)
match RightPage Roundtime
send study my comp
matchwait

return:
timer clear
timer start
return

done:
if indexof ("$righthand", "compendium") then send stow comp
if indexof ("$righthand", "compendium") then waitfor You put
goto CompendDone
NoCompendium:
Echo YOU SHOULD GET A COMPENDIUM BEFORE YOU TRY TO STUDY ONE
goto CompendDone