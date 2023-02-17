#debuglevel 10
################################################################################################
#
#                            Written by Old Wolf
#  This is a quick and dirty Astrology script for young Moon Mages. Once
#  you know most of your constellations and planets you should probably 
#  use something a little more robust.
#
#  To use, type observ sky, then pick a moon or the sun. something that's visible and then type 
#    .astro sun  
#    or 
#    .astro kat 
#  or whatever constellation or body you know, and let it run until locked or the object 
#  disappears from the sky.
#################################################################################################

start:
send prep pg 16
pause 20
send cast
pause .5
send prep cv 16
pause 22
send cast
pause .5
send prep aus 16
#pause 22
send cast
pause .5
send observe %1 in the sky
pause 22

        match magic You have a complete understanding of the celestial influences over magic.
        match lore You have a weak understanding of the celestial influences over lore.
        match offensive You have a complete understanding of the celestial influences over offensive combat.
        match defensive You have a complete understanding of the celestial influences defensive combat.
        match survival You have a weak understanding of the celestial influences over survival.
        match future You have a complete understanding of the celestial influences over future events.
        match start You feel you have sufficiently pondered your latest observation.
	send predict state all
	matchwait

magic:
pause 2
send align magic
pause 3
send predict future $charactername magic
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start

lore:
pause 2
send align lore
pause 3
send predict future $charactername lore
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start



offensive:
pause 2
send align offense
pause 3
send predict future $charactername offense
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start

defensive:
pause 2
send align defense
pause 3
send predict future $charactername defense
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start


survival:
pause 2
send align survival
pause 3
send predict future $charactername survival
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start

future:
pause 2
send align future
pause 3
send predict future $charactername future
pause 20
send predict anal
pause 20
waitfor You feel you have sufficiently pondered
goto start
