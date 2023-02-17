##LOOT Variables
var gweths (lantholite|waermodi|jadeite|lasmodi|sjatmal) stones
var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes coffer|crate|strongbox|caddy|casket|skippet|trunk|chest|\bbox
var junkloot runestone|scroll|tablet|vellum|sheiska leaf|ostracon|hhr'lav'geluhh bark|papyrus roll|smudged parchment|lockpick|fragment|package
var collectibles dira|kirmhiro draught|\bmap\b|package|seastars?|soulstone|(?<!crossbow) \bbolts?\b|flarmencrank|\bgear\b|glarmencoupler|\bnuts?\b|rackensprocket|spangleflange

Coins:
GET_COIN:
send get coin
matchre GET_COIN ^You pick up
matchre Gems ^What were you referring to
matchwait 2

Gems:
GET_GEM:
send stow gem
matchre GET_GEM ^You put your|^You open your
matchre GET_BAR ^Stow what|^You just can't get|^But that's closed|^You think the
matchwait 2

GET_BAR:
send stow my bar
waitforre ^You put your bar|^Stow what
send get bar
matchre GET_BAR ^You pick up
matchre Collectibles ^You get|^What were you referring to
matchwait 2

Collectibles:
send stow my bar
waitforre ^You put your bar|^Stow what
CHECK_collectible:
if matchre ("$roomobjs", "(%collectibles)") then goto GET_collectible
NO_collectibleS:
goto end

GET_collectible:
var COLLECTIBLE $1
put get %COLLECTIBLE
waitforre ^You
put stow %COLLECTIBLE
waitforre ^You
goto CHECK_collectible

end:
put #parse SCRIPT DONE
exit