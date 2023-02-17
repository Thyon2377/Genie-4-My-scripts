action var fullprep yes when ^You feel fully prepared to cast your spell
setvariable fullprep no
setvariable mana $max.%1
put #var lastmana %mana
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

if_2 goto start

put release %1
pause .5
put #class research off

start:
if $mana < 100 then waiteval $mana >= 100

send remove $focusr
waitforre ^You remove|^You take off|^You aren't wearing that|^Remove what
send get $focusr from $pack
waitforre ^You get|^What were you referring to

if "%1" = "absolution" && "$GOL" = ON then
{
send release gol
waitforre ^Your increased sense of wellness|^RELEASE Options
}
send prepare %1 %mana
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at %mana mana

pause .5
send invoke $focusr
wait
pause .25

cast:
if %fullprep = no then waiteval %fullprep = yes
send cast %2 %3 %4
matchre backfire ^Your spell.+backfire[sd]
matchwait 1
put #var last.backfire no
goto exit

backfire:
put #log >SpellTest-$charactername.txt [$date $time] $last.prepared backfires at $lastmana mana	Augmentation: $Augmentation.Ranks	Utility: $Utility.Ranks	Warding: $Warding.Ranks	Debilitation: $Debilitation.Ranks	Targeted Magic: $Targeted Magic.Ranks	Life Magic: $Life Magic.Ranks	Sorcery: $Sorcery.Ranks	Attunement: $Attunement.Ranks	Arcana: $Arcana.Ranks
put #var last.backfire yes

exit:
send wear $focusr
waitforre ^You put on|^You are already wearing that|^Stow what
put #parse SCRIPT DONE