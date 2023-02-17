put #script pause all except Debil
Start:
pause 1
send prep $debil 
waitfor You feel fully prepared
send cast %1
pause
put prep $debil 
waitfor You feel fully prepared
put cast second %1
pause
put prep $debil 
waitfor You feel fully prepared
put cast third %1
pause
put prep $debil 
waitfor You feel fully prepared
put cast fourth %1
pause
put #script resume all except Debil
goto Start
##exit