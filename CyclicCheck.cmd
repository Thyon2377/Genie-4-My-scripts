if_1 goto setup
CyclicCheck:
#debug 10
action (assess) var combat 1 when ^You.*(pole|melee|missle).*range\.$
action (assess) off
if $mana < 70 then
{
put rel cyc
return
}
evalmath timeSinceLastCyclic $gametime - $LastCyclic
if %timeSinceLastCyclic < 280 then return
var combat 0
If $monstercount > 0 then
{
action (assess) on
put assess
pause 0.5
action (assess) off
}
goto SwitchCyclic

manawait:
pause 5
if $mana < 95 then goto manawait
return

SwitchCyclic:
var cyclics Warding|Utility|Augmentation|Debilitation|Targeted_Magic
precheck:
eval cyclics.length count("%cyclics","|")
counter set 0
spellcheck:
if %c <= %cyclics.length then
{
if "$%cyclics(%c)CycSpell" != "none" then
{
var low.cyclic %cyclics(%c)
counter add 1
goto skillcheck
}
counter add 1
goto spellcheck
}
echo You have no spells. You're doing it wrong.
exit

skillcheck:
if %c <= %cyclics.length then
{
if $%cyclics(%c).LearningRate < $%low.cyclic.LearningRate && "$%cyclics(%c)CycSpell" != "none" then
{
if "Debilitation" = "%cyclics(%c)" && %combat = 1 then var low.cyclic %cyclics(%c)
        if "Targeted_Magic" = "%cyclics(%c)" && %combat = 1 then var low.cyclic %cyclics(%c)
        if !contains("Debilitation|Targeted_Magic", "%cyclics(%c)") then var low.cyclic %cyclics(%c)
}

counter add 1
goto skillcheck
}
if $%low.cyclic.LearningRate > 30 then return
put #var CurrentCyclic %low.cyclic
goto recast


recast:
put rel cyc
put prep $%low.cyclicCycSpell $%low.cyclicCycMana
waitfor fully prepared
put cast $%low.cyclicCycTarget
put #var LastCyclic $gametime
return

setup:
put #var WardingCycSpell GJ
put #var WardingCycMana 3
put #var WardingCycTarget $charactername
put #var UtilityCycSpell CARE
put #var UtilityCycMana 4
put #var UtilityCycTarget $charactername
put #var AugmentationCycSpell FAE
put #var AugmentationCycMana 4
put #var AugmentationCycTarget $charactername
put #var DebilitationCycSpell AEWO
put #var DebilitationCycMana 4
put #var DebilitationCycTarget none
put #var Targeted_MagicCycSpell none
put #var Targeted_MagicCycMana none
put #var Targeted_MagicCycTarget none
put #var save