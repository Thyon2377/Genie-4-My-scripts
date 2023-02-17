##  /*
##  *	Just a quick and dirty script designed to forage and braid for Mech Lore.
##  *		This script allows you to define what you will forage and braid. Simply
##  *		add in the appropriate command line argument. (e.g. .braid vine)
##  *    		Defaults to grass if no command line argument given.
##	*
##	*	If you are wearing gloves, the script will remove and stow them, following by
##	*		rewearing them at the end of the script.
##	*
##  *	This script checks to see if there is a trash receptacle in the room. If there isn't, it defaults
##  *		to simply dropping the used-up rope.
##	*
##	*	Please do not edit any variables/actions unless you find a missing receptacle.
##  *
##  *	Sends a hum command first using your stored $hum variable.
##  *
##  *	Written by: drtyprior @ genie forums with some stolen bits from Arathael's moon mage script.
##	*		If you have a moonie, I suggest you check it out!
##  */


var disposals bucket|bucket of viscous gloop|barrel|marble statue|large stone turtle|disposal bin|waste bin|firewood bin|tree hollow|oak crate|ivory urn|pit|trash receptacle
var disposalExtra trash |large stone |waste |firewood |tree |oak |ivory | of viscous gloop
var dumpReceptacle 0
var isReceptacle 0
action var hand.armor $2 when Your efforts are hindered by your (\S+) (\w+)

## Initial Script Checks

handsEmpty:
	if $righthand = Empty then {
		if $lefthand = Empty then {
			goto checks
		}
	}
	echo *********************************
	echo * Please empty hands and run script again. *
	echo *********************************
	exit

checks:
	if_1 then {
		var forageable %1
	} else {
		var forageable grass
	}

	if matchre("$roomobjs",("%disposals")) then {
		var isReceptacle 1
		var dumpReceptacle $0
		eval dumpReceptacle replacere("%dumpReceptacle", "%disposalExtra", "")
	}

timer:
	timer clear
	timer start

## Main Loop

braidForage:
	match braiding You manage to find
        match braiding With incredibly nimble fingers
	match braidForage Roundtime
	match braidForage ...wait
	put forage %forageable
	matchwait

braiding:
	if $Engineering.LearningRate = 34 then {
		ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
		goto braidFinished
	} else {
		match remArmor Your efforts are hindered by your
		match braidPull nothing more than wasted effort.
		match braidPull Better just PULL it to see how it holds up
		match braidPull mistake
                                        match braidForage really isn't an appropriate 
		match braidForage Braid what?
                match braidForage You need to be holding that
		match braidForage You need to have more material
		match braidDrop You need both hands to do that.
		match braiding ...wait
		match braiding Roundtime:
		put braid my %forageable
		matchwait
	}

remArmor:
	pause 1
	send remove my %hand.armor
	send stow my %hand.armor
	waitforre ^You put your
	goto braiding

braidPull:
	pause 1
	match braidDrop rope
	match braidDrop You tug
	put pull my %forageable
        pause

braidDrop:
	pause 1
	if %dumpReceptacle = 0 then {
                                        send feed rope to gela
		send drop rope
	} else {
		put put my rope in %dumpReceptacle
                pause 1
                put put my %1 in %dumpReceptacle
                pause 1
                put look
               
	}
	waitforre ^You
	goto braidForage

braidFinished:
	pause 1
        put feed %1 to gelapod
        pause 1
        put put my %1 in %dumpReceptacle
        pause .5
	put empty right
        pause .5
	put empty left
	pause .5
	put get my %hand.armor
	pause 1
	put wear my %hand.armor
	pause 2
	put adjust my %hand.armor
	exit