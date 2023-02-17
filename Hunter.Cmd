#<=============================================================================================>#
#<                             ~PELIC's HUNTING SCRIPT FOR GENIE 3                             >#
#<=============================================================================================>#
# Last Update: 22 February, 2012
#<--------------------------------------------------------------------------------------------->#
#
#    THIS SCRIPT REQUIRES THE EXP TRACKER PLUGIN!
#
#    Hunter supports all weapon types with the exception of thrown weapons.
#    No guarantees on any non-melee weapons, however.
#    There are a great many bugs in the ranged section, I will eventually debug it.
#
#    The following commands need to be set for your character:
#
#         -STOW (STORE LIST is your friend.)
#
#    This script requires you to set the following GLOBAL variables:
#
#         -Weapon01 Bow
#         -Weapon02 SWORD
#         -Weapon03 STICK
#         -Weapon04 CUDGEL
#         -Weapon05 NULL
#         -Weapon06 NULL
#         -Weapon07 NULL
#         -Skinner KNIFE
#         -Container RUCKSACK
#         -Spell01 NULL
#         -Spell02 NULL
#         -Spell03 NULL
#         -MyShield TARGE
#         -ArmWorn YES
#         -ShieldUse YES
#         -GetHides YES
#         -GetLoot YES
#         -GetBoxes YES
#         -DumpJunk YES
#         -Target.Rank 200
#         -Loot.Option (LOOT HELP for syntax)
#         -Roam ON 
#         -Dance ON
#         -Healing OFF
#
#    This script skins and searches anything without the need for critter variables.
#    Change the GetHides variable to YES if you'd like to keep skins.
#    If a bundle is worn, skins will be bundled.  Otherwise, all skins are stowed.
#
#    If GetLoot is set to YES, All gems and misc loot go into their assigned container. (STORE LIST for details)
#
#    Change the GetBoxes variable to YES if you'd like to pick up boxes.
#
#    Change the DumpJunk variable to YES if you'd like to reduce clutter. (Fires every 5 minutes)
#
#    Change the Target.Rank variable to the number you'd like your weapons to stop training at.
#    Alternatively, set it to something incredibly high to train indefinitely.
#    For example: Target.Rank 2000
#    WARNING: If weapon skills aren't moving at 29 or better, weapons will NOT switch. 
#
#    The combos for each weapon type are static.
#    If you want to use different combos you must edit the section for your weapon type.
#
#    Script sends a HUNT every kill, if 71 seconds or more have elapsed.
#
#    This script contains a spell casting section.
#    If you do not use magic, spells are automatically skipped.
#    Currently, the spell casting section does not support targetable spells.
#    Only include spells that you can cast on yourself or an area without a target.
#
#<--------------------------------------------------------------------------------------------->#
##### INCLUDE SETUP #####
ABSOLUTE.TOP:
     # debug 10
     goto INIT
     include healing.inc
##### VARIABLE SETUP #####
INIT:
     gosub BASE.ACTIONS
     var CurrentWeapon NULL
     var FormerWeapon NULL
     var Weapon NULL
     var WeaponType NULL
     var Last.Direction NULL
     var Current.Script hunter
     gosub STATUSBAR
##### WEAPON CHECK #####
CHECK.WEAPON:
     if "%CurrentWeapon" == "NULL" then goto CHECK.WEAPON.ONE
     if "%CurrentWeapon" == "$Weapon01" then goto CHECK.WEAPON.TWO
     if "%CurrentWeapon" == "$Weapon02" then goto CHECK.WEAPON.THREE
     if "%CurrentWeapon" == "$Weapon03" then goto CHECK.WEAPON.FOUR
     if "%CurrentWeapon" == "$Weapon04" then goto CHECK.WEAPON.FIVE
     if "%CurrentWeapon" == "$Weapon05" then goto CHECK.WEAPON.SIX
     if "%CurrentWeapon" == "$Weapon06" then goto CHECK.WEAPON.SEVEN
     if "%CurrentWeapon" == "$Weapon07" then goto CHECK.WEAPON.EIGHT
     if "%CurrentWeapon" == "$Weapon08" then goto CHECK.WEAPON.NINE
     if "%CurrentWeapon" == "$Weapon09" then goto CHECK.WEAPON.TEN
     if "%CurrentWeapon" == "$Weapon10" then goto CHECK.WEAPON.ELEVEN
     if "%CurrentWeapon" == "$Weapon11" then goto CHECK.WEAPON.TWELVE
     if "%CurrentWeapon" == "$Weapon12" then goto CHECK.WEAPON.THIRTEEN
     if "%CurrentWeapon" == "$Weapon13" then goto CHECK.WEAPON.FOURTEEN
     if "%CurrentWeapon" == "$Weapon14" then goto CHECK.WEAPON.FIFTEEN
     if "%CurrentWeapon" == "$Weapon15" then goto CHECK.WEAPON.SIXTEEN
     if "%CurrentWeapon" == "$Weapon16" then goto CHECK.WEAPON.SEVENTEEN
     if "%CurrentWeapon" == "$Weapon17" then goto CHECK.WEAPON.EIGHTEEN
     if "%CurrentWeapon" == "$Weapon18" then goto CHECK.WEAPON.NINETEEN
     if "%CurrentWeapon" == "$Weapon19" then goto CHECK.WEAPON.TWENTY
     if "%CurrentWeapon" == "$Weapon20" then goto CHECK.WEAPON.TWENTY-ONE
     if "%CurrentWeapon" == "$Weapon21" then goto CHECK.WEAPON.TWENTY-TWO
     if "%CurrentWeapon" == "$Weapon22" then goto CHECK.WEAPON.TWENTY-THREE
     if "%CurrentWeapon" == "$Weapon23" then goto CHECK.WEAPON.TWENTY-FOUR
     if "%CurrentWeapon" == "$Weapon24" then goto CHECK.WEAPON.TWENTY-FIVE
     if "%CurrentWeapon" == "$Weapon25" then goto CHECK.WEAPON.ONE
     goto CHECK.WEAPON.ONE
CHECK.WEAPON.ONE:
     if contains("$Weapon01", "NULL") then goto CHECK.WEAPON.TWO
     var CurrentWeapon $Weapon01
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWO:
     if contains("$Weapon02", "NULL") then goto CHECK.WEAPON.THREE
     var CurrentWeapon $Weapon02
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.THREE:
     if contains("$Weapon03", "NULL") then goto CHECK.WEAPON.FOUR
     var CurrentWeapon $Weapon03
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.FOUR:
     if contains("$Weapon04", "NULL") then goto CHECK.WEAPON.FIVE
     var CurrentWeapon $Weapon04
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.FIVE:
     if contains("$Weapon05", "NULL") then goto CHECK.WEAPON.SIX
     var CurrentWeapon $Weapon05
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.SIX:
     if contains("$Weapon06", "NULL") then goto CHECK.WEAPON.SEVEN
     var CurrentWeapon $Weapon06
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.SEVEN:
     if contains("$Weapon07", "NULL") then goto CHECK.WEAPON.EIGHT
     var CurrentWeapon $Weapon07
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.EIGHT:
     if contains("$Weapon08", "NULL") then goto CHECK.WEAPON.NINE
     var CurrentWeapon $Weapon08
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.NINE:
     if contains("$Weapon09", "NULL") then goto CHECK.WEAPON.TEN
     var CurrentWeapon $Weapon09
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TEN:
     if contains("$Weapon10", "NULL") then goto CHECK.WEAPON.ELEVEN
     var CurrentWeapon $Weapon10
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.ELEVEN:
     if contains("$Weapon11", "NULL") then goto CHECK.WEAPON.TWELVE
     var CurrentWeapon $Weapon11
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWELVE:
     if contains("$Weapon12", "NULL") then goto CHECK.WEAPON.THIRTEEN
     var CurrentWeapon $Weapon12
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.THIRTEEN:
     if contains("$Weapon13", "NULL") then goto CHECK.WEAPON.FOURTEEN
     var CurrentWeapon $Weapon13
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.FOURTEEN:
     if contains("$Weapon14", "NULL") then goto CHECK.WEAPON.FIFTEEN
     var CurrentWeapon $Weapon14
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.FIFTEEN:
     if contains("$Weapon15", "NULL") then goto CHECK.WEAPON.SIXTEEN
     var CurrentWeapon $Weapon15
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.SIXTEEN:
     if contains("$Weapon16", "NULL") then goto CHECK.WEAPON.SEVENTEEN
     var CurrentWeapon $Weapon16
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.SEVENTEEN:
     if contains("$Weapon17", "NULL") then goto CHECK.WEAPON.EIGHTEEN
     var CurrentWeapon $Weapon17
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.EIGHTEEN:
     if contains("$Weapon18", "NULL") then goto CHECK.WEAPON.NINETEEN
     var CurrentWeapon $Weapon18
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.NINETEEN:
     if contains("$Weapon19", "NULL") then goto CHECK.WEAPON.TWENTY
     var CurrentWeapon $Weapon19
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY:
     if contains("$Weapon20", "NULL") then goto CHECK.WEAPON.TWENTY-ONE
     var CurrentWeapon $Weapon20
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY-ONE:
     if contains("$Weapon21", "NULL") then goto CHECK.WEAPON.TWENTY-TWO
     var CurrentWeapon $Weapon21
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY-TWO:
     if contains("$Weapon22", "NULL") then goto CHECK.WEAPON.TWENTY-THREE
     var CurrentWeapon $Weapon22
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY-THREE:
     if contains("$Weapon23", "NULL") then goto CHECK.WEAPON.TWENTY-FOUR
     var CurrentWeapon $Weapon23
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY-FOUR:
     if contains("$Weapon24", "NULL") then goto CHECK.WEAPON.TWENTY-FIVE
     var CurrentWeapon $Weapon24
     goto CHECK.CURRENT.WEAPON
CHECK.WEAPON.TWENTY-FIVE:
     if contains("$Weapon25", "NULL") then goto CHECK.WEAPON.ONE
     var CurrentWeapon $Weapon25
     goto CHECK.CURRENT.WEAPON
##### WEAPON VARIABLE SETUP #####
CHECK.CURRENT.WEAPON:
##### SWAPPABLE #####
     if "%CurrentWeapon" == "BASTARD SWORD" then var Weapon BASTARD SWORD
     if "%CurrentWeapon" == "RUBY-HILTED SWORD" then var Weapon RUBY-HILTED SWORD
     if "%CurrentWeapon" == "CLAMSHELL-BLADE AXE.SWAPPABLE" then var Weapon CLAMSHELL-BLADE AXE
     if "%CurrentWeapon" == "PARTISAN.SWAPPABLE" then var Weapon PARTISAN
     if "%CurrentWeapon" == "BONE SPEAR.SWAPPABLE" then var Weapon BONE SPEAR
     if "%CurrentWeapon" == "WAR MALLET.SWAPPABLE" then var Weapon WAR MALLET
##### SLICERS #####
     # TWO-HANDED EDGED
     if "%CurrentWeapon" == "GREATSWORD" then var Weapon GREATSWORD
     if "%CurrentWeapon" == "CLAYMORE" then var Weapon CLAYMORE
     if "%CurrentWeapon" == "TWO-HANDED SWORD" then var Weapon TWO-HANDED SWORD
     if "%CurrentWeapon" == "DWARVEN BATTLE AXE" then var Weapon DWARVEN AXE
     # HEAVY EDGED
     if "%CurrentWeapon" == "BROADSWORD" then var Weapon BROADSWORD
     if "%CurrentWeapon" == "LONGSWORD" then var Weapon LONGSWORD
     if "%CurrentWeapon" == "DAGASSE" then var Weapon DAGASSE
     if "%CurrentWeapon" == "BATTLE AXE" then var Weapon BATTLE AXE
     if "%CurrentWeapon" == "NIMSHA" then var Weapon NIMSHA
     if "%CurrentWeapon" == "HURLING AXE" then var Weapon HURLING AXE
     # MEDIUM EDGED
     if "%CurrentWeapon" == "HAND AXE" then var Weapon HAND AXE
     if "%CurrentWeapon" == "SMALL SWORD" then var Weapon SMALL SWORD
     if "%CurrentWeapon" == "SCIMITAR" then var Weapon SCIMITAR
     if "%CurrentWeapon" == "SAPARA" then var Weapon SAPARA
     if "%CurrentWeapon" == "CUTLASS" then var Weapon CUTLASS
     if "%CurrentWeapon" == "SHOTEL" then var Weapon SHOTEL
     if "%CurrentWeapon" == "THROWING AXE" then var Weapon THROWING AXE
     # LIGHT EDGED
     if "%CurrentWeapon" == "DAO" then var Weapon DAO
     if "%CurrentWeapon" == "KATAR" then var Weapon KATAR
     if "%CurrentWeapon" == "CURVED KYTHE" then var Weapon KYTHE
     if "%CurrentWeapon" == "KYTHE" then var Weapon KYTHE
     if "%CurrentWeapon" == "CARVING KNIFE" then var Weapon CARVING KNIFE
     if "%CurrentWeapon" == "BUTCHER KNIFE" then var Weapon BUTCHER KNIFE
     if "%CurrentWeapon" == "LONG KNIFE" then var Weapon LONG KNIFE
     if "%CurrentWeapon" == "TALON BLADE" then var Weapon TALON BLADE
     if "%CurrentWeapon" == "SHORT SWORD" then var Weapon SHORT SWORD
##### JABBERS #####
     # TWO-HANDED EDGED
     # HEAVY EDGED
     # MEDIUM EDGED
     if "%CurrentWeapon" == "SABRE" then var Weapon SABRE
     # LIGHT EDGED
     if "%CurrentWeapon" == "DAGGER" then var Weapon DAGGER
     if "%CurrentWeapon" == "TAGO" then var Weapon TAGO
     if "%CurrentWeapon" == "MISERICORDE" then var Weapon MISERICORDE
     if "%CurrentWeapon" == "TELEK" then var Weapon TELEK
     if "%CurrentWeapon" == "HUNTING KNIFE" then var Weapon HUNTING KNIFE
##### BLUNTS #####
     # TWO-HANDED BLUNTS
     if "%CurrentWeapon" == "AKABO" then var Weapon AKABO
     if "%CurrentWeapon" == "SLEDGEHAMMER" then var Weapon SLEDGEHAMMER
     if "%CurrentWeapon" == "IRONHILL MATTOCK" then var Weapon IRONHILL MATTOCK
     if "%CurrentWeapon" == "FLAIL" then var Weapon FLAIL
     if "%CurrentWeapon" == "WAR MATTOCK" then var Weapon WAR MATTOCK
     # HEAVY BLUNTS
     if "%CurrentWeapon" == "HORSEMAN'S FLAIL" then var Weapon HORSEMAN'S FLAIL
     if "%CurrentWeapon" == "THROWING HAMMER" then var Weapon THROWING HAMMER
     if "%CurrentWeapon" == "THROWING MALLET" then var Weapon THROWING MALLET
     if "%CurrentWeapon" == "SRHHTEL HAMMER" then var Weapon SRHHTEL HAMMER
     if "%CurrentWeapon" == "STEEL HAMMER" then var Weapon STEEL HAMMER
     if "%CurrentWeapon" == "HHR'ATA" then var Weapon HHR'ATA
     if "%CurrentWeapon" == "SPIKED BALL AND CHAIN" then var Weapon SPIKED BALL
     if "%CurrentWeapon" == "WAR MAUL" then var Weapon WAR MAUL
     if "%CurrentWeapon" == "MORNING STAR" then var Weapon MORNING STAR
     # MEDIUM BLUNTS
     if "%CurrentWeapon" == "DWARVEN HAMMER" then var Weapon DWARVEN HAMMER
     if "%CurrentWeapon" == "FORGE HAMMER" then var Weapon FORGE HAMMER
     if "%CurrentWeapon" == "BELAYING PIN" then var Weapon BELAYING PIN
     if "%CurrentWeapon" == "MACE" then var Weapon MACE
     if "%CurrentWeapon" == "BONE CLUB" then var Weapon BONE CLUB
     if "%CurrentWeapon" == "WAR HAMMER" then var Weapon WAR HAMMER
     # LIGHT BLUNTS
     if "%CurrentWeapon" == "ZUBKE" then var Weapon ZUBKE
     if "%CurrentWeapon" == "BOLA" then var Weapon BOLA
     if "%CurrentWeapon" == "BOKO" then var Weapon BOKO
     if "%CurrentWeapon" == "THROWING CLUB" then var Weapon THROWING CLUB
     if "%CurrentWeapon" == "BULHAWF" then var Weapon BULHAWF
     if "%CurrentWeapon" == "HEAVY BLUDGEON" then var Weapon HEAVY BLUDGEON
     if "%CurrentWeapon" == "HEFTY BLUDGEON" then var Weapon HEFTY BLUDGEON
     if "%CurrentWeapon" == "STURDY CUDGEL" then var Weapon STURDY CUDGEL
     if "%CurrentWeapon" == "CUDGEL" then var Weapon CUDGEL
     if "%CurrentWeapon" == "OAR" then var Weapon OAR
##### STAVES #####
     # QUARTERSTAFF
     if "%CurrentWeapon" == "STICK" then var Weapon WOODEN CANE
     if "%CurrentWeapon" == "UGUNS NUJA" then var Weapon UGUNS NUJA
     if "%CurrentWeapon" == "STAFF" then var Weapon STAFF
     if "%CurrentWeapon" == "QUARTERSTAFF" then var Weapon QUARTERSTAFF
     if "%CurrentWeapon" == "QUARTER STAFF" then var Weapon STAFF
     if "%CurrentWeapon" == "PIKE STAFF" then var Weapon STAFF
     # SHORT STAFF
     if "%CurrentWeapon" == "IRON PRYBAR" then var Weapon PRYBAR
     if "%CurrentWeapon" == "IRONWOOD NIGHTSTICK" then var Weapon NIGHTSTICK
     if "%CurrentWeapon" == "SOLID NIGHTSTICK" then var Weapon NIGHTSTICK
     if "%CurrentWeapon" == "NIGHTSTICK" then var Weapon NIGHTSTICK
##### POLEARMS #####
     # PIKE
     if "%CurrentWeapon" == "NGALIO" then var Weapon NGALIO
     if "%CurrentWeapon" == "HUNTING SPEAR" then var Weapon HUNTING SPEAR
     if "%CurrentWeapon" == "TASSELED SPEAR" then var Weapon TASSELED SPEAR
     if "%CurrentWeapon" == "HUNTHSLEG" then var Weapon HUNTHSLEG
     # HALBERD
     if "%CurrentWeapon" == "HALBERD" then var Weapon HALBERD
     if "%CurrentWeapon" == "LOCHABER AXE" then var Weapon LOCHABER AXE
##### RANGED #####
     # SHORT BOW
     if "%CurrentWeapon" == "SHORT BOW" then var Weapon SHORT BOW
     if "%CurrentWeapon" == "ALACA CHUNENGUTI" then var Weapon ALACA CHUNENGUTI
     # LONGBOW
     if "%CurrentWeapon" == "LONGBOW" then var Weapon LONGBOW
     # COMPOSITE BOW
     if "%CurrentWeapon" == "COMPOSITE BOW" then var Weapon COMPOSITE BOW
     if "%CurrentWeapon" == "FLAT BOW" then var Weapon FLAT BOW
     # LIGHT CROSSBOW
     if "%CurrentWeapon" == "LIGHT CROSSBOW" then var Weapon LIGHT CROSSBOW
     if "%CurrentWeapon" == "CARVED-STOCK CROSSBOW" then var Weapon CARVED-STOCK CROSSBOW
     if "%CurrentWeapon" == "WHITE PINE CROSSBOW" then var Weapon CROSSBOW
     if "%CurrentWeapon" == "FORESTER'S CROSSBOW" then var Weapon FORESTER'S CROSSBOW
     # HEAVY CROSSBOW
     if "%CurrentWeapon" == "HEAVY CROSSBOW" then var Weapon HEAVY CROSSBOW
     if "%CurrentWeapon" == "WINDLASS-DRAWN CROSSBOW" then var Weapon WINDLASS-DRAWN CROSSBOW
     if "%CurrentWeapon" == "SLURBOW" then var Weapon SLURBOW
     # SLING
     if "%CurrentWeapon" == "SLING" then var Weapon SLING
     # STAFF SLING
     if "%CurrentWeapon" == "STAFF SLING" then var Weapon STAFF SLING
##### BRAWLING #####
     if "%CurrentWeapon" == "BRAWL" then var Weapon BRAWL
     gosub SHIELD.CHECK.SKIN
     gosub WIELD.INIT
     gosub SWAP.INIT
     if "$lefthand" != "Empty" then gosub SHEATH.LEFT
     if "%Weapon" == "BRAWL" and "$righthand" != "Empty" then gosub SHEATH.INIT
     goto CHECK.WEAPON.TYPE
##### WEAPON TYPE VARIABLE SETUP #####
CHECK.WEAPON.TYPE:
##### SWAPPABLE #####
     if "%CurrentWeapon" == "BASTARD SWORD" then var WeaponType 2HE/HE
     if "%CurrentWeapon" == "RUBY-HILTED SWORD" then var WeaponType 2HE/HE
     if "%CurrentWeapon" == "CLAMSHELL-BLADE AXE.SWAPPABLE" then var WeaponType 2HE/HE
     if "%CurrentWeapon" == "PARTISAN.SWAPPABLE" then var WeaponType HALBERD/QS
     if "%CurrentWeapon" == "BONE SPEAR.SWAPPABLE" then var WeaponType PIKE/SS
     if "%CurrentWeapon" == "WAR MALLET.SWAPPABLE" then var WeaponType MB/ME
##### SLICERS #####
     # TWO-HANDED EDGED
     if "%CurrentWeapon" == "GREATSWORD" then var WeaponType 2HE
     if "%CurrentWeapon" == "CLAYMORE" then var WeaponType 2HE
     if "%CurrentWeapon" == "TWO-HANDED SWORD" then var WeaponType 2HE
     if "%CurrentWeapon" == "DWARVEN BATTLE AXE" then var WeaponType 2HE
     # HEAVY EDGED
     if "%CurrentWeapon" == "BATTLE AXE" then var WeaponType HE.SLICE
     if "%CurrentWeapon" == "HURLING AXE" then var WeaponType HE.SLICE
     if "%CurrentWeapon" == "DAGASSE" then var WeaponType HE.SLICE
     if "%CurrentWeapon" == "BROADSWORD" then var WeaponType HE.SLICE
     if "%CurrentWeapon" == "LONGSWORD" then var WeaponType HE.SLICE
     if "%CurrentWeapon" == "NIMSHA" then var WeaponType HE.SLICE
     # MEDIUM EDGED
     if "%CurrentWeapon" == "HAND AXE" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "THROWING AXE" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "SMALL SWORD" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "SCIMITAR" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "CUTLASS" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "SHOTEL" then var WeaponType ME.SLICE
     if "%CurrentWeapon" == "SAPARA" then var WeaponType ME.SLICE
     # LIGHT EDGED
     if "%CurrentWeapon" == "DAO" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "KATAR" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "CURVED KYTHE" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "KYTHE" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "CARVING KNIFE" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "BUTCHER KNIFE" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "LONG KNIFE" then var WeaponType LE.SLICE
     if "%CurrentWeapon" == "TALON BLADE" then var WeaponType LE.SLICE
##### JABBERS #####
     # TWO-HANDED EDGED
     # HEAVY EDGED
     # MEDIUM EDGED
     if "%CurrentWeapon" == "SABRE" then var WeaponType ME.PUNCTURE
     # LIGHT EDGED
     if "%CurrentWeapon" == "DAGGER" then var WeaponType LE.PUNCTURE
     if "%CurrentWeapon" == "TAGO" then var WeaponType LE.PUNCTURE
     if "%CurrentWeapon" == "MISERICORDE" then var WeaponType LE.PUNCTURE
     if "%CurrentWeapon" == "TELEK" then var WeaponType LE.PUNCTURE
     if "%CurrentWeapon" == "HUNTING KNIFE" then var WeaponType LE.PUNCTURE
     if "%CurrentWeapon" == "SHORT SWORD" then var WeaponType LE.PUNCTURE
##### BLUNTS #####
     # TWO-HANDED BLUNTS
     if "%CurrentWeapon" == "AKABO" then var WeaponType 2HB
     if "%CurrentWeapon" == "SLEDGEHAMMER" then var WeaponType 2HB
     if "%CurrentWeapon" == "IRONHILL MATTOCK" then var WeaponType 2HB
     if "%CurrentWeapon" == "FLAIL" then var WeaponType 2HB
     if "%CurrentWeapon" == "WAR MATTOCK" then var WeaponType 2HB
     # LARGE BLUNTS
     if "%CurrentWeapon" == "HORSEMAN'S FLAIL" then var WeaponType LRGB
     if "%CurrentWeapon" == "THROWING HAMMER" then var WeaponType LRGB
     if "%CurrentWeapon" == "THROWING MALLET" then var WeaponType LRGB
     if "%CurrentWeapon" == "SRHHTEL HAMMER" then var WeaponType LRGB
     if "%CurrentWeapon" == "STEEL HAMMER" then var WeaponType LRGB
     if "%CurrentWeapon" == "HHR'ATA" then var WeaponType LRGB
     if "%CurrentWeapon" == "SPIKED BALL AND CHAIN" then var WeaponType LRGB
     if "%CurrentWeapon" == "WAR MAUL" then var WeaponType LRGB
     if "%CurrentWeapon" == "MORNING STAR" then var WeaponType LRGB
     # MEDIUM BLUNTS
     if "%CurrentWeapon" == "DWARVEN HAMMER" then var WeaponType MB
     if "%CurrentWeapon" == "FORGE HAMMER" then var WeaponType MB
     if "%CurrentWeapon" == "BELAYING PIN" then var WeaponType MB
     if "%CurrentWeapon" == "MACE" then var WeaponType MB
     if "%CurrentWeapon" == "BONE CLUB" then var WeaponType MB
     if "%CurrentWeapon" == "WAR HAMMER" then var WeaponType MB
     # LIGHT BLUNTS
     if "%CurrentWeapon" == "ZUBKE" then var WeaponType LB
     if "%CurrentWeapon" == "BOLA" then var WeaponType LB
     if "%CurrentWeapon" == "BOKO" then var WeaponType LB
     if "%CurrentWeapon" == "THROWING CLUB" then var WeaponType LB
     if "%CurrentWeapon" == "BULHAWF" then var WeaponType LB
     if "%CurrentWeapon" == "HEAVY BLUDGEON" then var WeaponType LB
     if "%CurrentWeapon" == "HEFTY BLUDGEON" then var WeaponType LB
     if "%CurrentWeapon" == "STURDY CUDGEL" then var WeaponType LB
     if "%CurrentWeapon" == "CUDGEL" then var WeaponType LB
     if "%CurrentWeapon" == "OAR" then var WeaponType LB
##### STAVES #####
     # QUARTERSTAFF
     if "%CurrentWeapon" == "WOODEN CANE" then var WeaponType QS
     if "%CurrentWeapon" == "UGUNS NUJA" then var WeaponType QS
     if "%CurrentWeapon" == "STAFF" then var WeaponType QS
     if "%CurrentWeapon" == "QUARTERSTAFF" then var WeaponType QS
     if "%CurrentWeapon" == "QUARTER STAFF" then var WeaponType QS
     if "%CurrentWeapon" == "PIKE STAFF" then var WeaponType QS
     # SHORT STAFF
     if "%CurrentWeapon" == "IRON PRYBAR" then var WeaponType SS
     if "%CurrentWeapon" == "IRONWOOD NIGHTSTICK" then var WeaponType SS
     if "%CurrentWeapon" == "SOLID NIGHTSTICK" then var WeaponType SS
     if "%CurrentWeapon" == "NIGHTSTICK" then var WeaponType SS
##### POLEARMS #####
     # PIKE
     if "%CurrentWeapon" == "NGALIO" then var WeaponType PIKE
     if "%CurrentWeapon" == "HUNTING SPEAR" then var WeaponType PIKE
     if "%CurrentWeapon" == "TASSELED SPEAR" then var WeaponType PIKE
     if "%CurrentWeapon" == "HUNTHSLEG" then var WeaponType PIKE
     # HALBERD
     if "%CurrentWeapon" == "HALBERD" then var WeaponType HALBERD
     if "%CurrentWeapon" == "LOCHABER AXE" then var WeaponType HALBERD
##### RANGED #####
     # SHORT BOW
     if "%CurrentWeapon" == "SHORT BOW" then var WeaponType SB
     if "%CurrentWeapon" == "ALACA CHUNENGUTI" then var Weapon SB
     # LONGBOW
     if "%CurrentWeapon" == "LONGBOW" then var WeaponType LONGBOW
     # COMPOSITE BOW
     if "%CurrentWeapon" == "COMPOSITE BOW" then var WeaponType CB
     if "%CurrentWeapon" == "FLAT BOW" then var Weapon CB
     # LIGHT CROSSBOW
     if "%CurrentWeapon" == "LIGHT CROSSBOW" then var WeaponType LX
     if "%CurrentWeapon" == "CARVED-STOCK CROSSBOW" then var WeaponType LX
     if "%CurrentWeapon" == "WHITE PINE CROSSBOW" then var WeaponType LX
     if "%CurrentWeapon" == "FORESTER'S CROSSBOW" then var WeaponType LX
     # HEAVY CROSSBOW
     if "%CurrentWeapon" == "HEAVY CROSSBOW" then var WeaponType HX
     if "%CurrentWeapon" == "WINDLASS-DRAWN CROSSBOW" then var WeaponType HX
     if "%CurrentWeapon" == "SLURBOW" then var WeaponType HX
     # SLING
     if "%CurrentWeapon" == "SLING" then var WeaponType SLING
     # STAFF SLING
     if "%CurrentWeapon" == "STAFF SLING" then var WeaponType STS
##### BRAWLING #####
     if "%CurrentWeapon" == "BRAWL" then var WeaponType BRAWL
     if "%CurrentWeapon" == "NULL" then goto WEAPON.SETUP.ERROR
     if "%WeaponType" == "NULL" then goto WEAPON.SETUP.ERROR
     goto %WeaponType
##### WEAPON SETUP #####
##### 2HE/HE SETUP #####
2HE/HE:
     matchre 2HE/HE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre 2HE/HE ^You move .* to your .* hand\.$
     matchre 2HE/HE ^You .*switch your .* so that you can use it as a two-handed edged weapon\.$
     matchre 2HE/HE ^You .* your grip .* can be used as a two-handed edged weapon\.$
     matchre 2HE/HE.HE ^You .*switch your .* so that you can use it as a heavy edged weapon\.$
     matchre 2HE/HE.HE ^You .* your grip .* can be used as a heavy edged weapon\.$
     matchre 2HE/HE.STOW ^You must have two free hands to use the .* two-handed\.$
     # You deftly change your grip on your sword so it can be used as a two-handed edged weapon.
     # You fiercely switch your grip so that your sword can be used as a heavy edged weapon.
     send SWAP MY %Weapon
     matchwait
2HE/HE.STOW:
     gosub STOW.LEFT
     goto 2HE/HE
2HE/HE.HE:
     var WeaponType 2HE/HE.HE
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
2HE/HE.2HE:
     var WeaponType 2HE/HE.2HE
     if $Twohanded_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### ME/MB SETUP #####
ME/MB:
     matchre ME/MB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ME/MB ^You switch your .* so that you can use it as a medium edged weapon\.
     matchre ME/MB ^You move a .* to your right hand\.
     matchre ME/MB.MB ^You switch your .* so that you can use it as a medium blunt weapon\.
     matchre ME/MB.STOW ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
ME/MB.STOW:
     gosub STOW.LEFT
     goto ME/MB
ME/MB.ME:
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     var WeaponType ME/MB.ME
     goto START
ME/MB.MB:
     if $Medium_Blunt.Ranks > $Target.Rank then goto SWITCH
     var WeaponType ME/MB.MB
     goto START
##### HALBERD/QS SETUP #####
HALBERD/QS:
     matchre HALBERD/QS ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre HALBERD/QS ^You move a .* to your right hand\.
     matchre HALBERD/QS ^You switch your .* so that you can use it as a quarter staff weapon\.
     matchre HALBERD/QS.HALBERD ^You switch your .* so that you can use it as a halberd weapon\.
     matchre HALBERD/QS.STOW ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
HALBERD/QS.STOW:
     gosub STOW.LEFT
     goto HALBERD/QS
HALBERD/QS.HALBERD:
     if $Halberds.Ranks > $Target.Rank then goto SWITCH
     var WeaponType HALBERD/QS.HALBERD
     goto START
HALBERD/QS.QS:
     if $Quarter_Staff.Ranks > $Target.Rank then goto SWITCH
     var WeaponType HALBERD/QS.QS
     goto START
##### PIKE/SS SETUP #####
PIKE/SS:
     matchre PIKE/SS ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre PIKE/SS ^You move a .* to your right hand\.
     matchre PIKE/SS ^You switch your .* so that you can use it as a short staff weapon\.
     matchre PIKE/SS.PIKE ^You switch your .* so that you can use it as a pike weapon\.
     matchre PIKE/SS.STOW ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
PIKE/SS.STOW:
     gosub STOW.LEFT
     goto PIKE/SS
PIKE/SS.PIKE:
     if $Pikes.Ranks > $Target.Rank then goto SWITCH
     var WeaponType PIKE/SS.PIKE
     goto START
PIKE/SS.SS:
     if $Short_Staff.Ranks > $Target.Rank then goto SWITCH
     var WeaponType PIKE/SS.SS
     goto START
##### TWOHANDED EDGED SETUP #####
2HE:
     if $Twohanded_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### HEAVY EDGED SLICER SETUP #####
HE.SLICE:
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### MEDIUM EDGED SLICER SETUP #####
ME.SLICE:
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### LIGHT EDGED SLICER SETUP #####
LE.SLICE:
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### HEAVY EDGED PUNCTURE SETUP #####
HE.PUNCTURE:
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### MEDIUM EDGED PUNCTURE SETUP #####
ME.PUNCTURE:
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### LIGHT EDGED PUNCTURE SETUP #####
LE.PUNCTURE:
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START
##### QUARTER STAFF SETUP #####
QS:
     if $Quarter_Staff.Ranks > $Target.Rank then goto SWITCH
     goto START
##### SHORT STAFF SETUP #####
SS:
     if $Short_Staff.Ranks > $Target.Rank then goto SWITCH
     goto START
##### TWOHANDED BLUNT SETUP #####
2HB:
     if $Twohanded_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START
##### LARGE BLUNT SETUP #####
LRGB:
     if $Heavy_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START
##### MEDIUM BLUNT SETUP #####
MB:
     if $Medium_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START
##### LIGHT BLUNT SETUP #####
LB:
     if $Light_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START
##### HALBERD SETUP #####
HALBERD:
     if $Halberds.Ranks > $Target.Rank then goto SWITCH
     goto START
##### PIKE SETUP #####
PIKE:
     if $Pikes.Ranks > $Target.Rank then goto SWITCH
     goto START
##### BRAWLING SETUP #####
BRAWL:
     if $Brawling.Ranks > $Target.Rank then goto SWITCH
     goto START
##### LONGBOW SETUP #####
LONGBOW:
     if $Long_Bow.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### SLING SETUP #####
SLING:
     if $Slings.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### STAFF SLING SETUP #####
STS:
     if $Staff_Sling.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### SHORT BOW SETUP #####
SB:
     if $Short_Bow.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### COMPOSITE BOW SETUP #####
CB:
     if $Composite_Bow.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### LIGHT CROSSBOW SETUP #####
LX:
     if $Light_Crossbow.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### HEAVY CROSSBOW SETUP #####
HX:
     if $Heavy_Crossbow.Ranks > $Target.Rank then goto SWITCH
     put #var GetAmmo YES
     gosub STANCE.SET.CUSTOM
     goto START
##### COMBAT SECTION #####
##### LE SLICING COMBO #####
START.LE.SLICE:
     if $Light_Edged.LearningRate > 29 then goto SWITCH
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
START.CONT.LE.SLICE:
     gosub SHIELD.CHECK
     goto LE.SLICE.INIT
LE.SLICE.INIT:
     matchre LE.SLICE.INIT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^You are already in a position to parry\.
     matchre ASSESS ^You move into a position to parry\.
     send PARRY
     matchwait
CONTINUE.LE.SLICE:
     if $Light_Edged.LearningRate > 29 then goto SWITCH
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
PARRY.LE.SLICE:
     matchre PARRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre FEINT ^You are already in a position to parry\.
     matchre FEINT ^You move into a position to parry\.
     send PARRY
     matchwait
BEGIN.LE.SLICE:
FEINT.LE.SLICE:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre DRAW ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
DRAW.LE.SLICE:
     matchre DRAW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SLICE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send DRAW
     matchwait
SLICE.LE.SLICE:
     matchre SLICE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CHOP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SLICE
     matchwait
CHOP.LE.SLICE:
     matchre CHOP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send CHOP
     matchwait
##### ME/HE/2HE SLICING COMBO #####
START.2HE/HE.2HE:
START.2HE:
     if $Twohanded_Edged.LearningRate > 29 then goto SWITCH
     if $Twohanded_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.2HE/HE.HE:
START.HE.SLICE:
     if $Heavy_Edged.LearningRate > 29 then goto SWITCH
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.ME.SLICE:
     if $Medium_Edged.LearningRate > 29 then goto SWITCH
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.2HE/HE.2HE:
START.CONT.2HE:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
     goto PARRY
START.CONT.2HE/HE.HE:
START.CONT.HE.SLICE:
START.CONT.ME.SLICE:
     gosub SHIELD.CHECK
     goto PARRY
PARRY.2HE/HE.2HE:
PARRY.2HE/HE.HE:
PARRY.2HE:
PARRY.HE.SLICE:
PARRY.ME.SLICE:
     matchre PARRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^You are already in a position to parry\.
     matchre ASSESS ^You move into a position to parry\.
     send PARRY
     matchwait
BEGIN.2HE/HE.2HE:
BEGIN.2HE/HE.HE:
BEGIN.2HE:
BEGIN.HE.SLICE:
BEGIN.ME.SLICE:
FEINT.2HE/HE.2HE:
FEINT.2HE/HE.HE:
FEINT.2HE:
FEINT.HE.SLICE:
FEINT.ME.SLICE:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre DRAW ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
CONTINUE.2HE/HE.2HE:
CONTINUE.2HE:
     if $Twohanded_Edged.Ranks > $Target.Rank then goto SWITCH
     if $Twohanded_Edged.LearningRate > 29 then goto SWITCH
     goto DRAW
CONTINUE.2HE/HE.HE:
CONTINUE.HE.SLICE:
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     if $Heavy_Edged.LearningRate > 29 then goto SWITCH
     goto DRAW
CONTINUE.ME.SLICE:
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     if $Medium_Edged.LearningRate > 29 then goto SWITCH
     goto DRAW
DRAW.2HE/HE.2HE:
DRAW.2HE/HE.HE:
DRAW.2HE:
DRAW.HE.SLICE:
DRAW.ME.SLICE:
     matchre DRAW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SWEEP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send DRAW
     matchwait
SWEEP.2HE/HE.2HE:
SWEEP.2HE/HE.HE:
SWEEP.2HE:
SWEEP.HE.SLICE:
SWEEP.ME.SLICE:
     matchre SWEEP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SLICE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SWEEP
     matchwait
SLICE.2HE/HE.2HE:
SLICE.2HE/HE.HE:
SLICE.2HE:
SLICE.HE.SLICE:
SLICE.ME.SLICE:
     matchre SLICE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CHOP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SLICE
     matchwait
CHOP.2HE/HE.2HE:
CHOP.2HE/HE.HE:
CHOP.2HE:
CHOP.HE.SLICE:
CHOP.ME.SLICE:
     matchre CHOP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send CHOP
     matchwait
##### PUNCTURE COMBO #####
START.HE.PUNCTURE:
     if $Heavy_Edged.LearningRate > 29 then goto SWITCH
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.ME.PUNCTURE:
     if $Medium_Edged.LearningRate > 29 then goto SWITCH
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.LE.PUNCTURE:
     if $Light_Edged.LearningRate > 29 then goto SWITCH
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.HE.PUNCTURE:
START.CONT.ME.PUNCTURE:
START.CONT.LE.PUNCTURE:
     gosub SHIELD.CHECK
PARRY.HE.PUNCTURE:
PARRY.ME.PUNCTURE:
PARRY.LE.PUNCTURE:
     matchre PARRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^You are already in a position to parry\.
     matchre ASSESS ^You move into a position to parry\.
     send PARRY
     matchwait
CONTINUE.HE.PUNCTURE:
     if $Heavy_Edged.LearningRate > 29 then goto SWITCH
     if $Heavy_Edged.Ranks > $Target.Rank then goto SWITCH
     goto FEINT
CONTINUE.ME.PUNCTURE:
     if $Medium_Edged.LearningRate > 29 then goto SWITCH
     if $Medium_Edged.Ranks > $Target.Rank then goto SWITCH
     goto FEINT
CONTINUE.LE.PUNCTURE:
     if $Light_Edged.LearningRate > 29 then goto SWITCH
     if $Light_Edged.Ranks > $Target.Rank then goto SWITCH
     goto FEINT
BEGIN.HE.PUNCTURE:
BEGIN.ME.PUNCTURE:
BEGIN.LE.PUNCTURE:
FEINT.HE.PUNCTURE:
FEINT.ME.PUNCTURE:
FEINT.LE.PUNCTURE:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre LUNGE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
LUNGE.HE.PUNCTURE:
LUNGE.ME.PUNCTURE:
LUNGE.LE.PUNCTURE:
     matchre LUNGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre THRUST ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send LUNGE
     matchwait
THRUST.HE.PUNCTURE:
THRUST.ME.PUNCTURE:
THRUST.LE.PUNCTURE:
     matchre THRUST ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre JAB ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send THRUST
     matchwait
JAB.HE.PUNCTURE:
JAB.ME.PUNCTURE:
JAB.LE.PUNCTURE:
     matchre JAB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JAB
     matchwait
##### QUARTERSTAFF COMBO #####
START.QS:
START.HALBERD/QS.QS:
     if $Quarter_Staff.LearningRate > 29 then goto SWITCH
     if $Quarter_Staff.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.QS:
START.CONT.HALBERD/QS.QS:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
PARRY.QS:
PARRY.HALBERD/QS.QS:
     matchre PARRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^You are already in a position to parry\.
     matchre ASSESS ^You move into a position to parry\.
     send PARRY
     matchwait
CONTINUE.QS:
CONTINUE.HALBERD/QS.QS:
     if $Quarter_Staff.LearningRate > 29 then goto SWITCH
     if $Quarter_Staff.LearningRate > $Target.Rank then goto SWITCH
PARRY.CONTINUE.QS:
PARRY.CONTINUE.HALBERD/QS.QS:
     matchre PARRY.CONTINUE.QS ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre THRUST ^You are already in a position to parry\.
     matchre THRUST ^You move into a position to parry\.
     send PARRY
     matchwait
BEGIN.QS:
BEGIN.HALBERD/QS.QS:
     if $Quarter_Staff.LearningRate > 29 then goto SWITCH
     if $Quarter_Staff.LearningRate > $Target.Rank then goto SWITCH
THRUST.QS:
THRUST.HALBERD/QS.QS:
     matchre THRUST ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre FEINT ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send THRUST
     matchwait
FEINT.QS:
FEINT.HALBERD/QS.QS:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre LUNGE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
LUNGE.QS:
LUNGE.HALBERD/QS.QS:
     matchre LUNGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre DRAW ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send LUNGE
     matchwait
DRAW.QS:
DRAW.HALBERD/QS.QS:
     matchre DRAW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SLICE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send DRAW
     matchwait
SLICE.QS:
SLICE.HALBERD/QS.QS:
     matchre SLICE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SLICE
     matchwait
##### SHORT STAFF COMBO #####
START.SS:
START.PIKE/SS.SS:
     if $Short_Staff.LearningRate > 29 then goto SWITCH
     if $Short_Staff.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.SS:
START.CONT.PIKE/SS.SS:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
PARRY.SS:
PARRY.PIKE/SS.SS:
     matchre PARRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^You are already in a position to parry\.$
     matchre ASSESS ^You move into a position to parry\.$
     send PARRY
     matchwait
BEGIN.SS:
BEGIN.PIKE/SS.SS:
CONTINUE.SS:
CONTINUE.PIKE/SS.SS:
     if $Short_Staff.LearningRate > 29 then goto SWITCH
     if $Short_Staff.Ranks > $Target.Rank then goto SWITCH
THRUST.SS:
THRUST.PIKE/SS.SS:
     matchre THRUST ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SWEEP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send THRUST
     matchwait
SWEEP.SS:
SWEEP.PIKE/SS.SS:
     matchre SWEEP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CHOP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SWEEP
     matchwait
CHOP.SS:
CHOP.PIKE/SS.SS:
     matchre CHOP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre JAB ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send CHOP
     matchwait
JAB.SS:
JAB.PIKE/SS.SS:
     matchre JAB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre FEINT ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JAB
     matchwait
FEINT.SS:
FEINT.PIKE/SS.SS:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
##### BLUNT COMBOS #####
START.2HB:
     if $Twohanded_Blunt.LearningRate > 29 then goto SWITCH
     if $Twohanded_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.LRGB:
     if $Heavy_Blunt.LearningRate > 29 then goto SWITCH
     if $Heavy_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.MB:
     if $Medium_Blunt.LearningRate > 29 then goto SWITCH
     if $Medium_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.LB:
     if $Light_Blunt.LearningRate > 29 then goto SWITCH
     if $Light_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.2HB:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
     goto DODGE
START.CONT.LRGB:
START.CONT.MB:
START.CONT.LB:
     gosub SHIELD.CHECK
DODGE.2HB:
DODGE.LRGB:
DODGE.MB:
DODGE.LB:
     matchre DODGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre START.CONT.2HB ^You need two hands to wield this weapon\!
     matchre ASSESS ^But you are already dodging\!
     matchre ASSESS ^You move into a position to dodge\.
     send DODGE
     matchwait
BEGIN.2HB:
BEGIN.LRGB:
BEGIN.MB:
BEGIN.LB:
FEINT.2HB:
FEINT.LRGB:
FEINT.MB:
FEINT.LB:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre BASH ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
CONTINUE.2HB:
     if $Twohanded_Blunt.LearningRate > 29 then goto SWITCH
     if $Twohanded_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto BASH
CONTINUE.LRGB:
     if $Heavy_Blunt.LearningRate > 29 then goto SWITCH
     if $Heavy_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto BASH
CONTINUE.MB:
     if $Medium_Blunt.LearningRate > 29 then goto SWITCH
     if $Medium_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto BASH
CONTINUE.LB:
     if $Light_Blunt.LearningRate > 29 then goto SWITCH
     if $Light_Blunt.Ranks > $Target.Rank then goto SWITCH
     goto BASH
BASH.2HB:
BASH.LRGB:
BASH.MB:
BASH.LB:
     matchre BASH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SWEEP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send BASH
     matchwait
SWEEP.2HB:
SWEEP.LRGB:
SWEEP.MB:
SWEEP.LB:
     matchre SWEEP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre DRAW ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SWEEP
     matchwait
DRAW.2HB:
DRAW.LRGB:
DRAW.MB:
DRAW.LB:
     matchre DRAW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre JAB ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send DRAW
     matchwait
JAB.2HB:
JAB.LRGB:
JAB.MB:
JAB.LB:
     matchre JAB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SLICE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JAB
     matchwait
SLICE.2HB:
SLICE.LRGB:
SLICE.MB:
SLICE.LB:
     matchre SLICE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SLICE
     matchwait
##### HALBERD COMBOS #####
START.HALBERD:
START.HALBERD/QS.HALBERD:
     if $Halberds.LearningRate > 29 then goto SWITCH
     if $Halberds.Ranks > $Target.Rank then goto SWITCH
START.CONT.HALBERD:
START.CONT.HALBERD/QS.HALBERD:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
DODGE.HALBERD:
DODGE.HALBERD/QS.HALBERD:
     matchre DODGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^But you are already dodging\!
     matchre ASSESS ^You move into a position to dodge\.
     send DODGE
     matchwait
BEGIN.HALBERD:
BEGIN.HALBERD/QS.HALBERD:
FEINT.HALBERD:
FEINT.HALBERD/QS.HALBERD:
     matchre FEINT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre THRUST ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FEINT
     matchwait
CONTINUE.HALBERD:
CONTINUE.HALBERD/QS.HALBERD:
     if $Halberds.LearningRate > 29 then goto SWITCH
     if $Halberds.Ranks > $Target.Rank then goto SWITCH
THRUST.HALBERD:
THRUST.HALBERD/QS.HALBERD:
     matchre THRUST ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SWEEP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send THRUST
     matchwait
SWEEP.HALBERD:
SWEEP.HALBERD/QS.HALBERD:
     matchre SWEEP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CHOP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SWEEP
     matchwait
CHOP.HALBERD:
CHOP.HALBERD/QS.HALBERD:
     matchre CHOP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre JAB ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send CHOP
     matchwait
JAB.HALBERD:
JAB.HALBERD/QS.HALBERD:
     matchre JAB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JAB
     matchwait
##### PIKE COMBOS #####
START.PIKE:
START.PIKE/SS.PIKE:
     if $Pikes.LearningRate > 29 then goto SWITCH
     if $Pikes.Ranks > $Target.Rank then goto SWITCH
START.CONT.PIKE:
START.CONT.PIKE/SS.PIKE:
     gosub SHIELD.CHECK.SKIN
     gosub STOW.LEFT
DODGE.PIKE:
DODGE.PIKE/SS.PIKE:
     matchre DODGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^But you are already dodging\!
     matchre ASSESS ^You move into a position to dodge\.
     send DODGE
     matchwait
CONTINUE.PIKE:
CONTINUE.PIKE/SS.PIKE:
     if $Pikes.LearningRate > 29 then goto SWITCH
     if $Pikes.Ranks > $Target.Rank then goto SWITCH
BEGIN.PIKE:
BEGIN.PIKE/SS.PIKE:
JAB.PIKE:
JAB.PIKE/SS.PIKE:
     matchre JAB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SWEEP ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JAB
     matchwait
SWEEP.PIKE:
SWEEP.PIKE/SS.PIKE:
     matchre SWEEP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre THRUST ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SWEEP
     matchwait
THRUST.PIKE:
THRUST.PIKE/SS.PIKE:
     matchre THRUST ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre LUNGE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send THRUST
     matchwait
LUNGE.PIKE:
LUNGE.PIKE/SS.PIKE:
     matchre LUNGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send LUNGE
     matchwait
##### BRAWLING COMBOS #####
START.BRAWL:
     if $Brawling.LearningRate > 29 then goto SWITCH
     if $Brawling.Ranks > $Target.Rank then goto SWITCH
START.CONT.BRAWL:
     gosub SHIELD.CHECK
DODGE.BRAWL:
     matchre DODGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^But you are already dodging\!
     matchre ASSESS ^You move into a position to dodge\.
     send DODGE
     matchwait
CONTINUE.BRAWL:
     if $Brawling.LearningRate > 29 then goto SWITCH
     if $Brawling.Ranks > $Target.Rank then goto SWITCH
BEGIN.BRAWL:
KICK.BRAWL:
     matchre KICK ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre SLICE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send KICK
     matchwait
SLICE.BRAWL:
     matchre SLICE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre PUNCH ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send SLICE
     matchwait
PUNCH.BRAWL:
     matchre PUNCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CLAW ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send PUNCH
     matchwait
CLAW.BRAWL:
     matchre CLAW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send CLAW
     matchwait
##### RANGED COMBAT SECTION #####
START.LONGBOW:
     if $Long_Bow.LearningRate > 29 then goto SWITCH
     if $Long_Bow.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.SLING:
     if $Slings.LearningRate > 29 then goto SWITCH
     if $Slings.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.STS:
     if $Staff_Sling.LearningRate > 29 then goto SWITCH
     if $Staff_Sling.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.SB:
     if $Short_Bow.LearningRate > 29 then goto SWITCH
     if $Short_Bow.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CB:
     if $Composite_Bow.LearningRate > 29 then goto SWITCH
     if $Composite_Bow.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.LX:
     if $Light_Crossbow.LearningRate > 29 then goto SWITCH
     if $Light_Crossbow.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.HX:
     if $Heavy_Crossbow.LearningRate > 29 then goto SWITCH
     if $Heavy_Crossbow.Ranks > $Target.Rank then goto SWITCH
     goto START.CONT
START.CONT.LONGBOW:
START.CONT.SLING:
START.CONT.STS:
START.CONT.SB:
START.CONT.CB:
     gosub STANCE.SET.CUSTOM
     goto DODGE
START.CONT.LX:
START.CONT.HX:
     goto DODGE
DODGE.LONGBOW:
DODGE.SLING:
DODGE.STS:
DODGE.SB:
DODGE.CB:
DODGE.LX:
DODGE.HX:
     matchre DODGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ASSESS ^But you are already dodging\!
     matchre ASSESS ^You move into a position to dodge\.
     send DODGE
     matchwait
CONTINUE.LONGBOW:
     if $Long_Bow.LearningRate > 29 then goto SWITCH
     if $Long_Bow.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.SLING:
     if $Slings.LearningRate > 29 then goto SWITCH
     if $Slings.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.STS:
     if $Staff_Sling.LearningRate > 29 then goto SWITCH
     if $Staff_Sling.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.SB:
     if $Short_Bow.LearningRate > 29 then goto SWITCH
     if $Short_Bow.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.CB:
     if $Composite_Bow.LearningRate > 29 then goto SWITCH
     if $Composite_Bow.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.LX:
     if $Light_Crossbow.LearningRate > 29 then goto SWITCH
     if $Light_Crossbow.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
CONTINUE.HX:
     if $Heavy_Crossbow.LearningRate > 29 then goto SWITCH
     if $Heavy_Crossbow.Ranks > $Target.Rank then goto SWITCH
     goto ASSESS
ASSESS.LONGBOW:
ASSESS.SLING:
ASSESS.STS:
ASSESS.SB:
ASSESS.CB:
ASSESS.LX:
ASSESS.HX:
     matchre RANGED.RETREAT ^You .* at missile range\.
     matchre RANGED.RETREAT ^You .* at pole range\.
     matchre RANGED.RETREAT ^You .* at pole weapon range\.
     matchre RANGED.RETREAT ^You .* at melee range\.
     matchre RANGED.RETREAT ^.* you at missile range\.
     matchre RANGED.RETREAT ^.* you at pole weapon range\.
     matchre RANGED.RETREAT ^.* you at melee range\.
     matchre RANGED.RETREAT ^.* begins to advance on you\!
     matchre RANGED.RETREAT ^.* closes to pole weapon range on you\!
     matchre RANGED.RETREAT ^.* closes to melee range on you\!
     matchre RANGED.RETREAT ^\[You're .*\.\]$
     matchre FACE ^.* is (?:moving behind|moving to flank|behind|flanking|facing) you at (?:missile|pole weapon|melee) range\.$
     matchre WAIT.FOR.CRITTERS ^How can you when you can't see\?
     matchre WAIT.FOR.CRITTERS ^\s*Encumbrance\s*\:
     send ASSESS
     send ENCUMBRANCE
     matchwait
BEGIN.LONGBOW:
BEGIN.SLING:
BEGIN.STS:
BEGIN.SB:
BEGIN.CB:
BEGIN.LX:
BEGIN.HX:
RANGED.RETREAT:
     matchre RANGED.RETREAT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RANGED.RETREAT ^You retreat back to pole range\.
     matchre RANGED.RETREAT ^You try to back away from .* but are unable to get away\!
     matchre RANGED.RETREAT ^You try to back out of combat but are unable to get away\!
     matchre LOAD ^You retreat from combat\.
     matchre LOAD ^You are already as far away as you can get\!
     send RETREAT
     matchwait
LOAD:
     matchre LOAD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STOW.ARM.WORN ^You cannot manage to load your
     matchre AIM ^You reach into your .* to load .* with .*\.
     matchre AIM ^.* is already loaded with
     matchre RETRIEVE.CHECK ^You don't have the right ammunition
     matchre RETRIEVE.CHECK ^You don't have the proper ammunition readily available for your .*\.
     matchre RETRIEVE.CHECK ^As you try to
     matchre LOAD.STOW ^.* in your left hand
     send LOAD
     matchwait
LOAD.STOW:
     gosub STOW.LEFT
     gosub STANCE.SET.EVASION
     goto LOAD
AIM:
     matchre AIM ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre AIM.WAIT ^You begin to target
     matchre AIM.WAIT ^You are already targetting that\!
     matchre DEAD balanced?\]$|^There is nothing else to face|^You aren't close enough to attack|^You turn to face|^You spin around to face|^You stop advancing because
     send AIM
     matchwait
AIM.WAIT:
     matchre AIM.WAIT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre AIM.WAIT ^.* closes to melee range on you\!
     matchre AIM.WAIT ^\[You're .*\.\]$
     matchre AIM.WAIT ^You try to back away from .* but are unable to get away\!
     matchre AIM.WAIT ^You try to back out of combat but are unable to get away\!
     matchre FIRE ^You think you have your best shot possible now\.
     matchre AIM ^You stop concentrating on aiming your weapon\.
     send RETREAT;send RETREAT
     matchwait
FIRE:
     matchre FIRE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD.RANGED ^You were aiming at a different target, but you fire anyway\.
     matchre DEAD.RANGED ^I could not find what you were referring to\.
     matchre DEAD.RANGED balanced?\]
     matchre DEAD.RANGED balance\]
     matchre DEAD.RANGED ^There is nothing else to face
     matchre DEAD.RANGED ^You aren't close enough to attack
     matchre DEAD.RANGED ^You turn to face
     matchre DEAD.RANGED ^You spin around to face
     matchre DEAD.RANGED ^You stop advancing because
     matchre DEAD.RANGED ^But your .* isn't loaded\!
     matchre CONTINUE ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send FIRE
     matchwait
DEAD.RANGED:
     matchre DEAD.RANGED ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DEAD.RANGED ^You retreat back to pole range\.
     matchre DEAD.RANGED ^You try to back away from .* but are unable to get away\!
     matchre DEAD.RANGED ^You try to back out of combat but are unable to get away\!
     matchre DEAD ^You retreat from combat
     matchre DEAD ^You are already as far
     send RETREAT
     matchwait
##### START MAIN #####
START:
     gosub STATUSBAR
     if endswith("$Hunt.Time", ".Time") then put #var Hunt.Time $gametime
     put #var Hunt.Last {#evalmath ($gametime - $Hunt.Time)}
     if $Hunt.Last <= 71 then goto START.%WeaponType
     gosub HUNT
     put #var Hunt.Time $gametime
     put #var save
     goto START.%WeaponType
START.CONT:
     gosub STATUSBAR
     goto START.CONT.%WeaponType
CONTINUE:
     gosub STATUSBAR
     goto CONTINUE.%WeaponType
WAIT:
     pause 0.1
     goto WAIT.%WeaponType
PARRY:
     pause 0.1
     goto PARRY.%WeaponType
JAB:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto JAB.%WeaponType
THRUST:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto THRUST.%WeaponType
FEINT:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto FEINT.%WeaponType
DRAW:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto DRAW.%WeaponType
SWEEP:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto SWEEP.%WeaponType
KICK:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto KICK.%WeaponType
SLICE:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto SLICE.%WeaponType
CHOP:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto CHOP.%WeaponType
DODGE:
     pause 0.1
     goto DODGE.%WeaponType
LUNGE:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto LUNGE.%WeaponType
BASH:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto BASH.%WeaponType
GOUGE:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto GOUGE.%WeaponType
CLAW:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto CLAW.%WeaponType
PUNCH:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto PUNCH.%WeaponType
ELBOW:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto ELBOW.%WeaponType
SHOVE:
     if $stamina < 85 then waiteval $stamina >= 95
     pause 0.1
     goto SHOVE.%WeaponType
LOOK:
     pause 0.1
     goto LOOK.%WeaponType
ASSESS:
     if "$Healing" == "ON" then gosub HEAL.CHECK
     pause 0.1
     goto ASSESS.%WeaponType
BEGIN:
     pause 0.1
     if "$Dance" == "ON" then if $monstercount < 3 then waiteval $monstercount >= 3
     goto BEGIN.%WeaponType
SKIN:
     pause 0.1
     goto SKIN.%WeaponType
ASSESS.2HE/HE.2HE:
ASSESS.2HE/HE.HE:
ASSESS.2HE:
ASSESS.HE.SLICE:
ASSESS.ME.SLICE:
ASSESS.LE.SLICE:
ASSESS.HE.PUNCTURE:
ASSESS.ME.PUNCTURE:
ASSESS.LE.PUNCTURE:
ASSESS.QS:
ASSESS.HALBERD/QS.QS:
ASSESS.SS:
ASSESS.PIKE/SS.SS:
ASSESS.2HB:
ASSESS.LRGB:
ASSESS.MB:
ASSESS.LB:
ASSESS.HALBERD:
ASSESS.HALBERD/QS.HALBERD:
ASSESS.PIKE:
ASSESS.PIKE/SS.PIKE:
ASSESS.BRAWL:
     matchre ASSESS ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre BEGIN ^You .* are (?:facing|flanking|behind) .* at melee range\.
     matchre ENGAGE ^You .* are (?:facing|flanking|behind|advancing on) .* at .* range\.$
     matchre FACE ^.* is (?:facing|flanking|behind|moving (?:to flank|behind)) you at .* range\.$
     matchre WAIT.FOR.CRITTERS ^How can you when you can't see\?|^\s*Encumbrance\s*\:
     send ASSESS
     send ENCUMBRANCE
     matchwait
WAIT.FOR.CRITTERS:
     matchre BEGIN ^You close to melee range on .*\.
     matchre ASSESS ^You notice .* attempting to stealthily advance upon you\!$
     matchre ASSESS ^.* closes to melee range on you\!
     matchre ASSESS ^.* begins to advance on you\!$
     matchre ASSESS ^\[You're .*\.\]$
     matchwait 60
     if "$Roam" == "OFF" then goto WAIT.FOR.CRITTERS
# Conny's Random Movement Subroutine
# http://www.genieclient.com/bulletin/topic/1775-lf-random-movement-subroutine/page__view__findpost__p__7888
MOVE.RANDOM:
     random 1 8
     if %r = 1 and $north = 0 then goto MOVE.RANDOM
     if %r = 2 and $northeast = 0 then goto MOVE.RANDOM
     if %r = 3 and $east = 0 then goto MOVE.RANDOM
     if %r = 4 and $southeast = 0 then goto MOVE.RANDOM
     if %r = 5 and $south = 0 then goto MOVE.RANDOM
     if %r = 6 and $southwest = 0 then goto MOVE.RANDOM
     if %r = 7 and $west = 0 then goto MOVE.RANDOM
     if %r = 8 and $northwest = 0 then goto MOVE.RANDOM

     if %r = 1 then var Direction NORTH
     if %r = 2 then var Direction NORTHEAST
     if %r = 3 then var Direction EAST
     if %r = 4 then var Direction SOUTHEAST
     if %r = 5 then var Direction SOUTH
     if %r = 6 then var Direction SOUTHWEST
     if %r = 7 then var Direction WEST
     if %r = 8 then var Direction NORTHWEST

     if %r = 1 then var Reverse.Direction SOUTH
     if %r = 2 then var Reverse.Direction SOUTHWEST
     if %r = 3 then var Reverse.Direction WEST
     if %r = 4 then var Reverse.Direction NORTHWEST
     if %r = 5 then var Reverse.Direction NORTH
     if %r = 6 then var Reverse.Direction NORTHEAST
     if %r = 7 then var Reverse.Direction EAST
     if %r = 8 then var Reverse.Direction SOUTHEAST

     var Exits 0
     if $north = 1 then math Exits add 1
     if $northeast = 1 then math Exits add 1
     if $east = 1 then math Exits add 1
     if $southeast = 1 then math Exits add 1
     if $south = 1 then math Exits add 1
     if $southwest = 1 then math Exits add 1
     if $west = 1 then math Exits add 1
     if $northwest = 1 then math Exits add 1

     # don't move "back" on a path unless we hit a dead end
     if %Exits > 1 and "%Last.Direction" == "%Reverse.Direction" then goto MOVE.RANDOM

     var Last.Direction %Direction
     var Occupied NO
     gosub MOVE.RESUME
     if "%Occupied" == "YES" then goto MOVE.FAILED
     goto ASSESS
MOVE:
     var Direction $0
MOVE.RESUME:
     matchre MOVE.RESUME ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$|^Sorry,
     matchre MOVE.RETREAT ^You are engaged to .*\!$
     matchre MOVE.STAND ^You can't do that while lying down\.$
     matchre MOVE.STAND ^You must be standing to do that\.$
     matchre MOVE.STAND ^You must stand first\.$
     matchre MOVE.STAND ^Stand up first\.$
     matchre MOVE.FAILED ^You can't go there
     matchre MOVE.FAILED ^I could not find what you were referring to\.$
     matchre MOVE.FAILED ^What were you referring to\?$
     matchre MOVE.RETURN ^It's pitch dark|^Obvious
     send %Direction
     matchwait
MOVE.STAND:
     matchre MOVE.STAND ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$|^Sorry,
     matchre MOVE.STAND ^You are overburdened and cannot manage to stand\.$
     matchre MOVE.STAND ^The weight
     matchre MOVE.STAND ^You try
     matchre MOVE.RETREAT ^You are already standing\.$
     matchre MOVE.RETREAT ^You stand back up\.$
     matchre MOVE.RETREAT ^You stand up\.$
     send STAND
     matchwait
MOVE.RETREAT:
     matchre MOVE.RETREAT ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$|^Sorry,
     matchre MOVE.RETREAT ^You retreat back to pole range\.$
     matchre MOVE.RETREAT ^You try to back away
     matchre MOVE.STAND ^You must stand first\.$
     matchre MOVE.RESUME ^You retreat from combat\.$
     matchre MOVE.RESUME ^You are already as far away as you can get\!$
     send RETREAT
     matchwait
MOVE.FAILED:
     gosub clear
     goto MOVE.RANDOM
MOVE.RETURN:
     return
ENGAGE:
     matchre ENGAGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ENGAGE ^.* stops you from advancing any farther\!$
     matchre ASSESS ^.* closes to melee range on you\!$
     matchre BEGIN ^You close to melee range on .*\.$
     matchre BEGIN ^You are already at melee with .*\.$
     send ADVANCE
     matchwait
CIRCLE:
     pause 0.1
     goto CIRCLE.%WeaponType
SWITCH:
     pause 0.1
     goto SWITCH.%WeaponType
FACE:
     pause 0.1
     gosub FACE.NEXT
     goto ASSESS
HUNT:
     matchre HUNT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You take note of all the tracks in the area\, so that you can hunt anything nearby down\.$
     matchre RETURN ^You find yourself unable to hunt in this area\.$
     send HUNT
     matchwait
SWAP.INIT:
     if "$lefthand" != "Empty" then goto SWAP
     if "%Weapon" == "BRAWL" and "$righthand" != "Empty" then goto SWAP
     goto RETURN
##### FACE NEXT #####
FACE.NEXT:
     matchre FACE.NEXT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry,
     matchre RETURN ^You turn
     matchre RETURN ^There is nothing else to face\!
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^Face what\?
     send FACE NEXT
     matchwait
##### WEAPON WIELD #####
WIELD.INIT:
     if "%Weapon" == "BRAWL" then goto RETURN
WIELD:
     pause 0.1
     matchre WIELD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You draw
     matchre RETURN ^You're already holding .*\!
     matchre REMOVE.WEAPON ^You're wearing a.*\!  You'll need to remove it first\!
     matchre REMOVE.WEAPON ^What were you referring to\?
     matchre REMOVE.WEAPON ^Wield what\?
     send WIELD MY %Weapon
     matchwait
REMOVE.WEAPON:
     matchre REMOVE.WEAPON ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sling .* off from over your shoulder\.
     matchre GET.WEAPON ^Remove what\?
     matchre GET.WEAPON ^What were you referring to\?
     send REMOVE MY %Weapon
     matchwait
GET.WEAPON:
     matchre GET.WEAPON ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You get
     matchre WEAPON.ERROR ^Get what\?
     matchre WEAPON.ERROR ^What were you referring to\?
     send GET MY %Weapon
     matchwait
WIELD.SKINNER:
     pause 0.1
     matchre WIELD.SKINNER ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You draw
     send WIELD MY $Skinner
     matchwait
##### WEAPON SHEATH #####
SHEATH.INIT:
     if "%Weapon" == "BRAWL" and "$righthand" != "Empty" then goto SHEATH
     if "%Weapon" == "BRAWL" then goto RETURN
SHEATH:
     pause 0.1
     matchre SHEATH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sheathe
     matchre RETURN ^You slip
     matchre WEAR.WEAPON ^Sheathe what\?
     matchre SHEATH.RIGHT.SHEATH ^Sheathe your.*where\?
     send SHEATH RIGHT
     matchwait
SHEATH.RIGHT.SHEATH:
     pause 0.1
     matchre SHEATH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sheathe
     matchre RETURN ^You slip
     matchre WEAR.WEAPON ^Sheathe what\?
     matchre WEAR.WEAPON ^Sheathe your.*where\?
     send SHEATH RIGHT IN MY $Sheath
     matchwait
WEAR.WEAPON:
     matchre WEAR.WEAPON ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sling .* over your shoulder\.
     matchre STOW.WEAPON ^You can't wear that\!
     matchre STOW.WEAPON ^Wear what\?
     send WEAR RIGHT
     matchwait
STOW.WEAPON:
     matchre STOW.WEAPON ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put
     matchre RETURN ^Stow what\?  Type 'STOW HELP' for details\.
     send STOW RIGHT
     matchwait
SHEATH.SKINNER:
     pause 0.1
     matchre SHEATH.SKINNER ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sheathe
     matchre RETURN ^You slip
     send SHEATH MY $Skinner
     matchwait
##### WEAPON SHEATH LEFT #####
SHEATH.LEFT:
     pause 0.1
     matchre SHEATH.LEFT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sheathe
     matchre WEAR.WEAPON.LEFT ^Sheathe what\?
     matchre WEAR.WEAPON.LEFT ^A .* is too long to fit in .*\.
     matchre WEAR.WEAPON.LEFT ^The .* is too long to fit in .*\.
     matchre SHEATH.LEFT.SHEATH ^Sheathe your.*where\?
     send SHEATH LEFT
     matchwait
SHEATH.LEFT.SHEATH:
     matchre SHEATH.LEFT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sheathe
     matchre WEAR.WEAPON.LEFT ^Sheathe what\?
     matchre WEAR.WEAPON.LEFT ^A .* is too long to fit in .*\.
     matchre WEAR.WEAPON.LEFT ^The .* is too long to fit in .*\.
     matchre WEAR.WEAPON.LEFT ^Sheathe your.*where\?
     send SHEATH LEFT IN MY $Sheath
     matchwait
WEAR.WEAPON.LEFT:
     matchre WEAR.WEAPON.LEFT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You sling
     matchre RETURN ^Wear what\?
     matchre STOW.WEAPON.LEFT ^You can't wear that\!
     send WEAR LEFT
     matchwait
STOW.WEAPON.LEFT:
     matchre STOW.WEAPON.LEFT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put
     matchre RETURN ^Stow what\?  Type 'STOW HELP' for details\.
     send STOW LEFT
     matchwait
##### STOW LEFT #####
STOW.LEFT:
     if "$lefthand" == "Empty" then goto RETURN
STOW.LEFT.CONTINUE:
     pause 0.1
     matchre STOW.LEFT.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put your
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^Stow what\?  Type 'STOW HELP' for details\.
     send STOW LEFT
     matchwait
##### WEAPON SWAP #####
SWAP:
     if "%Weapon" == "BRAWL" and "$righthand" != "Empty" then goto SWAP.CONTINUE
     if "%CurrentWeapon" == "BRAWL" then goto RETURN
SWAP.CONTINUE:
     pause 0.1
     matchre SWAP.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You move
     send SWAP
     matchwait
##### WEAPON SWITCH #####
SWITCH.SB:
SWITCH.LONGBOW:
SWITCH.CB:
SWITCH.LX:
SWITCH.HX:
SWITCH.SLING:
SWITCH.STS:
     put #var GetAmmo NO
SWITCH.HALBERD/QS.QS:
SWITCH.PIKE/SS.SS:
SWITCH.2HE/HE.2HE:
SWITCH.LE.SLICE:
SWITCH.LE.PUNCTURE:
SWITCH.ME.SLICE:
SWITCH.ME.PUNCTURE:
SWITCH.HE.SLICE:
SWITCH.HE.PUNCTURE:
SWITCH.2HE:
SWITCH.LB:
SWITCH.MB:
SWITCH.LRGB:
SWITCH.2HB:
SWITCH.HALBERD:
SWITCH.PIKE:
SWITCH.QS:
SWITCH.SS:
SWITCH.BRAWL:
     goto CHECK.WEAPON
SWITCH.2HE/HE.HE:
     matchre SWITCH.2HE/HE.HE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SWITCH.2HE/HE.HE ^You move a .* to your right hand\.
     matchre SWITCH.2HE/HE.HE ^You switch your .* so that you can use it as a heavy edged weapon\.
     matchre SWITCH.2HE/HE.HE ^You deftly change your grip on your .* so it can be used as a heavy edged weapon\.
     matchre STOW.SWITCH.2HE/HE.HE ^You must have two free hands to use the .* two-handed\.
     matchre 2HE/HE.2HE ^You switch your .* so that you can use it as a two-handed edged weapon\.
     matchre 2HE/HE.2HE ^You deftly change your grip on your .* so it can be used as a two-handed edged weapon\.
     send SWAP MY %Weapon
     matchwait
SWITCH.HALBERD/QS.HALBERD:
     matchre SWITCH.HALBERD/QS.HALBERD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SWITCH.HALBERD/QS.HALBERD ^You switch your .* so that you can use it as a halberd weapon\.
     matchre SWITCH.HALBERD/QS.HALBERD ^You move a .* to your right hand\.
     matchre HALBERD/QS.QS ^You switch your .* so that you can use it as a quarter staff weapon\.
     matchre STOW.SWITCH.HALBERD/QS.HALBERD ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
SWITCH.PIKE/SS.PIKE:
     matchre SWITCH.PIKE/SS.PIKE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SWITCH.PIKE/SS.PIKE ^You switch your .* so that you can use it as a halberd weapon\.
     matchre SWITCH.PIKE/SS.PIKE ^You move a .* to your right hand\.
     matchre PIKE/SS.SS ^You switch your .* so that you can use it as a quarter staff weapon\.
     matchre STOW.SWITCH.PIKE/SS.PIKE ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
SWITCH.ME/MB.MB:
     matchre SWITCH.ME/MB.MB ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SWITCH.ME/MB.MB ^You switch your .* so that you can use it as a medium blunt weapon\.
     matchre SWITCH.ME/MB.MB ^You move a .* to your right hand\.
     matchre ME/MB.ME ^You switch your .* so that you can use it as a medium edged weapon\.
     matchre STOW.SWITCH.ME/MB.MB ^You must have two free hands to use the .* two-handed\.
     send SWAP MY %Weapon
     matchwait
STOW.SWITCH.2HE/HE.2HE:
     gosub STOW.LEFT
     goto SWITCH.2HE/HE.2HE
STOW.SWITCH.HALBERD/QS.HALBERD:
     gosub STOW.LEFT
     goto SWITCH.HALBERD/QS.HALBERD
STOW.SWITCH.PIKE/SS.PIKE:
     gosub STOW.LEFT
     goto SWITCH.PIKE/SS.PIKE
STOW.SWITCH.ME/MB.MB:
     gosub STOW.LEFT
     goto SWITCH.ME/MB.MB
##### SHIELDS #####
SHIELD.CHECK:
     if "%CurrentWeapon" == "BRAWL" then goto SHIELD.CHECK.BRAWL
     if "$ShieldUse" == "NO" then goto STANCE.SET.PARRY
     if "$MyShield" == "NULL" then goto STANCE.SET.PARRY
     if "$ArmWorn" == "YES" then goto SHIELD.CHECK.ARM
     goto SHIELD.CHECK.HELD
SHIELD.CHECK.BRAWL:
     if "$MyShield" == "NULL" then goto PARRY.CHECK.BRAWL
     if "$ShieldUse" == "NO" then goto PARRY.CHECK.BRAWL
     if "$ArmWorn" == "YES" then goto SHIELD.CHECK.ARM
     goto SHIELD.CHECK.HELD
PARRY.CHECK.BRAWL:
     if "$ParryStick" == "YES" then goto STANCE.SET.PARRY
     goto STANCE.SET.EVASION
SHIELD.CHECK.HELD:
     pause 0.1
     matchre SHIELD.CHECK.HELD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     matchre STANCE.SET.SHIELD ^You tap a.* that you are holding\.
     matchre GET.STOWED ^You tap a.* inside your .*\.
     matchre HOLD.SHIELD ^You tap a.* that you are wearing\.
     send TAP MY $MyShield
     matchwait
SHIELD.CHECK.ARM:
     pause 0.1
     matchre SHIELD.CHECK.ARM ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     matchre STANCE.SET.SHIELD ^You tap a.* that you are wearing\.
     matchre WEAR.SHIELD ^You tap a.* that you are holding\.
     matchre GET.STOWED ^You tap a.* inside your.*\.
     send TAP MY $MyShield
     matchwait
WEAR.SHIELD:
     matchre WEAR.SHIELD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^You sling
     matchre STOW.SHIELD ^You can't wear any more items like that\.
     matchre STANCE.SET.SHIELD ^You slide your left arm through the straps on your .* and flex, gaining a feel for the shield's weight\.
     send WEAR MY $MyShield
     matchwait
STOW.ARM.WORN:
     gosub HOLD.SHIELD.ARM.WORN
     goto LOAD
HOLD.SHIELD.ARM.WORN:
     matchre HOLD.SHIELD.ARM.WORN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     matchre STOW.SHIELD.ARM.WORN ^You loosen the straps securing your .* and remove it\.
     send HOLD MY $MyShield
     matchwait
STOW.SHIELD.ARM.WORN:
     matchre STOW.SHIELD.ARM.WORN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^You put your
     matchre STANCE.SET.PARRY ^Stow what\?
     send STOW MY $MyShield
     matchwait
STOW.SHIELD:
     matchre STOW.SHIELD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^You put your
     matchre STANCE.SET.PARRY ^Stow what\?
     send STOW MY $MyShield
     matchwait
HOLD.SHIELD:
     matchre HOLD.SHIELD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     matchre STANCE.SET.SHIELD ^You sling
     matchre WEAR.SHIELD ^You loosen the straps securing your .* and remove it\.
     send HOLD MY $MyShield
     matchwait
GET.STOWED:
     matchre GET.STOWED ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     matchre STANCE.SET.SHIELD ^You get a
     send GET MY $MyShield
     matchwait
SHIELD.CHECK.SKIN:
     if "$ShieldUse" == "NO" then goto STANCE.SET.PARRY
     if "$MyShield" == "NULL" then goto STANCE.SET.PARRY
     if "$ArmWorn" == "YES" then goto STANCE.SET.SHIELD
SHIELD.CHECK.SKIN.CONTINUE:
     matchre SHIELD.CHECK.SKIN.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SHIELD.WEAR.SKIN ^You tap .* that you are holding\.
     matchre STANCE.SET.PARRY ^You tap .* that you are wearing\.
     matchre STANCE.SET.PARRY ^I could not find what you were referring to\.
     matchre STANCE.SET.PARRY ^What were you referring to\?
     send TAP MY $MyShield
     matchwait
SHIELD.WEAR.SKIN:
     gosub STANCE.SET.PARRY
SHIELD.WEAR.SKIN.CONTINUE:
     matchre SHIELD.WEAR.SKIN.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^I could not find what you were referring to\.
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^You sling .* deftly over your shoulder in one graceful movement\.
     matchre RETURN ^You sling .* over your shoulder\.
     matchre SHIELD.STOW.SKIN ^You can't wear any more items like that\.
     matchre SHIELD.STOW.SKIN ^The .* is too unwieldy for you to wear like that\.
     matchre STANCE.SET.SHIELD ^You slide your left arm through the straps on your .* and flex, gaining a feel for the shield's weight.
     send WEAR MY $MyShield
     matchwait
SHIELD.STOW.SKIN:
     matchre SHIELD.STOW.SKIN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put your
     matchre RETURN ^Stow what\?
     matchre RETURN ^I could not find what you were referring to\.
     matchre RETURN ^What were you referring to\?
     send STOW MY $MyShield
     matchwait
##### SET STANCES #####
STANCE.SET.EVASION:
     gosub SET.STANCE EVASION
     return
STANCE.SET.PARRY:
     gosub SET.STANCE PARRY
     return
STANCE.SET.SHIELD:
     gosub SET.STANCE SHIELD
     return
STANCE.SET.CUSTOM:
     gosub SET.STANCE CUSTOM
     return
SET.STANCE:
     var Stance $0
SET.STANCE.CONTINUE:
     matchre SET.STANCE.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry,
     matchre RETURN ^You are now set to use your
     send STANCE %Stance
     matchwait
##### UNLOAD RANGED WEAPON #####
UNLOAD.RANGED:
     matchre UNLOAD.AMMOCHECK ^You unload .*\.
     matchre UNLOAD.AMMOCHECK ^But your .* isn't loaded\!
     matchre DEAD ^You don't have a ranged weapon to unload\.
     send UNLOAD
     matchwait
UNLOAD.AMMOCHECK:
     matchre UNLOAD.ARROW ^You glance down to see .* in your right hand and .* arrow in your left hand\.
     matchre UNLOAD.BOLT ^You glance down to see .* in your right hand and .* bolt in your left hand\.
     matchre UNLOAD.QUADRELLO ^You glance down to see .* in your right hand and .* quadrello in your left hand\.
     matchre UNLOAD.CRYSTAL ^You glance down to see .* in your right hand and a .* rock crystal in your left hand\.
     matchre UNLOAD.ROCK ^You glance down to see .* in your right hand and a .* rock in your left hand\.
     matchre UNLOAD.DONE ^You glance down to see .* in your right hand and nothing in your left hand\.
     matchre UNLOAD.DONE ^You glance down at your empty hands\.
     send GLANCE
     matchwait
UNLOAD.ARROW:
     var Ammo ARROW
     goto UNLOAD.STOW
UNLOAD.BOLT:
     var Ammo BOLT
     goto UNLOAD.STOW
UNLOAD.QUADRELLO:
     var Ammo QUADRELLO
     goto UNLOAD.STOW
UNLOAD.CRYSTAL:
     var Ammo CRYSTAL
     goto UNLOAD.STOW
UNLOAD.ROCK:
     var Ammo ROCK
     goto UNLOAD.STOW
UNLOAD.STOW:
     matchre UNLOAD.DONE ^You put
     matchre UNLOAD.DONE ^What were you referring to\?
     matchre UNLOAD.DONE ^I could not find what you were referring to\.
     send PUT MY %Ammo IN MY $AmmoContainer
     matchwait
UNLOAD.DONE:
     return
##### DEAD #####
DEAD:
     if matchre("$roomobjs", "(\S+) ((?:which|that) appears dead|\(dead\))") then goto MONSTER.CHECK
     goto START
##### SET MONSTER VARIABLE #####
MONSTER.CHECK:
     var Monster NULL
     if matchre("$roomobjs", "(\S+) ((?:which|that) appears dead|\(dead\))") then var Monster $1
MONSTER.SORT:
     if "%Monster" == "NULL" then goto AUTOLOOT
     if matchre ("$roomobjs", "($No.Skin) ((which|that) appears dead|\(dead\))") then goto MONSTER.SEARCH
     goto SKIN
##### SKINNING START #####
SKIN.2HE/HE.2HE:
SKIN.2HE:
SKIN.2HE/HE.HE:
SKIN.QS:
SKIN.HALBERD/QS.QS:
SKIN.SS:
SKIN.PIKE/SS.SS:
SKIN.2HB:
SKIN.HALBERD:
SKIN.HALBERD/QS.HALBERD:
SKIN.PIKE:
SKIN.PIKE/SS.PIKE:
     gosub SHIELD.CHECK.SKIN
     gosub WIELD.SKINNER
     gosub SWAP
     gosub SHEATH.LEFT
     if $Skinning.LearningRate < 29 then gosub ARRANGE
     gosub SKIN.MONSTER
     gosub SKIN.CHECK
     gosub WIELD
     gosub SWAP
     gosub SHEATH.SKINNER
     goto MONSTER.SEARCH
SKIN.HE.SLICE:
SKIN.ME.SLICE:
SKIN.LE.SLICE:
SKIN.HE.PUNCTURE:
SKIN.ME.PUNCTURE:
SKIN.LE.PUNCTURE:
SKIN.LRGB:
SKIN.MB:
SKIN.LB:
     gosub SHIELD.CHECK.SKIN
     gosub WIELD.SKINNER
     gosub SWAP
     gosub SHEATH.LEFT
     if $Skinning.LearningRate < 29 then gosub ARRANGE
     gosub SKIN.MONSTER
     gosub SKIN.CHECK
     gosub WIELD
     gosub SWAP
     gosub SHEATH.SKINNER
     goto MONSTER.SEARCH
SKIN.BRAWL:
     gosub WIELD.SKINNER
     if $Skinning.LearningRate < 29 then gosub ARRANGE
     gosub SKIN.MONSTER
     gosub SKIN.CHECK
     gosub SHEATH.SKINNER
     goto MONSTER.SEARCH
SKIN.LONGBOW:
SKIN.SLING:
SKIN.STS:
SKIN.SB:
SKIN.CB:
     gosub WIELD.SKINNER
     gosub SWAP
     gosub SHEATH.LEFT
     if $Skinning.LearningRate < 29 then gosub ARRANGE
     gosub SKIN.MONSTER
     gosub SKIN.CHECK
     gosub WIELD
     gosub SWAP
     gosub SHEATH.SKINNER
     goto MONSTER.SEARCH
SKIN.LX:
SKIN.HX:
     gosub SHIELD.CHECK.SKIN
     gosub WIELD.SKINNER
     gosub SWAP
     gosub SHEATH.LEFT
     if $Skinning.LearningRate < 29 then gosub ARRANGE
     gosub SKIN.MONSTER
     gosub SKIN.CHECK
     gosub WIELD
     gosub SWAP
     gosub SHEATH.SKINNER
     gosub SHIELD.CHECK
     goto MONSTER.SEARCH
ARRANGE:
     matchre ARRANGE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ARRANGE ^You properly arrange .* in a manner that\, while making the process more difficult\, guarantees a greater reward\.$
     matchre RETURN ^.* has already been arranged as much as you can manage\.$
     matchre RETURN ^Arrange what\?$
     matchre RETURN ^The .* cannot be skinned\, so you can't arrange it either\.$
     send ARRANGE
     matchwait
SKIN.MONSTER:
     pause 0.1
     matchre SKIN.MONSTER ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You will need a more appropriate tool for skinning\.
     matchre RETURN ^You fumble and make an improper cut
     matchre RETURN ^You make a series of cuts
     matchre RETURN ^A heartbreaking slip at the last moment
     matchre RETURN ^You bumble the attempt, destroying .* corpse\.
     matchre RETURN ^You skillfully peel .* off .*\.
     matchre RETURN ^You manage
     matchre RETURN ^You skin .* fairly well, getting a decent quality .* only slightly tainted with gore and fluids from the carcass\.
     matchre RETURN ^You struggle with
     matchre RETURN ^You work hard at peeling
     matchre RETURN ^You work diligently at skinning
     matchre RETURN ^You claw at .* in a futile attempt to skin it, mangling it beyond recognition\.
     matchre RETURN ^You work at .*, but end up destroying the .*\.
     matchre RETURN ^Despite your best efforts, skinning .* just isn't going to happen this time\.
     matchre RETURN ^Some days it just doesn't pay to wake up\.
     matchre RETURN ^Your .* twists and slips in your grip, causing a catastrophic loss of control at a vital juncture in your skinning attempt\.
     matchre RETURN ^Somehow managing to do EVERYTHING wrong, you bungle your pitiful attempt to gain a trophy from the .*\.
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^I could not find what you were referring to\.
     matchre RETURN ^Living creatures often object to being flayed alive\.  Why not wait until .* is dead\?
     matchre RETURN ^You approach .*'s kill.*and prepare to skin it\!
     matchre RETURN ^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$\:
     matchre RETURN ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     matchre RETURN ^A.* cannot be skinned\.
     matchre RETURN ^The.* cannot be skinned\.
     matchre RETURN ^A.* can't be skinned\.
     matchre RETURN ^The.* can't be skinned\.
     matchre RETURN ^There isn't another .* to skin\.
     matchre RETURN ^Skin what\?
     send SKIN
     matchwait
##### SKIN TYPE CHECK #####
SKIN.CHECK:
     pause
     if (("$GetHides" == "NO") && ("$lefthand" != "Empty")) then gosub EMPTY.LEFT
     if matchre("$lefthand", "(?:pelt|skin|hide|pseudopod|scale|ear|tusk|hoof|tail|eye|foreclaw|claw|sac|tooth|stinger|fragment|carapace|scalp|horn|mandible|sheepskin|milk-tooth)") then goto BUNDLE.HIDE
     goto RETURN
##### SKIN STOW OR BUNDLE #####
BUNDLE.HIDE:
     matchre BUNDLE.HIDE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You stuff
     matchre RETURN ^You carefully fit .* into your bundle\.$
     matchre STOW.HIDE ^That's not going to work\.$
     matchre STOW.HIDE ^But you aren't holding that\!$
     matchre STOW.HIDE time to start a new bundle
     matchre STOW.HIDE ^You try to stuff your .* into the bundle but can't seem to find a good spot\.$
     matchre STOW.HIDE ^Where did you intend to put that\?\s*You don\'t have any bundles or they\'re all full or too tightly packed\!\s*Type BUNDLE HELP for more details\.$
     send BUNDLE
     matchwait
STOW.HIDE:
     matchre STOW.HIDE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put your
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^Stow what\?
     matchre EMPTY.LEFT ^There isn't any more room in
     matchre EMPTY.LEFT ^Even after stuffing it
     matchre EMPTY.LEFT ^That's too heavy to go in there
     matchre EMPTY.LEFT ^No matter how you arrange it
     send STOW LEFT
     matchwait
EMPTY.LEFT:
     pause 0.1
     matchre EMPTY.LEFT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^Please rephrase that command\.
     matchre RETURN ^You drop
     matchre RETURN ^Your left hand is already empty.
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^I could not find what you were referring to\.
     send EMPTY LEFT
     matchwait
##### CRITTER SEARCH SECTION #####
MONSTER.SEARCH:
    matchre MONSTER.SEARCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
    matchre MONSTER.SEARCH.DONE ^I could not find what you were referring to\.
    matchre MONSTER.SEARCH.DONE ^What were you referring to\?
    matchre MONSTER.SEARCH.DONE ^It's already been picked clean of anything it might have had\.
    matchre MONSTER.SEARCH.DONE ^You should probably wait until .* is dead first\.
    matchre MONSTER.SEARCH.DONE ^Sheesh, it's still alive\!
    matchre AUTOLOOT ^You search
    matchre AUTOLOOT ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
    matchre MONSTER.SEARCH.DONE ^It's not dead yet\!
    send LOOT %Monster $Loot.Option
    matchwait
MONSTER.SEARCH.DONE:
    goto AUTOLOOT
##### AUTOLOOTING SECTION #####
AUTOLOOT:
     var Loot NULL
     if "$GetLoot" == "NO" then goto LOOT.DONE
     if matchre("$roomobjs", "\bcoins?\b" then goto GET.COIN
     if matchre("$roomobjs", "\b$Gem.List(\,|\.|\sand)") then goto GET.GEMS
     if matchre("$roomobjs", "\ba.*\stablet\b") then var Loot TABLET
     if matchre("$roomobjs", "\ba.*\sscroll\b") then var Loot SCROLL
     if matchre("$roomobjs", "\ba.*\svellum\b") then var Loot VELLUM
     if matchre("$roomobjs", "\ba.*\sroll\b") then var Loot ROLL
     if matchre("$roomobjs", "\ba.*\sostracon\b") then var Loot OSTRACON
     if matchre("$roomobjs", "\ba.*\sparchment\b") then var Loot PARCHMENT
     if matchre("$roomobjs", "\ba.*seishaka\sleaf\b") then var Loot SEISHAKA LEAF
     if matchre("$roomobjs", "\ba.*\shhr'lav'geluhh\sbark\b") then var Loot HHR'LAV'GELUHH BARK
     # if matchre("$roomobjs", "\ba\swax\slabel\b") then var Loot LABEL
     # if matchre("$roomobjs", "\ba.*\slockpick\b") then var Loot LOCKPICK
     # if matchre("$roomobjs", "\ba.*\srunestone\b") then var Loot RUNESTONE
     # if matchre("$roomobjs", "\ba.*\ssoulstone\b") then var Loot SOULSTONE
     # if matchre("$roomobjs", "\ba\spouch\sof\slead\spellets\b") then var Loot POUCH
     # if matchre("$roomobjs", "\ba.*\scard\b") then var Loot CARD
     # if matchre("$roomobjs", "\ba.*\sdira\b") then var Loot DIRA
     # if matchre("$roomobjs", "\ba.*\sgwethdesuan\b") then var Loot GWETHDESUAN
     # if matchre("$roomobjs", "\bsome\s(waermodi|lantholite|lasmodi|sjatmal|kyanite|jadeite)\sstones\b") then var Loot STONES
     # if matchre("$roomobjs", "\ba.*\snut\b") then var Loot NUT
     # if matchre("$roomobjs", "\ba.*\sbolt\b") then var Loot BOLT
     # if matchre("$roomobjs", "\ba.*\sgear\b") then var Loot GEAR
     # if matchre("$roomobjs", "\ba.*\sspangleflange\b") then var Loot SPANGLEFLANGE
     # if matchre("$roomobjs", "\ba.*\srackensprocket\b") then var Loot RACKENSPROCKET
     # if matchre("$roomobjs", "\ba.*\sflarmencrank\b") then var Loot FLARMENCRANK
     # if matchre("$roomobjs", "\ba.*\sglarmencoupler\b") then var Loot GLARMENCOUPLER
     if "%Loot" == "NULL" then goto LOOT.DONE
     goto GET.LOOT
##### GET COINS #####
GET.COIN:
    matchre GET.COIN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
    matchre AUTOLOOT ^You get
    matchre AUTOLOOT ^You pick up
    matchre AUTOLOOT ^What were you referring to\?
    matchre AUTOLOOT ^I could not find what were you referring to\.
    send GET COIN
    matchwait
##### GET & DROP GEMS #####
GET.GEMS:
    matchre GET.GEMS ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
    matchre AUTOLOOT ^You put your
    matchre AUTOLOOT ^You open your pouch and put .* inside, closing it once more\.$
    matchre AUTOLOOT ^What were you referring to\?$
    matchre AUTOLOOT ^Stow what\?  Type 'STOW HELP' for details\.$
    matchre NEW.GEM.POUCH ^You think the gem pouch is too full to fit another gem into\.$
    matchre TIE.GEM.POUCH ^You've already got a wealth of gems in there\!  You'd better tie it up before putting more gems inside\.$
    matchre DROP.LOOT ^You're carrying far too many items already\.$
    matchre DROP.LOOT ^There isn't any more room in the
    matchre DROP.LOOT even after stuffing it
    matchre DROP.LOOT ^That's too heavy to go in there
    matchre DROP.LOOT no matter how you arrange it
    send STOW GEM
    matchwait
TIE.GEM.POUCH:
     matchre TIE.GEM.POUCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre GET.GEMS ^You tie up the gem pouch\.$
     matchre GET.GEMS ^The gem pouch has already been tied off\.$
     matchre DROP.LOOT ^Tie what\?$
     send TIE MY GEM POUCH
     matchwait
TIE.GEM.POUCH.DONE:
     gosub STOW.LEFT
     gosub WIELD
     goto GET.GEMS
NEW.GEM.POUCH:
     gosub SHEATH
REMOVE.GEM.POUCH:
     matchre REMOVE.GEM.POUCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DROP.LOOT ^Remove what\?$
     matchre STOW.GEM.POUCH ^You remove a.*gem pouch from your belt\.$
     send REMOVE MY GEM POUCH
     matchwait
STOW.GEM.POUCH:
     matchre STOW.GEM.POUCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre GET.GEM.POUCH ^You put your pouch in your .*\.$
     matchre GET.GEM.POUCH ^Stow what\?  Type \'STOW HELP\' for details\.$
     send STOW MY GEM POUCH
     matchwait
GET.GEM.POUCH:
     matchre GET.GEM.POUCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DROP.LOOT ^What were you referring to\?$
     matchre WEAR.GEM.POUCH ^You get a.*gem pouch from inside your .*\.$
     send GET MY GEM POUCH IN MY $GemPouchContainer
     matchwait
WEAR.GEM.POUCH:
     matchre WEAR.GEM.POUCH ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre DROP.LOOT ^Wear what\?$
     matchre DONE.GEM.POUCH ^You attach a.*gem pouch to your belt\.$
     matchre DONE.GEM.POUCH ^You are already wearing that\.$
     send WEAR MY GEM POUCH
     matchwait
DONE.GEM.POUCH:
     gosub STOW.LEFT
     gosub WIELD
     goto GET.GEMS
##### GET & DROP LOOT #####
GET.LOOT:
    matchre GET.LOOT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
    matchre GET.LOOT ^You put your
    matchre AUTOLOOT ^What were you referring to\?
    matchre AUTOLOOT ^Stow what\?  Type 'STOW HELP' for details\.
    matchre DROP.LOOT ^You're carrying far too many items already\.
    matchre DROP.LOOT ^There isn't any more room in the
    matchre DROP.LOOT even after stuffing it
    matchre DROP.LOOT ^That's too heavy to go in there
    matchre DROP.LOOT no matter how you arrange it
    send STOW %Loot
    matchwait
DROP.LOOT:
    put #var GetLoot NO
    gosub EMPTY.LEFT
    goto LOOT.DONE
##### LOOT DONE #####
LOOT.DONE:
##### SET BOX VARIABLE #####
LOOT.BOXES:
     if "$GetBoxes" == "NO" then goto BOXES.DONE
BOXES:
     if matchre("$roomobjs", "\b(skippet|coffer|trunk|chest|strongbox|crate|box|casket|caddy)\b") then goto GET.BOXES
     goto BOXES.DONE
##### GET & DROP BOXES #####
GET.BOXES:
     pause 0.1
     matchre GET.BOXES ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre BOXES ^You put your
     matchre BOXES ^What were you referring to\?
     matchre BOXES ^Stow what\?  Type 'STOW HELP' for details\.
     matchre DROP.BOX ^There isn't any more room in the
     matchre DROP.BOX even after stuffing it
     matchre DROP.BOX ^That's too heavy to go in there
     matchre DROP.BOX no matter how you arrange it
     send STOW BOX
     matchwait
DROP.BOX:
     put #var GetBoxes NO
     gosub EMPTY.LEFT
     goto BOXES.DONE
##### BOXES DONE #####
BOXES.DONE:
     var Box NULL
##### RETRIEVE RANGED AMMO #####
RETRIEVE.CHECK:
     if "$GetAmmo" == "NO" then goto RETRIEVE.DONE
STOW.AMMO:
     matchre STOW.AMMO ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre STOW.AMMO ^You put
     matchre RETRIEVE.DONE ^Stow what\?  Type 'STOW HELP' for details\.
     matchre RETRIEVE.DONE ^What were you referring to\?
     send STOW AMMO
     matchwait
RETRIEVE.DONE:
     if "$Dump.Junk" == "NO" then goto SPELL.PREP
     if endswith("$Dump.Time", ".Time") then put #var Dump.Time $gametime
     put #var Dump.Last {#evalmath ($gametime - $Dump.Time)}
     if $Dump.Last <= 300 then goto SPELL.PREP
     gosub DUMP.JUNK
     put #var Dump.Time $gametime
     put #var save
##### SPELL CASTING #####
SPELL.PREP:
     counter set 1
SPELL.PREP.1:
     if "$Spell01" == "NULL" then goto SPELL.PREP.DONE
SPELL.PREP.1.CONT:
     matchre SPELL.PREP.1.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre OVERPREP ^You stop, convinced that there's no way to control that much mana\.
     matchre NO.MANA ^You have to strain to harness the energy for this spell, and
     matchre NO.MAGIC ^You wouldn't have the first clue how to do that\.
     matchre SPELL.CAST ^You trace an arcane sigil in the air, shaping the pattern
     matchre SPELL.CAST ^You raise your arms skyward, chanting the words of the
     matchre SPELL.CAST ^You close your eyes and breathe deeply, gathering energy
     matchre SPELL.CAST ^You begin chanting a prayer to invoke the
     matchre SPELL.CAST ^You are already preparing the
     matchre NO.SPELL ^What do you want to prepare\?
     matchre NO.SPELL ^That is not a spell you can cast\.
     send PREPARE $Spell01
     matchwait
SPELL.PREP.2:
     if "$Spell02" == "NULL" then goto SPELL.PREP.DONE
SPELL.PREP.2.CONT:
     matchre SPELL.PREP.2.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre OVERPREP ^You stop, convinced that there's no way to control that much mana\.
     matchre NO.MANA ^You have to strain to harness the energy for this spell, and
     matchre NO.MAGIC ^You wouldn't have the first clue how to do that\.
     matchre SPELL.CAST ^You trace an arcane sigil in the air, shaping the pattern
     matchre SPELL.CAST ^You raise your arms skyward, chanting the words of the
     matchre SPELL.CAST ^You close your eyes and breathe deeply, gathering energy
     matchre SPELL.CAST ^You begin chanting a prayer to invoke the
     matchre SPELL.CAST ^You are already preparing the
     matchre NO.SPELL What do you want to prepare\?
     matchre NO.SPELL That is not a spell you can cast\.
     send PREPARE $Spell02
     matchwait
SPELL.PREP.3:
     if "$Spell03" == "NULL" then goto SPELL.PREP.DONE
SPELL.PREP.3.CONT:
     matchre SPELL.PREP.3.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre OVERPREP ^You stop, convinced that there's no way to control that much mana\.
     matchre NO.MANA ^You have to strain to harness the energy for this spell, and
     matchre NO.MAGIC ^You wouldn't have the first clue how to do that\.
     matchre SPELL.CAST ^You trace an arcane sigil in the air, shaping the pattern
     matchre SPELL.CAST ^You raise your arms skyward, chanting the words of the
     matchre SPELL.CAST ^You close your eyes and breathe deeply, gathering energy
     matchre SPELL.CAST ^You begin chanting a prayer to invoke the
     matchre SPELL.CAST ^You are already preparing the
     matchre NO.SPELL What do you want to prepare\?
     matchre NO.SPELL That is not a spell you can cast\.
     send PREPARE $Spell03
     matchwait
SPELL.PREP.4:
SPELL.PREP.4.CONT:
SPELL.PREP.DONE:
     goto START
SPELL.CAST:
     counter add 1
     goto SPELL.RETREAT
SPELL.WAIT:
     matchre SPELL.CAST.CONTINUE ^You feel fully prepared to cast your spell\.$
     matchre SPELL.PREP.%c ^Your concentration slips for a moment\, and your spell is lost\.$
     matchwait
SPELL.RETREAT:
     matchre SPELL.CAST.CONTINUE ^You feel fully prepared to cast your spell\.$
     matchre SPELL.PREP.%c ^Your concentration slips for a moment\, and your spell is lost\.$
     matchre SPELL.RETREAT ^.* closes to (?:pole weapon|melee) range on you\!$
     send RETREAT
     matchwait
SPELL.CAST.CONTINUE:
     matchre SPELL.CAST.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre SPELL.PREP.%c ^You don't have a spell prepared\!$
     matchre SPELL.PREP.%c ^You gesture\.$
     matchre SPELL.PREP.%c ^Your concentration slips for a moment\, and your spell is lost\.$
     send CAST
     matchwait
##### RELEASE MANA SUBROUTINE #####
RELEASE:
     matchre RELEASE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^Type RELEASE HELP for more options\.$
     send RELEASE
     matchwait
##### ERROR MESSAGES #####
USAGE:
     pause 0.1
     echo *******************************************************************************
     echo **
     echo **   You did not enter all required variables.
     echo **
     echo **   You must restart using at least 1 weapon and no more than 25 weapons
     echo **
     echo **   For assistance, use your text editor to read the instructions at the top.
     echo **
     echo *******************************************************************************
     pause 0.1
     put #script trace %Current.Script
     pause 0.5
     put #script abort %Current.Script
     exit
OVERPREP:
     counter add 1
     gosub RELEASE
     echo ********************************************
     echo ***** PREPARE LOWER TO CAST YOUR SPELL *****
     echo ********************************************
     goto SPELL.PREP.%c
NO.MANA:
     counter add 1
     gosub RELEASE
     echo ************************************************
     echo ***** INSUFFICIENT MANA TO CAST YOUR SPELL *****
     echo ************************************************
     goto SPELL.PREP.%c
NO.MAGIC:
     gosub RELEASE
     echo ********************************************
     echo ***** YOU DO NOT KNOW HOW TO USE MAGIC *****
     echo ********************************************
     goto START
NO.SPELL:
     counter add 1
     gosub RELEASE
     echo ************************************************
     echo ***** YOU HAVE NOT ENTERED A SPELL TO CAST *****
     echo ************************************************
     goto SPELL.PREP.%c
WEAPON.ERROR:
WEAPON.SETUP.ERROR:
WEAPON.VARIABLE.ERROR:
     gosub STATUSBAR.CLEAR
     pause 0.1
     echo *********************************
     echo ***** WEAPON VARIABLE ERROR *****
     echo *********************************
     pause 0.1
     put #script trace %Current.Script
     pause 0.5
     put #script abort %Current.Script
     exit
LABELERROR:
     gosub STATUSBAR.CLEAR
     pause 0.1
     echo *************************
     echo ***** GENERAL ERROR *****
     echo *************************
     pause 0.1
     put #script trace %Current.Script
     pause 0.5
     put #script abort %Current.Script
     exit
##### DUMP JUNK SUBROUTINE #####
DUMP.JUNK:
     matchre DUMP.JUNK ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^\[You have marked this room to be cleaned by the janitor\.  It should arrive shortly\.\]
     matchre RETURN ^The janitor was recently summoned to this room\.\s+Please wait \d+ seconds\.$
     matchre RETURN ^You should just kick yourself in the shin\.  There is no junk here\.
     send DUMP JUNK
     matchwait
##### HIDING SUBROUTINE #####
HIDE:
     pause 0.1
     matchre HIDE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre HIDE ^.* reveals you, ruining your hiding attempt\!
     matchre RETURN ^Eh\?  But you're already hidden\!
     matchre RETURN ^You melt into the background
     matchre RETURN ^You slip into a hiding
     matchre RETURN ^You blend in with your surroundings
     send HIDE
     matchwait
##### UPDATE STATUSBAR SUBROUTINES #####
STATUSBAR:
     put #statusbar 2 *] Hunter Active! (Hunter.Cmd) [*
     put #statusbar 3 *] Type STOP to abort script. [*
     put #statusbar 4 *] WEAPON : %Weapon [* *] WEAPON TYPE : %WeaponType [*
     put #statusbar 5
     return
STATUSBAR.CLEAR:
     put #statusbar 2
     put #statusbar 3
     put #statusbar 4
     put #statusbar 5
     return
##### BASE ACTIONS #####
BASE.ACTIONS:
     action clear
##### Trigger to end script. #####
     action goto END.SCRIPT when ^What do you want to stop\?
##### Trigger to prevent idling out. #####
     action send $lastcommand when eval $useridle = 1
     action send $lastcommand when ^YOU HAVE BEEN IDLE TOO LONG\. PLEASE RESPOND\.$
##### Trigger to set variable for occupied room, when roaming.
     action var Occupied YES when ^Also here\:|^Also in the room\:
##### Trigger to reconnect. #####
#     action var Resume.Temp $lastcommand;send 15 #connect when eval $connected = 0
#     action send %Resume.Temp when ^You look around, taking a moment to get your bearings\.
##### Triggers to stand up. #####
     action send STAND when eval $prone = 1
     action send STAND when eval $sitting = 1
     action send STAND when eval $kneeling = 1
##### Triggers to initiate Panic Exit subroutine. #####
     action instant goto EXIT.NOW when ^(\w+) reaches over and holds your hand\.
     action instant goto EXIT.NOW when ^(\w+) clasps your hand tenderly\.
     action instant goto EXIT.NOW when ^(\w+) grabs your arm and drags you.*\. \. \.
     action instant goto EXIT.NOW when ^(\w+) grabs your arm and tries to drag you, but you resist and stand firm\.
     action instant goto EXIT.NOW when eval $dead = 1
     action instant goto EXIT.NOW when eval $health < 50
     action instant goto EXIT.NOW when eval $stunned = 1
     action instant goto EXIT.NOW when eval $diseased = 1
##### GENERIC RETURN #####
RETURN:
     return
##### PANIC EXIT SUBROUTINE #####
EXIT.NOW:
     action clear
     gosub QUIT
     pause 0.1
     echo
     echo ********************************
     echo ***** PANIC EXIT INITIATED *****
     echo ********************************
     echo
     pause 0.1
     put #script pauseorresume %Current.Script
     gosub BASE.ACTIONS
     goto START
##### QUIT SUBROUTINE #####
QUIT:
     matchre QUIT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^\[\d+\:\d+\] Connection closed\.
     matchre RETURN ^Disconnected from\:
     put QUIT
     matchwait
##### END SCRIPT SUBROUTINE #####
END.SCRIPT:
     action clear
     gosub STATUSBAR.CLEAR
     pause 0.1
     echo
     echo **********************************
     echo ***** SCRIPT ABORTED BY USER *****
     echo **********************************
     echo
     pause 0.1
     put #script abort %Current.Script
     exit
##### END OF SCRIPT #####
