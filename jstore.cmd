action setvariable donationsraw $1 when ^You rummage.+and see (.+)\.$
send rummage %1 %2 %3
waitforre ^You rummage.+and see
echo %donationsraw

eval donations replace("%donationsraw", "You rummage (through|around on).+and see ", ", ")
eval donations replacere("%donations", " and (?!.*\,)", ", $1")
eval donations replace("%donations", ", ", "|")
var donations %donations
echo donations: %donations
eval total count("%donations", "|")
echo %total

Loop:
eval donation element("%donations", 0)
gosub Remove
action setvariable donation $1 when ^@(.+)$
eval donation replacere("%donation", "^\b(an?|some|the)\b ", "")
put #parse @%donation
gosub logitems
if %total >= 0 then goto Loop
exit

Remove:
eval donations replacere("%donations", "(%donation\||%donation$)", "~")
eval number count("%donations", "~")
eval donations replacere("%donations", "~", "")
eval donations replacere("%donations", "\|\|+", "|")
eval donations replacere("%donations", "^\|", "")
evalmath total %total - %number
return

logitems:
echo Donation: %donation (x%number)
return