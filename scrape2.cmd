# scrape2.cmd
# Takes all scraped hides in scraped.hides container, cures them and puts them in curing.hides container.
# Usage:  .scrape2 <citter type> <hide type>
# .scrape2 gargoyle hide
#
# Default value descriptions:
# tools - the container with your lotion in it
# scraped.hides - the container with your scraped hides
# curing.hides - the container to put your curing hides into
# lotion - noun for lotion to use

var tools Rucksack
var scraped.hides Rucksack
var curing.hides bundle
var lotion lotion

var critter %1
var hide %2

get_lotion:
put put %lotion in my %tools
put put %critter %hide in my %scraped.hides
put get %lotion from my %tools
pause .5

pour_start:
match done What were you referring to?
match pour You get a cleaned
match pour You get some cleaned
pause .5
put bundle my %critter %hide
put get %critter %hide from my %scraped.hides
matchwait

pour:
pause .5

match get_lotion Pour what?
match pour_start You pour some of the salty solution onto the 
match pour_start You pour some of the pungent solution
put pour my %lotion on my %critter %hide
matchwait

done: