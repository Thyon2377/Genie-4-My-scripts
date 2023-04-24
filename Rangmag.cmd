
put remove camb earcuff

Start:
if ($Utility.Learning.Rate > 33) then goto Augment
pause .5
put prep compost 12
pause 2
put charge camb earcuff 4
pause
put invoke camb earcuff
pause 3
put collect grass
pause 20
put cast
pause 3
if ($mana < 15) then gosub mana.wait
goto Start

Augment:
if ($Augmentation.Learning.Rate > 33) then goto Warding
put prep WS 11
pause 1
put charge camb earcuff 4
pause 3
put invoke camb earcuff
pause
waitfor You feel fully prepared
pause 5
put cast
if ($mana < 15) then gosub mana.wait
goto Start
pause 3


Warding:
if ($Warding.Learning.Rate > 33) then goto Start
put prep maf 13
pause 2
put charge camb earcuff 4
pause 3
put invoke camb earcuff
pause
waitfor You feel fully prepared
pause 5
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