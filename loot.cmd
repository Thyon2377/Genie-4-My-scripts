##LOOT Variables
var gweths (lantholite|waermodi|jadeite|lasmodi|sjatmal) stones
var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes coffer|crate|strongbox|caddy|casket|skippet|trunk|chest|\bbox
var junkloot runestone|scroll|tablet|vellum|sheiska leaf|ostracon|hhr'lav'geluhh bark|papyrus roll|smudged parchment|lockpick|fragment|package
var collectibles dira|kirmhiro draught|\bmap\b|package|seastars?|soulstone|(?<!crossbow) \bbolts?\b|flarmencrank|\bgear\b|glarmencoupler|\bnuts?\b|rackensprocket|spangleflange

echo ** Enter Loot Option # ***
echo
echo 1. Coins
echo
echo 2. Gems
echo
echo 3. Boxes
echo
echo 4. Collectibles (Except Cards)
echo
echo 5. Cards
echo
echo 6. Herbs
echo
echo 7. Junk

matchre Coins 1
matchre Gems 2
matchre Boxes 3
matchre Collectibles 4
matchre Cards 5
matchre Herbs 6
matchre Junk 7
matchwait

Coins:

GET_COIN:
send get coin
matchre GET_COIN ^You pick up
matchre end ^What were you referring to
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
matchre end ^You get|^What were you referring to
matchwait 2

Boxes:

CHECK_BOX:
if matchre ("$roomobjs", "(%boxes)") then goto GET_BOX
NO_BOXES:
goto end

GET_BOX:
var BOX $1
put get %BOX
waitforre ^You
put put my %BOX in my $GH_CONTAINER_BOX_CONTAINER
waitforre ^You
goto CHECK_BOX

Collectibles:

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

Cards:

CHECK_CARD:
if matchre ("$roomobjs", "(card|cards)") then goto GET_CARD
NO_CARDS:
goto end

GET_CARD:
put get card
waitforre ^You
put stow card
waitforre ^You
goto CHECK_CARD

Herbs:

CHECK_HERB:
if (matchre ("$roomobjs", "\b(%herbs)\b(,|\.| and)")) then goto GET_HERB
NO_HERBS:
goto end

GET_HERB:
var HERB $1
put get %HERB
waitforre ^You
put stow %HERB
waitforre ^You
goto CHECK_HERB

Junk:

CHECK_JUNK:
if (matchre ("$roomobjs", "\b(%junkloot)\b(,|\.| and)")) then goto GET_JUNK
NO_JUNKS:
goto end

GET_JUNK:
var JUNK $1
put get %JUNK
waitforre ^You
put stow %JUNK
waitforre ^You
goto CHECK_JUNK

end:
send stow my bar
waitforre ^You put your bar|^Stow what