eval players replace("$roomplayers", "Also here: ", ", ")
eval players replace("%players", " and", ",")
eval players replace("%players", ".", ", ")
eval players replacere("%players", " who is kneeling,", ",")
eval players replacere("%players", " who is lying down,", ",")
eval players replacere("%players", " who is prone,", ",")
eval players replacere("%players", " who is sitting,", ",")
eval players replacere("%players", " who is sleeping,", ",")
eval players replacere("%players", " who has a \S+ visage,", ",")
eval players replacere("%players", " who is bathed in pale golden sunlight,", ",")
eval players replacere("%players", " who is behind a plexus of azure lines,", ",")
eval players replacere("%players", " who is covered with whitened ridges,", ",")
eval players replacere("%players", " who is darkened by an unnatural shadow,", ",")
eval players replacere("%players", " who is emanating a \S+ holy aura,", ",")
eval players replacere("%players", " who is flickering with fire motes,", ",")
eval players replacere("%players", " who is haloed in a double rainbow,", ",")
eval players replacere("%players", " who is in a globe of blue fire,", ",")
eval players replacere("%players", " who is in an? \S+ \S+ cage,", ",")
eval players replacere("%players", " who is mounted on .+ horse,", ",")
eval players replacere("%players", " who is radiating an? \S+ aura,", ",")
eval players replacere("%players", " who is shining with a dark golden glow,", ",")
eval players replacere("%players", " who is shrouded by swirling \S+ fog,", ",")
eval players replacere("%players", " who is shrouded in ghostly flames,", ",")
eval players replacere("%players", " who is surrounded by a fiery mantle,", ",")
eval players replacere("%players", " who is surrounded by a.+shimmering shield,", ",")
eval players replacere("%players", " who is surrounded by \S+ circling blades? of ice,", ",")
eval players replacere("%players", " who is swathed in shimmering sunbeams,", ",")
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
gosub teach
if %players != "|" then goto Loop
exit

RemoveLoop:
eval number count("%players", "|%player|")
eval players replace("%players", "|%player|", "|")
eval players replace("%players", "||" "|")
evalmath count %count + %number
if !contains("%players", "|%player|") then return
goto RemoveLoop

teach:
counter subtract 1
put teach $class to %player
waitforre ^I could not find who you were referring to|^That person is too busy teaching|^You begin to lecture|^You have already offered to teach|does not have the necessary training to learn Empathy\.$|is already listening to you|is already trying to teach someone else|is listening to someone else|is not paying attention to you
if %c = 0 then return
goto teach