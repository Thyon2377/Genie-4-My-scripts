




#knit
# parameters are Knit <container1> <container2> <item>
# <Container1> - is where you keep tools and materials.
# <Container2> - is where you keep the tailoring book.
# <item> - is the item to be made.
#
# Example:
# .knit bag pack towel
#

put get tailoring book from my %2
put study my book
waitfor Roundtime
pause 2
put put my tailoring book in my %2
waitfor You put
put get knit needles from my %1
put get yarn from my %1
waitfor You get
pause 1
put knit my yarn with my needles
waitfor Roundtime
pause 2
put put my yarn in my %1

Start:
Pause 1
Match Turn Now the needles must be turned
Match Turn Some ribbing should be added
Match Push Next the needles must be pushed
Match Push ready to be pushed
Match Cast The garment is nearly complete and now must be cast off
Match Good Roundtime
put knit my needles
matchwait

Good:
pause 1
goto Start

Turn:
Pause 1
Match Turn Now the needles must be turned
Match Turn Some ribbing should be added
Match Push Next the needles must be pushed
Match Push ready to be pushed
Match Cast The garment is nearly complete and now must be cast off
Match Good Roundtime
put turn my needles
matchwait

Push:
Pause 1
Match Turn Now the needles must be turned
Match Turn Some ribbing should be added
Match Push Next the needles must be pushed
Match Push ready to be pushed
Match Cast The garment is nearly complete and now must be cast off
Match Good Roundtime
put push my needles
matchwait

Cast1:
put cast my needles
waitfor Roundtime
Pause 1
put put my needles in my %1
put get stamp from my %1
waitfor You get
pause 1
put mark my %3 with my stamp
waitfor Roundtime
pause 1
put put my stamp in my %1
pause 1
ECHO *****************************************************
ECHO * You have completed one knitted %3
ECHO * Rerun the script and make sure you have
ECHO * everything you need to make the next item
ECHO *****************************************************
exit

Cast:
put cast my needles
waitfor Roundtime
pause 1
put put my needles in my %1
pause 1
ECHO *****************************************************
ECHO * You have completed one knitted %3
ECHO * Rerun the script and make sure you have
ECHO * everything you need to make the next item
ECHO *****************************************************
exit