# Latest version 8/17/2014
# Created by Aaoskar, Fayenangel, and Yanbelev
# Purpose of script
# 1.  constellations are selected according to their prophecy potency. There are some exceptions, but this was only done after much consideration.
# 2.  it looks for constellations that train more than 1 skill sets if that is possible.
# 3.  can be used by all circles. if you don't know a constellation because you are too low in circle, you will move to the next on the list.
# 4.  it changes as the day changes
# 5.  it only uses piercing gaze if it MUST
# 6.  it minimizes the need to ever use predict state all.  that is more of a way to catch errors or when you already have a skillset locked when you begin the script
# 7.  gives you the option of only pooling or doing small predictions with every sighting.
# 8.  it pools for a big prediction with the second skill so you can do a capped prediction with or without divination bones.
# 9.  it works in combat
# 10. headers and variables changed so that the entire script can be easily inserted into other scripts and to not conflict with gosubs, matchtables, or variables.
# 11. you can specify when not to train astrology based off of critter or armor
# 12. telescopes are optional, although i dont recommend them if you are using the script in combat.
# 13. Divination bones are optional. You can set them to not be used, to be used with small predictions, or to be used with big predictions, or to be used with small and big predictions.
# 14. Up to 2 divination bones can be used. This is so that you have a way to only do capped predictions on your good set.
# 15. checks for other constellation options if you have observed the sun too many times because using the sun is not optimal learning.
# 16. has a safety to prevent you from using a telescope on the sun.
# 17. documented to make it easier to understand.
# 18. No longer kneels to use divination bones.
# 19. Now has the correct strings to handle critical failures for the skull.

# Drawbacks of the script. 
# 1. Do not use the telescope option in combat if you're going to use a ranged weapon (except thrown) unless you want to modify it.
# 2. This script can cause spam until it finds the right constellation that maximizes learning.
# 3. You need piercing gaze. 

# Syntax
# .predict (This runs the script without a telescope and it chooses according to prophetic potency. It skips over constellations that require a telescope. Whether it uses divination bones depends on how you set your variables below)
# Any of the following in any order can be used.
# .predict <constellation> <telescope or notelescope> <bones or nobones> <cap or nocap> <pool>
# Alternatively you can specify these in the variables below so you never have to do anything other than type .predict

# Variables you can change
# var astroCircle is your circle. This is a local variable BECAUSE sometimes people have difficulty observing constellations that their exact circle indicates they should be able to observe. This lets you adjust that.
var astroCircle 24

# var telescope. If %astroTelescope = no, then you will not observe constellations that use the telescope. if %astroTelescope = yes then you will use a telescope. I suggest you don't, especially in combat. You can still die and drop it.
var astroTelescope yes
if matchre ("%1|%2|%3|%4|%5", ("telescope|tele")) then var astroTelescope yes
if matchre ("%1|%2|%3|%4|%5", ("notelescope|notele")) then var astroTelescope yes

# var astroTelescopeContainer indicates where you keep your telescope
var astroTelescopeContainer telescope case 
# astroMana sets the mana for your piercing gaze spell
var astroMana 23

# Variables that indicate what skill you will be predicting on.
var astroDefense la
var astroLore scholarship
var astroMagic tm
var astroOffense se
var astroSurvival evasion

# astroTool must be a divination bone of some sort. It is the set of divination bones you wish to use for your normal, non-capped predictions
# You want astroTool defined so that it is what you get when you type $righthand or $lefthand
var astroTool divination bones

# astroPowerfulTool is a set of divination bones. It is the set of divination bones you wish to use for CAPPED predictions
# You want astroPowerfulTool defined so that it is what you get when you type $righthand or $lefthand
var astroPowerfulTool bones

# if %astroBones = yes, then you will use your divination bones for your easy predictions. if %astroBones = no, then you will do predictions free-style
var astroBones yes
if matchre ("%1|%2|%3|%4|%5", ("bones|bone")) then var astroBones yes
if matchre ("%1|%2|%3|%4|%5", ("nobones|nobone")) then var astroBones no
# if %astroPowerfulBones = yes, then you will use your divination bones for a capped prediction. if %astroPowerfulBones = no, then you will do predictions free-style
var astroPowerfulBones yes
if matchre ("%1|%2|%3|%4|%5", ("max|cap")) then var astroPowerfulBones yes
if matchre ("%1|%2|%3|%4|%5", ("nomax|nocap")) then var astroPowerfulBones no

# astroContainer is where you keep your divination bones and where you stow things if your hands are full.
var astroContainer backpack

# These indicate what critter you are going to fight. These are here because below you can indicate when not to train astrology based off of critter type. You will need to change this section according to your needs.
var astroCritter shaman
if $zoneid = 13 then if $roomid > 196 then var astroCritter cabalist
if $zoneid = 13 then if $roomid > 215 then var astroCritter moth
if $zoneid = 69 then var astroCritter intercessor
if "$zoneid" = "69c" then var astroCritter archon

# if %pool = yes, then it will never do a prediction. It will just keep increasing the size of your pool
var pool no
if matchre ("%1|%2|%3|%4|%5", ("pool")) then var pool yes

## if %astrology = no, you will not train astrology
## if %astrology = yes, you will train astrology when it is possible to do so. Note, astrology takes precedence over other skills.
if matchre ("%astroCritter", ("drake|archon|wyvern|cabalist")) then var astrology yes
if matchre ("%astroCritter", ("intercessor|moth")) then var astrology no

# Armor indicates an armor that when you wear, you do not want to do predictions. Normally because it is difficult for you to retreat in that armor
var astroArmor leathers

# Amount of time to wait before casting piercing gaze.
var astroPgTime 20

################################################################################################################################################################################
# Change nothing below here

# astroConstellation is just the list of constellations that you will be selecting from. They are organized according to prophetic potency with some well thought out exceptions. Don't change this unless you're sure.
var astroConstellation dawgolesh|er'qutra|szeldia|merewalda|ismenia|morleena|amlothi|sun|archer|adder|vulture|scorpion|wren|centaur|king.snake|heron|owl|shrew|hare|brigantine|scales|shardstar|weasel|jackal|nightingale|phoenix|cow|shrike|verena|estrilda|durgaulda|yoakena|penhetia|lion|boar|panther|cobra|ox|dolphin|wolverine|albatross|shark|coyote|dove|mongoose|goshawk|welkin|raccoon|triquetra|spider|donkey|giant|toad|viper|ram|heart|wolf|raven|unicorn|cat|magpie|xibar|yavash|katamba|kertigen's.forge
var astroConstellation.counter 0

# This indicates the circle that you must be to observe the constellation in question. Do not modify these. Really. Don't do it.
var heart.circle 1
var sun.circle 1
var yavash.circle 1
var xibar.circle 1
var katamba.circle 1
var wolf.circle 2
var lion.circle 3
var raven.circle 4
var unicorn.circle 5
var boar.circle 6
var panther.circle 7
var cobra.circle 8
var ox.circle 9
var scorpion.circle 10
var wren.circle 11
var cat.circle 12
var ram.circle 13
var dolphin.circle 14
var shardstar.circle 15
var nightingale.circle 15
var wolverine.circle 16
var centaur.circle 17
var magpie.circle 18
var weasel.circle 19
var king.snake 20
var viper 21
var albatross.circle 22
var shark.circle 23
var donkey.circle 24
var coyote.circle 25
var dove.circle 26
var phoenix.circle 27
var heron.circle 28
var mongoose.circle 29
var goshawk.circle 30
var owl.circle 31
var welkin.circle 32
var raccoon.circle 33
var cow.circle 34
var adder.circle 35
var vulture.circle 36
var shrew.circle 37
var shrike.circle 38
var jackal.circle 39
var spider.circle 40
var giant.circle 41
var hare.circle 42
var verena.circle 43
var toad.circle 44
var archer.circle 45
var estrilda.circle 46
var brigantine.circle 47
var scales.circle 48
var durgaulda.circle 49
var triquetra.circle 50
var yoakena.circle 52
var penhetia.circle 55
var szeldia.circle 60
var merewalda.circle 65
var ismenia.circle 70
var morleena.circle 75
var amlothi.circle 80
var dawgolesh.circle 85
var er'qutra.circle 90
var kertigen's.forge.circle 100
var dergati's.eye.circle 125

# This just gives you the option of selecting one of the options below. Example .predict moongoose
if matchre ("%1|%2|%3|%4|%5", ("dawgolesh|dawg")) then var astroConstellation.counter 0
if matchre ("%1|%2|%3|%4|%5", ("er'qutra|erqutra")) then var astroConstellation.counter 1
if matchre ("%1|%2|%3|%4|%5", ("szeldia")) then var astroConstellation.counter 2
if matchre ("%1|%2|%3|%4|%5", ("merewalda")) then var astroConstellation.counter 3
if matchre ("%1|%2|%3|%4|%5", ("ismenia")) then var astroConstellation.counter 4
if matchre ("%1|%2|%3|%4|%5", ("morleena")) then var astroConstellation.counter 5
if matchre ("%1|%2|%3|%4|%5", ("amlothi")) then var astroConstellation.counter 6
if matchre ("%1|%2|%3|%4|%5", ("sun")) then var astroConstellation.counter 7
if matchre ("%1|%2|%3|%4|%5", ("archer")) then var astroConstellation.counter 8
if matchre ("%1|%2|%3|%4|%5", ("adder")) then var astroConstellation.counter 9
if matchre ("%1|%2|%3|%4|%5", ("vulture")) then var astroConstellation.counter 10
if matchre ("%1|%2|%3|%4|%5", ("scorpion")) then var astroConstellation.counter 11
if matchre ("%1|%2|%3|%4|%5", ("wren")) then var astroConstellation.counter 12
if matchre ("%1|%2|%3|%4|%5", ("centaur")) then var astroConstellation.counter 13
if matchre ("%1|%2|%3|%4|%5", ("king.snake|king|snake")) then var astroConstellation.counter 14
if matchre ("%1|%2|%3|%4|%5", ("heron")) then var astroConstellation.counter 15
if matchre ("%1|%2|%3|%4|%5", ("owl")) then var astroConstellation.counter 16
if matchre ("%1|%2|%3|%4|%5", ("shrew")) then var astroConstellation.counter 17
if matchre ("%1|%2|%3|%4|%5", ("hare")) then var astroConstellation.counter 18
if matchre ("%1|%2|%3|%4|%5", ("brigantine")) then var astroConstellation.counter 19
if matchre ("%1|%2|%3|%4|%5", ("scales")) then var astroConstellation.counter 20
if matchre ("%1|%2|%3|%4|%5", ("shardstar")) then var astroConstellation.counter 21
if matchre ("%1|%2|%3|%4|%5", ("weasel")) then var astroConstellation.counter 22
if matchre ("%1|%2|%3|%4|%5", ("jackal")) then var astroConstellation.counter 23
if matchre ("%1|%2|%3|%4|%5", ("nightingale")) then var astroConstellation.counter 24
if matchre ("%1|%2|%3|%4|%5", ("phoenix")) then var astroConstellation.counter 25
if matchre ("%1|%2|%3|%4|%5", ("cow")) then var astroConstellation.counter 26
if matchre ("%1|%2|%3|%4|%5", ("shrike")) then var astroConstellation.counter 27
if matchre ("%1|%2|%3|%4|%5", ("verena")) then var astroConstellation.counter 28
if matchre ("%1|%2|%3|%4|%5", ("estrilda")) then var astroConstellation.counter 29
if matchre ("%1|%2|%3|%4|%5", ("durgaulda|durg")) then var astroConstellation.counter 30
if matchre ("%1|%2|%3|%4|%5", ("yoakena|yoak")) then var astroConstellation.counter 31
if matchre ("%1|%2|%3|%4|%5", ("penhetia")) then var astroConstellation.counter 32
if matchre ("%1|%2|%3|%4|%5", ("lion")) then var astroConstellation.counter 33
if matchre ("%1|%2|%3|%4|%5", ("boar")) then var astroConstellation.counter 34
if matchre ("%1|%2|%3|%4|%5", ("panther")) then var astroConstellation.counter 35
if matchre ("%1|%2|%3|%4|%5", ("cobra")) then var astroConstellation.counter 36
if matchre ("%1|%2|%3|%4|%5", ("ox")) then var astroConstellation.counter 37
if matchre ("%1|%2|%3|%4|%5", ("dolphin")) then var astroConstellation.counter 38
if matchre ("%1|%2|%3|%4|%5", ("wolverine")) then var astroConstellation.counter 39
if matchre ("%1|%2|%3|%4|%5", ("albatross")) then var astroConstellation.counter 40
if matchre ("%1|%2|%3|%4|%5", ("shark")) then var astroConstellation.counter 41
if matchre ("%1|%2|%3|%4|%5", ("coyote")) then var astroConstellation.counter 42
if matchre ("%1|%2|%3|%4|%5", ("dove")) then var astroConstellation.counter 43
if matchre ("%1|%2|%3|%4|%5", ("mongoose")) then var astroConstellation.counter 44
if matchre ("%1|%2|%3|%4|%5", ("goshawk")) then var astroConstellation.counter 45
if matchre ("%1|%2|%3|%4|%5", ("welkin")) then var astroConstellation.counter 46
if matchre ("%1|%2|%3|%4|%5", ("raccoon")) then var astroConstellation.counter 47
if matchre ("%1|%2|%3|%4|%5", ("triquetra")) then var astroConstellation.counter 48
if matchre ("%1|%2|%3|%4|%5", ("spider")) then var astroConstellation.counter 49
if matchre ("%1|%2|%3|%4|%5", ("donkey")) then var astroConstellation.counter 50
if matchre ("%1|%2|%3|%4|%5", ("giant")) then var astroConstellation.counter 51
if matchre ("%1|%2|%3|%4|%5", ("toad")) then var astroConstellation.counter 52
if matchre ("%1|%2|%3|%4|%5", ("viper")) then var astroConstellation.counter 54
if matchre ("%1|%2|%3|%4|%5", ("ram")) then var astroConstellation.counter 54
if matchre ("%1|%2|%3|%4|%5", ("heart")) then var astroConstellation.counter 55
if matchre ("%1|%2|%3|%4|%5", ("wolf")) then var astroConstellation.counter 56
if matchre ("%1|%2|%3|%4|%5", ("raven")) then var astroConstellation.counter 57
if matchre ("%1|%2|%3|%4|%5", ("unicorn")) then var astroConstellation.counter 58
if matchre ("%1|%2|%3|%4|%5", ("cat")) then var astroConstellation.counter 59
if matchre ("%1|%2|%3|%4|%5", ("magpie")) then var astroConstellation.counter 60
if matchre ("%1|%2|%3|%4|%5", ("xibar")) then var astroConstellation.counter 61
if matchre ("%1|%2|%3|%4|%5", ("yavash")) then var astroConstellation.counter 62
if matchre ("%1|%2|%3|%4|%5", ("katamba")) then var astroConstellation.counter 63
if matchre ("%1|%2|%3|%4|%5", ("kertigen's.forge|kertigen|forge")) then var astroConstellation.counter 64
if matchre ("%1|%2|%3|%4|%5", ("dergati's.eye|eye|dergati")) then var astroConstellation.counter 65

# var astroPrediction indicates what skill you will be predicting on based off of the constellation you chose.
if matchre ("%astroConstellation(%astroConstellation.counter)", ("penhetia|lion|dove|goshawk|raccoon|dawgolesh|giant|magpie|katamba|king.snake|merewalda")) then var astroPrediction %astroDefense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("weasel|brigantine|albatross|heron|welkin|hare|verena|raven|xibar|shardstar|phoenix|amlothi|kertigen's.forge|scales")) then var astroPrediction %astroLore
if matchre ("%astroConstellation(%astroConstellation.counter)", ("durgaulda|cobra|donkey|coyote|jackal|toad|wolf|yavash|wren|owl|adder|shrew|ismenia|dergati's.eye|nightingale")) then var astroPrediction %astroMagic
if matchre ("%astroConstellation(%astroConstellation.counter)", ("estrilda|boar|panther|wolverine|mongoose|spider|triquetra|cat|scorpion|centaur|viper|archer|er'qutra")) then var astroPrediction %astroOffense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("yoakena|szeldia|sun|ox|dolphin|shark|cow|shrike|ram|unicorn|heart|vulture|morleena")) then var astroPrediction %astroSurvival

# var astroReady is a variable that is in place so that you can use it as a backup method to make sure that your action indicating that it is time to predict isn't lost due to roundtime. Do not change this.
# most likely you would use astroReady only when you paste this script into another one. then you would do something like if %astroReady = yes then goto astroObserve0
var astroReady no
action var astroReady yes;goto astroObserve0 when You feel you have sufficiently pondered your latest observation\.

# var astroTelescopeReady is a variable that determines whether you should pull out the trusty telescope. Default should be no because we're slackers around here. It will change on its own if it needs to.
var astroTelescopeReady no

# these actions and variables indicate when a skillset is full. This would mean that you would do a capped prediction with your divination bones.
action var magicUnderstanding complete;var astroComplete yes when ^You have a complete understanding of the celestial influences over magic|^You believe you\'ve learned all that you can about magic\.$
action var loreUnderstanding complete;var astroComplete yes when ^You have a complete understanding of the celestial influences over lore|^You believe you\'ve learned all that you can about lore\.$
action var offensiveUnderstanding complete;var astroComplete yes when ^You have a complete understanding of the celestial influences over offensive combat|^You believe you\'ve learned all that you can about offense\.$
action var defensiveUnderstanding complete;var astroComplete yes when ^You have a complete understanding of the celestial influences over defensive combat|^You believe you\'ve learned all that you can about defense\.$
action var survivalUnderstanding complete;var astroComplete yes when ^You have a complete understanding of the celestial influences over survival|^You believe you\'ve learned all that you can about survival\.$

# if you are wearing your astroArmor, you will not train astrology
action var astrology no when %astroArmor

# astroLeft and astroRight is just a way to keep track of what is in your hands before you have to pull out divination tools or telescopes. should be set to NA initially
var astroLeft NA
var astroRight NA

# These are variables that keep track of whether shear is up so that shear is released prior to casting piercing gaze.
action var shear ON when ^A globe of shimmering blue fire flickers into being around you\.$
action var shear OFF when ^The shimmering globe of blue fire suddenly extinguishes\.$

# astroSunTimer is only a factor when you observe the sun. The sun is a horrible way to learn astrology. Therefore after it observes the sun 4 times, it checks to see if other options are available. This should be set to 0.
var astroSunTimer 0

# astroStun is a safety in case you get the Bat-winged skull. However, since its been a long time since I've seen this, the astroStun subroutine and this action may need to be adjusted.
action goto astroStun when ^Suddenly your mind receives a numbing jolt as visions of a bat\-winged skull overwhelm your mind\.$

# astroComplete just indicates that you have a full prediction pool in one of the skillsets.
var astroComplete no

################################################################################################################################################################################
# The Actual Script

astroObserve0:
if %astrology = no then goto astroNOGO
if %astroCircle < %%astroConstellation(%astroConstellation.counter).circle then goto astroMath
if $spelltime = 0 then goto astroObserve2

astroObserve1:
matchre astroObserve1 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You see nothing regarding the future\.|^You are still stunned|^All Rights Reserved|^Closing the STORMFRONT
matchre astroObserve2 You gesture
if $spelltime > 15 then put cast
matchwait 5
if $spelltime = 0 then goto astroObserve2
goto astroObserve1

astroObserve2:
matchre astroObserve2 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You see nothing regarding the future\.$|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroPG0 ^Clouds obscure the sky where
matchre astroRetreat ^You are a bit too distracted to be observing something|^You are far too
matchre astroTool ^You learned|^While the sighting wasn\'t quite what you were hoping for\, you still learned from your observation
matchre astroAnalyze ^Too many futures cloud your mind \- you learn nothing\.$|^Although you were nearly overwhelmed by some aspects of your observation\, you still learned more of the future
matchre astroMath too close to the sun to be properly viewed|turns up fruitless\.$|The future\, however\, remains a dark mystery to you as you have not seen the answers you seek in the heavens|^I could not find what you are referring to\.$
matchre astroTelescope too faint for you to pick out with your naked eye\.$
matchre astroDay is foiled by the daylight\.$
matchre astroNight is foiled by the darkness\.$
matchre astroWait ^You have not pondered your last observation sufficiently\.$
matchre astroWait5 ^That\'s a bit hard to do here\, since you cannot see the sky\.$
matchre astroTelescopeError ^The pain is too much\.$
matchre astroUhOh ^You\'re having too much trouble focusing due to your recent injuries to accomplish that
if %astroTelescopeReady = no then put observe %astroConstellation(%astroConstellation.counter) in sky
if %astroTelescopeReady = yes then put peer my telescope
matchwait

astroTool:
pause 1
if %astroConstellation(%astroConstellation.counter) = sun then var astroTelescopeReady no
if %astroTelescopeReady = yes then gosub astroTelescopeStow
if %astroConstellation(%astroConstellation.counter) = sun then math astroSunTimer add 1
if %astroConstellation(%astroConstellation.counter) = sun then ECHO As the sun is not optimal for astrological concerns, you will be checking for other constellations shortly.
if %astroSunTimer > 3 then goto astroDay

gosub clear
if %magicUnderstanding = complete then var astroPrediction %astroMagic
if %loreUnderstanding = complete then var astroPrediction %astroLore
if %offensiveUnderstanding = complete then var astroPrediction %astroOffense
if %defensiveUnderstanding = complete then var astroPrediction %astroDefense
if %survivalUnderstanding = complete then var astroPrediction %astroSurvival

if %pool = yes then goto astroWait
# astroBonesReady just means we need to use divination bones
var astroBonesReady no
iF %astroBones = yes then if %astroComplete = no then if %astroBones = yes then var astroBonesReady yes
iF %astroBones = yes then if %astroComplete = yes then if %astroPowerfulBones = yes then var astroBonesReady yes
iF %astroPowerfulBones = yes then if %astroComplete = no then if %astroBones = yes then var astroBonesReady yes
iF %astroPowerfulBones = yes then if %astroComplete = yes then if %astroPowerfulBones = yes then var astroBonesReady yes
if %astroBonesReady = no then goto astroAlign

astroTool2:
matchre astroTool2 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroAlign You get|You are already holding
matchre astroTool3 You need a free hand to pick that up
if %astroComplete = no then if %astroBones = yes then put get %astroTool in my %astroContainer
if %astroComplete = yes then if %astroPowerfulBones = yes then put get %astroPowerfulTool in my %astroContainer
matchwait

astroTool3:
# var astroLeft is just saving what is in your hand before you stow it. This way you can get the same item back out after you put your bones away.
if $lefthandnoun != telescope then if $lefthand != Empty then var astroLeft $lefthandnoun
if $righthandnoun != telescope then if $righthand != Empty then var astroRight $righthandnoun

astroTool4:
matchre astroTool4 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroTool2 You put|You stow|referring
put stow left in my %astroContainer
matchwait

astroAlign:
matchre astroAlign \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroPredict ^You focus internally and align yourself for
put align %astroPrediction
matchwait 4

astroPredict:
matchre astroPredict \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroRetreat-predict You are far too occupied by present matters to immerse yourself in matters of the future|You are a bit too distracted to be observing something|You are far too|You\'re too distracted to do that\!
matchre astroTool2 ^You\'ll need to be holding
if %astroComplete = yes then if %astroPowerfulBones = yes then put roll my bones at $charactername
if %astroBones = yes then put roll my bones at $charactername
if %astroBones = no then if %astroComplete = no then put predict future $charactername
matchwait 11

# Clearing the variables below is essential. This prevents the script from trying to use your divination bones over and over.
if %astroPrediction = %astroMagic then var magicUnderstanding clear
if %astroPrediction = %astroLore then var loreUnderstanding clear
if %astroPrediction = %astroDefense then var defensiveUnderstanding clear
if %astroPrediction = %astroOffense then var offensiveUnderstanding clear
if %astroPrediction = %astroSurvival then var survivalUnderstanding clear

astroStand:
matchre astroStand \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroStow You are already|You stand back up
put stand
matchwait 3
goto astroStand

astroStow:
astroStow0:
matchre astroStow0 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait You put|referring
if matchre ("$lefthand|$righthand", ("%astroTool")) then put put %astroTool in my %astroContainer
if matchre ("$lefthand|$righthand", (%astroPowerfulTool")) then put put %astroPowerfulTool in my %astroContainer
send predict analyze
matchwait 3
goto astroWait

################################################################################################################################################################################
# Adjustments 

astroAnalyze:
matchre astroAnalyze \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroContemplate ^You have
put predict state all
matchwait 20	

astroContemplate:
pause 1
if %magicUnderstanding = complete then var astroPrediction %astroMagic
if %loreUnderstanding = complete then var astroPrediction %astroLore
if %offensiveUnderstanding = complete then var astroPrediction %astroOffense
if %defensiveUnderstanding = complete then var astroPrediction %astroDefense
if %survivalUnderstanding = complete then var astroPrediction %astroSurvival
goto astroTool

astroDay:
# This indicates that the night has turned to day and that you need to observe the sun or visible planets. Alternatively, it might mean that you have observed the sun too many times and it is having you recheck for other options.
var astroConstellation.counter 0
var astroSunTimer 0
goto astroObserve0

astroMath:
echo astroMath
echo astroTelescope %astroTelescope
echo astroTelescopeReady %astroTelescopeReady
# The astroConstellation is changed when the constellation in question is not in the sky.
math astroConstellation.counter add 1
if %astroConstellation.counter > 65 then var astroConstellation.counter 0
if matchre ("%astroConstellation(%astroConstellation.counter)", ("penhetia|lion|dove|goshawk|raccoon|dawgolesh|giant|magpie|katamba|king.snake|merewalda")) then var astroPrediction %astroDefense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("weasel|brigantine|albatross|heron|welkin|hare|verena|raven|xibar|shardstar|phoenix|amlothi|kertigen's.forge|scales")) then var astroPrediction %astroLore
if matchre ("%astroConstellation(%astroConstellation.counter)", ("durgaulda|cobra|donkey|coyote|jackal|toad|wolf|yavash|wren|owl|adder|shrew|ismenia|dergati's.eye|nightingale")) then var astroPrediction %astroMagic
if matchre ("%astroConstellation(%astroConstellation.counter)", ("estrilda|boar|panther|wolverine|mongoose|spider|triquetra|cat|scorpion|centaur|viper|archer|er'qutra")) then var astroPrediction %astroOffense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("yoakena|szeldia|sun|ox|dolphin|shark|cow|shrike|ram|unicorn|heart|vulture|morleena")) then var astroPrediction %astroSurvival
goto astroObserve0

astroNight:
# This indicates that the day has turned to night
var astroConstellation.counter 8
goto astroObserve0

astroNOGO:
var astroReady no
ECHO You can't train astrology here. You are wearing the wrong armor or you are fighting a critter where you don't want to predict.
exit

astroPG0:
# astroPG0 releases shear prior to casting piercing gaze
matchre astroPG0 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroPG ^The shimmering globe of blue fire suddenly extinguishes\.$|RELEASE
if %shear = ON then put release shear
if %shear = OFF then goto astroPG
matchwait 3
if %shear = ON then goto astroPG0

astroPG:
matchre astroPG \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroPG-cast fully prepared
put prep pg %astroMana
matchwait %astroPgTime

astroPG-cast:
matchre astroPG-cast \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroObserve0 ^You gesture
put cast
matchwait 3
goto astroObserve0

astroRetreat:
matchre astroRetreat \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|polearm|You try to back away from|closes to pole weapon range on you|closes to melee range on you|Moving|block|evade|parry|manage|While in combat\?|You retreat back to pole range|^All Rights Reserved|^Closing the STORMFRONT
matchre astroObserve0 ^You retreat from combat|^You are already as far away as you can get|^But you aren\'t in combat
put retreat
matchwait

astroRetreat-predict:
matchre astroRetreat-predict \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|polearm|You try to back away from|closes to pole weapon range on you|closes to melee range on you|Moving|block|evade|parry|manage|While in combat\?|You retreat back to pole range|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroPredict ^You retreat from combat|^You are already as far away as you can get|^But you aren\'t in combat
put retreat
matchwait

astroStun:
matchre astroStun \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait ^You stand|^You are already
put stand
matchwait 3
goto astroStun

astroTelescope:
if %astroTelescope = no then goto astroMath
matchre astroTelescope \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
if matchre ("$righthandnoun|$lefthandnoun", ("telescope")) then put put telescope in my %astroTelescopeContainer
matchwait 1

if $lefthandnoun != telescope then if $lefthand != Empty then var astroLeft $lefthandnoun
if $lefthandnoun != telescope then if $righthand != Empty then var astroRight $righthandnoun

astroTelescope0:
matchre astroTelescope0 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroTelescope1 ^You put|^You stow|referring
put stow right in %astroContainer
matchwait 1

astroTelescope1:
matchre astroTelescope1 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroTelescope2 ^You put|^You stow|referring
put stow left in %astroContainer
matchwait 1

astroTelescope2:
matchre astroTelescope2 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroTelescopeError ^What were you referring to\?$
put get telescope in %astroTelescopeContainer
matchwait 1
var astroTelescopeReady yes

astroTelescope3:
matchre astroTelescope3 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroCenterTelescope ^You extend your telescope\.$|^You try\, but the telescope seems as extended as it will ever be\.$
put open my telescope
matchwait 1

astroCenterTelescope:
matchre astroCenterTelescope \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroObserve0 You put your eye
matchre astroTelescopeError ^The pain is too much\.$
put center my telescope on %astroConstellation(%astroConstellation.counter)
matchwait 3
goto astroObserve2

astroTelescopeError:
matchre astroTelescopeError \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
var astroTelescope no
var astroTelescopeReady no
ECHO You are too injured or you do not have a telescope
matchwait 1

astroTelescopeStow0:
matchre astroTelescopeStow0 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^All Rights Reserved|^Closing the STORMFRONT
matchre astroMath ^You put|^You stow|referring
put put telescope in %astroTelescopeContainer
matchwait
goto astroMath

astroTelescopeStow:
var astroTelescopeReady no
astroTelescopeStow2:
matchre astroTelescopeStow2 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroTool ^You put|^You stow|referring
put put telescope in %astroTelescopeContainer
matchwait

astroUhOh:
ECHO Must have gotten in one too many fights. Probably a good idea to get healed before you study the heavens
exit

astroWait:
# This resets the skills that you will predict on, in case it was switched due to constellation change or use of your divination bones.
if matchre ("%astroConstellation(%astroConstellation.counter)", ("penhetia|lion|dove|goshawk|raccoon|dawgolesh|giant|magpie|katamba|king.snake|merewalda")) then var astroPrediction %astroDefense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("weasel|brigantine|albatross|heron|welkin|hare|verena|raven|xibar|shardstar|phoenix|amlothi|kertigen's.forge|scales")) then var astroPrediction %astroLore
if matchre ("%astroConstellation(%astroConstellation.counter)", ("durgaulda|cobra|donkey|coyote|jackal|toad|wolf|yavash|wren|owl|adder|shrew|ismenia|dergati's.eye|nightingale")) then var astroPrediction %astroMagic
if matchre ("%astroConstellation(%astroConstellation.counter)", ("estrilda|boar|panther|wolverine|mongoose|spider|triquetra|cat|scorpion|centaur|viper|archer|er'qutra")) then var astroPrediction %astroOffense
if matchre ("%astroConstellation(%astroConstellation.counter)", ("yoakena|szeldia|sun|ox|dolphin|shark|cow|shrike|ram|unicorn|heart|vulture|morleena")) then var astroPrediction %astroSurvival

if $righthand = Empty then if $lefthand = Empty then goto astroWait4
if $righthand = %astroRight then if $lefthand = %astroLeft then goto astroWait4

astroWait0:
matchre astroWait0 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait1 ^You put|^You stow|referring
if matchre ("$righthandnoun|$lefthandnoun", = ("telescope")) then put put my telescope in %astroTelescopeContainer
matchwait 1

astroWait1:
matchre astroWait1 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait2 ^You put|^You stow|referring
if matchre ("$righthandnoun|$lefthandnoun", ("bones")) then put put my bones in %astroTelescopeContainer
matchwait 1

astroWait2:
matchre astroWait2 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait3 ^You get|referring
if %astroRight != telescope then if %astroRight != NA then if %astroRight != NA then if $righthand = Empty then put get %astroRight
matchwait 1

astroWait3:
matchre astroWait3 \.\.\.wait|^Sorry\, you may only|^The clumps of dirt stinging your eyes|^You finally manage|^You are still stunned\.$|^All Rights Reserved|^Closing the STORMFRONT
matchre astroWait4 ^You get|referring
if %astroLeft != telescope then if %astroLeft != NA then if %astroLeft != NA then if $lefthand = Empty then put get %astroLeft
matchwait 1

astroWait4:
var astroReady no
var astroLeft NA
var astroRight NA
var astroTelescopeReady no
var astroComplete no
var astroBonesReady no
ECHO Waiting ~200 seconds before the next prediction.
pause 200
goto astroObserve0

astroWait5:
var astroReady no
var astroLeft NA
var astroRight NA
var astroTelescopeReady no
var astroComplete no
var astroBonesReady no
ECHO Moon. Mage. Moonmage. See you got to be able to see moons. You might want to go talk to Kssarh about what a Moon mage is. Just have a cleric ready to raise you after you go ask a bunch of stupid questions.
exit