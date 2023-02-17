#remedy - alchemy remedies
# usage .remedy <RemsType> <RemsItem> <RemsHerb1> <RemsHerb2> <RemsMaterial> 
# <RemsCatalyst> <toolcontainer> <bookcontainer>
# Thats right the script has 8 inputs. Its the only way to handle both solids and 
# liquids with one script.
#
# where <RemsType> 1 = Solid or 2 = liquid or 0 after initialzation - this controls use 
# of bowl/mortar stick/pestle and crush/mix use 1 or 2 only.
# 1 = solid = mortar/pestle. 2 = liquid = bowl/stick.
# <RemsItem> is salve, cream, ungent, balm, ointment, poultice (The solids)
# or is tonic, wash, potion, draught, and elixir (The liquids).
# <RemsHerb1> first herb needed.
# <RemsHerb2> second herb if needed or put none.
# <RemsMaterial> is water or alcohol.
# <RemsCatalyst> is the catalyst type (electrum, etc).
# <toolcontainer> where tools and items start.
# <bookcontainer> where the carving book is located.
# catalysts so far are - Pewter, niniam, orichalchum, coal, Muracite, electrum, 
# Niello, and seolarn weed
# note: pewter, niniam, orichalchum, muracite, electrum, and Niello should all be
# in refined ingot form for best results but might also be in bar or nugget
# or fragment, etc. form. Coal will be in nugget form, and when you use 
# seolarn weed it must be crushed and will simply be called Seolarn or crushed 
# seolarn but just use seolarn as the variable.
#
# example .remedy 1 salve flowers jadice water ingot bag pack (this is itch salve)
# .remedy 1 salve nilos none water nugget bag pack (this is abdomen salve)
# .remedy 2 tonic flowers muljin water seolarn bag pack (This is stomach tonic)
# .remedy 2 potion yelith none water ingot bag pack (This is limb potion)
# .remedy 2 draught hulij none alcohol seolarn bag pack (This is face draught)
#
# Note this script is set up for stormfront. To make it run for the wizard, 
# change setvariable toolrem tooltypes to save tooltypes. Then change the line
# goto myrem2%toolrs to goto myrem2%s, and change put put my %toolrs in my %7
# to put put my %s in my %7 and it will run in the wizard.
#
# This script assumes you have a mixing bowl, mixing stick, mortar, pestle, water or 
# alcohol, catalyst, and herbs in your remedy container in the quantities needed 
# for the item or items you will make. Second have your remedy book open to the correct
# page for what you are making and in your remedy bookcontainer. Everything is either
# mixed or crushed in alchemy. The book container can be the same container as the 
# tools and herb container. Note make sure if its a simple remedy that you only have
# either red flowers or blue flowers in the container and not both. It just gets 
# flowers. Note to get proper amounts of herbs use MARK ITEM AT NUMBER, then BREAK ITEM.
#
# The script will then get the book and study it, then get the mortar or bowl and
# begin the process.
#

RemedyStart:
# Select tool to use (mortar/pestle) or (bowl/stick)
goto mixtype%1

#
# Liquids
#
mixtype2:
put get remed book from my %8
waitfor You get
pause 1
put study my book
waitfor Roundtime
pause 1
put put my remed book in my %8
waitfor You put
pause 1
put get my bowl from my %7
waitfor You get
pause 1
put get %3 from my %7
waitfor You get
pause 1
put put my %3 in my bowl
waitfor You put
pause 1
put get my stick from my %7
waitfor You get
setvariable toolrs stick
# save stick
pause 1
put mix my bowl with my stick
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

CrushMain2:
pause 1
goto myrem2%toolrs
# goto myrem2%s
myrem2sieve:
pause 2
put put my sieve in my %7
waitfor You put
pause 1
put get my stick from my %7
waitfor You get
setvariable toolrs stick
# save stick
myrem2stick:
pause 1
put mix my bowl with my stick
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Alchsp2:
Watersp2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %5 from my %7
waitfor You get
pause 1
put pour part %5 in my bowl
waitfor You toss
pause 1
put put my %5 in my %7
waitfor You put
pause 1
put get stick from my %7
waitfor You get
setvariable toolrs stick
# save stick
pause 1
put analyze my %2
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Herb2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %4 from my %7
waitfor You get
pause 1
put put my %4 in my bowl
waitfor You vigorously rub
setvariable toolrs stick
# save stick
pause 1
put get my stick from my %7
waitfor You get
pause 1
put mix my bowl with my stick
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Catalyst2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %6 from my %7
waitfor You get
pause 1
put put my %6 in my bowl
waitfor You vigorously rub
pause 1
put put my %6 in my %7
waitfor You put
setvariable toolrs stick
# save stick
pause 1
put get my stick from my %7
waitfor You get
pause 1
put analyze my %2
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Turn2:
pause 1
put turn my bowl
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Smell2:
pause 1
put smell my %2
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Interesting thought really
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Sieve2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
setvariable toolrs sieve
# save sieve
pause 1
put get my sieve from my %7
waitfor You get
pause 1
put push my %2 with my sieve
match Watersp2 You need another splash of water to continue crafting
match Alchsp2 You need another splash of alcohol to continue crafting
match Herb2 You need another prepared herb to
match Turn2 Clumps of material stick to the sides
match Turn2 Once finished you notice clumps of material
match Smell2 As you finish, the mixture begins to transition colors
match Smell2 takes on an odd hue
match Sieve2 Upon completion you see some particulate clouding up the mixture
match Sieve2 A thick froth coats
match Catalyst2 You need another catalyst material to
match Donerem2 Applying the final touches, you complete working
match Donerem2 Try as you might, you just
match CrushMain2 appears free of defects that would
match CrushMain2 You do not see anything that would prevent
match CrushMain2 composition looks accurate
match CrushMain2 Roundtime
matchwait

Stamp2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my stamp from my %8
put mark my %2 with my stamp
waitfor Roundtime
pause 1
put put my stamp in my %8
waitfor You put
pause 1
put get %2 from my bowl
waitfor You get
pause 1
put put my bowl in my %7
waitfor You put
pause 1
echo

echo = One Alchemy %2 is completed.
echo

exit

Donerem2:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get %2 from my bowl
waitfor You get
pause 1
put put my bowl in my %7
waitfor You put
pause 1
echo

echo = One Alchemy %2 is completed.
echo

exit

#
# Solids
#
mixtype1:
put get remed book from my %8
waitfor You get
pause 1
put study my book
waitfor Roundtime
pause 1
put put my remed book in my %8
waitfor You put
pause 1
put get my mortar from my %7
waitfor You get
pause 1
put get %3 from my %7
waitfor You get
pause 1
put put my %3 in my mortar
waitfor You put
pause 1
put get my pestle from my %7
waitfor You get
setvariable toolrs pestle
# save pestle
pause 1
put crush my %3 with my pestle
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

CrushMain1:
pause 1
goto myrem%toolrs
# goto myrem%s
myremsieve:
pause 2
put put my sieve in my %7
waitfor You put
pause 1
put get pestle from my %7
waitfor You get
setvariable toolrs pestle
# save pestle
myrempestle:
pause 1
put crush my %2 with my pestle
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Alchsp1:
Watersp1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %5 from my %7
waitfor You get
pause 1
put pour part %5 in my mortar
waitfor You toss
pause 1
put put my %5 in my %7
waitfor You put
pause 1
put get pestle from my %7
waitfor You get
setvariable toolrs pestle
# save pestle
pause 1
put analyze my %2
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Herb1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %4 from my %7
waitfor You get
pause 1
put put my %4 in my mortar
waitfor You vigorously rub
setvariable toolrs pestle
# save pestle
pause 1
put get my pestle from my %7
waitfor You get
pause 1
put crush my %2 with my pestle
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Catalyst1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my %6 from my %7
waitfor You get
pause 1
put put my %6 in my mortar
waitfor You vigorously rub
pause 1
put put my %6 in my %7
waitfor You put
setvariable toolrs pestle
# save pestle
pause 1
put get my pestle from my %7
waitfor You get
pause 1
put analyze my %2
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Turn1:
pause 1
put turn my mortar
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Smell1:
pause 1
put smell my %2
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Sieve1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
setvariable toolrs sieve
# save sieve
pause 1
put get my sieve from my %7
waitfor You get
pause 1
put push my %2 with my sieve
match Watersp1 You need another splash of water to continue crafting
match Alchsp1 You need another splash of alcohol to continue crafting
match Herb1 You need another prepared herb to
match Turn1 Clumps of material stick to the sides
match Turn1 Once finished you notice clumps of material
match Smell1 As you finish, the mixture begins to transition colors
match Smell1 takes on an odd hue
match Sieve1 Upon completion you see some particulate clouding up the mixture
match Sieve1 A thick froth coats
match Catalyst1 You need another catalyst material to
match Donerem1 Applying the final touches, you complete working
match Donerem1 Interesting thought really
match CrushMain1 appears free of defects that would
match CrushMain1 You do not see anything that would prevent
match CrushMain1 composition looks accurate
match CrushMain1 Roundtime
matchwait

Stamp1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get my stamp from my %8
put mark my %2 with my stamp
waitfor Roundtime
pause 1
put put my stamp in my %8
waitfor You put
pause 1
put get %2 from my mortar
waitfor You get
pause 1
put put my mortar in my %7
waitfor You put
pause 1
echo

echo = One Alchemy %2 is completed.
echo

exit

Donerem1:
pause 2
put put my %toolrs in my %7
# put put my %s in my %7
waitfor You put
pause 1
put get %2 from my mortar
waitfor You get
pause 1
put put my mortar in my %7
waitfor You put
pause 1
echo

echo = One Alchemy %2 is completed.
echo

exit