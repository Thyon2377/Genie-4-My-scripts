#Magic learning script
#
################################################
##          Universal Magics Trainer          ##
##                by Azarael                  ##
##                                            ##
##         Script is based off of the         ##
##        the Moon Mage Training script       ##
##                by Azarael                  ##
##                                            ##
##  All credits for sections contributed by   ##
##    others can be found in that script.     ##
##                                            ##
##   If you utilize any part of this script   ##
##     for one of your own, please give       ##
##     proper credit to the person who        ##
##           created that section.            ##
################################################
#
#To utilize this you must set the following globals:
#
##Toggles (ON/OFF)
 MT_Train.Warding ON
 MT_Train.Augmentation ON 
 MT_Train.Utility ON
 MT_Train.Attune ON
 MT_Use.Harness ON 
 MT_Use.Cambrinth ON
#
##Settables
 MT_Warding.Spell MAF
 MT_Warding.Prep 20
 MT_Augmentation.Spell CV 
 MT_Augmentation.Prep 20
 MT_Utility.Spell PG
 MT_Utility.Prep 20
 MT_Cambrinth Carving Knife
 MT_Charge 5
 MT_Harness 3
#
#
# After globals are set, usage is .magic_train
#
##Version History
# v1.0	:		Initial script release.
# v1.1	:		Added in actions for worn cambrinth that were left out.
# v1.2	:		Fixed issue with the Power label that could cause the
#						script to crash
# v1.3  :   Fixed triggers to use proper cambrinth global name.
#

##Script Variables##
var toPower xibar|planets|trans|yavash|perc|katamba|moonl man|enlightened|psychic
var totalPower 8
var pp.counter 0

##Script Actions##
action send 2 $lastcommand when ^\.\.\.wait|^Sorry, you may only type
action remove You strain
action remove You have to strain
action remove You strain, but
action (warding) var prep.override 0;var need.moon 1 when ^@Update Moons
action var need.moon 1 when You must specify one of the three|on the wrong side of Elanthia and is not visible
action send get my $MT_CAMBRINTH when Remove what?
action var cambstow $2 when from inside your (\S+|\S+\s+\w+)\.$
action send put my $MT_CAMBRINTH in my %cambstow when You can't wear that\!$


##Guild Check##
action (guild) var guild $1 when Guild: (\w+|\w+\s+\w+)$
action var circle $1 when Circle: (\d+)
action (guild) on
send info
waitfor Debt
action (guild) off

##First run check##
if ((!def("MT_IS_SETUP")) && (%guild = "Moon mage")) then gosub Setup
	
##Script Start##
MainLoop:
	if (($Warding.LearningRate < 10) && ($MT_Train.Warding = ON)) then gosub Magic.Start Warding
	if (($Augmentation.LearningRate < 10) && ($MT_Train.Augmentation = ON)) then gosub Magic.Start Augmentation
	if (($Utility.LearningRate < 10) && ($MT_Train.Utility = ON)) then gosub Magic.Start Utility
	pause 10
	goto MainLoop
	
Magic.Start:
	var EXP_TYPE $1
	var moon
	var prep.override 0
	var need.moon 0

Prepare:
	gosub manacheck
	match cast You are already preparing
	match cast You feel fully prepared
	match wait You have to strain
	if %prep.override = 0 then send prepare $MT_%EXP_TYPE.Spell $MT_%EXP_TYPE.Prep
	else send prepare psy $MT_%EXP_TYPE.Prep
	if $MT_Use.Cambrinth = ON then gosub getcamb
  if $MT_Train.Attune = ON then gosub Power
	matchwait

GetCamb:
	if $righthand = Empty then send remove my $MT_Cambrinth
	action var cambstow $2 when from inside your (\S+|\S+\s+\w+)\.$
	pause 0.5
	gosub charge
	return

Charge:
	pause 1
	send charge my $MT_Cambrinth $MT_Charge
	pause
	pause 1
	send invoke my $MT_Cambrinth
	pause .5
	return	

Harness:
	if $MT_Harness < 1 then return
	pause .5
	match wait You strain,
	send harness $MT_Harness
	matchwait 2
	pause .5
	return

Cast:
	pause .5
	if $MT_Use.Harness = ON then gosub harness
	pause .5
	match wait You are unable to harness
	match prepare You don't have a spell
	match magic.exp You gesture
	send cast %moon
	matchwait
	
Set.Moon:
	if $moonKatamba = Up then
		{
		action (warding) off
		var moon Katamba
		var need.moon 0
		goto cast
		}
	if $moonYavash = Up then
		{
		action (warding) off
		var moon Yavash
		var need.moon 0
		goto cast
		}
	if $moonXibar = Up then 
		{
		action (warding) off
		var moon Xibar
		var need.moon 0
		goto cast
		}
	var prep.override 1
	action (warding) on
	goto prepare
	
ManaCheck:
	if $mana < 20 then gosub manawait
	return

ManaWait:
	pause .5
	send release
	echo
	echo Waiting for mana.
	echo 
	pause 120
	return

Magic.Exp:
	gosub clear
	if $%EXP_TYPE.LearningRate = 34 then
		{
		send wear my $MT_Cambrinth
		wait
		gosub clear
		goto mainloop
		}
	if %need.moon = 1 then goto set.moon
	goto prepare

Power:
	if (%guild = "Moon mage") then
		{
		if (%pp.counter > %totalPower) then math pp.counter set 0
		gosub Do.Power
		math pp.counter add 1
		}
	else
		{
		put power
		waitforre ^Roundtime
		}
		return
			
Do.Power:
	send power %toPower(%pp.counter)
	waitforre ^Roundtime
	return

##Setup section##
Setup:
		#Moonmage Triggers for Moon states.
		put #trigger {^Katamba is a.+moon and is not visible\.} {#var moonKatamba Down;#parse @Update Moons}
		put #trigger {^Katamba is nowhere to be seen\.} {#var moonKatamba Down;#parse @Update Moons}
		put #trigger {^Katamba sets, slowly dropping below the horizon\.} {#var moonKatamba Down;#parse @Update Moons}
		put #trigger {^Katamba slowly rises above the horizon\.} {#var moonKatamba Up;#parse @Update Moons}
		put #trigger {^Set within the black disc of the.+is the image} {#var moonKatamba Up;#parse @Update Moons}
		put #trigger {^Set within the black disc of the.+is the outline} {#var moonKatamba Down;#parse @Update Moons}
		put #trigger {^Set within the blue disc of the.+is the image} {#var moonXibar Up;#parse @Update Moons}
		put #trigger {^Set within the blue disc of the.+is the outline} {#var moonXibar Down;#parse @Update Moons}
		put #trigger {^Set within the red disc of the.+is the image} {#var moonYavash Up;#parse @Update Moons}
		put #trigger {^Set within the red disc of the.+is the outline} {#var moonYavash Down;#parse @Update Moons}
		put #trigger {^Xibar is a.+moon and is not visible\.} {#var moonXibar Down;#parse @Update Moons}
		put #trigger {^Xibar is nowhere to be seen\.} {#var moonXibar Down;#parse @Update Moons}
		put #trigger {^Xibar sets, slowly dropping below the horizon\.} {#var moonXibar Down;#parse @Update Moons}
		put #trigger {^Xibar slowly rises above the horizon\.} {#var moonXibar Up;#parse @Update Moons}
		put #trigger {^Yavash is a.+moon and is not visible\.} {#var moonYavash Down;#parse @Update Moons}
		put #trigger {^Yavash is nowhere to be seen\.} {#var moonYavash Down;#parse @Update Moons}
		put #trigger {^Yavash sets, slowly dropping below the horizon\.} {#var moonYavash Down;#parse @Update Moons}
		put #trigger {^Yavash slowly rises above the horizon\.} {#var moonYavash Up;#parse @Update Moons}
		put #trigger {^You're certain that Katamba is} {#var moonKatamba Up;#parse @Update Moons}
		put #trigger {^You're certain that Xibar is} {#var moonXibar Up;#parse @Update Moons}
		put #trigger {^You're certain that Yavash is} {#var moonYavash Up;#parse @Update Moons}
		put #trigger {by a miniature luminescent version of the moon Katamba\.} {#var moonKatamba Up;#var moonYavash Down;#var moonXibar Down;#parse @Update Moons}
		put #trigger {by a miniature luminescent version of the moon Xibar\.} {#var moonXibar Up;#var moonKatamba Down;#var moonYavash Down;#parse @Update Moons}
		put #trigger {by a miniature luminescent version of the moon Yavash\.} {#var moonYavash Up;#var moonKatamba Down;#var moonXibar Down;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Katamba, xibar, and Yavash\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Katamba, Yavash, and Xibar\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Xibar, Katamba, and Yavash\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Xibar, Yavash, and Katamba\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Yavash, Katamba, and Xibar\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three miniature luminescent versions of the moons Yavash, Xibar, and Katamba\.} {#var moonKatamba Up;#var moonYavash Up;#var moonXibar Up;#parse @Update Moons}
		put #trigger {by three translucent spheres that seem to drift about without purpose or reason\.} {#var moonKatamba Down;#var moonYavash Down;#var moonXibar Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Katamba and Xibar\.} {#var moonXibar Up;#var moonKatamba Up;#var moonYavash Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Katamba and Yavash\.} {#var moonYavash Up;#var moonKatamba Up;#var moonXibar Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Xibar and Katamba\.} {#var moonXibar Up;#var moonKatamba Up;#var moonYavash Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Xibar and Yavash\.} {#var moonXibar Up;#var moonYavash Up;#var moonKatamba Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Yavash and Katamba\.} {#var moonYavash Up;#var moonKatamba Up;#var moonXibar Down;#parse @Update Moons}
		put #trigger {by two miniature luminescent versions of the moons Yavash and Xibar\.} {#var moonXibar Up;#var moonYavash Up;#var moonKatamba Down;#parse @Update Moons}
		put #var MT_IS_SETUP 1
		return