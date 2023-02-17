evalmath FEE 1 - %2/100

echo
echo Starting Currency:
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

Start = Final / Exchange / (1-Fee)

evalmath KROLIR ceiling(%1/.8/%FEE)
evalmath KRODOK ceiling(%1/.7216/%FEE)

echo
echo Exchange fee used: %2%
echo
echo Need %1 Lirums? Withdraw %KROLIR Kronars
echo
echo Need %1 Dokoras? Withdraw %KRODOK Kronars
echo
goto end

Lirums:

evalmath LIRKRO ceiling(%1/1.25/%FEE)
evalmath LIRDOK ceiling(%1/.902/%FEE)

echo
echo Exchange fee used: %2%
echo
echo Need %1 Kronars? Withdraw %LIRKRO Lirums
echo
echo Need %1 Dokoras? Withdraw %LIRDOK Lirums
echo
goto end

Dokoras:

evalmath DOKKRO ceiling(%1/(1/.7216)/%FEE)
evalmath DOKLIR ceiling(%1/(1/.902)/%FEE)

echo
echo Exchange fee used: %2%
echo
echo Need %1 Kronars? Withdraw %DOKKRO Dokoras
echo
echo Need %1 Lirums? Withdraw %DOKLIR Dokoras
echo
goto end


end: