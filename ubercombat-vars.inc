##################################################################################################################################
##################################################################################################################################
## UBER COMBAT - MASTER USER VARIABLES
# version 6.0
#############################################
#
# MUST SET ALL VARIABLES FOR EACH CHARACTER YOU USE!
# DO NOT RENAME THIS FILE! MOVE DIRECTLY INTO GENIE SCRIPTS FOLDER
# IT SHOULD BE NAMED 'ubercombat-vars.inc'  (~NOT~ .cmd)
#
# All variables must be set FOR EACH INDIVIDUAL CHARACTER!
# Set your Character Names under the LOAD_VARS: label below (MAX OF 15)
# Then Set the variables specific to each character in the blocks below that (specific to that character number)
# EXAMPLE: Search File for CHARACTER4: to set all the variables for Character 4
#
# AS A RULE ALL VARIABLES FOLLOW THE SAME GENERAL FORMAT 
# THEY CAN EITHER BE SET TO ONE OF THE FOLLOWING:
# 1. Binary Option (ON or OFF) 
# 2. Name/Noun Option (Noun/Name of item OR NULL (OFF)) 
#
# AS A GENERAL RULE - IF IT REQUIRES A NAME - SET THE ROOT NOUN OF THE ITEM 
# TO SKIP - OR TURN SOMETHING OFF - SET IT TO 'NULL' OR 'OFF'
# 
# BE VERY EXACT WITH WEAPON/AMMO/CONTAINERS VARIABLES - USE TWO WORDS WHEN POSSIBLE!
# IF A VARIABLE IS BINARY IT WILL BE EITHER ON or OFF 
# Set a variable to 'NULL' if you want to SKIP using that skill or have the script IGNORE / TURN OFF the variable
#
# You CAN use multiple words to be more specific when defining variables (and it IS RECOMMENDED for WEAPONS & AMMO )
# For example set SlingAmmo to "smooth rock" instead of "rock" - To avoid issues or conflicts picking up random critter/room junk 
#
##################################################################################################################################
##################################################################################################################################

LOAD_VARS:
## SET YOUR CHARACTERS NAMES BELOW (EVERYONE WHO WILL BE USING UBERCOMBAT)
     var CHARACTER1 Hayiri	
     var CHARACTER2 Thyon
     var CHARACTER3 Cupcayk
     var CHARACTER4 Dkar
     var CHARACTER5 Zynali
     var CHARACTER6 Lillimay
     var CHARACTER7 Feathergrowl
     var CHARACTER8 Thandra
     var CHARACTER9 Hyapatia
     var CHARACTER10 Kimchee
     var CHARACTER11 Meal 
     var CHARACTER12 Amesia
     var CHARACTER13 NULL
     var CHARACTER14 NULL
     var CHARACTER15 NULL
     
### GLOBAL TRASH ITEMS - SCRIPT WILL TRASH ALL THESE ITEMS FROM YOUR BAGS ACROSS ~ALL~ CHARACTERS!
### **BE EXTREMELY CAREFUL WHAT YOU PUT HERE**!!
### SET - var trash NULL - IF YOU DONT WANT IT TO DUMP ANYTHING AT ALL - OR AREN'T SURE WHAT YOU ARE DOING 
### BE SPECIFIC AS POSSIBLE WITH THE ITEM NAME (USE 2 WORDS) - DO NOT USE SHORT NAMES TO PREVENT FALSE POSITIVES!
     var trash animal bladder|arrowhead|balsa cube|bangles|bathrobe|blanket|blossom|brown clay|braided grass|braided vine|butcher's knife|canvas tote|cider jug|cufflink|choker|cylinder|crystal globe|diamondique lockpick|earrings|glass vase|gold stove|hairbrush|haircomb|handkerchief|house slippers|house mouse|Imperial dira|ironwood crossbow|keepsake box|Kerenhappuch globe|kitchen rat|letter opener|lunchbox|marauder's blade|material|mesh sieve|metal circle|mouse snare|napkin|nightcap|nightgown|oak cube|oval shield|paperweight|pajama|pillow|piggy bank|razor|srhhtel hammer|slim parry stick|srhhtel mace|srhhtel sword|steel striker|steel scimitar|shaker|silver pendant|tankard|thin diary|tool case|witch ball|woodwind case
     
## METAL TYPES TO SELL (BARS/NUGGETS/INGOTS) that you want the script to sell (will keep anything NOT in this list) 
     var metalstosell brass|bronze|coal|copper|covellite|iron|lead|nickel|oravir|pewter|silver|tin|zinc|gold|electrum|platinum|steel     
     
# YOU MUST SET THE VARIABLES FOR EACH SPECIFIC CHARACTER IN THE BLOCKS BELOW!
# SEARCH FOR THE CHARACTER NUMBER SPECIFIC TO THEM AND EDIT THE VARIABLES UNDERNEATH Search: CHARACTER1, CHARACTER2, etc
CHARACTER1:
#########################################################################################################
#########################################################################################################
## CHARACTER 1 VARIABLES                  Hayiri
## *CHARACTER1 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER1" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF 
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE Normal 
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER Fuligin umbral moth
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER Arthelun cabalist
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People you will hunt with) Put your friends names in place of these. Ex. Bob|Fred|George
# Can just put your name in here or make it blank and it will only find empty rooms.
     var FRIENDS %CHARACTER2|%CHARACTER11|%CHARACTER12|Odium|Breckin|Bayndaid|Orcher|Morvetan|Shepherd|Rhoat|Jimdickens|Amroth|Semantic|Kithkani|Beerfest
          
## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
          
### WEAPON/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST ~EXACTLY MATCH THE ITEM DESCRIPTION WHEN IN HANDS~! (glance) YOU ~CAN~ SET AN ARRAY FOR EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON Hairpin
     var LEWEAPON arzfilt
     var THEWEAPON claymore
     var SBWEAPON bola 
     var LBWEAPON riste
     var THBWEAPON riste 
     var STAVES fan 
     var POLEARMS military fork
     var RANGED.BOW shortbow 
     var RANGED.CROSSBOW NULL
     var RANGED.SLING staff sling 
     var LTWEAPON bola 
     var HTWEAPON Throwing Hammer  
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON fan 
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
# ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons! (Unless Barb) (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 hairpin
     var ALTWEAPON2 fan 
     var ALTWEAPON3 NULL
## BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
## Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON NULL

# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Twohanded_Edged|Heavy_Thrown|Bows
          
## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF 
          
# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 24
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 6
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 500
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 5400
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE PARRY 
     var LE.STANCE PARRY 
     var THE.STANCE PARRY 
     var SB.STANCE PARRY 
     var LB.STANCE PARRY 
     var THB.STANCE shield
     var POLEARMS.STANCE shield
     var STAVES.STANCE PARRY 
     var BOW.STANCE shield
     var CROSSBOW.STANCE shield
     var SLINGS.STANCE shield
     var LT.STANCE shield
     var HT.STANCE shield
     var OH.STANCE shield
     var BRAWL.STANCE EVASION 

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER Arthelun cabalist
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 5400
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC OFF
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE Cutlass
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE zweihander
     var BACKTRAIN.SB cuska
     var BACKTRAIN.LB svidaw sis
     var BACKTRAIN.THB kertig maul
     var BACKTRAIN.STAVES nightstick
     var BACKTRAIN.POLEARMS spear
     var BACKTRAIN.BOW battle bow
     var BACKTRAIN.CROSSBOW lockbow
     var BACKTRAIN.SLING firesilk sling
     var BACKTRAIN.LT throwing axe
     var BACKTRAIN.HT spear
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH cutlass
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls ON
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option all
     
# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container GEARBAG
     var Container.Boxes HAVERSACK
     var Container.Backup GEARBAG 
     var Container.Crafting GEARBAG 
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo QUIVER
     var Container.Ammo.Backup BALDRIC
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch SWEETS POUCH 
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch GEARBAG 
# SHEATH CONTAINER IS FOR STORING SUPER LONG WEAPONS BUT CAN BE ANY EXTRA LARGE CONTAINER
     var Container.Sheath BALDRIC 
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 BALDRIC 
     var Sheath.1.Weapons HAIRPIN|SPEAR |BASTARD SWORD|BOLA|SHORTBOW|STAFF SLING|claymore
     var Sheath.2 war belt
     var Sheath.2.Weapons white axe
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
          
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF 
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it ) 
     var Gempouch.Worn ON
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
     if (!$AMMOSWAP) then
{
     var XbowAmmo blunt-tipped bolt
     var BowAmmo blunt-tipped arrow
     var SlingAmmo BLUNT STONE
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock OFF
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield SHIELD 
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var FACE.ARMOR NULL
     var HEAD.ARMOR SALLET
     var ABDOMEN.ARMOR plate
	 var CHEST.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL 
     var HAND.ARMOR SCALE GLOVES
     var LEG.ARMOR NULL 
     var KNUCKLE NULL 
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE ~WORN~ SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON 

#### COMBAT OPTIONS ####
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType THROW
# BONDED THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |bob|weave|attack left
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth OFF
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS 
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 12
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget skin
     var ArrangeAll OFF  
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 70
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 0
# RETREAT WHILE USING RANGED WEAPONS/BUFFING? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 1
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 SIPAR 
     var app2 PLATE 
     var app3 BLACK POUCH 
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zills
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF 
     var Tarantula.Name spider
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic
     var Armor.skills Defending
     var Survival.skills Evasion|Perception
     var Weapons.skills Melee_Mastery|Missile_Mastery|Brawling
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff|crystal
     var Wand1 null
     var Wand2 null
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container null
     var Wand2.Container null
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm steelsilk balaclava
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm NULL
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 gauntlet
     var PLATE2 greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged gloves
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE (ON or OFF) - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT SCRIPT AFTER ESCAPING FROM COMBAT! AND WILL PARSE: HELP ESCAPE PLZ!
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON 
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON 
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb THIGH BAG 
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON 
     var FAVOR.GOD CHADATRU
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT null
     var REPAIR.KIT.CONTAINER null
     var REPAIR.KIT.2 null
     var REPAIR.KIT.2.CONTAINER null
     var REPAIR.KIT.WEAPON null
     var REPAIR.KIT.ARMOR null
     var REPAIR.KIT.3.CONTAINER null
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF 
     var ROPE.NAME climbing rope
     var Rope.Container carryall
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF 
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE GUIDEBOOK
     var Textbook.Container GEARBAG 
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS 
## The ones with 105 uses per day or infinite ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER my belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE null
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE OFF
     var BURGLE.PAWN OFF
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP OFF
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON 
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF 
     var OUTFITTING OFF 
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY Fang Cove
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG canvas.backpack
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container belt
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM cabinet
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 cabinet
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container carryall
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal
## Setting this to anything OTHER than NULL/OFF will turn OFF the triggers to nod to someone when they ask if you want healing
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name world dragon
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList NULL
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON 
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs OFF 
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth CAMBRINTH LUMP
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 1
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 1
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 2
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual EMERALD CHARM
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM - (set to NULL to not use)
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 2
     var Debilitation.Mana 5
     var Utility.Mana 10
     var Augmentation.Mana 10
     var Warding.Mana 10
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 0
     var Debilitation.Camb 10
     var Utility.Camb 10
     var Augmentation.Camb 10
     var Warding.Camb 10
     var Sorcery.Camb 10
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo MajorPhysicalProtection
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth ON
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
  # SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell EYE
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FS
     var WM.Debilitation.Spell ALA
     var WM.Utility.Spell NULL
     var WM.Augmentation.Spell NULL
     var WM.Warding.Spell NULL
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |ES|MAF|Ease
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 1
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 2
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE ON
     var SummonSB ON
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms ON
     var SummonStaves ON
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool deck
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell HH
     var Cleric.Debilitation.Spell COZ
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell NULL
     var Cleric.Warding.Spell MPP
     var Cleric.Sorcery.Spell CV
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |REV|HYH|GHS
     var Cleric.Cyclics.mana |5|4|5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |MAPP|PFE|Benediction|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 20
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell SF
     var Paladin.Utility.Spell VOS|HOJ
     var Paladin.Augmentation.Spell HES|Courage|SR
     var Paladin.Warding.Spell AA
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics NULL 
     var Paladin.Cyclics.mana |15
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |RW|TK|COUR|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS ONLY? (ON or OFF) - ON will ONLY attack constructs (unless using Absolution vs unded). OFF will attack everything
## WARNING - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 club
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE OFF
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY OFF
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY ON
     var khriFRIGHT OFF
     var khriCUNNING ON
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon OFF
     var barbMonkey ON
     var barbTurtle OFF
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython OFF
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild OFF
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger OFF
     var roarKuniyo ON
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire ON
     var zerkEarthquake ON
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone ON
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation OFF
     var medTenacity ON
     var medSerenity OFF
### END OF CHARACTER 1 VARIABLES
echo **** LOADED %CHARACTER1 VARIABLES
goto END.OF.VARS
}
CHARACTER2:
##################################################################################################################################################################################################################
########################################Thyon#####################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 2 VARIABLES
## *CHARACTER2 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER2" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL 
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE LOCKPICK 
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER ADAN'F Spirit Dancer
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER black goblin
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS 187|175|173|174
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON TANTO
     var LEWEAPON TACHI
     var THEWEAPON NODACHI
     var SBWEAPON BOLA 
     var LBWEAPON THROWING HAMMER
     var THBWEAPON MAUL
     var STAVES nightstick
     var POLEARMS SPEAR 
     var RANGED.BOW shortbow
     var RANGED.CROSSBOW PELLETBOW
     var RANGED.SLING STAFF SLING 
     var LTWEAPON BOLA 
     var HTWEAPON throwing hammer
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON TANTO
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 BOLA 
     var ALTWEAPON2 nightstick
     var ALTWEAPON3 TANTO
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON telek
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF 

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 30
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 4 
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN ON 
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE parry
     var LE.STANCE parry
     var THE.STANCE parry
     var SB.STANCE shield
     var LB.STANCE parry
     var THB.STANCE parry
     var POLEARMS.STANCE parry
     var STAVES.STANCE parry
     var BOW.STANCE shield
     var CROSSBOW.STANCE shield
     var SLINGS.STANCE shield
     var LT.STANCE EVASION
     var HT.STANCE EVASION 
     var OH.STANCE EVASION 
     var BRAWL.STANCE EVASION 

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN ON
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE SKIN
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER storm bull
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 5400
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS 
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM ON
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE cutlass
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB cuska
     var BACKTRAIN.LB bar mace
     var BACKTRAIN.THB bar mace
     var BACKTRAIN.STAVES nightstick
     var BACKTRAIN.POLEARMS light spear
     var BACKTRAIN.BOW yew shortbow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING leather sling
     var BACKTRAIN.LT cuska
     var BACKTRAIN.HT throwing hammer
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH hawkbill
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes ON 
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option all
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container RUCKSACK
     var Container.Boxes DUFFEL BAG 
     var Container.Backup RUCKSACK 
     var Container.Crafting DUFFEL BAG 
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo quiver
     var Container.Ammo.Backup BALDRIC 
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch thigh bag
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch hit RUCKSACK 
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath BALDRIC 
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 BALDRIC 
     var Sheath.1.Weapons tanto|nodachi|bola|nightstick|light spear|shortbow|pelletbow|staff sling|hawkbill
     var Sheath.2 rucksack
     var Sheath.2.Weapons tachi|throwing hammer||MAUL 
     var Sheath.3 clay sheath 
     var Sheath.3.Weapons NULL
     var Sheath.4 Thigh Pouch 
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
     
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch gem pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF 
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
     if (!$AMMOSWAP) then
{
     var XbowAmmo blunt stone 
     var BowAmmo arrow
     var SlingAmmo shard
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock OFF
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield sipar
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR sculpted leathers
     var FACE.ARMOR plate mask 
     var HEAD.ARMOR ring helm
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR scale gloves 
     var LEG.ARMOR Null 
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR leather coat
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL 
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife 
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType throw 
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |bob|circle|weave
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option all
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON 
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget skin 
     var ArrangeAll OFF 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 200
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe ON 
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 0
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 leathers 
     var app2 helm 
     var app3 black pouch
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name cowbell 
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm NULL 
     var Chain_Armor.Helm NULL 
     var Brigandine.Helm NULL 
     var Plate_Armor.Helm NULL 
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 NULL 
     var PLATE2 NULL 
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 NULL 
     var LIGHTARMOR2 NULL 
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS OFF
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb greatcloak
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch )
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON
 
## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Hodierna
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON 
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON 
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container hit backpack
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER cloak 
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON 
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY ON
     var ENGINEERING ON
     var FORGING ON 
     var OUTFITTING ON
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF 
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY Riverhaven 
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG black backpack
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF 
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container hit backpack
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM null
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 null
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container hit backpack
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH OFF 
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script NULL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA ON
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Greilblaze|Arkalye|Penhryn|Phoul|Rzin|Aislynn|Atvus|Neeno|Nawain|
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs OFF
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth watersilk bag 
     var Cyclic.Cambrinth NULL 
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 2
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 2
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate 17
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual emerald charm
     var Ritual.Container clay sheath
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis ON  
     var Augmentation.Symbiosis ON 
     var Warding.Symbiosis ON 
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis ON  
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF 
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 10
     var Debilitation.Mana 12
     var Utility.Mana 17
     var Augmentation.Mana 12
     var Warding.Mana 17
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb NULL
     var Debilitation.Camb 5
     var Utility.Camb 5
     var Augmentation.Camb 5
     var Warding.Camb 5
     var Sorcery.Camb 2
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS OFF 
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF 
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo null
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF
     
#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|FR
     var WM.Cyclics.mana |6|6
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell cl
     var WM.Debilitation.Spell NULL
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell EM
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs TW|SW|SUF|Ignite|
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT OFF
     var SummonLT OFF
     var SummonSE ON
     var SummonLE OFF
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB OFF
     var SummonTHB OFF
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell Dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FOU|FF
     var Cleric.Debilitation.Spell PS|Malediction
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell DemrrisResolve
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics HYH|GHS|REV|SA
     var Cleric.Cyclics.mana 20|20|20|20
     # var Cleric.Cyclics 
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs OM|Auspice|Benediction|SOS
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 35
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs SOL|POM|MPP|MAPP|SAP
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell EC|CAC|
     var Ranger.Debilitation.Spell SWARM|DF|GRIZ|
     var Ranger.Utility.Spell EM|BLEND
     var Ranger.Augmentation.Spell SOTT|HOL|WS|
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell SUF
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics BES 
     var Ranger.Cyclics.mana |8|
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|STW|Bloodthorns|INST|ETC||
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell ala
     var Empath.Debilitation.Spell lethargy
     var Empath.Utility.Spell heal
     var Empath.Augmentation.Spell mef
     var Empath.Warding.Spell ic
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics null
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs ic|
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit OFF
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity OFF
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION OFF
     var khriENDURE OFF
     var khriELIMINATE OFF
     var khriINTIMIDATE OFF
     var khriADAPTION OFF
     var khriAVOIDANCE OFF
     var khriPROWESS ON
     var khriPLUNDER OFF
     var khriTERRIFY OFF
     var khriSIGHT OFF
     var khriFLIGHT OFF
     var khriSAGACITY OFF
     var khriHARRIER OFF
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP OFF
     var khriEVANESCENCE OFF
     var khriGUILE OFF
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE ON
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town OFF
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 2 VARIABLES
     echo **** LOADED %CHARACTER2 VARIABLES
     goto END.OF.VARS
}
CHARACTER3:
##################################################################################################################################################################################################################
#################################################### Cupcayk ######################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 3 VARIABLES
## *CHARACTER3 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER3" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF 
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE LOCK 
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER ORC SCOUT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER ORC BANDIT
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS 48|49
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON shotel|ILTESH|SHOTEL|SICKLE|
     var LEWEAPON bastard sword
     var THEWEAPON bastard sword
     var SBWEAPON bola|cudgel|Skillet|Cupcakes|
     var LBWEAPON riste|Throwing mallet|
     var THBWEAPON riste
     var STAVES Nightstick
     var POLEARMS spear
     var RANGED.BOW shortbow
     var RANGED.CROSSBOW pelletbow
     var RANGED.SLING rowan sling
     var LTWEAPON CUPCAKES|Cudgel|
     var HTWEAPON throwing mallet
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON kris
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 SICKLE
     var ALTWEAPON2 hawkbill 
     var ALTWEAPON3 ILTESH
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 30
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 5
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE PARRY 
     var LE.STANCE PARRY 
     var THE.STANCE SHIELD 
     var SB.STANCE PARRY 
     var LB.STANCE PARRY 
     var THB.STANCE SHIELD 
     var POLEARMS.STANCE EVASION 
     var STAVES.STANCE EVASION  
     var BOW.STANCE SHIELD 
     var CROSSBOW.STANCE SHIELD 
     var SLINGS.STANCE SHIELD
     var LT.STANCE PARRY 
     var HT.STANCE PARRY 
     var OH.STANCE EVASION 
     var BRAWL.STANCE PARRY 

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW short bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container RUCKSACK 
     var Container.Boxes DUFFEL BAG 
     var Container.Backup RUCKSACK 
     var Container.Crafting RUCKSACK 
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo QUIVER 
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch THIGH BAG 
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch DUFFEL BAG 
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath BALDRIC 
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 BALDRIC 
     var Sheath.1.Weapons SPEAR|KRIS|bastard sword|CUPCAKES|SHOTEL|NIGHTSTICK|SICKLE|HAWKBILL|Throwing Hammer|
     var Sheath.2 RUCKSACK 
     var Sheath.2.Weapons PELLETBOW|THROWING MALLET|STAFF SLING|Cudgel|
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo BLUNT STONE 
     var BowAmmo arrow
     var SlingAmmo BLUNT STONE 
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock OFF
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield TARGE 
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR SHIRT
     var FACE.ARMOR MASK 
     var HEAD.ARMOR HELM
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR GLOVES
     var LEG.ARMOR PANTS
     var KNUCKLE NULL 
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType THROW 
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |bob|weave|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS 
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN 
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 200
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 1
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 SHIRT
     var app2 Black Pouch 
     var app3 TARGE 
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn ON
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container NULL
     var Wand2.Container NULL
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb KIMONO
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD GLYTHTIDE
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container RUCKSACK 
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER NULL
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON 
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON 
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH OFF
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON
     var TEACH.SKILL STEALTH 
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY RIVERHAVEN
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG RUCKSACK 
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL 
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container NULL
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF 
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF 
     var Lighter.Name stone
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script ASSZILL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth prism
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 17
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual sunburst
     var Ritual.Container NULL
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis ON
     var Utility.Symbiosis ON
     var Augmentation.Symbiosis ON
     var Warding.Symbiosis ON
     var Sorcery.Symbiosis ON
     var Debilitation.Symbiosis ON
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs ON
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Tailwind
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell Paralysis
     var Empath.Debilitation.Spell NULL
     var Empath.Debilitation.Spell Lethargy|Compel|NB
     var Empath.Utility.Spell Heal
     var Empath.Augmentation.Spell Refresh
     var Empath.Warding.Spell IC
     var Empath.Sorcery.Spell Tailwind
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     #var Empath.Cyclics |AD|REGEN|GS
     var Empath.Cyclics |AD
     var Empath.Cyclics.mana |20
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|IC|GOL|MEF|Tranquility
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit OFF
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass Evasion
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist Dickcheese|Meatcurtains
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind OFF 
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield OFF 
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle OFF 
     var barbBadger OFF 
     var barbPanther OFF 
     var barbPiranha OFF 
     var barbDragon OFF
     var barbMonkey ON  
     var barbTurtle OFF 
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF 
     var barbPython ON 
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild OFF
     var roarWail ON 
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger OFF 
     var roarKuniyo OFF
# Berserks
     var zerkFamine OFF
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire ON 
     var zerkEarthquake ON
     var zerkTornado OFF 
     var zerkFlashflood OFF
     var zerkLandslide OFF  
     var zerkCyclone ON 
     var zerkDrought OFF 
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation OFF 
     var medTenacity ON 
     var medSerenity OFF 
### END OF CHARACTER 3 VARIABLES
     echo **** LOADED %CHARACTER3 VARIABLES
     goto END.OF.VARS
}
CHARACTER4:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 4 VARIABLES
## *CHARACTER4 VARIABLES BLOCK BELOW    Dkar 
if "$charactername" = "%CHARACTER4" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY THEREN 
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM 41
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF 
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE MM
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER MAELSHYVEAN HIEROPHANT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON dagger
     var LEWEAPON Broadsword
     var THEWEAPON Claymore
     var SBWEAPON boomerang 
     var LBWEAPON RISTE
     var THBWEAPON RISTE 
     var STAVES NULL 
     var POLEARMS NULL 
     var RANGED.BOW BOW 
     var RANGED.CROSSBOW crossbow
     var RANGED.SLING NULL 
     var LTWEAPON Boomerang
     var HTWEAPON SKILLET
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON dagger 
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 skillet
     var ALTWEAPON2 dagger 
     var ALTWEAPON3 boomerang
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Twohanded_Edged|Twohanded_Blunt|Bow|Crossbow|Light_Thrown

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF 

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 20
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 4
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE PARRY
     var LE.STANCE PARRY
     var THE.STANCE PARRY
     var SB.STANCE EVASION
     var LB.STANCE PARRY
     var THB.STANCE SHIELD
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE SHIELD
     var SLINGS.STANCE NULL
     var LT.STANCE EVASION
     var HT.STANCE NULL
     var OH.STANCE PARRY
     var BRAWL.STANCE EVASION 

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container KIT
     var Container.Boxes KIT 
     var Container.Backup TRAVELING BAG  
     var Container.Crafting Traveling Bag
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo BALDRIC
     var Container.Ammo.Backup traveling bag
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch thigh pouch
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch traveling bag
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath baldric
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 BALDRIC 
     var Sheath.1.Weapons BROADSWORD|SPIKED HAMMER|DAGGER|CROSSBOW|BOLT|SKILLET|BOOMERANG|RISTE|CLAYMORE|short bow
     var Sheath.2 KIT 
     var Sheath.2.Weapons frying pan|maul|SKILLET 
     var Sheath.3 traveling bag
     var Sheath.3.Weapons NULL
     var Sheath.4 Thigh POUCH
     var Sheath.4.Weapons NULL
     var Sheath.5 BOOT
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF 
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo crossbow bolt
     var BowAmmo arrow
     var SlingAmmo smooth rock
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock OFF 
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield SIPAR
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR LEATHERS
     var FACE.ARMOR plate mask
     var HEAD.ARMOR scale helm
     var ABDOMEN.ARMOR NULL 
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR chain gloves	 
     var LEG.ARMOR NULL 
     var KNUCKLE claws
     var PARRYSTICK parry stick 
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife GUTTING KNIFE
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON 

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON 
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS 
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN 
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 KIT 
     var app2 hauberk
     var app3 PENDANT  
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF 
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON
     
## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD MERAUD 
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF 
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON 
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE compendium
     var Textbook.Container %Container
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON 
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF 
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING ON
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container NULL
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM keepsake box 
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 Keepsake box
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container KIT 
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON 
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script ASSZILL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON  
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth ARMBAND
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 1
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 2
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual ouroboros amulet
     var Ritual.Container NULL
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF 
     var Utility.Symbiosis OFF    
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF 
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF 
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF 
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 7
     var Debilitation.Mana 4
     var Utility.Mana 28
     var Augmentation.Mana 33
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 0
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 0
     var Debilitation.Camb 0
     var Utility.Camb 3
     var Augmentation.Camb 3
     var Warding.Camb 3
     var Sorcery.Camb 0
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo NULL 
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics NULL 
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FS|FB|STRA
     var WM.Debilitation.Spell BURDEN|AL|
     var WM.Utility.Spell Ignite|Zephyr
     var WM.Augmentation.Spell EASE|SUBSTRATUM
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |EASE|MAF|ES|
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell NULL 
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT OFF
     var SummonLT OFF
     var SummonSE OFF
     var SummonLE OFF 
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB OFF
     var SummonTHB OFF
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container bag 
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell PD|TKT|DO|TKS|
     var MM.Debilitation.Spell CALM|SLEEP|Dazzle|Hypnotize|MB
     var MM.Utility.Spell PG|MOONBLADE|RF|SHADOWLING
     var MM.Augmentation.Spell EASE|CV|SEER
     var MM.Warding.Spell MAF|PSY|
     var MM.Sorcery.Spell NULL 
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics NULL 
     var MM.Cyclics.mana 7|7
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs EASE|shadows|MAF|CV|PG|AUS|
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool PRISM|CHART
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF 
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container TELESCOPE CASE 
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass FA
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist 
     var Blacklist Atuen|Riffkin
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 4 VARIABLES
     echo **** LOADED %CHARACTER4 VARIABLES
     goto END.OF.VARS
}
CHARACTER5:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
######################################ZYNALI###################################################################
#########################################################################################################
## CHARACTER 5 VARIABLES
## *CHARACTER5 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER5" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY SHARD
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY Shard
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE EMPATH
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON  
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER LOUT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER RAT 
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS 266
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON foil 
     var LEWEAPON Battle Axe
     var THEWEAPON Claymore
     var SBWEAPON Boomerang
     var LBWEAPON morning star
     var THBWEAPON NULL 
     var STAVES Nightstick
     var POLEARMS NULL 
     var RANGED.BOW SHORTBOW 
     var RANGED.CROSSBOW Crossbow 
     var RANGED.SLING NULL
     var LTWEAPON BOOMERANG 
     var HTWEAPON Skillet  
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON Throwing Axe
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 Boomerang 
     var ALTWEAPON2 Foil
     var ALTWEAPON3 Skillet 
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON sabre
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Bows|Twohanded_Edged|Twohanded_Blunt



## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 300
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 7200
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN ON 
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE PARRY
     var LE.STANCE PARRY
     var THE.STANCE PARRY
     var SB.STANCE EVASION
     var LB.STANCE EVASION 
     var THB.STANCE EVASION 
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE SHIELD
     var CROSSBOW.STANCE SHIELD
     var SLINGS.STANCE SHIELD
     var LT.STANCE SHIELD
     var HT.STANCE SHIELD
     var OH.STANCE PARRY
     var BRAWL.STANCE EVASION

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container RUCKSACK
     var Container.Boxes RUCKSACK
     var Container.Backup DUFFEL BAG
     var Container.Crafting RUCKSACK
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo BALDRIC
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch Thigh BAG
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch hip tote 
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath GREATSWORD SHEATH 
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 BALDRIC
     var Sheath.1.Weapons Foil|chain|throwing axe|boomerang|Shortbow|Battle Axe|Skillet|Nightstick 
     var Sheath.2 greatsword sheath
     var Sheath.2.Weapons Claymore 
     var Sheath.3 BALDRIC
     var Sheath.3.Weapons ARROWS/BOLTS
     var Sheath.4 RUCKSACK
     var Sheath.4.Weapons Heavy Crossbow|morning star|
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch gem pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF 
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo bolt
     var BowAmmo arrow
     var SlingAmmo shard
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield SIPAR
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR ROBES
     var FACE.ARMOR PLATE MASK
     var HEAD.ARMOR SCALE HELM
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL 
     var HAND.ARMOR GAUNTLETS  
     var LEG.ARMOR GREAVES
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON 
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType LOB
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN 
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 55
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 1
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 greaves
     var app2 gem pouch 
     var app3 Robe
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF 
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF 
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Hodierna
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK OFF
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE OFF
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON
     var TEACH.SKILL First Aid
     var TEACH.SKILL.2 EMPATHY
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY ON 
     var ENGINEERING ON 
     var FORGING ON 
     var OUTFITTING ON 
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP ON 
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY CROSSING 
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG BACKPACK 
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container belt
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF 
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF 
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF 
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 99999999
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom 39
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 1
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill 
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth anklet
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 5
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 2
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual leather bag 
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 4
     var Debilitation.Mana 4
     var Utility.Mana 4
     var Augmentation.Mana 4
     var Warding.Mana 4
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 2
     var Debilitation.Camb 2
     var Utility.Camb 2
     var Augmentation.Camb 2
     var Warding.Camb 2
     var Sorcery.Camb 2
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo NULL
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal OFF 
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen OFF 
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics NULL 
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell STRA
     var Necro.Debilitation.Spell HP|BURDEN|PV
     var Necro.Utility.Spell EOTB  
     var Necro.Augmentation.Spell EASE|OBF
     var Necro.Warding.Spell MAF 
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs MAF|EASE|EOTB
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell REB
     var Paladin.Debilitation.Spell SF
     var Paladin.Utility.Spell HOJ
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell AA
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|HES|RW|RUE|Courage
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell LETHARGY
     var Empath.Utility.Spell BS|HEAL 
     var Empath.Augmentation.Spell VH|REFRESH|EASE
     var Empath.Warding.Spell MAF|IC 
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics NULL 
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs EASE|MAF|REFRESH|IC|MEF|
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit OFF 
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity OFF 
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass FA
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist Atuen
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 5 VARIABLES
     echo **** LOADED %CHARACTER5 VARIABLES
     goto END.OF.VARS
}
CHARACTER6:
##################################################################################################################################################################################################################
#########################################################LILLIMAY#######################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 6 VARIABLES
## *CHARACTER6 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER6" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY Crossing
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE F2P
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER FOREST GENI
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON sickle
     var LEWEAPON bastard sword
     var THEWEAPON Claymore
     var SBWEAPON throwing spike
     var LBWEAPON riste
     var THBWEAPON riste
     var STAVES NULL 
     var POLEARMS Null
     var RANGED.BOW bow
     var RANGED.CROSSBOW stonebow
     var RANGED.SLING staff sling
     var LTWEAPON throwing spike
     var HTWEAPON throwing mallet
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON throwing club
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 sickle
     var ALTWEAPON2 throwing spike
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON sabre
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Light_Thrown

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE parry
     var LE.STANCE parry
     var THE.STANCE parry
     var SB.STANCE shield
     var LB.STANCE parry
     var THB.STANCE parry
     var POLEARMS.STANCE parry
     var STAVES.STANCE parry
     var BOW.STANCE shield
     var CROSSBOW.STANCE shield
     var SLINGS.STANCE shield
     var LT.STANCE EVASION
     var HT.STANCE EVASION 
     var OH.STANCE EVASION 
     var BRAWL.STANCE EVASION 


## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container haversack
     var Container.Boxes pack
     var Container.Backup pack
     var Container.Crafting satchel
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo baldric
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch gem pouch
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch haversack
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath baldric
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 baldric
     var Sheath.1.Weapons riste|throwing spike|bastard sword|club|sickle|staff sling|Claymore
     var Sheath.2 pack
     var Sheath.2.Weapons stonebow|throwing mallet
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch gem pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo smooth rock
     var BowAmmo arrow
     var SlingAmmo smooth rock
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK ON
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield sipar
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR hauberk
     var FACE.ARMOR plate mask
     var HEAD.ARMOR chain helm 
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR scale gloves
     var LEG.ARMOR NULL
     var KNUCKLE NULL 
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option treasure
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 hauberk
     var app3 bodice
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch )
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM 
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Tamsine
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON 
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE guide
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON 
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL ON
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON 
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH OFF 
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF 
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container belt
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF 
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 1
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth ring
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 9
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual spider
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF 
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Dazzle
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|FAE|CARE|GJ
     var Bard.Cyclics.mana |2|4|3|4|
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS|STRA
     var Bard.Debilitation.Spell Burden
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell EASE
     var Bard.Warding.Spell REPR
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |EASE|MAF
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 6 VARIABLES
     echo **** LOADED %CHARACTER6 VARIABLES
     goto END.OF.VARS
}
CHARACTER7:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################FEATHERGROWL#######################################################
#########################################################################################################
## CHARACTER 7 VARIABLES
## *CHARACTER7 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER7" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY Crossing
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY cross
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE NORMAL
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER SLEAZY LOUT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON Khukri
     var LEWEAPON Nimsha
     var THEWEAPON Claymore
     var SBWEAPON cuska
     var LBWEAPON svidaw sis
     var THBWEAPON MAUL
     var STAVES Nightstick
     var POLEARMS Skefne 
     var RANGED.BOW shortbow
     var RANGED.CROSSBOW stonebow 
     var RANGED.SLING Sling 
     var LTWEAPON cuska 
     var HTWEAPON svidaw sis 
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON sabre
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 nightstick
     var ALTWEAPON2 cuska
     var ALTWEAPON3 Khukri
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON sabre
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Bows

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 300
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN ON 
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE parry
     var LE.STANCE parry
     var THE.STANCE parry
     var SB.STANCE shield
     var LB.STANCE parry
     var THB.STANCE parry
     var POLEARMS.STANCE parry
     var STAVES.STANCE parry
     var BOW.STANCE shield
     var CROSSBOW.STANCE shield
     var SLINGS.STANCE shield
     var LT.STANCE EVASION
     var HT.STANCE EVASION 
     var OH.STANCE EVASION 
     var BRAWL.STANCE EVASION 

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container haversack
     var Container.Boxes backpack
     var Container.Backup haversack
     var Container.Crafting backpack
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo baldric
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch laufisana
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch silk shirt
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath baldric
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 baldric
     var Sheath.1.Weapons skefne|nightstick|Claymore|nimsha|Khukri|shortbow|bar mace| 
     var Sheath.2 haversack
     var Sheath.2.Weapons stonebow|Svidaw sis|SPEAR
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch gem pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo blunt stone
     var BowAmmo blunt-tipped arrow
     var SlingAmmo blunt stone
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield SHIELD
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR odaj
     var FACE.ARMOR NULL
     var HEAD.ARMOR helm
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR Sleeves 
     var HAND.ARMOR NULL 
     var LEG.ARMOR NULL
     var KNUCKLE NULL 
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON 
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType THROW
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |circle|weave|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget BONE 
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 silk shirt
     var app3 titanese shirt
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON 
## Zill name ( zills / cowbell / etc )
     var Zill.Name Zills
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON
 
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Everild
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK OFF
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF 
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON 
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH OFF 
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING ON 
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG Thigh bag
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container belt
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 15000
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF 
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath Zynali
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom 39
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 1
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth camb ring
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 9
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual spider
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Dazzle
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat NULL 
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell EC|STAMPEDE
     var Ranger.Debilitation.Spell DF
     var Ranger.Utility.Spell compost|EM 
     var Ranger.Augmentation.Spell STW|Athletic
     var Ranger.Warding.Spell MAF|EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |NULL
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |Athletic|MAF|STW|Instinct
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 7 VARIABLES
     echo **** LOADED %CHARACTER7 VARIABLES
     goto END.OF.VARS
}
CHARACTER8:
##################################################################################################################################################################################################################
#############################################THANDRA##############################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 8 VARIABLES
## *CHARACTER8 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER8" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY CROSS 
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY cross
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE F2P
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER LOUT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER SHIP RAT
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON Hawkbill
     var LEWEAPON broadsword
     var THEWEAPON Flamberge
     var SBWEAPON BOLA
     var LBWEAPON bar mace
     var THBWEAPON bar mace
     var STAVES nightstick
     var POLEARMS javelin
     var RANGED.BOW shortbow
     var RANGED.CROSSBOW stonebow
     var RANGED.SLING sling
     var LTWEAPON bola 
     var HTWEAPON Javelin
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON hawkbill
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 scimitar 
     var ALTWEAPON2 nightstick 
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON sabre
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons Twohanded_Edged|Heavy_Thrown|Polearms

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 35
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE SHIELD
     var CROSSBOW.STANCE SHIELD
     var SLINGS.STANCE SHIELD
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes ON
     var B.Loot.Metals ON
     var B.Loot.Scrolls ON 
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container backpack
     var Container.Boxes sack
     var Container.Backup carryall
     var Container.Crafting sack
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo duffel baldric
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch thigh pouch
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch tote
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath duffel baldric
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 baldric
     var Sheath.1.Weapons javelin|shortbow|sling|hawkbill|bar mace|flamberge|arrows|bola|nightstick|scimitar|broadsword
     var Sheath.2 backpack
     var Sheath.2.Weapons stonebow|
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch lavender pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo SHARD
     var BowAmmo arrow
     var SlingAmmo SHARD
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield sipar
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR rugged leathers
     var FACE.ARMOR chain mask
     var HEAD.ARMOR scale helm
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL 
     var HAND.ARMOR gloves
     var LEG.ARMOR NULL 
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON 
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |circle|weave|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option treasure
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget NULL
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways OFF
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 75
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 2
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 carryall
     var app2 sipar
     var app3 bundle
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON 
## Zill name ( zills / cowbell / etc )
     var Zill.Name zills
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm scale helm
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 scale helm
     var PLATE2 chain mask
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON
     
## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Faenella
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING ON 
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON 
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE COMPENDIUM
     var Textbook.Container backpack
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE OFF
     var BURGLE.PAWN OFF
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF 
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON 
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container NULL 
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON 
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF 
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF 
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH OFF
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 1
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script ASSZILL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth Cambrinth Ring
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 9
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 2
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual spider
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy ON 
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo NULL
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell STRA
     var Cleric.Debilitation.Spell BURDEN
     var Cleric.Utility.Spell BLESS
     var Cleric.Augmentation.Spell EASE
     var Cleric.Warding.Spell MAF
     var Cleric.Sorcery.Spell NULL 
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics NULL 
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |MAF|EASE|BLESS|
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb 
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat NULL 
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell STRA
     var Paladin.Debilitation.Spell SF|BURDEN
     var Paladin.Utility.Spell NULL
     var Paladin.Augmentation.Spell EASE
     var Paladin.Warding.Spell MAF|AA
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics NULL
     var Paladin.Cyclics.mana NULL 
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |EASE|MAF|
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon FLAMBERGE
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 8 VARIABLES
     echo **** LOADED %CHARACTER8 VARIABLES
     goto END.OF.VARS
}
CHARACTER9:
##################################################################################################################################################################################################################
#########################################Hyapatia#################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 9 VARIABLES
## *CHARACTER9 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER9" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY Crossing
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE CLERIC 
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER DUCK OGRE
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 420|414|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON sickle
     var LEWEAPON Broadsword 
     var THEWEAPON claymore
     var SBWEAPON bola
     var LBWEAPON THROWING HAMMER
     var THBWEAPON Akabo
     var STAVES NULL 
     var POLEARMS spear
     var RANGED.BOW shortbow
     var RANGED.CROSSBOW NULL 
     var RANGED.SLING leather sling
     var LTWEAPON BOLA
     var HTWEAPON THROWING HAMMER
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON bola
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 bola
     var ALTWEAPON2 sickle
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON sabre
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons BOWS|TWO_HANDED_EDGED|HEAVY_THROWN|

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE CLERIC
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER Wildland GOBLIN
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 900
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE NULL
     var BACKTRAIN.LE NULL
     var BACKTRAIN.THE NULL
     var BACKTRAIN.SB NULL
     var BACKTRAIN.LB THROWING HAMMER
     var BACKTRAIN.THB NULL
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW NULL
     var BACKTRAIN.CROSSBOW NULL
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL NULL
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls ON 
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     
     
# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container BACKPACK
     var Container.Boxes haversack
     var Container.Backup thigh pouch
     var Container.Crafting haversack
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo baldric
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch hip tote
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch thigh pouch
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath haversack
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt thigh pouch
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 baldric
     var Sheath.1.Weapons spear|sickle|akabo|claymore|bola|throwing hammer|shortbow|sling
     var Sheath.2 backpack
     var Sheath.2.Weapons MAUL|stonebow
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch gem pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF 
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo SHARD
     var BowAmmo arrow
     var SlingAmmo SHARD
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield shield
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR LEATHERS
     var FACE.ARMOR scale mask
     var HEAD.ARMOR ring helm
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL 
     var HAND.ARMOR gauntlet
     var LEG.ARMOR NULL 
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth OFF
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType throw
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|pray truffenyi
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget PART
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 1
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 leathers
     var app3 cambrinth ring
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON 
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF 
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Faenella
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON 
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE COMPENDIUM 
     var Textbook.Container backpack
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON 
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM NULL
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container belt
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF 
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH OFF 
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 15000
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot NYZ 
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth TAILBAND
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 7
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual inkwell
     var Ritual.Container haversack
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF 
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo NULL
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell HORN|DR|HE|
     var Cleric.Debilitation.Spell SICK|COZ|HULP
     var Cleric.Utility.Spell BLESS|UNCURSE|POM|EF
     var Cleric.Augmentation.Spell CENTERING| SAP|SOL
     var Cleric.Warding.Spell MPP|PFE|HALO|
     var Cleric.Sorcery.Spell Finesse
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics NULL 
     var Cleric.Cyclics.mana |7|7|7
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |PFE|BLESS|MAF|MAP|AUSPICE|DR|
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb FAENELLA
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat NULL
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 9 VARIABLES
     echo **** LOADED %CHARACTER9 VARIABLES
     goto END.OF.VARS
}
CHARACTER10:
##################################################################################################################################################################################################################
#########################################Kimchee##################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 10 VARIABLES
## *CHARACTER10 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER10" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY cross
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM 307
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE F2P
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER Lout1
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER Shipyard rat
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON impalement stake
     var LEWEAPON Longsword
     var THEWEAPON NULL 
     var SBWEAPON war hammer
     var LBWEAPON Throwing HAMMER
     var THBWEAPON giant mallet
     var STAVES NULL
     var POLEARMS NULL 
     var RANGED.BOW longbow
     var RANGED.CROSSBOW 
     var RANGED.SLING leather sling
     var LTWEAPON war hammer
     var HTWEAPON Throwing HAMMER
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON stake
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 war hammer
     var ALTWEAPON2 impalement stake
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons BOWS|TWO_HANDED_BLUNT|HEAVY_THROWN|

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN ON 
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE SHIELD
     var CROSSBOW.STANCE SHIELD
     var SLINGS.STANCE SHIELD
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE NULL
     var BACKTRAIN.LE NULL
     var BACKTRAIN.THE NULL
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB NULL
     var BACKTRAIN.THB NULL
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes ON 
     var B.Loot.Metals ON
     var B.Loot.Scrolls ON 
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container PACK
     var Container.Boxes haversack
     var Container.Backup duffel bag
     var Container.Crafting bag PACK
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo duffel bag
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch SATCHEL
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch DUFFEL BAG
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath PACK
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 PACK
     var Sheath.1.Weapons IMPALEMENT STAKE|Longsword|WAR HAMMER|GIANT MALLET|FLIGHT BOW|LEATHER SLING|Throwing HAMMER
     var Sheath.2 NULL
     var Sheath.2.Weapons frying pan|sledgehammer
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons longbow
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch GEM pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo NULL
     var BowAmmo arrow
     var SlingAmmo smooth rock
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK ON
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield TARGET SHIELD
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR CHAIN HAUBERK
     var FACE.ARMOR PLATE MASK
     var HEAD.ARMOR SCALE HELM
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR gloves
     var LEG.ARMOR NULL
     var KNUCKLE NULL
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife SKINNING KNIFE
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option Goods
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation waist
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN 
     var ArrangeAll OFF 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 Hauberk
     var app2 HELM
     var app3 gloves
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal OFF
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 NULL
     var PLATE2 NULL
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 NULL
     var LIGHTARMOR2 NULL
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch )
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM 
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD EVERILD
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING ON 
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK OFF
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE NULL
     var Textbook.Container NULL
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER NULL
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH OFF 
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY NULL
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container NULL
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM Keepsake box
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container PACK
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH OFF
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 99000
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 1
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script ASSZILL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth ring
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 6
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 2
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual bottle
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo NULL
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |7|7|7|7|7|7
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell WILL
     var Bard.Warding.Spell REPR
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |RAGE|DRUM|RESONANCE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind OFF
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle OFF
     var barbBadger OFF
     var barbPanther OFF
     var barbPiranha OFF
     var barbDragon OFF
     var barbMonkey OFF
     var barbTurtle OFF
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython OFF
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild OFF
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger OFF
     var roarKuniyo OFF
# Berserks
     var zerkFamine OFF
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 10 VARIABLES
     echo **** LOADED %CHARACTER10 VARIABLES
     goto END.OF.VARS
}
CHARACTER11:
##################################################################################################################################################################################################################
#######################################MEAL#######################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 11 VARIABLES
## *CHARACTER11 VARIABLES BLOCK BELOW     Meal
if "$charactername" = "%CHARACTER11" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY CROSS
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY Crossing
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS OFF
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE F2P
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI ON 
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER Cougar
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER Grass Eel
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON Cutlass
     var LEWEAPON NULL
     var THEWEAPON Claymore
     var SBWEAPON BOLA
     var LBWEAPON NULL
     var THBWEAPON Akabo
     var STAVES NULL
     var POLEARMS light spear
     var RANGED.BOW nisha shortbow
     var RANGED.CROSSBOW toy crossbow
     var RANGED.SLING sling
     var LTWEAPON BOLA
     var HTWEAPON light spear
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON Cutlass
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 BOLA
     var ALTWEAPON2 Cutlass
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons BOW

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN ON 
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container BACKPACK
     var Container.Boxes DUFFEL BAG
     var Container.Backup HARNESS
     var Container.Crafting DUFFEL BAG
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo HARNESS
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch thigh POUCH
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch pannier
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath shadows
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 HARNESS
     var Sheath.1.Weapons SPEAR|Cutlass|BOLA|CLAYMORE|Akabo
     var Sheath.2 BACKPACK
     var Sheath.2.Weapons Crossbow|shortbow
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn OFF
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo crossbow bolt
     var BowAmmo ice arrow
     var SlingAmmo smooth rock
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield Buckler
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR LEATHERS
     var FACE.ARMOR plate mask
     var HEAD.ARMOR ring helm
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR scale gloves
     var LEG.ARMOR NULL
     var KNUCKLE NULL
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife SKINNING knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON 
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle ON 
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation waist
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget SKIN
     var ArrangeAll ON 
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 2
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 HARNESS
     var app2 HELM
     var app3 GLOVES
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON 
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON
     
## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD MERAUD
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE Compendium
     var Textbook.Container %Container
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH OFF
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY NULL
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container NULL
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM Keepsake box
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container BACKPACK
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT OFF
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH OFF
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script asszill
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth Cambrinth orb
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 3
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 2
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual moonsilver clasp
     var Ritual.Container NULL
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 25
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 12
     var Debilitation.Camb 12
     var Utility.Camb 12
     var Augmentation.Camb 12
     var Warding.Camb 10
     var Sorcery.Camb 28
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy ON 
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo RighteousWrath
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell TKS|TKT|PD|DO
     var MM.Debilitation.Spell Dazzle|CAMB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell SEER|Shadows|AUS 
     var MM.Warding.Spell PSY|MAF
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics NULL
     var MM.Cyclics.mana NULL|NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs CV|PG|AUS|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool PRISM|CHART
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container CASE
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 11 VARIABLES
     echo **** LOADED %CHARACTER11 VARIABLES
     goto END.OF.VARS
}
CHARACTER12:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 12 VARIABLES                    Amesia
## *CHARACTER12 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER12" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY CROSSING
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE NECRO
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER NULL
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON Hawkbill
     var LEWEAPON cinquedea
     var THEWEAPON Claymore
     var SBWEAPON Mace
     var LBWEAPON RISTE
     var THBWEAPON RISTE
     var STAVES Gnarled stick
     var POLEARMS NULL
     var RANGED.BOW Longbow
     var RANGED.CROSSBOW NULL
     var RANGED.SLING SLING
     var LTWEAPON BOLA
     var HTWEAPON Mace
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON Hawkbill 
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 Demonbone Mace
     var ALTWEAPON2 Hawkbill
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 20
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 5
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 600
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW short bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container PACK
     var Container.Boxes HAVERSACK
     var Container.Backup NULL
     var Container.Crafting PACK
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo PACK
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch HIP TOTE
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch HAVERSACK
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath HAVERSACK
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 PACK
     var Sheath.1.Weapons Hawkbill|Claymore|cinquedea|Mace|BOLA|Gnarled stick|RISTE|
     var Sheath.2 HAVERSACK
     var Sheath.2 Longbow|Stonebow|
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons Longbow
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch Gem Pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch OFF
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn ON 
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo Shard
     var BowAmmo Boar ARROW
     var SlingAmmo SHARD
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON 
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK OFF 
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield TARGE
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR LEATHERS
     var FACE.ARMOR PLATE MASK
     var HEAD.ARMOR CHAIN HELM
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR SCALE GLOVES
     var LEG.ARMOR NULL
     var KNUCKLE NULL
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON
     
#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth ON
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |Circle|Weave|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option GOODS
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes ON
     var Loot.Metals ON
     var Loot.Scrolls ON 
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget NULL
     var ArrangeAll OFF
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways ON 
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 60
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach ON 
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 Case
     var app2 LEATHERS
     var app3 Bundle
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal OFF
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P OFF
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container NULL
     var Wand2.Container NULL
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub ON 
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm NULL
     var Chain_Armor.Helm NULL
     var Brigandine.Helm NULL
     var Plate_Armor.Helm NULL
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 NULL
     var PLATE2 NULL
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 NULL
     var LIGHTARMOR2 NULL
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Urrem'tier
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF 
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE Guide
     var Textbook.Container PACK
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER NULL
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON 
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE ON
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON 
     var TEACH.SKILL FA
     var TEACH.SKILL.2 STEALTH
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING ON 
     var FORGING ON 
     var OUTFITTING ON 
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY Crossing
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM KEEPSAKE BOX
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container HAVERSACK
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM OFF
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK ON 
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT ON
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN OFF
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE OFF
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot Nyz
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN OFF
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name stone
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script Magic
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth armband
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 1
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 5
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual NULL
     var Ritual.Container NULL
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 1
     var Debilitation.Mana 1
     var Utility.Mana 1
     var Augmentation.Mana 1
     var Warding.Mana 1
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 1
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 1
     var Debilitation.Camb 1
     var Utility.Camb 1
     var Augmentation.Camb 1
     var Warding.Camb 1
     var Sorcery.Camb 1
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM ON 
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Tailwind
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal OFF
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen OFF
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics ROC|ROG
     var Necro.Cyclics.mana 6|6
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS|SV|
     var Necro.Debilitation.Spell VOD|HP|VS
     var Necro.Utility.Spell EOTB 
     var Necro.Augmentation.Spell EASE|OBFUSCATION
     var Necro.Warding.Spell MAF
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs EASE|OBFUSCATION|MAF|EOTB|
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell Paralysis
     var Empath.Debilitation.Spell NULL
     var Empath.Debilitation.Spell Lethargy|Compel|NB
     var Empath.Utility.Spell Heal
     var Empath.Augmentation.Spell Refresh
     var Empath.Warding.Spell IC
     var Empath.Sorcery.Spell Tailwind
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     #var Empath.Cyclics |AD|REGEN|GS
     var Empath.Cyclics |AD
     var Empath.Cyclics.mana |25
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|IC|GOL|MEF|Tranquility
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit OFF
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 12 VARIABLES
     echo **** LOADED %CHARACTER12 VARIABLES
     goto END.OF.VARS
}
CHARACTER13:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 13 VARIABLES
## *CHARACTER13 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER13" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE NORMAL
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER MAELSHYVEAN HIEROPHANT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON sickle
     var LEWEAPON bastard sword
     var THEWEAPON greatsword
     var SBWEAPON mace
     var LBWEAPON sledgehammer
     var THBWEAPON sprinkler
     var STAVES quarterstaff
     var POLEARMS glaes halberd
     var RANGED.BOW composite bow
     var RANGED.CROSSBOW crossbow
     var RANGED.SLING NULL
     var LTWEAPON frying pan
     var HTWEAPON throwing hammer
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON frying pan
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 frying pan
     var ALTWEAPON2 NULL
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 300
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container bottomless.bag
     var Container.Boxes carryall
     var Container.Backup lootsack
     var Container.Crafting satchel
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo quiver
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch thigh bag
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch skull
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath weapon harness
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 weapon harness
     var Sheath.1.Weapons halberd|quarterstaff|bastard sword|maul|greatsword
     var Sheath.2 hip pouch
     var Sheath.2.Weapons frying pan|sledgehammer
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn OFF
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo crossbow bolt
     var BowAmmo arrow
     var SlingAmmo shard
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK ON
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield shield
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR ironwood shirt
     var FACE.ARMOR NULL
     var HEAD.ARMOR brigandine balaclava
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR mail gloves
     var LEG.ARMOR light greaves
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth OFF
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option treasure
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes OFF
     var Loot.Metals ON
     var Loot.Scrolls OFF
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget NULL
     var ArrangeAll OFF
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways OFF
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 balaclava
     var app3 shirt
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub OFF
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD meraud
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE OFF
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM arm pouch
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container NULL
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT ON
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE ON
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script NULL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth shroud
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 9
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual spider
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis ON
     var Utility.Symbiosis ON
     var Augmentation.Symbiosis ON
     var Warding.Symbiosis ON
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis ON
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Dazzle
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 13 VARIABLES
     echo **** LOADED %CHARACTER13 VARIABLES
     goto END.OF.VARS
}
CHARACTER14:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 14 VARIABLES
## *CHARACTER14 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER14" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY (NULL or CITY NAME) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE NORMAL
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER MAELSHYVEAN HIEROPHANT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON sickle
     var LEWEAPON bastard sword
     var THEWEAPON greatsword
     var SBWEAPON mace
     var LBWEAPON sledgehammer
     var THBWEAPON sprinkler
     var STAVES quarterstaff
     var POLEARMS glaes halberd
     var RANGED.BOW composite bow
     var RANGED.CROSSBOW crossbow
     var RANGED.SLING NULL
     var LTWEAPON frying pan
     var HTWEAPON throwing hammer
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON frying pan
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 frying pan
     var ALTWEAPON2 NULL
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 300
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800

     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE katar
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container bottomless.bag
     var Container.Boxes carryall
     var Container.Backup lootsack
     var Container.Crafting satchel
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo quiver
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch carryall
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch skull
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath weapon harness
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 weapon harness
     var Sheath.1.Weapons halberd|quarterstaff|bastard sword|maul|greatsword
     var Sheath.2 hip pouch
     var Sheath.2.Weapons frying pan|sledgehammer
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn OFF
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo crossbow bolt
     var BowAmmo arrow
     var SlingAmmo shard
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK ON
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield shield
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR ironwood shirt
     var FACE.ARMOR NULL
     var HEAD.ARMOR brigandine balaclava
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR mail gloves
     var LEG.ARMOR light greaves
     var KNUCKLE hand claw
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL

# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth OFF
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option treasure
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes OFF
     var Loot.Metals ON
     var Loot.Scrolls OFF
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget NULL
     var ArrangeAll OFF
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways OFF
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 balaclava
     var app3 shirt
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub OFF
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD meraud
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE OFF
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM arm pouch
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container NULL
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT ON
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE ON
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script NULL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth cambrinth prism
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 18
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 15
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual sunburst
     var Ritual.Container NULL
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis ON
     var Utility.Symbiosis ON
     var Augmentation.Symbiosis ON
     var Warding.Symbiosis ON
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis ON
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Dazzle
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLU
     var Trader.Utility.Spell NOU
     var Trader.Augmentation.Spell NULL
     var Trader.Warding.Spell MOM
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics |ARS|SOV
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |Blur|LGV|TRC|FIN
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 14 VARIABLES
     echo **** LOADED %CHARACTER14 VARIABLES
     goto END.OF.VARS
}
CHARACTER15:
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
#########################################################################################################
#########################################################################################################
## CHARACTER 15 VARIABLES
## *CHARACTER15 VARIABLES BLOCK BELOW
if "$charactername" = "%CHARACTER15" then
#########################################################################################################
{
### HEAL.CITY ( NULL or CITY NAME (CROSS/LETH/HIB/RIVER/THEREN/SHARD) - Will run to this town for healing IF NEARBY 
     var HEAL.CITY NULL
### HOME CITY ( NULL or CITY NAME ) - Will attempt to return to your home city after a heal run (if not already in that city) ONLY SUPPORTS MAINLAND CITIES
     var HOME.CITY NULL
### SAFE ROOM (NULL to NOT USE /let script choose) ~MUST~ TIE INTO HOME.CITY ABOVE! THE ROOM YOU WANT TO SCRIPT IN DURING TOWN RUN - MUST BE VALID ROOMID IN YOUR HOME CITY!
### WARNING!: IF YOU DO NOT SET BOTH HOME.CITY AND SAFE.ROOM CORRECTLY YOU ~WILL~ RUN INTO ERRORS - LEAVE BOTH AT NULL TO LET SCRIPT LOGIC HANDLE IT
     var SAFE.ROOM NULL
### AUTO-PROGRESS? (ON or OFF) - ON WILL CHOOSE YOUR COMBAT CREATURE AUTOMATICALLY BASED ON YOUR RANKS - YOU DO NOT NEED TO SET IT! OVERRIDES WHATEVER IS IN COMBAT.CRITTER
     var AUTO.PROGRESS ON
### AUTO-PROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var PROGRESS.TYPE NORMAL
### CRITTER.GUI (ON or OFF) - CREATES GUI WINDOW - DYNAMICALLY SEARCH AND CLICK FOR YOUR CRITTER BASED ON PROVINCE / SKILL / PREFERENCE. USES A SEPARATE WINDOW AND WILL OVERWRITE COMBAT.CRITTER
     var CRITTER.GUI OFF
### WEAPON.GUI (ON or OFF) - IF ON - CREATES A WEAPON GUI WINDOW AT THE START TO CHOOSE YOUR WEAPONS FOR THAT RUN *ONLY IF YOU HAVE AN ARRAY OF WEAPONS SET IN A SINGLE WEAPON VARIABLE*
     var WEAPON.GUI OFF
### COMBAT CRITTER MUST BE A VALID CREATURE NAME - USE FULL NAME OR 1/2/3 TO SPECIFY TIERS *SNOW GOBLIN 2
     var COMBAT.CRITTER MAELSHYVEAN HIEROPHANT
### ALTERNATE CRITTER - PICK A ALTERNATE CRITTER TO HUNT - IF YOUR MAIN HUNTING GROUND IS FULL!
     var ALTERNATE.CRITTER NULL
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var PRIORITY.ROOMS NULL
# FRIEND LIST (People to hunt with or your own characters to share a room) Put your friends names in place of these. Ex. |Bob|Fred|George. Needs leading PIPE
# Can just put your name in here and it will only find empty rooms.
     var FRIENDS %CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|Odium|Breckin|Bayndaid

## SMART.WEAPONS - ON to train weapons from lowest to highest. "OFF" will go in linear order (DEFAULT: ON)
## ON WILL TRAIN WEAPONS FROM LOWEST SKILL TO HIGHEST - NOT REPEATING A WEAPON UNTIL IT HAS GONE THROUGH ALL OF THEM
     var SMART.WEAPONS ON
### WEAPONS/ARMOR/CONTAINER SETTINGS
## SET ALL YOUR WEAPONS BELOW - MUST EXACTLY MATCH THE ITEM DESCRIPTION IN HAND! YOU ~CAN~ SET AN ARRAY OF EACH WEAPON 
## TO TURN OFF TRAINING A WEAPON SKILL SET IT TO: NULL
     var SEWEAPON thrusting blade
     var LEWEAPON NULL
     var THEWEAPON falchion
     var SBWEAPON NULL
     var LBWEAPON hara
     var THBWEAPON NULL
     var STAVES staff
     var POLEARMS NULL
     var RANGED.BOW NULL
     var RANGED.CROSSBOW pelletbow
     var RANGED.SLING NULL
     var LTWEAPON throwing club
     var HTWEAPON NULL
# MAIN OFFHAND WEAPON TRAINING - MELEE ONLY (MUST BE A LIGHT/MEDIUM WEAPON - HEAVY or 2HANDED WEAPONS WONT WORK!!)
     var OHWEAPON NULL
# ALTERNATE OFFHAND WEAPONS (For Backtraining/Dual Training weapons while training other Weapons)
## ~MUST~ BE LIGHT/MEDIUM WEIGHT WEAPON! CANNOT USE HEAVY or 2Handed Weapons!! (SET TO NULL/OFF TO NOT USE)
     var ALTWEAPON1 NULL
     var ALTWEAPON2 NULL
     var ALTWEAPON3 NULL
# BRAWLWEAPON (DEFAULT: $charactername - Set to NULL to skip brawling)
     var BRAWLWEAPON $charactername
# Backstab/Ambush Weapon (Thief Only)
     var BSWEAPON mirror blade
# PRIMARY WEAPONS - THESE ARE WEAPONS YOU WANT TO ALWAYS KEEP MOVING NO MATTER WHAT - Will prioritize training these weapons over others if they drop to no learning
## MUST BE SET IN AN ARRAY - THE EXACT SAME AS GENIE EXP VARIABLE FORMAT ie-  Light_Thrown|Medium_Edged|Twohanded_Edged|Heavy_Thrown|Polearms
     var Priority.Weapons NULL

## TRAIN LOWEST (ON or OFF) - Will train the lowest learning rate in your combats list, prioritizing skills with the lowest ranks. Works best with Timed weapon swaps
## WARNING: TURNING THIS ON WILL MESS WITH YOUR WEAPON TRAINING ORDER, AS IT WILL BYPASS THE DISPLAYED ORDER TO PRIORITIZE YOUR LOWER WEAPONS
     var TrainLowest OFF

# MAX LEARNING RATE for each weapon (will switch when reaching this learningrate). SET TO 35 TO IGNORE LEARNINGRATE
     var MAX.LEARNINGRATE 33
# LEARNING RATE INCREASE (AFTER EVERY FULL LOOP OF WEAPONS - WILL INCREASE MAX.LEARNING BY THIS AMOUNT) 
     var LEARNING.INCREASE 1
# MAX TIME PER WEAPON - Set MAX time (IN SECONDS) to train a single weapon skill before switching weapons
     var MAX.TIME 300
# MAXIMUM COMBAT TRAINING TIME - Set the MAX time (IN SECONDS) to stay in combat before escaping ( 1 hour = 3600 seconds )
# SET TO 0 TO MAKE IT LOOP FOREVER (UNLESS TOO HURT/BAGS FULL/BURDEN TOO HIGH
     var MAX.TRAIN 0
# TURN OFF WEAPON SKILL IF NOT LEARNING FROM MAIN TRAINING? (OFF or ON) 
# IF ON - WILL TURN A WEAPON SKILL OFF IF NOT LEARNING AFTER A FEW MINUTES OF TRAINING (IN MAIN COMBAT ONLY)
     var WEAPON.LEARN OFF
# STANCE PER WEAPON (Set to NULL to use default - Or SHIELD, PARRY, EVASION, CUSTOM to use that stance during that particular weapon)
     var SE.STANCE NULL
     var LE.STANCE NULL
     var THE.STANCE NULL
     var SB.STANCE NULL
     var LB.STANCE NULL
     var THB.STANCE NULL
     var POLEARMS.STANCE NULL
     var STAVES.STANCE NULL
     var BOW.STANCE NULL
     var CROSSBOW.STANCE NULL
     var SLINGS.STANCE NULL
     var LT.STANCE NULL
     var HT.STANCE NULL
     var OH.STANCE NULL
     var BRAWL.STANCE NULL

## BACKTRAIN (ON or OFF) - For setting a backtraining routine
     var BACKTRAIN OFF
## BACKTRAIN AUTO PROGRESS (ON or OFF) - Turning this ON will automatically set the creature to hunt, based on your Backtrain Weapon skills
## TURN THIS OFF IF YOU WANT TO SET THE BACKTRAIN CREATURE MANUALLY (BELOW)
     var BACKTRAIN.AUTOPROGRESS OFF
### BACKTRAIN AUTOPROGRESS TYPE - CHOOSE ONE: ( NORMAL / LOCKPICK / SKIN / F2P / F2PLOCK / EMPATH / NECRO / MM / CLERIC / UNDEAD )
     var BACKTRAIN.PROGRESS.TYPE NORMAL
## BACKTRAIN CREATURE - Must specify the creature to hunt if BACKTRAIN.AUTOPROGRESS is OFF
     var BACKTRAIN.CRITTER red leucro
## USED TO MOVE YOUR FAVORITE ROOMS TO THE TOP OF THE ROOM LIST. MUST BE VALID TO YOUR HUNTING GROUND
## SET TO NULL/OFF IF YOU DON'T WANT TO USE IT. MUST BE IN ARRAY i.e - 410|411|412|413|414|415
     var BACKTRAIN.PRIORITY.ROOMS NULL
## BACKTRAIN TIME (in seconds - Total time to Backtrain) 
     var BACKTRAIN.TIME 1800
## BACKTRAIN MAGIC (ON or OFF) IF OFF - WILL SKIP USING ANY OFFENSIVE SPELLS PERIOD WHILE BACKTRAINING - WILL ONLY DO BUFFS
     var BACKTRAIN.MAGIC ON
## BACKTRAIN TM/DEBIL SPELLS (ON or OFF) IF OFF - WILL SKIP USING ANY TM / DEBIL SPELL DURING BACKTRANING (UNLESS ITS A TATTOO)
     var BACKTRAIN.TM OFF
## BACKTRAIN WEAPONS - Set every weapon you wish to backtrain (NULL to turn off)
     var BACKTRAIN.SE thrusting blade
     var BACKTRAIN.LE bastard sword
     var BACKTRAIN.THE bastard sword
     var BACKTRAIN.SB frying pan
     var BACKTRAIN.LB sledgehammer
     var BACKTRAIN.THB steel maul
     var BACKTRAIN.STAVES NULL
     var BACKTRAIN.POLEARMS NULL
     var BACKTRAIN.BOW composite bow
     var BACKTRAIN.CROSSBOW crossbow
     var BACKTRAIN.SLING NULL
     var BACKTRAIN.LT NULL
     var BACKTRAIN.HT NULL
     var BACKTRAIN.BRAWL $charactername
     var BACKTRAIN.OH NULL
     var BACKTRAIN.BS NULL
## BACKTRAIN STEALTH (OFF or ON)
     var BACKTRAIN.STEALTH ON
## BACKTRAINING LOOTING OPTIONS (ON or OFF)
     var B.Loot.Gems ON
     var B.Loot.Boxes OFF
     var B.Loot.Metals ON
     var B.Loot.Scrolls OFF
     var B.Loot.Collectibles OFF
     var B.Loot.SpiderParts OFF
## BACKTRAIN LOOTING MODE ( treasure / boxes / goods / equipment )
     var B.Loot.Option goods
     

# CONTAINERS - MUST SET YOUR MAIN 3 LARGEST CONTAINERS - RECOMMEND AT LEAST 3 "MAIN" CONTAINERS
     var Container backpack
     var Container.Boxes lootsack
     var Container.Backup lootsack
     var Container.Crafting thigh bag
# AMMO CONTAINER FOR STORING ARROWS/BOLTS ETC
     var Container.Ammo quiver
     var Container.Ammo.Backup NULL
## Container.GemPouch must be a ~closable~ container to store ~FULL~ gem pouches into.
## VERY IMPORTANT! - CONTAINER.GEMPOUCH ~MUST~ BE A SEPARATE CONTAINER FROM YOUR MAIN BAGS! A SMALL/MEDIUM CONTAINER IS FINE 
## AS SCRIPT WILL KEEP THIS CONTAINER CLOSED AND ONLY USE IT FOR STORING FULL GEM POUCHES
     var Container.GemPouch leathery sack
# Container.EmptyPouch is for storing EMPTY GEM POUCHES (This can be ANY container EXCEPT for Container.GemPouch )
     var Container.EmptyPouch backpack
# SHEATH CONTAINER IS FOR MEANT AS A BACKUP FOR STORING SUPER LONG / OVERSIZED WEAPONS BUT CAN BE ANY LARGE CONTAINER
     var Container.Sheath war belt
# DIRT CONTAINER - For storing dirt for various use (Thieves/Clerics etc) 
     var Container.Dirt NULL
## ## MISC SHEATH OPTIONS (For storing specific weapons in specific containers - toolstraps/bandoliers/harnesses etc) - SET TO NULL/OFF TO NOT USE
## SET THE SHEATH NAME UNDER SHEATH.# - SET THE WEAPONS YOU WANT TO USE ON EACH SHEATH UNDERNEATH IN AN ARRAY ex.- var Sheath.1 sabre|axe|broadsword
     var Sheath.1 war belt
     var Sheath.1.Weapons halberd|quarterstaff|bastard sword|maul|greatsword
     var Sheath.2 NULL
     var Sheath.2.Weapons frying pan|sledgehammer
     var Sheath.3 NULL
     var Sheath.3.Weapons NULL
     var Sheath.4 NULL
     var Sheath.4.Weapons NULL
     var Sheath.5 NULL
     var Sheath.5.Weapons NULL
     var Sheath.6 NULL
     var Sheath.6.Weapons NULL
## WEAR WEAPONS (Set an array of weapons/shields you want the script to try and wear first before stowing)
     var Wear.Weapons NULL
## GEM POUCH NAME - BE VERY SPECIFIC *RECOMMEND DUMPING ALL POUCHES AND GET NEW ONES FROM GEM SHOP ON FIRST SETUP
## WHEN ASKING FOR GEM POUCHES, "ASK NPC FOR <COLOR> POUCH" - DO NOT ASK FOR "GEM POUCH" OR "POUCH"
## BY DEFAULT SCRIPT USES "BLACK POUCH" - THEN SET THE VAR TO  "<color> pouch" - ie. var gemPouch black pouch
     var gemPouch black pouch
# TIE YOUR GEM POUCHES? (ON or OFF) (Tie up your gem pouches for more storage/less inventory space usage - but have to sell the whole pouch or get trader to sell!)
     var TiePouch ON
# WORN GEM POUCH? (ON or OFF) (OFF will STOW your gem pouch / ON will wear it )
     var Gempouch.Worn OFF
     
# AMMO SETTINGS - DO NOT REMOVE THE { } BRACKETS
if (!$AMMOSWAP) then
{
     var XbowAmmo clump
     var BowAmmo arrow
     var SlingAmmo shard
}
## RESTOCK AMMO? (ON or OFF) *SCRIPT WILL AUTOMATICALLY CHECK IF YOU RUN OUT OF AMMO AND ATTEMPT TO RESTOCK
     var AmmoStock ON
## ARMOR CHECK (ON or OFF) - Turn this OFF if you want the script to SKIP checking your armor at the beginning
## If ON - at the beginning, script will remove any armor/fluff you are wearing, and then put on all the armor you have set below. This ensures you have the correct armor on.
     var ARMOR.CHECK ON
## SET YOUR SHIELD (NULL to turn off - NEVER RECOMMENDED TO NOT USE A SHIELD!!!)
     var MyShield velnhliwa
## ARM WORN SHIELD? (ON OR OFF) - I RECOMMEND ALWAYS USING AN ARM WORN / SMALL SHIELD!
     var ArmWorn ON
## ARMOR TO CHECK (Set to NULL to not check a piece)
     var CHEST.ARMOR robe
     var FACE.ARMOR NULL
     var HEAD.ARMOR balaclava
     var ABDOMEN.ARMOR NULL
     var BACK.ARMOR NULL
     var ARM.ARMOR NULL
     var HAND.ARMOR sleeves
     var LEG.ARMOR NULL 
     var KNUCKLE knuckle
     var PARRYSTICK parry stick
## BACKTRAIN ARMOR (ARMOR ONLY FOR BACKTRAIN ROUTINE) (Set to NULL to not check a piece)
     var B.CHEST.ARMOR NULL
     var B.FACE.ARMOR NULL
     var B.HEAD.ARMOR NULL
     var B.ABDOMEN.ARMOR NULL
     var B.BACK.ARMOR NULL
     var B.ARM.ARMOR NULL
     var B.HAND.ARMOR NULL
     var B.LEG.ARMOR NULL
     
# Skinning Knife Name (Mandatory if not a worn knife)
     var Skinning.Knife knife
# BELT/WRIST/ANKLE WORN SKINNING KNIFE? (ON or OFF)
     var BeltKnife ON

#### COMBAT OPTIONS
# TRAIN STEALTH? Will train stealth during melee / thrown / brawling routines
     var TrainStealth OFF
# OFFHAND THROWING - (ON or OFF) SET TO ON IF YOU WANT TO ROTATE RIGHT/LEFT HANDS WHILE THROWING LT/HT
     var OffhandThrow ON
# THROWING TYPE (lob, Throw, Hurl) * LOB will never stick/less damage, HURL WILL ALWAYS STICK/more damage. THROW is inbetween
## IF YOU USE A SHARP THROWING WEAPON (LIKE A SPEAR) ALWAYS USE LOB! THROW WILL STICK! 
     var ThrowType lob
# Bonded THROWING WEAPONS? (ON or OFF) - Will use invoke to retrieve weapon
     var Bonded OFF
# ROAMING (ON or OFF) - Will Roam Around to different critter rooms if it doesn't find a creature during bored routine
     var Roaming ON
# USE WEAK ATTACKS (ON or OFF) - Will use weaker attacks for melee training (good for backtraining or preserving fatigue/balance)
     var WeakAttack OFF
# AIM ACTIONS (Set a list of actions) - Actions you want to perform while waiting for Full Aim. Separated with |
     var AimActions |attack|attack|bob
## LOOT MONSTERS? (ON or OFF) IF YOU TURN OFF IT WILL SKIP LOOTING ~PERIOD~
     var Loot.Monsters ON
## LOOTING OPTION (Treasure, Boxes, Equipment, Goods or ALL)
     var Loot.Option treasure
## LOOTING OPTIONS (ON or OFF) - LOOT OPTIONS FOR MAIN COMBAT
     var Loot.Gems ON
     var Loot.Boxes OFF
     var Loot.Metals ON
     var Loot.Scrolls OFF
     var Loot.Collectibles OFF
     var Loot.SpiderParts OFF
# MAX BOXES (Set a number) - MAX number of boxes you want to pick up before turning Box looting off for that run
     var Max.Boxes 15
# DISSECT (ON or OFF) - Attempts to Dissect mobs for First AId (Alternates with skinning depending on learning)
     var Dissect ON
# SKINNING OPTIONS (ON or OFF)
# SKIN ON but BUNDLE OFF will skin but drop all skins. Skin collecting only supported with bundles
     var Skin ON
     var Bundle ON
# TIE BUNDLE (ON or OFF) (Turns on automatically when F2P is ON) 
     var TieBundle OFF
# BUNDLE LOCATION (SET to NULL to use any location or a preferred location (shoulder / waist / back / belt / around shoulder / over shoulder)
     var BundleLocation NULL
# ArrangeTarget (SET TO SKIN, BONE or PART - or NULL to skip arrange)
## Set ArrangeTarget to SKIN/BONE/PART to Arrange one time
## Set ArrangeALL to ON to arrange max times
     var ArrangeTarget NULL
     var ArrangeAll OFF
## ArrangeAlways (ON or OFF) - Set ON to ALWAYS arrange regardless of skinning learningrate. OFF will Skip arranging when Skinning learning is locked 
     var ArrangeAlways OFF
# MAX BUNDLE SIZE - Max amount of skins to keep in bundle before running away to sell skins (DEFAULT: 30  MAX: 200)
     var MaxBundle 40
# Set SNIPE to ON to use Snipe (Thieves/Rangers/Necros only) (Auto-turns off if not thief/ranger/necro)
     var Snipe OFF
# Set POACH to ON to use POACH (SNIPE overrides this if SNIPE is ON)
     var Poach OFF
# RANGED AIM PAUSE. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before firing
     var SNAP.FIRE 7
# RETREAT WHILE USING RANGED? (ON or OFF) - Will retreat when using ranged weapons
     var Retreat OFF
## DANCE / COUNT Critters - Set number of critters to "dance" with before starting killing
## Set to 0 to kill everything. Set 1 or more to dance with 1 creature until one more comes in, etc.
     var Dance.Count 0
## TACTICS TRAINING (ON OR OFF)
     var Tactics ON
# APPRAISE CREATURES - (ON or OFF) to APPRAISE ALL CREATURES
     var APPRAISE ON
# HUNT OPTION (Hunts every ~75 seconds unless perception locked)
     var HUNT ON
## APPRAISE ITEMS WHEN NO CRITTERS IN ROOM? (ON or OFF)
     var APP.ITEMS ON
## ITEMS TO APPRAISE (Set to NULL to not use)
     var app1 knife
     var app2 balaclava
     var app3 shirt
## SANOWRET CRYSTAL? (ON or OFF) - ON will exhale crystal every ~100 seconds
     var Crystal ON
## USE SANORWRET CRYSTALS IN COMBAT? (ON or OFF) - ON will use Sanowrets in combat (Turning ON can effect concentration and mess with spell casting) 
     var SanowretCombat OFF
## ZILLS? (ON or OFF) - FOR WORN INSTRUMENTS - ON will play Zills during certain times (Repairing armor, collecting, etc)
     var Zills ON
## Zill name ( zills / cowbell / etc )
     var Zill.Name zill
# F2P CHARACTER (ON or OFF) - If set to ON - Script will escape combat and go to town run when you get an inventory count warning
     var F2P ON
# BIOMECHANICAL TARANTULA? (ON or OFF) - IF ON - Will pick a (semi-)random near locked skill to drain every 10 minutes while in combat
     var Tarantula OFF
     var Tarantula.Name tarantula
## TARANTULA SKILLS TO CHECK - SET AN ARRAY OF SKILLS TO CHECK AGAINST FOR TARANTULA DRAIN
## MUST EXACTLY MATCH THE GENIE VARIABLE NAMES! THESE ARE THE SKILLS TARANTULA WILL CHECK FOR EACH SCHOOL
     var Magic.skills Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic
     var Armor.skills Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor
     var Survival.skills Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing
     var Weapons.skills Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow
     var Lore.skills Appraisal|Tactics|Performance
# WARHORN? (ON or OFF) - For Barbarians and Bards only.
     var WarHorn OFF
## WAND SUPPORT (NULL to NOT use) (MEF wand / WoW wand / WoTP wand etc.) Set up to 2 sets of wands to use! Must use actual verb of wand!
## CAN SET AN ARRAY OF WANDS FOR EACH VAR ex- var Wand1 bloodwood branch|oaken staff
     var Wand1 NULL
     var Wand2 NULL
## WAND CONTAINERS *Must use 2 different containers to store Wands if using 2 identical wands)
     var Wand1.Container
     var Wand2.Container
## Wand Weapon - (NULL or WEAPON NAME) SET A MELEE WEAPON TO BUFF WHEN USING WANDS WITH A WEAPON BUFF
     var WandWeapon NULL
## EGG SUPPORT (ON or OFF)*Uses the HE Gift Egg in Combat every ~15 minutes to invoke more mobs
     var EGG OFF
## ASTROLABE (ON or OFF) - Uses an Astrolabe every 30 mins if ON (Will rotate if you use 2)
     var ASTROLABE OFF
## Set the name of the astrolabes - (2 words ONLY i.e - ornate astrolabe, twisted astrolabe)
     var ASTROLABE1 NULL
     var ASTROLABE2 NULL
     var Astro1.Container NULL
     var Astro2.Container NULL
## ORB RUB IN COMBAT (var Orb.Rub ON or OFF) - TURN ON TO RUB FAVOR ORB IN COMBAT EVERY ~40 MINUTES
     var Orb.Rub OFF
####################################################################################################
# ARMOR SWAP - (ON or OFF) - SPECIAL ARMOR SWAPPING ROUTINE FOR HELMS ONLY
# WILL SWAP OUT A SINGLE PIECE OF PLATE/BRIG/CHAIN/LIGHT HELM EVERY ~5 MINUTES IN COMBAT 
     var Armor.Swap OFF
## IF Armor.Swap is ON - THEN ALL THE ARMORS BELOW MUST BE SET CORRECTLY!
# SET EVERY PIECE OF ARMOR TO SWAP BELOW, MUST SET AN ARMOR PIECE FOR ALL FOUR TYPES - TWO WORDS ONLY!
# ONE PIECE SHOULD MATCH YOUR MAIN ARMOR HELM
     var Light_Armor.Helm leather helm
     var Chain_Armor.Helm chain balaclava
     var Brigandine.Helm brigandine balaclava
     var Plate_Armor.Helm plate helm
####################################################################################################
# HEAVY ARMOR REMOVAL - (ON or OFF) - ON will take off plate/brig/chain armor before backstab/stealth routines
# Generally only needed for noobs with less then ~200 ranks in armors
     var Armor.Noob OFF
# Set Plate/Brig/Chain pieces here (USE EXACT SYNTAX) (If no armor to remove set to NULL)
     var PLATE1 brigandine balaclava
     var PLATE2 light greaves
     var PLATE3 NULL
     var PLATE4 NULL
# Set Light Armor Pieces to Swap in place of the Heavy armor pieces above - if any (set to NULL to not use)
     var LIGHTARMOR1 rugged cowl
     var LIGHTARMOR2 rugged greaves
     var LIGHTARMOR3 NULL
     var LIGHTARMOR4 NULL

######################################################################################################################
## TOWN / SPECIAL MODULES - SETTINGS FOR VISITING TOWN - AUTO HEALER / SELL GEMS/SKINS, DEPOSIT COIN, OPTIONAL MODULES
#####################################################################################################################
### RETURN TO COMBAT MODULE
# RETURN TO COMBAT? - RETURNS YOU TO YOUR COMBAT ZONE AND RESTARTS WHEN TOWN RUN IS FINISHED.
# IF SET TO OFF - SCRIPT WILL FINISH ONCE TOWN RUN IS COMPLETED
     var RETURN.TO.COMBAT ON
# AUTOHEAL (ON or OFF) - Auto-Healing after Combat (depending on guild/settings) - LEAVE ON UNLESS YOU WANT SCRIPT TO ABORT
## TURNING THIS OFF WILL ABORT THE SCRIPT AFTER ESCAPING COMBAT!! IT WILL BE UP TO YOU TO GET HEALED
     var AUTOHEAL ON
# HEAL ALL (ON or OFF ) - HEAL.ALL ON = ALWAYS HEAL IF YOU HAVE ~ANY~ WOUNDS
# HEAL.ALL OFF = SKIP HEALING IF INSIGNIFICANT WOUNDS (few scratches)
     var HEAL.ALL ON
# SELL SKINS (ON or OFF) - Will visit the furrier, sell all skins/bundles
     var SELLSKINS ON
# SELL GEMS (ON or OFF) - Will visit gem shop and sell all gems (single gems if NOT tying pouch or full pouches if in the right area)
     var SELLGEMS ON
# SELL METALS (ON or OFF) - Will sell all loose nuggets/bars at gem shop (EXCEPT for nuggets/bars in your Container.Crafting)
     var SELLMETALS ON
# BUY HERBS? (ON or OFF) - IF ON - Script will attempt auto-restocking healing herbs (IF in a supported city)
     var HERBS OFF
## Container.Herb - Set the container you wish to store your herbs in 
     var Container.Herb %Container
# REPAIR ARMOR? (ON or OFF) - Will go and repair all weapons/armor (MUST HAVE MONEY IN BANK)
     var REPAIR.ARMOR ON
## REPAIR KITS? (SET TO NULL/OFF TO NOT USE) - SPECIAL CONTAINERS!
## REPAIR.KIT and REPAIT.KIT.2 ARE FOR FULL REPAIR KITS THAT REPAIR ALL ARMOR ~AND~ WEAPONS
## REPAIR.KIT.WEAPON and REPAIR.KIT.ARMOR ARE ONLY FOR KITS THAT ONLY REPAIR ARMOR OR WEAPONS!!
## YOU MUST SET THE CONTAINER THAT EACH SPECIFIC KIT IS FOUND IN! IT TREATS THIS CONTAINER LIKE GEMPOUCH CONTAINER AND KEEPS CLOSED
     var REPAIR.KIT NULL
     var REPAIR.KIT.CONTAINER NULL
     var REPAIR.KIT.2 NULL
     var REPAIR.KIT.2.CONTAINER NULL
     var REPAIR.KIT.WEAPON NULL
     var REPAIR.KIT.ARMOR NULL
     var REPAIR.KIT.3.CONTAINER NULL
# BANK RUN (ON or OFF) - Will deposit money in the bank after selling
     var BANKRUN ON
# INVENTORY CHECK (ON or OFF) DUMPS EXCESS BUNDLING ROPES / TURNS ON CHECKS FOR DUMPING ANYTHING IN TRASH VARIABLE OR EXCESS GEM POUCHES (BELOW VARIABLES)
     var INVCHECK ON
# TRASH DUMP (ON or OFF) - IF ON WILL DUMP ANY ITEM IN YOUR TRASH VARIABLE (GLOBAL VARIABLE AT VERY TOP OF VARIABLE FILE)
     var TRASH.DUMP ON
# POUCH DUMP (ON of OFF) - IF ON - WILL DUMP ANY GEM POUCHES IN YOUR INVENTORY THAT ~DO NOT MATCH~ THE COLOR/DESCRIPTION OF YOUR PRIMARY GEMPOUCH ( var gemPouch ) 
# WILL ALSO DUMP YOUR NORMAL GEM POUCHES IF YOU HAVE MORE THAN 10 OF THEM
     var POUCH.DUMP ON

## SHARD CITIZEN (ON or OFF) - Must be a citizen of shard
     var Shard.Citizen OFF
# GET FAVORS? (ON or OFF) - (ONLY WORKS IN CROSSING OR SHARD)
     var GET.FAVORS ON
     var FAVOR.GOD Hav'roth
# CLIMBING RUN (ON or OFF) - Trains Athletics - (Only works in Crossing or Shard)
     var CLIMBING ON
## MAGIC CLIMBING ROPE (ON or OFF) - Checks for a magic rope and uses that instead of Climbing
     var MAGIC.ROPE OFF
     var ROPE.NAME climbing rope
     var Rope.Container skull
## WINDBOARD (ON or OFF) - Trains Athletics with a Windboard instead
     var WINDBOARD OFF
# COLLECTING - (ON or OFF) - Trains Outdoorsmanship - Collect rocks during town run
     var COLLECTING ON
# BRAIDING - (ON or OFF) - Trains Braiding (Engineering) - Only to 60-70 ranks or so!
     var BRAIDING OFF
# RAVEN'S COURT SCHOLARSHIP STUDY (ON or OFF) - ONLY works in Crossing
     var RAVEN ON
# TEXTBOOK / COMPENDIUM? (ON or OFF) - Trains Scholarship/FA with an anatomy Textbook
     var TEXTBOOK ON
# TEXTBOOK TYPE - Textbook or Compendium
     var TEXTBOOK.TYPE textbook
     var Textbook.Container skull
# SKINNING/FA TRAINER - (ON or OFF) ONLY WORKS FOR THE MAGIC SKINNING / FA TRAINERS ( https://elanthipedia.play.net/Item:Small_blue-belly_crocodile_with_prominently_stitched_seams )
     var SKINTRAINER OFF
     var SKINTRAIN.NOUN crocodile
     var SKINTRAIN.CONTAINER belt
# EPISTEMIC JOURNAL - For Epistemic Journals ONLY - Writes to Journal every 24 hours
# Set JOURNAL.TYPE ( NULL to NOT USE ) - Set NOUN of item to use ( traveler's diary / explorer's log / soldier journal / etc)
     var JOURNAL.TYPE NULL
# DISARM BOXES? (Requires disarm script - MAKE SURE YOU SET THE VARIABLES UP IN .DISARM)
     var DISARM ON
# BURGLE RUN (ON or OFF) - Does a Burgling Run with .burgle script (BURGLE.PAWN ON will Pawn all Burgle items)
     var BURGLE ON
     var BURGLE.PAWN ON
# BURGLE DUMP (ON or OFF) - Burgle Dump ON will DUMP/TRASH any Burgle item that does not sell at pawn shop
     var BURGLE.DUMP ON
# STEALING RUN (ON or OFF) - Does Stealing Run with the Ultimate Stealing Script
     var STEAL OFF
# PERFORMANCE RUN (ON or OFF) - Aside from random zill training - Does a dedicated Performance run while on town run (Uses Zill variable)
     var PERFORMANCE OFF
# MAGICAL RESEARCH TRAINING (ON or OFF) - If ON - Will perform magical research training during Town Run when it can 
     var MAGICAL.RESEARCH ON
# PRIMARY MAGICAL RESEARCH TYPE ( SET TO NULL / OFF TO CHOOSE AUTOMATICALLY BASED ON LEARNING ) 
# OPTIONS ARE: FUNDAMENTAL, STREAM, AUGMENTATION, UTILITY, WARDING, SORCERY, FIELD, SPELL 
     var RESEARCH.TYPE NULL
# TEACHING? (ON or OFF) - If ON, will attempt to teach your other characters/people in the Friends variable
     var TEACH ON
     var TEACH.SKILL hiding
     var TEACH.SKILL.2 evasion
## SUPPORT FOR MASTERCRAFT TRAINING
     var ALCHEMY OFF
     var ENGINEERING OFF
     var FORGING OFF
     var OUTFITTING OFF
     var ENCHANTING OFF
## VAULT SWAP (ON or OFF) - ON WILL SWAP OUT YOUR var CONTAINER FOR A SPECIAL BAG IN YOUR VAULT FOR MASTERCRAFT ONLY!~
## AFTER MASTERCRAFT IS OVER, IT WILL GO BACK TO THE VAULT AND SWAP IT BACK OUT 
     var VAULT.SWAP OFF
## VAULT CITY - SET THIS TO THE CITY WHERE YOU HAVE YOUR VAULT - NOTE IF VAULT.SWAP IS ON IT WILL ATTEMPT TO RUN TO YOUR CITY FIRST
     var VAULT.CITY shard
## SET THE NAME OF YOUR CRAFTING BAG IN YOUR VAULT - MUST HAVE ALL YOUR CRAFTING TOOLS IN THIS BAG!
## MAKE SURE TO BE SPECIFIC WITH YOUR CONTAINER VARIABLES SO THEY DONT GET MIXED UP! 
     var CRAFTING.BAG NULL
     
# ALMANAC (ON or OFF) - Special almanac that trains a random skill every ~10 minutes
     var ALMANAC OFF
## ALMANAC VERB if using encyclopedic almanac, must be set to encyclopedic almanac
     var ALMANAC.TYPE almanac
     var Almanac.Container %Container
## ALMANAC SKILLS for encyclopedic almanac i.e. Sorcery|Forging|Engineering
     var ALMANAC.LEARN Primary_Magic|Augmentation|Utility|Warding|Debilitation|Targeted_Magic|Defending|Shield_Usage|Plate_Armor|Brigandine|Chain_Armor|Light_Armor|Evasion|Skinning|Perception|Stealth|Athletics|First_Aid|Locksmithing|Parry_Ability|Melee_Mastery|Missile_Mastery|Brawling|Twohanded_Edged|Small_Edged|Large_Edged|Twohanded_Blunt|Large_Blunt|Small_Blunt|Polearms|Staves|Bow|Appraisal|Tactics|Performance|Enchanting|Forging|Engineering|Alchemy|Outfitting|Arcana
# LOCKPICK TRAINING ITEM? (Set to NULL to not use) - Must match EXACTLY with item name in hands (2 words only)
## *For magic lockpick training items - * Assumes you have a worn lockpick ring/case
     var LOCKPICK.ITEM arm pouch
## SET A SECONDARY LOCKPICK ITEM HERE IF YOU HAVE ONE (OR SET TO NULL) 
     var LOCKPICK.ITEM.2 NULL
## Lockpick.Container is where the LOCKPICK ITEMS should be stored (NULL to try wear them) 
     var Lockpick.Container NULL
# PILGRIM BADGES (ON or OFF) *Cleric or Paladin only! - Will visit badge locations
     var PILGRIM ON
# POWERWALKING (ON or OFF) - If ON will do a Powerwalk near end of town run
     var POWERWALK OFF
## Setting NO.CONTACT to "ON" will log out for 5 minutes if someone tries to drag you or hold your hand (DEFAULT: OFF)
     var NO.CONTACT ON
## Set LOG.ON.STUN (ON or OFF) Set to "ON" to log out if you are too hurt/stunned and are unsuccessful running away (DEFAULT: ON)
     var LOG.ON.STUN ON
## LOG.ON.DEATH (ON or OFF) Set OFF to stay logged in even if you die (DEFAULT: ON)
     var LOG.ON.DEATH ON
## TOTAL TIME ONLINE - MAX TIME TO STAY ONLINE (IN SECONDS) After this time has passed will idle and logout to avoid AFK checks (Set to 0 to always stay online)
     var ONLINE.TIME 0
## FANG COVE? (ON or OFF) - Do you want to go to FANG COVE for healing/town stuff (Only works in Prime if Premium)
     var FANGCOVE ON
## USE PREMIUM JUMP JEWELRY? (ON or OFF) - Will use Premie JJ to teleport to Fang Cove for healing/bundles/gems/etc
     var JumpJewelry OFF
     var JewerlyVerb ironwood ring
## PERSONAL EMPATH HEAL (Put EMPATH'S NAME to use. NULL to turn off) - If you use a personal empath to heal (no NPC Healer)
     var PocketEmpath NULL
## EmpathRoom is safe room where you can find your personal empath. (MUST be in the City you go to for Town Run)
     var EmpathRoom
## BankBot - Used for F2P characters to tip a bankbot any remaining coin at end of run - Set Tipping to 1, Bankbot name and Tiproom = room number bankbot is at in your home town 
     var Tipping 0
     var BankBot morph
     var TipRoom 753
## CLAN ITEM (TF ONLY)
     var CLAN ON
     var CLAN.ITEM sphere
## LIGHTER ITEM (For using a Lighter to start fires instead of flint and blade)
## USAGE - var LIGHTER (ON or OFF) - Lighter.Name = verb of the item
     var Lighter OFF
     var Lighter.Name cinder beast
## CUSTOM TOWN SCRIPT - (Must be the exact name of the script (IGNORE .CMD - JUST USE NAME) 
## Set your own script to run during the town run 
## YOU MUST HAVE A PARSE AT THE END OF YOUR SCRIPT: put #parse SCRIPT FINISHED!
## IF YOU DO NOT HAVE THIS PARSE THEN UBER MAY NOT RECOVER!
     var Custom.Script NULL
## RPA BESTOW? (ON or OFF) - MUST BE IN THE PIRP SYSTEM TO BESTOW! https://elanthipedia.play.net/RPA_command
     var RPA OFF
## LIST THE PEOPLE YOU WANT TO BESTOW RP POINTS TO BELOW IN AN ARRAY!! 
### ie. var PirpList Name1|Name2|Name3|Name4|Name5
     var PirpList Raidboss|Healbitch|Breckin|Ryhs|Rhoat|Shepherd|Kohen|Odium|Morvetan|Orcher|Amroth|Rellie|Beerfest|Bayndayd|Xana|Crivic
######################################################################################################################
# GENERAL MAGIC VARS - ALL MAGIC USERS MUST SET THESE
######################################################################################################################
## USE HARNESS ~OR~ CAMBRINTH FOR SPELLS (ON or OFF) - TURN OFF TO SKIP HARNESS/CAMBRINTH COMPLETELY
     var Use.Cambrinth ON
## USE HARNESS ~OR~ CAMBRINTH FOR BUFFS (ON or OFF) 
     var Use.Cambrinth.Buffs ON
## SLOW.CAST (ON or OFF) - OFF IS DEFAULT - Slow Cast ON will cast offensive spells about half as often as normal 
## SLOW.CAST OFF (Default) will spam spells in between attacks as much as possible (mana permitting) 
     var Slow.Cast OFF
# CAMBRINTH ITEM for charging for Buff/Spells (Set to NULL to not use)
     var Cambrinth tailband
     var Cyclic.Cambrinth NULL
# CAMBRINTH MANA FOR SPELLS - Amount of Mana to put into cambrinth for ATTACK SPELLS
     var CambrinthMana 1
# CAMBRINTH MANA FOR Cylics - Amount of Mana to put in cambrinth for Cylics ONLY 
     var CyclicCharge 2
# CAMBRINTH CHARGES - Number of Times to Charge your cambrinth (or harness if Cambrinth is NULL) each time!
## RECOMMEND LEAVING THIS AT 1.. or 2 AT MAX - THIS VARIABLE TIES INTO HOW SMART MANA CALCULATES MANA 
     var CambrinthCharge 1
# POWER PERCEIVE (Perceives every ~5 minutes)
     var POWERP ON
## MAGIC RATE - Set the MIN Magic Rate you want to reach before switching to a different spell school. Set to NULL to cycle through without a learning rate
     var Magic.Rate NULL
# MAGIC SNAP CAST. Set to 0 for Full Aim. Set to desired number of seconds to pause for that many seconds before casting
     var MAGIC.SNAP 0
# RITUAL FOCUS ITEM (required for ritual spells - set Ritual to NULL to not use)
# Ritual.Container can be set to any Container - or set to NULL to wear it first
     var Ritual spider
     var Ritual.Container %Container
# SORCERY RITUAL FOCUS (Separate ritual focus for Sorcery)
     var Sorcery.Focus NULL
# TM DAMAGE FOCUS ITEM (set to NULL to not use) - Will use Focus item to buff your TM spells
     var TMFoci NULL
     var TMFoci.Container %Container
# USE SYMBIOSIS ON ATTACK SPELLS? (ON or OFF) - WARNING - SMART.SPELLS WILL PROBABLY NOT WORK CORRECTLY WITH SYMBIOSIS!
## WITH SYMBIOSIS ON YOU NEED TO SET MANA MANUALLY AND TURN OFF SMART.SPELLS!
     var Target.Symbiosis OFF
     var Utility.Symbiosis OFF
     var Augmentation.Symbiosis OFF
     var Warding.Symbiosis OFF
     var Sorcery.Symbiosis OFF
     var Debilitation.Symbiosis OFF
# USE SYMBIOSIS ON BUFFS? (ON or OFF) - WARNING - MAY NOT WORK PROPERLY WITH AUTO-DETECTING MANA
     var Symbiosis.Buffs OFF
### OFFENSIVE SPELL MANA AMOUNTS - Set amount of mana to put into each magic type
     var Target.Mana 20
     var Debilitation.Mana 20
     var Utility.Mana 20
     var Augmentation.Mana 20
     var Warding.Mana 20
### SET SORCERY MANA TO NULL IF YOU WANT SMART MANA TO SET IT - OTHERWISE SET IT HERE
     var Sorcery.Mana 20
### OFFENSIVE SPELL CAMB AMOUNTS - Set amount of mana to put into each magic type
     var Target.Camb 8
     var Debilitation.Camb 8
     var Utility.Camb 8
     var Augmentation.Camb 8
     var Warding.Camb 8
     var Sorcery.Camb 8
### SMART MANA FOR SPELLS? AUTO-DETERMINES THE OPTIMAL MANA FOR EACH SPELL AFTER EVERY NEW STARTUP
### (ON or OFF) - SETTING THIS ON WILL OVERRIDE MANA SETTINGS ABOVE
     var SMART.SPELLS ON
## CAMB HEAVY (ON or OFF) (OFF by default) - ON WILL MAKE SMART MANA PUT MORE MANA INTO CAMBRINTH THEN MAIN PREP
     var Camb.Heavy OFF
## NO CAMBRINTH USE DURING TM / DEBIL SPELLS (ON or OFF) 
## IF YOU SET THIS ON, SCRIPT WILL SKIP USING A CAMBRINTH FOR TM OR DEBIL SPELLS
     var NoCambTM OFF
## MAGIC TATTOO (Set to NULL or the FULL SPELLTIMER NAME i.e - IronConstitution - MajorPhysicalProtection - GhostShroud ) - Will use a Magic Tattoo every ~5-10 minutes
## FULL SPELLTIMER NAME MUST ALSO BE SET IN YOUR BUFFS OR SPELLS
     var Magic.Tattoo Dazzle
## RUNIC TATTOO (ON or OFF) - ONLY FOR RUNIC/HEROIC TATTOOS! (Normal tattoos use Magic.Tattoo)
## VERY BASIC - WILL JUST INVOKE TATTOO / CAST ON A 1 HOUR COOLDOWN
     var Runic.Tattoo OFF

#########################################################################################
### GUILD SPECIFIC OPTIONS BELOW
########################################################################################
# NECROMANCER
# Set NECRO.HEAL to "ON" to turn on Necro Healing - (Consume Flesh / Devour depending on skill)
     var Necro.Heal ON
## NECROHEAL CREATURE (FOR SETTING A ~LOW~ LEVEL CREATURE TO RUN AND KILL ONLY FOR HEALING PURPOSES)
## IDEALLY SET THIS TO A CREATURE NEXT TO YOUR "HOMETOWN" SO YOU DON'T HAVE TO RUN FAR
     var NecroHeal.Critter NULL
# Set NecoRitual to ON to perform rituals
     var NecroRitual ON
## FORSAKEN? (ON or OFF) - Is your Necro Forsaken? IF ON - WILL AVOID TOWNS AS MUCH AS POSSIBLE   
     var Forsaken OFF
## RISEN? (ON or OFF) - Will create Risen Minions in combat 
     var Risen ON
## QUICKEN EARTH - ON to try and check for and summon dirt constructs every ~5 minutes
     var QuickenEarth OFF
     var QE.Mana 15
     var CFB.Mana 20
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Necro.Cyclics |USOL|ROC|ROG
     var Necro.Cyclics.mana |5|4|5
## Necromancer ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type and how much mana
     var Necro.Target.Spell ACS
     var Necro.Debilitation.Spell PV
     var Necro.Utility.Spell ROG
     var Necro.Augmentation.Spell NULL
     var Necro.Warding.Spell CH
     var Necro.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Necro.Buffs |PHP|QE|REI|ROC
########################################################################################
### BARD
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Bard.Cyclics |AEWO|HODI|FAE|CARE|PYRE|GJ
     var Bard.Cyclics.mana |5|4|5|7|7|6
## Bard ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type
     var Bard.Target.Spell BOS
     var Bard.Debilitation.Spell DMRS
     var Bard.Utility.Spell AOT
     var Bard.Augmentation.Spell NULL
     var Bard.Warding.Spell NAME
     var Bard.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Bard.Buffs |MIS|HARM|RAGE|REPR
## BARD SCREAMS? ( Screams in combat every ~60 seconds) (ON or OFF) 
     var Bard.Scream ON
## BARD WHISTLE (ON or OFF) 
     var Bard.Whistle ON
########################################################################################
### WARRIOR MAGE OPTIONS
## USE SUMMONING? (Will train Summoning every ~3 minutes)
     var Summoning ON
## ELEMENTAL ALIGNMENT - Element can be FIRE, WATER, ELECTRIC, AETHER, AIR or EARTH
     var element fire
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var WM.Cyclics |EE|AC|FR
     var WM.Cyclics.mana |5|4|5
## Warrior Mage ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var WM.Target.Spell FB
     var WM.Debilitation.Spell EE
     var WM.Utility.Spell ETF
     var WM.Augmentation.Spell YS
     var WM.Warding.Spell ES
     var WM.Sorcery.Spell NULL
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var WM.Buffs |TW|SW|Zephyr|SUF|Ignite
## ~WEAPON SUMMONING LOGIC~
# SUMMON WEAPONS (ON or OFF)
     var SummonWeapons ON
# SUMMON ELEMENT - Must set your WEAPON SUMMON ELEMENT ( Stone/Earth (Default) - Fiery/Fire (Fiery Infusions) - Icy/Ice (Icy Infusions) - or Electric (Shocking Infusions)
     var SummonElement fire
# ELEMENTAL CHARGE SPELL Must be of your element. Will prep at minimum mana if you want it to prep at something else put a number after
     var ChargeSpell MOA
# SUMMON WEAPON TEMPLATE (0 or 1) - 0 = Default weapon, 1 = Turn weapon to other template
     var SummonTemplate 0
# SUMMON WEIGHT/DENSITY (0 - 2 to set weapon density - Must know QUICK INFUSIONS spell)
# 0 = Lightest Weight, 1 = DEFAULT, 2 = Heavier Weight
     var SummonWeight 1
# Set weapons you want to summon (ON or OFF) - Setting to ON will override your default weapon variables at top of script
     var SummonHT ON
     var SummonLT ON
     var SummonSE ON
     var SummonLE ON
     var SummonTHE OFF
     var SummonSB OFF
     var SummonLB ON
     var SummonTHB ON
     var SummonPolearms OFF
     var SummonStaves OFF
## INGOT (ON or OFF) Bump up tier of weapons - Must know REINFORCED INFUSIONS spell and have a rare metal ingot
     var WMIngot OFF
## SET INGOT STORAGE CONTAINER (Set to either a sigil ring or a specific container)
     var Ingot.Container sigil ring
########################################################################################
## MOON MAGE ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var MM.Target.Spell DO
     var MM.Debilitation.Spell MB
     var MM.Utility.Spell PG
     var MM.Augmentation.Spell NULL
     var MM.Warding.Spell Psy
     var MM.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var MM.Cyclics |SLS
     var MM.Cyclics.mana |5
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var MM.Buffs |CV|PSY|SEER|Shadows
## OBSERVATION TRAINING - PREDICT TOOL IS ONLY USED FOR PREDICTION OUTSIDE OF COMBAT! TOOL MUST ALREADY BE BONDED!!
## Predict.tool can be - BONES, CHART, MIRROR, PRISM, BOWL, DECK or NULL to turn off.
     var Predict.Tool NULL
## Read The Ripples (RTR ON or OFF) - Will Perform a RTR routine (observe spam) during town run **MUST HAVE TELESCOPE!
     var RTR OFF
## Where you store your telescope * If any - defaults to your main Container if not set
     var Telescope.Container NULL
## OBSERVE IN COMBAT (ON or OFF) - If ON will do Astrology observations in Combat every couple minutes
     var Combat.Observe ON
########################################################################################
## CLERIC ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Cleric.Target.Spell FF
     var Cleric.Debilitation.Spell HULP
     var Cleric.Utility.Spell DR
     var Cleric.Augmentation.Spell Benediction
     var Cleric.Warding.Spell SL
     var Cleric.Sorcery.Spell dazzle
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Cleric.Cyclics |HYH|GHS|REV
     var Cleric.Cyclics.mana |12|12|12
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Cleric.Buffs |OM|POM|Halo|MPP|MAPP|Auspice|SOS|SAP|Centering
## ARE YOU USING OM ORB? (MUST BE SET IN BUFFS ABOVE!) SET MANA AMOUNT TO CAST OM/CHARGE ORB WITH EACH TIME
     var OM.Mana 24
## TYPE OF ORB YOU USE FOR OM ( FIRULF, MERAUD or KEREN)
     var FavorOrb meraud
## Buff spells to keep active in your OM ORB (Defaulted to %Cleric.Buffs - just edit those)
     var OM.Buffs %Cleric.Buffs
## CLERIC RITUALS? (Will perform Cleric Rituals during town runs and after kills)
     var ClericRituals ON
### Prayer Mat - Set to NULL to not use or the noun of the mat/rug
     var PrayerMat mat
## HOLY WATER VESSEL - Set your container you use to store/collect holy water
     var HolyWater chalice
### COMBAT COMMUNES - (ON or OFF) - Set the communes you wish to perform in combat
     var Commune.Meraud ON
     var Commune.Truffenyi ON
     var Commune.Tamsine ON
########################################################################################
## RANGER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Ranger.Target.Spell CAC
     var Ranger.Debilitation.Spell DE
     var Ranger.Utility.Spell EM
     var Ranger.Augmentation.Spell NULL
     var Ranger.Warding.Spell EY
     var Ranger.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Ranger.Cyclics |CS|BES|AF
     var Ranger.Cyclics.mana |5|4|3
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Ranger.Buffs |COTC|EM|STW|SKS|INST
########################################################################################
## PALADIN ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Paladin.Target.Spell FST
     var Paladin.Debilitation.Spell Shatter
     var Paladin.Utility.Spell AS
     var Paladin.Augmentation.Spell NULL
     var Paladin.Warding.Spell SP
     var Paladin.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Paladin.Cyclics |HOW|TR
     var Paladin.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Paladin.Buffs |AA|Courage|HES|RW|SR
## SET your HOLY WEAPON here (NULL to ignore) - Holy Weapon Name
     var HolyWeapon NULL
## Holy Icon (NULL TO NOT USE/IGNORE) - Set to the noun of your icon
     var HolyIcon NULL
########################################################################################
## TRADER ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Trader.Target.Spell CRD
     var Trader.Debilitation.Spell FLUORESCE
     var Trader.Utility.Spell NOUMENA
     var Trader.Augmentation.Spell EASE
     var Trader.Warding.Spell NULL
     var Trader.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Trader.Cyclics NULL
     var Trader.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Trader.Buffs |TRC|EASE|MAF|NOUMENA
########################################################################################
## EMPATH ATTACK Spells - Set the OFFENSIVE spells you want to use for each magic type (NULL to not use)
     var Empath.Target.Spell PARALYSIS
     var Empath.Debilitation.Spell NB
     var Empath.Utility.Spell GS
     var Empath.Augmentation.Spell NULL
     var Empath.Warding.Spell POP
     var Empath.Sorcery.Spell NULL
# Cyclic Spell Setup
# YOU CAN SET ONE OR AN ENTIRE ARRAY OF CYCLICS TO SWITCH THROUGH
# CYCLIC.Mana MUST be set for each individual cyclics! 
# YOU MUST SET cyclic.mana in an array to match!! 6 cyclic - 6 mana numbers
# SET TO NULL/OFF IF NOT TRAINING CYCLICS
     var Empath.Cyclics |AD|REGEN
     var Empath.Cyclics.mana |5|4
## Set your BUFF SPELLS to use in a list. TO ADD A BUFF ADD |BUFFNAME  to the end of the list.
     var Empath.Buffs |AGS|BS|HEAL|IC|REGENERATE
## GAURDIAN SPIRIT? (ON or OFF) - ON will keep up Guardian Spirit while in Combat 
     var Guardian.Spirit ON
## CUSTOM GUARDIAN SPIRIT (ON or OFF) - If ON - will "cast custom" instead of casting normal
     var Guardian.Custom OFF
## ATTACK CONSTRUCTS/UNDEAD ONLY? (ON or OFF) - ON will ONLY attack CONSTRUCTS - (or UNDEAD IF you have ABSOLUTION ).
## (DEFAULT: ON) WARNING - OFF will attack everything - SETTING TO OFF WILL CAUSE EMPATHIC SHOCK!!!
     var Construct.Only ON
## USE MANIPULATE FRIENDSHIP (ON or OFF) - ON will attempt to manipulate non-construct creatures
     var Manipulate ON
## ESCAPE COMBAT WHEN EMPATHY REACHES 0? (ON or OFF) - If Empathy LearningRate reaches 0 during combat, will go on town run
     var Empathy.Escape OFF
## EMPATH PERCEIVE HEALTH WALKS (ON or OFF) - If ON - Will go on perceive health walks around town during town run
     var Empath.Walk ON
## EMPATH UNITY LINK (ON or OFF) - FOR EMPATH HEALBOT MODE - DO YOU KNOW UNITY LINK? MUST BE 70+ CIRCLE AND 380+ EMPATHY
     var Unity ON
## TEACH CLASS (FOR HEALBOT MODE) - SET THE SKILL OF THE CLASS YOU WANT TO TEACH
     var TeachClass TM
## BLACKLIST! (FOR HEALBOT MODE) - SET THE NAMES OF THE PEOPLE TO BLACKLIST FROM HEALING SERVICES! 
## MUST BE IN AN ARRAY - var Blacklist Bob|Frank|Dave
     var Blacklist NULL
########################################################################################
## THIEF OPTIONS (ON OR OFF)
# BACKTRAIN WEAPONS (Temp Experimental feature) - Set weapons you are backtraining - Set to NULL to not use
     var BACKTRAIN1 NULL
     var BACKTRAIN2 NULL
     var BACKTRAIN3 NULL
# AMBUSH TRAINING (Use Ambush moves - stun/clout/slash)
     var Ambush ON
# Set which Khri you want script to use (Set as many ON as you want )
# It will only use as many khris as you can handle at once, prioritizing the important ones depending on the scenario)
     var khriSTEADY ON
     var khriSTRIKE ON
     var khriFOCUS ON
     var khriHASTEN ON
     var khriELUSION ON
     var khriENDURE ON
     var khriELIMINATE ON
     var khriINTIMIDATE ON
     var khriADAPTION OFF
     var khriAVOIDANCE ON
     var khriPROWESS ON
     var khriPLUNDER ON
     var khriTERRIFY ON
     var khriSIGHT ON
     var khriFLIGHT ON
     var khriSAGACITY ON
     var khriHARRIER ON
     var khriDARKEN ON
     var khriDAMPEN ON
     var khriSHADOWSTEP ON
     var khriEVANESCENCE OFF
     var khriGUILE ON
     var khriCREDENCE OFF
     var khriCALM OFF
     var khriSERENITY OFF
     var khriFRIGHT OFF
     var khriCUNNING OFF
     var khriSAFE OFF
# USE KHRI DURING TOWN RUN? (ON or OFF) - Turn OFF to Skip using Khri during town run - for Sanowret use
     var Khri.Town ON
########################################################################################
## BARBARIAN OPTIONS (ON OR OFF)
# USE WHIRLWIND?
     var Whirlwind ON
# USE DUAL WIELD? (ON or OFF) - Dual wield requires 450+ in the weapon
     var DualWield ON
# EXPERTISE COMBOES? (ON or OFF) - Does Barb Expertise Combos (and helps generate IR) 
     var Expertise ON
# Set which Forms you want to use (ON or OFF)
# Auto-turn forms on/off depending on what you are training
     var barbEagle ON
     var barbBadger ON
     var barbPanther ON
     var barbPiranha ON
     var barbDragon ON
     var barbMonkey ON
     var barbTurtle ON
     var barbOwl OFF
     var barbBear OFF
     var barbBuffalo OFF
     var barbPython ON
     var barbSwan OFF
     var barbToad OFF
     var barbWolverine OFF
# Set ROARS to use (will only use one)
     var roarEmbrace OFF
     var roarEverild ON
     var roarWail OFF
     var roarScreech OFF
     var roarShriek OFF
     var roarAnger ON
     var roarKuniyo OFF
# Berserks
     var zerkFamine ON
     var zerkAvalanche ON
     var zerkTsunami OFF
     var zerkWildfire OFF
     var zerkEarthquake OFF
     var zerkTornado OFF
     var zerkFlashflood OFF
     var zerkLandslide OFF
     var zerkCyclone OFF
     var zerkDrought OFF
# Set Meditations (ON or OFF) - (NOT ADDED YET) WILL ONLY WORK FOR HIGHER LEVEL BARBS
     var medContemplation ON
     var medTenacity ON
     var medSerenity ON
### END OF CHARACTER 15 VARIABLES
     echo **** LOADED %CHARACTER15 VARIABLES
     goto END.OF.VARS
}
##################################################################################################################################################################################################################
##################################################################################################################################################################################################################
     if !matchre("$charactername", ("%CHARACTER1|%CHARACTER2|%CHARACTER3|%CHARACTER4|%CHARACTER5|%CHARACTER6|%CHARACTER7|%CHARACTER8|%CHARACTER9|%CHARACTER10|%CHARACTER11|%CHARACTER12|%CHARACTER13|%CHARACTER14|%CHARACTER15")) then 
{
          echo
          echo =========================================================================
          put #echo Yellow ** ERROR! Your ubercombat-vars.inc variables are not properly set!!!
          put #echo Yellow ** Open ubercombat-vars.inc in your editor, Make sure character name is correct! Add your variables and try again.
          put #echo Yellow ** OR you screwed up the variables file. DO NOT delete or remove any { } # special characters, ONLY edit the variable definitions
          echo =========================================================================
          echo
          exit
}
     ###################
END.OF.VARS:
     if (%loading = 1) then return
     endofvars: