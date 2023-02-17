start:

put get %1 from junk hole
matchre end from inside your|^What were you referring to|^You must unload
matchre stow ^You pick|^You get|^You pull
matchwait

stow:
send put my %1 in my $putcon
waitforre ^You put|^Stow what

goto start

end:
send put my %1 in my $putcon
waitforre ^You put|^Stow what
put #parse SCRIPT DONE
exit