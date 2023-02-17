var goal 30

counter set 0
var read 2
if "$zonename" = "The Crossing" then goto crossing
exit

crossing:
var books RcnEL2|RcnEL1|RcnOEG|RcnEE|RivRG|RivRD2|RivRD1|RcnP2|RcnP1|RcnGT3|RcnGT2|RcnGT1|RcnAGG|RcnGB2|RcnGB1|RmsGE2|RmsGE1|RcpGG|RxxGD|RxxDD2|RxxDD1
eval books.total count("%books", "|")
goto get.book

get.book:
if %c > %books.total then goto done
put get %books(%c)
waitforre ^You get
counter add 1
put open my book
waitforre ^You open
put read my book
pause 5
gosub read
goto get.book

read:
matchre next.book not a page in this book
put page %read
matchwait 6

math read add 1
goto read

next.book:
put q
pause 2
put put my book on shelf
waitforre ^You return
put exp
waitforre ^EXP HELP
if $Scholarship.LearningRate >= %goal then goto done
var read 2
return

done:
echo Either you're in a library not set up for this script, or you reached your goal