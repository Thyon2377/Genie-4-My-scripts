#action send #queue clear; send 1 $lastcommand when ^\.\.\.wait|^Sorry, you may only type

###If you have a prayer parchment, set the variable to YES, otherwise set it to NO. Same with playing an instrument for devotion.

send #var Prayerparchment NO
send #var MusicallyInclined NO
send #var God Faenella

StartDevotions:
send #goto 351
waitfor The roof of this small
goto Pray

Pray:
send pray Truffenyi
pause
goto Badge

Badge:
send remove my pilgrim badge
waitfor You take off
send pray my pilgrim badge
pause
send wear my pilgrim badge
waitfor You put on
goto Incense

Incense:
send get my incense
waitfor You get
send drop my incense
waitfor You drop
send wield my carving knife
waitfor You draw out
send get my flint
waitfor You get
goto LightIncense

LightIncense:
pause
send light incense with my flint
Match IncenseLit then bursts into flames
match LightIncense but nothing happens
matchwait

IncenseLit:
send stow carving knife
send put my flint in thigh bag
waitfor You put
send get incense
waitfor You pick up
send wave my incense at altar
waitfor You sense that you are
send snuff my incense
waitfor You snuff out
send put my incense in thigh bag
waitfor You put
goto Music

Music:
If $MusicallyInclined = NO then goto Dance
send .music Tamsine
waitfor Music Complete
goto Dance

Dance:
send dance
pause 11
send dance
pause 11
send dance
pause 11
goto Wine

Wine:
put get my wine
matchre PourWine You get
matchre MoreWine What were you referring to
matchwait

MoreWine:
send #goto Bank
waitfor Marble tiled floors covered
send go window
send withdraw 3 silver
send #goto 411
waitfor In this small adjunct
send order wine
send offer 250
waitfor Durantine waves a small censer
send #goto 352
waitfor The roof of this small
goto PourWine

PourWine:
send pour my wine on altar
waitfor You quietly pour some of the wine onto the altar.
send stow my wine in my bag
goto Kiss

Kiss:
send kneel
send kiss altar
waitfor You bend forward
#goto PrayerBeadChain
goto Recite

PrayerBeadChain:
put rem my chain
waitfor You remove
send meditate my chain
waitfor suddenly detaches from your prayer bead chain
send wear my chain
goto Recite

Recite:
send recite Phelim, give me strength for my righteous vengeance\;Chadatru, guide my sword to swing in justice\;Everild, give me the power to conquer my enemies\;Truffenyi, let me not lose sight of compassion and mercy\;Else, I will become like those I despise\;Urrem'tier, receive into your fetid grasp these wicked souls\;May the Tamsine's realms never know their evil ways again
waitfor You sense that you are
goto Prayerparchment

Prayerparchment:
if $Prayerparchment = NO then goto Seed
send get my prayer parchment
waitfor You get
send open my prayer parchment
waitfor You open your
send invoke my parchment
pause 30
send close my parchment
waitfor You close
send stow my parchment
goto Seed

Seed:
send stand
waitfor You stand
send #goto NTR
waitfor You are before
send #goto 341
waitfor The darker colors of the serrated wirgars
goto GatherSeed

GatherSeed:
pause
send gather seed
match GatherSeed You come up empty
match GotSeed You find a tiny sirese seed
matchwait

GotSeed:
send #goto Crossing
waitfor Here stands the Northeast Gate
send #goto Temple
waitfor The immense outer walls of the temple
move north
send plant seed
send get my Chalice
waitfor You get
send sprinkle my Chalice on room
waitfor You sense that you are
send put Chalice in my backpack
waitfor You put
send #goto Crossing
waitfor This stretch of road is wide and paved
send put 5 silver kronar in almsbox
send #goto Cleric