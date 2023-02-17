#Geniehunter Globals Setup Menu

#
#This script is designed to facilitate the setting of variables that may be used by my scripts and settings.
#It is strongly recommended that you set every relevant variable.
#

#debuglevel 10

Setup:
var MAIN Settables|Done
var SETTABLES name|account|IMname|e-mail|pack|sheath|melee toolstrap|ranged toolstrap|quiver|cambrinth|cambrinth capacity|second cambrinth|second cambrinth capacity|largest cambrinth|largest cambrinth capacity|sanowret crystal|ritual focus|demeanor|favor god|horse color|instrument|song|instrument cloth|metal repairer|leather repairer|shield|Paladin holy weapon|Back
var GLOBALS scriptname|account|IMname|email|pack|sheath|toolstrap-melee|toolstrap-ranged|quiver|cambrinth|cambrinth.capacity|secondcambrinth|secondcambrinth.capacity|maxcambrinth|maxcambrinth.capacity|sanowret|focusr|demeanor|favorgod|horse|instrument|playsong|instrument-cloth|mrep|lrep|shield|holyweapon|
var DESCS the first four letters of your character's first name (lower-case), preceded by an hyphen (for examle, -isha)|your account name (upper-case)|your IM screen name (no spaces)|your e-mail address (type \@ for the at symbol)|your main pack|your melee weapon container|your toolstrap for polearms and staves|your toolstrap for bows and crossbows|your quiver|your cambrinth|how much mana your main cambrinth holds|your second cambrinth|how much mana your second cambrinth holds|your largest cambrinth (can be the same as cambrinth or second cambrinth)|how much mana your largest cambrinth holds|Set as sanowret crystal unless you have one (like the generally worn hoarfrost white or heretic black from Droughtman's Challenge) that has a different functional adjective.|the item you use to cast ritual spells|your default demeanor|the god who grants you favor|the color of your horse|your training instrument|your training song|your cloth for cleaning|your metal repairer|your leather repairer|your shield|your Paladin holy weapon|

		var MENU_WINDOW Genie Variables
		put #var selection MAIN

		pause 1
		echo
		echo ################
		put #echo yellow All typed user input MUST be preceded by tilde (~) character.
		echo ################

MenuDisplay:
		var last.selection $selection
		counter set 0
		pause 0.3
		gosub Menu.Build "%$selection" "selection" "continue.script" "" "%MENU_WINDOW"
		waitforre continue.script
		put #var selection {#eval toupper("$selection")}
		if $selection = BACK then
			{
			put #var selection MAIN
			goto MenuDisplay
			}
		if $selection = DONE then gosub Finish
		if ($selection = SETTABLES) then goto MenuDisplay
		gosub array.match "%SETTABLES" "%GLOBALS" "$selection" "this.global"
		gosub array.match "%SETTABLES" "%DESCS" "$selection" "this.desc"
		gosub GlobalSet "%this.global" "%this.desc"

Finish:
		echo Globals set. Saving...
		put #var save
		echo Globals saved. Exiting.
		put #window close "%this.window"
		exit

exit

Menu.Build:
##Menu Building Routine
##Function - Builds a numbered menu of options in link format that saves option information into a variable.
##pre - First parameter must be an array of the option names/values. Second parameter is the name of the
##	target global variable to store the result of the link click. Third parameyer is a string
##	that will be parsed to continue the script after the menu item has been selected. Fourth parameter
##	is a string or array of items that are exceptions to be excluded from the menu list. Fifth parameter is a
##	window name to echo output to (leave out to echo to Game window).
##post - Value of clicked link is stored in target global variable.

		action (input) var input $1;put #parse input.done when ~(.*)

		if !%c then
				{
				var this.array $1
				var target.variable $2
				var script.trigger $3
				var exceptions $4
				if !($5 = "") then
						{
						var this.window $5
						put #window add "%this.window"
						put #window open "%this.window"
						put #clear %this.window
						send #echo ">%this.window" cyan $selection Menu
						send #echo ">%this.window"
						}
				else var this.window Game
				var this.option 0
				eval array.length count("%this.array","|")
				}
		if %c > %array.length then
				{
				var this.option 0
				counter set 0
				return
				}
		var this.choice %this.array(%c)
		if matchre("%exceptions","%this.choice") then
				{
				counter add 1
				goto menu.build
				}
		counter add 1
		math this.option add 1
		send #link ">%this.window" "%this.option. - %this.choice" "#var %target.variable %this.choice;#parse %script.trigger"
		goto menu.build

GlobalSet:
		put #clear "%this.window"
		var this.global $1
		var extra_message $2
		action (input) on
		if matchre("$selection", "%TOGGLES") then goto TOGGLE
		if !(%extra_message = "") then put #echo ">%this.window" cyan %extra_message
		put #echo ">%this.window" cyan Enter value for $selection:
		waitforre input.done
		put #var %this.global %input
		action (input) off
		put #clear "%this.window"
		put #echo ">%this.window" cyan $selection has been set to: %input
		put #echo ">%this.window"
		send #link ">%this.window" "Click to continue..." "#parse %script.trigger"
		waitforre %script.trigger
		put #var selection %last.selection
		gosub clear
		goto MenuDisplay

array.match:
	var this.array $1
	var that.array $2
	var search.str $3
	var result.str $4
	eval this.array tolower("%this.array")
	eval this.array replacere("%this.array", "\(|\)", "")
	eval search.str tolower("%search.str")
	if !matchre("%this.array", "(.*(?:\||^)%search.str)(?:\||$)") then
		{
		var %result.str Null
		echo String %search.str does not exist in array.
		}
	else
		{
		var substring_element $1
		eval array.index count("%substring_element","|")
		var %result.str %that.array(%array.index)
		}
	return