action var fullprep yes when ^You feel fully prepared to cast your spell
action var cambrinthfull yes; var currentmana $cambrinth.capacity when only absorbing part of the energy while the rest dissipates harmlessly\.$|^The.+is already holding as much power as you could possibly charge it with\.$
action goto cast when ^Normally, smart magicians would attempt to harness a positive amount of streams
var fullprep no
setvariable currentmana 0
setvariable chargecount 0
setvariable harnesscount 0
setvariable cambrinthfull no
setvariable mana $min.%1
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

if_2 goto start

put release %1
pause .5
put #class research off

start:
if $mana < 70 then waiteval $mana >= 70

send prepare %1 $half.%1
waitforre ^$PREP_MESSAGE
put #var last.prepared $preparedspell
echo Casting $last.prepared at $half.%1 mana

casttimer:
if %fullprep = no then waiteval %fullprep = yes

cast:
put #var lastmana %currentmana
send cast %2 %3