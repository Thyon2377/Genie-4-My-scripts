#<=============================================================================================>#
#<                                  README FOR HUNTER SCRIPTS.                                 >#
#<=============================================================================================>#
Last Update: 22 February, 2012
#<--------------------------------------------------------------------------------------------->#

   HunterSetup is the inital variable setup for the script to use.
   Just run that once, then edit the variables to your preferences.

   THIS SCRIPT REQUIRES THE EXP TRACKER PLUGIN!

   Hunter supports all weapon types with the exception of thrown weapons.
   No guarantees on any non-melee weapons, however.
   There are a great many bugs in the ranged section, I will eventually debug it.

   The following commands need to be set for your character:

        -STOW (STORE LIST is your friend.)

   This script requires you to set the following GLOBAL variables:

        -Weapon01 WeaponName (In Caps), BRAWL or NULL
        -Weapon02 WeaponName (In Caps), BRAWL or NULL
        -Weapon03 WeaponName (In Caps), BRAWL or NULL
        -Weapon04 WeaponName (In Caps), BRAWL or NULL
        -Weapon05 WeaponName (In Caps), BRAWL or NULL
        -Weapon06 WeaponName (In Caps), BRAWL or NULL
        -Weapon07 WeaponName (In Caps), BRAWL or NULL
        -Weapon08 WeaponName (In Caps), BRAWL or NULL
        -Weapon09 WeaponName (In Caps), BRAWL or NULL
        -Weapon10 WeaponName (In Caps), BRAWL or NULL
        -Weapon11 WeaponName (In Caps), BRAWL or NULL
        -Weapon12 WeaponName (In Caps), BRAWL or NULL
        -Weapon13 WeaponName (In Caps), BRAWL or NULL
        -Weapon14 WeaponName (In Caps), BRAWL or NULL
        -Weapon15 WeaponName (In Caps), BRAWL or NULL
        -Weapon16 WeaponName (In Caps), BRAWL or NULL
        -Weapon17 WeaponName (In Caps), BRAWL or NULL
        -Weapon18 WeaponName (In Caps), BRAWL or NULL
        -Weapon19 WeaponName (In Caps), BRAWL or NULL
        -Weapon20 WeaponName (In Caps), BRAWL or NULL
        -Weapon21 WeaponName (In Caps), BRAWL or NULL
        -Weapon22 WeaponName (In Caps), BRAWL or NULL
        -Weapon23 WeaponName (In Caps), BRAWL or NULL
        -Weapon24 WeaponName (In Caps), BRAWL or NULL
        -Weapon25 WeaponName (In Caps), BRAWL or NULL
        -Skinner SkinningBladeName (Required)
        -Container ContainerName (Required)
        -Spell01 SpellName PrepAmount or NULL
        -Spell02 SpellName PrepAmount or NULL
        -Spell03 SpellName PrepAmount or NULL
        -MyShield ShieldName or NULL
        -ArmWorn YES or NO
        -ShieldUse YES or NO
        -GetHides YES or NO
        -GetLoot YES or NO
        -GetBoxes YES or NO
        -DumpJunk YES or NO
        -Target.Rank (Number)
        -Loot.Option (LOOT HELP for syntax)
        -Roam ON or OFF, random movement, if no critters arrive in a timely manner.
        -Dance ON or OFF, waits for more than 2 critters to begin killing.
        -Healing ON or OFF, healing runs, uses included healing.inc. (Mostly useful in TF).
        -Hunting.Room, used to return to your preferred hunting area, after a healing run.

   This script skins and searches anything without the need for critter variables.
   Change the GetHides variable to YES if you'd like to keep skins.
   If a bundle is worn, skins will be bundled.  Otherwise, all skins are stowed.

   If GetLoot is set to YES, All gems and misc loot go into their assigned container. (STORE LIST for details)

   Change the GetBoxes variable to YES if you'd like to pick up boxes.

   Change the DumpJunk variable to YES if you'd like to reduce clutter. (Fires every 5 minutes)

   Change the Target.Rank variable to the number you'd like your weapons to stop training at.
   Alternatively, set it to something incredibly high to train indefinitely.
   For example: Target.Rank 2000
   WARNING: If weapon skills aren't moving at 29 or better, weapons will NOT switch. 

   The combos for each weapon type are static.
   If you want to use different combos you must edit the section for your weapon type.

   Script sends a HUNT every kill, if 71 seconds or more have elapsed.

   This script contains a spell casting section.
   If you do not use magic, spells are automatically skipped.
   Currently, the spell casting section does not support targetable spells.
   Only include spells that you can cast on yourself or an area without a target.

   The script is commented fairly well, so folks can go through and see how it works.

   Enjoy!  ~P
#<=============================================================================================>#
