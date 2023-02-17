#var percussioninst zills
#var percussionsong aria
#var save
#trigger {^You finish playing} {#send play $percussionsong on my $percussioninst}
#alias {playp} {get my $percussioninst from my pack;play $percussionsong on my $percussioninst}
#alias {spl} {stop play}
send get my $percussioninst from my pack
waitforre ^You get|^You are already holding|^What were you referring to
send play $percussionsong on my $percussioninst
waitforre ^You begin|^You effortlessly begin|^You struggle|^You fumble|^You're already playing a song
