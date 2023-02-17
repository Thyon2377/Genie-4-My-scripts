put #class racial on
put #class rp on
put #class combat off
put #class joust off
send open my %1
waitforre ^You open your black pouch|^That is already open|^YYou open
send store gems in %1
waitforre ^You will now store gems in your|^You will need to be wearing the gem pouch to store things in it
#send fill %1 with $pack
#waitforre ^You fill your gem pouch with|^The gem pouch is too valuable to leave untied|#^There aren't any gems in|^You have to be holding or wearing the gem pouch to do that|#^You'll need to open the
setvariable gem_container black pouch
if_1 setvariable gem_container %1

var total.value 0

action (contents) on
action (contents) var contents $1 when ^You rummage through .+ and see (.*)\.
action math total.value add $1;var coin.type $2 when hands you (\d+) (\w+)

send rummage in my %gem_container
waitforre ^You rummage
action (contents) off

eval contents replace("%contents", ", ", "|")
eval contents replace("%contents", " and ", "|")
var contents |%contents|
eval total count("%contents", "|")

Loop:
		eval item element("%contents", 1)
		eval number count("%contents", "|%item")
		var count 0
		gosub RemoveLoop
		action setvariable item $1 when ^@a .* (\S+)$
		put #parse @%item
		counter set %count
		gosub sellgem
		if %contents != "|" then goto Loop
	echo Total gem value: %total.value %coin.type
	exit

RemoveLoop:
	eval number count("%contents", "|%item|")
	eval contents replace("%contents", "|%item|", "|")
	eval contents replace("%contents", "||" "|")
	evalmath count %count + %number
	if !contains("%contents", "|%item|") then return
	goto RemoveLoop

sellgem:
	counter subtract 1
	send get my %item from my %gem_container
	waitforre ^You get
	send sell my %item
	waitforre (Kronars?|Lirums?|Dokoras?)\.$
	if %c = 0 then return
	goto sellgem