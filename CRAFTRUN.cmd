GotoForging:
	put #statusbar FORGING
	pause 1
	put #goto forging
	match GotoForging MOVE FAILED
	match GetForging YOU HAVE ARRIVED
	matchwait
GetForging:
	pause 1
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
	put .mastercraft
	waitfor MASTERCRAFT DONE
ReturnCrafting:
	put #statusbar FINISHING CRAFTING.
	pause 2
	put .goto Riverhaven
	match ReturnCrafting MOVE FAILED
	waitfor ARRIVED AT DESTINATION
	matchwait
        exit
