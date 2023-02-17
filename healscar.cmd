action var fullprep yes when ^You feel fully prepared to cast your spell
evalmath harness.heal round(($half.heal) / 2)
evalmath harness.hw round(($half.hw) / 3)
evalmath harness.hs round(($half.hs) / 3)

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

cast:
send prepare heal
var fullprep no
pause 2

send charge $cambrinth %harness.heal
wait
pause

send charge $cambrinth %harness.heal
wait
pause

send invoke $cambrinth
wait
pause

casttimer:
if $spelltime >= 12 then
{
goto castspell
}
pause
goto casttimer

castspell:
send cast scar
matchre end ^Your wounds are completely healed|^Your scars are completely healed|^Your body is completely healed
matchwait 1

if $mana < 40 then waiteval $mana >= 40
goto cast

end:
echo ***** You have no more scars *****
put #play ScriptEnd