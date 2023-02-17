timer:
	timer clear
	timer start


     put get my $instrument
     put remove my $instrument
     pause     

##Main Loop


Ass:
        if $Appraisal.LearningRate = 34 then {
		ECHO *** Mind Locked after %t seconds! Gracefully exiting the script. ***
		timer stop
		goto assFinished
	} else {
                match assFinished 34/34
                match Ass Roundtime:
                pause 8
		put ass $instrument
                matchwait
                pause 


assFinished:
pause 1
	put wear left
        put wear right
        put #parse SCRIPT FINISHED!
	exit