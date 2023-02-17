#debuglevel 5
goto end.of.script
var hum jig

##Monster Variables
var monsters1 river sprite|gidii|goblin shaman|fendryad|nyad|madman|sprite|wood troll|lipopod|kelpie|vykathi builder|vykathi excavator
var monsters2 fire maiden|creeper|vine|thug|ruffian|footpad|cutthroat|gypsy marauder|young ogre|swain|kra'hei hatchling
var monsters3 nipoh oshu|dyrachis|shadoweaver|crag|frostweaver|atik'et|dryad|orc scout|eviscerator|guardian|pirate
var monsters4 geni|orc bandit|umbramagii|screamer|scout ogre|swamp troll|mountain giant
var monsters5 scavenger troll|sleazy lout|bucca|dragon fanatic|dusk ogre|tress|bloodvine
var monsters6 armored warklin|velver|orc reiver|kra'hei|dragon priest|lun'shele hunter|orc raider|folsi immola
var monsters7 faenrae assasin|telga moradu|trekhalo|orc clan chief|shadow master|malchata|sky giant|imp|dummy

var undead1 skeleton|soul|boggle|zombie|wind hound|fiend|spirit|ur hhrki'izh|spectral pirate|spectral sailor|shylvic
var undead2 skeleton kobold savage|skeleton kobold headhunter|skeletal sailor|olensari mihmanan
var undead3 emaciated umbramagus|zombie nomad|sinister maelshyvean heirophant|gargantuan bone golem|plague wraith|snaer hafwa|wir dinego
var undead4 skeletal peon|revivified mutt

var skinnablemonsters1 frog|silverfish|musk hog|grub|crayfish|burrower|crab|boar|skunk|badger|pothanit|trollkin
var skinnablemonsters2 kobold|s'lai scout|jackal|bobcat|cougar|grass eel|bear|ram|spider|wolf|boobrie|beisswurm|rock troll|sluagh
var skinnablemonsters3 serpent|firecat|vulture|arbelog|caiman|steed|larva|snowbeast|worm|unyn|gargoyle|crocodile
var skinnablemonsters4 merrows|viper|peccary|la'tami|barghest|angiswaerd hatchling|vykathi harvester|pard|moth|kartais
var skinnablemonsters5 la'heke|vykathi soldier|boa|warcat|moda|arzumo|carcal|blood warrior|goblin|cave troll|black ape
var skinnablemonsters6 rat|antelope|giant blight bat|leucro|wasp|mottled westanuryn|blight ogre|gryphon|caracal|basilisk
var skinnablemonsters7 dobek moruryn|sinuous elsralael|sleek hele'la|shadow mage|marbled angiswaerd|retan dolomar|faenrae stalker
var skinnablemonsters8 shadow beast|cinder beast|asaren celpeze|spirit dancer|scaly seordmaor|poloh'izh|armadillo|shalswar

var skinnableundead1 ghoul|squirrel|grendel|reaver|mey|shadow hound|lach|mastiff|gremlin
var skinnableundead2 zombie kobold savage|zombie kobold headhunter|ghoul crow|misshapen germish'din

var invasioncritters transmogrified oaf|flea-ridden beast|Prydaen|Rakash|bone warrior|shambling horror|skeletal peon|revivified mutt|putrefying shambler|bone amalgam

var skinnablecritters %skinnablemonsters1|%skinnablemonsters2|%skinnablemonsters3|%skinnablemonsters4|%skinnablemonsters5|%skinnablemonsters6|%skinnablemonsters7|%skinnablemonsters8|%skinnableundead1|%skinnableundead2
var nonskinnablecritters %monsters1|%monsters2|%monsters3|%monsters4|%monsters5|%monsters6|%monsters7|%undead1|%undead2|%undead3|%undead4

var critters %nonskinnablecritters|%skinnablecritters|%invasioncritter

ACTIONS.GOSUB:
BASE.ACTIONS:
action goto UBERMONSTER when NOTHINGRIGHTNOW
#action put #queue clear; send 1 $lastcommand when (\.\.\.wait|type ahead|^You don't seem to be able to move to do that)
action put #echo >Log MediumSpringGreen  *** GAINED A NEW CIRCLE!  CONGRATS! **** when Excellent work, $charactername|Congrats, $charactername|Congratulations $charactername|I'll let it be known you've moved up in the underworld|You're ready to train for your next rank|You are ready to train for your next level
action put #echo >Log RED *** IDLE ERROR!!  RECOVERING... *** ;goto TOP when YOU HAVE BEEN IDLE
action put #echo >Log RED *** IDLE ERROR!!  RECOVERING... *** ;goto TOP when eval $useridle = 1
action put stow left; put stow right when Free up your hands first|It's easier to start with
action send stow when Sheathe what
#action send dance when eval $prone = 1
#action put dance; send $lastcommand when ^You must stand first.
# DEPART ACTIONS
action goto DEPART when eval $dead = 1
action goto DEPART when ^Your death cry echoes in your brain 
action goto DEPART when ^You feel like you're dying
action goto DEPART when ^You are a ghost\!
action goto DEPART when ^You are a ghost\!  You must wait until someone resurrects you, or you decay\.
action goto DEPART when ^You are dead
action goto DEPART when ^The dead can't dance!
action goto DEPART when ^Your body will decay beyond its ability to hold your soul
action goto DEPART when ^You are somewhat comforted that you have gained favor with your God and are in no danger of walking the Starry Road, never to return\.
# ESCAPE/LOGOUT ACTIONS
action goto ESCAPE when ESCAPE PLZ|HELP.ESCAPE.PLZ|ESCAPE.PLZ
action goto ESCAPE.SHIELD when destroys your shield
action goto STUNNED when ^You are still stunned 

# MISC GOTO ACTIONS
action goto CONNECT when Reconnect aborted|Unable to contact Genie Key server|Please make sure that your internet connection
action goto CONNECT when Connection lost|ConnectionAborted|Socket Error|connection dropped|connection closed|ReceiveCallback Exception|Unable to contact Genie Key server
action goto CONNECTED when You look around, taking a moment to get your bearings.
action goto CONNECTED when ^Closing the WIZARD front end does NOT necessarily mean your
action goto CONNECTED when Please check for new or updated items in NEWS\!
action goto login when reconnect now
RETURN


COMBAT.ACTIONS:
action goto HIDING when eval $stamina < 50
action goto ESCAPE when ESCAPE.PLZ|123456
action goto ESCAPE when eval $health < 75
action goto ESCAPE when eval $bleeding = 1
action goto ESCAPE when ^\[You're.*beat up 
action goto ESCAPE when ^\[You're.*very beat up
action goto ESCAPE when ^You are carrying between 400 
action goto ESCAPE when ^Feeling depressed\?
action goto STUNNED when ^\[You're.*badly hurt 
action goto STUNNED when ^\[You're.*very badly hurt 
action goto STUNNED when ^\[You're.*smashed up
action goto STUNNED when ^\[You're.*terribly wounded
action goto STUNNED when ^\[You're.*near death
action goto STUNNED when \[You're.*in death's grasp
action goto DEPART when eval $dead = 1
action goto DEPART when ^Your death cry echoes in your brain 
action goto DEPART when ^You feel yourself falling... 
action goto DEPART when ^You feel like you're dying!
action goto DEPART when ^You are dead
action goto DEPART when ^The dead can't dance!
action goto DEPART when ^You are a ghost\!  You must wait until someone resurrects you, or you decay\.
RETURN

ESCAPE:
gosub ESCAPE.ACTIONS
goto RUNNING

ESCAPE.ACTIONS:
fleeing.deactivate:
fleeing.inactivate:
action remove ESCAPE PLZ|123456
action remove eval $bleeding = 1
action remove eval $health < 75
action remove eval $health < 50
action remove ^\[You're.*beat up 
action remove ^\[You're.*very beat up
action remove ^You are carrying between 400 
action remove ^Feeling depressed\?
action remove ^\[You're.*badly hurt 
action remove ^\[You're.*very badly hurt
RETURN

DEATH.ACTIONS:
DEATH.DEACTIVATE:
action remove eval $dead = 1
action remove eval $bleeding = 1
action remove eval $health < 75
action remove eval $health < 30
action remove eval $health < 50
action remove You are a ghost
action remove ^Your death cry echoes in your brain 
action remove ^You feel like you're dying
action remove ^You feel yourself falling...
action remove ^You are dead
action remove ^The dead can't dance!
action remove ^You are a ghost\!  You must wait until someone resurrects you, or you decay\.
action remove ^Your body will decay beyond its ability to hold your soul
action remove ^You are somewhat comforted that you have gained favor with your God and are in no danger of walking the Starry Road, never to return\.
action remove ^\[You're.*badly hurt 
action remove ^\[You're.*beat up 
action remove ^\[You're.*very beat up
action remove ^\[You're.*badly hurt 
action remove ^\[You're.*very badly hurt 
action remove ^\[You're.*smashed up
action remove ^\[You're.*terribly wounded
action remove ^\[You're.*near death
action remove \[You're.*in death's grasp
action remove ^You are carrying between 400 
action remove ESCAPE PLZ|123456
return


STOWING:
var location STOWING
if "$righthand" = "hemp rope" then put coil my rope
if matchre("$righthandnoun","(crossbow|bow|short bow)") then gosub unload
pause 0.1
pause 0.1
if matchre("$righthand","(partisan|shield|light crossbow|buckler|lumpy bundle|halberd|quarterstaff|mistwood longbow|gloomwood khuj)") then gosub wear my $1
if matchre("$lefthand","(partisan|shield|light crossbow|buckler|lumpy bundle|halberd|quarterstaff|mistwood longbow|gloomwood khuj)") then gosub wear my $1
#if matchre("$lefthand","(%pelts.keep)") then gosub bundle
if "$righthand" != "Empty" then GOSUB stow right
if "$lefthand" != "Empty" then GOSUB stow left
RETURN

HIDING:
put hide
return

ARMOR.SETUP.1:
var CHEST.ARMOR leathers
var HEAD.ARMOR cowl
var HAND.ARMOR Gloves
var SHIELD buckler
return

REMOVE.ARMOR:
pause .1
pause .1
gosub remove %HAND.ARMOR
gosub STOW.HAND.ARMOR
pause .5
gosub remove my %SHIELD
gosub STOW.SHIELD
pause 0.5
gosub remove %CHEST.ARMOR
gosub STOW.CHEST.ARMOR
pause 0.2
gosub remove %HEAD.ARMOR
gosub STOW.HEAD.ARMOR
wait .3
put put my %HEAD.ARMOR in my bag
pause 0.2
put put my %CHEST.ARMOR in my bag
wait .2
put put my %HAND.ARMOR in my bag
pause .3
put put my %SHIELD in my bag
pause .2
put #var ARMOR 0
RETURN

WEAR.ARMOR:
gosub get %SHIELD
pause .3
gosub wear %SHIELD
pause 0.3
gosub get %CHEST.ARMOR
pause .3
gosub wear %CHEST.ARMOR
pause 0.3
gosub get %HEAD.ARMOR
pause .3
gosub wear %HEAD.ARMOR
pause 0.3
gosub get %HAND.ARMOR
pause .3
gosub wear %HAND.ARMOR
pause .3
put #var ARMOR 1
RETURN

STOW.HAND.ARMOR:
PUT Stow %HAND.ARMOR in my backpack
return

STOW.SHIELD:
put put my shield in my back
return

STOW.CHEST.ARMOR:
Put stow %CHEST.ARMOR in my backpack
return

STOW.HEAD.ARMOR:
put stow %HEAD.ARMOR in my backpack
return





FAVOR:
put wear my %SHIELD
wait .4
put put my sabre in my harn
wait .3
put put my stiletto in my harn
wait .3
put .crossfav
RETURN

EXIT:
Wait 150000
goto Start

DEPART:
gosub DEATH.ACTIONS
put depart full
wait 150
put stand
wait 150
put stand
pause .5
put look
if contains("$roomname", "Dirge, Temple Altar") then goto DIRGE.TEMPLE
if contains("$roomname", "Resurrection Creche, Li Stil rae Kwego ia Kweld") then goto CROSS.TEMPLE


STUNNED:
put #echo >Log Red STUNNED!! Logging out for 5 minutes..
var escape.loop 0 
put exit
put exit
put #beep
pause .5
put exit
put #beep
pause .5
put exit
put #beep
action remove connection lost|Socket Error|connection dropped|connection closed|ReceiveCallback Exception|Unable to contact Genie Key server
action goto CONNECTED when You look around, taking a moment to get your bearings.
pause 0.2
put exit
put exit
pause 0.5
pause 0.2
math LOGOUT add 1
echo
echo *** 5 MINUTES LEFT ***
echo
pause 300
echo
echo *** 1 MINUTE LEFT ***
echo
pause 30
echo
echo *** LOGGING BACK IN! BE CAREFUL! ***
echo
goto STUN.CONNECT

STUN.CONNECT: 
echo *** You have been stunned out.  Attempting to reconnect *** 
put #echo >Log Red *** Attempting to reconnect after stun *** 
action goto STUN.CONNECTED when You look around, taking a moment to get your bearings. 
goto stun.connecting 

STUN.CONNECTING: 
put #connect 
pause 40
put #echo >Log Red *** FAIL!
goto STUN.CONNECTING 

STUN.CONNECTED: 
Echo *** You have been Reconnected, NOW GO GET HEALED! *** 
put #echo >Log Lime *** Reconnected after stun... getting healed.. *** 
action goto CONNECT when connection lost|Socket Error|connection dropped|connection closed|ReceiveCallback Exception|Unable to contact Genie Key server|Connect faileded
action remove You look around, taking a moment to get your bearings. 
gosub STAND
goto ESCAPE

CONNECT:
pause
echo
echo *** YOU HAVE BEEN DISCONNECTED!  Attempting to reconnect in 60 seconds.. ***
echo
put #echo >Log Red *** Disconnected... Attempting to reconnect ***
action goto CONNECTED when You look around, taking a moment to get your bearings.
pause 60
goto CONNECTING

CONNECTING:
put #connect
pause 30
put #echo >Log Red *** FAIL!
goto CONNECTING2
CONNECTING2:
put #connect
pause 60
goto CONNECTING

CONNECTED:
Echo *** You have been Reconnected ***
put #echo >Log Lime  *** Reconnected! - Restarting script. ***
action PAUSE You look around, taking a moment to get your bearings.
goto TOP
stow:
var location stow1
var todo $0
stow1:
matchre return ^Stow what\?
matchre return ^You put your
matchre return ^You stop as you realize
matchre stow2 ^But that is already in your inventory\.
matchre location.unload ^You should unload the
matchre location.unload ^You need to unload the
put stow %todo
goto retry

stow2:
pause .5
put invfix
pause
goto stow1


wear:
var location wear1
var todo $0
wear1:
matchre return ^You sling
matchre return ^You attach
matchre return ^You put
matchre return ^You strap
matchre return ^You work your way into
matchre return ^You slide your left arm through
matchre return ^You hang
matchre return ^You slip
matchre return ^You drape
matchre return ^You slide
matchre return ^You are already wearing that\.
matchre return ^Wear what\?
matchre return ^The contours of the
matchre return ^You can't wear any more items like that\.
matchre location.unload1 ^You should unload the
matchre location.unload1 ^You need to unload the
put wear %todo
goto retry


remove:
var location remove1
var todo $0
remove1:
matchre return ^You take
matchre return ^You slide
matchre return ^You sling
matchre return ^Roundtime
matchre return ^You remove
matchre return ^You pull off
matchre return ^You pull your
matchre return ^Remove what\?
matchre return ^You count out
matchre return ^You work your way out of
matchre return ^You aren't wearing that\.
matchre return ^What were you referring to\?
matchre return ^You loosen the straps securing
put remove %todo
goto retry


combine:
var location combine1
var todo $0
combine1:
matchre return ^You combine
matchre return ^Roundtime
matchre return ^Combine some
matchre return ^Perhaps you should be holding that first\.
put combine %todo
goto retry


get:
var location get1
var todo $0
get1:
matchre return ^You get
matchre return ^You pull
matchre return ^You pick up
matchre return ^You stop as you realize
matchre return ^What were you referring to\?
matchre return ^You are already holding that\.
matchre return ^You need a free hand to pick that up\.
matchre return ^But that is already in your inventory\.
matchre return ^You fade in for a moment as you pick up
matchre return ^You are not strong enough to pick that up\!
put get %todo
goto retry

take:
var location take1
var todo $0
take1:
matchre return ^You get
matchre return ^You pull
matchre return ^You pick up
matchre return ^You stop as you realize
matchre return ^What were you referring to\?
matchre return ^You are already holding that\.
matchre return ^You need a free hand to pick that up\.
matchre return ^But that is already in your inventory\.
matchre return ^You fade in for a moment as you pick up
matchre return ^You are not strong enough to pick that up\!
put get %todo
goto retry

return:
pause .3
return

exhale:
var location exhale1
var todo $0
exhale1:
matchre return ^Roundtime
matchre return ^You sound a series of bursts
matchre return ^Your lungs are tired from having sounded a warhorn so recently\.
put exhale %todo
goto retry


wield:
var location wield1
var todo $0
wield1:
matchre return ^You can only wield a weapon or a shield\!
matchre return ^You need to have your
matchre return ^You draw out your
matchre return ^You're already holding
put wield %todo
goto retry


juggle:
var location juggle1
var todo $0
juggle1:
matchre return ^Don't be silly\!
matchre return ^What were you referring to\?
matchre return ^But you're not holding
matchre return ^It's easier to juggle if you start
matchre return ^Roundtime
matchre return ^Your injuries make juggling impossible\.
put juggle %todo
goto retry


predict:
var location predict1
var todo $0
predict1:
matchre return ^You focus inwardly searching for insight into your future\.
matchre return ^After a few moments, the mists of time begin to part\.
matchre return ^You see nothing else\.
matchre return ^The future, however, remains a dark mystery to you\.
matchre return ^You must be a real expert to predict the weather indoors\.
matchre return ^You are a bit too distracted to be making predictions\.
matchre return ^Your masterful awareness
matchre return ^Roundtime
put predict %todo
goto retry


observe:
var location observe1
var todo $0
observe1:
matchre return ^You scan the skies for a few moments\.
matchre return ^Your search for the constellation
matchre return ^Roundtime
put observe %todo
goto retry


read:
var location read1
var todo $0
read1:
matchre return ^I could not find what you were referring to\.
matchre return ^The writing is too small\.  You'll have to hold the scroll to read it\.
matchre return ^Roundtime
put read %todo
goto retry


prep_spell:
if $Harness_Ability.LearningRate > 30 then goto return
prep_spell1:
if $mana < 80 then goto return
prep:
var location prep1
var todo $0
prep1:
matchre return ^You begin chanting a prayer
matchre return ^You direct your attention toward the heavens
matchre return ^You close your eyes and breathe deeply,
matchre return ^You trace an arcane sigil in the air,
matchre return ^Heatless orange flames blaze between your fingertips
matchre return ^Your eyes darken to black as a starless night
matchre return ^You raise your arms skyward, chanting
matchre return ^You are already preparing
matchre return ^Icy blue frost crackles up your arms
matchre return ^You make a careless gesture as you chant the words
matchre return ^Tiny tendrils of lightning jolt between your hands
matchre return ^The wailing of lost souls accompanies your preparations
matchre return ^Your skin briefly withers and tightens, becoming gaunt
matchre return ^Images of streaking stars falling from the heavens flash across your vision
matchre return ^A nagging sense of desperation guides your hands through the motions
matchre return ^You hastily shout the arcane phrasings needed to prepare
matchre return ^You deftly waggle your fingers in the precise motions needed to prepare
matchre return ^With great force, you slap your hands together before you and slowly pull them apart,
matchre return ^With no small amount of effort, you slowly recall the teachings
matchre return ^You struggle against your bindings to prepare
matchre return ^You raise one hand before you and concentrate
matchre return ^As you begin to focus on preparing
put prepare %todo
goto retry


harness:
#if "$preparedspell" = "None" then goto return
var location harness1
var todo $0
harness1:
matchre return ^Roundtime
matchre return ^You tap into the mana
matchre return ^Usage:
matchre return ^Attunement:
matchre return ^You strain, but cannot harness that much power\.
matchre return ^You can't harness that much mana\!
put harness %todo
goto retry


infuse:
var location infuse1
var todo $0
infuse1:
matchre return ^Roundtime
matchre return ^You don't have enough harnessed to infuse that much\.
put infuse %todo
goto retry


cast:
var location cast1
var todo $0
cast1:
matchre return ^You gesture
matchre return ^You don't have a spell prepared\!
matchre return ^Your spell pattern collapses
matchre return ^With a wave of your hand,
matchre return ^You wave your hand\.
matchre return ^With a flick of your wrist,
matchre return ^Your secondary spell pattern dissipates
matchre return ^You can't cast .+ on yourself\!
matchre return ^You make a holy gesture
matchre return ^You raise your palms and face to the heavens
matchre return ^I could not find what you were referring to\.
matchre return ^You have difficulty manipulating the mana streams, causing the spell pattern to collapse at the last moment\.
put cast %todo
goto retry


charge:
var location charge1
var todo $0
charge1:
matchre return ^Roundtime
put charge %todo
goto retry


focus:
var location focus1
var todo $0
focus1:
matchre return ^Roundtime
matchre return ^You reach out into the seemingly infinite strands of Lunar mana
matchre return ^You move into the chaotic tides
matchre return ^Your link to the .+ is intact\.
matchre return ^You are in no condition to do that\.
put focus %todo
goto retry


release:
var location release
matchre return ^Type RELEASE HELP for more options\.
put release
goto retry


rel.shadow:
var location rel.shadow
matchre return ^You gesture, completing the pattern to unravel the mystical bonds binding the shadowling to this plane\.
matchre return ^You gesture, attempting to unravel the pattern binding the shadowling to this plane\.
matchre return ^That would be a neat trick.  Try finding a shadowling first\.
put release shadowling
goto retry


release.spell:
if "$preparedspell" = "None" then return
var location release.spell
matchre return ^You let your concentration lapse and feel the spell's energies dissipate\.
matchre return ^You aren't preparing a spell\.
put release spell
goto retry


release.mana:
var location release.mana
matchre return ^You release the mana you were holding\.
matchre return ^You aren't holding any mana\.
put release mana
goto retry


rel:
var location rel
matchre return ^You release a
matchre return ^You release the mana you were holding\.
matchre return ^You aren't holding any mana\.
put release 1 mana
goto retry


power:
var location power1
var todo $0
power1:
matchre return ^Roundtime
matchre return ^Something in the area is interfering
matchre return ^I could not find who you were referring to\.
put PERCEIVE %todo
goto retry


tend:
var location tend1
var todo $0
tend1:
matchre return ^That area has already been tended to\.
matchre return ^You work carefully at tending your wound\.
matchre return ^Doing your best
matchre return too injured for you to do that\.
matchre return ^That area is not bleeding\.
matchre return ^Roundtime:
matchre return ^You realize you cannot handle so severe an injury while in combat\!
matchre return ^Your task is made more difficult by being in combat\.
put tend %todo
goto retry


unwrap:
var location unwrap1
var todo $0
unwrap1:
matchre return ^You may undo the affects of TENDing to an injured area by using the UNWRAP command to remove the bandages\.
matchre return ^That area is not tended\.
matchre return ^The bandages binding your
matchre return ^You unwrap your bandages\.
matchre return ^\[Roundtime:
put unwrap my %todo
goto retry


look:
var location look1
var todo $0
look1:
matchre return ^You are
matchre return ^You have
matchre return ^You see
matchre return ^(He|She) is
matchre return ^I could not find what you were referring to\.
put look %todo
goto retry


search:
var location search
matchre return ^Roundtime
matchre return ^You search around for a moment
put search
goto retry


teach:
var location teach1
var todo $0
teach1:
matchre return ^You begin to lecture
matchre return is already listening to you\.
matchre return is listening to someone else\.
matchre return is not paying attention to you\.
matchre return ^You have already offered to
matchre return already trying to teach someone else
matchre return is already trying to teach you something
matchre return ^That person is too busy teaching their own students to listen to your lesson\.
matchre return ^You cannot listen to a teacher and teach at the same time
matchre return ^I could not find who you were referring to\.
matchre return isn't teaching you anymore\.
put Teach %todo
goto retry


listen:
var location listen1
var todo $0
listen1:
matchre return ^You begin to listen
matchre return ^Your teacher appears to have left\.
matchre return ^You are already listening to someone\.
matchre return ^Who do you want to listen to
matchre return ^I could not find who you were referring to\.
matchre return isn't teaching a class\.
matchre return isn't teaching you anymore\.
matchre return has closed the class to new students\.
matchre return ^You cannot teach a skill and be a student at the same time\!
put listen %todo
goto retry


stop:
var location stop1
var todo $0
stop1:
matchre return ^You stop teaching\.
matchre return ^But you aren't teaching anyone\.
matchre return ^You stop listening to
matchre return ^But you aren't listening to anyone\.
matchre return ^You stop trying to teach
matchre return ^You stop practicing your climbing skills\.
matchre return ^You weren't practicing your climbing skills anyway\.
put stop %todo
goto retry


dance:
var location dance1
var todo $0
dance1:
matchre return ^You slowly center yourself
matchre return ^Roundtime
matchre return ^Your mind and body are focused on a Dance\.
matchre return ^You push out your chest as you feel your eyes taking on a new and distant focus\.
matchre return ^You are off center, and have trouble focusing\.
matchre return ^You slowly relax, letting the power of the dance fade from your core\.
matchre return ^Stop what\?
put dance %todo
goto retry


khri:
var location khri1
var todo $0
khri1:
matchre return not recognizable as a valid khri\.
matchre return ^Roundtime
matchre return ^You're already using the
matchre return ^You strain, but cannot focus your mind enough to manage that\.
matchre return ^You have not recovered from your previous
matchre return ^Tapping into the well of mental power within
put khri start %todo
goto retry


khri.stop:
var location khri.stop1
var todo $0
khri.stop1:
matchre return ^Nothing happens, as you are not using any stoppable meditations\.
matchre return ^Your focused mind falters, and you feel slightly less competent overall\.
matchre return ^Your extreme cunning vanishes as one of your mental pillars supporting it ceases\.
matchre return ^Your inward calm vanishes, the troubles of the world once more washing over you\.
matchre return ^You are unable to maintain the complex thought processes any longer and your mental faculties return to normal\.
matchre return ^You attempt to relax your mind from all of its meditative states\.
matchre return ^Your cool composure fades, and with it your heightened knowledge of enemies' weak points\.
matchre return ^Your concentration fails, and you feel your body perceptibly slow\.
matchre return ^Your silence ends, placing you back into the normal field of perception\.
matchre return ^You attempt to relax your mind from all of its meditative states\.
matchre return ^Your mind's prowess wavers, and so too does the extra combat strength it granted you vanish\.
matchre return ^Your augmented reaction times slow as one of your mental pillars supporting it ceases\.
matchre return ^You feel mentally fatigued as your heightened paranoia ceases to enhance your knowledge of nearby escape routes\.
matchre return ^You are no longer able to keep your thoughts free from distraction, and your heightened ability to notice and avoid incoming dangers fails\.
matchre return ^Your concentration runs out, and your rapid analysis of incoming threats ceases\.
put khri stop
goto retry


ask:
var location ask1
var todo $0
ask1:
matchre return ^To whom are you speaking\?
matchre return ^With a sad look
matchre return ^A pure white alfar avenger peers at you
put ask %todo
goto retry


stance:
var location stance1
var todo $0
var current.stance $0
stance1:
matchre return ^You are now set to use your
matchre return ^Your (attack|evasion|parry|shield) ability is now set at
matchre return (Attack|Evade|Parry|Block)
put stance %todo
goto retry


stance.set:
var location stance.set1
var todo $0
stance.set1:
matchre return ^Setting your
matchre return ^Please specify
matchre return ^You have specified a total number
put stance set %todo
goto retry


count:
var location Count1
var todo $0
count1:
matchre return ^You take a quick count of potential threats in the area\.\.\.
matchre return ^You count up the items in your
matchre return ^That doesn't tell you much of anything.
put count %todo
goto retry


forage:
if $Foraging.LearningRate > 33 then return
forage1:
var location forage2
var todo $0
forage2:
matchre return ^Roundtime
matchre return ^You really need to have at least one hand free to forage properly\.
matchre return ^You cannot forage while in combat\!
matchre return ^The room is too cluttered to find anything here\!
put forage %todo
goto retry


collect:
var location collect1
var todo $0
collect1:
matchre return ^Roundtime
matchre return ^You really need to have at least one hand free to forage properly\.
matchre return ^You cannot collect anything while in combat\!
matchre return ^The room is too cluttered to find anything here\!
put collect %todo
goto retry


kick:
var location kick
matchre kick ^You take a step back and run up to the
matchre kick1 ^You can't do that from your position\.
matchre kick1 ^You throw a glorious temper tantrum\!
matchre return ^I could not find what you were referring to\.
put kick pile
goto retry
kick1:
pause
put stand
pause
goto kick

turn:
var location turn1
var todo $0
turn1:
matchre return ^Turn what\?
matchre return ^You turn to the section
put turn %todo
goto retry


study:
var location study1
var todo $0
study1:
matchre return ^You study your
matchre return ^You've already started to make something
matchre return ^You are unable to sense additional information\.
matchre return ^You take on a studious look\.
matchre return ^You should try that where you can see the sky\.
matchre return ^You feel it is too soon to grasp anything new in the skies above\.
matchre return ^Roundtime
matchre return ^Why do you need to study this chart again\?
put study %todo
goto retry


poke:
var location poke1
var todo $0
poke1:
matchre return ^You poke a hole in your
matchre return ^You toss a piece of
matchre return ^You poke a piece of
matchre return ^You tear up the empty envelope and toss it away\.
matchre return ^What were you referring to\?
matchre return ^Going around poking things isn't going to get you far\.
matchre return ^You can't tear up the envelope while there's still paper inside\.
matchre return ^You must be either wearing or holding a plain paper envelope before you can do that\!
put poke %todo
goto retry


drop:
var location drop1
var todo $0
drop1:
matchre return ^You drop
matchre return ^What were you referring to\?
matchre return ^But you aren't holding that\.
put drop %todo
goto retry


aim:
var location aim1
var todo $0
aim1:
matchre return ^You begin to target
matchre return ^You shift your target to
matchre return ^You are already targetting that\!
matchre return ^You need both hands in order to aim\.
matchre return ^At what are you trying to aim\?
matchre return ^Your .+ isn't loaded\!
matchre return ^But the .+ in your right hand isn't a ranged weapon\!
matchre return ^You don't have a ranged weapon to aim with\!
put aim %todo
goto retry


target:
var location target1
var todo $0
target1:
matchre return ^You begin to weave
matchre return ^Your target pattern is already formed
matchre return ^You must be preparing a spell in order to target it\!
matchre return ^You don't need to target the spell you're preparing\.
matchre return ^You are not engaged to anything, so you must specify a target to focus on\!
matchre target2 ^There is no need to target
put target %todo
goto retry
target2:
pause
put face next
put loot
goto target1

load:
var location load1
var todo $0
load1:
matchre return ^Roundtime
matchre return ^Your .+ is already loaded
matchre return ^What weapon are you trying to load\?
matchre return ^You don't have the proper ammunition readily available for your
matchre return ^You can't load .+, silly\!
put load %todo
goto retry


unload:
var location unload
matchre return ^You unload the
matchre return ^You remain concealed by your surroundings, convinced that your unloading
matchre return ^Roundtime:
matchre return ^But your
matchre return ^You don't have a
matchre return ^You can't unload such a weapon\.
matchre return ^Your
put unload
goto retry


pray:
var location pray1
var todo $0
pray1:
matchre return ^You begin to pray
matchre return ^You bow your head
matchre return ^You pray fervently\.
matchre return ^You want to pray here\?
matchre return ^As you utter your prayer
matchre return ^You kneel down and begin to pray\.
matchre return ^You continue praying for guidance\.
matchre return ^You beseech your God for mercy\.
matchre return ^You begin to pray, kneeling before the altar\.
matchre return ^Your fervent prayers are met with a sense of peace and security\.
matchre return ^The soft sound of your prayers wraps itself around you and brings you a sense of tranquility\.
put pray %todo
goto retry


rub:
var location rub1
var todo $0
rub1:
matchre rub1 ^You rub Mythos gently, trying to massage any sore muscles\.
matchre return ^As you rub the orb, it glows slightly more intensely and you feel a strange tugging, as if something has been moved from you to the orb\.
matchre return The strange tugging sensation is gone, leading you to believe that your sacrifice is properly prepared\.
matchre return ^You rub the orb and feel a strange tugging, but nothing really seems to happen\.
matchre return ^You run your fingers over the bones\.
matchre return ^Rub what\?
put rub %todo
goto retry


tap:
var location tap1
var todo $0
tap1:
matchre return ^You tap
matchre stand1 ^Roundtime
put tap %todo
goto retry


stand:
if standing then return
var location stand1
stand1:
matchre return ^You stand back up\.
matchre return ^You swim back up
matchre return ^You are already standing\.
matchre stand1 ^You are so unbalanced you cannot manage to stand\.
matchre stand1 ^You are overburdened and cannot manage to stand\.
matchre stand1 ^The weight of all your possessions prevents you from standing\.
matchre stand1 ^Roundtime
put stand
goto retry


hunt:
var todo $0
hunt1:
var location hunt1
matchre return ^Roundtime
matchre return ^You take note
matchre return ^You move to hunt down your prey\.
matchre return ^Your prey seems to have completely vanished\.
matchre return ^You don't have that target currently available\.
matchre hunt2 ^You'll need to disengage first\.
matchre hunt3 ^You'll need to be standing up, first\.
put hunt %todo
goto retry
hunt2:
put ret
goto hunt1
hunt3:
put stand
pause
goto hunt1


start.humming:
if $Vocals.LearningRate > 30 then return
if "%humming" = "0" then return
var location start.humming1
start.humming1:
matchre return ^You begin to hum
matchre return ^You fumble slightly as you begin to hum
matchre return ^You struggle to begin to hum
matchre return ^You continue to hum
matchre return ^You are already performing something\.
matchre start.humming1 ^You can't focus your attention enough to perform\.
put hum %hum
goto retry


stop.humming:
var location stop.humming
stop.humming1:
matchre return ^You stop playing your song\.
matchre return ^In the name of love\?
put stop hum
goto retry


steal:
var location steal1
var todo $0
steal1:
matchre return ^Roundtime
matchre return ^You start to steal from
matchre return ^You cautiously attempt to lift
matchre return ^You haven't picked something to steal\!
matchre return ^You glance around but your mark seems to be missing\.
matchre return ^You couldn't get close enough to steal anything in time\.
matchre return ^You need at least one hand free to steal\.
matchre return ^You consider it, but
matchre steal1 Stealing from another player signifies
matchre steal1 perform the action again in the next fifteen seconds
matchre return Further player stealing will reset this timer but not message you
matchre return Your profile setting has been locked Open
put steal %todo
goto retry


put:
var location put1
var todo $0
put1:
matchre return ^You drop
matchre return ^You put
matchre return ^You reverently place
matchre return ^As you start to place
matchre return ^What were you referring to\?
matchre return ^You briefly twist the top
matchre return ^As you put the wax label
put put %todo
goto retry


lean:
var location lean1
var todo $0
lean1:
matchre return ^You lean
matchre return ^You shift your weight\.
matchre return ^I could not find what you were referring to\.
put lean %todo
goto retry


eat:
var location eat1
var todo $0
eat1:
matchre return ^You'd be better off trying to drink
matchre return ^What were you referring to\?
matchre return ^You eat
matchre return ^You can't drink a
matchre return ^You drink
put %todo
goto retry


gesture:
var location gesture1
var todo $0
gesture1:
matchre return ^you gesture\.
matchre return ^Roundtime:
matchre return ^As you intone a quiet prayer to Meraud, your hands begin to glow with a faint silvery nimbus\.
put gesture %todo
goto retry


retreat:
var location retreat
matchre retreat ^You retreat from combat\.
matchre retreat ^You retreat back to pole range\.
matchre retreat ^You stop advancing
matchre retreat ^You sneak back out
matchre retreat ^You must stand first\.
matchre return ^You are already as far away as you can get\!
matchre return ^You try to
matchre return revealing your hiding place\!
put retreat
goto retry


2retreat:
var location 2retreat
matchre return ^You stop advancing
matchre return ^You retreat from combat\.
matchre return ^You retreat back to pole range\.
matchre return ^You sneak back out
matchre return ^You are already as far away as you can get\!
matchre return ^You try to
matchre return revealing your hiding place\!
put retreat
goto retry

ret:
if $monstercount > 0 then
{
  put retreat;retreat
  pause .2
}
return


advance:
var location advance1
var todo $0
if "%dist" = "melee" then RETURN
advance1:
matchre return ^What do you want to advance towards\?
matchre return ^You begin to advance on
matchre return ^You are already advancing on
matchre return ^You are already at melee with
matchre return ^You begin to stealthily advance on
matchre return ^You spin around to face
matchre return ^You will have to retreat from your current melee first\.
matchre return ^is already quite dead.
put advance %todo
goto retry


swap:
var location swap1
var todo $0
swap1:
matchre return ^You have nothing to swap\!
matchre return ^You move
matchre return ^You turn
matchre return ^You deftly change
matchre return ^You effortlessly switch
matchre return ^You fiercely switch
matchre return ^You switch your
matchre return ^Your eyes blaze
matchre return ^With a quiet
put swap %todo
goto retry


swap_right:
var location swap_right
matchre return ^You have nothing
matchre return to your righT hand
matchre swap_right to your left hand
put swap
matchwait


swap_Left:
var location swap_Left
matchre return ^You have nothing
matchre swap_Left to your righT hand
matchre return to your left hand
put swap
matchwait


block.stop:
var location block.stop
matchre return ^Okay\.
matchre return ^You stop trying to defend against
matchre return ^You aren't trying to defend against a second foe\!
put block stop
goto retry


dump.junk:
var location dump.junk
matchre return ^\[You have marked this room to be cleaned by the janitor\.  It should arrive shortly.\]
matchre return ^The janitor was recently summoned to this room\.  Please wait \d+ seconds\.
matchre return ^You should just kick yourself in the shin\.  There is no junk here\.
put dump junk
goto retry


flee:
var todo $0
flee1:
var location flee1
matchre return ^You assess your combat situation and realize you don't see anything engaged with you
matchre return ^Your attempt to flee has failed
matchre return ^Your fate is sealed
matchre return ^You melt into the background, convinced that your misdirect was successful
matchre return ^You manage to free yourself from engagement
matchre return ^How do you expect to flee with your
matchre flee2 ^You should stand up first\.
put flee %todo
goto retry
flee2:
gosub stand
goto flee1


appraise:
var location appraise1
var todo $0
appraise1:
matchre return ^Taking stock of its
matchre return ^It's dead
matchre return ^Appraise what\?
matchre return ^Roundtime
matchre return ^You cannot appraise that when you are in combat\!
matchre return ^I could not find what you were referring to\.
put appraise %todo
goto retry


Attack:
var todo $0
var location attack1
if $stamina < 85 then pause 3
pause .1
Attack1:
if $stamina < 85 then pause 4
if $standing = 0 then put stand
matchre return ^But you are already dodging!
matchre advance2 ^It would help if you were closer
matchre advance2 ^You aren't close enough to attack\.
matchre advance2 ^You are already advancing
matchre advance2 isn't even standing up\.
matchre return ^You don't have a weapon to draw with\!
matchre return ^But you don't have a ranged weapon in your hand to fire with\!
matchre return ^You must have both hands free to use the
matchre return ^But your .* isn't loaded\!
matchre return ^You need two hands to wield this weapon\!
matchre return ^I could not find what you were referring to\.
matchre return ^At what are you trying
matchre return ^There is nothing else to face
matchre return ^How can you snipe if you are not hidden\?
matchre return ^What are you trying to throw?
matchre return ^\[Roundtime
matchre return ^Roundtime:
matchre TESTING is already quite dead\.
matchre return ^The .* is already debilitated\!
matchre return ^You must be hidden or invisible to ambush\!
matchre return ^The khuj is too heavy for you to use like that\.
matchre attack2 ^You should stand up first\.
put %todo
goto retry

advance2:
if $hidden = 1 then put shiver
pause
put engage
pause 2
goto Attack1

attack2:
put stand
pause
goto Attack1


Skinning.Arrange:
var location Skinning.Arrange
matchre Skinning.Arrange ^You properly arrange
matchre Skinning.Arrange ^Roundtime
matchre return has already been arranged as much as you can manage\.
matchre return ^Arrange what\?
matchre return ^Try killing the
put arrange
goto retry


pre.skin:
if %skin = 0 then goto Return
if "%current.stance" != "custom" then gosub stance custom
gosub stowing
gosub get my skinning knife
return


Skinning:
var location Skinning
matchre return ^.*can't be skinned
matchre return ^Skin what\?
matchre return ^Living creatures often object to being flayed alive\.
matchre return ^There isn't another
matchre return ^You hideously bungle the attempt
matchre return ^Somehow managing to do EVERYTHING wrong
matchre return ^Some days it just doesn't pay to wake up\.
matchre return ^Despite your best efforts,
matchre return ^You bumble the attempt
matchre return ^You claw
matchre return ^You fumble and make an improper cut
matchre return ^Your .* twists and slips in your grip
matchre pre.skin ^You will need a more appropriate tool for skinning
matchre pre.skin ^You must have one hand free to skin\.
matchre pre.skin ^You'll need to have a bladed instrument to skin with\.
matchre Skinning ^You approach \w+'s kill
matchre Skinning.Empty ^You struggle with the
matchre Skinning.Empty ^Roundtime
matchre Skinning.Empty ^A heartbreaking slip
matchre Skinning.Empty ^You skillfully peel
matchre Skinning.Empty ^You skin
matchre Skinning.Empty ^You work diligently at skinning
matchre Skinning.Empty ^You work hard at peeling
matchre Skinning.Empty ^You skillfully peel
matchre Skinning.Empty ^You slice away a bloody trophy
matchre Skinning.Empty ^Some greater force guides your hand
matchre Skinning.Empty ^Moving with impressive skill and grace
matchre Skinning.Empty ^Working deftly
put skin
goto retry
Skinning.Empty:
gosub stowing
return


bundle:
var location bundle
matchre return ^You try to stuff your eye into the bundle but can't seem to find a good spot\.
matchre return ^You stuff your
matchre return ^You bundle up your
matchre bundle2 ^That's not going to work\.
put bundle eye
goto retry

bundle2:
if "$lefthand" != "Empty" then put stow left
put get bundling rope
goto bundle


sell:
var location sell1
var todo $0
sell1:
matchre return ^"Hmm\?" says Scupper, "What are you talking about\?"
matchre return ^You ask Scupper to buy a lumpy bundle\.
matchre return ^Scupper separates the bundle and sorts through it carefully
matchre return ^Sell what\?
matchre return ^I could not find what you were referring to\.
put sell %todo
goto retry


Dodge:
var location Dodge
matchre return ^You are already in a position
matchre return ^But you are already dodging\!
matchre return ^You move into a position
matchre return ^You need two hands to wield this weapon\!
matchre return ^Roundtime
put Dodge
goto retry


Parry:
var location Parry
matchre return ^You are already in a position
matchre return ^Roundtime:
matchre return ^You are already in a position to parry\.
matchre return ^You need two hands to wield this weapon\!
matchre return ^You move into a position
put Parry
goto retry


EXP:
var location EXP1
var todo $0
EXP1:
matchre return ^EXP HELP for more information
matchre return ^Overall state of mind:
put EXP %todo
goto retry


INFO:
var location INFO
matchre return ^Wealth:
matchre return ^Concentration :
matchre return ^Debt:
put INFO
goto retry


health:
var location health
   matchre return.p ^Your body feels
   matchre return.p ^Your spirit feels
   put health
goto retry

location1:
GOSUB stop.humming1
goto %location

location.p:
pause

location:
pause .3
goto %location

mind:
var location mind1
mind1:
matchre return ^EXP HELP for more information
matchre return ^Overall state of mind:
put mind
goto retry


shiver:
var location shiver
matchre return ^A shiver runs up your spine\.
put shiver
goto retry


HIDE:
var location HIDE
matchre return reveals you, ruining your hiding attempt
matchre return discovers you, ruining your hiding place\!
matchre return notices your attempt to hide\!
matchre return ^Eh\?  But you're already hidden
matchre return ^You melt into the background
matchre return ^You slip into a hiding
matchre return ^You blend in with your surroundings
matchre return ^You can't hide in all this armor\!
matchre return ^Roundtime
put HIDE
goto retry


stalk:
var location stalk
matchre return ^Stalk what\?
matchre return ^Stalking is an inherently stealthy endeavor, try being out of sight\.
matchre return ^You are already stalking
matchre return alerts others of your attempt to slip behind
matchre return Roundtime:
put stalk
goto retry


stop.stalk:
var location stop.stalk
matchre return ^You stop stalking\.
matchre return ^You're not stalking anything though\.
put stop stalk
goto retry


drag:
var location drag1
var todo $0
drag1:
matchre return ^I could not find what you were referring to\.
matchre return ^Don't be silly\!
matchre return ^Roundtime
put drag %todo
goto retry


climb:
var todo $0
climb1:
var location climb1
if $stamina < 60 then pause 3
if $standing = 0 then put stand
matchre climb1 ^Roundtime
matchre climb2 ^You are engaged
matchre climb3 ^Stand up first\.
matchre return ^Obvious
matchre return ^  CLIMB
matchre return ^CLIMB
matchre return ^You continue to practice
matchre return ^You should stop practicing
matchre return ^You begin to practice
matchre location.p ^You are too tired to climb that\.
matchre location.p ^All this climbing back and forth is getting a bit tiresome
put climb %todo
goto retry
climb2:
put ret
goto climb1
climb3:
put stand
goto climb1

BANK.DEPOSIT:
put deposit all
wait 2
gosub move 42
waitfor YOU HAVE ARRIVED
return

GEM.SWAPING:
wait 1
put .gemswap
waitforre DONE SWAPPING GEMS
return

GEM.SELLING:
put .sellgem
waitfor ^DONE SELLING GEMS|DONE SELLING GEMS
return


############################
#  GET HEALED SECTION      #
############################

HEALING:
GET.HEALED:
pause .5
pause .5
HEALTH.CHECK:
matchre HEAL.DONE You have no significant injuries
matchre HEAL1 minor abrasions|scratches|cuts|bruises|slashes|crushed|holes|shattered|destroyed|torn|difficulty breathing
matchre HEAL1 scarring|gashes|malformed|twitch|twitching|numbness|battered|beat up|bad shape|poisoned|disease|bleeding
put health
matchwait 20
goto HEAL1

HEAL1:
if "%HEALWAIT" = "YES" then 
{
pause 15
}
matchre HEALWAIT I will now heal|I am preparing to heal|You are all healed|All clean|You are healed
matchre HEAL2 try again|cleaning up|busy|still healing myself|try again|check back|I could not find|blacklisted|Please wait
put lean sawbone
matchwait 12
goto HEAL2

HEAL2:
pause .5
matchre HEALWAIT I will now heal|I am preparing to heal|All clean|You are healed|You are all healed
matchre HEAL3 try again|cleaning up|busy|still healing myself|try again|check back|I could not find|blacklisted|Please wait
put lean beerfest
matchwait 12
goto HEAL3

HEAL3:
matchre HEALWAIT I will now heal|I am preparing to heal|All clean|You are healed|You are all healed
matchre GET.HEALED.LOOP try again|cleaning up|busy|still healing myself|try again|check back|I could not find|blacklisted|Please wait
put lean gator
matchwait 12
goto HEAL1

HEALWAIT:
put hum jig
matchre HEALTH.CHECK.1 If your still hurt wait till I heal 
matchre HEAL.DONE all healed|All clean|You are healed|nods to you
matchwait 120
goto HEAL.DONE

GET.HEALED.LOOP:
if %EMPATH.LOOP = ON then goto GO.AUTOPATH
echo *** Empaths are all busy or missing... pausing..
pause 30
var EMPATH.LOOP ON
goto GET.HEALED

GO.AUTOPATH:
put #echo >Log Hotpink ** Using NPC Empath
echo NO EMPATHS! AUTOHEALING!!
goto AUTOPATH

TO.HEALER:
AUTOPATH:
var LAST DISARMING
if "$zoneid" == "TF1" then gosub BANK.MOVE.FROM.ARCH
pause .5
pause .1
gosub move 458
pause .5
put join list
wait 2
send fall
pause
action goto AUTOPATH.LEAVE when You have no significant injuries|Please get up and out of here|Kindly leave, I have other patients to help

AUTOPATH.WAIT:
action goto AUTOPATH.LEAVE when You have no significant injuries|Please get up and out of here|Kindly leave, I have other patients to help
if $sitting = 1 then goto AUTOPATH.LEAVE
put hum $hum
put health
goto AUTOPATH.WAIT

AUTOPATH.LEAVE:
action remove You have no significant injuries|Please get up and out of here|Kindly leave, I have other patients to help
put #script abort 
pause .1
GOSUB STAND
pause .1
pause .2
var HEALING NO
put #echo >Log Fuchsia ** GOT HEALED VIA NPC
send out
pause .5
pause .5
gosub move 467
waitfor YOU HAVE ARRIVED
gosub move 9
waitfor YOU HAVE ARRIVED

HEALTH.CHECK.1:
var HEALWAIT YES
goto HEALTH.CHECK

HEAL.DONE:
put #echo >Log HotPink *** GOT HEALED!
put #math HEALING_LOOP add 1
var HEALWAIT NO
ECHO ***** HEALED ******
gosub BANK.MOVE.FROM.ARCH
gosub MOVE.HUNTING.AFTER.HEAL
goto TOP

############################
## MOVEMENTS TO AND FROM  ##
##      MOVE GOSUB        ##
############################

SELL.BUNDLE.MOVE:
gosub move 349
wait .5
gosub move 220
wait .5
put sell my bun
wait .3
put rope in my back
wait .3
put get my bun
wait .3
put sell my bun
wait .3
put rope in my back
wait .3
put get my bun
wait .3
put sell my bun
wait .3
put rope in my back
wait .3
goto GEM.SWAPING

ROOM.CHECK:
if "$roomid" = "0" then gosub moveRandomDirection
pause 0.5
RETURN

DISARM.CROSS.MOVE:
gosub move 467
pause .5
gosub move 9
pause .5
goto DISARM

DISARM.RATHA.MOVE:


goto DISARM

ARCH.MOVE.FROM.BANK:
gosub move arch
pause .5
gosub move 9
pause .5
return

BANK.MOVE.FROM.ARCH:
gosub move 6
pause .5
put go door
pause 2
gosub move 42
pause .5
return

GOING.MULTI:
if "$zoneid" = "1" then goto MOVE.MULTI.CROSS
if "$zoneid" = "90" then goto MOVE.MULTI.RATHA

MOVE.MULTI.CROSS:
gosub move 171
pause .5
gosub move 444
goto MULTI.SKILL

MOVE.MULTI.RATHA:
gosub move 228
pause .5
gosub move 19
goto MULTI.SKILL

GOING.HUNTING.CROSS:
if "$zoneid" = "1" then goto MOVE.HUNTING.CROSS
if "$zoneid" = "90" then goto MOVE.HUNTING.RATHA
goto GOING.HUNTING.CROSS

MOVE.HUNTING:
if "$zoneid" = "1" then goto MOVE.HUNTING.CROSS
if "$zoneid" = "90" then goto MOVE.HUNTING.RATHA
goto MOVE.HUNTING

MOVE.HUNTING.AFTER.HEAL:
gosub move pawn
pause .5
gosub move 249
pause .5
return

MOVE.HUNTING.CROSS:
gosub move 171
pause .5
gosub move 444
pause .5
goto COMBAT

MOVE.HUNTING.RATHA:
gosub move pawn
pause .5
put .ratha leucro
waitforre YOU HAVE ARRIVED
gosub move 73
goto COMBAT

RUNNING:
if "$zoneid" = "1" then goto CROSS.HEAL
if "$zoneid" = "12" then goto CROSS.HEAL.MOVE.REAVER
if "$zoneid" = "7" then goto CROSS.HEAL.MOVE.TROLL
if "$zoneid" = "90a" then goto RATHA.HEAL.MOVE.SPRITE
if "$zoneid" = "90" then goto RATHA.HEAL
if "$zoneid" = "92" then gosub RATHA.MOVE.HEAL.LEUCRO
wait 15
goto running

CROSS.RUN:
if "$roomid" = "40" then goto CROSS.RUN.MOVE.REAVER
if "$roomid" = "444" then goto CROSS.RUN.MOVE.TROLL
return 15
goto CROSS.RUN

RATHA.MOVE.HEAL:
gosub move 1
goto Running

CROSS.MOVE.BANK:
gosub move 42
pause .5
goto END

RATHA.MOVE.BANK:
gosub move 51

RATHA.BOX.GATHER:
gosub move 228
pause .3
gosub move 19
pause .3
put .loot
waitforre NO MORE BOXES
goto BOX.GATHER

BOX.GATHER:
gosub move 22
pause .3
put .geniehunter appr lootall block stance claymore
wait 500
put #script abort geniehunter
pause .3
put stow clay
pause .3
goto RATHA.RUN

RATHA.RUN:
if "$zoneid" = "92" then goto RATHA.RUN.MOVE.LEUCROS
if "$zoneid" = "90a" then goto RATHA.RUN.MOVE.SPRITE
wait 15
goto RATHA.RUN

RATHA.RUN.MOVE.SPRITE:
gosub move 1
pause .5
return

RATHA.RUN.MOVE.LEUCROS:
gosub move 66
pause .3
put stow right
pause .3
put stow left
pause .3
put .ratha bank
waitforre YOU HAVE ARRIVED
return

CROSS.RUN.MOVE.TROLL:
gosub move 349
pause .5
gosub move 42
pause .5
return

CROSS.RUN.MOVE.REAVER:
gosub move 48
pause .5
gosub move 349
pause .5
gosub move 42
pause .5
return

CROSS.HEAL:
gosub move arch
pause .5
gosub move 9
pause .5
gosub HEALING

RATHA.HEAL:
gosub move arch
pause .5
gosub move 9
pause .5
gosub HEALING

RATHA.HEAL.MOVE.SPRITE:
gosub move 1
gosub HEALING

RATHA.MOVE.HEAL.LEUCRO:
RATHA.HEAL.MOVE.LEUCROS:
gosub move 66
pause .5
put .ratha bank
waitforre YOU HAVE ARRIVED
pause .4
return


CROSS.HEAL.MOVE.REAVER:
gosub move 48
pause .5
gosub move 349
pause .5
gosub ARCH.MOVE.FROM.BANK
pause .5
Gosub HEALING

CROSS.HEAL.MOVE.TROLL:
gosub move 349
pause .5
gosub ARCH.MOVE.FROM.BANK
pause .5
Gosub HEALING

DISARM.RUN:
gosub CROSS.RUN.MOVE.TROLL
pause .5
gosub ARCH.MOVE.FROM.BANK
pause .5
goto DISARM

DIRGE.TEMPLE:
gosub move 71
pause .5
gosub move 349
pause .5
gosub ARCH.MOVE.FROM.BANK
pause .5
gosub HEALING

CROSS.TEMPLE:
gosub move 3
pause .5
gosub ARCH.MOVE.FROM.BANK
pause .5
gosub HEALING

retry:
matchre location ^\.\.\.wait
matchre location ^Sorry, you may
matchre location ^Sorry, system is slow
matchre location.p ^You don't seem to be able to move to do that
matchre location.p ^It's all a blur
matchre location.p ^You're unconscious\!
matchre location.p ^You are still stunned
matchre location.p There is no need for violence here\.
matchre location.p ^You can't do that while entangled in a web\.
matchre location.p ^You struggle against the shadowy webs to no avail\.
matchre location.p ^You attempt that, but end up getting caught in an invisible box\.
matchre location1 ^You should stop playing before you do that\.
matchre location1 ^You are a bit too busy performing to do that\.
matchre location1 ^You are concentrating too much upon your performance to do that\.
return

move.retry:
	math move.retry add 1
	if %move.retry > 5 then goto move.fail
	echo ***
	echo *** Retrying move to $1 $2 in %move.retry second(s).
	echo ***
	pause %move.retry
	goto move.goto
move:
	var move.skip 0
	var move.retry 0
	var move.fail 0
	var move.room $0
move.goto:
	matchre move.return ^YOU HAVE ARRIVED
	matchre move.skip ^SHOP CLOSED
	matchre move.retry ^MOVE FAILED
	matchre move.fail ^DESTINATION NOT FOUND
	put #goto %move.room
	matchwait
move.fail:
	var move.fail 1
	goto move.return
move.skip:
	var move.skip 1
move.return:
put #parse YOU HAVE ARRIVED
put #parse YOU HAVE ARRIVED
put #parse YOU HAVE ARRIVED
	return
moveRandomDirection:
if $north then
{
put north
return
}
if $northeast then
{
put northeast
return
}
if $east then
{
put east
return
}
if $southeast then
{
put southeast
return
}
if $south then
{
put south
return
}
if $southwest then
{
put southwest
return
}
if $west then
{
put west
return
}
if $northwest then
{
put northwest
return
}
if $out then
{
put out
return
}
if $up then
{
put up
return
}
if $down then
{
put down
return
}
echo no random direction possible? looking to attempt to reset room exit vars
#might need a counter here to prevent infinite loops
put look
waitforre ^Obvious
pause
goto moveRandomDirection


end.of.script:
