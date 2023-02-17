timer stop
timer start

Start:
put prep VOS 23
waitfor You feel fully prepared
pause 5
put cast
pause 2

 if $Utility.LearningRate = 34 then {
		ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
		goto UFinished
	} else {
                match UFinished 34/34
                match Start You feel fully attuned
                matchwait
                pause 


UFinished:
pause 1
	put wear left
        put wear right
        pause 1
        put turn vessel
        put #parse SCRIPT FINISHED!
	exit