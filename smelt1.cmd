put get stirring rod
put get %1 ingot
match start You get a %1
match start You get an %1 
matchwait

start:
put put %1 ingot in crucible
put get %1 nugget
match end What were you referring to?
pause 2
put put %1 nugget in crucible
put stir crucible with my rod
match bellow As you finish the fire flickers and is unable to consume its fuel.
match shovel As you complete working the fire dies down and needs more fuel.
match turn Upon finishing you observe clumps of molten metal accumulating along the crucible's sides.
match stir Roundtime:
matchwait

stir:
put stir crucible with my rod
match bellow As you finish the fire flickers and is unable to consume its fuel.
match shovel As you complete working the fire dies down and needs more fuel.
match turn Upon finishing you observe clumps of molten metal accumulating along the crucible's sides.
match endcheck You can only mix a crucible if it has something inside of it.
match stir Roundtime:
matchwait

bellow:
put get my bellow
pause 1
put push bellow
match stowbellow Roundtime:
matchwait

stowbellow:
put put bellow in my pack
match stir You put your bellows
matchwait

shovel:
put get my shovel
put push fuel with my shovel
match stowshovel Roundtime:
matchwait

stowshovel:
put put shovel in my baldric
match stir You put your shovel
matchwait

turn:
put turn crucible
match stir Roundtime:
matchwait

endcheck:
put tap my %1 nugget
match start You tap a
match end I could not find
matchwait

end:
put get ingot from crucible
echo You have finished smelting %1 nuggets