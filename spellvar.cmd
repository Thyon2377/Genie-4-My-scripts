#debuglevel 10
echo
echo Calculating effective ranks and setting all Analogous Pattern mana variables to the minimum by default...
echo
put /sort magic 1
waitforre ^EXP HELP for more information

setvariable pmweight .28
evalmath skillweight 1-%pmweight
evalmath TMSkill1 floor(($Targeted_Magic.Ranks*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath DebSkill1 floor(($Debilitation.Ranks*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath DebWardSkill1 floor(((($Debilitation.Ranks + $Warding.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath DebAugSkill1 floor(((($Debilitation.Ranks + $Augmentation.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath DebUtiSkill1 floor(((($Debilitation.Ranks + $Utility.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath WardSkill1 floor(($Warding.Ranks*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath WardAugSkill1 floor(((($Warding.Ranks + $Augmentation.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath WardUtiSkill1 floor(((($Warding.Ranks + $Utility.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath AugSkill1 floor(($Augmentation.Ranks*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath AugUtiSkill1 floor(((($Augmentation.Ranks + $Utility.Ranks)/2)*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath UtiSkill1 floor(($Utility.Ranks*%skillweight + $Primary_Magic.Ranks*%pmweight),0)
evalmath TMSkill2 floor(($Targeted_Magic.Ranks*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath DebSkill2 floor(($Debilitation.Ranks*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath DebWardSkill2 floor(((($Debilitation.Ranks + $Warding.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath DebAugSkill2 floor(((($Debilitation.Ranks + $Augmentation.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath DebUtiSkill2 floor(((($Debilitation.Ranks + $Utility.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath WardSkill2 floor(($Warding.Ranks*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath WardAugSkill2 floor(((($Warding.Ranks + $Augmentation.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath WardUtiSkill2 floor(((($Warding.Ranks + $Utility.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath AugSkill2 floor(($Augmentation.Ranks*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath AugUtiSkill2 floor(((($Augmentation.Ranks + $Utility.Ranks)/2)*%skillweight + $Sorcery.Ranks*%pmweight),0)
evalmath UtiSkill2 floor(($Utility.Ranks*%skillweight + $Sorcery.Ranks*%pmweight),0)

put #var TMSkill1 %TMSkill1
put #var DebSkill1 %DebSkill1
put #var DebWardSkill1 %DebWardSkill1
put #var DebAugSkill1 %DebAugSkill1
put #var DebUtiSkill1 %DebUtiSkill1
put #var WardSkill1 %WardSkill1
put #var WardAugSkill1 %WardAugSkill1
put #var WardUtiSkill1 %WardUtiSkill1
put #var AugSkill1 %AugSkill1
put #var AugUtiSkill1 %AugUtiSkill1
put #var UtiSkill1 %UtiSkill1
put #var TMSkill2 %TMSkill2
put #var DebSkill2 %DebSkill2
put #var DebWardSkill2 %DebWardSkill2
put #var DebAugSkill2 %DebAugSkill2
put #var DebUtiSkill2 %DebUtiSkill2
put #var WardSkill2 %WardSkill2
put #var WardAugSkill2 %WardAugSkill2
put #var WardUtiSkill2 %WardUtiSkill2
put #var AugSkill2 %AugSkill2
put #var AugUtiSkill2 %AugUtiSkill2
put #var UtiSkill2 %UtiSkill2
put #var save

echo EFFECTIVE RANKS (NATIVE REALM):
echo
echo Skill Weight: %skillweight
echo Primary Magic Weight: %pmweight
echo
echo Targeted Magic: $TMSkill1
echo Debilitation: $DebSkill1
echo Debilitation/Warding: $DebWardSkill1
echo Debilitation/Augmentation: $DebAugSkill1
echo Debilitation/Utility: $DebUtiSkill1
echo Warding: $WardSkill1
echo Warding/Augmentation: $WardAugSkill1
echo Warding/Utility: $WardUtiSkill1
echo Augmentation: $AugSkill1
echo Augmentation/Utility: $AugUtiSkill1
echo Utility: $UtiSkill1
echo
echo EFFECTIVE RANKS (SORCERY):
echo
echo Skill Weight: %skillweight
echo Sorcery Weight: %pmweight
echo
echo Targeted Magic: $TMSkill2
echo Debilitation: $DebSkill2
echo Debilitation/Warding: $DebWardSkill2
echo Debilitation/Augmentation: $DebAugSkill2
echo Debilitation/Utility: $DebUtiSkill2
echo Warding: $WardSkill2
echo Warding/Augmentation: $WardAugSkill2
echo Warding/Utility: $WardUtiSkill2
echo Augmentation: $AugSkill2
echo Augmentation/Utility: $AugUtiSkill2
echo Utility: $UtiSkill2

put #var min.stra 1
put #var quar.stra 1
put #var half.stra 1
put #var max.stra 1
put #var min.burden 1
put #var quar.burden 1
put #var half.burden 1
put #var max.burden 1
put #var min.maf 1
put #var quar.maf 1
put #var half.maf 1
put #var max.maf 1
put #var min.lw 5
put #var quar.lw 5
put #var half.lw 5
put #var max.lw 5
put #var min.ease 1
put #var quar.ease 1
put #var half.ease 1
put #var max.ease 1
put #var min.gaf 5
put #var quar.gaf 5
put #var half.gaf 5
put #var max.gaf 5
put #var min.sec 50
put #var quar.sec 50
put #var half.sec 50
put #var max.sec 50
put #var min.dispel 15
put #var quar.dispel 15
put #var half.dispel 15
put #var max.dispel 15
put #var min.imbue 15
put #var quar.imbue 15
put #var half.imbue 15
put #var max.imbue 15
put #var save

var maxprep.stra 50
var minrank.stra 0
var maxrank.stra 400
var maxprep.burden 33
var minrank.burden 0
var maxrank.burden 400
var maxprep.maf 100
var minrank.maf 0
var maxrank.maf 400
var maxprep.lw 100
var minrank.lw 10
var maxrank.lw 600
var maxprep.ease 100
var minrank.ease 0
var maxrank.ease 400
var maxprep.gaf 100
var minrank.gaf 10
var maxrank.gaf 600
var maxprep.sec 600
var minrank.sec 10
var maxrank.sec 600
var maxprep.dispel 100
var minrank.dispel 80
var maxrank.dispel 800
var maxprep.imbue 100
var minrank.imbue 80
var maxrank.imbue 800

echo
echo Now setting the Analogous Patterns mana variables based on your ranks.
echo
pause 1

gosub Targeted stra
gosub Debilitation burden
gosub Warding maf
gosub Warding lw
gosub Augmentation ease
gosub Utility gaf
gosub Utility sec
gosub Utility dispel
gosub Utility imbue
goto GuildSelect

GuildSelect:
echo Your guild:
echo
echo 1. Cleric (holy)
echo 2. Paladin (holy)
echo 3. Empath (life)
echo 4. Ranger (life)
echo 5. Warrior Mage (elemental)
echo 6. Bard (elemental)
echo 7. Moon Mage (lunar)
echo 8. Trader (lunar)
echo 9. Necromancer (arcane)
echo
echo Enter Guild Number:
echo

matchre Cleric ^1$
matchre Paladin ^2$
matchre Empath ^3$
matchre Ranger ^4$
matchre WarriorMage ^5$
matchre Bard ^6$
matchre MoonMage ^7$
matchre Trader ^8$
matchre Necromancer ^9$
matchwait

Cleric:
echo
echo Setting all Cleric mana variables to the minimum by default...
echo
put #var min.ff 2
put #var quar.ff 2
put #var half.ff 2
put #var max.ff 2
put #var min.he 2
put #var quar.he 2
put #var half.he 2
put #var max.he 2
put #var min.horn 2
put #var quar.horn 2
put #var half.horn 2
put #var max.horn 2
put #var min.sa 6
put #var quar.sa 6
put #var half.sa 6
put #var max.sa 6
put #var min.chs 7
put #var quar.chs 7
put #var half.chs 7
put #var max.chs 7
put #var min.hot 7
put #var quar.hot 7
put #var half.hot 7
put #var max.hot 7
put #var min.ae 15
put #var quar.ae 15
put #var half.ae 15
put #var max.ae 15
put #var min.hh 15
put #var quar.hh 15
put #var half.hh 15
put #var max.hh 15
put #var min.fou 30
put #var quar.fou 30
put #var half.fou 30
put #var max.fou 30
put #var min.hulp 1
put #var quar.hulp 1
put #var half.hulp 1
put #var max.hulp 1
put #var min.sb 1
put #var quar.sb 1
put #var half.sb 1
put #var max.sb 1
put #var min.sick 1
put #var quar.sick 1
put #var half.sick 1
put #var max.sick 1
put #var min.coz 5
put #var quar.coz 5
put #var half.coz 5
put #var max.coz 5
put #var min.malediction 5
put #var quar.malediction 5
put #var half.malediction 5
put #var max.malediction 5
put #var min.mc 10
put #var quar.mc 10
put #var half.mc 10
put #var max.mc 10
put #var min.ps 10
put #var quar.ps 10
put #var half.ps 10
put #var max.ps 10
put #var min.hyh 6
put #var quar.hyh 6
put #var half.hyh 6
put #var max.hyh 6
put #var min.spit 20
put #var quar.spit 20
put #var half.spit 20
put #var max.spit 20
put #var min.halo 30
put #var quar.halo 30
put #var half.halo 30
put #var max.halo 30
put #var min.it 20
put #var quar.it 20
put #var half.it 20
put #var max.it 20
put #var min.mpp 1
put #var quar.mpp 1
put #var half.mpp 1
put #var max.mpp 1
put #var min.pfe 5
put #var quar.pfe 5
put #var half.pfe 5
put #var max.pfe 5
put #var min.sos 5
put #var quar.sos 5
put #var half.sos 5
put #var max.sos 5
put #var min.ghs 5
put #var quar.ghs 5
put #var half.ghs 5
put #var max.ghs 5
put #var min.sl 30
put #var quar.sl 30
put #var half.sl 30
put #var max.sl 30
put #var min.centering 1
put #var quar.centering 1
put #var half.centering 1
put #var max.centering 1
put #var min.auspice 5
put #var quar.auspice 5
put #var half.auspice 5
put #var max.auspice 5
put #var min.gg 5
put #var quar.gg 5
put #var half.gg 5
put #var max.gg 5
put #var min.mapp 5
put #var quar.mapp 5
put #var half.mapp 5
put #var max.mapp 5
put #var min.sap 5
put #var quar.sap 5
put #var half.sap 5
put #var max.sap 5
put #var min.benediction 15
put #var quar.benediction 15
put #var half.benediction 15
put #var max.benediction 15
put #var min.pom 150
put #var quar.pom 150
put #var half.pom 150
put #var max.pom 150
put #var min.all 50
put #var quar.all 50
put #var half.all 50
put #var max.all 50
put #var min.rev 5
put #var quar.rev 5
put #var half.rev 5
put #var max.rev 5
put #var min.sol 15
put #var quar.sol 15
put #var half.sol 15
put #var max.sol 15
put #var min.bless 1
put #var quar.bless 1
put #var half.bless 1
put #var max.bless 1
put #var min.dr 2
put #var quar.dr 2
put #var half.dr 2
put #var max.dr 2
put #var min.rejuv 5
put #var quar.rejuv 5
put #var half.rejuv 5
put #var max.rejuv 5
put #var min.uncurse 5
put #var quar.uncurse 5
put #var half.uncurse 5
put #var max.uncurse 5
put #var min.vigil 5
put #var quar.vigil 5
put #var half.vigil 5
put #var max.vigil 5
put #var min.rezz 5
put #var quar.rezz 5
put #var half.rezz 5
put #var max.rezz 5
put #var min.ef 15
put #var quar.ef 15
put #var half.ef 15
put #var max.ef 15
put #var min.mre 15
put #var quar.mre 15
put #var half.mre 15
put #var max.mre 15
put #var min.om 30
put #var quar.om 30
put #var half.om 30
put #var max.om 30
put #var min.mf 300
put #var quar.mf 300
put #var half.mf 300
put #var max.mf 300
put #var save

var maxprep.ff 50
var minrank.ff 10
var maxrank.ff 600
var maxprep.he 50
var minrank.he 10
var maxrank.he 600
var maxprep.horn 50
var minrank.horn 10
var maxrank.horn 600
var maxprep.sa 31
var minrank.sa 80
var maxrank.sa 800
var maxprep.chs 50
var minrank.chs 80
var maxrank.chs 800
var maxprep.hot 50
var minrank.hot 80
var maxrank.hot 800
var maxprep.ae 100
var minrank.ae 80
var maxrank.ae 800
var maxprep.hh 100
var minrank.hh 80
var maxrank.hh 800
var maxprep.fou 100
var minrank.fou 250
var maxrank.fou 1000
var maxprep.hulp 33
var minrank.hulp 10
var maxrank.hulp 600
var maxprep.sb 33
var minrank.sb 10
var maxrank.sb 600
var maxprep.sick 33
var minrank.sick 10
var maxrank.sick 600
var maxprep.coz 33
var minrank.coz 80
var maxrank.coz 800
var maxprep.malediction 33
var minrank.malediction 80
var maxrank.malediction 800
var maxprep.mc 66
var minrank.mc 80
var maxrank.mc 800
var maxprep.ps 66
var minrank.ps 80
var maxrank.ps 800
var maxprep.hyh 31
var minrank.hyh 250
var maxrank.hyh 1000
var maxprep.spit 66
var minrank.spit 250
var maxrank.spit 1000
var maxprep.halo 100
var minrank.halo 250
var maxrank.halo 1000
var maxprep.it 66
var minrank.it 250
var maxrank.it 1000
var maxprep.mpp 100
var minrank.mpp 10
var maxrank.mpp 600
var maxprep.pfe 100
var minrank.pfe 10
var maxrank.pfe 600
var maxprep.sos 100
var minrank.sos 10
var maxrank.sos 600
var maxprep.ghs 25
var minrank.ghs 80
var maxrank.ghs 800
var maxprep.sl 100
var minrank.sl 250
var maxrank.sl 1000
var maxprep.centering 100
var minrank.centering 0
var maxrank.centering 400
var maxprep.auspice 100
var minrank.auspice 10
var maxrank.auspice 600
var maxprep.gg 100
var minrank.gg 10
var maxrank.gg 600
var maxprep.mapp 100
var minrank.mapp 10
var maxrank.mapp 600
var maxprep.sap 100
var minrank.sap 10
var maxrank.sap 600
var maxprep.benediction 100
var minrank.benediction 80
var maxrank.benediction 800
var maxprep.pom 700
var minrank.pom 80
var maxrank.pom 800
var maxprep.all 600
var minrank.all 10
var maxrank.all 600
var maxprep.rev 25
var minrank.rev 80
var maxrank.rev 800
var maxprep.sol 100
var minrank.sol 80
var maxrank.sol 800
var maxprep.bless 100
var minrank.bless 0
var maxrank.bless 400
var maxprep.dr 50
var minrank.dr 10
var maxrank.dr 600
var maxprep.rejuv 100
var minrank.rejuv 10
var maxrank.rejuv 600
var maxprep.uncurse 100
var minrank.uncurse 10
var maxrank.uncurse 600
var maxprep.vigil 100
var minrank.vigil 10
var maxrank.vigil 600
var maxprep.rezz 50
var minrank.rezz 80
var maxrank.rezz 800
var maxprep.ef 100
var minrank.ef 80
var maxrank.ef 800
var maxprep.mre 100
var minrank.mre 80
var maxrank.mre 800
var maxprep.om 200
var minrank.om 250
var maxrank.om 1000
var maxprep.mf 800
var minrank.mf 250
var maxrank.mf 1000

echo
echo Now setting the Cleric mana variables based on your ranks.
echo
gosub Targeted ff
gosub Targeted he
gosub Targeted horn
gosub Targeted sa
gosub Targeted chs
gosub Targeted hot
gosub Targeted ae
gosub Targeted hh
gosub Targeted fou
gosub Debilitation hulp
gosub Debilitation sb
gosub Debilitation sick
gosub Debilitation coz
gosub Debilitation malediction
gosub Debilitation mc
gosub Debilitation ps
gosub Debilitation hyh
gosub Debilitation-Warding spit
gosub Debilitation-Warding halo
gosub Debilitation-Utility it
gosub Warding mpp
gosub Warding pfe
gosub Warding sos
gosub Warding ghs
gosub Warding sl
gosub Augmentation centering
gosub Augmentation auspice
gosub Augmentation gg
gosub Augmentation mapp
gosub Augmentation sap
gosub Augmentation benediction
gosub Augmentation pom
gosub Augmentation-Utility all
gosub Augmentation-Utility rev
gosub Augmentation-Utility sol
gosub Utility bless
gosub Utility dr
gosub Utility rejuv
gosub Utility uncurse
gosub Utility vigil
gosub Utility rezz
gosub Utility ef
gosub Utility mre
gosub Utility om
gosub Utility mf
goto Exit

Paladin:
echo
echo Setting all Paladin mana variables to the minimum by default...
echo
put #var min.fst 2
put #var quar.fst 2
put #var half.fst 2
put #var max.fst 2
put #var min.reb 10
put #var quar.reb 10
put #var half.reb 10
put #var max.reb 10
put #var min.smh 30
put #var quar.smh 30
put #var half.smh 30
put #var max.smh 30
put #var min.sf 1
put #var quar.sf 1
put #var half.sf 1
put #var max.sf 1
put #var min.halt 1
put #var quar.halt 1
put #var half.halt 1
put #var max.halt 1
put #var min.shatter 1
put #var quar.shatter 1
put #var half.shatter 1
put #var max.shatter 1
put #var min.aa 1
put #var quar.aa 1
put #var half.aa 1
put #var max.aa 1
put #var min.sp 15
put #var quar.sp 15
put #var half.sp 15
put #var max.sp 15
put #var min.how 5
put #var quar.how 5
put #var half.how 5
put #var max.how 5
put #var min.hes 1
put #var quar.hes 1
put #var half.hes 1
put #var max.hes 1
put #var min.courage 5
put #var quar.courage 5
put #var half.courage 5
put #var max.courage 5
put #var min.dig 5
put #var quar.dig 5
put #var half.dig 5
put #var max.dig 5
put #var min.rw 5
put #var quar.rw 5
put #var half.rw 5
put #var max.rw 5
put #var min.sr 5
put #var quar.sr 5
put #var half.sr 5
put #var max.sr 5
put #var min.clarity 15
put #var quar.clarity 15
put #var half.clarity 15
put #var max.clarity 15
put #var min.mo 15
put #var quar.mo 15
put #var half.mo 15
put #var max.mo 15
put #var min.tr 5
put #var quar.tr 5
put #var half.tr 5
put #var max.tr 5
put #var min.crc 30
put #var quar.crc 30
put #var half.crc 30
put #var max.crc 30
put #var min.hoj 5
put #var quar.hoj 5
put #var half.hoj 5
put #var max.hoj 5
put #var min.vos 5
put #var quar.vos 5
put #var half.vos 5
put #var max.vos 5
put #var min.as 15
put #var quar.as 15
put #var half.as 15
put #var max.as 15
put #var min.bot 15
put #var quar.bot 15
put #var half.bot 15
put #var max.bot 15
put #var min.ba 15
put #var quar.ba 15
put #var half.ba 15
put #var max.ba 15
put #var min.da 15
put #var quar.da 15
put #var half.da 15
put #var max.da 15
put #var min.rue 15
put #var quar.rue 15
put #var half.rue 15
put #var max.rue 15
put #var min.ag 300
put #var quar.ag 300
put #var half.ag 300
put #var max.ag 300
put #var save

var maxprep.fst 50
var minrank.fst 10
var maxrank.fst 600
var maxprep.reb 66
var minrank.reb 80
var maxrank.reb 800
var maxprep.smh 100
var minrank.smh 250
var maxrank.smh 1000
var maxprep.sf 33
var minrank.sf 0
var maxrank.sf 400
var maxprep.halt 33
var minrank.halt 10
var maxrank.halt 600
var maxprep.shatter 33
var minrank.shatter 10
var maxrank.shatter 600
var maxprep.aa 100
var minrank.aa 0
var maxrank.aa 400
var maxprep.sp 100
var minrank.sp 80
var maxrank.sp 800
var maxprep.how 25
var minrank.how 250
var maxrank.how 1000
var maxprep.hes 100
var minrank.hes 0
var maxrank.hes 400
var maxprep.courage 100
var minrank.courage 10
var maxrank.courage 600
var maxprep.dig 100
var minrank.dig 10
var maxrank.dig 600
var maxprep.rw 100
var minrank.rw 10
var maxrank.rw 600
var maxprep.sr 100
var minrank.sr 10
var maxrank.sr 600
var maxprep.clarity 100
var minrank.clarity 80
var maxrank.clarity 800
var maxprep.mo 100
var minrank.mo 80
var maxrank.mo 800
var maxprep.tr 25
var minrank.tr 250
var maxrank.tr 1000
var maxprep.crc 100
var minrank.crc 250
var maxrank.crc 1000
var maxprep.hoj 100
var minrank.hoj 10
var maxrank.hoj 600
var maxprep.vos 100
var minrank.vos 10
var maxrank.vos 600
var maxprep.as 100
var minrank.as 80
var maxrank.as 800
var maxprep.bot 100
var minrank.bot 80
var maxrank.bot 800
var maxprep.ba 100
var minrank.ba 80
var maxrank.ba 800
var maxprep.da 100
var minrank.da 80
var maxrank.da 800
var maxprep.rue 100
var minrank.rue 80
var maxrank.rue 800
var maxprep.ag 800
var minrank.ag 250
var maxrank.ag 1000

echo
echo Now setting the Paladin mana variables based on your ranks.
echo
gosub Targeted fst
gosub Targeted reb
gosub Targeted smh
gosub Debilitation sf
gosub Debilitation halt
gosub Debilitation shatter
gosub Warding aa
gosub Warding sp
gosub Warding-Utility how
gosub Augmentation hes
gosub Augmentation courage
gosub Augmentation dig
gosub Augmentation rw
gosub Augmentation sr
gosub Augmentation clarity
gosub Augmentation mo
gosub Augmentation-Utility tr
gosub Augmentation-Utility crc
gosub Utility hoj
gosub Utility vos
gosub Utility as
gosub Utility bot
gosub Utility ba
gosub Utility da
gosub Utility rue
gosub Utility ag
goto Exit

Empath:
echo
echo Setting all Empath mana variables to the minimum by default...
echo
put #var min.paralysis 2
put #var quar.paralysis 2
put #var half.paralysis 2
put #var max.paralysis 2
put #var min.iz 15
put #var quar.iz 15
put #var half.iz 15
put #var max.iz 15
put #var min.lethargy 1
put #var quar.lethargy 1
put #var half.lethargy 1
put #var max.lethargy 1
put #var min.compel 5
put #var quar.compel 5
put #var half.compel 5
put #var max.compel 5
put #var min.nb 10
put #var quar.nb 10
put #var half.nb 10
put #var max.nb 10
put #var min.ic 5
put #var quar.ic 5
put #var half.ic 5
put #var max.ic 5
put #var min.pop 300
put #var quar.pop 300
put #var half.pop 300
put #var max.pop 300
put #var min.tranquility 15
put #var quar.tranquility 15
put #var half.tranquility 15
put #var max.tranquility 15
put #var min.refresh 1
put #var quar.refresh 1
put #var half.refresh 1
put #var max.refresh 1
put #var min.ags 5
put #var quar.ags 5
put #var half.ags 5
put #var max.ags 5
put #var min.gol 5
put #var quar.gol 5
put #var half.gol 5
put #var max.gol 5
put #var min.mef 5
put #var quar.mef 5
put #var half.mef 5
put #var max.mef 5
put #var min.vigor 15
put #var quar.vigor 15
put #var half.vigor 15
put #var max.vigor 15
put #var min.ad 5
put #var quar.ad 5
put #var half.ad 5
put #var max.ad 5
put #var min.hs 1
put #var quar.hs 1
put #var half.hs 1
put #var max.hs 1
put #var min.hw 1
put #var quar.hw 1
put #var half.hw 1
put #var max.hw 1
put #var min.bs 5
put #var quar.bs 5
put #var half.bs 5
put #var max.bs 5
put #var min.innocence 5
put #var quar.innocence 5
put #var half.innocence 5
put #var max.innocence 5
put #var min.vh 5
put #var quar.vh 5
put #var half.vh 5
put #var max.vh 5
put #var min.awaken 15
put #var quar.awaken 15
put #var half.awaken 15
put #var max.awaken 15
put #var min.cd 15
put #var quar.cd 15
put #var half.cd 15
put #var max.cd 15
put #var min.fp 15
put #var quar.fp 15
put #var half.fp 15
put #var max.fp 15
put #var min.heal 15
put #var quar.heal 15
put #var half.heal 15
put #var max.heal 15
put #var min.hl 15
put #var quar.hl 15
put #var half.hl 15
put #var max.hl 15
put #var min.rp 15
put #var quar.rp 15
put #var half.rp 15
put #var max.rp 15
put #var min.absolution 150
put #var quar.absolution 150
put #var half.absolution 150
put #var max.absolution 150
put #var min.cos 150
put #var quar.cos 150
put #var half.cos 150
put #var max.cos 150
put #var min.gs 5
put #var quar.gs 5
put #var half.gs 5
put #var max.gs 5
put #var min.regenerate 5
put #var quar.regenerate 5
put #var half.regenerate 5
put #var max.regenerate 5
put #var min.foc 30
put #var quar.foc 30
put #var half.foc 30
put #var max.foc 30
put #var save

var maxprep.paralysis 50
var minrank.paralysis 10
var maxrank.paralysis 600
var maxprep.iz 45
var minrank.iz 400
var maxrank.iz 1250
var maxprep.lethargy 33
var minrank.lethargy 10
var maxrank.lethargy 600
var maxprep.compel 33
var minrank.compel 80
var maxrank.compel 800
var maxprep.nb 66
var minrank.nb 80
var maxrank.nb 800
var maxprep.ic 100
var minrank.ic 10
var maxrank.ic 600
var maxprep.pop 800
var minrank.pop 250
var maxrank.pop 1000
var maxprep.tranquility 100
var minrank.tranquility 80
var maxrank.tranquility 800
var maxprep.refresh 100
var minrank.refresh 0
var maxrank.refresh 400
var maxprep.ags 100
var minrank.ags 10
var maxrank.ags 600
var maxprep.gol 100
var minrank.gol 10
var maxrank.gol 600
var maxprep.mef 100
var minrank.mef 10
var maxrank.mef 600
var maxprep.vigor 100
var minrank.vigor 80
var maxrank.vigor 800
var maxprep.ad 25
var minrank.ad 250
var maxrank.ad 1000
var maxprep.hs 100
var minrank.hs 0
var maxrank.hs 400
var maxprep.hw 100
var minrank.hw 0
var maxrank.hw 400
var maxprep.bs 100
var minrank.bs 10
var maxrank.bs 600
var maxprep.innocence 100
var minrank.innocence 10
var maxrank.innocence 600
var maxprep.vh 100
var minrank.vh 10
var maxrank.vh 600
var maxprep.awaken 100
var minrank.awaken 80
var maxrank.awaken 800
var maxprep.cd 100
var minrank.cd 80
var maxrank.cd 800
var maxprep.fp 100
var minrank.fp 80
var maxrank.fp 800
var maxprep.heal 100
var minrank.heal 80
var maxrank.heal 800
var maxprep.hl 100
var minrank.hl 80
var maxrank.hl 800
var maxprep.rp 100
var minrank.rp 80
var maxrank.rp 800
var maxprep.absolution 700
var minrank.absolution 80
var maxrank.absolution 800
var maxprep.cos 700
var minrank.cos 80
var maxrank.cos 800
var maxprep.gs 25
var minrank.gs 250
var maxrank.gs 1000
var maxprep.regenerate 25
var minrank.regenerate 250
var maxrank.regenerate 1000
var maxprep.foc 100
var minrank.foc 250
var maxrank.foc 1000

echo
echo Now setting the Empath mana variables based on your ranks.
echo
gosub Targeted paralysis
gosub Targeted iz
gosub Debilitation lethargy
gosub Debilitation compel
gosub Debilitation nb
gosub Warding ic
gosub Warding pop
gosub Warding-Augmentation tranquility
gosub Augmentation refresh
gosub Augmentation ags
gosub Augmentation gol
gosub Augmentation mef
gosub Augmentation vigor
gosub Augmentation-Utility ad
gosub Utility hs
gosub Utility hw
gosub Utility bs
gosub Utility innocence
gosub Utility vh
gosub Utility awaken
gosub Utility cd
gosub Utility fp
gosub Utility heal
gosub Utility hl
gosub Utility rp
gosub Utility absolution
gosub Utility cos
gosub Utility gs
gosub Utility regenerate
gosub Utility foc
goto Exit

Ranger:
echo
echo Setting all Ranger mana variables to the minimum by default...
echo
put #var min.ec 1
put #var quar.ec 1
put #var half.ec 1
put #var max.ec 1
put #var min.cac 2
put #var quar.cac 2
put #var half.cac 2
put #var max.cac 2
put #var min.stampede 2
put #var quar.stampede 2
put #var half.stampede 2
put #var max.stampede 2
put #var min.devi 10
put #var quar.devi 10
put #var half.devi 10
put #var max.devi 10
put #var min.df 1
put #var quar.df 1
put #var half.df 1
put #var max.df 1
put #var min.hb 3
put #var quar.hb 3
put #var half.hb 3
put #var max.hb 3
put #var min.de 5
put #var quar.de 5
put #var half.de 5
put #var max.de 5
put #var min.griz 10
put #var quar.griz 10
put #var half.griz 10
put #var max.griz 10
put #var min.swarm 10
put #var quar.swarm 10
put #var half.swarm 10
put #var max.swarm 10
put #var min.cotw 10
put #var quar.cotw 10
put #var half.cotw 10
put #var max.cotw 10
put #var min.ey 5
put #var quar.ey 5
put #var half.ey 5
put #var max.ey 5
put #var min.fwb 15
put #var quar.fwb 15
put #var half.fwb 15
put #var max.fwb 15
put #var min.stw 1
put #var quar.stw 1
put #var half.stw 1
put #var max.stw 1
put #var min.athleticism 1
put #var quar.athleticism 1
put #var half.athleticism 1
put #var max.athleticism 1
put #var min.hol 5
put #var quar.hol 5
put #var half.hol 5
put #var max.hol 5
put #var min.inst 5
put #var quar.inst 5
put #var half.inst 5
put #var max.inst 5
put #var min.sott 5
put #var quar.sott 5
put #var half.sott 5
put #var max.sott 5
put #var min.ws 5
put #var quar.ws 5
put #var half.ws 5
put #var max.ws 5
put #var min.cotc 15
put #var quar.cotc 15
put #var half.cotc 15
put #var max.cotc 15
put #var min.oath 15
put #var quar.oath 15
put #var half.oath 15
put #var max.oath 15
put #var min.wotp 15
put #var quar.wotp 15
put #var half.wotp 15
put #var max.wotp 15
put #var min.cs 5
put #var quar.cs 5
put #var half.cs 5
put #var max.cs 5
put #var min.em 5
put #var quar.em 5
put #var half.em 5
put #var max.em 5
put #var min.sks 15
put #var quar.sks 15
put #var half.sks 15
put #var max.sks 15
put #var min.bes 5
put #var quar.bes 5
put #var half.bes 5
put #var max.bes 5
put #var min.compost 1
put #var quar.compost 1
put #var half.compost 1
put #var max.compost 1
put #var min.blend 15
put #var quar.blend 15
put #var half.blend 15
put #var max.blend 15
put #var min.af 30
put #var quar.af 30
put #var half.af 30
put #var max.af 30
put #var min.mon 300
put #var quar.mon 300
put #var half.mon 300
put #var max.mon 300
put #var save

var maxprep.ec 50
var minrank.ec 0
var maxrank.ec 400
var maxprep.cac 50
var minrank.cac 10
var maxrank.cac 600
var maxprep.stampede 50
var minrank.stampede 10
var maxrank.stampede 600
var maxprep.devi 66
var minrank.devi 80
var maxrank.devi 800
var maxprep.df 33
var minrank.df 10
var maxrank.df 600
var maxprep.hb 66
var minrank.hb 10
var maxrank.hb 600
var maxprep.de 33
var minrank.de 80
var maxrank.de 800
var maxprep.griz 66
var minrank.griz 80
var maxrank.griz 800
var maxprep.swarm 66
var minrank.swarm 80
var maxrank.swarm 800
var maxprep.cotw 33
var minrank.cotw 250
var maxrank.cotw 1000
var maxprep.ey 100
var minrank.ey 10
var maxrank.ey 800
var maxprep.fwb 100
var minrank.fwb 80
var maxrank.fwb 800
var maxprep.stw 100
var minrank.stw 0
var maxrank.stw 400
var maxprep.athleticism 100
var minrank.athleticism 10
var maxrank.athleticism 600
var maxprep.hol 100
var minrank.hol 10
var maxrank.hol 600
var maxprep.inst 100
var minrank.inst 10
var maxrank.inst 600
var maxprep.sott 100
var minrank.sott 10
var maxrank.sott 600
var maxprep.ws 100
var minrank.ws 10
var maxrank.ws 600
var maxprep.cotc 100
var minrank.cotc 80
var maxrank.cotc 800
var maxprep.oath 100
var minrank.oath 80
var maxrank.oath 800
var maxprep.wotp 100
var minrank.wotp 80
var maxrank.wotp 800
var maxprep.cs 25
var minrank.cs 250
var maxrank.cs 1000
var maxprep.em 100
var minrank.em 10
var maxrank.em 600
var maxprep.sks 100
var minrank.sks 80
var maxrank.sks 800
var maxprep.bes 25
var minrank.bes 250
var maxrank.bes 1000
var maxprep.compost 100
var minrank.compost 0
var maxrank.compost 400
var maxprep.blend 100
var minrank.blend 80
var maxrank.blend 800
var maxprep.af 100
var minrank.af 250
var maxrank.af 1000
var maxprep.mon 800
var minrank.mon 250
var maxrank.mon 1000

echo
echo Now setting the Ranger mana variables based on your ranks.
echo
gosub Targeted ec
gosub Targeted cac
gosub Targeted stampede
gosub Targeted devi
gosub Debilitation df
gosub Debilitation hb
gosub Debilitation de
gosub Debilitation griz
gosub Debilitation swarm
gosub Debilitation cotw
gosub Warding ey
gosub Warding fwb
gosub Augmentation stw
gosub Augmentation athleticism
gosub Augmentation hol
gosub Augmentation inst
gosub Augmentation sott
gosub Augmentation ws
gosub Augmentation cotc
gosub Augmentation oath
gosub Augmentation wotp
gosub Augmentation cs
gosub Augmentation-Utility em
gosub Augmentation-Utility sks
gosub Augmentation-Utility bes
gosub Utility compost
gosub Utility blend
gosub Utility af
gosub Utility mon
goto Exit

WarriorMage:
echo
echo Setting all Warrior Mage mana variables to the minimum by default...
echo
put #var min.ala 1
put #var quar.ala 1
put #var half.ala 1
put #var max.ala 1
put #var min.fs 1
put #var quar.fs 1
put #var half.fs 1
put #var max.fs 1
put #var min.gz 1
put #var quar.gz 1
put #var half.gz 1
put #var max.gz 1
put #var min.geyser 1
put #var quar.geyser 1
put #var half.geyser 1
put #var max.geyser 1
put #var min.sts 1
put #var quar.sts 1
put #var half.sts 1
put #var max.sts 1
put #var min.aethrolysis 2
put #var quar.aethrolysis 2
put #var half.aethrolysis 2
put #var max.aethrolysis 2
put #var min.frs 7
put #var quar.frs 7
put #var half.frs 7
put #var max.frs 7
put #var min.lb 7
put #var quar.lb 7
put #var half.lb 7
put #var max.lb 7
put #var min.pw 7
put #var quar.pw 7
put #var half.pw 7
put #var max.pw 7
put #var min.cl 15
put #var quar.cl 15
put #var half.cl 15
put #var max.cl 15
put #var min.db 15
put #var quar.db 15
put #var half.db 15
put #var max.db 15
put #var min.fb 15
put #var quar.fb 15
put #var half.fb 15
put #var max.fb 15
put #var min.mab 15
put #var quar.mab 15
put #var half.mab 15
put #var max.mab 15
put #var min.rim 6
put #var quar.rim 6
put #var half.rim 6
put #var max.rim 6
put #var min.fr 7
put #var quar.fr 7
put #var half.fr 7
put #var max.fr 7
put #var min.ros 7
put #var quar.ros 7
put #var half.ros 7
put #var max.ros 7
put #var min.bg 30
put #var quar.bg 30
put #var half.bg 30
put #var max.bg 30
put #var min.shockwave 30
put #var quar.shockwave 30
put #var half.shockwave 30
put #var max.shockwave 30
put #var min.anc 1
put #var quar.anc 1
put #var half.anc 1
put #var max.anc 1
put #var min.al 1
put #var quar.al 1
put #var half.al 1
put #var max.al 1
put #var min.ip 1
put #var quar.ip 1
put #var half.ip 1
put #var max.ip 1
put #var min.moa 1
put #var quar.moa 1
put #var half.moa 1
put #var max.moa 1
put #var min.wb 1
put #var quar.wb 1
put #var half.wb 1
put #var max.wb 1
put #var min.ti 5
put #var quar.ti 5
put #var half.ti 5
put #var max.ti 5
put #var min.vertigo 5
put #var quar.vertigo 5
put #var half.vertigo 5
put #var max.vertigo 5
put #var min.ee 6
put #var quar.ee 6
put #var half.ee 6
put #var max.ee 6
put #var min.tc 10
put #var quar.tc 10
put #var half.tc 10
put #var max.tc 10
put #var min.trem 10
put #var quar.trem 10
put #var half.trem 10
put #var max.trem 10
put #var min.frostbite 15
put #var quar.frostbite 15
put #var half.frostbite 15
put #var max.frostbite 15
put #var min.es 1
put #var quar.es 1
put #var half.es 1
put #var max.es 1
put #var min.voi 15
put #var quar.voi 15
put #var half.voi 15
put #var max.voi 15
put #var min.ac 4
put #var quar.ac 4
put #var half.ac 4
put #var max.ac 4
put #var min.gf 30
put #var quar.gf 30
put #var half.gf 30
put #var max.gf 30
put #var min.substratum 5
put #var quar.substratum 5
put #var half.substratum 5
put #var max.substratum 5
put #var min.suf 5
put #var quar.suf 5
put #var half.suf 5
put #var max.suf 5
put #var min.sw 5
put #var quar.sw 5
put #var half.sw 5
put #var max.sw 5
put #var min.tw 5
put #var quar.tw 5
put #var half.tw 5
put #var max.tw 5
put #var min.ys 15
put #var quar.ys 15
put #var half.ys 15
put #var max.ys 15
put #var min.aeg 300
put #var quar.aeg 300
put #var half.aeg 300
put #var max.aeg 300
put #var min.mof 300
put #var quar.mof 300
put #var half.mof 300
put #var max.mof 300
put #var min.ab 5
put #var quar.ab 5
put #var half.ab 5
put #var max.ab 5
put #var min.ignite 5
put #var quar.ignite 5
put #var half.ignite 5
put #var max.ignite 5
put #var min.zephyr 5
put #var quar.zephyr 5
put #var half.zephyr 5
put #var max.zephyr 5
put #var min.etf 15
put #var quar.etf 15
put #var half.etf 15
put #var max.etf 15
put #var min.rm 15
put #var quar.rm 15
put #var half.rm 15
put #var max.rm 15
put #var min.foi 30
put #var quar.foi 30
put #var half.foi 30
put #var max.foi 30
put #var save

var maxprep.ala 50
var minrank.ala 0
var maxrank.ala 400
var maxprep.fs 50
var minrank.fs 0
var maxrank.fs 400
var maxprep.gz 50
var minrank.gz 0
var maxrank.gz 400
var maxprep.geyser 50
var minrank.geyser 0
var maxrank.geyser 400
var maxprep.sts 50
var minrank.sts 0
var maxrank.sts 400
var maxprep.aethrolysis 50
var minrank.aethrolysis 10
var maxrank.aethrolysis 600
var maxprep.frs 50
var minrank.frs 80
var maxrank.frs 800
var maxprep.lb 50
var minrank.lb 80
var maxrank.lb 800
var maxprep.pw 50
var minrank.pw 80
var maxrank.pw 800
var maxprep.cl 100
var minrank.cl 80
var maxrank.cl 800
var maxprep.db 100
var minrank.db 80
var maxrank.db 800
var maxprep.fb 100
var minrank.fb 80
var maxrank.fb 800
var maxprep.mab 100
var minrank.mab 80
var maxrank.mab 800
var maxprep.rim 31
var minrank.rim 250
var maxrank.rim 1000
var maxprep.fr 37
var minrank.fr 250
var maxrank.fr 1000
var maxprep.ros 37
var minrank.ros 250
var maxrank.ros 1000
var maxprep.bg 100
var minrank.bg 250
var maxrank.bg 1000
var maxprep.shockwave 100
var minrank.shockwave 250
var maxrank.shockwave 1000
var maxprep.anc 33
var minrank.anc 10
var maxrank.anc 600
var maxprep.al 33
var minrank.al 10
var maxrank.al 600
var maxprep.ip 33
var minrank.ip 10
var maxrank.ip 600
var maxprep.moa 33
var minrank.moa 10
var maxrank.moa 600
var maxprep.wb 33
var minrank.wb 10
var maxrank.wb 600
var maxprep.ti 33
var minrank.ti 80
var maxrank.ti 800
var maxprep.vertigo 33
var minrank.vertigo 80
var maxrank.vertigo 800
var maxprep.ee 31
var minrank.ee 80
var maxrank.ee 800
var maxprep.tc 66
var minrank.tc 80
var maxrank.tc 800
var maxprep.trem 66
var minrank.trem 80
var maxrank.trem 800
var maxprep.frostbite 100
var minrank.frostbite 80
var maxrank.frostbite 800
var maxprep.es 100
var minrank.es 0
var maxrank.es 400
var maxprep.voi 100
var minrank.voi 80
var maxrank.voi 800
var maxprep.ac 25
var minrank.ac 250
var maxrank.ac 1000
var maxprep.gf 100
var minrank.gf 250
var maxrank.gf 1000
var maxprep.substratum 100
var minrank.substratum 10
var maxrank.substratum 600
var maxprep.suf 100
var minrank.suf 10
var maxrank.suf 600
var maxprep.sw 100
var minrank.sw 10
var maxrank.sw 600
var maxprep.tw 100
var minrank.tw 10
var maxrank.tw 600
var maxprep.ys 100
var minrank.ys 80
var maxrank.ys 800
var maxprep.aeg 800
var minrank.aeg 250
var maxrank.aeg 1000
var maxprep.mof 800
var minrank.mof 250
var maxrank.mof 1000
var maxprep.ab 100
var minrank.ab 10
var maxrank.ab 600
var maxprep.ignite 100
var minrank.ignite 10
var maxrank.ignite 600
var maxprep.zephyr 100
var minrank.zephyr 10
var maxrank.zephyr 600
var maxprep.etf 100
var minrank.etf 80
var maxrank.etf 800
var maxprep.rm 100
var minrank.rm 80
var maxrank.rm 800
var maxprep.foi 100
var minrank.foi 250
var maxrank.foi 1000

echo
echo Now setting the Warrior Mage mana variables based on your ranks.
echo
gosub Targeted ala
gosub Targeted fs
gosub Targeted gz
gosub Targeted geyser
gosub Targeted sts
gosub Targeted aethrolysis
gosub Targeted frs
gosub Targeted lb
gosub Targeted pw
gosub Targeted cl
gosub Targeted db
gosub Targeted fb
gosub Targeted mab
gosub Targeted rim
gosub Targeted fr
gosub Targeted ros
gosub Targeted bg
gosub Targeted shockwave
gosub Debilitation anc
gosub Debilitation al
gosub Debilitation ip
gosub Debilitation moa
gosub Debilitation wb
gosub Debilitation ti
gosub Debilitation vertigo
gosub Debilitation ee
gosub Debilitation tc
gosub Debilitation trem
gosub Debilitation frostbite
gosub Warding es
gosub Warding voi
gosub Warding ac
gosub Warding gf
gosub Augmentation substratum
gosub Augmentation suf
gosub Augmentation sw
gosub Augmentation tw
gosub Augmentation ys
gosub Augmentation aeg
gosub Augmentation mof
gosub Utility ab
gosub Utility ignite
gosub Utility zephyr
gosub Utility etf
gosub Utility rm
gosub Utility foi
goto Exit

Bard:
echo
echo Setting all Bard mana variables to the minimum by default...
echo
put #var min.bos 2
put #var quar.bos 2
put #var half.bos 2
put #var max.bos 2
put #var min.aban 7
put #var quar.aban 7
put #var half.aban 7
put #var max.aban 7
put #var min.pyre 7
put #var quar.pyre 7
put #var half.pyre 7
put #var max.pyre 7
put #var min.btn 30
put #var quar.btn 30
put #var half.btn 30
put #var max.btn 30
put #var min.aewo 1
put #var quar.aewo 1
put #var half.aewo 1
put #var max.aewo 1
put #var min.dmrs 3
put #var quar.dmrs 3
put #var half.dmrs 3
put #var max.dmrs 3
put #var min.dalu 6
put #var quar.dalu 6
put #var half.dalu 6
put #var max.dalu 6
put #var min.dema 20
put #var quar.dema 20
put #var half.dema 20
put #var max.dema 20
put #var min.mis 10
put #var quar.mis 10
put #var half.mis 10
put #var max.mis 10
put #var min.alb 5
put #var quar.alb 5
put #var half.alb 5
put #var max.alb 5
put #var min.gj 5
put #var quar.gj 5
put #var half.gj 5
put #var max.gj 5
put #var min.repr 5
put #var quar.repr 5
put #var half.repr 5
put #var max.repr 5
put #var min.name 30
put #var quar.name 30
put #var half.name 30
put #var max.name 30
put #var min.ecry 1
put #var quar.ecry 1
put #var half.ecry 1
put #var max.ecry 1
put #var min.fae 2
put #var quar.fae 2
put #var half.fae 2
put #var max.fae 2
put #var min.wotm 5
put #var quar.wotm 5
put #var half.wotm 5
put #var max.wotm 5
put #var min.word 50
put #var quar.word 50
put #var half.word 50
put #var max.word 50
put #var min.botf 5
put #var quar.botf 5
put #var half.botf 5
put #var max.botf 5
put #var min.rage 15
put #var quar.rage 15
put #var half.rage 15
put #var max.rage 15
put #var min.drum 15
put #var quar.drum 15
put #var half.drum 15
put #var max.drum 15
put #var min.echo 150
put #var quar.echo 150
put #var half.echo 150
put #var max.echo 150
put #var min.will 150
put #var quar.will 150
put #var half.will 150
put #var max.will 150
put #var min.harmony 30
put #var quar.harmony 30
put #var half.harmony 30
put #var max.harmony 30
put #var min.soul 300
put #var quar.soul 300
put #var half.soul 300
put #var max.soul 300
put #var min.aot 1
put #var quar.aot 1
put #var half.aot 1
put #var max.aot 1
put #var min.care 2
put #var quar.care 2
put #var half.care 2
put #var max.care 2
put #var min.hodi 5
put #var quar.hodi 5
put #var half.hodi 5
put #var max.hodi 5
put #var min.eye 3
put #var quar.eye 3
put #var half.eye 3
put #var max.eye 3
put #var min.resonance 15
put #var quar.resonance 15
put #var half.resonance 15
put #var max.resonance 15
put #var min.sanctuary 5
put #var quar.sanctuary 5
put #var half.sanctuary 5
put #var max.sanctuary 5
put #var min.nexus 30
put #var quar.nexus 30
put #var half.nexus 30
put #var max.nexus 30
put #var save

var maxprep.bos 50
var minrank.bos 10
var maxrank.bos 600
var maxprep.aban 37
var minrank.aban 250
var maxrank.aban 1000
var maxprep.pyre 37
var minrank.pyre 250
var maxrank.pyre 1000
var maxprep.btn 100
var minrank.btn 250
var maxrank.btn 1000
var maxprep.aewo 20
var minrank.aewo 0
var maxrank.aewo 400
var maxprep.dmrs 66
var minrank.dmrs 10
var maxrank.dmrs 600
var maxprep.dalu 31
var minrank.dalu 10
var maxrank.dalu 600
var maxprep.dema 66
var minrank.dema 250
var maxrank.dema 1000
var maxprep.mis 66
var minrank.mis 80
var maxrank.mis 800
var maxprep.alb 25
var minrank.alb 250
var maxrank.alb 1000
var maxprep.gj 25
var minrank.gj 10
var maxrank.gj 600
var maxprep.repr 100
var minrank.repr 10
var maxrank.repr 600
var maxprep.name 100
var minrank.name 250
var maxrank.name 1000
var maxprep.ecry 100
var minrank.ecry 0
var maxrank.ecry 400
var maxprep.fae 15
var minrank.fae 0
var maxrank.fae 400
var maxprep.wotm 100
var minrank.wotm 10
var maxrank.wotm 600
var maxprep.word 600
var minrank.word 10
var maxrank.word 600
var maxprep.botf 25
var minrank.botf 80
var maxrank.botf 800
var maxprep.drum 100
var minrank.drum 80
var maxrank.drum 800
var maxprep.rage 100
var minrank.rage 80
var maxrank.rage 800
var maxprep.echo 700
var minrank.echo 80
var maxrank.echo 800
var maxprep.will 700
var minrank.will 80
var maxrank.will 800
var maxprep.harm 100
var minrank.harm 250
var maxrank.harm 1000
var maxprep.soul 800
var minrank.soul 250
var maxrank.soul 1000
var maxprep.aot 100
var minrank.aot 0
var maxrank.aot 400
var maxprep.care 15
var minrank.care 0
var maxrank.care 400
var maxprep.hodi 25
var minrank.hodi 10
var maxrank.hodi 600
var maxprep.eye 20
var minrank.eye 80
var maxrank.eye 800
var maxprep.resonance 100
var minrank.resonance 80
var maxrank.resonance 800
var maxprep.sanctuary 25
var minrank.sanctuary 250
var maxrank.sanctuary 1000
var maxprep.nexus 100
var minrank.nexus 250
var maxrank.nexus 1000

echo
echo Now setting the Bard mana variables based on your ranks.
echo
gosub Targeted bos
gosub Targeted aban
gosub Targeted pyre
gosub Targeted btn
gosub Debilitation aewo
gosub Debilitation dmrs
gosub Debilitation dalu
gosub Debilitation dema
gosub Debilitation-Augmentation mis
gosub Debilitation-Utility alb
gosub Warding gj
gosub Warding repr
gosub Warding name
gosub Augmentation ecry
gosub Augmentation fae
gosub Augmentation wotm
gosub Augmentation word
gosub Augmentation botf
gosub Augmentation drum
gosub Augmentation rage
gosub Augmentation echo
gosub Augmentation will
gosub Augmentation harm
gosub Augmentation soul
gosub Utility aot
gosub Utility care
gosub Utility hodi
gosub Utility eye
gosub Utility resonance
gosub Utility sanctuary
gosub Utility nexus
goto Exit

MoonMage:
echo
echo Setting all Moon Mage mana variables to the minimum by default...
echo
put #var min.tkt 1
put #var quar.tkt 1
put #var half.tkt 1
put #var max.tkt 1
put #var min.do 2
put #var quar.do 2
put #var half.do 2
put #var max.do 2
put #var min.pd 2
put #var quar.pd 2
put #var half.pd 2
put #var max.pd 2
put #var min.burn 7
put #var quar.burn 7
put #var half.burn 7
put #var max.burn 7
put #var min.tks 15
put #var quar.tks 15
put #var half.tks 15
put #var max.tks 15
put #var min.sls 6
put #var quar.sls 6
put #var half.sls 6
put #var max.sls 6
put #var min.calm 1
put #var quar.calm 1
put #var half.calm 1
put #var max.calm 1
put #var min.dazzle 1
put #var quar.dazzle 1
put #var half.dazzle 1
put #var max.dazzle 1
put #var min.sleep 1
put #var quar.sleep 1
put #var half.sleep 1
put #var max.sleep 1
put #var min.set 3
put #var quar.set 3
put #var half.set 3
put #var max.set 3
put #var min.sod 5
put #var quar.sod 5
put #var half.sod 5
put #var max.sod 5
put #var min.mb 20
put #var quar.mb 20
put #var half.mb 20
put #var max.mb 20
put #var min.ms 20
put #var quar.ms 20
put #var half.ms 20
put #var max.ms 20
put #var min.rend 5
put #var quar.rend 5
put #var half.rend 5
put #var max.rend 5
put #var min.tf 5
put #var quar.tf 5
put #var half.tf 5
put #var max.tf 5
put #var min.wd 6
put #var quar.wd 6
put #var half.wd 6
put #var max.wd 6
put #var min.psy 5
put #var quar.psy 5
put #var half.psy 5
put #var max.psy 5
put #var min.col 15
put #var quar.col 15
put #var half.col 15
put #var max.col 15
put #var min.shear 30
put #var quar.shear 30
put #var half.shear 30
put #var max.shear 30
put #var min.cv 1
put #var quar.cv 1
put #var half.cv 1
put #var max.cv 1
put #var min.shadows 1
put #var quar.shadows 1
put #var half.shadows 1
put #var max.shadows 1
put #var min.art 5
put #var quar.art 5
put #var half.art 5
put #var max.art 5
put #var min.aus 5
put #var quar.aus 5
put #var half.aus 5
put #var max.aus 5
put #var min.ts 5
put #var quar.ts 5
put #var half.ts 5
put #var max.ts 5
put #var min.mt 15
put #var quar.mt 15
put #var half.mt 15
put #var max.mt 15
put #var min.tv 15
put #var quar.tv 15
put #var half.tv 15
put #var max.tv 15
put #var min.sco 30
put #var quar.sco 30
put #var half.sco 30
put #var max.sco 30
put #var min.iots 300
put #var quar.iots 300
put #var half.iots 300
put #var max.iots 300
put #var min.seer 15
put #var quar.seer 15
put #var half.seer 15
put #var max.seer 15
put #var min.fm 1
put #var quar.fm 1
put #var half.fm 1
put #var max.fm 1
put #var min.pg 5
put #var quar.pg 5
put #var half.pg 5
put #var max.pg 5
put #var min.rf 5
put #var quar.rf 5
put #var half.rf 5
put #var max.rf 5
put #var min.teleport 5
put #var quar.teleport 5
put #var half.teleport 5
put #var max.teleport 5
put #var min.dc 50
put #var quar.dc 50
put #var half.dc 50
put #var max.dc 50
put #var min.mg 5
put #var quar.mg 5
put #var half.mg 5
put #var max.mg 5
put #var min.sov 5
put #var quar.sov 5
put #var half.sov 5
put #var max.sov 5
put #var min.contingency 15
put #var quar.contingency 15
put #var half.contingency 15
put #var max.contingency 15
put #var min.dg 15
put #var quar.dg 15
put #var half.dg 15
put #var max.dg 15
put #var min.locate 15
put #var quar.locate 15
put #var half.locate 15
put #var max.locate 15
put #var min.moonblade 15
put #var quar.moonblade 15
put #var half.moonblade 15
put #var max.moonblade 15
put #var min.shadowling 15
put #var quar.shadowling 15
put #var half.shadowling 15
put #var max.shadowling 15
put #var min.sm 15
put #var quar.sm 15
put #var half.sm 15
put #var max.sm 15
put #var min.th 15
put #var quar.th 15
put #var half.th 15
put #var max.th 15
put #var min.unleash 15
put #var quar.unleash 15
put #var half.unleash 15
put #var max.unleash 15
put #var min.bc 150
put #var quar.bc 150
put #var half.bc 150
put #var max.bc 150
put #var min.shm 30
put #var quar.shm 30
put #var half.shm 30
put #var max.shm 30
put #var min.ss 30
put #var quar.ss 30
put #var half.ss 30
put #var max.ss 30
put #var min.rtr 300
put #var quar.rtr 300
put #var half.rtr 300
put #var max.rtr 300
put #var min.rs 40
put #var quar.rs 40
put #var half.rs 40
put #var max.rs 40
put #var save

var maxprep.tkt 50
var minrank.tkt 0
var maxrank.tkt 400
var maxprep.do 50
var minrank.do 10
var maxrank.do 600
var maxprep.pd 50
var minrank.pd 10
var maxrank.pd 600
var maxprep.burn 50
var minrank.burn 80
var maxrank.burn 800
var maxprep.tks 100
var minrank.tks 80
var maxrank.tks 800
var maxprep.sls 33
var minrank.sls 250
var maxrank.sls 1000
var maxprep.calm 33
var minrank.calm 0
var maxrank.calm 400
var maxprep.dazzle 33
var minrank.dazzle 10
var maxrank.dazzle 600
var maxprep.sleep 33
var minrank.sleep 10
var maxrank.sleep 600
var maxprep.set 66
var minrank.set 10
var maxrank.set 600
var maxprep.sod 33
var minrank.sod 80
var maxrank.sod 800
var maxprep.mb 66
var minrank.mb 250
var maxrank.mb 1000
var maxprep.ms 66
var minrank.ms 250
var maxrank.ms 1000
var maxprep.rend 100
var minrank.rend 10
var maxrank.rend 600
var maxprep.tf 100
var minrank.tf 10
var maxrank.tf 600
var maxprep.wd 100
var minrank.wd 0
var maxrank.wd 600
var maxprep.psy 100
var minrank.psy 10
var maxrank.psy 600
var maxprep.col 100
var minrank.col 80
var maxrank.col 800
var maxprep.shear 100
var minrank.shear 250
var maxrank.shear 1000
var maxprep.cv 100
var minrank.cv 0
var maxrank.cv 400
var maxprep.shadows 100
var minrank.shadows 0
var maxrank.shadows 400
var maxprep.art 100
var minrank.art 10
var maxrank.art 600
var maxprep.aus 100
var minrank.aus 10
var maxrank.aus 600
var maxprep.ts 100
var minrank.ts 10
var maxrank.ts 600
var maxprep.mt 100
var minrank.mt 80
var maxrank.mt 800
var maxprep.tv 100
var minrank.tv 80
var maxrank.tv 800
var maxprep.sco 100
var minrank.sco 250
var maxrank.sco 1000
var maxprep.iots 800
var minrank.iots 250
var maxrank.iots 1000
var maxprep.seer 100
var minrank.seer 80
var maxrank.seer 800
var maxprep.fm 100
var minrank.fm 0
var maxrank.fm 400
var maxprep.pg 100
var minrank.pg 10
var maxrank.pg 600
var maxprep.rf 100
var minrank.rf 10
var maxrank.rf 600
var maxprep.teleport 100
var minrank.teleport 10
var maxrank.teleport 600
var maxprep.dc 600
var minrank.dc 10
var maxrank.dc 600
var maxprep.mg 25
var minrank.mg 80
var maxrank.mg 800
var maxprep.sov 25
var minrank.sov 80
var maxrank.sov 800
var maxprep.contingency 100
var minrank.contingency 80
var maxrank.contingency 800
var maxprep.dg 100
var minrank.dg 80
var maxrank.dg 800
var maxprep.locate 100
var minrank.locate 80
var maxrank.locate 800
var maxprep.moonblade 100
var minrank.moonblade 80
var maxrank.moonblade 800
var maxprep.shadowling 100
var minrank.shadowling 80
var maxrank.shadowling 800
var maxprep.sm 100
var minrank.sm 80
var maxrank.sm 800
var maxprep.th 100
var minrank.th 80
var maxrank.th 800
var maxprep.unleash 100
var minrank.unleash 80
var maxrank.unleash 800
var maxprep.bc 700
var minrank.bc 80
var maxrank.bc 800
var maxprep.shm 100
var minrank.shm 250
var maxrank.shm 1000
var maxprep.ss 100
var minrank.ss 250
var maxrank.ss 1000
var maxprep.rtr 800
var minrank.rtr 250
var maxrank.rtr 1000
var maxprep.rs 120
var minrank.rs 400
var maxrank.rs 1250

echo
echo Now setting the Moon Mage mana variables based on your ranks.
echo
gosub Targeted tkt
gosub Targeted do
gosub Targeted pd
gosub Targeted burn
gosub Targeted tks
gosub Targeted sls
gosub Debilitation calm
gosub Debilitation dazzle
gosub Debilitation sleep
gosub Debilitation set
gosub Debilitation sod
gosub Debilitation mb
gosub Debilitation ms
gosub Debilitation-Utility rend
gosub Debilitation-Utility tf
gosub Warding wd
gosub Warding psy
gosub Warding col
gosub Warding shear
gosub Augmentation cv
gosub Augmentation shadows
gosub Augmentation art
gosub Augmentation aus
gosub Augmentation ts
gosub Augmentation mt
gosub Augmentation tv
gosub Augmentation sco
gosub Augmentation iots
gosub Augmentation-Utility seer
gosub Utility fm
gosub Utility pg
gosub Utility rf
gosub Utility teleport
gosub Utility dc
gosub Utility mg
gosub Utility sov
gosub Utility contingency
gosub Utility dg
gosub Utility locate
gosub Utility moonblade
gosub Utility shadowling
gosub Utility sm
gosub Utility th
gosub Utility unleash
gosub Utility bc
gosub Utility shm
gosub Utility ss
gosub Utility rtr
gosub Utility rs
goto Exit

Trader:
echo
echo Setting all Trader mana variables to the minimum by default...
echo
put #var min.crd 2
put #var quar.crd 2
put #var half.crd 2
put #var max.crd 2
put #var min.ars 6
put #var quar.ars 6
put #var half.ars 6
put #var max.ars 6
put #var min.star 30
put #var quar.star 30
put #var half.star 30
put #var max.star 30
put #var min.flu 1
put #var quar.flu 1
put #var half.flu 1
put #var max.flu 1
put #var min.ava 10
put #var quar.ava 10
put #var half.ava 10
put #var max.ava 10
put #var min.trc 1
put #var quar.trc 1
put #var half.trc 1
put #var max.trc 1
put #var min.non 5
put #var quar.non 5
put #var half.non 5
put #var max.non 5
put #var min.mom 5
put #var quar.mom 5
put #var half.mom 5
put #var max.mom 5
put #var min.eli 400
put #var quar.eli 400
put #var half.eli 400
put #var max.eli 400
put #var min.blur 5
put #var quar.blur 5
put #var half.blur 5
put #var max.blur 5
put #var min.fin 5
put #var quar.fin 5
put #var half.fin 5
put #var max.fin 5
put #var min.lgv 5
put #var quar.lgv 5
put #var half.lgv 5
put #var max.lgv 5
put #var min.meg 5
put #var quar.meg 5
put #var half.meg 5
put #var max.meg 5
put #var min.turi 5
put #var quar.turi 5
put #var half.turi 5
put #var max.turi 5
put #var min.phk 15
put #var quar.phk 15
put #var half.phk 15
put #var max.phk 15
put #var min.nou 1
put #var quar.nou 1
put #var half.nou 1
put #var max.nou 1
put #var min.rega 15
put #var quar.rega 15
put #var half.rega 15
put #var max.rega 15
put #var min.stc 30
put #var quar.stc 30
put #var half.stc 30
put #var max.stc 30
put #var save

var maxprep.crd 50
var minrank.crd 10
var maxrank.crd 600
var maxprep.ars 31
var minrank.ars 80
var maxrank.ars 800
var maxprep.star 200
var minrank.star 250
var maxrank.star 1000
var maxprep.flu 66
var minrank.flu 0
var maxrank.flu 400
var maxprep.ava 66
var minrank.ava 80
var maxrank.ava 800
var maxprep.trc 100
var minrank.trc 0
var maxrank.trc 400
var maxprep.non 100
var minrank.non 10
var maxrank.non 600
var maxprep.mom 25
var minrank.mom 250
var maxrank.mom 1000
var maxprep.eli 900
var minrank.eli 400
var maxrank.eli 1250
var maxprep.blur 100
var minrank.blur 10
var maxrank.blur 600
var maxprep.fin 100
var minrank.fin 10
var maxrank.fin 600
var maxprep.lgv 100
var minrank.lgv 10
var maxrank.lgv 600
var maxprep.meg 100
var minrank.meg 10
var maxrank.meg 600
var maxprep.turi 100
var minrank.turi 10
var maxrank.turi 600
var maxprep.phk 100
var minrank.phk 80
var maxrank.phk 800
var maxprep.nou 100
var minrank.nou 0
var maxrank.nou 400
var maxprep.rega 100
var minrank.rega 80
var maxrank.rega 800
var maxprep.stc 100
var minrank.stc 250
var maxrank.stc 1000

echo
echo Now setting the Trader mana variables based on your ranks.
echo
gosub Targeted crd
gosub Targeted ars
gosub Targeted star
gosub Debilitation flu
gosub Debilitation-Augmentation ava
gosub Warding trc
gosub Warding non
gosub Warding mom
gosub Warding eli
gosub Augmentation blur
gosub Augmentation fin
gosub Augmentation lgv
gosub Augmentation meg
gosub Augmentation turi
gosub Augmentation phk
gosub Utility nou
gosub Utility rega
gosub Utility stc
goto Exit

Necromancer:
echo
echo Setting all Necromancer mana variables to the minimum by default...
echo
put #var min.acs 1
put #var quar.acs 1
put #var half.acs 1
put #var max.acs 1
put #var min.sv 10
put #var quar.sv 10
put #var half.sv 10
put #var max.sv 10
put #var min.blb 15
put #var quar.blb 15
put #var half.blb 15
put #var max.blb 15
put #var min.usol 7
put #var quar.usol 7
put #var half.usol 7
put #var max.usol 7
put #var min.vivisection 20
put #var quar.vivisection 20
put #var half.vivisection 20
put #var max.vivisection 20
put #var min.hp 1
put #var quar.hp 1
put #var half.hp 1
put #var max.hp 1
put #var min.pv 1
put #var quar.pv 1
put #var half.pv 1
put #var max.pv 1
put #var min.vod 5
put #var quar.vod 5
put #var half.vod 5
put #var max.vod 5
put #var min.vs 10
put #var quar.vs 10
put #var half.vs 10
put #var max.vs 10
put #var min.ch 15
put #var quar.ch 15
put #var half.ch 15
put #var max.ch 15
put #var min.worm 30
put #var quar.worm 30
put #var half.worm 30
put #var max.worm 30
put #var min.obfuscation 1
put #var quar.obfuscation 1
put #var half.obfuscation 1
put #var max.obfuscation 1
put #var min.bue 5
put #var quar.bue 5
put #var half.bue 5
put #var max.bue 5
put #var min.ivm 5
put #var quar.ivm 5
put #var half.ivm 5
put #var max.ivm 5
put #var min.ks 5
put #var quar.ks 5
put #var half.ks 5
put #var max.ks 5
put #var min.php 5
put #var quar.php 5
put #var half.php 5
put #var max.php 5
put #var min.rei 15
put #var quar.rei 15
put #var half.rei 15
put #var max.rei 15
put #var min.rpu 15
put #var quar.rpu 15
put #var half.rpu 15
put #var max.rpu 15
put #var min.eotb 5
put #var quar.eotb 5
put #var half.eotb 5
put #var max.eotb 5
put #var min.qe 5
put #var quar.qe 5
put #var half.qe 5
put #var max.qe 5
put #var min.roc 5
put #var quar.roc 5
put #var half.roc 5
put #var max.roc 5
put #var min.rog 5
put #var quar.rog 5
put #var half.rog 5
put #var max.rog 5
put #var min.cfb 15
put #var quar.cfb 15
put #var half.cfb 15
put #var max.cfb 15
put #var min.cf 15
put #var quar.cf 15
put #var half.cf 15
put #var max.cf 15
put #var min.nr 15
put #var quar.nr 15
put #var half.nr 15
put #var max.nr 15
put #var min.devour 30
put #var quar.devour 30
put #var half.devour 30
put #var max.devour 30
put #var save

var maxprep.acs 50
var minrank.acs 0
var maxrank.acs 400
var maxprep.sv 66
var minrank.sv 80
var maxrank.sv 800
var maxprep.blb 66
var minrank.blb 80
var maxrank.blb 800
var maxprep.usol 37
var minrank.usol 250
var maxrank.usol 1000
var maxprep.vivisection 66
var minrank.vivisection 250
var maxrank.vivisection 1000
var maxprep.hp 33
var minrank.hp 0
var maxrank.hp 400
var maxprep.pv 33
var minrank.pv 10
var maxrank.pv 600
var maxprep.vod 33
var minrank.vod 80
var maxrank.vod 800
var maxprep.vs 66
var minrank.vs 80
var maxrank.vs 800
var maxprep.ch 100
var minrank.ch 80
var maxrank.ch 800
var maxprep.worm 100
var minrank.worm 250
var maxrank.worm 1000
var maxprep.obfuscation 100
var minrank.obfuscation 0
var maxrank.obfuscation 400
var maxprep.bue 100
var minrank.bue 10
var maxrank.bue 600
var maxprep.ivm 100
var minrank.ivm 10
var maxrank.ivm 600
var maxprep.ks 100
var minrank.ks 10
var maxrank.ks 600
var maxprep.php 100
var minrank.php 10
var maxrank.php 600
var maxprep.rei 100
var minrank.rei 80
var maxrank.rei 800
var maxprep.rpu 100
var minrank.rpu 80
var maxrank.rpu 800
var maxprep.eotb 100
var minrank.eotb 10
var maxrank.eotb 600
var maxprep.qe 100
var minrank.qe 10
var maxrank.qe 600
var maxprep.roc 25
var minrank.roc 80
var maxrank.roc 800
var maxprep.rog 25
var minrank.rog 80
var maxrank.rog 800
var maxprep.cfb 100
var minrank.cfb 80
var maxrank.cfb 800
var maxprep.cf 100
var minrank.cf 80
var maxrank.cf 800
var maxprep.nr 100
var minrank.nr 80
var maxrank.nr 800
var maxprep.devour 100
var minrank.devour 250
var maxrank.devour 1000

echo
echo Now setting the Necromancer mana variables based on your ranks.
echo
gosub Targeted acs
gosub Targeted sv
gosub Targeted blb
gosub Targeted usol
gosub Targeted vivisection
gosub Debilitation hp
gosub Debilitation pv
gosub Debilitation vod
gosub Debilitation vs
gosub Warding ch
gosub Warding worm
gosub Augmentation obfuscation
gosub Augmentation bue
gosub Augmentation ivm
gosub Augmentation ks
gosub Augmentation php
gosub Augmentation rei
gosub Augmentation rpu
gosub Utility eotb
gosub Utility qe
gosub Utility roc
gosub Utility rog
gosub Utility cfb
gosub Utility cf
gosub Utility nr
gosub Utility devour
goto Exit

Targeted:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($TMSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (targeted magic)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $TMSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)echo
return

Debilitation:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($DebSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (debilitation)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $DebSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Debilitation-Warding:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($DebWardSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid debilitation/warding)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $DebWardSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Debilitation-Augmentation:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($DebAugSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid debilitation/augmentation)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $DebAugSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Debilitation-Utility:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($DebUtiSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid debilitation/utility)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $DebUtiSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Warding:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($WardSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (warding)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $WardSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Warding-Augmentation:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($WardAugSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid warding/augmentation)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $WardAugSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Warding-Utility:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($WardUtiSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid warding/utility)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $WardUtiSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Augmentation:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($AugSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (augmentation)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $AugSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Augmentation-Utility:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($AugUtiSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (hybrid augmentation/utility)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $AugUtiSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Utility:
var spell $0
evalmath MyCap1 floor(((%maxprep.%spell-$min.%spell)*(($UtiSkill1-%minrank.%spell)/%maxrank.%spell))+$min.%spell,0)
if %MyCap1 > %maxprep.%spell then var MyCap1 %maxprep.%spell
if %MyCap1 < $min.%spell then var MyCap1 $min.%spell
put #var max.%spell %MyCap1
evalmath MyHalf1 floor(($max.%spell+$min.%spell)\2,0)
put #var half.%spell %MyHalf1
evalmath MyQuar1 floor(($half.%spell+$min.%spell)\2,0)
put #var quar.%spell %MyQuar1
#var save
echo %spell (utility)
echo mana range: $min.%spell - %maxprep.%spell mana
echo skill range: %minrank.%spell - %maxrank.%spell ranks
echo your effective ranks: $UtiSkill1
echo your max: $max.%spell mana
echo your half: $half.%spell mana (average of $max.%spell and $min.%spell)
echo your quarter: $quar.%spell mana (average of $half.%spell and $min.%spell)
echo
return

Exit: