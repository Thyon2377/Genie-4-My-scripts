
echo ##############################
echo # START AT HAVEN TOWN SQUARE #
echo ##############################

timer:
	timer clear
	timer start
goto Start

Start:
put #goto 203
waitfor Stone Bridge
pause 3
put #goto 79
waitfor North Bank
put #goto 21
waitfor Stone Road

RivertoCrossing:
pause
put #goto 74
waitfor whitewashed wooden fence
gosub findtrail

CrossingtoFerry:
put #goto 267
waitfor gates of the Crossing
gosub findtrail

FerrytoFen:
put #goto 77
waitfor stream
gosub findtrail

FentoMistwood:
move south
gosub findtrail

MistwoodtoFen:
put #goto 1
waitfor a lightning-blasted stump
gosub findtrail

FentoBoarClan:
put #goto 263
waitfor Trail Above the Fens
put #goto 68
waitfor Blocked Canyon
gosub findtrail

BoarClantoCanyon:
pause .5
gosub findtrail

CanyontoMistwood:
pause .5
put #goto 125
waitfor Blufe Path
put #goto 76
waitfor A fallen log
gosub findtrail

GoHome:
pause .5
put look
gosub RossmantoRiverhaven

 ####  trail running  ####
findtrail:
 matchre findtrail ^\.\.\.wait|^Sorry,
 match gotrail You notice a trailmarker
 put scout trail
 matchwait
gotrail:
 pause
 matchre gotrail ^\.\.\.wait|^Sorry,
 match endtrail You set off into the wilds
 put go trail
 matchwait
endtrail:
 matchre traildone ^As your journey ends|^Your body feels|^\*\* AUTOTENDER DONE \*\*|^A good positive attitude never hurts\.
 matchwait
traildone:
 pause 0.3
 return
####

RossmantoRiverhaven:
pause .5
put #goto Riverhaven
waitfor South Bank
put #goto Riverhaven
waitfor Trodden Path
put #goto Riverhaven
waitfor River Road West
put #goto 203
waitfor Stone Bridge
pause 1
move ne
move n
goto Exit

Exit:
ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
exit


