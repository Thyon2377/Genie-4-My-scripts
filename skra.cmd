put language Common
waitforre ^You switch|^But you are already|^You are already

echo
echo MESSAGE TYPE
echo
echo 1:	Greeting
echo
echo 2:	Be well
echo
echo 3:	Good-bye
echo
echo 4:	How are you?
echo
echo Enter Message Number

matchre Greeting ^1
matchre Bewell ^2
matchre Bye ^3
matchre How ^4
matchwait

Greeting:
goto RelationshipGreet

Bewell:
goto RelationshipBewell

Bye:
goto RelationshipBye

How:
goto RelationshipHow

RelationshipGreet:

echo
echo FORM OF ADDRESS
echo
echo 1:	Q'alrin (outsider)
echo
echo 2:	Smolgan (friend)
echo
echo 3:	Ru'atin (inner circle)
echo
echo 4:	Pohan (deferential)
echo
echo Enter Form Number

matchre GreetQalrin ^1
matchre GreetSmolgan ^2
matchre GreetRuatin ^3
matchre GreetPohan ^4
matchwait

GreetQalrin:

put '}%1 Nido'a.
pause
goto end

GreetSmolgan:

put '}%1 Otoh em.
pause
goto end

GreetRuatin:

put '}%1 Aehhrki paar.
pause
goto end

GreetPohan:

put '}%1 Rath'agrkhhan aensmo'ku'par.
pause
goto end

RelationshipBewell:

echo
echo FORM OF ADDRESS
echo
echo 1:	Q'alrin (outsider)
echo
echo 2:	Smolgan (friend)
echo
echo 3:	Ru'atin (inner circle)
echo
echo 4:	Pohan (deferential)
echo
echo Enter Message Number

matchre BewellQalrin ^1
matchre BewellSmolgan ^2
matchre BewellRuatin ^3
matchre BewellPohan ^4
matchwait

BewellQalrin:

put '}%1 Esuna tel'rath'a.
pause
goto end

BewellSmolgan:

put '}%1 Esula em.
pause
goto end

BewellRuatin:

put '}%1 Esulaku aeama'hhrsk.
pause
goto end

BewellPohan:

put '}%1 Esusaku Peri'el.
pause
goto end

RelationshipBye:

echo
echo FORM OF ADDRESS
echo
echo 1:	Q'alrin (outsider)
echo
echo 2:	Smolgan (friend)
echo
echo 3:	Ru'atin (inner circle)
echo
echo 4:	Pohan (deferential)
echo
echo Enter Message Number

matchre ByeQalrin ^1
matchre ByeSmolgan ^2
matchre ByeRuatin ^3
matchre ByePohan ^4
matchwait

ByeQalrin:

put '}%1 Saagri.
pause
goto end

ByeSmolgan:

put '}%1 Ibu'rath'a.
pause
goto end

ByeRuatin:

put '}%1 Y'nerpar aensmo'ku'par.
pause
goto end

ByePohan:

put '}%1 Hav'roth sa'mahil'in.
pause
goto end

RelationshipHow:

echo
echo FORM OF ADDRESS
echo
echo 1:	Q'alrin (outsider)
echo
echo 2:	Smolgan (friend)
echo
echo 3:	Ru'atin (inner circle)
echo
echo 4:	Pohan (deferential)
echo
echo Enter Message Number

matchre HowQalrin ^1
matchre HowSmolgan ^2
matchre HowRuatin ^3
matchre HowPohan ^4
matchwait

HowQalrin:

put '}%1 Kulna ese?
pause
goto end

HowSmolgan:

put '}%1 Kula ese?
pause
goto end

HowRuatin:

put '}%1 Kulsa ese?
pause
goto end

HowPohan:

put '}%1 Rath'amahilin'hhn?
pause
goto end

end:

put language S'Kra