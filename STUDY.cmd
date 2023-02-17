put get my $book
put open my $book
pause 1

studycomp:
match studycomp wait
matchre turncomp /Roundtime|need to study/i
put study my $book
matchwait

turncomp:
match turncomp wait
match checkexp You turn
put turn my $book
matchwait

checkexp:
match checkexp wait
match done 34/34
match studycomp EXP HELP
put exp FA
matchwait

done:
put turn my $book to elothean
pause
put close my $book
pause
put stow my $book
echo that is about all ya need for the $book
exit