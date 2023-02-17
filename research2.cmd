put #queue clear
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
put #class research on
if_1 setvariable CompanionScript %1

put /sort magic
waitforre ^EXP HELP for more information

send justice
waitforre ^After assessing the area, you think local law enforcement keeps an eye on what's going on here\.$|^After assessing the area, you believe there is some kind of unusual law enforcement in this area\.$|^You're fairly certain this area is lawless and unsafe\.$

send research status
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything

action goto Exit when ^Breakthrough!$|^You decide to cancel your project about|^Distracted by your spellcasting, you forget what you were researching\.$|^Distracted by your devices, you forget what you were researching\.$|^Distracted by combat, you forget what you were researching\.$|^You have abandoned your research project entirely\.$|^You require some special means of analyzing the mana streams in order to begin research\.$|^Your eyes briefly darken\.\s+When you regain sight, the graphs and sigils previously impressed upon your vision have disappeared\.$
echo
echo Select Option:
echo
echo 1. Fundamental Research:		Primary Magic ($Primary_Magic.LearningRate/34), Arcana ($Arcana.LearningRate/34)
echo 2. Mana Stream Theory:		Attunement ($Attunement.LearningRate/34)
echo 3. High Energy Spellcasting*:	Attunement ($Attunement.LearningRate/34) (justice: $Justice)
echo 4. Augmentation Patterns:		Augmentation ($Augmentation.LearningRate/34)
echo 5. Utility Patterns Research:		Utility ($Utility.LearningRate/34)
echo 6. Warding Patterns Research:	Warding ($Warding.LearningRate/34)
echo 7. Sorcerous Research*:		Sorcery ($Sorcery.LearningRate/34) (justice: $Justice)
echo 8. Mana Field Theory:		Primary Magic ($Primary_Magic.LearningRate/34), Attunement ($Attunement.LearningRate/34), Sorcery ($Sorcery.LearningRate/34)
echo 9. Spell Research: 			Augmentation ($Augmentation.LearningRate/34), Utility ($Utility.LearningRate/34), Warding ($Warding.LearningRate/34)
echo
echo Enter Number:

matchre Fundamental ^1$
matchre Stream ^2$
matchre Energy ^3$
matchre Augmentation ^4$
matchre Utility ^5$
matchre Warding ^6$
matchre Sorcery ^7$
matchre Field ^8$
matchre Spell ^9$
matchwait

Fundamental:
put #var researchproject fundamental
goto Research1

Stream:
put #var researchproject stream
goto Research1

Energy:
put #var researchproject energy
goto Research1

Augmentation:
put #var researchproject augmentation
goto Research1

Utility:
put #var researchproject utility
goto Research1

Warding:
put #var researchproject warding
goto Research1

Sorcery:
put #var researchproject sorcery
goto Research1

Field:
put #var researchproject field
goto Research1

Spell:
put #var researchproject spell
goto Research1

Research1:
if_1 gosub CompanionScriptAbort
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway
pause .5
send research $researchproject 30
pause .5
if_1 gosub CompanionScriptStart
waitforre ^You make definite progress in your project about (Fundamental Research|Augmentation Patterns Research|Mana Stream Theory|Sorcerous Research|Utility Patterns Research|Warding Patterns Research|High Energy Spellcasting|Mana Field Theory|Spell Research) and decide to take a break\.\s+However, there is still more to learn before you arrive at a breakthrough\.$|^You have completed.+of a project about (Fundamental Research|Augmentation Patterns Research|Mana Stream Theory|Sorcerous Research|Utility Patterns Research|Warding Patterns Research|High Energy Spellcasting|Mana Field Theory|Spell Research)\.$|^As time passes, you forget some of the finer points about your project about (Fundamental Research|Augmentation Patterns Research|Mana Stream Theory|Sorcerous Research|Utility Patterns Research|Warding Patterns Research|High Energy Spellcasting|Mana Field Theory|Spell Research)\.$
send research status
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything
goto Research1

CompanionScriptAbort:
put #script abort %CompanionScript
pause .5
return

CompanionScriptStart:
pause .5
put .%CompanionScript
pause .5
return

Exit:
exit