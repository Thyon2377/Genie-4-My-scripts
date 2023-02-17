#debuglevel 10
if "%1" = "noloot" then goto noloot
goto loot

noloot:
shift
var hunt.misc.set timer 300 power hunt appraise
goto weapons

loot:
var hunt.misc.set appr buff hunt lootcoins lootgems


weapons:
if "%1" = "1" then var weapons sword
if "%1" = "2" then var weapons sword|spear|morning-star|mace|throw hammer|jambiya
eval total count("%weapons", "|"))
math total add 1

counter set 0
if matchre("%weapons(%c)", "(wind.cross|for.cross)") then var hunt.mset "%hunt.misc.set.crossbow %weapons(%c)"
else
var hunt.mset "%hunt.misc.set %weapons(%c)"
counter add 1

start:
if matchre("%weapons(%c)", "(wind.cross|for.cross)") then var hunt.mset %hunt.mset "%hunt.misc.set.crossbow %weapons(%c)"
else
var hunt.mset %hunt.mset "%hunt.misc.set %weapons(%c)"
counter add 1
if %c = %total then goto exit
goto start

exit:
put .hunt mset %hunt.mset
pause 5
put #var save