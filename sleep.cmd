put #class arrive off
put #class racial on
put #class rp on
put #class combat off
put #class joust off

put stance set 0 0 100 0
waitforre ^Setting your Evasion stance to
put stance set 100 0 100 0
waitforre ^Setting your Evasion stance to
send dodge
wait
pause .25

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

send stow right
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

send stow left
waitforre ^You put|^Stow what|^There isn't|^The .+ is too long to fit in the|^There isn't any more room

send stop teach
waitforre ^You stop|^But you

send stop listen
waitforre ^You stop|^But you

send release all
waitforre ^You aren't harnessing any mana|^You aren't holding any mana|^You aren't preparing a spell|^You have no cyclic spell active to release|^You let your concentration lapse and feel the spell's energies dissipate|^You release the mana you were holding

send avoid !all
waitforre ^All AVOID options turned on
send sleep
waitforre ^You relax|^You are already

put close my $sheath
waitforre ^You|^That|^The|^What were you referring to
put close $pack
waitforre ^You|^That|^The|^What were you referring to
put close my gem pouch
waitforre ^You|^That|^The|^What were you referring to

send demeanor cold
waitforre ^You decide

send .idle