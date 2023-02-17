start:

put get %1 %2 from $get
matchre end from inside your|^What were you referring to
matchre stow ^You pick|^You get
matchwait

stow:
put put my %1 %2 in my $putcon
waitforre ^You put

goto start

end:
put stow my %1 %2