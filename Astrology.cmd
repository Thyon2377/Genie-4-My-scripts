### astrology.cmd Script Created by Zulkirs - Requires Genie 3 Client ###
### Version 0.2. Mostly important to make sure you have the latest version ###

### This will check the sky for constellations available and then choose the best one with the highest pools and other pools
### For instance, if there is a pool for 2 magic and 1 lore, it will choose that over only 2 magic
### This script will HIDE when you are checking for distant constellation that requires a telescope to prevent SPAM.

### Requires telescope in a worn telescope case. Will update with variables when I'm not lazy.

if_1 goto subs
echo ###########################################################################################
echo ###             Syntax is ".astrology (offense/defense/survival/magic/lore"             ###
echo ### If you use the ".astrology all" it will start filling all to insight/power/complete ###
echo ###    This also uses Triggers to track your observation and puts it on statusbar 7     ###
echo ###                  Use ".astrology trigger" to setup the triggers                     ### 
echo ###########################################################################################
exit

trigger:
put #trigger {^You feel you have sufficiently pondered your latest observation.} {#var observation ready;#statusbar 7 Observation: $observation} {moonmage}
put #trigger {^You learned something useful from your observation.} {#var observation wait;#statusbar 7 Observation: $observation} {moonmage}

echo ### Triggers were setup ###
echo ###    Rerun script     ###
exit

subs:
###subsections so I can test things more easily
	gosub setup
	gosub observe
	gosub %1


#this is the observe section. Will turn on the constellation variables to be edit/changed, observe the sky for the word of the constellation, then set the variable
#will also turn off the variables after observing so it won't mess up the variables
observe:
### OBSERVE SECTION ###
{
	{
	put obs sky
	action (constellation) on
	
	#since the moons will show when it's below, I have to switch the variable. Other comment are ones need a telescope
	action (constellation) var constellationYavash down when Yavash is below the horizon.
	action (constellation) var constellationXibar down when Xibar is below the horizon.
	action (constellation) var constellationKatamba down when Katamba is below the horizon.	
	action (constellation) var constellationHeart up when Heart
	action (constellation) var constellationSun up when Sun
	### See previous comment why this is out
	#action (constellation) var constellationYavash up when Yavash
	#action (constellation) var constellationXibar up when Xibar
	#action (constellation) var constellationKatamba up when Katamba
	action (constellation) var constellationWolf up when Wolf
	action (constellation) var constellationLion up when Lion
	action (constellation) var constellationRaven up when Raven
	action (constellation) var constellationUnicorn up when Unicorn
	action (constellation) var constellationBoar up when Boar
	action (constellation) var constellationPanther up when Panther
	action (constellation) var constellationCobra up when Cobra
	action (constellation) var constellationOx up when Ox
	#action (constellation) var constellationScorpion up when Scorpion
	#action (constellation) var constellationWren up when Wren
	action (constellation) var constellationCat up when Cat
	action (constellation) var constellationRam up when Ram
	action (constellation) var constellationDolphin up when Dolphin
	#action (constellation) var constellationShardstar up when Shardstar
	action (constellation) var constellationNightingale up when Nightingale
	action (constellation) var constellationWolverine up when Wolverine
	#action (constellation) var constellationCentaur up when Centaur
	action (constellation) var constellationMagpie up when Magpie
	action (constellation) var constellationWeasel up when Weasel
	#action (constellation) var constellationKingSnake up when King Snake
	#action (constellation) var constellationViper up when Viper
	action (constellation) var constellationAlbatross up when Albatross
	action (constellation) var constellationShark up when Shark
	action (constellation) var constellationDonkey up when Donkey
	action (constellation) var constellationCoyote up when Coyote
	action (constellation) var constellationDove up when Dove
	#action (constellation) var constellationPhoenix up when Phoenix
	action (constellation) var constellationHeron up when Heron
	action (constellation) var constellationMongoose up when Mongoose
	action (constellation) var constellationGoshawk up when Goshawk
	#action (constellation) var constellationOwl up when Owl
	action (constellation) var constellationWelkin up when Welkin
	action (constellation) var constellationRaccoon up when Raccoon
	action (constellation) var constellationCow up when Cow
	#action (constellation) var constellationAdder up when Adder
	#action (constellation) var constellationVulture up when Vulture
	#action (constellation) var constellationShrew up when Shrew
	action (constellation) var constellationShrike up when Shrike
	action (constellation) var constellationJackal up when Jackal
	action (constellation) var constellationSpider up when Spider
	action (constellation) var constellationGiant up when Giant
	action (constellation) var constellationHare up when Hare
	action (constellation) var constellationToad up when Toad
	#action (constellation) var constellationArcher up when Archer
	action (constellation) var constellationBrigantine up when Brigantine
	action (constellation) var constellationScales up when Scales
	action (constellation) var constellationTriquetra up when Triquetra
	action (constellation) var constellationEstrilda up when Estrilda
	action (constellation) var constellationVerena up when Verena
	action (constellation) var constellationDurgaulda up when Durgaulda
	action (constellation) var constellationYoakena up when Yoakena
	action (constellation) var constellationPenhetia up when Penhetia
	action (constellation) var constellationSzeldia up when Szeldia
	#action (constellation) var constellationMerewalda up when Merewalda
	#action (constellation) var constellationIsmenia up when Ismenia
	#action (constellation) var constellationMorleena up when Morleena
	#action (constellation) var constellationAmlothi up when Amlothi
	action (constellation) var constellationDawgolesh up when Dawgolesh
	#action (constellation) var constellationErqutra up when Er'qutra
	#action (constellation) var constellationForge up when enigma of Kertigen's Forge
	#action (constellation) var constellationEye up when enigma of Dergati's Eye
	delay Roundtime
	action (constellation) off
	wait
	pause 1
	}
	####

	
	####
	# This will check for those planets too far to see from a normal observation
		#var telescopeConstellation Ismenia|Er'qutra|Morleena|Amlothi|Merewalda
		var telescopeConstellation Scorpion|Wren|Shardstar|Centaur|King Snake|Viper|Phoenix|Owl|Adder|Vulture|Shrew|Archer|Merewalda|Ismenia|Morleena|Amlothi|Er'qutra|Forge|Eye
		var totalTelescopeConstellation 19
		counter set 0
		#This will prevent spam from chat
		send hide
		wait
		
	loop:
		if (%c = %totalTelescopeConstellation) then return
		gosub telescopeConstellationObserve
		counter add 1
		goto loop

	telescopeConstellationObserve:
		action (constellation) on
		action (constellation) var constellationScorpion up when Scorpion is too faint
		action (constellation) var constellationWren up when Wren is too faint
		action (constellation) var constellationShardstar up when Shardstar is too faint
		action (constellation) var constellationCentaur up when Centaur is too faint
		action (constellation) var constellationKing Snake up when King Snake is too faint
		action (constellation) var constellationViper up when Viper is too faint
		action (constellation) var constellationPhoenix up when Phoenix is too faint
		action (constellation) var constellationOwl up when Owl is too faint
		action (constellation) var constellationAdder up when Adder is too faint
		action (constellation) var constellationVulture up when Vulture is too faint
		action (constellation) var constellationShrew up when Shrew is too faint
		action (constellation) var constellationArcher up when Archer is too faint
		action (constellation) var constellationMerewalda up when Merewalda is too faint
		action (constellation) var constellationIsmenia up when Ismenia is too faint
		action (constellation) var constellationMorleena up when Morleena is too faint
		action (constellation) var constellationAmlothi up when Amlothi is too faint
		action (constellation) var constellationEr'qutra up when Er'qutra is too faint
		action (constellation) var constellationForge up when Forge is too faint
		action (constellation) var constellationEye up when Eye is too faint
		send obs %telescopeConstellation(%c) in sky
		waitforre naked eye|fruitless|foiled by the daylight
		action (constellation) off
	return

}

setup:
### SETUP SECTION ###
{
	ACTION put #var PoolStatus.$1 complete; var MM_TMP $1 when ^You believe you've learned all that you can about (\w+)
	ACTION put #var PoolStatus.$2 $1 when (\S+) understanding of the celestial influences over (\S+)
	if $observation = "wait" then goto waitExit
	else if (!$SpellTimer.PiercingGaze.active) then goto pgCast
	else if ($SpellTimer.PiercingGaze.duration < 3) then goto pgCast
	else goto constVar
pgCast:
put prep pg
pause 1
put cast
goto constVar

constVar:
	### This makes a variable for your circle, so it can make sure to observe the right thing
	action var circle $1;put #var circle $1 when Circle:\s+(\d+)$
	var constellationHeart down
	var constellationSun down
	var constellationYavash up
	var constellationXibar up
	var constellationKatamba up
	var constellationWolf down
	var constellationLion down
	var constellationRaven down
	var constellationUnicorn down
	var constellationBoar down
	var constellationPanther down
	var constellationCobra down
	var constellationOx down
	var constellationScorpion down
	var constellationWren down
	var constellationCat down
	var constellationRam down
	var constellationDolphin down
	var constellationShardstar down
	var constellationNightingale down
	var constellationWolverine down
	var constellationCentaur down
	var constellationMagpie down
	var constellationWeasel down
	var constellationKingSnake down
	var constellationViper down
	var constellationAlbatross down
	var constellationShark down
	var constellationDonkey down
	var constellationCoyote down
	var constellationDove down
	var constellationPhoenix down
	var constellationHeron down
	var constellationMongoose down
	var constellationGoshawk down
	var constellationOwl down
	var constellationWelkin down
	var constellationRaccoon down
	var constellationCow down
	var constellationAdder down
	var constellationVulture down
	var constellationShrew down
	var constellationShrike down
	var constellationJackal down
	var constellationSpider down
	var constellationGiant down
	var constellationHare down
	var constellationToad down
	var constellationArcher down
	var constellationBrigantine down
	var constellationScales down
	var constellationTriquetra down
	var constellationEstrilda down
	var constellationVerena down
	var constellationDurgaulda down
	var constellationYoakena down
	var constellationPenhetia down
	var constellationSzeldia down
	var constellationMerewalda down
	var constellationIsmenia down
	var constellationMorleena down
	var constellationAmlothi down
	var constellationDawgolesh down
	var constellationErqutra down
	var constellationForge down
	var constellationEye down
	
### this section is literally just copy/paste with regex search to add variables so I don't have to write it by hand in each section
	 var circleHeart 1 
	 var circleSun 1 
	 var circleYavash 1 
	 var circleXibar 1 
	 var circleKatamba 1 
	 var circleWolf 2 
	 var circleLion 3 
	 var circleRaven 4 
	 var circleUnicorn 5 
	 var circleBoar 6 
	 var circlePanther 7 
	 var circleCobra 8 
	 var circleOx 9 
	 var circleScorpion 10 
	 var circleWren 11 
	 var circleCat 12 
	 var circleRam 13 
	 var circleDolphin 14 
	 var circleShardstar 15 
	 var circleNightingale 15 
	 var circleWolverine 16 
	 var circleCentaur 17 
	 var circleMagpie 18 
	 var circleWeasel 19 
	 var circleKingSnake 20 
	 var circleViper 21 
	 var circleAlbatross 22 
	 var circleShark 23 
	 var circleDonkey 24 
	 var circleCoyote 25 
	 var circleDove 26 
	 var circlePhoenix 27 
	 var circleHeron 28 
	 var circleMongoose 29 
	 var circleGoshawk 30 
	 var circleOwl 31 
	 var circleWelkin 32 
	 var circleRaccoon 33 
	 var circleCow 34 
	 var circleAdder 35 
	 var circleVulture 36 
	 var circleShrew 37 
	 var circleShrike 38 
	 var circleJackal 39 
	 var circleSpider 40 
	 var circleGiant 41 
	 var circleHare 42 
	 var circleToad 44 
	 var circleArcher 45 
	 var circleBrigantine 47 
	 var circleScales 48 
	 var circleTriquetra 50 
	 var circleEstrilda 46 
	 var circleVerena 43 
	 var circleDurgaulda 49 
	 var circleYoakena 52 
	 var circlePenhetia 55 
	 var circleSzeldia 60 
	 var circleMerewalda 65 
	 var circleIsmenia 70 
	 var circleMorleena 75 
	 var circleAmlothi 80 
	 var circleDawgolesh 85 
	 var circleErqutra 90 
	 var circleForge 100 
	 var circleEye 125 
	
	
	send info
	waitforre ^Debt:$	
	
##This will check your hands for anything
	if !$righthand = "Empty" then goto stowHand
	else if !$lefthand = "Empty" then goto stowHand
	else 
return
	
	stowHand:
	put stow $lefthand
	pause .5
	put stow $righthand
	pause .5
goto handCheckTwo

handCheckTwo:
	if !$righthand = "Empty" then goto handFull
	else if !$lefthand = "Empty" then goto handFull
	else
return
	
	handFull:
	echo ### EMPTY YOUR HANDS! ###
	PAUSE 2
exit
	
	swapHands:
	put swap
return
}


all:
### FILLS PREDICTION AND MOVES TO NEXT ###
	if (!$PoolStatus.magic = "complete") then
	{
	echo Going to Magic
	goto magic
	}
	if (!$PoolStatus.lore = "complete") then
	{
	echo Going to Lore
	goto lore
	}
	if (!$PoolStatus.offense = "complete") then
	{
	echo Going to Offense
	goto offense
	}
	if (!$PoolStatus.defense = "complete") then
	{
	echo Going to Defense
	goto defense
	}
	if (!$PoolStatus.survival = "complete") then
	{
	echo Going to Survive
	goto survival
	}
else goto predictFull

predictFull:

echo ### All your prediction pools insightful or better!###
exit

offense:
offens:
offen:
offe:
off:
### OFFENSE SECTION ###
{
	## this echo's which ones are up, testing
	#echo Constellation Szeldia is %constellationErqutra
	#echo Constellation Szeldia is %constellationSzeldia
	#echo Constellation Estrilda is %constellationEstrilda
	#echo Constellation enigma of Kertigen's Forge is %constellationForge
	#echo Constellation Adder is %constellationAdder
	#echo Constellation Archer is %constellationArcher
	#echo Constellation Centaur is %constellationCentaur
	#echo Constellation Scorpion is %constellationScorpion
	#echo Constellation Spider is %constellationSpider
	#echo Constellation Viper is %constellationViper
	#echo Constellation enigma of Dergati's Eye is %constellationEye
	#echo Constellation Merewalda is %constellationMerewalda
	#echo Constellation Shrew is %constellationShrew
	#echo Constellation Owl is %constellationOwl
	#echo Constellation Scales is %constellationScales
	#echo Constellation Weasel is %constellationWeasel
	#echo Constellation Coyote is %constellationCoyote
	#echo Constellation Triquetra is %constellationTriquetra
	#echo Constellation Mongoose is %constellationMongoose
	#echo Constellation Shark is %constellationShark
	#echo Constellation Wolverine is %constellationWolverine
	#echo Constellation Panther is %constellationPanther
	#echo Constellation Boar is %constellationBoar
	#echo Constellation Cat is %constellationCat


### checks highest offense then next highest skill
if %constellationErqutra = "up" && $circle >= %circleErqutra then
	{
	var observeObject Er'qutra
		var observePool (Offense 3) (Survival 2)
	goto peer
	} else

if %constellationSzeldia = "up" && $circle >= %circleSzeldia then
	{
	var observeObject Szeldia
		var observePool (Offense 3) (Survival 1)
	goto peer
	} else

if %constellationEstrilda = "up" && $circle >= %circleEstrilda then
	{
	var observeObject Estrilda
		var observePool (Offense 3)
	goto peer
	} else

if %constellationForge = "up" && $circle >= %circleForge then
	{
	var observeObject enigma of Kertigen's Forge
		var observePool (Offense 2) (Defense 1) (Lore 3)
	goto peer
	} else

if %constellationAdder = "up" && $circle >= %circleAdder then
	{
	var observeObject Adder
		var observePool (Offense 2) (Magic 2)
	goto peer
	} else

if %constellationArcher = "up" && $circle >= %circleArcher then
	{
	var observeObject Archer
		var observePool (Offense 2) (Survival 2)
	goto peer
	} else

if %constellationCentaur = "up" && $circle >= %circleCentaur then
	{
	var observeObject Centaur
		var observePool (Offense 2) (Defense 1)
	goto peer
	} else

if %constellationScorpion = "up" && $circle >= %circleScorpion then
	{
	var observeObject Scorpion
		var observePool (Offense 2) (Defense 1)
	goto peer
	} else

if %constellationSpider = "up" && $circle >= %circleSpider then
	{
	var observeObject Spider
		var observePool (Offense 2)
	goto peer
	} else

if %constellationViper = "up" && $circle >= %circleViper then
	{
	var observeObject Viper
		var observePool (Offense 2)
	goto peer
	} else

if %constellationEye = "up" && $circle >= %circleEye then
	{
	var observeObject enigma of Dergati's Eye
		var observePool Ofense 1 (Defense 1) (Survival 1) (Magic 2) (Lore 1)
	goto peer
	} else

if %constellationMerewalda = "up" && $circle >= %circleMerewalda then
	{
	var observeObject Merewalda
		var observePool (Offense 1) (Defense 3)
	goto peer
	} else

if %constellationShrew = "up" && $circle >= %circleShrew then
	{
	var observeObject Shrew
		var observePool (Offense 1) (Magic 2)
	goto peer
	} else

if %constellationOwl = "up" && $circle >= %circleOwl then
	{
	var observeObject Owl
		var observePool (Offense 1) (Magic 2)
	goto peer
	} else

if %constellationScales = "up" && $circle >= %circleScales then
	{
	var observeObject Scales
		var observePool (Offense 1) (Lore 2)
	goto peer
	} else

if %constellationWeasel = "up" && $circle >= %circleWeasel then
	{
	var observeObject Weasel
		var observePool (Offense 1) (Lore 2)
	goto peer
	} else

if %constellationCoyote = "up" && $circle >= %circleCoyote then
	{
	var observeObject Coyote
		var observePool (Offense 1) (Magic 1)
	goto peer
	} else

if %constellationTriquetra = "up" && $circle >= %circleTriquetra then
	{
	var observeObject Triquetra
		var observePool (Offense 1) (Survival 1)
	goto peer
	} else

if %constellationMongoose = "up" && $circle >= %circleMongoose then
	{
	var observeObject Mongoose
		var observePool (Offense 1) (Defense 1)
	goto peer
	} else

if %constellationShark = "up" && $circle >= %circleShark then
	{
	var observeObject Shark
		var observePool (Offense 1) (Survival 1)
	goto peer
	} else

if %constellationWolverine = "up" && $circle >= %circleWolverine then
	{
	var observeObject Wolverine
		var observePool (Offense 1) (Survival 1)
	goto peer
	} else

if %constellationPanther = "up" && $circle >= %circlePanther then
	{
	var observeObject Panther
		var observePool (Offense 1) (Survival 1)
	goto peer
	} else

if %constellationBoar = "up" && $circle >= %circleBoar then
	{
	var observeObject Boar
		var observePool (Offense 1) (Survival 1)
	goto peer
	} else

if %constellationCat = "up" && $circle >= %circleCat then
	{
	var observeObject Cat
		var observePool (Offense 1)
	goto peer
	} else


	
	echo ** NO OFFENSE CONSTELLATIONS CURRENT UP, OR YOU ARE TOO LOW LEVEL! **
	exit
}

defense:
defens:
defen:
defe:
def:
### DEFENSE SECTION ###
{
	#echo Constellation Dawgolesh is %constellationDawgolesh
	#echo Constellation Merewalda is %constellationMerewalda
	#echo Constellation Penhetia is %constellationPenhetia
	#echo Constellation Vulture is %constellationVulture
	#echo Constellation Jackal is %constellationJackal
	#echo Constellation Giant is %constellationGiant
	#echo Constellation enigma of Kertigen's Forge is %constellationForge
	#echo Constellation enigma of Dergati's Eye is %constellationEye
	#echo Constellation Morleena is %constellationMorleena
	#echo Constellation Centaur is %constellationCentaur
	#echo Constellation Scorpion is %constellationScorpion
	#echo Constellation Nightingale is %constellationNightingale
	#echo Constellation Hare is %constellationHare
	#echo Constellation King Snake is %constellationKingSnake
	#echo Constellation Shardstar is %constellationShardstar
	#echo Constellation Mongoose is %constellationMongoose
	#echo Constellation Dove is %constellationDove
	#echo Constellation Raccoon is %constellationRaccoon
	#echo Constellation Welkin is %constellationWelkin
	#echo Constellation Goshawk is %constellationGoshawk
	#echo Constellation Albatross is %constellationAlbatross
	#echo Constellation Lion is %constellationLion
	#echo Constellation Magpie is %constellationMagpie
	#echo Constellation Katamba is %constellationKatamba

if %constellationDawgolesh = "up" && $circle >= %circleDawgolesh then
	{
	var observeObject Dawgolesh
		var observePool (Defense 3) (Magic 2)
	goto peer
	} else

if %constellationMerewalda = "up" && $circle >= %circleMerewalda then
	{
	var observeObject Merewalda
		var observePool (Offense 1) (Defense 3)
	goto peer
	} else

if %constellationPenhetia = "up" && $circle >= %circlePenhetia then
	{
	var observeObject Penhetia
		var observePool (Defense 3)
	goto peer
	} else

if %constellationVulture = "up" && $circle >= %circleVulture then
	{
	var observeObject Vulture
		var observePool (Defense 2) (Survival 2)
	goto peer
	} else

if %constellationJackal = "up" && $circle >= %circleJackal then
	{
	var observeObject Jackal
		var observePool (Defense 2) (Magic 1)
	goto peer
	} else

if %constellationGiant = "up" && $circle >= %circleGiant then
	{
	var observeObject Giant
		var observePool (Defense 2)
	goto peer
	} else

if %constellationForge = "up" && $circle >= %circleForge then
	{
	var observeObject enigma of Kertigen's Forge
		var observePool (Offense 2) (Defense 1) (Lore 3)
	goto peer
	} else

if %constellationEye = "up" && $circle >= %circleEye then
	{
	var observeObject enigma of Dergati's Eye
		var observePool Ofense 1 (Defense 1) (Survival 1) (Magic 2) (Lore 1)
	goto peer
	} else

if %constellationMorleena = "up" && $circle >= %circleMorleena then
	{
	var observeObject Morleena
		var observePool (Defense 1) (Survival 3)
	goto peer
	} else

if %constellationCentaur = "up" && $circle >= %circleCentaur then
	{
	var observeObject Centaur
		var observePool (Offense 2) (Defense 1)
	goto peer
	} else

if %constellationScorpion = "up" && $circle >= %circleScorpion then
	{
	var observeObject Scorpion
		var observePool (Offense 2) (Defense 1)
	goto peer
	} else

if %constellationNightingale = "up" && $circle >= %circleNightingale then
	{
	var observeObject Nightingale
		var observePool (Defense 1) (Magic 2)
	goto peer
	} else

if %constellationHare = "up" && $circle >= %circleHare then
	{
	var observeObject Hare
		var observePool (Defense 1) (Lore 2)
	goto peer
	} else

if %constellationKingSnake = "up" && $circle >= %circleKingSnake then
	{
	var observeObject King Snake
		var observePool (Defense 1) (Lore 2)
	goto peer
	} else

if %constellationShardstar = "up" && $circle >= %circleShardstar then
	{
	var observeObject Shardstar
		var observePool (Defense 1) (Lore 2)
	goto peer
	} else

if %constellationMongoose = "up" && $circle >= %circleMongoose then
	{
	var observeObject Mongoose
		var observePool (Offense 1) (Defense 1)
	goto peer
	} else

if %constellationDove = "up" && $circle >= %circleDove then
	{
	var observeObject Dove
		var observePool (Defense 1) (Magic 1)
	goto peer
	} else

if %constellationRaccoon = "up" && $circle >= %circleRaccoon then
	{
	var observeObject Raccoon
		var observePool (Defense 1) (Survival 1)
	goto peer
	} else

if %constellationWelkin = "up" && $circle >= %circleWelkin then
	{
	var observeObject Welkin
		var observePool (Defense 1) (Lore 1)
	goto peer
	} else

if %constellationGoshawk = "up" && $circle >= %circleGoshawk then
	{
	var observeObject Goshawk
		var observePool (Defense 1) (Survival 1)
	goto peer
	} else

if %constellationAlbatross = "up" && $circle >= %circleAlbatross then
	{
	var observeObject Albatross
		var observePool (Defense 1) (Lore 1)
	goto peer
	} else

if %constellationLion = "up" && $circle >= %circleLion then
	{
	var observeObject Lion
		var observePool (Defense 1) (Survival 1)
	goto peer
	} else

if %constellationMagpie = "up" && $circle >= %circleMagpie then
	{
	var observeObject Magpie
		var observePool (Defense 1)
	goto peer
	} else

if %constellationKatamba = "up" && $circle >= %circleKatamba then
	{
	var observeObject Katamba
		var observePool (Defense 1)
	goto peer
	} else

	echo ** NO DEFENSE CONSTELLATIONS CURRENT UP, OR YOU ARE TOO LOW LEVEL! **
	exit
}
	
survival:
surviva:
surviv:
survi:
surv:
sur:
### SURVIVAL SECTION ###
{
	#echo Constellation Morleena is %constellationMorleena
	#echo Constellation Yoakena is %constellationYoakena
	#echo Constellation Er'qutra is %constellationErqutra
	#echo Constellation Archer is %constellationArcher
	#echo Constellation Vulture is %constellationVulture
	#echo Constellation Heron is %constellationHeron
	#echo Constellation Cow is %constellationCow
	#echo Constellation Shrike is %constellationShrike
	#echo Constellation Ram is %constellationRam
	#echo Constellation enigma of Dergati's Eye is %constellationEye
	#echo Constellation Szeldia is %constellationSzeldia
	#echo Constellation Brigantine is %constellationBrigantine
	#echo Constellation Dolphin is %constellationDolphin
	#echo Constellation Ox is %constellationOx
	#echo Constellation Boar is %constellationBoar
	#echo Constellation Panther is %constellationPanther
	#echo Constellation Wolverine is %constellationWolverine
	#echo Constellation Shark is %constellationShark
	#echo Constellation Triquetra is %constellationTriquetra
	#echo Constellation Lion is %constellationLion
	#echo Constellation Goshawk is %constellationGoshawk
	#echo Constellation Raccoon is %constellationRaccoon
	#echo Constellation Heart is %constellationHeart
	#echo Constellation Sun is %constellationSun
	#echo Constellation Unicorn is %constellationUnicorn

	if %constellationMorleena = "up" && $circle >= %circleMorleena then
		{
		var observeObject Morleena
		var observePool (Defense 1) (Survival 3)
		goto peer
		} else

	if %constellationYoakena = "up" && $circle >= %circleYoakena then
		{
		var observeObject Yoakena
		var observePool (Survival 3)
		goto peer
		} else

	if %constellationErqutra = "up" && $circle >= %circleErqutra then
		{
		var observeObject Er'qutra
		var observePool (Offense 3) (Survival 2)
		goto peer
		} else

	if %constellationArcher = "up" && $circle >= %circleArcher then
		{
		var observeObject Archer
		var observePool (Offense 2) (Survival 2)
		goto peer
		} else

	if %constellationVulture = "up" && $circle >= %circleVulture then
		{
		var observeObject Vulture
		var observePool (Defense 2) (Survival 2)
		goto peer
		} else

	if %constellationHeron = "up" && $circle >= %circleHeron then
		{
		var observeObject Heron
		var observePool (Survival 2) (Lore 1)
		goto peer
		} else

	if %constellationCow = "up" && $circle >= %circleCow then
		{
		var observeObject Cow
		var observePool (Survival 2) (Magic 1)
		goto peer
		} else

	if %constellationShrike = "up" && $circle >= %circleShrike then
		{
		var observeObject Shrike
		var observePool (Survival 2) (Magic 1)
		goto peer
		} else

	if %constellationRam = "up" && $circle >= %circleRam then
		{
		var observeObject Ram
		var observePool (Survival 2)
		goto peer
		} else

	if %constellationEye = "up" && $circle >= %circleEye then
		{
		var observeObject enigma of Dergati's Eye
		var observePool Ofense 1 (Defense 1) (Survival 1) (Magic 2) (Lore 1)
		goto peer
		} else

	if %constellationSzeldia = "up" && $circle >= %circleSzeldia then
		{
		var observeObject Szeldia
		var observePool (Offense 3) (Survival 1)
		goto peer
		} else

	if %constellationBrigantine = "up" && $circle >= %circleBrigantine then
		{
		var observeObject Brigantine
		var observePool (Survival 1) (Lore 2)
		goto peer
		} else

	if %constellationDolphin = "up" && $circle >= %circleDolphin then
		{
		var observeObject Dolphin
		var observePool (Survival 1) (Lore 1)
		goto peer
		} else

	if %constellationOx = "up" && $circle >= %circleOx then
		{
		var observeObject Ox
		var observePool (Survival 1) (Magic 1)
		var observePool (Survival 1) (Magic 1)
		goto peer
		} else

	if %constellationBoar = "up" && $circle >= %circleBoar then
		{
		var observeObject Boar
		var observePool (Offense 1) (Survival 1)
		goto peer
		} else

	if %constellationPanther = "up" && $circle >= %circlePanther then
		{
		var observeObject Panther
		var observePool (Offense 1) (Survival 1)
		goto peer
		} else

	if %constellationWolverine = "up" && $circle >= %circleWolverine then
		{
		var observeObject Wolverine
		var observePool (Offense 1) (Survival 1)
		goto peer
		} else

	if %constellationShark = "up" && $circle >= %circleShark then
		{
		var observeObject Shark
		var observePool (Offense 1) (Survival 1)
		goto peer
		} else

	if %constellationTriquetra = "up" && $circle >= %circleTriquetra then
		{
		var observeObject Triquetra
		var observePool (Offense 1) (Survival 1)
		goto peer
		} else

	if %constellationLion = "up" && $circle >= %circleLion then
		{
		var observeObject Lion
		var observePool (Defense 1) (Survival 1)
		goto peer
		} else

	if %constellationGoshawk = "up" && $circle >= %circleGoshawk then
		{
		var observeObject Goshawk
		var observePool (Defense 1) (Survival 1)
		goto peer
		} else

	if %constellationRaccoon = "up" && $circle >= %circleRaccoon then
		{
		var observeObject Raccoon
		var observePool (Defense 1) (Survival 1)
		goto peer
		} else

	if %constellationHeart = "up" && $circle >= %circleHeart then
		{
		var observeObject Heart
		var observePool (Survival 1)
		goto peer
		} else

	if %constellationSun = "up" && $circle >= %circleSun then
		{
		var observeObject Sun
		var observePool (Survival 1)
		goto peer
		} else

	if %constellationUnicorn = "up" && $circle >= %circleUnicorn then
		{
		var observeObject Unicorn
		var observePool (Survival 1)
		goto peer
		} else

		echo ** NO SURVIVAL CONSTELLATIONS CURRENT UP, OR YOU ARE TOO LOW LEVEL! **
	exit
}

magic:
magi:
mag:
### MAGIC SECTION ###
{
	#echo Constellation Ismenia is %constellationIsmenia
	#echo Constellation Durgaulda is %constellationDurgaulda
	#echo Constellation enigma of Dergati's Eye is %constellationEye
	#echo Constellation Dawgolesh is %constellationDawgolesh
	#echo Constellation Adder is %constellationAdder
	#echo Constellation Shrew is %constellationShrew
	#echo Constellation Owl is %constellationOwl
	#echo Constellation Nightingale is %constellationNightingale
	#echo Constellation Wren is %constellationWren
	#echo Constellation Toad is %constellationToad
	#echo Constellation Amlothi is %constellationAmlothi
	#echo Constellation Jackal is %constellationJackal
	#echo Constellation Shrike is %constellationShrike
	#echo Constellation Cow is %constellationCow
	#echo Constellation Phoenix is %constellationPhoenix
	#echo Constellation Dove is %constellationDove
	#echo Constellation Coyote is %constellationCoyote
	#echo Constellation Donkey is %constellationDonkey
	#echo Constellation Ox is %constellationOx
	#echo Constellation Cobra is %constellationCobra
	#echo Constellation Wolf is %constellationWolf
	#echo Constellation Yavash is %constellationYavash

	if %constellationIsmenia = "up" && $circle >= %circleIsmenia then
		{
		var observeObject Ismenia
		var observePool (Magic 3) (Lore 1)
		goto peer
		} else

	if %constellationDurgaulda = "up" && $circle >= %circleDurgaulda then
		{
		var observeObject Durgaulda
		var observePool (Magic 3)
		goto peer
		} else

	if %constellationEye = "up" && $circle >= %circleEye then
		{
		var observeObject enigma of Dergati's Eye
		var observePool Ofense 1 (Defense 1) (Survival 1) (Magic 2) (Lore 1)
		goto peer
		} else

	if %constellationDawgolesh = "up" && $circle >= %circleDawgolesh then
		{
		var observeObject Dawgolesh
		var observePool (Defense 3) (Magic 2)
		goto peer
		} else

	if %constellationAdder = "up" && $circle >= %circleAdder then
		{
		var observeObject Adder
		var observePool (Offense 2) (Magic 2)
		goto peer
		} else

	if %constellationShrew = "up" && $circle >= %circleShrew then
		{
		var observeObject Shrew
		var observePool (Offense 1) (Magic 2)
		goto peer
		} else

	if %constellationOwl = "up" && $circle >= %circleOwl then
		{
		var observeObject Owl
		var observePool (Offense 1) (Magic 2)
		goto peer
		} else

	if %constellationNightingale = "up" && $circle >= %circleNightingale then
		{
		var observeObject Nightingale
		var observePool (Defense 1) (Magic 2)
		goto peer
		} else

	if %constellationWren = "up" && $circle >= %circleWren then
		{
		var observeObject Wren
		var observePool (Magic 2) (Lore 1)
		goto peer
		} else

	if %constellationToad = "up" && $circle >= %circleToad then
		{
		var observeObject Toad
		var observePool (Magic 2)
		goto peer
		} else

	if %constellationAmlothi = "up" && $circle >= %circleAmlothi then
		{
		var observeObject Amlothi
		var observePool (Magic 1) (Lore 3)
		goto peer
		} else

	if %constellationJackal = "up" && $circle >= %circleJackal then
		{
		var observeObject Jackal
		var observePool (Defense 2) (Magic 1)
		goto peer
		} else

	if %constellationShrike = "up" && $circle >= %circleShrike then
		{
		var observeObject Shrike
		var observePool (Survival 2) (Magic 1)
		goto peer
		} else

	if %constellationCow = "up" && $circle >= %circleCow then
		{
		var observeObject Cow
		var observePool (Survival 2) (Magic 1)
		goto peer
		} else

	if %constellationPhoenix = "up" && $circle >= %circlePhoenix then
		{
		var observeObject Phoenix
		var observePool (Magic 1) (Lore 2)
		goto peer
		} else

	if %constellationDove = "up" && $circle >= %circleDove then
		{
		var observeObject Dove
		var observePool (Defense 1) (Magic 1)
		goto peer
		} else

	if %constellationCoyote = "up" && $circle >= %circleCoyote then
		{
		var observeObject Coyote
		var observePool (Offense 1) (Magic 1)
		goto peer
		} else

	if %constellationDonkey = "up" && $circle >= %circleDonkey then
		{
		var observeObject Donkey
		var observePool (Magic 1) (Lore 1)
		goto peer
		} else

	if %constellationOx = "up" && $circle >= %circleOx then
		{
		var observeObject Ox
		var observePool (Survival 1) (Magic 1)
		var observePool (Survival 1) (Magic 1)
		goto peer
		} else

	if %constellationCobra = "up" && $circle >= %circleCobra then
		{
		var observeObject Cobra
		var observePool (Magic 1) (Lore 1)
		goto peer
		} else

	if %constellationWolf = "up" && $circle >= %circleWolf then
		{
		var observeObject Wolf
		var observePool (Magic 1)
		goto peer
		} else

	if %constellationYavash = "up" && $circle >= %circleYavash then
		{
		var observeObject Yavash
		var observePool (Magic 1)
		goto peer
		} else

	echo ** NO MAGIC CONSTELLATIONS CURRENT UP, OR YOU ARE TOO LOW LEVEL! **
	exit
}
lore:
### LORE SECTION
{
	#echo Constellation enigma of Kertigen's Forge is %constellationForge
	#echo Constellation Amlothi is %constellationAmlothi
	#echo Constellation Verena is %constellationVerena
	#echo Constellation Brigantine is %constellationBrigantine
	#echo Constellation Phoenix is %constellationPhoenix
	#echo Constellation Weasel is %constellationWeasel
	#echo Constellation Scales is %constellationScales
	#echo Constellation Shardstar is %constellationShardstar
	#echo Constellation King Snake is %constellationKingSnake
	#echo Constellation Hare is %constellationHare
	#echo Constellation enigma of Dergati's Eye is %constellationEye
	#echo Constellation Ismenia is %constellationIsmenia
	#echo Constellation Heron is %constellationHeron
	#echo Constellation Wren is %constellationWren
	#echo Constellation Dolphin is %constellationDolphin
	#echo Constellation Cobra is %constellationCobra
	#echo Constellation Donkey is %constellationDonkey
	#echo Constellation Albatross is %constellationAlbatross
	#echo Constellation Welkin is %constellationWelkin
	#echo Constellation Xibar is %constellationXibar
	#echo Constellation Raven is %constellationRaven

	if %constellationForge = "up" && $circle >= %circleForge then
		{
		var observeObject enigma of Kertigen's Forge
		var observePool (Offense 2) (Defense 1) (Lore 3)
		goto peer
		} else

	if %constellationAmlothi = "up" && $circle >= %circleAmlothi then
		{
		var observeObject Amlothi
		var observePool (Magic 1) (Lore 3)
		goto peer
		} else

	if %constellationVerena = "up" && $circle >= %circleVerena then
		{
		var observeObject Verena
		var observePool (Lore 3)
		goto peer
		} else

	if %constellationBrigantine = "up" && $circle >= %circleBrigantine then
		{
		var observeObject Brigantine
		var observePool (Survival 1) (Lore 2)
		goto peer
		} else

	if %constellationPhoenix = "up" && $circle >= %circlePhoenix then
		{
		var observeObject Phoenix
		var observePool (Magic 1) (Lore 2)
		goto peer
		} else

	if %constellationWeasel = "up" && $circle >= %circleWeasel then
		{
		var observeObject Weasel
		var observePool (Offense 1) (Lore 2)
		goto peer
		} else

	if %constellationScales = "up" && $circle >= %circleScales then
		{
		var observeObject Scales
		var observePool (Offense 1) (Lore 2)
		goto peer
		} else

	if %constellationShardstar = "up" && $circle >= %circleShardstar then
		{
		var observeObject Shardstar
		var observePool (Defense 1) (Lore 2)
		goto peer
		} else

	if %constellationKingSnake = "up" && $circle >= %circleKingSnake then
		{
		var observeObject King Snake
		var observePool (Defense 1) (Lore 2)
		goto peer
		} else

	if %constellationHare = "up" && $circle >= %circleHare then
		{
		var observeObject Hare
		var observePool (Defense 1) (Lore 2)
		goto peer
		} else

	if %constellationEye = "up" && $circle >= %circleEye then
		{
		var observeObject enigma of Dergati's Eye
		var observePool Ofense 1 (Defense 1) (Survival 1) (Magic 2) (Lore 1)
		goto peer
		} else

	if %constellationIsmenia = "up" && $circle >= %circleIsmenia then
		{
		var observeObject Ismenia
		var observePool (Magic 3) (Lore 1)
		goto peer
		} else

	if %constellationHeron = "up" && $circle >= %circleHeron then
		{
		var observeObject Heron
		var observePool (Survival 2) (Lore 1)
		goto peer
		} else

	if %constellationWren = "up" && $circle >= %circleWren then
		{
		var observeObject Wren
		var observePool (Magic 2) (Lore 1)
		goto peer
		} else

	if %constellationDolphin = "up" && $circle >= %circleDolphin then
		{
		var observeObject Dolphin
		var observePool (Survival 1) (Lore 1)
		goto peer
		} else

	if %constellationCobra = "up" && $circle >= %circleCobra then
		{
		var observeObject Cobra
		var observePool (Magic 1) (Lore 1)
		goto peer
		} else

	if %constellationDonkey = "up" && $circle >= %circleDonkey then
		{
		var observeObject Donkey
		var observePool (Magic 1) (Lore 1)
		goto peer
		} else

	if %constellationAlbatross = "up" && $circle >= %circleAlbatross then
		{
		var observeObject Albatross
		var observePool (Defense 1) (Lore 1)
		goto peer
		} else

	if %constellationWelkin = "up" && $circle >= %circleWelkin then
		{
		var observeObject Welkin
		var observePool (Defense 1) (Lore 1)
		goto peer
		} else

	if %constellationXibar = "up" && $circle >= %circleXibar then
		{
		var observeObject Xibar
		var observePool (Lore 1)
		goto peer
		} else

	if %constellationRaven = "up" && $circle >= %circleRaven then
		{
		var observeObject Raven
		var observePool (Lore 1)
		goto peer
		} else

	echo ** NO LORE CONSTELLATIONS CURRENT UP, OR YOU ARE TOO LOW LEVEL! **
	exit
		
}

peer:
### PEER SECTION ###
{
	echo ### Constellation observing is %observeObject with pools of %observePool ###
	wait
	pause 1
	put get my tele
	waitforre ^You get|^You are
	put open my tele
	waitforre ^You try|^You extend
	put cent tele on %observeObject
	waitforre ^You put
peerLoop:
	put peer tele
		matchre peerLoop ^You see nothing regarding the future|You learn nothing of the future
		matchre end ^You learned something useful from your observation|Although you were nearly overwhelmed
		matchre peerWait ^You are unable to make use of this latest observation
		matchre peerFailed ^Roundtime:
	matchwait

peerFailed:
	echo ### Something went wrong... ###
exit

peerWait:
	echo ### Waiting until you can observe again ###
	waitfor You feel you have sufficiently pondered your latest observation.
goto peerLoop


}

waitExit:
echo ### You still need to wait for you observation cooldown ###
exit

waitObserve:
echo  ### Waiting for your Observation Cooldown to be ready ###
waitfor You feel you have sufficiently pondered your latest observation.
goto setup

end:
put close my tele
waitforre ^You collapse
put stow my tele in my tele case
waitforre ^You put
exit