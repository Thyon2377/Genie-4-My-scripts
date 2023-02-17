put #window close Familiar
var LOOP 0
var poison 1
var disease 1
action var poison 0 when ^Your patient does not have any poison in their body|^%1 does not have any poison
action var disease 0 when ^Your patient does not have any disease|^%1 does not have any disease
put #var patient %1
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

PatientWounds:
send touch %1
waitforre ^%1.+vitality\.$|^%1.+vitality.+\)\.$
if %poison = 1 then
{
send take %1 quick poison
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
}
if %disease = 1 then
{
send take %1 quick disease
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
}
send take %1 quick all internals
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
send take %1 quick all scars
waitforre ^You touch %1|^You \S+ touch %1|^You (lay|rest) your hand on %1
exit