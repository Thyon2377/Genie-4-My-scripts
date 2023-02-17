eval players replace("$roomplayers", "Also here: ", ", ")
eval players replace("%players", " and", ",")
eval players replace("%players", ".", ", ")
eval players replacere("%players", " who is kneeling,", ",")
eval players replacere("%players", " who is lying down,", ",")
eval players replacere("%players", " who is sitting,", ",")
eval players replacere("%players", " who has a fiery visage,", ",")
eval players replacere("%players", " who is behind a plexus of azure lines,", ",")
eval players replacere("%players", " who is emanating a benevolent holy aura,", ",")
eval players replacere("%players", " who is emanating a bright holy aura,", ",")
eval players replacere("%players", " who is emanating a malevolent holy aura,", ",")
eval players replacere("%players", " who is in a fiery crimson cage,", ",")
eval players replacere("%players", " who is in a geometric azure cage,", ",")
eval players replacere("%players", " who is radiating a glowing aura,", ",")
eval players replacere("%players", " who is shining with a dark golden glow,", ",")
eval players replacere("%players", " who is shrouded in ghostly flames,", ",")
eval players replacere("%players", " who is surrounded by a fiery mantle,", ",")
eval players replacere("%players", " who is surrounded by a shimmering shield,", ",")
eval players replacere("%players", " who is surrounded by a.+shimmering shield,", ",")
eval players replacere("%players", " who is who is mounted on .+ horse,", ",")
eval players replacere("%players", " who is surrounded by one circling blade of ice,", ",")
eval players replacere("%players", " who is surrounded by two circling blades of ice,", ",")
eval players replacere("%players", " who is surrounded by three circling blades of ice,", ",")
eval players replacere("%players", " who is surrounded by four circling blades of ice,", ",")
eval players replacere("%players", " who is surrounded by five circling blades of ice,", ",")
eval players replacere("%players", " who is surrounded by six circling blades of ice,", ",")
eval players replacere("%players", " who is surrounded by seven circling blades of ice,", ",")
eval players replacere("%players", ", [\w'-]+ ", ", ")
eval players replacere("%players", ", [\w'-]+ ", ", ")
eval players replacere("%players", ", [\w'-]+ ", ", ")
eval players replace("%players", ", ", "|")
var players %players
echo players: %players
eval total count("%players", "|")

Loop:
eval player element("%players", 1)
eval number count("%players", "|%player")
var count 0
gosub RemoveLoop
action setvariable player $1 when ^@.* (\S+)$
put #parse @%player
counter set %count
gosub group
if %players != "|" then goto Loop
exit

RemoveLoop:
eval number count("%players", "|%player|")
eval players replace("%players", "|%player|", "|")
eval players replace("%players", "||" "|")
evalmath count %count + %number
if !contains("%players", "|%player|") then return
goto RemoveLoop

group:
counter subtract 1
put group %player
waitforre is already in your group\.$|^You add \w+ to your group|^You ask \w+ to join your group|^I'm sorry, but who are you trying to add to your group
if %c = 0 then return
goto group