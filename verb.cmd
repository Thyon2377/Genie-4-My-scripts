init:
var item %1 %2
var waitlist ^Actually|^But you|^Don't|^Going|^I could not find (what|who) you were referring to|^I'm afraid|^It needs|^It's best you not do that to|^It's kind of hard to|^Nah\.\.\.I don't think so|^No matter how|^Now THAT would be a trick|^Perhaps you should|^Please rephrase that command|^Protect what|^Somehow, I|^Surely there are more interesting|^That doesn't appear to be something you can clean|^That is already open|^That might hurt|^There is nothing there to read|^Usage: TIP|^You |^You'll|^Bow to what|^Clean a.*?with what|^I don't think you're supposed to drink that|^That's a bit hard|^That should be on the ground|^I don't think pushing that|^Beating up on a poor|^\[?Roundtime
var verblist study|analyze|focus|adjust|arrange|bite|blink|bounce|bow|center|clean|clench|close|clutch|curtsy|dance|describe|dip|drink|eat|exhale|fidget|flip|gaze|gesture|glance|glare|grab|grin|hug|inhale|juggle|kick|kiss|lace|lean|lick|lock|nudge|observe|open|pat|peer|pet|pinch|point|poke|prod|pull|punch|push|raise|read|roll|rub|salute|scream|shake|shuffle|slap|smell|smile|smooch|sniff|snuggle|spin|stare|strut|swear|tap|throw|thump|tickle|tie|tilt|tip|toss|touch|turn|unlock|untie|wash|watch|wave|wink|wipe|wring|yank
eval verbcount count("%verblist", "|")
counter set 0

loop:
	if (%c > %verbcount) then goto exit
	send %verblist(%c) my %item
	pause .5
	counter add 1
	goto loop
exit: