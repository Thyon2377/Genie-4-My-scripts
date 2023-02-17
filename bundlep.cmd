#debuglevel 10

send get bundle
waitforre ^You pick up|^You are already holding that|^But that is already in your inventory|^What were you referring to
send get bundling rope from $pack
waitforre ^You get some bundling rope|^What were you referring to

setvar barb 0
setvar hide 0
setvar hoof 0
setvar pelt 0
setvar scalp 0
setvar skin 0

ACTION setvar barb 1 WHEN ^You rummage through.+and see.+\bbarb\b
ACTION setvar hide 1 WHEN ^You rummage through.+and see.+\bhide\b
ACTION setvar hoof 1 WHEN ^You rummage through.+and see.+\bhoof\b
ACTION setvar pelt 1 WHEN ^You rummage through.+and see.+\bpelt\b
ACTION setvar scalp 1 WHEN ^You rummage through.+and see.+\bscalp\b
ACTION setvar skin 1 WHEN ^You rummage through.+and see.+\bskin\b

send rummage in $pack
waitforre ^You rummage through|^I don't know what you are referring to

if %barb = 1 then gosub GetSkin barb
if %hide = 1 then gosub GetSkin hide
if %hoof = 1 then gosub GetSkin hoof
if %pelt = 1 then gosub GetSkin pelt
if %scalp = 1 then gosub GetSkin scalp
if %skin = 1 then gosub GetSkin skin
goto end

GetSkin:
var skin $0

GetSkin2:
pause .5
put get %skin from $pack
matchre bundle ^You get
matchre return ^What were you referring to
matchwait 2
return

Bundle:
pause .5
put bundle %skin
matchre GetSkin2 ^You bundle up|^You carefully fit
matchre return ^That's not going to work
goto GetSkin2
matchwait 2
return

return:
return

end:
send wear my bundle