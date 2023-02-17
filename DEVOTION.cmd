echo
echo
echo ********** MUST HAVE 8 SILVER IN BANK, AND A VIAL OF HOLY WATER
echo TYPE YES IF YOU HAVE THIS!
waitfor yes
goto start

start:
put stow right
pause
put stow left
pause
echo
echo
put commune
echo
echo
pause 2
put go window
pause
put with 800 copper kron
pause
move out
move out
move sw
put put 500 cop kron into alms
echo
echo
put commune
echo
echo
pause 2
goto bath

bath:
move nw
move n
move go shop
put order sage
pause
put offer 23
pause
put stow sage
pause
put order laven
pause
put offer 23
pause
put stow laven
pause
put order wine
pause
put offer 237
pause
put stow wine
pause
move out
move s
move se
move go gate
move n
move w
move nw
move w
move n
move nw
move w
goto bath2

bath2:
put look pool
match fill dry.
match fill shallow.
match fill half full
match fill nearly full
match bath3 is full
match bath3 overflowing.
matchwait

fill:
put prep bless 5
pause
put fill pot with rivulet
waitfor roundtime
pause 5
put cast water
pause
put pour pot into bath
waitfor roundtime
goto bath2

bath3:
put go pool
put get laven
pause
put rub lavender
pause
put get sage
pause
put rub sage
waitfor You wake up once more,
goto altar

altar:
echo
echo
put commune
echo
echo
pause 2
move out
move e
move se
move ne
move e
put kneel
pause
move go pass
goto stand1

stand1:
put dance
match stand1 unbalanced
match stand1 weight
match 1 leap
matchwait

1:
pause
move s
put kneel
pause
put kiss altar
pause 2
goto touch

touch:
put touch altar
match stand You see yourself laughing
match stand vision
match touch K>
matchwait

stand:
put dance
match stand unbalanced
match stand weight
match seed you leap
matchwait

seed:
echo
echo
put commune
echo
echo
pause 2
move n
put kneel
pause
move go pass

stand2:
put dance
match stand2 unbalanced
match stand2 weight
match 2 leap
matchwait

2:
pause
move w
move sw
move s
move e
move se
move e
move s
move go gate
move ne
move e
move e
move e
move n
move n
move n
move ne
move n
move n
move n
move n
move e
move go gate
move n
move n
move n
move ne
move ne
move n
move nw
move nw
move n
move n
move ne
move nw
move n
move n
move nw
move nw
move n
move n
move n
move ne
move ne
move ne
move e
move e
move e
move n
move n
move n
move n
move n
goto seed2

seed2:
put gather seed
match seed2 empty handed.
match seed3 seed
matchwait

seed3:
move s
move s
move s
move s
move s
move w
move w
move w
move sw
move sw
move sw
move s
move s
move s
move se
move se
move s
move s
move se
move sw
move s
move s
move se
move se
move s
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move s
move s
move w
move w
move s
move w
move w
move w
move w
move n
move n
move n
move n
move go guild
move go arch door
goto seed4

seed4:
put get my vial
put sprinkle vial on room
pause
put plant seed
pause 2
pause
put sprinkle vial on room
pause
put go arch
pause
echo
echo
put commune
echo
echo
pause 2
goto recite

dance:
put dance
pause 20
put dance
pause 20
put dance
match dance Conclusion, but
match exit conclusion at last,
matchwait

recite:
put get my wine
pause
put pour wine on altar
pause
put stow wine
pause
put Recite Phelim, give me strength for my righteous vengeance.; Chadatru, guide my sword to swing in justice.; verild, give me the power to conquer my enemies.; Truffenyi, let me not lose sight of compassion and mercy; Else, I will become like those I despise.; Urrem'tier, receive into your fetid grasp these wicked souls; May the Tamsine's realms never know their evil ways again;
pause
put rem badge
pause
put pray badge
waitfor roundtime
put wear my badge
echo
echo
put commune
echo
echo
pause 2
goto dance

exit:
put commune
exit