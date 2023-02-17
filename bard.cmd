put rem EARCUFF

Start:
put prep PG %1
pause 3
put charge EARCUFF 3
pause 4
put invoke EARCUFF
pause 4
waitfor You feel fully prepared
put cast
pause 4
goto Start