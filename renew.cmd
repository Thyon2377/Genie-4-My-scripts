send get andesite icon from $pack
waitforre ^You get a large andesite icon|^What were you referring to

clean:
matchre hug ^The icon is spotless
send clean my andesite icon
matchwait 1
wait
goto clean

hug:
send hug my andesite icon
wait
pause

focus:
send focus my andesite icon
wait
pause

pray:
send pray my andesite icon
waitforre ^You feel ready to recharge your holy weapon
send put my andesite icon in $pack
waitforre ^You put your icon in|^What were you referring to

glyph:
send wield my $holyweapon
waitforre ^You draw|^You're already
send glyph renew $holyweapon
waitforre ^You trace the Glyph of Renew

send look my $holyweapon
waitforre ^There appears to be something written on it

send sheathe my $holyweapon
waitforre ^You sheathe the

send stand