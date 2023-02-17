#%1 container to place completed ropes in, otherwise drops them on the ground

CHECK_IF_DONE:
match FORAGE EXP HELP
match DONE mind lock
put exp mechanical lore
matchwait

FORAGE:
MATCH BRAID you manage to f
MATCH FORAGE ...wait
put forage vine
MATCHWAIT

BRAID:
MATCH PULL You fumble around
MATCH PULL Frustration wells
MATCH PULL but you aren't sure that you are making progress
MATCH BRAID You carefully splice
MATCH BRAID Roundtime
MATCH BRAID You begin to carefully
MATCH BRAID isn't usable for anything
MATCH FORAGE You need to have more
MATCH BRAID ...wait
put braid my vine
MATCHWAIT

PULL:
MATCH PULL ...wait
MATCH DROP Roundtime
put pull my vine
MATCHWAIT

DROP:
pause 1
put put rope in %1
pause 1
put put rope in %1
put drop rope
GOTO CHECK_IF_DONE

DONE:
exit
