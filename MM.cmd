######################Credits:Sidgard for the orginal script, Unknown for Trash identifyer. Azarael, Dasffion and Londrin for taking to time to help me understand this stuff, Oh yea
######################and me, Josh :) 
########################################################################################################################################################
##  HOW TO USE: The variables below are script variables, they must be set to your character. Variables MMAPP1,MMAPP2,MMAPP3,MMAPP4 are slots that you ##  will appraise, these items must be worn.
##  Variables MMCAM1 and MMCAM2 are the cambrinth that you will be using to train arcana, if you dont have or wish to use a second cambrinth then for   ##  MMCAM2 put None(must be spelled exact).
##  Variables MMCAMCHARGE1,MMCAMCHARGE2 are what you want to charge the cambrinth.
##  Variable MMPREP is what you will prepare your spells at. example: prep pg (MMPREP)
##  Variable MMTELESCOPE is if you have a telescope or not, this must be set to Yes or No(exact spelling)
##  Variable HaveComp is weather you have a compendium or not, if you do set this to Yes, or if not then No(exact spelling)
##
##  I Do not know how to do a level check to have the script auto insert the appropriate constellations for your level. They are currently set to a 23rd ##  lvl MM and require a telescope to see.I only picked constellations that give more then normal prediction pool fill. TO ADJUST THIS FOR YOU, go to    ##  https://elanthipedia.play.net/mediawiki/index.php/Star_chart and select the appropriate constellations for you, make sure to notice weather they    ##  need a telescope or not. The current constellations are Wren, Viper, Ram, Scorpion, Shardstar, Weasel, King.Snake, sun, Nightingale, Centaur. The 
##  EASIEST way to change these are to open the script in the Genie script editor or normal text editor, go to the edit tab and use the REPLACE feature. ##  MAKE SURE YOU SPELL THEM EXACT. That should customize the script for you!!
##
##
########################################################################################################################################################
var MMAPP1 helm
var MMAPP2 hauberk
var MMAPP3 ring
var MMAPP4 shield
var MMCAM1 mask
var MMCAM2 knife
var MMCAMCHARGE1 3
var MMCAMCHARGE2 2
var MMPREP 15
var MMTELESCOPE Yes
var HaveComp No
######################################## END OF CUSTOMIZING#############################################################################################
action instant goto CONTAINER_CHECK when ^system is slow


goto astrobegin

CONTAINER_CHECK:
 matchre CONTAINER a (bucket) of viscous gloop           
 matchre CONTAINER a large stone (turtle) 
 matchre CONTAINER a marble (statue)               
 matchre CONTAINER a disposal (bin)              
 matchre CONTAINER a waste (bin)         
 matchre CONTAINER a tree (hollow)               
 matchre CONTAINER an oak (crate)                
 matchre CONTAINER firewood (bin)                
 matchre CONTAINER ivory (urn)           
 matchre CONTAINER (pit)         
 matchre CONTAINER trash (receptacle)
 matchre CONTAINER_CHECK /...wait|may only type/ 
 match braid1 Obvious
send look       
matchwait 5

CONTAINER:
var TRASH.CAN $1
 goto braid1


braid1:
var saved braid1
   match braid2 You manage to find
   matchre braid1 /You are sure you knew|You begin to|You find something|You forage around|You wander around/
   match dumproom The room is too
   matchre DROP /You need both hands|You really need to/
   put forage Grass
   matchwait

braid2:
   put braid my Grass
   matchre braid2 /...wait|You begin to carefully|excellent progress|making progress|making good progress|You are certain/
   matchre braidmiss /mistake|Frustration wells up|why you even bother/
   match braid1 You need to have more material
   matchre DROP /You need both hands|You really need to have at least one hand/
   matchwait

braidmiss:
   put pull my braided Grass
   match braidmiss ...wait
   match braid2 You nod with satisfaction
   match braid1 breaks apart in your hands.
   match braiddone Satisfied with your work
   matchwait

braiddone:
   put appraise my rope
   pause 3
   put feed my rope to gela
   pause 1
   put put my rope in %TRASH.CAN
   pause 1
   put drop my rope
   matchre braidexp /You drop a braided|You toss a|You put your rope|What were you/
   match braiddone ...wait
   matchwait

braidexp:
  put stow left
  pause 1
  put stow right
  put exp engineer
  match braidend mind lock
  match braid1 Time Development Points
  matchwait

pause1:
 put perc yavash
 pause 10
 put perc katamba
 pause 10
 put perc xibar
 pause 10
 put release
 goto %saved

DROP:
 Pause
 put drop grass
 pause
 put drop rope
 pause
 put drop vine
 pause 
 put stow left
 pause 
 put stow right
 goto %saved



dumproom:
 put dump junk
 pause 120
 put power
 pause 120
 put look
 pause 65
goto %saved


braidend:
var saved collectstart0
goto DROP


collectstart0:
echo ***Collecting***
goto collectstart

collectstart:
  put stand
  goto collectmain

collectmain:
 pause 1
 put collect Rock
 goto collectmatch

collectmatch:
var saved collectmain
 matchre collectmain /You forage|Searching and searching|You wander|You are|You move|You begin|You find/
 match collecttrash You manage
 match dumproom The room is too
 matchwait

collecttrash:
 pause 1
 put kick pile
 match collecttrash You take a step back and
 match collectEXP1 I could not find what
 matchwait

collectEXP1:
  put exp perc
  match collectEND mind lock
  match collectmain Time Development Points
  matchwait

collectEND:
goto perceivestart

perceivestart:

put perc mana
pause 30
save xibar

perceiveexp:
	match perceiveexp ...wait
	match perceivedone mind lock
	match %s EXP HELP
        put skill attun
	matchwait

xibar:
save yavash
	match xibar ...wait
	match perceiveexp Roundtime
put perceive xibar
	matchwait

yavash:
save katamba
	match yavash ...wait
	match perceiveexp Roundtime
put perceive yavash
	matchwait

katamba:
save perception
	match katamba ...wait
	match perceiveexp Roundtime
put perceive katamba
	matchwait

perception:
save transduction
	match perception ...wait
	match perceiveexp Roundtime
put perceive perception
	matchwait

transduction:
save psychic
	match transduction ...wait
	match perceiveexp Roundtime
put perceive transduction
	matchwait

psychic:
save moonlight
	match psychic ...wait
	match perceiveexp Roundtime
put perceive psychic
	matchwait

moonlight:
save xibar
	match moonlight ...wait
	match perceiveexp Roundtime
put perceive moonlight
pause 10
	matchwait


increment:
goto expcheck

perceivedone:
if %HAVECOMP = (no, No) then goto arcanastart
counter set 0
compstart:
put get my comp
waitfor You
put open my comp
put study my comp
pause
goto study_check

study_check:
goto %c
0:
1:
2:
3:
4:
5:
6:
7:
8:
9:
match study_done mind lock
match study_good mind: fluid
match study_pause mind: murky
match study_pause mind: thick
match study_good mind: clear
put skill scholar
matchwait

study_pause:
pause 20
goto study_check

study_good:
match study_clear Why do you
match study_check studying the
match study_check study the
match study_clear sudden moment
match study_good ...wait
put study my comp
matchwait

study_clear:
counter add 1
put turn my comp
match study_check You turn to
match study_turn ...wait
matchwait

study_turn:
put turn my comp
match study_check You turn to
match study_turn ...wait
matchwait

10:
study_done:
put stow my comp
goto arcanastart

arcanastart:
var saved arcanastart
 match CONT1 You raise your hands skyward
 match pause1 You feel intense strain
 put prep shadows 10
 matchwait
 
CONT1:
 pause 1
 put rem my %MMCAM1
 pause 1
 get my %MMCAM1
 pause 1
 put charge my %MMCAM1 %MMCAMCHARGE1
 pause 5
 goto Invoke1

Invoke1:
 pause 1
 put invoke my %MMCAM1
 pause 3
 put wear my %MMCAM1
 pause 1
 goto Cam2

Cam2:
if %MMCAM2 = (None, none) then goto NO2CAM
 put rem my %MMCAM2
 pause 1
 put get my %MMCAM2
 pause 1
 put charge my %MMCAM2 %MMCAMCHARGE2
 pause 5
 goto invoke2

Invoke2:
 put invoke my %MMCAM2
 pause 3
 put wear my %MMCAM2
 pause 1
 goto arcanacast

NO2CAM:
 pause 9
 goto arcanacast

arcanacast:
 put stow left
 pause 1
 put stow right
 pause 1
 match arcanaexp There is a subtle change in the lighting around you
 match arcanaexp You notice the shadows about you briefly lightening
 match arcanastart backfire
 put cast
 matchwait

arcanaexp:
 match arcanastart Favors
 match arcanadone mind lock
 put exp arcana
 matchwait

arcanawait:
echo ****Waiting****
 match arcanastart You feel fully attuned
 matchwait

arcanadone:
 put release
 pause 1
 put get sano cryst
 put gaze crystal
 waitfor bit mentally tired
 goto AppraiseStart

AppraiseStart:
  put appr my %MMAPP1
  wait rt
  pause 2
  goto Appraisemain

Appraisemain:
  put appr my %MMAPP2
  wait rt
  pause 2
  goto AS1

AS1:
  put appr my %MMAPP3
  wait rt
  pause 2
  goto AS2

AS2:
  put appr my %MMAPP4
  wait rt
  pause 2
  goto AppraiseEXP

AppraiseEXP:
  put exp appr
  match AppraiseEND mind lock
  match Appraisemain Time Development Points
  matchwait

AppraiseEND:
  goto ENDMM

astrobegin:
 pause
 goto sky

sky:
matchre Viper /(A|The|Over|All|Fully|Most|Nearly).*Viper|Viper.*clouds|Clouds.*Viper/
matchre King.Snake /(A|The|Over|All|Fully|Most|Nearly).*King.Snake|King.Snake.*clouds|Clouds.*King.Snake/
matchre Centaur /(A|The|Over|All|Fully|Most|Nearly).*Centaur|Centaur.*clouds|Clouds.*Centaur/
matchre Shardstar /(A|The|Over|All|Fully|Most|Nearly).*Shardstar|Shardstar.*clouds|Clouds.*Shardstar/
matchre Wren /(A|The|Over|All|Fully|Most|Nearly).*Wren|Wren.*clouds|Clouds.*Wren/
matchre Scorpion /(A|The|Over|All|Fully|Most|Nearly).*Scorpion|Scorpion.*clouds|Clouds.*Scorpion/
matchre Weasel /(A|The|Over|All|Fully|Most|Nearly).*Weasel|Weasel.*clouds|Clouds.*Weasel/
matchre Nightingale /(A|The|Over|All|Fully|Most|Nearly).*Nightingale|Nightingale.*clouds|Clouds.*Nightingale/
matchre Ram /(A|The|Over|All|Fully|Most|Nearly).*Ram|Ram.*clouds|Clouds.*Ram/
matchre sun /(A|The|Over|All|Fully|Most|Nearly).*sun.*clouds|Clouds.*sun/
match braid1 Roundtime
put observe sky
matchwait

Nightingale:
setvariable star Nightingale
goto astrostart1

Scorpion:
setvariable star Scorpion
goto astrostart1

Wren:
setvariable star Wren
goto astrostart1

Viper:
setvariable star Viper
goto astrostart1

Ram:
setvariable star Ram
goto astrostart1

Centaur:
setvariable star Centaur
goto astrostart1

Shardstar:
setvariable star Shardstar
goto astrostart1

Weasel:
setvariable star Weasel
goto astrostart1

King.Snake:
setvariable star King.Snake
goto astrostart1

sun:
setvariable star elanth sun
goto astrostart1

start:
wait rt
goto astrostart1

astrostart1:
 var saved astrostart1
 put prep cv %MMPREP
 match pause1 You feel intense strain
 matchre astrocast1 /You feel fully prepared|You have already fully prepared/
 match astrostart1 Your concentration slips for a moment
 matchwait

astrocast1:
 put cast
 pause 1
 goto astroprep2

astroprep2:
var saved astroprep2
 put prep pg %MMPREP
 match pause1 You feel intense strain
 matchre astrocast2 /You feel fully prepared|You have already fully prepared/
 match astroprep2 Your concentration slips
 matchwait

astrocast2:
 put cast
 pause 1
 goto astroprep3

astroprep3:
var saved astroprep3
 put prep AUS %MMPREP
 match pause1 You feel intense strain
 matchre astrocast3 /You feel fully prepared|You have already fully prepared/
 match astroprep3 ^Your concentration slips
 matchwait

astrocast3:
 pause 1
 put cast
 goto Telescope

Telescope:
if %MMTELESCOPE = (No, no) then goto NO.TELE.AC
 Put open my case
 pause 2
 Put get my tele
 pause 2
 Put open my tele
 pause 2
 put center my tele on %star
 pause 2
 goto astrocheck

NO.TELE.AC:
 matchre astrobegin /foiled.*(darkness|daylight)|turns up fruitless|You peer aimlessly through your telescope|The shifting clouds have ruined/
 matchre NO.TELE.AC /You see nothing regarding the future|...wait/
 match future You have not pondered your last observation sufficiently
 matchre predictstate /grasp more of its pattern|you still learned more|learned something useful|Too many futures cloud your mind/
 match future Roundtime
 put obs %star
 matchwait


astrocheck:
 matchre astrobegin /foiled.*(darkness|daylight)|turns up fruitless|You peer aimlessly through your telescope|The shifting clouds have ruined/
 matchre astrocheck /You see nothing regarding the future|...wait/
 matchre astrocheck / You feel you have sufficiently pondered your latest observation|...wait/
 match future You have not pondered your last observation sufficiently
 matchre predictstate /grasp more of its pattern|you still learned more|learned something useful|Too many futures cloud your mind/
 match future Roundtime
 put peer my tele
 matchwait

Attunement1:
 goto xibar1
 
xibar1:
 put perceive xibar
 wait rt
 pause 2
 goto yavash1

yavash1:
 put perceive yavash
 wait rt
 pause 2
 put perceive clairvoyance
 wait rt
 pause 2 
 goto katamba1	

katamba1:
 put perceive katamba
 wait rt
 pause 2
 put perceive planet
 wait rt
 pause 2 
 goto perception1	


perception1:
 put perceive perception
 wait rt
 pause 2
put perceive mana
 wait rt
 pause 2 
 goto astrobegin	


Predictstate:
 matchre Amagic /You have a (insightful|potent|complete) understanding.*magic/
 matchre Alore /You have a (insightful|potent|complete) understanding.*lore/
 matchre Aoc /You have a (insightful|potent|complete) understanding.*offensive combat/
 matchre Adc /You have a (insightful|potent|complete) understanding.*defensive combat/
 matchre Asurv /You have a (insightful|potent|complete) understanding.*survival/
 matchre Afu /You have a (insightful|potent|complete) understanding.*future events/
 match future Roundtime
put predict state all
 matchwait

Afu:
 pause 5
 put predict event
 pause 15
 put predict anal
 goto future

Asurv:
 put align survival
 goto predict1

Adc:
 put align defens
 goto predict1

Aoc:
 put align offens
 goto predict1

Alore:
 put align lore
 goto predict1

Amagic:
 put align magic
 goto predict1

Predict1:
 pause 3
 put predict future
 pause 20
 put predict analyze
 pause 20
 goto Future


Future:
if $Astrology.LearningRate > 30 then goto astrodone
 Put study sky
 wait rt
 goto Attunement1

astroEXP:
 put exp astrology
 match astrodone mind lock
 match astrostart1 Favors
 matchwait

astrodone:
 pause 3
 put push my tele
 pause 2
 put put my tele in case
 pause 2
 put close my case
goto CONTAINER_CHECK

ENDMM:

exit