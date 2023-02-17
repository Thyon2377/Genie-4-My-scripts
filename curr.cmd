evalmath Total $lastbid
if_1 setvariable Total %1
var Copper 0
var Bronze 0
var Silver 0
var Gold 0
var Platinum 0

echo Convert From
echo
echo 1: Kronars
echo
echo 2: Lirums
echo
echo 3: Dokoras
echo
echo Enter Number:

matchre Kronars ^1
matchre Lirums ^2
matchre Dokoras ^3
matchwait

Kronars:

evalmath CKRONARS %Total
evalmath BKRONARS %Total/10
evalmath SKRONARS %Total/100
evalmath GKRONARS %Total/1000
evalmath PKRONARS %Total/10000
evalmath CLIRUMS ceiling(%Total*.8)
evalmath BLIRUMS ceiling(%Total*.8)/10
evalmath SLIRUMS ceiling(%Total*.8)/100
evalmath GLIRUMS ceiling(%Total*.8)/1000
evalmath PLIRUMS ceiling(%Total*.8)/10000
evalmath CDOKORAS ceiling(%Total*.7216)
evalmath BDOKORAS ceiling(%Total*.7216)/10
evalmath SDOKORAS ceiling(%Total*.7216)/100
evalmath GDOKORAS ceiling(%Total*.7216)/1000
evalmath PDOKORAS ceiling(%Total*.7216)/10000

evalmath Platinum floor(%Total / 10000)
evalmath Gold floor((%Total-(%Platinum*10000)) / 1000)
evalmath Silver floor((%Total-(%Platinum*10000)-(%Gold*1000)) / 100)
evalmath Bronze floor((%Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)) / 10)
evalmath Copper %Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)-(%Bronze*10)

echo %Total Kronars is equal to:
echo
echo copper Kronars: %CKRONARS
echo bronze Kronars: %BKRONARS
echo silver Kronars: %SKRONARS
echo gold Kronars: %GKRONARS
echo platinum Kronars: %PKRONARS
echo Coins: %Platinum Platinum, %Gold Gold, %Silver Silver, %Bronze Bronze, and %Copper Copper Kronars
echo
echo copper Lirums: %CLIRUMS
echo bronze Lirums: %BLIRUMS
echo silver Lirums: %SLIRUMS
echo gold Lirums: %GLIRUMS
echo platinum Lirums: %PLIRUMS
echo
echo copper Dokoras: %CDOKORAS
echo bronze Dokoras: %BDOKORAS
echo silver Dokoras: %SDOKORAS
echo gold Dokoras: %GDOKORAS
echo platinum Dokoras: %PDOKORAS

goto end

Lirums:
evalmath CLIRUMS %Total
evalmath BLIRUMS %Total/10
evalmath SLIRUMS %Total/100
evalmath GLIRUMS %Total/1000
evalmath PLIRUMS %Total/10000
evalmath CKRONARS floor(%Total*1.25)
evalmath BKRONARS floor(%Total*1.25)/10
evalmath SKRONARS floor(%Total*1.25)/100
evalmath GKRONARS floor(%Total*1.25)/1000
evalmath PKRONARS floor(%Total*1.25)/10000
evalmath CDOKORAS ceiling(%Total*.902)
evalmath BDOKORAS ceiling(%Total*.902)/10
evalmath SDOKORAS ceiling(%Total*.902)/100
evalmath GDOKORAS ceiling(%Total*.902)/1000
evalmath PDOKORAS ceiling(%Total*.902)/10000

evalmath Platinum floor(%Total / 10000)
evalmath Gold floor((%Total-(%Platinum*10000)) / 1000)
evalmath Silver floor((%Total-(%Platinum*10000)-(%Gold*1000)) / 100)
evalmath Bronze floor((%Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)) / 10)
evalmath Copper %Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)-(%Bronze*10)

echo %Total Lirums is equal to:
echo
echo copper Lirums: %CLIRUMS
echo bronze Lirums: %BLIRUMS
echo silver Lirums: %SLIRUMS
echo gold Lirums: %GLIRUMS
echo platinum Lirums: %PLIRUMS
echo Coins: %Platinum Platinum, %Gold Gold, %Silver Silver, %Bronze Bronze, and %Copper Copper Lirums
echo
echo copper Kronars: %CKRONARS
echo bronze Kronars: %BKRONARS
echo silver Kronars: %SKRONARS
echo gold Kronars: %GKRONARS
echo platinum Kronars: %PKRONARS
echo
echo copper Dokoras: %CDOKORAS
echo bronze Dokoras: %BDOKORAS
echo silver Dokoras: %SDOKORAS
echo gold Dokoras: %GDOKORAS
echo platinum Dokoras: %PDOKORAS

goto end

Dokoras:
evalmath CDOKORAS %Total
evalmath BDOKORAS %Total/10
evalmath SDOKORAS %Total/100
evalmath GDOKORAS %Total/1000
evalmath PDOKORAS %Total/10000
evalmath CKRONARS ceiling(%Total*(1/.7216))
evalmath BKRONARS ceiling(%Total*(1/.7216))/10
evalmath SKRONARS ceiling(%Total*(1/.7216))/100
evalmath GKRONARS ceiling(%Total*(1/.7216))/1000
evalmath PKRONARS ceiling(%Total*(1/.7216))/10000
evalmath CLIRUMS ceiling(%Total*(1/.902))
evalmath BLIRUMS ceiling(%Total*(1/.902))/10
evalmath SLIRUMS ceiling(%Total*(1/.902))/100
evalmath GLIRUMS ceiling(%Total*(1/.902))/1000
evalmath PLIRUMS ceiling(%Total*(1/.902))/10000

evalmath Platinum floor(%Total / 10000)
evalmath Gold floor((%Total-(%Platinum*10000)) / 1000)
evalmath Silver floor((%Total-(%Platinum*10000)-(%Gold*1000)) / 100)
evalmath Bronze floor((%Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)) / 10)
evalmath Copper %Total-(%Platinum*10000)-(%Gold*1000)-(%Silver*100)-(%Bronze*10)

echo %Total Dokoras is equal to
echo
echo copper Dokoras: %CDOKORAS
echo bronze Dokoras: %BDOKORAS
echo silver Dokoras: %SDOKORAS
echo gold Dokoras: %GDOKORAS
echo platinum Dokoras: %PDOKORAS
echo Coins: %Platinum Platinum, %Gold Gold, %Silver Silver, %Bronze Bronze, and %Copper Copper Dokoras
echo
echo copper Kronars: %CKRONARS
echo bronze Kronars: %BKRONARS
echo silver Kronars: %SKRONARS
echo gold Kronars: %GKRONARS
echo platinum Kronars: %PKRONARS
echo
echo copper Lirums: %CLIRUMS
echo bronze Lirums: %BLIRUMS
echo silver Lirums: %SLIRUMS
echo gold Lirums: %GLIRUMS
echo platinum Lirums: %PLIRUMS

goto end

end: