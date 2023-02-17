####################################################
#Script by Zreyian, Ranger of Elanthia
#This script only works from the NE Gate of the Crossing. It is low-level and Ranger-friendly,
#traveling north from the NE Gate to Arthe Dale, then around some safe homesites in Arthe
#Dale, concentrating in each room. It will return to the NE Gate when Power Perception is locked
#or when it reaches the end of the unique room loop. If you get engaged (there are occasionally
#pale death squirrels around the gate to Arthe Dale) it will try to retreat and continue.
#
#The method of moving in this script is, as far as I can tell, novel. Rather than moving through rooms in a linear order,
#each step is a label, and labels are group according to the direction they refer to. The counter keeps track of the 
#current label, which enables the return-from-any-room-when-locked function by counting up for outward bound directions
#then counting down for the return trip. The downside is that it's very difficult to add rooms. However, this script
#will concentrate in as many as 45 unique rooms, which should get your power perception
#going for many ranks.
####################################################


uncomment this if you want to train performance and have %instrument variable set to something useful

goto location_check

location_check:
	match start Above, guardsmen stare down from the thick stone wall that encloses the city, wary for hostile visitors.
	matchre location_fail /Obvious (paths:|exits:)/
	put look
	matchwait

location_fail:
labelError:
	echo *** Please start this script at outside the NE Gate of the Crossing ***
	goto end

start:
        put playp
        pause 2
        put gaze crystal
	counter set 1
	goto exp_check

exp_check:
	match go_home 34/34
	match counter_add Overall state of mind
	put skill Attune
	matchwait

go_home:
       
	match go_home ...wait
	match back_%c You tap your foot
	put tap
	matchwait

counter_add:
	counter add 1
	goto out_%c

counter_subtract:
	counter subtract 1
	goto back_%c

concentrate:
	match concentrate ...wait
	match exp_check Roundtime
	put concentrate
	matchwait

retreat:
	put retreat
	put retreat
	goto out_%c

back_1:
	echo *** Here we are! ***
	goto end

end:
        put spl
        move nw
	exit

move:
	match move ...wait
	matchre concentrate /Obvious (paths:|exits:)/
	match retreat You are engaged
	put %s
	matchwait

out_17:		
out_18:
	save down
	goto move

out_16:		
out_24:		
out_25:		
out_26:		
out_30:		
out_31:		
out_33:		
out_34:		
out_42:
	save e
	goto move

out_19:
	save go gate
	goto move

out_32:		
out_35:
	save go path
	goto move

out_2:		
out_3:		
out_4:		
out_7:		
out_10:		
out_11:		
out_14:		
out_15:		
out_20:		
out_21:		
out_22:		
out_23:		
out_37:
	save n
	goto move

out_5:		
out_6:		
out_12:		
out_27:		
out_28:		
out_36:		
out_38:
	save ne
	goto move

out_8:		
out_9:		
out_13:		
out_39:		
out_44:
	save nw
	goto move

out_45:
	save s
	goto move

out_29:
	save se
	goto move

out_41:		
out_43:
	save sw
	goto move

out_40:
	save w
	goto move

out_46:
	echo *** That was the last unique room, returning to NE Gate. If you're not mindlocked, you need to find a longer route ***
	counter set 31
	goto back_31	

back_19:
	move go gate
	goto counter_subtract
	
back_32:
	move go path
	goto counter_subtract
	
back_34:
	move go path
	counter set 35
	goto back_35

back_29:
	move nw
	goto counter_subtract
	
back_10:			
back_11:			
back_14:			
back_15:			
back_2:			
back_20:			
back_21:			
back_22:			
back_23:			
back_3:			
back_4:			
back_7:
	move s
	goto counter_subtract
	
back_44:
	move s
	goto back_45	

back_1:			
back_13:			
back_8:			
back_9:
	move se
	goto counter_subtract
	
back_12:			
back_27:			
back_28:		
back_5:			
back_6:			
back_36:			
back_38:
	move sw
	goto counter_subtract
	
back_40:
	move sw
	goto back_41
	
back_41:
	move sw
	goto back_44
	
back_42:
	move sw
	goto back_43
	
back_43:
	counter set 31
	move sw
	goto back_31

back_45:
	move sw
	counter set 30
	goto back_30
		
back_17:			
back_18:
	move up
	goto counter_subtract

back_16:			
back_24:			
back_25:			
back_26:			
back_30:			
back_31:		
back_33:
	move w
	goto counter_subtract
	
back_35:
	move w
	counter set 31
	goto back_31

back_37:
	move w
	counter set 43
	goto back_43

back_39:
	move w
	goto back_40	