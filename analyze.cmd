top:
pause
put stow left
put stow
goto ana

wait:
pause
waitfor closes to
goto ana

ana:
pause
put anal
match ana ...wait
match ana You fail to
match advance You must be closer
match next analyze what
match gouge by landing a gouge
match punch by landing a punch
match kick by landing a kick
match claw by landing a claw
match elbow by landing an elbow
match slap by landing a slap
match advance You must be closer
matchwait

next:
pause
put face next
match next ...wait
match wait analyze what
match wait nothing else
match ana You turn to face
matchwait

advance:
pause
put attack
put attack
goto ana


punch:
pause
put punch
match punch ...wait
match ana roundtime
match wait there is nothing
match punch close enough
match loot balanced]
matchwait

kick:
pause
put kick
match kick ...wait
match ana roundtime
match wait nothing else
match kick close enough
match loot balanced]
matchwait

slap:
pause
put slap
match slap ...wait
match ana roundtime
match wait nothing else
match slap close enough
match loot balanced]
matchwait

gouge:
pause
put gouge
match gouge ...wait
match ana roundtime
match wait nothing else
match gouge close enough
match loot balanced]
matchwait

elbow:
pause
put elbow
match elbow ...wait
match ana roundtime
match wait nothing else
match elbow close enough
match loot balanced]
matchwait


claw:
pause
put claw
match claw ...wait
match ana roundtime
match wait nothing else
match claw close enough
match loot balanced]
matchwait

loot:
pause
put loot
goto exp

exp:
pause
put sk tactics
match change 34/34
match ana EXP HELP
matchwait

change:
pause
put .<<<insert script name here>>>