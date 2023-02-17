echo
echo Convert from:
echo
echo 1. Ranks to Exp RP
echo
echo 2. Exp RP to Ranks
echo
echo Enter number:
echo

matchre ExpRP ^1
matchre Ranks ^2
matchwait

ExpRP:

evalmath degree1 (%1-200)
evalmath degree2 (%1-300)
if %1 <= 9 then var exprp lowly novice
if %1 <= 19 and %1 > 9 then var exprp promising novice
if %1 <= 29 and %1 > 19 then var exprp able novice
if %1 <= 39 and %1 > 29 then var exprp trained novice
if %1 <= 49 and %1 > 39 then var exprp full novice
if %1 <= 59 and %1 > 49 then var exprp beginning practitioner
if %1 <= 69 and %1 > 59 then var exprp competent practitioner
if %1 <= 79 and %1 > 69 then var exprp proficient practitioner
if %1 <= 89 and %1 > 79 then var exprp experienced practitioner
if %1 <= 99 and %1 > 89 then var exprp skilled practitioner
if %1 <= 109 and %1 > 99 then var exprp beginning dilettante
if %1 <= 119 and %1 > 109 then var exprp competent dilettante
if %1 <= 129 and %1 > 119 then var exprp proficient dilettante
if %1 <= 139 and %1 > 129 then var exprp experienced dilettante
if %1 <= 149 and %1 > 139 then var exprp skilled dilettante
if %1 <= 159 and %1 > 149 then var exprp beginning aficionado
if %1 <= 169 and %1 > 159 then var exprp competent aficionado
if %1 <= 179 and %1 > 169 then var exprp proficient aficionado
if %1 <= 189 and %1 > 179 then var exprp experienced aficionado
if %1 <= 199 and %1 > 189 then var exprp skilled aficionado
if %1 <= 299 and %1 > 199 then var exprp adept (%degree1 degrees)
if %1 <= 399 and %1 > 299 then var exprp expert (%degree2 degrees)
if %1 <= 419 and %1 > 399 then var exprp professional
if %1 <= 439 and %1 > 419 then var exprp exceptional professional
if %1 <= 459 and %1 > 439 then var exprp outstanding professional
if %1 <= 479 and %1 > 459 then var exprp renowned professional
if %1 <= 499 and %1 > 479 then var exprp true professional
if %1 <= 519 and %1 > 499 then var exprp authority
if %1 <= 539 and %1 > 519 then var exprp exceptional authority
if %1 <= 559 and %1 > 539 then var exprp outstanding authority
if %1 <= 579 and %1 > 559 then var exprp renowned authority
if %1 <= 599 and %1 > 579 then var exprp true authority
if %1 <= 619 and %1 > 599 then var exprp genius
if %1 <= 639 and %1 > 619 then var exprp exceptional genius
if %1 <= 659 and %1 > 639 then var exprp outstanding genius
if %1 <= 679 and %1 > 659 then var exprp renowned genius
if %1 <= 699 and %1 > 679 then var exprp true genius
if %1 <= 719 and %1 > 699 then var exprp savant
if %1 <= 739 and %1 > 719 then var exprp distinguished savant
if %1 <= 759 and %1 > 739 then var exprp venerated savant
if %1 <= 779 and %1 > 759 then var exprp exalted savant
if %1 <= 799 and %1 > 779 then var exprp transcendent savant
if %1 <= 819 and %1 > 799 then var exprp master
if %1 <= 839 and %1 > 819 then var exprp distinguished master
if %1 <= 859 and %1 > 839 then var exprp venerated master
if %1 <= 879 and %1 > 859 then var exprp exalted master
if %1 <= 899 and %1 > 879 then var exprp transcendent master
if %1 <= 919 and %1 > 899 then var exprp grand master
if %1 <= 939 and %1 > 919 then var exprp distinguished grand master
if %1 <= 959 and %1 > 939 then var exprp venerated grand master
if %1 <= 979 and %1 > 959 then var exprp exalted grand master
if %1 <= 999 and %1 > 979 then var exprp transcendent grand master
if %1 <= 1249 and %1 > 999 then var exprp guru
if %1 >= 1250 then var exprp legend

ExpRPDone:
echo
echo %1 ranks: %exprp
echo
goto end

Ranks:

echo
echo Exp RP Range:
echo
echo 1. Novice		8. Authority
echo 2. Practitioner		9. Genius
echo 3. Dilettante		10. Savant
echo 4. Aficionado		11. Master
echo 5. Adept		12. Grand Master
echo 6. Expert		13. Guru
echo 7. Professional		14. Legend
echo
echo Enter number:
echo

matchre Savant ^10
matchre Master ^11
matchre GrandMaster ^12
matchre Guru ^13
matchre Legend ^14
matchre Novice ^1
matchre Practitioner ^2
matchre Dilettante ^3
matchre Aficionado ^4
matchre Adept ^5
matchre Expert ^6
matchre Professional ^7
matchre Authority ^8
matchre Genius ^9
matchwait

Novice:

echo
echo lowly novice:		0-9 ranks
echo promising novice:	10-19 ranks
echo able novice:		20-29 ranks
echo trained novice:		30-39 ranks
echo full novice:		40-49 ranks
echo
goto end

Practitioner:

echo
echo beginning practitioner:		50-59 ranks
echo competent practitioner:	60-69 ranks
echo proficient practitioner:		70-79 ranks
echo experienced practitioner:	80-89 ranks
echo skilled practitioner:		90-99 ranks
echo
goto end

Dilettante:

echo
echo beginning dilettante:		100-109 ranks
echo competent dilettante:		110-119 ranks
echo proficient dilettante:		120-129 ranks
echo experienced dilettante:	130-139 ranks
echo skilled dilettante:		140-149 ranks
echo
goto end

Aficionado:

echo
echo beginning aficionado:		150-159 ranks
echo competent aficionado:		160-169 ranks
echo proficient aficionado:		170-179 ranks
echo experienced aficionado:	180-189 ranks
echo skilled aficionado:		190-199 ranks
echo
goto end

Adept:

echo
echo 0-99th degree adept: 200-299 ranks
echo
goto end

Expert:

echo
echo 0-99th degree expert: 300-399 ranks
echo
goto end

Professional:

echo
echo professional:			400-419 ranks
echo exceptional professional:	420-439 ranks
echo outstanding professional:	440-459 ranks
echo renowned professional:	460-479 ranks
echo true professional:		480-499 ranks
echo
goto end

Authority:

echo
echo authority:			500-519 ranks
echo exceptional authority:		520-539 ranks
echo outstanding authority:		540-559 ranks
echo renowned authority:		560-579 ranks
echo true authority:			580-599 ranks
echo
goto end

Genius:

echo
echo genius:			600-619 ranks
echo exceptional genius:	620-639 ranks
echo outstanding genius:	640-659 ranks
echo renowned genius:	660-679 ranks
echo true genius:		680-699 ranks
echo
goto end

Savant:

echo
echo savant:		700-719 ranks
echo distinguished savant:	720-739 ranks
echo venerated savant:	740-759 ranks
echo exalted savant:	760-779 ranks
echo transcendent savant:	780-799 ranks
echo
goto end

Master:

echo
echo master:		800-819 ranks
echo distinguished master:	820-839 ranks
echo venerated master:	840-859 ranks
echo exalted master:	860-879 ranks
echo transcendent master:	880-899 ranks
echo
goto end

GrandMaster:

echo
echo grand master:			900-919 ranks
echo distinguished grand master:	920-939 ranks
echo venerated grand master:	940-959 ranks
echo exalted grand master:		960-979 ranks
echo transcendent grand master:	980-999 ranks
echo
goto end

Guru:

echo
echo guru: 1000-1249 ranks
echo
goto end

Legend:

echo
echo legend: 1250+ ranks
echo
goto end

end: