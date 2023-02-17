echo
echo List?
echo
echo 1: Anlaen
echo 2: Andaen (Weeks)
echo 3: Months
echo 4: Seasons
echo 5: Years
echo
echo Enter Number:

matchre Anlaen ^1
matchre Andaen ^2
matchre Months ^3
matchre Seasons ^4
matchre Years ^5
matchwait

Anlaen:
echo
echo # 	Anlas 			Hours
echo 0 	Anduwen 		0-1
echo 1 	Starwatch 		2-3
echo 2 	Asketi's Hunt 		4-5 	(summer sunrise)
echo 3 	Berengaria's Touch 	6-7
echo 4 	Hodierna's Blessing 	8-9 	(winter sunrise)
echo 5 	Peri'el's Watch 	10-11
echo 6 	Dergati's Bane 	12-13
echo 7 	Firulf's Flame 		14-15
echo 8 	Tamsine's Toil 	16-17 	(winter sunset)
echo 9 	Meraud's Cloak 	18-19
echo 10 	Phelim's Vigil	 	20-21 	(summer sunset)
echo 11 	Revelfae 		22-23
echo
goto exit

Andaen:
echo
echo Andu		Days
echo Kertandu 	1-4
echo Hodandu 	5-8
echo Evandu 	9-12
echo Truffandu 	13-16
echo Havrandu 	17-20
echo Elandu 	21-24
echo Chandu 	25-28
echo Glythandu 	29-32
echo Faeandu 	33-36
echo Tamsandu 	37-40
echo
goto exit

Months:
echo
echo #	Month					Days
echo 1 	Akroeg the Ram 			0-39
echo 2 	Ka'len the Sea Drake 			40-79		(spring)
echo 3 	Lirisa the Archer 			80-119
echo 4 	Shorka the Cobra 			120-159	(summer)
echo 5 	Uthmor the Giant 			160-199
echo 6 	Arhat the Fire Lion 			200-239
echo 7 	Moliko the Balance 			240-279	(fall)
echo 8 	Skullcleaver the Dwarven Axe 	280-319
echo 9 	Dolefaren the Brigantine 		320-359	(winter)
echo 10 	Nissa the Maiden 			360-399
echo
goto exit

Seasons:
echo
echo Season 	First Day 			Last Day
echo Winter 	30 Dolefaren (day 350) 	9 Ka'len (day 49 of the next year)
echo Spring 		10 Ka'len (day 50)	 	29 Shorka (day 149)
echo Summer 	30 Shorka (day 150) 		9 Moliko (day 249)
echo Fall 		10 Moliko (day 250) 		29 Dolefaren (day 349)
echo
goto exit

Years:
echo
echo #	Year
echo 0	Silver Unicorn (victory of Lanival)
echo 1	Bronze Wyvern
echo 2	Golden Panther
echo 3	Amber Phoenix
echo 4	Iron Toad
echo 5	Emerald Dolphin
echo 6	Crystal Snow Hare
echo
goto exit

exit:
exit