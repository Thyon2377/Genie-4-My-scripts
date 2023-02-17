
put remove camb anklet

Start:
pause .5
put prep compost 15
pause 2
put charge camb anklet 4
pause
put invoke camb anklet
pause 3
put collect grass
pause
waitfor You feel fully prepared
pause 2
put cast
pause 3
put prep athletic 12
pause 1
put charge camb anklet 4
pause 3
put invoke camb anklet
pause
waitfor You feel fully prepared
pause 1
put cast
pause 3
put prep ey 14
pause 2
put charge camb anklet 4
pause 3
put invoke camb anklet
pause
waitfor You feel fully prepared
pause 1
put cast
pause 3
send perc
pause 
if ($mana < 15) then gosub mana.wait
goto Start

mana.wait:
  if ($mana > 85) then return
  echo
  echo WAITING ON MANA
  echo
  pause 5
  goto mana.wait