GotoCrafting:
	put #statusbar CRAFTING
	pause 2
	if $roomid = 0 then move south
	put .goto riverhaven
	match GotoCrafting MOVE FAILED
	match GetCrafting ARRIVED AT DESTINATION
	matchwait
GetCrafting:
	pause 1
	put .vault
	waitfor VAULT
	pause 1
	put get pack on shelf
	pause 1
	put wear my pack 
	pause 1
	put remove my duffel bag
	pause
	put put duffel bag on shelf
        pause 2
	put DONE
	waitfor VAULT
GotoForging:
	put #statusbar FORGING
	pause 1
	put #goto forging
	match GotoForging MOVE FAILED
	match GetForging YOU HAVE ARRIVED
	matchwait
GetForging:
	pause 1
	put prep phk 15
	pause
	put charge camb bracer 17
	pause
	put invoke my bracer
	pause
	waitfor You feel fully prepared
	put cast
	pause
	put .mastercraft
	waitfor MASTERCRAFT DONE
GotoEngineering:
	put #statusbar ENGINEERING
	pause 1
	put #goto Engineering
	match GotoEngineering MOVE FAILED
	match GetEngineering YOU HAVE ARRIVED
	matchwait
GetEngineering:
	pause 1
	put prep phk 15
	pause
	put charge camb bracer 17
	pause
	put invoke my bracer
	pause
	waitfor You feel fully prepared
	put cast
	pause
	put .mastercraft
	waitfor MASTERCRAFT DONE
GotoAlchemy:
	put #statusbar ALCHEMY
	pause 1
	put #goto Alchemy
	match GotoAlchemy MOVE FAILED
	match GetAlchemy YOU HAVE ARRIVED
	matchwait
GetAlchemy:
	pause 1
	put prep phk 15
	pause
	put charge camb bracer 17
	pause
	put invoke my bracer
	pause
	waitfor You feel fully prepared
	put cast
	pause
	put .mastercraft
	waitfor MASTERCRAFT DONE
GotoOutfitting:
	put #statusbar OUTFITTING
	pause 1
	put #goto Outfitting
	match GotoOutfitting MOVE FAILED
	match GetOutfitting YOU HAVE ARRIVED
	matchwait
GetOutfitting:
	pause 1
	put prep phk 15
	pause
	put charge camb bracer 17
	pause
	put invoke my bracer
	pause
	waitfor You feel fully prepared
	put cast
	pause
	put .mastercraft
	waitfor MASTERCRAFT DONE
ReturnCrafting:
	put #statusbar FINISHING CRAFTING.
	pause 2
	put .goto Riverhaven
	match ReturnCrafting MOVE FAILED
	match DropoffCrafting ARRIVED AT DESTINATION
	matchwait
DropoffCrafting:
	pause 1
	put .vault
	waitfor VAULT
	pause 1
	put remove my pack
	pause
	put put my pack on shelf
        pause
        put get duff bag on shelf
        pause
        put put wear my duffel bag
	pause 1
	put DONE
CraftFinished:
	pause 6
	put #goto 59
	waitfor ARRIVED AT DESTINATION
Finished:
	## goto Beginning
	## goto exit