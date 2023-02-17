# scrape.cmd
# Takes all raw hides in raw.hides container, scrapes them and puts them in scraped.hides container.
# Usage:  .scrape <citter type> <hide type> [speed]
# .scrape gargoyle hide
# .scrape gargoyle hide quick
#
# Default value descriptions:
# tools - the container with your scraper in it
# raw.hides - the container with your raw hides in it
# scraped.hides - the container to put your scraped hides
# scraped.hides2 - a second container to put your scraped hides in if the first becomes full
# trash - trash container to put hides you snag too many times
# speed - the speed in which you scrape (careful, normal, quick)

# Default values
var tools Rucksack
var raw.hides bundle
var scraped.hides Rucksack
var scraped.hides2 Bag
var trash bin
var speed normal

var critter %1
var hide %2
IF_3 setVariable speed %3

scrape_init:
put get scraper from my %tools

scrape_start:
match done What were you referring to?
match scrape You carefully remove
counter set 0
put get %critter %hide from my %raw.hides
matchwait

scrape:
pause .5

match scrape2 The hide looks as clean as you can make it
match scrape2 The skin looks as clean as you can make it
match scrape2 The pelt looks as clean as you can make it
match scrape2 The bones looks as clean as you can make it
match scrape cleaning some dirt and debris from it.
match scrape You carefully scrape
match dump marring the hide.
match scrape ...wait
put scrape %hide with scraper %speed
matchwait

dump:
counter add 1
if %c < 2 then goto scrape
put put my %critter %hide in %trash
goto scrape_start

scrape2:
pause .5

match scrape_start You put your
match swap_container That's too heavy to go in there!
match swap_container There isn't any more room in
match scrape2 ...wait
counter set 0
put put %critter %hide in my %scraped.hides
matchwait

swap_container:
if %scraped.hides = %scraped.hides2 goto out_of_room
var scraped.hides %scraped.hides2
goto scrape2

out_of_room:
echo *** Out of room to put scraped hides.

done: