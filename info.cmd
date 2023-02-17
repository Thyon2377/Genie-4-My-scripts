put #setvar connected 1
put #class arrive off
put #class racial on
put #class rp on
put #class combat off
put #class joust off
put #clear main

put info
waitforre ^Debt:$
put exp 1
waitforre ^EXP HELP for more information
put spells
waitforre ^You can use SPELL STANCE|^You know no spells|^You have yet to recieve any training in the magical arts
put title list $guild
waitforre ^The following titles of the|^There are no titles you may choose from that category|^I could not find that category
put title list racial
waitforre ^The following titles of the|^There are no titles you may choose from that category|^I could not find that category

put #var save
exit