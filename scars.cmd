action var fullprep yes when ^You feel fully prepared to cast your spell
evalmath harness.heal round(($half.heal) / 2)
evalmath harness.hw round(($half.hw) / 3)
evalmath harness.hs round(($half.hs) / 3)

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

cast:
send prep heal
var fullprep no
pause 2

send charge my $cambrinth %harness.heal
wait
pause

send charge my $cambrinth %harness.heal
wait
pause

send invoke my $cambrinth
wait
pause

if %fullprep = no then waiteval %fullprep = yes
send cast scar
matchre end ^Your wounds are completely healed|^Your scars are completely healed|^Your body is completely healed
matchwait 1

if $mana < 70 then waiteval $mana >= 70
goto cast

end:
echo ***** You have no more scars *****
put #play ScriptEnd