put get my Compendium
put open my Compendium
pause 1

studycomp:
match studycomp wait
matchre turncomp /Roundtime|need to study/i
put study my Compendium
matchwait

turncomp:
match turncomp wait
match checkexp You turn
put turn my Compendium
matchwait

checkexp:
match checkexp wait
match done 34/34
match studycomp EXP HELP
put exp FA
matchwait

done:
put turn my Compendium to elothean
pause
put close my Compendium
pause
put stow my Compendium
echo that is about all ya need for the Compendium
exit