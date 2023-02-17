var rareWoodToKeep albarco|azurelle|bloodwood|bocote|cherry|copperwood|crabwood|darkspine|ebony|goldwood|hickory|ilomba|iroko|ironwood|kapok|leori|macawood|mistwood|osage|ramin|redwood|rosewood|sandalwood|silverwood|tamarak|yew
var commonWoodToKeep alder|apple|ash|aspen|balsa|bamboo|birch|cedar|cypress|durian|elm|fir|hemlock|larch|mahogany|mangrove|maple|moabi|oak|pine|spruce|teak|walnut|willow
var rareWoodOtional
var normalSizeToKeep stick|branch|limb|log
var rareSizeToKeep stick|branch|limb|log
var deedstore 
var packetstore 
var money 0
var chopper 

if_1 var money 1
pause .5
roomCheck:
if (%money == 0) then {
	if matchre ("$roomobjs", "(%rareWoodToKeep) (%rareSizeToKeep)") then {
		var RAREWOOD $1
		var RARESIZE $2
		send wear my %chopper
		pause .5
		send get packet
		pause .5
		goto getRareWood
	}
	else if matchre ("$roomobjs", "(%commonWoodToKeep) (%normalSizeToKeep)") then {
		var COMMONWOOD $1
		var COMMONSIZE $2
		send wear my %chopper
		pause .5
		send get packet
		pause .5
		goto getCommonWood
	}
	else if matchre ("$roomobjs", "(%rareWoodOtional) (%rareSizeToKeep)") then {
		var OPTIONALWOOD $1
		var RARESIZE $2
		send wear my %chopper
		pause .5
		send get packet
		pause .5
		pause .5
		echo 1 to keep, 0 to ignore
		match getOptionalWood 1
		match 0 danger
		matchwait 8
		goto getOptionalWood
	}
	else {
		if (("$righthandnoun" == "%chopper") || ("$lefthandnoun" == "%chopper") then goto danger
		else {
			send remove %chopper
			goto danger
		}
	}
}
else {
	if matchre ("$roomobjs", "(%rareWoodToKeep) (%rareSizeToKeep)") then goto getRareWood
	else if matchre ("$roomobjs", "(%rareWoodOtional) (%rareSizeToKeep)") then goto getOptionalWood
	else if matchre ("$roomobjs", "(%commonWoodToKeep) (%normalSizeToKeep)") then goto getCommonWood
	else goto danger
}

getRareWood:
if (%money == 0) then {
	send get my packet
	pause .5
	send push %RAREWOOD %RARESIZE with my packet
	waitfor You push
	pause .5
	send put my deed in %deedstore
	send put packet in %packetstore
	pause .5
	goto roomCheck
}
else {
	send push %RAREWOOD %RARESIZE
	waitfor You push
	pause .5
	send put my deed in %deedstore
}

getCommonWood:
if (%money == 0) then {
	send get my packet
	pause .5
	send push %COMMONWOOD %COMMONSIZE with my packet
	waitfor You push
	pause .5
	send put my deed in %deedstore
	send put packet in %packetstore
	pause .5
	goto roomCheck
}
else {
	send push %COMMONWOOD %COMMONSIZE
	waitfor You push
	pause .5
	send put my deed in %deedstore
	pause .5
	goto roomCheck
}

getOptionalWood:
if (%money == 0) then {
	send get my packet
	pause .5
	echo %OPTIONALWOOD %RARESIZE
	send push %OPTIONALWOOD %RARESIZE with my packet
	waitfor You push
	pause .5
	send get %OPTIONALWOOD deed
	pause .5
	send put my deed in %deedstore
	send put packet in %packetstore
	pause .5
	goto roomCheck
}
else {
	var OPTIONALWOOD $1
	var RARESIZE $2
	send push %OPTIONALWOOD %RARESIZE
	waitfor You push
	pause .5
	send get %OPTIONALWOOD deed
	pause .5
	send put my deed in %deedstore
}

danger:
pause .5
send watch forest danger
match danger unable
match chop Roundtime:
matchwait

nothing:
pause .5
send watch forest careful
match chop marker to direct
matchre end no additional resources|no additional trees
matchwait

chop:
pause .5
send chop tree
match danger Roundtime:
matchre roomCheck stick|branch|limb|log
matchre nothing rotted core|unable to find a tree
matchwait

end:
send wear my %chopper
echo TIME TO CHANGE ROOMS!