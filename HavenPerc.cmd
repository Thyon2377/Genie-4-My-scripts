#HavenPerc

Counter set 0

put awaken
echo
echo ********************
echo   Percieve Health
echo       HAVEN
echo ***********************
echo   Starts at West gate
echo ***********************

PHHAVEN:
	put look
	match NOEL The wooden palisade of the town wall runs down into the river
	matchwait

NOEL:
	move n
	put go arms
	save FURRIER
	goto perceivehealth

FURRIER:
	move out
	pause
	move n
	put go shop
	save FLOWER
	goto perceivehealth

FLOWER:
	move out
	pause
	move n
	put go shop
	save LOCKSMITH
	goto perceivehealth

LOCKSMITH:
	move out
	pause
	move n
	move se
	move se
	move se
	put go shop
	save ARMORY
	goto perceivehealth

ARMORY:
	move out
	pause 
	move se
	move se
	move s
	put go shop
	save REPAIR
	goto perceivehealth

REPAIR:
	move out
	pause
	move s
	move s
	move s
	put go shop
	save STABLE
	goto perceivehealth

STABLE:
	move out
	pause
	move s
	move e
	move e
	move e
	put go doors
	save WEAPONS
	goto perceivehealth

WEAPONS:
	move out
	pause
	move nw
	put go shop
	save GOLDSMITH
	goto perceivehealth

GOLDSMITH:
	move out
	pause
	move nw
	put go shop
	save JOYSHOP
	goto perceivehealth

JOYSHOP: 	
	move out
	pause
	move e
	move e
	move n
	move n
	put go door
	save TEAHOUSE
	goto perceivehealth

TEAHOUSE:
	move out
	pause
	move w
	put go door
	save BEDS
	goto perceivehealth

BEDS: 
	move out
	pause
	move sw
	move w
	move ne
	move e
	put go building
	save GUILD
	goto perceivehealth

GUILD:
	move out
	pause 
	move n
	put go guild
	save CLERICSHOP
	goto perceivehealth

CLERICSHOP:
	move out
	pause 
	move n
	put go shop
	save HERBS
	goto perceivehealth

HERBS:
	move out
	pause
	move n
	move se
	move se
	move se
	move se
	move se
	put go shop
	save MAMAS
	goto perceivehealth

MAMAS:
	move out
	pause
	move nw
	move nw
	move nw
	move sw
	put go shop
	save GLAZED
	goto perceivehealth

GLAZED:
	put go door
	pause
	move sw
	move sw
	move sw
	move s
	put go building
	save BARDSHOP
	goto perceivehealth

BARDSHOP:
	move out
	pause
	move n
	move sw
	move sw
	move sw
	move n
	move n
	move n
	move n
	put go shop
	save BANK
	goto perceivehealth

BANK:
	move out
	pause
	move s
	move s
	put go bank
	save MARKET
	goto perceivehealth

MARKET:
	move out
	pause 
	move s
	move s
	put go building
	save CLOTHIER
	goto perceivehealth

CLOTHIER: 
	move out
	pause
	move sw
	move w
	put go shop
	save BAKERY
	goto perceivehealth

BAKERY:
	move out
	pause
	move w
	put go bakery
	save DRYGOODS
	goto perceivehealth

DRYGOODS:
	move out
	pause
	move w
	put go store
	save WESTGATE
	goto perceivehealth

WESTGATE:
	move out
	pause
	move w
	move w
	move w
	goto endperc

PERCEIVEHEALTH:
	pause 1
	put perc health
	match PHGOOD You close your eyes, drawing all your thoughts inward
	match PHWAIT You're not ready to do that again, yet
	matchwait

PHWAIT:
	pause 1
	goto PERCEIVEHEALTH

PHGOOD:
	put exp
	pause 8
	goto %s

END:
exit

ENDPERC:
Counter add 1
Echo ~*~ You have run %c lap(s) so far ! ~*~
pause 5
put exp skill empathy
match end mind lock
match end dazed
match end bewildered
match end murky
match PHHAVEN EXP HELP 
matchwait