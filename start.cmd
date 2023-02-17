#debuglevel 10
put echo $date $time ($gametime)

put #setvar connected 1
put #class arrive off
put #class racial on
put #class rp on
put #class combat off
put #class joke off
put #class joust off
put #class shop off
put who full
waitforre ^Staff On Duty:$
put /expecho on
put /expecho rtwarn off
put #mapper reset


send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

put info
waitforre ^Debt:$
put exp 1
waitforre ^EXP HELP for more information

put language Common
waitforre ^You switch|^But you are already|^You are already
put ESP send general
waitforre ^You prepare to project your thoughts into the General channel|^You are already sending thoughts to the General channel|^You need a source of telepathy|^Please rephrase that command

send invfix
waitforre ^\.+Done$|^Please wait for at least fifteen minutes between usages of this verb\.\s+Thank you!$

put .awaken
waitfor SCRIPT DONE
put .currset
waitfor SCRIPT DONE
put .sortbox
waitfor SCRIPT DONE
put .sortgem
waitfor SCRIPT DONE

send sort automatic headtotoe
waitforre ^Your inventory is now arranged
put stance set 0 0 100 0
waitforre ^Setting your Evasion stance to
put stance set 100 0 100 0
waitforre ^Setting your Evasion stance to
send dodge
wait
pause .25

put #var save
put #clear ooc
put #clear main