echo **************************************
echo ************USAGE:********************
echo **.crush2 <crushable_thing> <result>**
echo **************************************
echo **************************************
pause 5




put get mortar
loop:
put forage %1
match start You manage to find
match loop unable to find
match loop are certain
matchwait
pause 3


start:
put put my %1 in my mortar
pause 2
put get my pestle

crush:
##pause 2
put crush my %1 with my pestle
match drop Crush what?
match crush Roundtime
matchwait

drop:
##pause 1
put stow pestle
put get my %2 in my mortar
match drop2 You get
match loop What were you
matchwait

drop2:
put put my %2 in Statue
pause 1
put exp Alchemy
match loop EXP HELP
match Bedone 34/34
matchwait
put exp Alchemy

Bedone:
	pause 1
        put stow pestle
        pause .5
	put get flower from mort
        pause .5
	put drop flower
	pause 1
        put stow my mortar
	exit

done
