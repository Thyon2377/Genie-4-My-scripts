Instructions
____________________________________________
.remedy project herb catalyst 
or 
.remedy project herb catalyst herb 
or 
.remedy project herb catalyst keep 
or 
.remedy project herb catalyst herb keep 
or 
.remedy project herb catalyst herb break 
or 
.remedy project herb catalyst herb break keep 
or 
.remedy project herb catalyst herb break keep belt 
You get the idea 
Container variables are at the top, 3 of them 
One for crafting tools (water, alcohol, catalyst, pestle, mortar, remedy book... you get the idea) 
One for storage (dried herb or crushed herb) 
One for junk (used when there isn't a bucket or such around) 
________________________________________________________________________________



action put #queue clear; send 1 $lastcommand when ^\.\.\.wait|^Sorry, you may only type|^You are still stunned

action var sieve yes when Upon completion you see some particulate clouding up the mixture|^A thick froth coats
action var smell yes when As you finish, the mixture begins to transition colors|takes on an odd hue
action var turn yes when Clumps of material stick to the sides|^Once finished you notice clumps of material
action var catalyst yes when ^You need another catalyst material to continue crafting
action var alcohol yes when ^You need another splash of alcohol to continue crafting
action var water yes when ^You need another splash of water to continue crafting
action var herb yes when ^You need another prepared herb to continue crafting
action var done yes when Applying the final touches, you complete working
action var none yes when ^What were you referring to
action send put my %2 in my %craftcontainer when ^The (bowl|mortar) can only hold 25 pieces of material

action var snap $1 when ^You count out (\d+) pieces of material there\.

if ("%0" = "") then {
	echo Usage is: remedy <project> <material> <catalyst> <material/break/keep/belt> <break/keep/belt> <break/keep/belt>
	echo You can use example: coal.nugget or red.flower or need be
	echo you can grab other items using similar method
	echo example: first.coal.nugget, second.red.flower...
	echo So .remedy salve sufil coal.nugget
	echo If you want to keep what you make do this
	echo .remedy salve sufil coal.nugget keep
	echo .remedy ointment red.flower coal.nugget plovik keep
	echo .remedy salve sufil coal.nugget break
	echo Now with crafting belt support
	echo .remedy salve jadice seolarn break belt
	echo .remedy potion yelith seolarn break belt

	put #link {Neck Ungent} {.remedy ungent georin seolarn break belt}
	put #link {Limb Ungent} {.remedy ungent jadice seolarn break belt}
	put #link {Neck Tonic} {.remedy tonic riolur seolarn break belt}
	exit
}

var project %1
var material1 %2
var material2 %3
var material3 %4


var snap
	
var craftcontainer feed pouch
var storagecontainer feed pouch
var junkcontainer carryall
var craftbelt alchemist

var mortar
var bowl

if matchre("%project", "\b(salve|cream|ungent|balm|ointment|poultice)\b")) then var mortar yes
if matchre("%project", "\b(tonic|wash|potion|draught|elixir)\b")) then var bowl yes

GetMat:
	var crushed no
	var smell no
	var sieve no
	var turn no
	var catalyst no
	var alcohol no
	var water no
	var herb no
	var done no
	var none no

	pause 0.8
	if matchre("%0", "\bbreak\b") then goto Break
	if "$righthandnoun" = "%material1" then goto Studybook
		else send get my %material1
	pause 0.8
	if "%none" = "yes" then goto End
	
StudyBook:
	send get my remed book
	send study my book
	pause
	send put my book in my %craftcontainer
	pause 0.8
	
Start:
	pause 0.8
	if "%mortar" = "yes" then goto Mortar
		elseif "%bowl" = "yes" then goto Bowl
	
Main:
	pause 1
	if "%done" = "yes" then goto Done
		elseif "%alcohol" = "yes" then goto Alcohol
			elseif "%water" = "yes" then goto Water
				elseif "%catalyst" = "yes" then goto Catalyst
					elseif "%sieve" = "yes" then goto Sieve
						elseif "%herb" = "yes" then goto Herb
					elseif "%smell" = "yes" then goto Smell
				elseif "%turn" = "yes" then goto Turn
			elseif "%mortar" = "yes" then goto Crush
		elseif "%bowl" = "yes" then goto Mix
	pause 1
	goto Main		

Break:
	pause 0.8
	send get my %material1
	pause 0.8
	if "%none" = "yes" then goto End
	
BreakCount:
	pause 0.8
	send count my %material1
	pause 1
	if %snap = 5 then goto studybook
	if (%snap < 5) then goto Needmore
		elseif (%snap > 5) then {
			send mark my %material1 at 5
			pause 0.8
			send break my %material1
			pause 0.8
			send put my other %material1 in my %storagecontainer
			pause 0.8
		}
	elseif (%snap = 5) then goto StudyBook
	pause 0.8
	goto StudyBook
	
Mortar:
	var mixer mortar
	pause 0.8
	if matchre("%0", "\bbelt\b") then send untie my mortar from my %craftbelt belt
		else send get my mortar
	pause 0.8
	send put my %material1 in my mortar
	pause 0.8
	
Crush:
	pause 0.8
	if "$righthandnoun" != "pestle" then {
		if matchre("%0", "\bbelt\b") then send untie my pestle from my %craftbelt belt
			else send get my pestle
	}
	pause 0.8
	if ("%crushed" = "yes") then send crush my %project in my %mixer with my pestle
		else send crush my %material1 in my %mixer with my pestle
	var crushed yes
	pause 0.8
	goto Main
	
Bowl:
	var mixer bowl
	pause 0.8
	if matchre("%0", "\bbelt\b") then send untie my bowl from my %craftbelt belt
		else send get my bowl
	pause 0.8
	send put my %material1 in my bowl
	pause 0.8
	
Mix:
	pause 0.8
	if "$righthandnoun" != "stick" then {
		if matchre("%0", "\bbelt\b") then send untie my mix stick from my %craftbelt belt
			else send get my mix stick
	}
	pause 0.8
	if ("%crushed" = "yes") then send mix my %mixer with my mix stick
		else send mix my %mixer with my mix stick
	var crushed yes
	pause 0.8
	goto Main
	
Catalyst:
	pause 0.8
	if (matchre ("$righthandnoun", "\bpestle\b") then {
		if matchre("%0", "\bbelt\b") then send tie my pestle to my %craftbelt belt
			else send put my pestle in my %craftcontainer
		pause 0.8
	}
	if (matchre ("$righthandnoun", "\bstick\b") then {
		if matchre("%0", "\bbelt\b") then send tie my mix stick to my %craftbelt belt
			else send put my mix stick in my %craftcontainer
		pause 0.8
	}
	pause 0.8
	send get my %material2
	pause 0.8
	send put my %material2 in my %mixer
	pause 0.8
	send put my %material2 in my %craftcontainer
	var catalyst no
	pause 0.8
	goto Main
	
Water:
	pause 0.8
	if (matchre ("$righthandnoun", "\bpestle\b") then {
		if matchre("%0", "\bbelt\b") then send tie my pestle to my %craftbelt belt
			else send put my pestle in my %craftcontainer
		pause 0.8
	}
	if (matchre ("$righthandnoun", "\bstick\b") then {
		if matchre("%0", "\bbelt\b") then send tie my mix stick to my %craftbelt belt
			else send put my mix stick in my %craftcontainer
		pause 0.8
	}
	pause 0.8
	send get my water
	pause 0.8
	send pour my water in my %mixer
	pause 0.8
	send put my water in my %craftcontainer
	var water no
	pause 0.8
	goto Main
	
Alcohol:
	pause 0.8
	if (matchre ("$righthandnoun", "\bpestle\b") then {
		if matchre("%0", "\bbelt\b") then send tie my pestle to my %craftbelt belt
			else send put my pestle in my %craftcontainer
		pause 0.8
	}
	if (matchre ("$righthandnoun", "\bstick\b") then {
		if matchre("%0", "\bbelt\b") then send tie my mix stick to my %craftbelt belt
			else send put my mix stick in my %craftcontainer
		pause 0.8
	}
	pause 0.8
	send get my alcohol
	pause 0.8
	send pour my alcohol in my %mixer
	pause 0.8
	send put my alcohol in my %craftcontainer
	var alcohol no
	pause 0.8
	goto Main
	
Smell:
	pause 0.8
	send smell my %project
	pause 0.8
	var smell no
	pause 0.8
	goto Main
	
Turn:
	pause 0.8
	send turn my %mixer
	var turn no
	pause 0.8
	goto Main
	
Sieve:
	pause 0.8
	if (matchre ("$righthandnoun", "\bpestle\b") then {
		if matchre("%0", "\bbelt\b") then send tie my pestle to my %craftbelt belt
			else send put my pestle in my %craftcontainer
		pause 0.8
	}
	if (matchre ("$righthandnoun", "\bstick\b") then {
		if matchre("%0", "\bbelt\b") then send tie my mix stick to my %craftbelt belt
			else send put my mix stick in my %craftcontainer
		pause 0.8
	}
	pause 0.8
	if matchre("%0", "\bbelt\b") then send untie my sieve to my %craftbelt belt
		else send get my sieve
	pause 0.8
	if matchre ("$roomplayers", \bMy\w+\b) then send push %project with my sieve
		else send push my %project with my sieve
	pause 1
	if matchre("%0", "\bbelt\b") then send tie my sieve to my %craftbelt belt
		else send put my sieve in my %craftcontainer
	var sieve no
	pause 0.8
	goto Main
	
Herb:
	if (matchre ("$righthandnoun", "\bpestle\b") then {
		if matchre("%0", "\bbelt\b") then send tie my pestle to my %craftbelt belt
			else send put my pestle in my %craftcontainer
		pause 0.8
	}
	if (matchre ("$righthandnoun", "\bstick\b") then {
		if matchre("%0", "\bbelt\b") then send tie my mix stick to my %craftbelt belt
			else send put my mix stick in my %craftcontainer
		pause 0.8
	}
	pause 0.8
	send get my %material3
	pause 0.8
	send put my %material3 in my %mixer
	pause 0.8
	send put my %material3 in my %storagecontainer
	pause 0.8
	var herb no
	pause 0.8
	goto Main
	
Done:
	pause 0.8
	if matchre("%0", "\bbelt\b") then send tie my $righthandnoun to my %craftbelt belt
		else send put my $righthandnoun in my %craftcontainer
	pause 0.8
	if matchre("%0", "\bkeep\b") then goto Keep
	pause 3
	if (matchre ("$roomobjs", "\b(bucket|bin|barrel)\b") then send get my %project from my %mixer;put my %project in $1
		else send get my %project from my %mixer;put my %project in my %junkcontainer
	echo *****************
	echo ***** DONE ******
	echo *****************
	pause 0.8
	if matchre("%0", "\bbelt\b") then send tie my %mixer to my %craftbelt belt
		else send put my %mixer in my %craftcontainer
	if ($Alchemy.LearningRate > 33) then exit
	pause 2
	goto GetMat
	
Keep:
	pause 0.8
	send get my %project from my %mixer;put my %project in my %craftcontainer
	pause 0.8
	if matchre("%0", "\bbelt\b") then send tie my %mixer to my %craftbelt belt
		else send put my %mixer in my %craftcontainer
	pause 3
	if matchre("%0", "\bstop\b") && ($Alchemy.LearningRate > 33) then exit
	pause 0.8
	counter add 1
	echo *** %c attempts done ***
	pause 0.8
	goto GetMat
	
Needmore:
	pause 0.8
	echo Don't have enough material to cut. Script ending.
	send put my %material1 in my %storagecontainer
	pause 0.8
	exit
	
End:
	echo Materials exhausted. Script ending.
	exit
