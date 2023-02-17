eval players replace("$roomplayers", "Also here: ", ", ")
eval players replace("%players", " and", ",")
eval players replace("%players", ".", ", ")
eval players replacere("%players", " who is kneeling,", ",")
eval players replacere("%players", " who is lying down,", ",")
eval players replacere("%players", " who is prone,", ",")
eval players replacere("%players", " who is sitting,", ",")
eval players replacere("%players", " who is sleeping,", ",")
eval players replacere("%players", " who has coalesced into a battle of light and shadow, each warring for dominance,", ",")
eval players replacere("%players", " who is bathed in pale golden sunlight,", ",")
eval players replacere("%players", " who is behind a plexus of azure lines,", ",")
eval players replacere("%players", " who is being harassed by an intrigue of phantasmal kittens,", ",")
eval players replacere("%players", " who is blurred by hazy afterimages,", ",")
eval players replacere("%players", " who is covered in layers of filth and surrounded by a cloud of putrescence,", ",")
eval players replacere("%players", " who is covered with whitened ridges,", ",")
eval players replacere("%players", " who is darkened by an unnatural shadow,", ",")
eval players replacere("%players", " who is emanating a \S+ holy aura,", ",")
eval players replacere("%players", " who is flickering with fire motes,", ",")
eval players replacere("%players", " who is followed by a rabid confusion of smirking weasels,", ",")
eval players replacere("%players", " who is haloed in a double rainbow,", ",")
eval players replacere("%players", " who is in a globe of blue fire,", ",")
eval players replacere("%players", " who is in an? \S+ \S+ cage,", ",")
eval players replacere("%players", " who is mounted on .+ horse,", ",")
eval players replacere("%players", " who is radiating an? \S+ aura,", ",")
eval players replacere("%players", " who is sheathed in an aura of crackling electricity,", ",")
eval players replacere("%players", " who is shining with a dark golden glow,", ",")
eval players replacere("%players", " who is shrouded by swirling \S+ fog,", ",")
eval players replacere("%players", " who is shrouded in ghostly flames,", ",")
eval players replacere("%players", " who is surrounded by a band of twittering songbirds,", ",")
eval players replacere("%players", " who is surrounded by a fiery mantle,", ",")
eval players replacere("%players", " who is surrounded by a.+shimmering shield,", ",")
eval players replacere("%players", " who is surrounded by \S+ circling blades? of ice,", ",")
eval players replacere("%players", " who is swathed in shimmering sunbeams,", ",")
eval players replacere("%players", " who is trailed by a discombobulated shadow jumping in and out of view,", ",")
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
put look %player features
waitforre ^You see|^I could not find what you were referring to|^\w+ is totally enveloped in|^\w+ seems to be wrapped in dark shadows|^Through a shadowy black haze|^Through a shimmering|^The pale beads hold a mild tinge of purple from the oils rubbed into them during polishing\.$
put profile %player
waitfor %player
if %c = 0 then return
goto group