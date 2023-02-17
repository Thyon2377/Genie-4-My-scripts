put #class bank off
evalmath Total %1
var Copper 0
var Bronze 0
var Silver 0
var Gold 5
var Platinum 0

evalmath Platinum floor(%Total / 10000)
evalmath Gold floor((%Total-(%Platinum*10000)) / 1000)
evalmath Silver floor((%Total-(%Platinum*10000)-(%Gold*1000)) / 100)
evalmath Bronze floor((%Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)) / 10)
evalmath Copper %Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)-(%Bronze*10)

if %Platinum > 0 then gosub withdrawp
if %Gold > 0 then gosub withdrawg
if %Silver > 0 then gosub withdraws
if %Bronze > 0 then gosub withdrawb
if %Copper > 0 then gosub withdrawc
goto end

withdrawp:
send withdraw %Platinum platinum
waitforre ^The clerk counts
return

withdrawg:
send withdraw %Gold gold
waitforre ^The clerk counts
return

withdraws:
send withdraw %Silver silver
waitforre ^The clerk counts
return

withdrawb:
send withdraw %Bronze bronze
waitforre ^The clerk counts
return

withdrawc:
send withdraw %Copper copper
waitforre ^The clerk counts
return

end:
send wealth
waitforre ^Wealth:$
put #class bank on
send balance
waitforre ^The clerk pages through|^The clerk flips through|^You are|^You find your jar with little effort, thankfully, and carefully count out the contents of it|^Searching methodically through the shelves, you finally manage to locate the jar labeled
put #parse SCRIPT DONE
exit