
INTRO:
echo
put echo /on
waitfor echo
echo
echo ********************************************
echo **                                        **
echo **  [] []  []|[]  []  []  []|[]  []|[]    **
echo **  [] []  []      [][]   []     []  []   **
echo **  []|[]  [][]     []    [][]   []   []  **
echo **  [] []  []      [][]   []     []  []   **
echo **  [] []  []|[]  []  []  []|[]  []|[]    **
echo **                                        **
echo ** HEXEDBYTHENET--hexedbythenet@gmail.com **
echo **                                        **
echo ********************************************
echo
put echo /off
waitfor echo
echo You must be a Ranger to run this script.
echo Script starts outside Langenfirth Ranger Cache.
echo You must start with either SWIM, SCOUT, CLIMB, FORAGE, or ANIMAL added to the script command.
echo USEAGE: .langenfirth (survival) 
echo IE: .langenfirth swim (This will start the script from the swimming section. Climb will start from climbing section and you can guess where scout will start the script from. Enjoy!)
goto SET

SET:
setvariable song (Pick a song to hum.)
setvariable style (Pick a style to hum it in.)
setvariable spell1 (Pick a spell to cast before scouting.)
setvariable spell2 (Pick a spell to cast before foraging.)
setvariable spell3 (Pick a spell to cast before climbing.)
setvariable spell4 (Pick a spell to cast before swimming.)
setvariable spellall (Pick a spell to cast all the time.)
setvariable mana (Pick a number to prep spells at and harness before casting.)
setvariable forage (Pick something to forage.)
setvariable weapon1 (Pick a weapon to hold while climbing.)
setvariable weapon2 (Pick another weapon to hold while climbing.)
setvariable sheath (Pick where your hold/store your weapons.)
setvariable app1 (Pick something to appraise while climbing.)
setvariable app2 (Pick something else to appraise while climbing.)
setvariable companion (Pick your companion.)
setvariable care (Pick the container you keep companion supplies in.)
setvariable food (Pick the type of food your companion uses.)
setvariable toy (Pick an item to drop for your companion to pick up.)
goto START


START:
pause
put %1
match GOANIMAL Please rephrase that
match GOFORAGE Roundtime
match GOCLIMB climb
match SCOUTPREP huh?
match GOSWIM There isn't any way to do that here.
matchwait

SCOUTPREP:
pause
put stop hum
put perc all
pause
put pre %spell1 %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put pre %spellall %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
goto SCOUT

SCOUT:
pause
put scout trail
pause
pause
put go trail
waitfor As your journey ends, you gaze out at your new surroundings.
pause
put scout trail
pause
pause
put go trail
waitfor As your journey ends, you gaze out at your new surroundings.
pause
goto EXPSCOUT 

EXPSCOUT:
pause
put exp skill scout
match SCOUT Overall state of mind: clear
match GOFORAGE mind lock
matchwait

GOFORAGE:
pause
put empty right
move w
move n
put go gate
goto FORAGEPREP

FORAGEPREP:
pause
put stop hum
put perc all
pause
put pre %spell2 %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put pre %spellall %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
goto FORAGEHUM

FORAGEHUM:
pause
put hum %song %style
pause
goto FORAGE

FORAGE:
put collect %forage
match FORAGEKICK You manage to
match FORAGEKICK Roundtime
match FORAGE wondering what you might find
match FORAGE You forage around 
match PAUSE ...wait
match FORAGE You begin to forage around, but can't quite seem to remember what it was you were
match FORAGE if you had a bit more luck.
matchwait
 
PAUSE:
pause
pause
goto EXPFORAGE 

EXPFORAGE:
pause
put exp skill outdoors
match FORAGEHUM Overall state of mind: clear
match CLIMBCHAIN mind lock
matchwait 

FORAGEKICK:
pause 
put kick %forage
goto EXPFORAGE

CLIMBCHAIN:
pause 
put out
move s
move e
move sw
move s
move s
move w
move sw
move sw
move w
goto CLIMBPREP

GOCLIMB:
pause
move sw
move s
move s
move w
move sw
move sw
move w
goto CLIMBPREP

CLIMBPREP:
pause
put stop hum
put get my %app1
put wear my %app1
put get my %app2
put wear my %app2
pause 
put get my %weapon1 in my %sheath
put get my %weapon2 in my %sheath
pause 
put perc all
pause
put pre %spell3 %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put pre %spellall %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
goto APP 

APP:
pause
put app my %app1 careful
pause
pause
put app my %app2 careful
pause
pause
goto CLIMBHUM

CLIMBHUM:
pause
put hum %song %style
pause
goto CLIMB

CLIMB:
pause
put app fir tree
pause
put stand
put climb practice fir tree
match CLIMB2 climb
match EXPCLIMB You finish practicing  
matchwait

CLIMB2:
put app second fir tree
pause
put stand
put climb practice second fir tree
match EXPCLIMB You finish practicing
matchwait

EXPCLIMB:
put exp skill climb
match POWER Overall state of mind: clear
match CLIMBDONE mind lock
matchwait 

CLIMBDONE:
pause
put put my %weapon1 in my %sheath
put put my %weapon2 in my %sheath
pause
goto SWIMCHAIN

POWER:
pause 
put power
pause 
goto APP 

GOSWIM:
pause
move sw
move s
move s
move w
move sw
move sw
move w
move n
move n
move w
move nw
move w
put go bridge
goto swimprep

SWIMCHAIN:
pause
move n
move n
move w
move nw
move w
put go bridge
goto swimprep

SWIMPREP:
pause
put stop hum
put perc all
pause
put pre %spell4 %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put pre %spellall %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put go brook
pause 
goto SWIMHUM

SWIMHUM:
pause
put hum %song %style
pause
goto swim

SWIM:
move sw
pause
pause
move w
pause
pause
move w
pause
pause
move sw
pause
pause
move ne
pause
pause
move e
pause
pause
move e
pause
pause
move ne
pause
pause
goto EXPSWIM 

EXPSWIM:
put exp skill swim
match SWIMHUM Overall state of mind: clear
match ANIMALCHAIN mind lock
matchwait 

GOANIMAL:
pause 
move sw
move w
move sw
goto ANIMALPREP

ANIMALCHAIN:
pause 
put go bank
move e
move se
move e
move n
move n
move n
move ne
move se
move sw
move se
goto ANIMALPREP

ANIMALPREP:
pause
put stop hum
put perc all
pause
put pre %spell1 %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
put pre %spellall %mana
pause
put harness %mana
pause
waitfor You feel fully prepared
put cast
pause
gotoANIMAL

ANIMAL:
pause
put whist for %companion
pause 
put pet %companion
put open my %care
pause 
put get %food in my %care
put feed %food to %companion
pause 
put put %food in my %care
pause 
put get %toy in my %care
pause 
put drop %toy
goto SIGNAL

SIGNAL:
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to get %toy
put signal %companion to get %toy
pause 1
put signal %companion to sleep
pause 1
goto ANIMALEXP

ANIMALEXP:
put exp skill al
match ANIMAL Overall state of mind: clear
match ANIMALDONE mind lock
matchwait 

ANIMALDONE:
pause
put get %toy
pause
put open my %care
put put %toy in my %care
pause 
goto SCOUTCHAIN

SCOUTCHAIN:
pause 
move ne
move e
move ne
goto SCOUT
