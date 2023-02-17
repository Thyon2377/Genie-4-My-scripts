## Usage is .LUMB (stick, branch, limb) (tool container) (trash receptacle)



Action pause 1 put put %1 in bin;put saw in backpack When The wood is of such terrible quality that any such manipulation would destroy it completely.

Start:
SEND forage %1
pause
send .lumber %2 %1
waitfor You put your drawknife in your
pause 3
put put lumber in %3
pause 2
put skill engineer
     waitforre (\d+)/34
     if $1 < 33 then goto Start

pause 3
 craftFinished:
ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
exit                               