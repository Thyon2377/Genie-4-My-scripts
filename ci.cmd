action goto fail when ^You cannot play.+in your current physical condition

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

send get my %1 from my $pack
waitforre ^You get|^You are already holding|^What were you referring to

send get my cloth from my $pack
waitforre ^You get|^You are already holding|^What were you referring to

wring:
send wring my cloth
matchre wipe ^You wring a dry.+cloth into a twisted rope, then shake it out again
matchwait 1
pause
goto wring

wipe:
send wipe my %1 with my cloth
matchre clean not in need of drying\.$
matchwait 1
pause
goto wipe

clean:
send clean my %1 with my cloth
matchre wring2 not in need of cleaning\.$
matchwait 1
pause
goto clean

wring2:
send wring my cloth
matchre end ^You wring a dry.+cloth into a twisted rope, then shake it out again
matchwait 1
pause
goto wring2

fail:
send put my %1 in my $pack
waitforre ^You put your
exit

end:
send put my cloth in my $pack
waitforre ^You put your|^What were you referring to
send put my %1 in my $pack
waitforre ^You put your
exit