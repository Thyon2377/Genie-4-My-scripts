#-Variables-#
#___________#

if ("$charactername" = "Thyon") then
	{
	  var container1 Duff_Bag
	  var container2 Duff_Bag
	  var item bracelet
	  var wood limb
	}
if ("$charactername" = "Hayiri") then
	{
	  var container1 backpack
	  var container2 Backpack
	  var item band
	  var wood stick
	}
if ("$charactername" = "Vleri") then
	{
	  var container1 duff.Bag
	  var container2 duff.Bag
	  var item hairpin
	  var wood branch
	}

timer:
	timer clear
	timer start

Start:
pause 2
send forage %wood 
pause 5
send .lumber %container1 %wood
waitfor You put your drawknife in your
pause 5
put .shaper %container1 %container2 %item 0
waitfor Applying the final touches
pause
pause 2
put put %item in %1
pause 1
put drop %item
pause 2
put skill engineer
     waitforre (\d+)/34
     if $1 < 33 then goto Start

pause 3
 craftFinished:
put #play MindLocked
ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
exit                                    