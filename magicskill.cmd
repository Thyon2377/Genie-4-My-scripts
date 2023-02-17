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

echo
echo Primary Magic Weight: %pmweight
echo Magic Skill Weight: %skillweight
echo
echo Effective Ranks In:
echo
echo Targeted Magic: $TMSkill1 ($TMSkill2 sorcery)
echo Debilitation: $DebSkill1 ($DebSkill2 sorcery)
echo Warding: $WardSkill1 ($WardSkill2 sorcery)
echo Augmentation: $AugSkill1 ($AugSkill2 sorcery)
echo Utility: $UtiSkill1 ($UtiSkill2 sorcery)
echo
echo Debilitation and Warding: $DebWardSkill1 ($DebWardSkill2 sorcery)
echo Debilitation and Augmentation: $DebAugSkill1 ($DebAugSkill2 sorcery)
echo Debilitation and Utility: $DebUtiSkill1 ($DebUtiSkill2 sorcery)
echo Warding and Augmentation: $WardAugSkill1 ($WardAugSkill2 sorcery)
echo Warding and Utility: $WardUtiSkill1 ($WardUtiSkill2 sorcery)
echo Augmentation and Utility: $AugUtiSkill1 ($AugUtiSkill2 sorcery)
echo
put #parse MAGICSKILLDONE