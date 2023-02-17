action goto fail when ^You cannot play the copper $percussioninst in your current physical condition

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

send get my $percussioninst from my $pack
waitforre ^You get|^You are already holding|^What were you referring to

send remove my $percussioninst
waitforre ^You slide a pair of|^You aren't wearing that|^Remove what

send get my $instrument_cloth from my $pack
waitforre ^You get|^You are already holding|^What were you referring to

wring:
send wring my $instrument_cloth
matchre wipe ^You wring a dry.+cloth into a twisted rope, then shake it out again
matchwait 1
pause
goto wring

wipe:
send wipe my $percussioninst with my $instrument_cloth
matchre clean not in need of drying\.$
matchwait 1
pause
goto wipe

clean:
send clean my $percussioninst with my $instrument_cloth
matchre wring2 not in need of cleaning\.$
matchwait 1
pause
goto clean

wring2:
send wring my $instrument_cloth
matchre end ^You wring a dry.+cloth into a twisted rope, then shake it out again
matchwait 1
pause
goto wring2

fail:
send put my $percussioninst in my $pack
waitforre ^You put your.+in your
exit

end:
send put my $instrument_cloth in my $pack
waitforre ^You put your|^What were you referring to
send play $percussionsong on my $percussioninst
waitforre ^You begin|^You effortlessly begin|^You struggle|^You fumble|^You're already playing a song
exit