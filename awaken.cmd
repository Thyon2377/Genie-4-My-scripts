put #class arrive off
put #class racial on
put #class rp on
put #class combat off
put #class joust off
put /timers end all

put avoid all
waitforre ^All
put avoid !dancing
waitforre ^You're now avoiding
put awaken
waitforre ^You awaken|^But you

put open my $sheath
waitforre ^You|^That|^The|^What were you referring to
put open $pack
waitforre ^You|^That|^The|^What were you referring to
put close my gem pouch
waitforre ^You|^That|^The|^What were you referring to

put demeanor $demeanor
waitforre ^You adopt|^You decide|^You show|^You love

put #parse SCRIPT DONE
exit