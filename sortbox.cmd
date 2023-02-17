action goto exit when ^I don't know what you are referring to|^While it's closed

setvar trunk 0
setvar strongbox 0
setvar skippet 0
setvar crate 0
setvar coffer 0
setvar chest 0
setvar casket 0
setvar caddy 0
setvar box 0

check:

ACTION setvar trunk 1 WHEN ^You rummage through.+and see.+trunk
ACTION setvar strongbox 1 WHEN ^You rummage through.+and see.+strongbox
ACTION setvar skippet 1 WHEN ^You rummage through.+and see.+skippet
ACTION setvar crate 1 WHEN ^You rummage through.+and see.+\bcrate\b
ACTION setvar coffer 1 WHEN ^You rummage through.+and see.+coffer
ACTION setvar chest 1 WHEN ^You rummage through.+and see.+\bchest\b
ACTION setvar casket 1 WHEN ^You rummage through.+and see.+casket
ACTION setvar caddy 1 WHEN ^You rummage through.+and see.+caddy
ACTION setvar box 1 WHEN ^You rummage through.+and see.+(?<!(cedar|lacquered|rosewood|small iron|writer's) )\bbox\b

put rummage in my $GH_CONTAINER_BOX_CONTAINER
matchre startsort ^You rummage through
matchre exit ^I don't know what you are referring to|^While it's closed
matchwait 1

startsort:
pause 2
if %trunk = 1 then gosub sort trunk
if %strongbox = 1 then gosub sort strongbox
if %skippet = 1 then gosub sort skippet
if %crate = 1 then gosub sort crate
if %coffer = 1 then gosub sort coffer
if %chest = 1 then gosub sort chest
if %casket = 1 then gosub sort casket
if %caddy = 1 then gosub sort caddy
if %box = 1 then gosub sort box
goto exit

sort:
put sort $0 in my $GH_CONTAINER_BOX_CONTAINER
waitforre ^All items|^You may only sort|^What were you|^Please rephrase that command
return

exit:
put #parse SCRIPT DONE
exit