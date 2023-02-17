put #window close Familiar
var LOOP 0
var poison 1
var disease 1
action var poison 0 when ^Your patient does not have any poison in their body|^$patient does not have any poison
action var disease 0 when ^Your patient does not have any disease|^$patient does not have any disease
put #var patient $patient
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

PatientWounds:
send touch $patient
waitforre ^$patient.+vitality\.$|^$patient.+vitality.+\)\.$

send redirect all to %1 %2
waitforre ^You are now redirecting all wounds and scars to your

if %poison = 1 then
{
send take $patient quick poison
waitforre ^You touch $patient|^You \S+ touch $patient|^You (lay|rest) your hand on $patient
}
if %disease = 1 then
{
send take $patient quick disease
waitforre ^You touch $patient|^You \S+ touch $patient|^You (lay|rest) your hand on $patient
}
send take $patient everything quick
waitforre ^You touch $patient|^You \S+ touch $patient|^You (lay|rest) your hand on $patient
exit