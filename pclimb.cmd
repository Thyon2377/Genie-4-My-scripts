timer:
	timer clear
	timer start

Start:
put playp
pause .5
put climb practi %1
if $Athletics.LearningRate = 34 then {
		ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
		goto climbFinished
                } else {
		match Start You stop practicing
                match Start You finish practicing
                matchwait


climbFinished:
put stop climb
exit
