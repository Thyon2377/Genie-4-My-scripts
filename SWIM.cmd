#Change the directions as desired. Must be opposit or the script will likely fail.
var firstDir w
var secondDir e

save %firstDir

Loop:
put %s
match SwitchDir You can't
match Loop Obvious
match Pause ...wait
matchwait

SwitchDir:
if %s = %firstDir then save %secondDir
else save %firstDir
goto Loop

Pause:
pause 1
goto Loop