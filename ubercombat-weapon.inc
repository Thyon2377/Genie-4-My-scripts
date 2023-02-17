     #debug 5
     var skipit 0
	put #window add Weapons
	put #window show Weapons
     SetupWeapon:
     put #clear Weapons
     put #echo >Weapons ========================================
     put #echo >Weapons **** UBERCOMBAT - WEAPON CHOICE GUI
     put #echo >Weapons **** CHOOSE WEAPONS TO TRAIN WITH THIS RUN
     put #echo >Weapons **** MUST HAVE ARRAY SET IN A WEAPON VARIABLE TO CHOOSE
     put #echo >Weapons ========================================
     delay 0.8
     gosub WEAPON_PARSING UC_WEAPON_SE
     if (%skipit = 0) then gosub MAKE_CHOICE SMALL EDGED
     gosub WEAPON_PARSING UC_WEAPON_BS
     if (%skipit = 0) then gosub MAKE_CHOICE BACKSTAB
     gosub WEAPON_PARSING UC_WEAPON_LE
     if (%skipit = 0) then gosub MAKE_CHOICE LARGE EDGED
     gosub WEAPON_PARSING UC_WEAPON_THE
     if (%skipit = 0) then gosub MAKE_CHOICE TWO-HANDED EDGED
     gosub WEAPON_PARSING UC_WEAPON_SB
     if (%skipit = 0) then gosub MAKE_CHOICE SMALL BLUNT
     gosub WEAPON_PARSING UC_WEAPON_LB
     if (%skipit = 0) then gosub MAKE_CHOICE LARGE BLUNT
     gosub WEAPON_PARSING UC_WEAPON_THB
     if (%skipit = 0) then gosub MAKE_CHOICE TWO-HANDED BLUNT
     gosub WEAPON_PARSING UC_WEAPON_POLEARMS
     if (%skipit = 0) then gosub MAKE_CHOICE POLEARMS
     gosub WEAPON_PARSING UC_WEAPON_STAVES
     if (%skipit = 0) then gosub MAKE_CHOICE STAVES
     gosub WEAPON_PARSING UC_WEAPON_LT
     if (%skipit = 0) then gosub MAKE_CHOICE LIGHT THROWN
     gosub WEAPON_PARSING UC_WEAPON_HT
     if (%skipit = 0) then gosub MAKE_CHOICE HEAVY THROWN
     gosub WEAPON_PARSING UC_WEAPON_CROSSBOW
     if (%skipit = 0) then gosub MAKE_CHOICE CROSSBOW
     gosub WEAPON_PARSING UC_WEAPON_SLING
     if (%skipit = 0) then gosub MAKE_CHOICE SLING
     gosub WEAPON_PARSING UC_WEAPON_BOW
     if (%skipit = 0) then gosub MAKE_CHOICE BOW
     var weaponload 1
     put #parse DONE WEAPONS!
     put #echo >Weapons
     put #echo >Weapons *** ALL MULTI-WEAPON OPTIONS CHOSEN 
     put #echo >Weapons *** FINISHED SETTING WEAPONS
     put #echo >Weapons
     pause 4
     put #window hide Weapons
     return
     
MAKE_CHOICE:
     var WEAPONTYPE $0
     put #echo >Weapons "======================================"
	put #echo >Weapons "~~~ SET %WEAPONTYPE WEAPON ~~~"
     put #echo >Weapons
     if ("%choice1" != "NULL") then put #link >Weapons {**   %choice1  **} "#var %weaponCheck %choice1;#parse CHOICE MADE!"
     if ("%choice2" != "NULL") then put #link >Weapons {**   %choice2  **} "#var %weaponCheck %choice2;#parse CHOICE MADE!"
     if ("%choice3" != "NULL") then put #link >Weapons {**   %choice3  **} "#var %weaponCheck %choice3;#parse CHOICE MADE!"
     if ("%choice4" != "NULL") then put #link >Weapons {**   %choice4  **} "#var %weaponCheck %choice4;#parse CHOICE MADE!"
     if ("%choice5" != "NULL") then put #link >Weapons {**   %choice5  **} "#var %weaponCheck %choice5;#parse CHOICE MADE!"
     if ("%choice6" != "NULL") then put #link >Weapons {**   %choice6  **} "#var %weaponCheck %choice6;#parse CHOICE MADE!"
     if ("%choice7" != "NULL") then put #link >Weapons {**   %choice7  **} "#var %weaponCheck %choice7;#parse CHOICE MADE!"
     if ("%choice8" != "NULL") then put #link >Weapons {**   %choice8  **} "#var %weaponCheck %choice8;#parse CHOICE MADE!"
     if ("%choice9" != "NULL") then put #link >Weapons {**   %choice9  **} "#var %weaponCheck %choice9;#parse CHOICE MADE!"
     put #echo >Weapons "*******************************" 
     put #echo >Weapons ** Please choose the Weapon to train with this run
     waitforre ^CHOICE MADE\!
     pause 0.2
     put #echo >Weapons "*** SETTING %WEAPONTYPE WEAPON TO - $%weaponCheck ***"
     put #echo >Weapons "======================================"
     return

     
WEAPON_PARSING:
     var number 0
     var skipit 0
     var weaponCheck $0
     var checkWeapon NULL
     var choice1 NULL
     var choice2 NULL
     var choice3 NULL
     var choice4 NULL
     var choice5 NULL
     var choice6 NULL
     var choice7 NULL
     var choice8 NULL
     var choice9 NULL
     var choicenumber 1
     var checkWeapons $%weaponCheck
     var weaponCount 0
     eval weaponCount count("%checkWeapons", "|")
     if (%weaponCount > 0) then math weaponCount add 1
WEAPON_PARSING_2:
     if (%number > 10) then return
     pause 0.1
     if (%weaponCount = 0) then 
          {
               var skipit 1
               return
          }
     if (%choicenumber > %weaponCount) then return
     if (matchre("%checkWeapons", "NULL") || (%number > %weaponCount")) then 
          {
               var weaponCount 0
               math number add 1
               return
          }
     if matchre("%checkWeapons(%number)", "NULL") then return
     if ("%choice%choicenumber" = "NULL") then 
          {
               var choice%choicenumber %checkWeapons(%number)
               math number add 1
               math choicenumber add 1
               goto WEAPON_PARSING_2
          }
     math number add 1
     goto WEAPON_PARSING_2