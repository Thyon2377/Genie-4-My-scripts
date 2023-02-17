#<=============================================================================================>#
#<                          INITIAL VARIABLE SETUP FOR GROUPHUNTER.                            >#
#<=============================================================================================>#
# GroupHunter Variable Setup for new Characters. (GroupHunterSetup.Cmd)
# Last Update: 19 November, 2011
#<--------------------------------------------------------------------------------------------->#
ABSOLUTE.TOP:
     pause 0.3
     echo
     echo *************************************************
     echo ***** SETTING INITIAL GROUPHUNTER VARIABLES *****
     echo *************************************************
     echo
     put #var Container RUCKSACK
     put #var Sheath BALDRIC
     put #var AmmoContainer BALDRIC
     put #var Spell01 NULL
     put #var Spell02 NULL
     put #var Spell03 NULL
     put #var Weapon01 BOW
     put #var Weapon02 SWORD 
     put #var Weapon03 STICK
     put #var Weapon04 CUDGEL
     put #var Weapon05 NULL
     put #var Weapon06 NULL
     put #var Weapon07 NULL
     put #var Weapon08 NULL
     put #var Weapon09 NULL
     put #var Weapon10 NULL
     put #var Weapon11 NULL
     put #var Weapon12 NULL
     put #var Weapon13 NULL
     put #var Weapon14 NULL
     put #var Weapon15 NULL
     put #var Weapon16 NULL
     put #var Weapon17 NULL
     put #var Weapon18 NULL
     put #var Weapon19 NULL
     put #var Weapon20 NULL
     put #var Weapon21 NULL
     put #var Weapon22 NULL
     put #var Weapon23 NULL
     put #var Weapon24 NULL
     put #var Weapon25 NULL
     put #var Skinner NULL
     put #var Carver Knife
     put #var MyShield Targe
     put #var ArmWorn Yes
     put #var ShieldUse Yes
     put #var ParryStick YES
     put #var GetAmmo YES
     put #var GetBoxes YES
     put #var GetHides YES
     put #var GetLoot YES
     put #var Loot.Option ALL
     put #var DumpJunk NO
     put #var Target.Rank 2000
     put #var Gem.List (agate|alexandrite|amber|amethyst|andalusite|aquamarine|(?!iron)(?:copper|silver|gold|platinum|bronze) bar|bead|beryl|bloodgem|bloodstone|carnelian|chakrel|chalcedony|chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|egg|eggcase|emerald|garnet|gem|glowstone|glossy malachite|goldstone|(chunk of|some|piece of)\s(silver|gold|platinum)-laced\sgranite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|nugget|onyx|opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon)
     put #var No.Skin \b(?:paper|lout|river sprite|gidii|goblin shaman|fendryad|nyad|madman|sprite|wood troll|lipopod|kelpie|vykathi builder|vykathi excavator|fire maiden|creeper|vine|thug|ruffian|footpad|cutthroat|gypsy marauder|young ogre|swain|kra'hei hatchling|nipoh oshu|dyrachis|shadoweaver|crag|frostweaver|atik'et|dryad|orc scout|eviscerator|guardian|pile of rubble|pirate|geni|orc bandit|umbramagii|screamer|scout ogre|swamp troll|mountain giant|gam chaga|scavenger troll|sleazy lout|bucca|dragon fanatic|dusk ogre|tress|bloodvine|armored warklin|velver|orc reiver|kra'hei|dragon priest|lun'shele hunter|orc raider|folsi immola|faenrae assassin|telga moradu|trekhalo|orc clan chief|shadow master|malchata|sky giant|imp|dummy|clay mage|clay soldier|clay archer|sentinel|zealot|juggernaut|skeleton|soul|boggle|zombie|wind hound|fiend|spirit|ur hhrki'izh|spectral pirate|spectral sailor|shylvic|skeleton kobold savage|skeleton kobold headhunter|skeletal sailor|olensari mihmanan|emaciated umbramagus|zombie nomad|sinister maelshyvean heirophant|gargantuan bone golem|plague wraith|snaer hafwa|wir dinego|skeletal peon|revivified mutt|tightwad|pinchfist|moneygrubber|skinflint)\b
     put #var save
     pause 0.3
     exit
