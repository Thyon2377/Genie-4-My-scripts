########################################################
##STAT QUALITY WEIGHTS
##Edit this section if you want to change the weights that the quality formulas assign to each stat.
##sumpd: physical damage (puncture + slice + impact)
##sumed: elemental damage (fire + cold + electric)
##foi: force of impact (determines likelihood of stunning, unbalancing, and knocking back)
##balance: weapon balance (determines how well a weapon takes advantage of your agility when attacking and parrying)
##power: weapon power/suitability (determines how well a weapon takes advantage of your strength when attacking)
##smin: shield's minimum or "basic" defense (the minimum protection a shield offers, regardless of skill)
##smax: shield's maximum or "full" defense (the maximum protection a shield can offer if you have sufficient shield skill)
##shdhindrance: shield's maneuvering and stealth hindrance (All shields impose equal maneuvering and stealth hindrance, which may be reduced with skill.)
##sumpro: armor's total protection (reduces incoming damage by a flat amount -- best for light hits and requires more armor skill)
##sumabs: armor's total absorption (reduces incoming damage by a static percentage -- best for heavy hits and requires less armor skill)
##sumpdef: armor's total physical defense (protection + absorption)
##sumedef: armor's total elemental defense (protection + absorption)
##mhindrance: armor's maneuvering hindrance (determines penalties to defenses, which may be reduced with skill.)
##shindrance: armor's stealth hindrance (determines penalties to stealth, which may be reduced with skill.)
##construction: item's construction (determines how easily damaged an item is and therefore how often it will need to be repaired)
##weight: the item's weight in stones
##Weapon Quality Formula: %sumpd_weight*%sumpd + %sumed_weight*%sumed + %foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction + %rangefactor
##Shield Quality Formula: %smin_weight*%smin + %smax_weight*%smax + %construction_weight*%construction - %shdhindrance_weight*%shdhindrance - %sizefactor
##Armor Quality Formula: %sumpro_weight*%sumpro + %sumabs_weight*%sumabs + %sumpdef_weight*%sumpdef + %sumedef_weight*%sumedef + %construction_weight*%construction - %mhindrance_weight*%mhindrance - %shindrance_weight*%shindrance
var sumpd_weight 2
var sumed_weight 2
var foi_weight 1
var balance_weight 1.5
var power_weight 1.25
var smin_weight 1.5
var smax_weight 2
var shdhindrance_weight 1
var sumpro_weight 2
var sumabs_weight 2.5
var sumpdef_weight 3
var sumedef_weight 1
var mhindrance_weight 1.5
var shindrance_weight .5
var construction_weight .25
var weight_weight .5
##DEFAULT VALUES
##var sumpd_weight 2
##var sumed_weight 2
##var foi_weight 1
##var balance_weight 1.5
##var power_weight 1.25
##var smin_weight 1.5
##var smax_weight 2
##var shdhindrance_weight 1
##var sumpro_weight 2
##var sumabs_weight 2.5
##var sumpdef_weight 3
##var sumedef_weight 1
##var mhindrance_weight 1.5
##var shindrance_weight .5
##var construction_weight .25
##var weight_weight .5
########################################################
put #class joust off
put #class racial off
var short $lefthand
var noun $lefthandnoun
var short $righthand
var noun $righthandnoun
var appcostl 0
var appcostd 0

gosub VarBlank

Tap:
action setvariable tap $1 when ^tap\s+(.+)$
echo
echo Enter tap [text]:

waitforre ^I could not find what you were referring to|^You need to specify right or left hand

echo
echo ITEM TYPE:
echo
echo 1:	Weapon: Melee/Thrown
echo
echo 2:	Weapon: Ranged
echo
echo 3:	Weapon: Ammunition
echo
echo 4:	Weapon: Brawling
echo
echo 5:	Weapon: Parry Stick
echo
echo 6:	Shield
echo
echo 7:	Armor
echo
echo 8:	Container
echo
echo Enter Item Type Number:

matchre WeaponApp1 ^1
matchre WeaponApp2 ^2
matchre WeaponApp3 ^3
matchre WeaponApp4 ^4
matchre WeaponApp5 ^5
matchre ShieldApp ^6
matchre ArmorApp ^7
matchre ContainerApp ^8
matchwait

WeaponApp1:
var formtype weapon1
var logtype WeaponMelee
gosub Weapon1Type
gosub Weapon1TypeThrown
gosub Range
gosub PunctureDamage
gosub SliceDamage
gosub ImpactDamage
var fire 0
var cold 0
var electric 0
gosub FOI
gosub Balance
gosub Power
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

WeaponApp2:
var formtype weapon2
var logtype WeaponRanged
gosub Weapon2Type
gosub FOI
gosub Balance
gosub Power
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

WeaponApp3:
var formtype weapon3
var logtype WeaponRanged
gosub Weapon3Type
gosub PunctureDamage
gosub SliceDamage
gosub ImpactDamage
var fire 0
var cold 0
var electric 0
gosub FOI
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

WeaponApp4:
var formtype weapon4
var logtype WeaponMelee
var wtype 15-brawl
gosub Weapon4Type
gosub PunctureDamage
gosub SliceDamage
gosub ImpactDamage
var fire 0
var cold 0
var electric 0
gosub FOI
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

WeaponApp5:
var formtype weapon5
var logtype WeaponMelee
var wtype 15-brawl
var wearloc 1-parry
gosub Balance
gosub Power
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

ShieldApp:
var formtype shield
var logtype Shield
gosub ShieldSize
gosub MinDefense
gosub MaxDefense
gosub ShieldHindrance
gosub ImpactDamage
gosub Balance
gosub Power
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

ArmorApp:
var formtype armor
var logtype Armor
gosub ArmorType
gosub ArmorCoverage
gosub ArmorMHindrance
gosub ArmorSHindrance
gosub PunctureProtection
gosub SliceProtection
gosub ImpactProtection
gosub FireProtection
gosub ColdProtection
gosub ElectricProtection
gosub PunctureAbsorption
gosub SliceAbsorption
gosub ImpactAbsorption
gosub FireAbsorption
gosub ColdAbsorption
gosub ElectricAbsorption
gosub Construction
gosub Weight
gosub Appraisal
goto %formtype

ContainerApp:
var formtype container
var logtype Container

VarBlank:
var sourcetype 10-unknown (check)
var wtype1 ERROR
var wtype2 ERROR
var wtrains ERROR
var wtrains2 ERROR
var volume ERROR
var composition ERROR
var brawltype ERROR
var range ERROR
var rangefactor ERROR
var puncture ERROR
var slice ERROR
var impact ERROR
var fire ERROR
var cold ERROR
var electric ERROR
var foi ERROR
var balance ERROR
var power ERROR
var atype ERROR
var covershead no
var coverseyes no
var coversneck no
var coverschest no
var coversabdomen no
var coversback no
var coversarms no
var covershands no
var coverslegs no
var area ERROR
var stype ERROR
var sizefactor ERROR
var smin ERROR
var smax ERROR
var shdhindrance ERROR
var mhindrance ERROR
var shindrance ERROR
var slicep ERROR
var slicea ERROR
var puncturep ERROR
var puncturea ERROR
var impactp ERROR
var impacta ERROR
var firep ERROR
var firea ERROR
var coldp ERROR
var colda ERROR
var electricp ERROR
var electrica ERROR
var construction ERROR
var sumd ERROR
var sumpd ERROR
var sumed ERROR
var meand ERROR
var meanpd ERROR
var meaned ERROR
var sumshield ERROR
var sumpro ERROR
var sumabs ERROR
var sumpdef ERROR
var sumedef ERROR
var sumdef ERROR
var sumhin ERROR
var meanpro ERROR
var meanabs ERROR
var meanpdef ERROR
var meanedef ERROR
var meanhin ERROR
var qpointsw ERROR
var qpointss ERROR
var qpointsa ERROR
var qpointsww ERROR
var qpointssw ERROR
var qpointsaw ERROR
var ilsize ERROR
var iwsize ERROR
var ihsize ERROR
var wearloc -
return

Weapon1Type:
echo
echo MELEE/THROWN WEAPON TYPE:
echo
echo 1. pike
echo 2. halberd
echo 3. two-handed edged (2HE)
echo 4. heavy edged (HE)
echo 5. medium edged (ME)
echo 6. light edged (LtE)
echo 7. two-handed blunt (2HB)
echo 8. heavy blunt (HB)
echo 9. medium blunt (MB)
echo 10. light blunt (LtBl)
echo 11. quarter staff (QS)
echo 12. short staff (SS)
echo
echo Enter Weapon Type Number:

matchre WeaponPike ^1$
matchre WeaponHalberd ^2$
matchre Weapon2HE ^3$
matchre WeaponHE ^4$
matchre WeaponME ^5$
matchre WeaponLtE ^6$
matchre Weapon2HB ^7$
matchre WeaponHB ^8$
matchre WeaponMB ^9$
matchre WeaponLtBl ^10$
matchre WeaponQS ^11$
matchre WeaponSS ^12$
matchwait

WeaponPike:
var wtype1 11-pike
var wtrains 08-pole
return

WeaponHalberd:
var wtype1 12-halberd
var wtrains 08-pole
return

Weapon2HE:
var wtype1 04-2HE
var wtrains 03-2HE
return

WeaponHE:
var wtype1 03-HE
var wtrains 02-LrE
return

WeaponME:
var wtype1 02-ME
var wtrains 01-SE
return

WeaponLtE:
var wtype1 01-LtE
var wtrains 01-SE
return

Weapon2HB:
var wtype1 08-2HB
var wtrains 06-2HB
return

WeaponHB:
var wtype1 07-HB
var wtrains 05-LrBl
return

WeaponMB:
var wtype1 06-MB
var wtrains 04-SBl
return

WeaponLtBl:
var wtype1 05-LtBl
var wtrains 04-SBl
return

WeaponQS:
var wtype1 10-QS
var wtrains 07-staff
return

WeaponSS:
var wtype1 09-SS
var wtrains 07-staff
return

Weapon1TypeThrown:
echo
echo Does the weapon appraise as a thrown weapon?
echo
echo 1. heavy thrown (HT)
echo 2. light thrown (LT)
echo 3. no
echo
echo Enter Weapon Type Number:

matchre WeaponHT ^1$
matchre WeaponLT ^2$
matchre return ^3$
matchwait

WeaponHT:
var wtype2 14-HT
var wtrains2 10-HT
return

WeaponLT:
var wtype2 13-LT
var wtrains2 09-LT
return

Weapon2Type:
echo
echo RANGED WEAPON TYPE:
echo
echo 1. heavy crossbow (HX)
echo 2. light crossbow (LX)
echo 3. composite bow
echo 4. long bow
echo 5. short bow
echo 6. staff sling
echo 7. sling
echo
echo Enter Weapon Type Number:

matchre WeaponHX ^1$
matchre WeaponLX ^2$
matchre WeaponCompBow ^3$
matchre WeaponLongBow ^4$
matchre WeaponShortBow ^5$
matchre WeaponStaffSling ^6$
matchre WeaponSling ^7$
matchwait

WeaponHX:
var wtype1 24-HX when
var wtrains 16-Xbow
return

WeaponLX:
var wtype1 23-LX
var wtrains 16-Xbow
return

WeaponCompBow:
var wtype1 21-comp bow
var wtrains 14-bow
return

WeaponLongBow:
var wtype1 20-long bow
var wtrains 14-bow
return

WeaponShortBow:
var wtype1 19-short bow
var wtrains 14-bow
return

WeaponStaffSling:
var wtype1 17-staff sling
var wtrains 12-sling
return

WeaponSling:
var wtype1 16-sling
var wtrains 12-sling
return

Weapon3Type:
echo
echo AMMO TYPE:
echo
echo 1. crossbow (bolts, quadrellos, quarrels, pulzones)
echo 2. bow (arrows)
echo 3. sling (bullets, clumps, lumps, rocks, shards)
echo
echo Enter Ammo Type Number:

matchre AmmoXbow ^1$
matchre AmmoBow ^2$
matchre AmmoSling ^3$
matchwait

AmmoXbow:
var ammoskill 11-crossbow
return

AmmoBow:
var ammoskill 15-bow
return

AmmoSling:
var ammoskill 13-sling
return

Weapon4Type:
echo
echo BRAWLING WEAPON TYPE:
echo
echo 1. elbows
echo 2. hands
echo 3. knees
echo 4. feet
echo
echo Enter Brawling Type Number:

matchre BrawlElbows ^1$
matchre BrawlHands ^2$
matchre BrawlKnees ^3$
matchre BrawlFeet ^4$
matchwait

BrawlElbows:
var brawltype 2elbow
return

BrawlHands:
var brawltype 3hand
return

BrawlKnees:
var brawltype 4knee
return

BrawlFeet:
var brawltype 5foot
return

Range:
echo
echo MELEE WEAPON RANGE:
echo
echo 1. melee
echo 2. pole
echo
echo Enter Range Number:

matchre MeleeRange ^1$
matchre PoleRange ^2$
matchwait

MeleeRange:
var range melee
var rangefactor 0
return

PoleRange:
var range pole
var rangefactor 1
return

PunctureDamage:
echo
echo PUNCTURE DAMAGE:
echo
echo 0. no				14. very severe
echo 1. dismal			15. extreme
echo 2. poor				16. very extreme
echo 3. low				17. mighty
echo 4. somewhat fair		18. very mighty
echo 5. fair				19. bone-crushing
echo 6. somewhat moderate	20. very bone-crushing
echo 7. moderate			21. devastating
echo 8. somewhat heavy		22. very devastating
echo 9. heavy			23. overwhelming
echo 10. very heavy		24. annihilating
echo 11. great			25. obliterating
echo 12. very great			26. demolishing
echo 13. severe			27. catastrophic
echo
echo Enter Damage Number:

matchre PunctureDamage0 ^0$
matchre PunctureDamage1 ^1$
matchre PunctureDamage2 ^2$
matchre PunctureDamage3 ^3$
matchre PunctureDamage4 ^4$
matchre PunctureDamage5 ^5$
matchre PunctureDamage6 ^6$
matchre PunctureDamage7 ^7$
matchre PunctureDamage8 ^8$
matchre PunctureDamage9 ^9$
matchre PunctureDamage10 ^10$
matchre PunctureDamage11 ^11$
matchre PunctureDamage12 ^12$
matchre PunctureDamage13 ^13$
matchre PunctureDamage14 ^14$
matchre PunctureDamage15 ^15$
matchre PunctureDamage16 ^16$
matchre PunctureDamage17 ^17$
matchre PunctureDamage18 ^18$
matchre PunctureDamage19 ^19$
matchre PunctureDamage20 ^20$
matchre PunctureDamage21 ^21$
matchre PunctureDamage22 ^22$
matchre PunctureDamage23 ^23$
matchre PunctureDamage24 ^24$
matchre PunctureDamage25 ^25$
matchre PunctureDamage26 ^26$
matchre PunctureDamage27 ^27$
matchwait

PunctureDamage0:
var puncture 0
return

PunctureDamage1:
var puncture 1
return

PunctureDamage2:
var puncture 2
return

PunctureDamage3:
var puncture 3
return

PunctureDamage4:
var puncture 4
return

PunctureDamage5:
var puncture 5
return

PunctureDamage6:
var puncture 6
return

PunctureDamage7:
var puncture 7
return

PunctureDamage8:
var puncture 8
return

PunctureDamage9:
var puncture 9
return

PunctureDamage10:
var puncture 10
return

PunctureDamage11:
var puncture 11
return

PunctureDamage12:
var puncture 12
return

PunctureDamage13:
var puncture 13
return

PunctureDamage14:
var puncture 14
return

PunctureDamage15:
var puncture 15
return

PunctureDamage16:
var puncture 16
return

PunctureDamage17:
var puncture 17
return

PunctureDamage18:
var puncture 18
return

PunctureDamage19:
var puncture 19
return

PunctureDamage20:
var puncture 20
return

PunctureDamage21:
var puncture 21
return

PunctureDamage22:
var puncture 22
return

PunctureDamage23:
var puncture 23
return

PunctureDamage24:
var puncture 24
return

PunctureDamage25:
var puncture 25
return

PunctureDamage26:
var puncture 26
return

PunctureDamage27:
var puncture 27
return

SliceDamage:
echo
echo SLICE DAMAGE:
echo
echo 0. no				14. very severe
echo 1. dismal			15. extreme
echo 2. poor				16. very extreme
echo 3. low				17. mighty
echo 4. somewhat fair		18. very mighty
echo 5. fair				19. bone-crushing
echo 6. somewhat moderate	20. very bone-crushing
echo 7. moderate			21. devastating
echo 8. somewhat heavy		22. very devastating
echo 9. heavy			23. overwhelming
echo 10. very heavy		24. annihilating
echo 11. great			25. obliterating
echo 12. very great			26. demolishing
echo 13. severe			27. catastrophic
echo
echo Enter Damage Number:

matchre SliceDamage0 ^0$
matchre SliceDamage1 ^1$
matchre SliceDamage2 ^2$
matchre SliceDamage3 ^3$
matchre SliceDamage4 ^4$
matchre SliceDamage5 ^5$
matchre SliceDamage6 ^6$
matchre SliceDamage7 ^7$
matchre SliceDamage8 ^8$
matchre SliceDamage9 ^9$
matchre SliceDamage10 ^10$
matchre SliceDamage11 ^11$
matchre SliceDamage12 ^12$
matchre SliceDamage13 ^13$
matchre SliceDamage14 ^14$
matchre SliceDamage15 ^15$
matchre SliceDamage16 ^16$
matchre SliceDamage17 ^17$
matchre SliceDamage18 ^18$
matchre SliceDamage19 ^19$
matchre SliceDamage20 ^20$
matchre SliceDamage21 ^21$
matchre SliceDamage22 ^22$
matchre SliceDamage23 ^23$
matchre SliceDamage24 ^24$
matchre SliceDamage25 ^25$
matchre SliceDamage26 ^26$
matchre SliceDamage27 ^27$
matchwait

SliceDamage0:
var slice 0
return

SliceDamage1:
var slice 1
return

SliceDamage2:
var slice 2
return

SliceDamage3:
var slice 3
return

SliceDamage4:
var slice 4
return

SliceDamage5:
var slice 5
return

SliceDamage6:
var slice 6
return

SliceDamage7:
var slice 7
return

SliceDamage8:
var slice 8
return

SliceDamage9:
var slice 9
return

SliceDamage10:
var slice 10
return

SliceDamage11:
var slice 11
return

SliceDamage12:
var slice 12
return

SliceDamage13:
var slice 13
return

SliceDamage14:
var slice 14
return

SliceDamage15:
var slice 15
return

SliceDamage16:
var slice 16
return

SliceDamage17:
var slice 17
return

SliceDamage18:
var slice 18
return

SliceDamage19:
var slice 19
return

SliceDamage20:
var slice 20
return

SliceDamage21:
var slice 21
return

SliceDamage22:
var slice 22
return

SliceDamage23:
var slice 23
return

SliceDamage24:
var slice 24
return

SliceDamage25:
var slice 25
return

SliceDamage26:
var slice 26
return

SliceDamage27:
var slice 27
return

ImpactDamage:
echo
echo IMPACT DAMAGE:
echo
echo 0. no				14. very severe
echo 1. dismal			15. extreme
echo 2. poor				16. very extreme
echo 3. low				17. mighty
echo 4. somewhat fair		18. very mighty
echo 5. fair				19. bone-crushing
echo 6. somewhat moderate	20. very bone-crushing
echo 7. moderate			21. devastating
echo 8. somewhat heavy		22. very devastating
echo 9. heavy			23. overwhelming
echo 10. very heavy		24. annihilating
echo 11. great			25. obliterating
echo 12. very great			26. demolishing
echo 13. severe			27. catastrophic
echo
echo Enter Damage Number:

matchre ImpactDamage0 ^0$
matchre ImpactDamage1 ^1$
matchre ImpactDamage2 ^2$
matchre ImpactDamage3 ^3$
matchre ImpactDamage4 ^4$
matchre ImpactDamage5 ^5$
matchre ImpactDamage6 ^6$
matchre ImpactDamage7 ^7$
matchre ImpactDamage8 ^8$
matchre ImpactDamage9 ^9$
matchre ImpactDamage10 ^10$
matchre ImpactDamage11 ^11$
matchre ImpactDamage12 ^12$
matchre ImpactDamage13 ^13$
matchre ImpactDamage14 ^14$
matchre ImpactDamage15 ^15$
matchre ImpactDamage16 ^16$
matchre ImpactDamage17 ^17$
matchre ImpactDamage18 ^18$
matchre ImpactDamage19 ^19$
matchre ImpactDamage20 ^20$
matchre ImpactDamage21 ^21$
matchre ImpactDamage22 ^22$
matchre ImpactDamage23 ^23$
matchre ImpactDamage24 ^24$
matchre ImpactDamage25 ^25$
matchre ImpactDamage26 ^26$
matchre ImpactDamage27 ^27$
matchwait

ImpactDamage0:
var impact 0
return

ImpactDamage1:
var impact 1
return

ImpactDamage2:
var impact 2
return

ImpactDamage3:
var impact 3
return

ImpactDamage4:
var impact 4
return

ImpactDamage5:
var impact 5
return

ImpactDamage6:
var impact 6
return

ImpactDamage7:
var impact 7
return

ImpactDamage8:
var impact 8
return

ImpactDamage9:
var impact 9
return

ImpactDamage10:
var impact 10
return

ImpactDamage11:
var impact 11
return

ImpactDamage12:
var impact 12
return

ImpactDamage13:
var impact 13
return

ImpactDamage14:
var impact 14
return

ImpactDamage15:
var impact 15
return

ImpactDamage16:
var impact 16
return

ImpactDamage17:
var impact 17
return

ImpactDamage18:
var impact 18
return

ImpactDamage19:
var impact 19
return

ImpactDamage20:
var impact 20
return

ImpactDamage21:
var impact 21
return

ImpactDamage22:
var impact 22
return

ImpactDamage23:
var impact 23
return

ImpactDamage24:
var impact 24
return

ImpactDamage25:
var impact 25
return

ImpactDamage26:
var impact 26
return

ImpactDamage27:
var impact 27
return

FOI:
echo
echo FORCE OF IMPACT
echo
echo 0. not			9. well
echo 1. terribly		10. very well
echo 2. dismally		11. extremely well
echo 3. poorly		12. excellently
echo 4. inadequately	13. superbly
echo 5. fairly		14. incredibly
echo 6. decently		15. amazingly
echo 7. reasonably		16. unbelievably
echo 8. soundly		17. perfectly
echo
echo
echo Enter FOI Number:

matchre FOI0 ^0$
matchre FOI1 ^1$
matchre FOI2 ^2$
matchre FOI3 ^3$
matchre FOI4 ^4$
matchre FOI5 ^5$
matchre FOI6 ^6$
matchre FOI7 ^7$
matchre FOI8 ^8$
matchre FOI9 ^9$
matchre FOI10 ^10$
matchre FOI11 ^11$
matchre FOI12 ^12$
matchre FOI13 ^13$
matchre FOI14 ^14$
matchre FOI15 ^15$
matchre FOI16 ^16$
matchre FOI17 ^17$
matchwait

FOI0:
var foi 0
return

FOI1:
var foi 1
return

FOI2:
var foi 2
return

FOI3:
var foi 3
return

FOI4:
var foi 4
return

FOI5:
var foi 5
return

FOI6:
var foi 6
return

FOI7:
var foi 7
return

FOI8:
var foi 8
return

FOI9:
var foi 9
return

FOI10:
var foi 10
return

FOI11:
var foi 11
return

FOI12:
var foi 12
return

FOI13:
var foi 13
return

FOI14:
var foi 14
return

FOI15:
var foi 15
return

FOI16:
var foi 16
return

FOI17:
var foi 17
return

Balance:
echo
echo BALANCE:
echo
echo 0. not			9. well
echo 1. terribly		10. very well
echo 2. dismally		11. extremely well
echo 3. poorly		12. excellently
echo 4. inadequately	13. superbly
echo 5. fairly		14. incredibly
echo 6. decently		15. amazingly
echo 7. reasonably		16. unbelievably
echo 8. soundly		17. perfectly
echo
echo Enter Balance Number:

matchre Balance0 ^0$
matchre Balance1 ^1$
matchre Balance2 ^2$
matchre Balance3 ^3$
matchre Balance4 ^4$
matchre Balance5 ^5$
matchre Balance6 ^6$
matchre Balance7 ^7$
matchre Balance8 ^8$
matchre Balance9 ^9$
matchre Balance10 ^10$
matchre Balance11 ^11$
matchre Balance12 ^12$
matchre Balance13 ^13$
matchre Balance14 ^14$
matchre Balance15 ^15$
matchre Balance16 ^16$
matchre Balance17 ^17$
matchwait

Balance0:
var balance 0
return

Balance1:
var balance 1
return

Balance2:
var balance 2
return

Balance3:
var balance 3
return

Balance4:
var balance 4
return

Balance5:
var balance 5
return

Balance6:
var balance 6
return

Balance7:
var balance 7
return

Balance8:
var balance 8
return

Balance9:
var balance 9
return

Balance10:
var balance 10
return

Balance11:
var balance 11
return

Balance12:
var balance 12
return

Balance13:
var balance 13
return

Balance14:
var balance 14
return

Balance15:
var balance 15
return

Balance16:
var balance 16
return

Balance17:
var balance 17
return

Power:
echo
echo POWER/SUITEDNESS:
echo
echo 0. not			9. well
echo 1. terribly		10. very well
echo 2. dismally		11. extremely well
echo 3. poorly		12. excellently
echo 4. inadequately	13. superbly
echo 5. fairly		14. incredibly
echo 6. decently		15. amazingly
echo 7. reasonably		16. unbelievably
echo 8. soundly		17. perfectly
echo
echo Enter Power Number:

matchre Power0 ^0$
matchre Power1 ^1$
matchre Power2 ^2$
matchre Power3 ^3$
matchre Power4 ^4$
matchre Power5 ^5$
matchre Power6 ^6$
matchre Power7 ^7$
matchre Power8 ^8$
matchre Power9 ^9$
matchre Power10 ^10$
matchre Power11 ^11$
matchre Power12 ^12$
matchre Power13 ^13$
matchre Power14 ^14$
matchre Power15 ^15$
matchre Power16 ^16$
matchre Power17 ^17$
matchwait

Power0:
var power 0
return

Power1:
var power 1
return

Power2:
var power 2
return

Power3:
var power 3
return

Power4:
var power 4
return

Power5:
var power 5
return

Power6:
var power 6
return

Power7:
var power 7
return

Power8:
var power 8
return

Power9:
var power 9
return

Power10:
var power 10
return

Power11:
var power 11
return

Power12:
var power 12
return

Power13:
var power 13
return

Power14:
var power 14
return

Power15:
var power 15
return

Power16:
var power 16
return

Power17:
var power 17
return

Construction:
echo
echo CONSTRUCTION:
echo
echo 1. extremely weak		10. a bit safeguarded
echo 2. very delicate		11. rather reinforced
echo 3. quite fragile		12. quite guarded
echo 4. rather flimsy		13. highly protected
echo 5. particularly weak		14. very strong
echo 6. somewhat unsound	15. extremely resistant
echo 7. appreciably susceptible	16. unusually resilient
echo 8. marginally vulnerable	17. nearly impervious
echo 9. of average construction	18. practically invulnerable
echo
echo Enter Construction Number:

matchre Construction1 ^1$
matchre Construction2 ^2$
matchre Construction3 ^3$
matchre Construction4 ^4$
matchre Construction5 ^5$
matchre Construction6 ^6$
matchre Construction7 ^7$
matchre Construction8 ^8$
matchre Construction9 ^9$
matchre Construction10 ^10$
matchre Construction11 ^11$
matchre Construction12 ^12$
matchre Construction13 ^13$
matchre Construction14 ^14$
matchre Construction15 ^15$
matchre Construction16 ^16$
matchre Construction17 ^17$
matchre Construction18 ^18$
matchwait

Construction1:
var construction 1
return

Construction2:
var construction 2
return

Construction3:
var construction 3
return

Construction4:
var construction 4
return

Construction5:
var construction 5
return

Construction6:
var construction 6
return

Construction7:
var construction 7
return

Construction8:
var construction 8
return

Construction9:
var construction 9
return

Construction10:
var construction 10
return

Construction11:
var construction 11
return

Construction12:
var construction 12
return

Construction13:
var construction 13
return

Construction14:
var construction 14
return

Construction15:
var construction 15
return

Construction16:
var construction 16
return

Construction17:
var construction 17
return

Construction18:
var construction 18
return

Weight:
action setvariable weight $1 when ^weight (\d+)$
echo
echo Type weight #
echo
waitforre ^Please rephrase that command
return

Appraisal:
action setvariable appcostk $1 when ^value (\d+)$
echo
echo Type value #
echo
waitforre ^Please rephrase that command
return

ShieldSize:
echo
echo SHIELD SIZE
echo
echo 1. small
echo 2. medium
echo 3. large
echo
echo Enter Size Number:

matchre ShieldSizeSmall ^1$
matchre ShieldSizeMedium ^2$
matchre ShieldSizeLarge ^3$
matchwait

ShieldSizeSmall:
var stype small
var sizefactor 0
return

ShieldSizeMedium:
var stype medium
var sizefactor 1
return

ShieldSizeLarge:
var stype large
var sizefactor 2
return

MinDefense:
echo
echo BASIC (MINIMUM) PROTECTION:
echo
echo 0. no			14. high
echo 1. extremely terrible	15. very high
echo 2. terrible		16. great
echo 3. dismal		17. very great
echo 4. very poor		18. exceptional
echo 5. poor			19. very exceptional
echo 6. rather low		20. impressive
echo 7. low			21. very impressive
echo 8. fair			22. amazing
echo 9. better than fair	23. incredible
echo 10. moderate		24. tremendous
echo 11. moderately good	25. unbelievable
echo 12. good		26. god-like
echo 13. very good
echo
echo Enter Shield Protection Number:

matchre MinDefense0 ^0$
matchre MinDefense1 ^1$
matchre MinDefense2 ^2$
matchre MinDefense3 ^3$
matchre MinDefense4 ^4$
matchre MinDefense5 ^5$
matchre MinDefense6 ^6$
matchre MinDefense7 ^7$
matchre MinDefense8 ^8$
matchre MinDefense9 ^9$
matchre MinDefense10 ^10$
matchre MinDefense11 ^11$
matchre MinDefense12 ^12$
matchre MinDefense13 ^13$
matchre MinDefense14 ^14$
matchre MinDefense15 ^15$
matchre MinDefense16 ^16$
matchre MinDefense17 ^17$
matchre MinDefense18 ^18$
matchre MinDefense19 ^19$
matchre MinDefense20 ^20$
matchre MinDefense21 ^21$
matchre MinDefense22 ^22$
matchre MinDefense23 ^23$
matchre MinDefense24 ^24$
matchre MinDefense25 ^25$
matchre MinDefense26 ^26$
matchwait

MinDefense0:
var smin 0
return

MinDefense1:
var smin 1
return

MinDefense2:
var smin 2
return

MinDefense3:
var smin 3
return

MinDefense4:
var smin 4
return

MinDefense5:
var smin 5
return

MinDefense6:
var smin 6
return

MinDefense6:
var smin 6
return

MinDefense7:
var smin 7
return

MinDefense8:
var smin 8
return

MinDefense9:
var smin 9
return

MinDefense10:
var smin 10
return

MinDefense11:
var smin 11
return

MinDefense12:
var smin 12
return

MinDefense13:
var smin 13
return

MinDefense14:
var smin 14
return

MinDefense15:
var smin 15
return

MinDefense16:
var smin 16
return

MinDefense17:
var smin 17
return

MinDefense18:
var smin 18
return

MinDefense19:
var smin 19
return

MinDefense20:
var smin 20
return

MinDefense21:
var smin 21
return

MinDefense22:
var smin 22
return

MinDefense23:
var smin 23
return

MinDefense24:
var smin 24
return

MinDefense25:
var smin 25
return

MinDefense26:
var smin 26
return

MaxDefense:
echo
echo FULL (MAXIMUM) PROTECTION:
echo
echo 0. no			14. high
echo 1. extremely terrible	15. very high
echo 2. terrible		16. great
echo 3. dismal		17. very great
echo 4. very poor		18. exceptional
echo 5. poor			19. very exceptional
echo 6. rather low		20. impressive
echo 7. low			21. very impressive
echo 8. fair			22. amazing
echo 9. better than fair	23. incredible
echo 10. moderate		24. tremendous
echo 11. moderately good	25. unbelievable
echo 12. good		26. god-like
echo 13. very good
echo
echo Enter Shield Protection Number:

matchre MaxDefense0 ^0$
matchre MaxDefense1 ^1$
matchre MaxDefense2 ^2$
matchre MaxDefense3 ^3$
matchre MaxDefense4 ^4$
matchre MaxDefense5 ^5$
matchre MaxDefense6 ^6$
matchre MaxDefense7 ^7$
matchre MaxDefense8 ^8$
matchre MaxDefense9 ^9$
matchre MaxDefense10 ^10$
matchre MaxDefense11 ^11$
matchre MaxDefense12 ^12$
matchre MaxDefense13 ^13$
matchre MaxDefense14 ^14$
matchre MaxDefense15 ^15$
matchre MaxDefense16 ^16$
matchre MaxDefense17 ^17$
matchre MaxDefense18 ^18$
matchre MaxDefense19 ^19$
matchre MaxDefense20 ^20$
matchre MaxDefense21 ^21$
matchre MaxDefense22 ^22$
matchre MaxDefense23 ^23$
matchre MaxDefense24 ^24$
matchre MaxDefense25 ^25$
matchre MaxDefense26 ^26$
matchwait

MaxDefense0:
var smax 0
return

MaxDefense1:
var smax 1
return

MaxDefense2:
var smax 2
return

MaxDefense3:
var smax 3
return

MaxDefense4:
var smax 4
return

MaxDefense5:
var smax 5
return

MaxDefense6:
var smax 6
return

MaxDefense7:
var smax 7
return

MaxDefense8:
var smax 8
return

MaxDefense9:
var smax 9
return

MaxDefense10:
var smax 10
return

MaxDefense11:
var smax 11
return

MaxDefense12:
var smax 12
return

MaxDefense13:
var smax 13
return

MaxDefense14:
var smax 14
return

MaxDefense15:
var smax 15
return

MaxDefense16:
var smax 16
return

MaxDefense17:
var smax 17
return

MaxDefense18:
var smax 18
return

MaxDefense19:
var smax 19
return

MaxDefense20:
var smax 20
return

MaxDefense21:
var smax 21
return

MaxDefense22:
var smax 22
return

MaxDefense23:
var smax 23
return

MaxDefense24:
var smax 24
return

MaxDefense25:
var smax 25
return

MaxDefense26:
var smax 26
return

ShieldHindrance:
echo
echo SHIELD HINDRANCE:
echo
echo 0. no			8. noticeable
echo 1. insignificant	9. high
echo 2. trivial		10. significant
echo 3. light			11. great
echo 4. minor		12. extreme
echo 5. fair			13. debilitating
echo 6. mild			14. overwhelming
echo 7. moderate		15. insane
echo
echo Enter Hindrance Number:

matchre ShieldHindrance0 ^0$
matchre ShieldHindrance1 ^1$
matchre ShieldHindrance2 ^2$
matchre ShieldHindrance3 ^3$
matchre ShieldHindrance4 ^4$
matchre ShieldHindrance5 ^5$
matchre ShieldHindrance6 ^6$
matchre ShieldHindrance7 ^7$
matchre ShieldHindrance8 ^8$
matchre ShieldHindrance9 ^9$
matchre ShieldHindrance10 ^10$
matchre ShieldHindrance11 ^11$
matchre ShieldHindrance12 ^12$
matchre ShieldHindrance13 ^13$
matchre ShieldHindrance14 ^14$
matchre ShieldHindrance15 ^15$
matchwait

ShieldHindrance0:
var shdhindrance 0
return

ShieldHindrance1:
var shdhindrance 1
return

ShieldHindrance2:
var shdhindrance 2
return

ShieldHindrance3:
var shdhindrance 3
return

ShieldHindrance4:
var shdhindrance 4
return

ShieldHindrance5:
var shdhindrance 5
return

ShieldHindrance6:
var shdhindrance 6
return

ShieldHindrance7:
var shdhindrance 7
return

ShieldHindrance8:
var shdhindrance 8
return

ShieldHindrance9:
var shdhindrance 9
return

ShieldHindrance10:
var shdhindrance 10
return

ShieldHindrance11:
var shdhindrance 11
return

ShieldHindrance12:
var shdhindrance 12
return

ShieldHindrance13:
var shdhindrance 13
return

ShieldHindrance14:
var shdhindrance 14
return

ShieldHindrance15:
var shdhindrance 15
return

ArmorType:
echo
echo ARMOR TYPE:
echo
echo 1. light (cloth, leather, bone)
echo 2. chain
echo 3. brigandine
echo 4. plate
echo
echo Enter Armor Type Number:

matchre ArmorTypeLight ^1$
matchre ArmorTypeChain ^2$
matchre ArmorTypeBrigandine ^3$
matchre ArmorTypePlate ^4$
matchwait

ArmorTypeLight:
var atype 1-light
return

ArmorTypeChain:
var atype 2-chain
return

ArmorTypeBrigandine:
var atype 3-brigandine
return

ArmorTypePlate:
var atype 4-plate
return

ArmorCoverage:
echo
echo ARMOR COVERAGE:
echo
echo 1. head/eyes/neck	11. torso
echo 2. head/eyes		12. chest/back
echo 3. head/neck		13. chest
echo 4. head		14. abdomen
echo 5. eyes		15. back
echo 6. neck/chest/back	16. arms/hands
echo 7. neck		17. arms
echo 8. torso/arms/legs	18. hands
echo 9. torso/arms		19. legs
echo 10. torso/legs
echo
echo Enter Armor Coverage Number:

matchre ArmorCoverage1 ^1$
matchre ArmorCoverage2 ^2$
matchre ArmorCoverage3 ^3$
matchre ArmorCoverage4 ^4$
matchre ArmorCoverage5 ^5$
matchre ArmorCoverage6 ^6$
matchre ArmorCoverage7 ^7$
matchre ArmorCoverage8 ^8$
matchre ArmorCoverage9 ^9$
matchre ArmorCoverage10 ^10$
matchre ArmorCoverage11 ^11$
matchre ArmorCoverage12 ^12$
matchre ArmorCoverage13 ^13$
matchre ArmorCoverage14 ^14$
matchre ArmorCoverage15 ^15$
matchre ArmorCoverage16 ^16$
matchre ArmorCoverage17 ^17$
matchre ArmorCoverage18 ^18$
matchre ArmorCoverage19 ^19$
matchwait

ArmorCoverage1:
var area 01-head/eyes/neck
return

ArmorCoverage2:
var area 02-head/eyes
return

ArmorCoverage3:
var area 03-head/neck
return

ArmorCoverage4:
var area 04-head

ArmorCoverage5:
var area 05-eyes
return

ArmorCoverage6:
var area 06-neck/chest/back
return

ArmorCoverage7:
var area 07-neck
return

ArmorCoverage8:
var area 08-torso/arms/legs
return

ArmorCoverage9:
var area 09-torso/arms
return

ArmorCoverage10:
var area 10-torso/legs
return

ArmorCoverage11:
var area 11-torso
return

ArmorCoverage12:
var area 12-chest/back
return

ArmorCoverage13:
var area 13-chest
return

ArmorCoverage14:
var area 14-abdomen
return

ArmorCoverage15:
var area 15-back
return

ArmorCoverage16:
var area 16-arms/hands
return

ArmorCoverage17:
var area 17-arms
return

ArmorCoverage18:
var area 18-hands
return

ArmorCoverage19:
var area 19-legs
return

ArmorMHindrance:
echo
ECHO ARMOR MANEUVERING HINDRANCE:
echo
echo 0. no			8. noticeable
echo 1. insignificant	9. high
echo 2. trivial		10. significant
echo 3. light			11. great
echo 4. minor		12. extreme
echo 5. fair			13. debilitating
echo 6. mild			14. overwhelming
echo 7. moderate		15. insane
echo
echo Enter Armor Hindrance Number:

matchre ArmorMHindrance0 ^0$
matchre ArmorMHindrance1 ^1$
matchre ArmorMHindrance2 ^2$
matchre ArmorMHindrance3 ^3$
matchre ArmorMHindrance4 ^4$
matchre ArmorMHindrance5 ^5$
matchre ArmorMHindrance6 ^6$
matchre ArmorMHindrance7 ^7$
matchre ArmorMHindrance8 ^8$
matchre ArmorMHindrance9 ^9$
matchre ArmorMHindrance10 ^10$
matchre ArmorMHindrance11 ^11$
matchre ArmorMHindrance12 ^12$
matchre ArmorMHindrance13 ^13$
matchre ArmorMHindrance14 ^14$
matchre ArmorMHindrance15 ^15$
matchwait

ArmorMHindrance0:
var mhindrance 0
return

ArmorMHindrance1:
var mhindrance 1
return

ArmorMHindrance2:
var mhindrance 2
return

ArmorMHindrance3:
var mhindrance 3
return

ArmorMHindrance4:
var mhindrance 4
return

ArmorMHindrance5:
var mhindrance 5
return

ArmorMHindrance6:
var mhindrance 6
return

ArmorMHindrance7:
var mhindrance 7
return

ArmorMHindrance8:
var mhindrance 8
return

ArmorMHindrance9:
var mhindrance 9
return

ArmorMHindrance10:
var mhindrance 10
return

ArmorMHindrance11:
var mhindrance 11
return

ArmorMHindrance12:
var mhindrance 12
return

ArmorMHindrance13:
var mhindrance 13
return

ArmorMHindrance14:
var mhindrance 14
return

ArmorMHindrance15:
var mhindrance 15
return

ArmorSHindrance:
echo
ECHO ARMOR STEALTH HINDRANCE:
echo
echo 0. no			8. noticeable
echo 1. insignificant	9. high
echo 2. trivial		10. significant
echo 3. light			11. great
echo 4. minor		12. extreme
echo 5. fair			13. debilitating
echo 6. mild			14. overwhelming
echo 7. moderate		15. insane
echo
echo Enter Armor Hindrance Number:

matchre ArmorSHindrance0 ^0$
matchre ArmorSHindrance1 ^1$
matchre ArmorSHindrance2 ^2$
matchre ArmorSHindrance3 ^3$
matchre ArmorSHindrance4 ^4$
matchre ArmorSHindrance5 ^5$
matchre ArmorSHindrance6 ^6$
matchre ArmorSHindrance7 ^7$
matchre ArmorSHindrance8 ^8$
matchre ArmorSHindrance9 ^9$
matchre ArmorSHindrance10 ^10$
matchre ArmorSHindrance11 ^11$
matchre ArmorSHindrance12 ^12$
matchre ArmorSHindrance13 ^13$
matchre ArmorSHindrance14 ^14$
matchre ArmorSHindrance15 ^15$
matchwait

ArmorSHindrance0:
var shindrance 0
return

ArmorSHindrance1:
var shindrance 1
return

ArmorSHindrance2:
var shindrance 2
return

ArmorSHindrance3:
var shindrance 3
return

ArmorSHindrance4:
var shindrance 4
return

ArmorSHindrance5:
var shindrance 5
return

ArmorSHindrance6:
var shindrance 6
return

ArmorSHindrance7:
var shindrance 7
return

ArmorSHindrance8:
var shindrance 8
return

ArmorSHindrance9:
var shindrance 9
return

ArmorSHindrance10:
var shindrance 10
return

ArmorSHindrance11:
var shindrance 11
return

ArmorSHindrance12:
var shindrance 12
return

ArmorSHindrance13:
var shindrance 13
return

ArmorSHindrance14:
var shindrance 14
return

ArmorSHindrance15:
var shindrance 15
return

PunctureProtection:
echo
echo ARMOR PUNCTURE PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre PunctureProtection1 ^1$
matchre PunctureProtection2 ^2$
matchre PunctureProtection3 ^3$
matchre PunctureProtection4 ^4$
matchre PunctureProtection5 ^5$
matchre PunctureProtection6 ^6$
matchre PunctureProtection7 ^7$
matchre PunctureProtection8 ^8$
matchre PunctureProtection9 ^9$
matchre PunctureProtection10 ^10$
matchre PunctureProtection11 ^11$
matchre PunctureProtection12 ^12$
matchre PunctureProtection13 ^13$
matchre PunctureProtection14 ^14$
matchre PunctureProtection15 ^15$
matchwait

PunctureProtection1:
var puncturep 1
return

PunctureProtection2:
var puncturep 2
return

PunctureProtection3:
var puncturep 3
return

PunctureProtection4:
var puncturep 4
return

PunctureProtection5:
var puncturep 5
return

PunctureProtection6:
var puncturep 6
return

PunctureProtection7:
var puncturep 7
return

PunctureProtection8:
var puncturep 8
return

PunctureProtection9:
var puncturep 9
return

PunctureProtection10:
var puncturep 10
return

PunctureProtection11:
var puncturep 11
return

PunctureProtection12:
var puncturep 12
return

PunctureProtection13:
var puncturep 13
return

PunctureProtection14:
var puncturep 14
return

PunctureProtection15:
var puncturep 15
return

SliceProtection:
echo
echo ARMOR SLICE PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre SliceProtection1 ^1$
matchre SliceProtection2 ^2$
matchre SliceProtection3 ^3$
matchre SliceProtection4 ^4$
matchre SliceProtection5 ^5$
matchre SliceProtection6 ^6$
matchre SliceProtection7 ^7$
matchre SliceProtection8 ^8$
matchre SliceProtection9 ^9$
matchre SliceProtection10 ^10$
matchre SliceProtection11 ^11$
matchre SliceProtection12 ^12$
matchre SliceProtection13 ^13$
matchre SliceProtection14 ^14$
matchre SliceProtection15 ^15$
matchwait

SliceProtection1:
var slicep 1
return

SliceProtection2:
var slicep 2
return

SliceProtection3:
var slicep 3
return

SliceProtection4:
var slicep 4
return

SliceProtection5:
var slicep 5
return

SliceProtection6:
var slicep 6
return

SliceProtection7:
var slicep 7
return

SliceProtection8:
var slicep 8
return

SliceProtection9:
var slicep 9
return

SliceProtection10:
var slicep 10
return

SliceProtection11:
var slicep 11
return

SliceProtection12:
var slicep 12
return

SliceProtection13:
var slicep 13
return

SliceProtection14:
var slicep 14
return

SliceProtection15:
var slicep 15
return

ImpactProtection:
echo
echo ARMOR IMPACT PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre ImpactProtection1 ^1$
matchre ImpactProtection2 ^2$
matchre ImpactProtection3 ^3$
matchre ImpactProtection4 ^4$
matchre ImpactProtection5 ^5$
matchre ImpactProtection6 ^6$
matchre ImpactProtection7 ^7$
matchre ImpactProtection8 ^8$
matchre ImpactProtection9 ^9$
matchre ImpactProtection10 ^10$
matchre ImpactProtection11 ^11$
matchre ImpactProtection12 ^12$
matchre ImpactProtection13 ^13$
matchre ImpactProtection14 ^14$
matchre ImpactProtection15 ^15$
matchwait

ImpactProtection1:
var impactp 1
return

ImpactProtection2:
var impactp 2
return

ImpactProtection3:
var impactp 3
return

ImpactProtection4:
var impactp 4
return

ImpactProtection5:
var impactp 5
return

ImpactProtection6:
var impactp 6
return

ImpactProtection7:
var impactp 7
return

ImpactProtection8:
var impactp 8
return

ImpactProtection9:
var impactp 9
return

ImpactProtection10:
var impactp 10
return

ImpactProtection11:
var impactp 11
return

ImpactProtection12:
var impactp 12
return

ImpactProtection13:
var impactp 13
return

ImpactProtection14:
var impactp 14
return

ImpactProtection15:
var impactp 15
return

FireProtection:
echo
echo ARMOR FIRE PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre FireProtection1 ^1$
matchre FireProtection2 ^2$
matchre FireProtection3 ^3$
matchre FireProtection4 ^4$
matchre FireProtection5 ^5$
matchre FireProtection6 ^6$
matchre FireProtection7 ^7$
matchre FireProtection8 ^8$
matchre FireProtection9 ^9$
matchre FireProtection10 ^10$
matchre FireProtection11 ^11$
matchre FireProtection12 ^12$
matchre FireProtection13 ^13$
matchre FireProtection14 ^14$
matchre FireProtection15 ^15$
matchwait

FireProtection1:
var firep 1
return

FireProtection2:
var firep 2
return

FireProtection3:
var firep 3
return

FireProtection4:
var firep 4
return

FireProtection5:
var firep 5
return

FireProtection6:
var firep 6
return

FireProtection7:
var firep 7
return

FireProtection8:
var firep 8
return

FireProtection9:
var firep 9
return

FireProtection10:
var firep 10
return

FireProtection11:
var firep 11
return

FireProtection12:
var firep 12
return

FireProtection13:
var firep 13
return

FireProtection14:
var firep 14
return

FireProtection15:
var firep 15
return

ColdProtection:
echo
echo ARMOR COLD PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre ColdProtection1 ^1$
matchre ColdProtection2 ^2$
matchre ColdProtection3 ^3$
matchre ColdProtection4 ^4$
matchre ColdProtection5 ^5$
matchre ColdProtection6 ^6$
matchre ColdProtection7 ^7$
matchre ColdProtection8 ^8$
matchre ColdProtection9 ^9$
matchre ColdProtection10 ^10$
matchre ColdProtection11 ^11$
matchre ColdProtection12 ^12$
matchre ColdProtection13 ^13$
matchre ColdProtection14 ^14$
matchre ColdProtection15 ^15$
matchwait

ColdProtection1:
var coldp 1
return

ColdProtection2:
var coldp 2
return

ColdProtection3:
var coldp 3
return

ColdProtection4:
var coldp 4
return

ColdProtection5:
var coldp 5
return

ColdProtection6:
var coldp 6
return

ColdProtection7:
var coldp 7
return

ColdProtection8:
var coldp 8
return

ColdProtection9:
var coldp 9
return

ColdProtection10:
var coldp 10
return

ColdProtection11:
var coldp 11
return

ColdProtection12:
var coldp 12
return

ColdProtection13:
var coldp 13
return

ColdProtection14:
var coldp 14
return

ColdProtection15:
var coldp 15
return

ElectricProtection:
echo
echo ARMOR ELECTRICAL PROTECTION:
echo
echo 1. poor		9. great
echo 2. low		10. very great
echo 3. fair		11. extreme
echo 4. moderate	12. exceptional
echo 5. good	13. incredible
echo 6. very good	14. amazing
echo 7. high		15. unbelievable
echo 8. very high
echo
echo Enter Armor Protection Number:

matchre ElectricProtection1 ^1$
matchre ElectricProtection2 ^2$
matchre ElectricProtection3 ^3$
matchre ElectricProtection4 ^4$
matchre ElectricProtection5 ^5$
matchre ElectricProtection6 ^6$
matchre ElectricProtection7 ^7$
matchre ElectricProtection8 ^8$
matchre ElectricProtection9 ^9$
matchre ElectricProtection10 ^10$
matchre ElectricProtection11 ^11$
matchre ElectricProtection12 ^12$
matchre ElectricProtection13 ^13$
matchre ElectricProtection14 ^14$
matchre ElectricProtection15 ^15$
matchwait

ElectricProtection1:
var electricp 1
return

ElectricProtection2:
var electricp 2
return

ElectricProtection3:
var electricp 3
return

ElectricProtection4:
var electricp 4
return

ElectricProtection5:
var electricp 5
return

ElectricProtection6:
var electricp 6
return

ElectricProtection7:
var electricp 7
return

ElectricProtection8:
var electricp 8
return

ElectricProtection9:
var electricp 9
return

ElectricProtection10:
var electricp 10
return

ElectricProtection11:
var electricp 11
return

ElectricProtection12:
var electricp 12
return

ElectricProtection13:
var electricp 13
return

ElectricProtection14:
var electricp 14
return

ElectricProtection15:
var electricp 15
return

PunctureAbsorption:
echo
echo ARMOR PUNCTURE ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre PunctureAbsorption1 ^1$
matchre PunctureAbsorption2 ^2$
matchre PunctureAbsorption3 ^3$
matchre PunctureAbsorption4 ^4$
matchre PunctureAbsorption5 ^5$
matchre PunctureAbsorption6 ^6$
matchre PunctureAbsorption7 ^7$
matchre PunctureAbsorption8 ^8$
matchre PunctureAbsorption9 ^9$
matchre PunctureAbsorption10 ^10$
matchre PunctureAbsorption11 ^11$
matchre PunctureAbsorption12 ^12$
matchre PunctureAbsorption13 ^13$
matchre PunctureAbsorption14 ^14$
matchre PunctureAbsorption15 ^15$
matchre PunctureAbsorption16 ^16$
matchre PunctureAbsorption17 ^17$
matchre PunctureAbsorption18 ^18$
matchwait

PunctureAbsorption1:
var puncturea 1
return

PunctureAbsorption2:
var puncturea 2
return

PunctureAbsorption3:
var puncturea 3
return

PunctureAbsorption4:
var puncturea 4
return

PunctureAbsorption5:
var puncturea 5
return

PunctureAbsorption6:
var puncturea 6
return

PunctureAbsorption7:
var puncturea 7
return

PunctureAbsorption8:
var puncturea 8
return

PunctureAbsorption9:
var puncturea 9
return

PunctureAbsorption10:
var puncturea 10
return

PunctureAbsorption11:
var puncturea 11
return

PunctureAbsorption12:
var puncturea 12
return

PunctureAbsorption13:
var puncturea 13
return

PunctureAbsorption14:
var puncturea 14
return

PunctureAbsorption15:
var puncturea 15
return

PunctureAbsorption16:
var puncturea 16
return

PunctureAbsorption17:
var puncturea 17
return

PunctureAbsorption18:
var puncturea 18
return

SliceAbsorption:
echo
echo ARMOR SLICE ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre SliceAbsorption1 ^1$
matchre SliceAbsorption2 ^2$
matchre SliceAbsorption3 ^3$
matchre SliceAbsorption4 ^4$
matchre SliceAbsorption5 ^5$
matchre SliceAbsorption6 ^6$
matchre SliceAbsorption7 ^7$
matchre SliceAbsorption8 ^8$
matchre SliceAbsorption9 ^9$
matchre SliceAbsorption10 ^10$
matchre SliceAbsorption11 ^11$
matchre SliceAbsorption12 ^12$
matchre SliceAbsorption13 ^13$
matchre SliceAbsorption14 ^14$
matchre SliceAbsorption15 ^15$
matchre SliceAbsorption16 ^16$
matchre SliceAbsorption17 ^17$
matchre SliceAbsorption18 ^18$
matchwait

SliceAbsorption1:
var slicea 1
return

SliceAbsorption2:
var slicea 2
return

SliceAbsorption3:
var slicea 3
return

SliceAbsorption4:
var slicea 4
return

SliceAbsorption5:
var slicea 5
return

SliceAbsorption6:
var slicea 6
return

SliceAbsorption7:
var slicea 7
return

SliceAbsorption8:
var slicea 8
return

SliceAbsorption9:
var slicea 9
return

SliceAbsorption10:
var slicea 10
return

SliceAbsorption11:
var slicea 11
return

SliceAbsorption12:
var slicea 12
return

SliceAbsorption13:
var slicea 13
return

SliceAbsorption14:
var slicea 14
return

SliceAbsorption15:
var slicea 15
return

SliceAbsorption16:
var slicea 16
return

SliceAbsorption17:
var slicea 17
return

SliceAbsorption18:
var slicea 18
return

ImpactAbsorption:
echo
echo ARMOR IMPACT ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre ImpactAbsorption1 ^1$
matchre ImpactAbsorption2 ^2$
matchre ImpactAbsorption3 ^3$
matchre ImpactAbsorption4 ^4$
matchre ImpactAbsorption5 ^5$
matchre ImpactAbsorption6 ^6$
matchre ImpactAbsorption7 ^7$
matchre ImpactAbsorption8 ^8$
matchre ImpactAbsorption9 ^9$
matchre ImpactAbsorption10 ^10$
matchre ImpactAbsorption11 ^11$
matchre ImpactAbsorption12 ^12$
matchre ImpactAbsorption13 ^13$
matchre ImpactAbsorption14 ^14$
matchre ImpactAbsorption15 ^15$
matchre ImpactAbsorption16 ^16$
matchre ImpactAbsorption17 ^17$
matchre ImpactAbsorption18 ^18$
matchwait

ImpactAbsorption1:
var impacta 1
return

ImpactAbsorption2:
var impacta 2
return

ImpactAbsorption3:
var impacta 3
return

ImpactAbsorption4:
var impacta 4
return

ImpactAbsorption5:
var impacta 5
return

ImpactAbsorption6:
var impacta 6
return

ImpactAbsorption7:
var impacta 7
return

ImpactAbsorption8:
var impacta 8
return

ImpactAbsorption9:
var impacta 9
return

ImpactAbsorption10:
var impacta 10
return

ImpactAbsorption11:
var impacta 11
return

ImpactAbsorption12:
var impacta 12
return

ImpactAbsorption13:
var impacta 13
return

ImpactAbsorption14:
var impacta 14
return

ImpactAbsorption15:
var impacta 15
return

ImpactAbsorption16:
var impacta 16
return

ImpactAbsorption17:
var impacta 17
return

ImpactAbsorption18:
var impacta 18
return

FireAbsorption:
echo
echo ARMOR FIRE ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre FireAbsorption1 ^1$
matchre FireAbsorption2 ^2$
matchre FireAbsorption3 ^3$
matchre FireAbsorption4 ^4$
matchre FireAbsorption5 ^5$
matchre FireAbsorption6 ^6$
matchre FireAbsorption7 ^7$
matchre FireAbsorption8 ^8$
matchre FireAbsorption9 ^9$
matchre FireAbsorption10 ^10$
matchre FireAbsorption11 ^11$
matchre FireAbsorption12 ^12$
matchre FireAbsorption13 ^13$
matchre FireAbsorption14 ^14$
matchre FireAbsorption15 ^15$
matchre FireAbsorption16 ^16$
matchre FireAbsorption17 ^17$
matchre FireAbsorption18 ^18$
matchwait

FireAbsorption1:
var firea 1
return

FireAbsorption2:
var firea 2
return

FireAbsorption3:
var firea 3
return

FireAbsorption4:
var firea 4
return

FireAbsorption5:
var firea 5
return

FireAbsorption6:
var firea 6
return

FireAbsorption7:
var firea 7
return

FireAbsorption8:
var firea 8
return

FireAbsorption9:
var firea 9
return

FireAbsorption10:
var firea 10
return

FireAbsorption11:
var firea 11
return

FireAbsorption12:
var firea 12
return

FireAbsorption13:
var firea 13
return

FireAbsorption14:
var firea 14
return

FireAbsorption15:
var firea 15
return

FireAbsorption16:
var firea 16
return

FireAbsorption17:
var firea 17
return

FireAbsorption18:
var firea 18
return

ColdAbsorption:
echo
echo ARMOR COLD ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre ColdAbsorption1 ^1$
matchre ColdAbsorption2 ^2$
matchre ColdAbsorption3 ^3$
matchre ColdAbsorption4 ^4$
matchre ColdAbsorption5 ^5$
matchre ColdAbsorption6 ^6$
matchre ColdAbsorption7 ^7$
matchre ColdAbsorption8 ^8$
matchre ColdAbsorption9 ^9$
matchre ColdAbsorption10 ^10$
matchre ColdAbsorption11 ^11$
matchre ColdAbsorption12 ^12$
matchre ColdAbsorption13 ^13$
matchre ColdAbsorption14 ^14$
matchre ColdAbsorption15 ^15$
matchre ColdAbsorption16 ^16$
matchre ColdAbsorption17 ^17$
matchre ColdAbsorption18 ^18$
matchwait

ColdAbsorption1:
var colda 1
return

ColdAbsorption2:
var colda 2
return

ColdAbsorption3:
var colda 3
return

ColdAbsorption4:
var colda 4
return

ColdAbsorption5:
var colda 5
return

ColdAbsorption6:
var colda 6
return

ColdAbsorption7:
var colda 7
return

ColdAbsorption8:
var colda 8
return

ColdAbsorption9:
var colda 9
return

ColdAbsorption10:
var colda 10
return

ColdAbsorption11:
var colda 11
return

ColdAbsorption12:
var colda 12
return

ColdAbsorption13:
var colda 13
return

ColdAbsorption14:
var colda 14
return

ColdAbsorption15:
var colda 15
return

ColdAbsorption16:
var colda 16
return

ColdAbsorption17:
var colda 17
return

ColdAbsorption18:
var colda 18
return

ElectricAbsorption:
echo
echo ARMOR ELECTRICAL ABSORPTION:
echo
echo 1. very poor		10. very high
echo 2. poor			11. great
echo 3. low			12. very great
echo 4. somewhat fair	13. extreme
echo 5. fair			14. exceptional
echo 6. moderate		15. incredible
echo 7. good		16. outstanding
echo 8. very good		17. amazing
echo 9. high			18. unbelievable
echo
echo Enter Armor Absorption Number:

matchre ElectricAbsorption1 ^1$
matchre ElectricAbsorption2 ^2$
matchre ElectricAbsorption3 ^3$
matchre ElectricAbsorption4 ^4$
matchre ElectricAbsorption5 ^5$
matchre ElectricAbsorption6 ^6$
matchre ElectricAbsorption7 ^7$
matchre ElectricAbsorption8 ^8$
matchre ElectricAbsorption9 ^9$
matchre ElectricAbsorption10 ^10$
matchre ElectricAbsorption11 ^11$
matchre ElectricAbsorption12 ^12$
matchre ElectricAbsorption13 ^13$
matchre ElectricAbsorption14 ^14$
matchre ElectricAbsorption15 ^15$
matchre ElectricAbsorption16 ^16$
matchre ElectricAbsorption17 ^17$
matchre ElectricAbsorption18 ^18$
matchwait

ElectricAbsorption1:
var electrica 1
return

ElectricAbsorption2:
var electrica 2
return

ElectricAbsorption3:
var electrica 3
return

ElectricAbsorption4:
var electrica 4
return

ElectricAbsorption5:
var electrica 5
return

ElectricAbsorption6:
var electrica 6
return

ElectricAbsorption7:
var electrica 7
return

ElectricAbsorption8:
var electrica 8
return

ElectricAbsorption9:
var electrica 9
return

ElectricAbsorption10:
var electrica 10
return

ElectricAbsorption11:
var electrica 11
return

ElectricAbsorption12:
var electrica 12
return

ElectricAbsorption13:
var electrica 13
return

ElectricAbsorption14:
var electrica 14
return

ElectricAbsorption15:
var electrica 15
return

ElectricAbsorption16:
var electrica 16
return

ElectricAbsorption17:
var electrica 17
return

ElectricAbsorption18:
var electrica 18
return

weapon1:
if %range = pole then var rangefactor 1
if %range = melee then var rangefactor 0
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %sumed_weight*%sumed + %foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction + %rangefactor),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

if %wtype2 = ERROR then
{
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
echo
echo Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %range-ranged %wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype1	%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype1	%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %range-ranged %wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end
}
if %wtype2 != ERROR then
{
var range ranged
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
echo
echo Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %range-ranged %wtype2/%wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype2/%wtype1	%wtrains2/%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype2/%wtype1	%wtrains2/%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %range-ranged %wtype2/%wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end
}

weapon2:
var puncture N/A
var slice N/A
var impact N/A
var fire N/A
var cold N/A
var electric N/A
var sumd N/A
var sumpd N/A
var sumed N/A
var meand N/A
var meanpd N/A
var meaned N/A
if (matchre ("%wtype1", "(HX|LX)")) then var wtrains 16-Xbow
if (matchre ("%wtype1", "(HX|LX)")) then var drawstrength N/A
if (matchre ("%wtype1", "(HX|LX)")) then var adjdraw N/A
if (matchre ("%wtype1", "(bow)")) then var wtrains 14-bow
if (matchre ("%wtype1", "(sling)")) then var wtrains 12-sling
if (matchre ("%wtype1", "(sling)")) then var drawstrength N/A
if (matchre ("%wtype1", "(sling)")) then var adjdraw N/A
evalmath qpointsw round((%foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Ranged Weapon Quality: %qpointsw (%foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction))
echo
echo Ranged Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %wtype1 (%weight stones): force/balance/power: %foi/%balance/%power, draw strength: %drawstrength, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype1	%wtrains	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype1	%wtrains	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ranged Weapon Quality: %qpointsw (%foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ranged Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %wtype1 (%weight stones): force/balance/power: %foi/%balance/%power, draw strength: %drawstrength, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon3:
var foi N/A
var balance N/A
var power N/A
var drawstrength N/A
var adjdraw N/A
if (matchre ("%tap", "(bolts?|quadrellos?|quarrels?|pellets?|pulzones?)")) then var ammotype 25-Xbow
if (matchre ("%tap", "(bolts?|quadrellos?|quarrels?|pellets?|pulzones?)")) then var ammoskill 17-Xbow
if (matchre ("%tap", "(arrows?)")) then var ammotype 22-bow
if (matchre ("%tap", "(arrows?)")) then var ammoskill 15-bow
if (matchre ("%tap", "(bullets?|clumps?|lumps?|rocks?|shards?)")) then var ammotype 18-sling
if (matchre ("%tap", "(bullets?|clumps?|lumps?|rocks?|shards?)")) then var ammoskill 13-sling
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %sumed_weight*%sumed + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Total Ammo Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Ammo Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
echo
echo Ammo Quality/Weight: %qpointsww (ammo quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %ammoskill ammo (%weight stones): damage: %puncture/%slice/%impact, force: %foi, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%ammotype ammo	%ammoskill ammo	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%ammotype ammo	%ammoskill ammo	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Ammo Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ammo Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ammo Quality/Weight: %qpointsww (ammo quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %ammoskill ammo (%weight stones): damage: %puncture/%slice/%impact, force: %foi, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon4:
var fire N/A
var cold N/A
var electric N/A
var sumed N/A
var meaned N/A
var balance N/A
var power N/A
if %impact != ERROR then
{
evalmath sumd %puncture + %slice + %impact
evalmath sumpd %puncture + %slice + %impact
evalmath meand round((%sumpd/3),1)
evalmath meanpd round((%sumpd/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %foi_weight*%foi + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)
}
if %impact = ERROR then
{
var impact N/A
evalmath sumd %puncture + %slice
evalmath sumpd %puncture + %slice
evalmath meand round((%sumpd/2),1)
evalmath meanpd round((%sumpd/2),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %foi_weight*%foi + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)
}
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo
echo Brawling Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
echo
echo Brawling Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: brawling-%brawltype (%weight stones): damage: %puncture/%slice/%impact, construction: %construction
echo
echo %appcostk	%sourcetype	%source	15-brawl-%brawltype	11-brawl-%brawltype	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	15-brawl-%brawltype	11-brawl-%brawltype	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Brawling Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Brawling Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: brawling-%brawltype (%weight stones): damage: %puncture/%slice/%impact, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon5:
var puncture N/A
var slice N/A
var impact N/A
var fire N/A
var cold N/A
var electric N/A
var sumd N/A
var sumpd N/A
var sumed N/A
var meand N/A
var meanpd N/A
var meaned N/A
var foi N/A
evalmath qpointsw round((%balance_weight*%balance + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Parry Stick Quality: %qpointsw (%balance_weight*balance(%balance) + %construction_weight*construction(%construction))
echo
echo Parry Stick Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: parry stick (%weight stones): balance: %balance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	15-brawl-1parry	11-brawl-1parry	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	15-brawl-1parry	11-brawl-1parry	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Parry Stick Quality: %qpointsw (%balance_weight*balance(%balance) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Parry Stick Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: parry stick (%weight stones): balance: %balance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

shield:
if %stype = large then var sizefactor 2
if %stype = medium then var sizefactor 1
if %stype = small then var sizefactor 0
evalmath sumshield %smin + %smax
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointss round((%smin_weight*%smin + %smax_weight*%smax + %construction_weight*%construction - %shdhindrance_weight*%shdhindrance - %sizefactor),1)
evalmath qpointssw round((%qpointss/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Total Shield Protection: %sumshield
echo
echo Shield Quality: %qpointss (%smin_weight*min.protection(%smin) + %smax_weight*max.protection(%smax) + %construction_weight*construction(%construction) - %shdhindrance_weight*hindrance(%shdhindrance) - size factor(%sizefactor))
echo
echo Shield Quality/Weight: %qpointssw (shield quality(%qpointss) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %stype shield (%weight stones): protection: %smin/%smax, hindrance: %shdhindrance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%stype	%composition	%noun	%tap	%qpointss	%qpointssw	%weight	%sumshield	%smin	%smax	%shdhindrance	%construction	%impact	%balance	%power	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%stype	%composition	%noun	%tap	%qpointss	%qpointssw	%weight	%sumshield	%smin	%smax	%shdhindrance	%construction	%impact	%balance	%power	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Shield Protection: %sumshield
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Shield Quality: %qpointss (%smin_weight*min.protection(%smin) + %smax_weight*max.protection(%smax) + %construction_weight*construction(%construction) - %shdhindrance_weight*hindrance(%shdhindrance) - size factor(%sizefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Shield Quality/Weight: %qpointssw (shield quality(%qpointss) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %stype shield (%weight stones): protection: %smin/%smax, hindrance: %shdhindrance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

armor:
evalmath sumpro %puncturep + %slicep + %impactp + %firep + %coldp + %electricp
evalmath sumabs %puncturea + %slicea + %impacta + %firea + %colda + %electrica
evalmath sumpdef %puncturep + %slicep + %impactp + %puncturea + %slicea + %impacta
evalmath sumedef %firep + %coldp + %electricp + %firea + %colda + %electrica
evalmath sumdef %sumpro + %sumabs
evalmath sumhin %mhindrance + %shindrance
evalmath meanpro round((%sumpro/6),1)
evalmath meanabs round((%sumabs/6),1)
evalmath meanpdef round((%sumpdef/6),1)
evalmath meanedef round((%sumedef/6),1)
evalmath meanhin round((%sumhin/2),1)
evalmath qpointsa round((%sumpro_weight*%sumpro + %sumabs_weight*%sumabs + %sumpdef_weight*%sumpdef + %sumedef_weight*%sumedef + %construction_weight*%construction - %mhindrance_weight*%mhindrance - %shindrance_weight*%shindrance),1)
evalmath qpointsaw round((%qpointsa/(%weight_weight*%weight)),1)
if %covershead = yes && %coverseyes = yes && %coversneck = yes then var area 01-head/eyes/neck
if %covershead = yes && %coverseyes = yes && %coversneck = no then var area 02-head/eyes
if %covershead = yes && %coverseyes = no && %coversneck = yes then var area 03-head/neck
if %covershead = yes && %coverseyes = no && %coversneck = no then var area 04-head
if %covershead = no && %coverseyes = yes && %coversneck = no then var area 05-eyes
if %coversneck = yes && %coverschest = yes && %coversback = yes then var area 06-neck/chest/back
if %covershead = no && %coverseyes = no && %coversneck = yes && %coverschest = no && %coversback = no then var area 07-neck
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = yes && %coverslegs = yes then var area 08-torso/arms/legs
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = yes && %coverslegs = no then var area 09-torso/arms
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = no && %coverslegs = yes then var area 10-torso/legs
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = no && %coverslegs = no then var area 11-torso
if %coverschest = yes && %coversabdomen = no && %coversback = yes && %coversarms = no && %coverslegs = no then var area 12-chest/back
if %coverschest = yes && %coversabdomen = no && %coversback = no && %coversarms = no && %coverslegs = no then var area 13-chest
if %coverschest = no && %coversabdomen = yes && %coversback = no && %coversarms = no && %coverslegs = no then var area 14-abdomen
if %coverschest = no && %coversabdomen = no && %coversback = yes && %coversarms = no && %coverslegs = no then var area 15-back
if %coversarms = yes && %covershands = yes then var area 16-arms/hands
if %coverschest = no && %coversarms = yes && %covershands = no then var area 17-arms
if %coverschest = no && %coversarms = no && %covershands = yes then var area 18-hands
if %coverschest = no && %coversarms = no && %coverslegs = yes then var area 19-legs

echo
echo Stats for %tap
echo
echo Total Armor Protection + Absorption: %sumdef
echo Total Armor Protection: %sumpro (mean: %meanpro)
echo Total Armor Absorption: %sumabs (mean: %meanabs)
echo Total Physical Defense: %sumpdef (mean: %meanpdef)
echo Total Elemental Defense: %sumedef (mean: %meanedef)
echo Total Armor Hindrance: %sumhin (mean: %meanhin)
echo
echo Armor Quality: %qpointsa (%sumpro_weight*total protection(%sumpro) + %sumabs_weight*total absorption(%sumabs) + %sumpdef_weight*total physical defense(%sumpdef) + %sumedef_weight*total elemental defense(%sumedef) + %construction_weight*construction(%construction) - %mhindrance_weight*maneuvering hindrance(%mhindrance) - %shindrance_weight*stealth hindrance(%shindrance))
echo
echo Armor Quality/Weight: %qpointsaw (armor quality(%qpointsa) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %atype (%weight stones): puncture: %puncturep/%puncturea, slice: %slicep/%slicea, impact: %impactp/%impacta, fire: %firep/%firea, cold: %coldp/%colda, electric: %electricp/%electrica, hindrance: %mhindrance/%shindrance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%atype	%area	%composition	%noun	%tap	%qpointsa	%qpointsaw	%weight	%sumdef	%sumpro	%sumabs	%sumpdef	%sumedef	%mhindrance	%shindrance	%construction	%sumhin	%puncturep	%puncturea	%slicep	%slicea	%impactp	%impacta	%firep	%firea	%coldp	%colda	%electricp	%electrica	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%atype	%area	%composition	%noun	%tap	%qpointsa	%qpointsaw	%weight	%sumdef	%sumpro	%sumabs	%sumpdef	%sumedef	%mhindrance	%shindrance	%construction	%sumhin	%puncturep	%puncturea	%slicep	%slicea	%impactp	%impacta	%firep	%firea	%coldp	%colda	%electricp	%electrica	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Protection + Absorption: %sumdef
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Protection: %sumpro (mean: %meanpro)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Absorption: %sumabs (mean: %meanabs)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Defense: %sumpdef (mean: %meanpdef)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Defense: %sumedef (mean: %meanedef)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Hindrance: %sumhin (mean: %meanhin)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Armor Quality: %qpointsa (%sumpro_weight*total protection(%sumpro) + %sumabs_weight*total absorption(%sumabs) + %sumpdef_weight*total physical defense(%sumpdef) + %sumedef_weight*total elemental defense(%sumedef) + %construction_weight*construction(%construction) - %mhindrance_weight*maneuvering hindrance(%mhindrance) - %shindrance_weight*stealth hindrance(%shindrance))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Armor Quality/Weight: %qpointsaw (armor quality(%qpointsa) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %atype (%weight stones): puncture: %puncturep/%puncturea, slice: %slicep/%slicea, impact: %impactp/%impacta, fire: %firep/%firea, cold: %coldp/%colda, electric: %electricp/%electrica, hindrance: %mhindrance/%shindrance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

container:
send get my yardstick
waitforre ^You glance|^You quietly|^Considering the security around get|^You are already holding that
send open my %1 %2
waitforre ^You glance|^You quietly|^Considering the security around open your|^That is already open|^You can't do that
send measure my %1 %2 with yardstick
wait
pause .5
gosub Dimensionset
evalmath volume %ilsize * %iwsize * %ihsize
echo
echo Stats for %tap
echo
echo interior length: %ilsize
echo interior width: %iwsize
echo interior height: %ihsize
echo carrying capacity: %csize stones
echo volume: %volume (%ilsize * %iwsize * %ihsize)
echo
echo
echo %appcostk	%sourcetype	%source	%tap	%ilsize	%iwsize	%ihsize	%csize	%wearloc	%weight	Elanthipedia
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%tap	%ilsize	%iwsize	%ihsize	%csize	%wearloc	%weight	Elanthipedia
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt interior length: %ilsize
put #log >ItemStatsReader-%logtype-$charactername.txt interior width: %iwsize
put #log >ItemStatsReader-%logtype-$charactername.txt interior height: %ihsize
put #log >ItemStatsReader-%logtype-$charactername.txt carrying capacity: %csize stones
put #log >ItemStatsReader-%logtype-$charactername.txt volume: %volume (%ilsize * %iwsize * %ihsize)
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

Dimensionset:
if %ilsize = one then var ilsize 1
if %ilsize = two then var ilsize 2
if %ilsize = three then var ilsize 3
if %ilsize = four then var ilsize 4
if %ilsize = five then var ilsize 5
if %ilsize = six then var ilsize 6
if %ilsize = seven then var ilsize 7
if %ilsize = eight then var ilsize 8
if %ilsize = nine then var ilsize 9
if %ilsize = ten then var ilsize 10
if %ilsize = eleven then var ilsize 11
if %ilsize = twelve then var ilsize 12
if %ilsize = thirteen then var ilsize 13
if %ilsize = fourteen then var ilsize 14
if %ilsize = fifteen then var ilsize 15
if %ilsize = sixteen then var ilsize 16
if %ilsize = seventeen then var ilsize 17
if %ilsize = eighteen then var ilsize 18
if %ilsize = nineteen then var ilsize 19
if %ilsize = twenty then var ilsize 20
if %ilsize = twenty-one then var ilsize 21
if %ilsize = twenty-two then var ilsize 22
if %ilsize = twenty-three then var ilsize 23
if %ilsize = twenty-four then var ilsize 24
if %ilsize = twenty-five then var ilsize 25
if %ilsize = twenty-six then var ilsize 26
if %ilsize = twenty-seven then var ilsize 27
if %ilsize = twenty-eight then var ilsize 28
if %ilsize = twenty-nine then var ilsize 29
if %ilsize = thirty then var ilsize 30
if %iwsize = one then var iwsize 1
if %iwsize = two then var iwsize 2
if %iwsize = three then var iwsize 3
if %iwsize = four then var iwsize 4
if %iwsize = five then var iwsize 5
if %iwsize = six then var iwsize 6
if %iwsize = seven then var iwsize 7
if %iwsize = eight then var iwsize 8
if %iwsize = nine then var iwsize 9
if %iwsize = ten then var iwsize 10
if %iwsize = eleven then var iwsize 11
if %iwsize = twelve then var iwsize 12
if %iwsize = thirteen then var iwsize 13
if %iwsize = fourteen then var iwsize 14
if %iwsize = fifteen then var iwsize 15
if %iwsize = sixteen then var iwsize 16
if %iwsize = seventeen then var iwsize 17
if %iwsize = eighteen then var iwsize 18
if %iwsize = nineteen then var iwsize 19
if %iwsize = twenty then var iwsize 20
if %iwsize = twenty-one then var iwsize 21
if %iwsize = twenty-two then var iwsize 22
if %iwsize = twenty-three then var iwsize 23
if %iwsize = twenty-four then var iwsize 24
if %iwsize = twenty-five then var iwsize 25
if %iwsize = twenty-six then var iwsize 26
if %iwsize = twenty-seven then var iwsize 27
if %iwsize = twenty-eight then var iwsize 28
if %iwsize = twenty-nine then var iwsize 29
if %iwsize = thirty then var iwsize 30
if %ihsize = one then var ihsize 1
if %ihsize = two then var ihsize 2
if %ihsize = three then var ihsize 3
if %ihsize = four then var ihsize 4
if %ihsize = five then var ihsize 5
if %ihsize = six then var ihsize 6
if %ihsize = seven then var ihsize 7
if %ihsize = eight then var ihsize 8
if %ihsize = nine then var ihsize 9
if %ihsize = ten then var ihsize 10
if %ihsize = eleven then var ihsize 11
if %ihsize = twelve then var ihsize 12
if %ihsize = thirteen then var ihsize 13
if %ihsize = fourteen then var ihsize 14
if %ihsize = fifteen then var ihsize 15
if %ihsize = sixteen then var ihsize 16
if %ihsize = seventeen then var ihsize 17
if %ihsize = eighteen then var ihsize 18
if %ihsize = nineteen then var ihsize 19
if %ihsize = twenty then var ihsize 20
if %ihsize = twenty-one then var ihsize 21
if %ihsize = twenty-two then var ihsize 22
if %ihsize = twenty-three then var ihsize 23
if %ihsize = twenty-four then var ihsize 24
if %ihsize = twenty-five then var ihsize 25
if %ihsize = twenty-six then var ihsize 26
if %ihsize = twenty-seven then var ihsize 27
if %ihsize = twenty-eight then var ihsize 28
if %ihsize = twenty-nine then var ihsize 29
if %ihsize = thirty then var ihsize 30
return

return:
return

end:
put #class racial on
put #play ScriptEnd
put #flash
put #parse SCRIPT DONE
exit