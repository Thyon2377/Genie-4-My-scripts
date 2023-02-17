#debuglevel 10
##LOOT Variables
var skins barb|hide|pelt|scalp|skin

send remove my bundle
waitforre ^You sling|^You remove|^Remove what
send get bundle
waitforre ^You pick up|^You are already holding that|^What were you referring to
send get bundling rope from $pack
waitforre ^You get some bundling rope|^What were you referring to

Skins:

CHECK_SKIN:
if (matchre ("$roomobjs", "\b(%skins)\b(,|\.| and)")) then goto GET_SKIN
NO_SKINS:
goto end

GET_SKIN:
var skin $1
put get %skin
waitforre ^You pick up
put bundle %skin
waitforre ^You bundle up|^You carefully fit
goto CHECK_SKIN

end:
send wear my bundle