#Aesry Travel Script 5/1/2011
; Script written by Xada VonKroft and edited by Kraelyst
; Most current version of this script available at
; http://www.kraelyst.com/travel

ECHO
ECHO ===================================================
ECHO *** List of possible destinations:
ECHO *** (only the first 3 letters required)
ECHO
ECHO *** TOWN AND DOCKS
ECHO  * Bank
ECHO  * Herbs
ECHO  * Gems
ECHO  * Jail
ECHO  * Debt
ECHO  * Pawn
ECHO  * Vaults
ECHO  * Hospital/Empath
ECHO  * ALL Stat training (Wis, Int, Ref, Str, Sta, Dis, Agi, Cha)
ECHO  * Tanner
ECHO  * Origami
ECHO  * Leather repair
ECHO  * Metal repair
ECHO  * MAMAS
ECHO  * Morgue (front room only)
ECHO  * Lybadel Dock
ECHO  * Halasa Selhin Dock
ECHO  * Beach (swimming)
ECHO  * Stream (for swimming and home area)
ECHO
ECHO *** HUNTING
ECHO  * Unyns (outside cave entrance)
ECHO  * Bloodwolves (trail into bloodwolves)
ECHO  * Frosties (at the cliff)
ECHO  * Snow Goblins (fissure)
ECHO  * La'tami (base of Cliffs)
ECHO  * Snaer Hafwa (at High Cliffs Ledge)
ECHO  * Wir Dinego (outside gate)
ECHO  * Moss Meys (on the Jama)
ECHO
ECHO *** You may start at any of the destinations
ECHO *** In shops you must start where the transactions take place
ECHO ===================================================

if_1 goto Start
goto NODESTINATION

NODESTINATION:
pause
ECHO
ECHO =============================================
ECHO *** You did not enter a destination
ECHO *** To use this script type .{scriptname} {destination}
ECHO *** For example, to go to the gem shop type:  .aesry gem
ECHO =============================================
ECHO
EXIT

Start:
put set description
put set roomname

CHECKLOCATION1:
pause
match CHECKLOCATION1 Sorry, you may only
match docktanner-lybadel [Aesry Surlaenis'a, Willowbee's Pelts and Spinners]
match unyn-lybadel [Aesry Surlaenis'a, Cliff Path]
match frostie-bloodwolves [Aesry Surlaenis'a, Geshi'selhin Chui]
match fissure-bloodwolves [Aesry Surlaenis'a, Geshiger]
match jail-bank [jail, Guard Office]
match debt-bank [Aesry Surlaenis'a, debt Office]
match carousel-bank [Aesry Surlaenis'a, The carousel]
match la'tami-bank [Aesry Surlaenis'a, Bottom of Cliff]
match hafwa-bank [Aesry Surlaenis'a, High Cliffs Ledge]
match wirdinego-bank [Aesry Surlaenis'a, Outside the Necropolis]
match Autopath-bank [Shoan Isenil'a, Raeshisen]
match hospital-bank [Aesry Surlaenis'a, Shoan Isenil'a]
match mamas-bank [Aesry Surlaenis'a, Shh'yris's Forge]
match gate-bank [Tona Kertigen, Harti]
match entrance-bank [Tona Kertigen, Entrance Hall]
match deposit-bank [Tona Kertigen, Deposit Window]
match exchange-bank [Tona Kertigen, Exchange]
match gem-2nd [Shoiya's gems, Purchasing]
match morgue-2nd [morgue]
match herb-1st alchemical and herbal Supplies]
match leather-1st Sefu's Leather Repair]
;    --1ST TIER--
match %1 Egani's Furs]
;    --2ND TIER--
match %1 origami Boutique]
;    -- BANK --
match %1 bank building
;    --4TH TIER--
match %1 Ishh's Used Goods
;    --5TH TIER--
match %1 Shyrel'nor Fundisoli]
match %1 Birches border the road
match %1 long dirt path and a steep trail leading
match %1 steep trail leading up the mountain
Match %1 lybadel's schedule
match CHECKLOCATION2 You glance
put look
put glance
matchwait

CHECKLOCATION2:
pause
match stream-5th [Aesry Surlaenis'a, Highland Ledge]
match Beach-lybadel Aesry Surlaenis'a, Near Lezeni's Cove]
match wisdom-1st [Ger Ilerthan, Isinrel]
match reflex-2nd Weapons Training
match intel-bank Shoan Sulihean]
match strength-bank Beside the Pier]
match stamina-bank Bellows Room]
match discipline-4th Willow Park]
match agility-4th [Joirin's Puzzle Shop, Back Room]
match halasa-lybadel [Harbor Docks, Aesry Surlaenis'a]
match outsidefissure-bloodwolves [Aesry Surlaenis'a, Bu'amakra]

;BEGIN CUT BELOW THIS LINE
match NOSTART You glance
put look
put glance
matchwait
;END CUT ABOVE THIS LINE

1st-bank:
pause
move out
move go gate
move s
put climb stair
waitfor You reach the end
move s
move s
move s
put climb step
waitfor You reach the end
move s
move s
move s
move e
goto %1

1st-2nd:
pause
move out
move go gate
move s
put climb stair
waitfor You reach the end
move s
move s
move e
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move se
move go building
goto %1

2nd-1st:
pause
move out
move nw
move w
move nw
move w
move sw
move w
move sw
move sw
move s
move sw
move w
move n
move n
put climb stair
waitfor You reach the end
move n
move go gate
move go door
goto %1

2nd-bank:
pause
move out
move se
move s
move se
move e
move s
put climb stair
waitfor You reach the end
move s
move s
move w
move s
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1

4th-bank:
pause
move go door
move e
move n
put climb step
waitfor You reach the end
move n
move n
move w
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1

bank-4th:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move ne
move ne
move n
move ne
move e
move s
move s
put climb step
waitfor You reach the end
move s
move w
move go shop
goto %1

4th-5th:
pause
move go door
move e
move s
move s
put climb stair
waitfor You reach the end
move s
move w
move sw
move s
move sw
move sw
move w
move sw
move w
move nw
move go courtyard
goto %1

5th-4th:
pause
move out
move se
move e
move ne
move e
move ne
move ne
move n
move ne
move e
move n
put climb stair
waitfor You reach the end
move n
move n
move w
move go shop
goto %1

5th-bank:
pause
move out
move w
move nw
move nw
move n
move nw
move w
move n
put climb stair
waitfor You reach the end
move n
move n
move n
put climb step
waitfor You reach the end
move n
move n
move e
goto %1

bank-5th:
pause
move w
move s
move s
put climb step
waitfor You reach the end
move s
move s
move s
put climb stair
waitfor You reach the end
move s
move e
move se
move s
move se
move se
move e
move go courtyard
goto %1

leather-1st:
pause
move w
goto %1

gem-2nd:
pause
move out
move n
move nw
move go building
goto %1 

docktanner-lybadel:
pause
move out
move n
move n
move climb ladder
goto %1 

halasa-lybadel:
pause
move e
move n
goto %1

Beach-lybadel:
move climb jetty
move climb ladder
move n
move n
move n
move climb ladder
goto %1 

unyn-lybadel:
pause
move s
move down
move se
move s
move climb trail
move w
move w
move w
move climb ladder
goto %1 

frostie-bloodwolves:
pause
move climb cliff
move se
move sw
move s
move s
move se
move e
move se
move e
move climb trail
goto %1 

fissure-bloodwolves:
pause
move out
move climb steep slope
move climb narrow ledge
move climb stair
move go path
move s
move s
move se
move e
move se
move e
move climb trail
goto %1 

outsidefissure-bloodwolves:
pause
move climb steep slope
move climb narrow ledge
move climb stair
move go path
move s
move s
move se
move e
move se
move e
move climb trail
goto %1 

mossmeys-blood:
pause
put climb stair
waitfor You reach the end
move w
put climb step
waitfor You reach the end
move w
move go gate
move w
move w
goto %1 

Gate-bank:
pause
move go gate
goto %1 

entrance-bank:
pause
move go door
move go gate
goto %1 

deposit-bank:
pause
move s
move go door
move go gate
goto %1 

exchange-bank:
pause
move e
move s
move go door
move go gate
goto %1

morgue-2nd:
pause
move out
move e
move ne
move e
move se
move e
move se
move go building
goto %1 

jail-bank:
pause
move go door
move go gate
move s
move sw
move s
goto %1 

debt-bank:
pause
move out
move w
move sw
move sw
move s
move sw
move s
goto %1 

carousel-bank:
pause
move out
move out
move w
move nw
move w
move sw
move w
move sw
move sw
move s
move sw
move s
goto %1 

la'tami-bank:
pause
move sw
move s
move sw
move s
move s
move s
move w
move sw
move climb bank
move sw
move nw
move sw
move nw
move nw
move w
move w
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1 

hafwa-bank:
pause
move climb wide ledge
move climb cant ledge
move climb slant ledge
move climb down
move sw
move s
move sw
move se
move climb hole
move climb crev
move climb down
move climb down
move go tunnel
move climb down
move climb shelf
move climb down
move s
move climb thin ledge
move climb lower ledge
move climb down
move sw
move s
move sw
move s
move s
move s
move w
move sw
move climb bank
move sw
move nw
move sw
move nw
move nw
move w
move w
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1 

mamas-bank:
pause
move out
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1 

Autopath-bank:
pause
move go arch
move out
move out
move nw
move w
move nw
move nw
move n
move nw
goto %1 

hospital-bank:
pause
move out
move nw
move w
move nw
move nw
move n
move nw
goto %1 

wirdinego-bank:
pause
move w
move n
move n
move n
put climb step
waitfor You reach the end
move n
move n
move w
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1 

Stream-5th:
pause
move go ledge
move e
move ne
put climb trail
waitfor You reach the end
pause
put climb path
waitfor You reach the end
move s
move sw
move sw
move w
move sw
move w
move nw
move go courtyard
goto %1 

lyb:
lyba:
lybad:
lybade:
lybadel:
pause
doc:
dock:
docks:
pie:
pier:
put look
match bank-blood bank building
match blood-lybadel long dirt path and a steep trail leading
match blood-lybadel steep trail leading up the mountain 
Match end-lybadel lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

rat:
rath:
ratha:
hal:
hala:
halas:
halasa:
halasas:
halasase:
halasasel:
halasaselh:
halasaselhi:
halasaselhin:
sel:
selh:
selhi:
selhin:
put look
match bank-blood bank building
match blood-lybadel long dirt path and a steep trail leading
match blood-lybadel steep trail leading up the mountain
Match lybadel-halasa lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

sea:
swi:
swim:
swimo:
swimoc:
swimoce:
swimocea:
swimocean:
oce:
ocea:
ocean:
bea:
beac:
beach:
pause
put look
match bank-blood bank building
match blood-lybadel long dirt path and a steep trail leading
match blood-lybadel steep trail leading up the mountain
Match lybadel-beach lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

uny:
unyn:
unyns:
pause
put look
match bank-blood bank building
match blood-lybadel long dirt path and a steep trail leading
match blood-lybadel steep trail leading up the mountain
Match lybadel-unyn lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

blo:
bloo:
blood:
bloodw:
bloodwo:
bloodwol:
bloodwolf:
bloodwolfs:
bloodwolv:
bloodwolve:
bloodwolves:
wol:
wolf:
wolfs:
wolv:
wolve:
wolves:
pause
put look
match bank-blood bank building
match end-blood long dirt path and a steep trail leading
match end-blood steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

fro:
fros:
frost:
frosti:
frostie:
frosties:
frostw:
frostwe:
frostwea:
frostweav:
frostweave:
Frostweaver:
frostweavers:
wea:
weav:
weave:
weaver:
weavers:
pause
put look
match bank-blood bank building
match blood-frostie long dirt path and a steep trail leading
match blood-frostie steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

sno:
snow:
snowg:
snowgo:
snowgob:
snowgobl:
snowgobli:
snowgoblin:
snob:
snobl:
snobli:
snoblin:
snoblins:
snobs:
gob:
gobs:
gobl:
gobli:
goblin:
goblins:
fis:
fiss:
fissu:
fissur:
fissure:
pause
put look
match bank-blood bank building
match blood-snobs long dirt path and a steep trail leading
match blood-snobs steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mossmeys-blood Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

mos:
moss:
mossm:
mossme:
mossmey:
mossmeys:
mey:
meys:
pause
put look
match bank-blood bank building
match blood-mossmeys long dirt path and a steep trail leading
match blood-mossmeys steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

la':
la't:
la'ta:
la'tam:
la'tami:
lat:
lata:
latam:
latami:
pause
put look
match bank-la'tami bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

haf:
hafw:
hafwa:
sna:
snae:
snaer:
snaerh:
snaerha:
snaerhaf:
snaerhafw:
snaerhafwa:
put look
match bank-hafwa bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

wir:
wird:
wirdi:
wirdin:
wirdine:
wirdineg:
wirdinego:
din:
dine:
dineg:
dinego:
pause
put look
match bank-wirdingeo bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

=========================
1ST TIER LOCATIONS [tanner]

tan:
tann:
tanne:
tanner:
tanners:
rep:
repa:
repai:
repair:
lea:
leat:
leath:
leathe:
leather:
leatherr:
leatherre:
leatherrep:
leatherrepa:
leatherrepai:
leatherrepair:
put look
match bank-1st bank building
match blood-lybadel long dirt path and a steep trail leading
match blood-lybadel steep trail leading up the mountain
Match lybadel-tanner lybadel's schedule
match mossmeys-blood Birches border the road
match end-tanner Egani's Furs]
match 2nd-1st origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

her:
herb:
herbs:
herbsh:
herbsho:
herbshop:
alc:
alch:
alche:
alchem:
alchemi:
alchemic:
alchemica:
alchemical:
alchemy:
put look
match bank-1st bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-herb Egani's Furs]
match 2nd-1st origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

wis:
wisd:
wisdo:
wisdom:
put look
match bank-1st bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-wisdom Egani's Furs]
match 2nd-1st origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

=========================
2ND TIER LOCATIONS [origami]

mor:
morg:
morgu:
morgue:
put look
match bank-2nd bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-2nd Egani's Furs]
match 2nd-morgue origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

ori:
orig:
origa:
origam:
origami:
origamis:
origamish:
origamisho:
origamishop:
put look
match bank-2nd bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-2nd Egani's Furs]
match end-origami origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

gem:
gems:
gemsh:
gemsho:
gemshop:
put look
match bank-2nd bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-2nd Egani's Furs]
match 2nd-gem origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

ref:
refl:
refle:
reflex:
put look
match bank-2nd bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-2nd Egani's Furs]
match 2nd-reflex origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

=========================
3RD TIER LOCATIONS [bank]

ban:
bank:
put look
match end-bank bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

mam:
mama:
mamas:
met:
meta:
metal:
metalr:
metalre:
metalrep:
metalrepa:
metalrepai:
metalrepair:
put look
match bank-mamas bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

hos:
hosp:
hospi:
hospit:
hospita:
hospital:
aut:
auto:
autop:
autopa:
autopat:
autopath:
autoe:
autoem:
autoemp:
autoempa:
autoempat:
autoempath:
emp:
empa:
empat:
empath:
hea:
heal:
heale:
healer:
put look
match bank-autopath bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

jai:
jail:
put look
match bank-jail bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

deb:
debt:
debto:
debtof:
debtoff:
debtoffi:
debtoffic:
debtoffice:
debts:
put look
match bank-debt bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

car:
caro:
carou:
carous:
carouse:
carousel:
vau:
vaul:
vault:
vaults:
put look
match bank-carousel bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]

match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

int:
inte:
intel:
intell:
intelli:
intellig:
intellige:
intelligen:
intelligenc:
intelligence:
put look
match bank-intel bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

str:
stre:
stren:
streng:
strengt:
strength:
put look
match bank-strength bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

sta:
stam:
stami:
stamin:
stamina:
put look
match bank-stamina bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
Match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-bank Ishh's Used Goods
match 5th-bank Shyrel'nor Fundisoli]
matchwait

=========================
4TH TIER LOCATIONS [Pawnshop]

paw:
pawn:
pawns:
pawnsh:
pawnsho:
pawnshop:
put look
match bank-4th bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match end-pawn Ishh's Used Goods
match 5th-4th Shyrel'nor Fundisoli]
matchwait

dis:
disc:
disci:
discip:
discipl:
discipli:
disciplin:
discipline:
put look
match bank-4th bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-discipline Ishh's Used Goods
match 5th-4th Shyrel'nor Fundisoli]
matchwait

agi:
agil:
agili:
agilit:
agility:
put look
match bank-4th bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-agility Ishh's Used Goods
match 5th-4th Shyrel'nor Fundisoli]
matchwait

=========================
5TH TIER LOCATIONS [Charisma]

cha:
char:
chari:
charis:
charism:
charisma:
put look
match bank-5th bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-5th Ishh's Used Goods
match end-charisma Shyrel'nor Fundisoli]
matchwait

strea:
stream:
put look
match bank-5th bank building
match blood-bank long dirt path and a steep trail leading
match blood-bank steep trail leading up the mountain
match lybadel-blood lybadel's schedule
match mey-bank Birches border the road
match 1st-bank Egani's Furs]
match 2nd-bank origami Boutique]
match 4th-5th Ishh's Used Goods
match 5th-stream Shyrel'nor Fundisoli]
matchwait

=================

end-bank:

pause
ECHO
ECHO *** YOU ARE NOW AT THE BANK ***
ECHO
EXIT

end-blood:

pause
ECHO
ECHO *** YOU ARE NOW AT THE TRAIL TO BLOODWOLVES ***
ECHO
EXIT

end-lybadel:

pause
ECHO
ECHO *** YOU ARE NOW AT THE LYBADEL DOCK ***
ECHO
EXIT

end-pawn:

pause
ECHO
ECHO *** YOU ARE NOW AT THE PAWN SHOP ***
ECHO
EXIT

end-charisma:

pause
ECHO
ECHO *** YOU ARE NOW AT CHARISMA TRAINING ***
ECHO
EXIT

end-tanner:

pause
ECHO
ECHO *** YOU ARE NOW AT THE AESRY TANNER ***
ECHO *** (the leather repair is east)
ECHO
EXIT

end-origami:

pause
ECHO
ECHO *** YOU ARE NOW AT THE ORIGAMI SHOP ***
ECHO
EXIT

bank-blood:
pause
move W
move go gate
move w
move w
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb stair
waitfor You reach the end
pause
move w
put climb step
waitfor You reach the end
move w
move go gate
move w
move w
goto %1 

herb-1st:
pause
move out
move sw
move s
move sw
move w
move go gate
move go door
goto %1

bank-1st:
pause
move w
move n
move n
move n
put climb step
waitfor You reach the end
move n
move n
move n
put climb stair
waitfor You reach the end
move n
move go gate
move go door
goto %1

bank-2nd:
pause
move w
move n
move n
move n
put climb step
waitfor You reach the end
move n
move e
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move se
move go building
goto %1

1st-herb:
pause
move out
move go gate
move e
move ne
move n
move ne
move go shop
ECHO
ECHO *** YOU ARE NOW AT THE HERB AND ALCHEMY SHOP ***
ECHO
exit

2nd-morgue:
pause
move out
move nw
move w
move nw
move w
move sw
move w
move go building
ECHO
ECHO *** YOU ARE NOW AT THE MORGUE ***
ECHO
exit

bank-1st:
pause
move w
move n
move n
move n
put climb step
waitfor You reach the end
move n
move e
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move se
move go building
goto %1

2nd-gem:
pause
move out
move se
move s
move go door
ECHO
ECHO *** YOU ARE NOW AT THE GEM SHOP ***
ECHO
EXIT

bank-jail:
pause
move n
move ne
move n
move go gate
move go door
ECHO
ECHO *** YOU ARE NOW AT THE JAIL ***
ECHO
EXIT

bank-debt:
pause
move n
move ne
move n
move ne
move ne
move e
move go gate
ECHO
ECHO *** YOU ARE NOW AT THE DEBT OFFICE ***
ECHO
exit

bank-carousel:
pause
move n
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move go building
move go door
ECHO
ECHO *** YOU ARE NOW AT THE CAROUSEL ***
ECHO
exit

bank-la'tami:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move ne
move ne
move n
move ne
move e
move go foot
move se
move se
move ne
move se
move ne
move climb bank
move ne
move e
move climb trail
move n
move n
move ne
move n
move ne

pause
ECHO
ECHO *** YOU ARE NOW AT THE BOTTOM OF THE LA'TAMI CLIFFS ***
ECHO
exit

bank-mamas:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move go building

pause
ECHO
ECHO *** YOU ARE NOW AT MAMAS (METAL REPAIR) ***
ECHO Weigh station is out, go path, go ramp
EXIT

bank-Autopath:
pause
move se
move s
move se
move se
move e
move se
move go gate
move go screen
move go arch

pause
ECHO
ECHO *** YOU ARE NOW AT THE NPC EMPATH ***
ECHO

EXIT

bank-hafwa:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move ne
move ne
move n
move ne
move e
move go foot
move se
move se
move ne
move se
move ne
move climb bank
move ne
move e
move climb trail
move n
move n
move ne
move n
move ne
move climb rock ledge
move climb thin ledge
move climb rock
move n
move climb perch
move climb shelf
move climb crev
move go tunnel
move climb crumbling ledge
move climb crev
move climb hole
move climb top
move nw
move ne
move n
move ne
move climb slant ledge
move climb cant ledge
move climb wide ledge
move climb slippery ledge

pause
ECHO
ECHO *** YOU ARE OUTSIDE SNAER hafWA ***
ECHO
EXIT

bank-wirdingeo:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move ne
move ne
move n
move ne
move e
move s
move s
put climb step
waitfor You reach the end
move s
move s
move s
move e
pause
ECHO
ECHO *** YOU ARE NOW AT THE CEMETARY ***
ECHO
EXIT

5th-stream:
pause
move out
move se
move e
move ne
move e
move ne
move ne
move n
put climb path
waitfor You reach the end
pause
put climb lane
waitfor You reach the end
move sw
move w
move go ledge
ECHO
ECHO ==================================
ECHO ***       To swim you will need to
ECHO ***   Go stream, west, west, west, north,
ECHO *** climb wall, go trail, southeast, east
ECHO ***   This will return you to this room.
ECHO ==================================
ECHO
pause
ECHO
ECHO *** YOU ARE NOW AT THE STREAM ***
ECHO
EXIT

blood-lybadel:
pause
put climb path
waitfor You reach the end
pause
move sw
move w
put climb trail
waitfor You reach the end
pause
move n
put climb trail
waitfor You reach the end
pause
move nw
move w
put climb road
waitfor You reach the end
pause
move s
put climb trail
waitfor You reach the end
pause
move sw
put climb path
waitfor You reach the end
pause
move nw
put climb ramp
waitfor You reach the end
pause
move w
put climb walk
waitfor You reach the end
move w
move w
move w
move climb ladder
goto %1 

blood-snobs:
pause
move climb trail
move w
move nw
move w
move nw
move n
move n
move go path
move climb stair
move climb narrow ledge
move climb steep slope
move go fissure
pause
ECHO
ECHO *** YOU ARE NOW AT THE FISSURE (SNOW GOBLINS) ***
ECHO
EXIT

blood-frostie:
pause
move climb trail
move w
move nw
move w
move nw
move n
move n
move nw
move ne
move climb cliff
pause
ECHO
ECHO *** YOU ARE NOW AT FROST WEAVERS ***
ECHO

EXIT

blood-Mossmeys:
pause
move e
move go gate
move e
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
pause
ECHO
ECHO *** YOU ARE NOW AT MOSS MEYS ***
ECHO
EXIT

blood-bank:
pause
move e
move go gate
move e
move e
put climb stair
waitfor You reach the end
move e
put climb stair
waitfor You reach the end
GOTO MEY-banK

MEY-banK:
pause
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
pause
move e
put climb stair
waitfor You reach the end
move e
move e
put bow dolphin
move go gate
move e
move e
goto %1 


lybadel-tanner:
pause
move climb ladder
move s
move s
move go hut
pause
ECHO
ECHO *** YOU ARE NOW AT THE DOCK TANNER ***
ECHO

EXIT

lybadel-blood:
pause
move climb ladder
move e
move e
move e
put climb walk
waitfor You reach the end
pause
move e
put climb ramp
waitfor You reach the end
pause
move se
put climb path
waitfor You reach the end
pause
move ne
put climb trail
waitfor You reach the end
pause
move n
put climb road
waitfor You reach the end
pause
move e
move se
put climb trail
waitfor You reach the end
pause
move s
put climb trail
waitfor You reach the end
pause
move e
move ne
put climb path
waitfor You reach the end
goto %1 

lybadel-Beach:
pause
move climb ladder
move s
move s
move s
move climb ladder
move climb jetty
pause
ECHO
ECHO *** YOU ARE NOW AT THE BEACH ***
ECHO
EXIT

lybadel-unyn:
pause
move climb ladder
move e
move e
move e
move climb trail
move n
move nw
move up
move n
ECHO ============================
ECHO *** Need to search for opening
ECHO ============================
pause
ECHO
ECHO *** YOU ARE NOW AT THE CAVE ENTRANCE TO UNYNS ***
ECHO
EXIT

lybadel-halasa:
pause
move s
move w
pause
ECHO
ECHO *** YOU ARE NOW AT THE HALASA SELHIN DOCK ***
ECHO
EXIT

wisdom-1st:
pause
move go sliding door
move n
move n
move w
move w
move go teak door
move s
move go gate
move w
move nw
move w
move sw
move w
move sw
move sw
move s
move sw
move w
move go gate
move go door
goto %1

1st-wisdom:
pause
move out
move go gate
move e
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move go gate
move n
move go teak door
move e
move e
move s
move s
move go sliding door
pause
ECHO
ECHO *** YOU ARE NOW AT THE WISDOM TRAINING AREA ***
ECHO
EXIT

reflex-2nd:
pause
move go screen door
move go steel gate
move s
move e
move ne
move n
move ne
move ne
move e
move ne
move e
move se
move e
move se
move go building
goto %1

2nd-reflex:
pause
move out
move nw
move w
move nw
move w
move sw
move w
move sw
move sw
move s
move sw
move w
move n
move go steel gate
move go screen door
pause
ECHO
ECHO *** YOU ARE NOW AT THE REFLEX TRAINING AREA ***
ECHO
EXIT

intel-bank:
pause
move out
move out
move go gateless arch
move s
goto %1

bank-intel:
pause
move n
move go library arch
move go open screen
move go alcove
pause
ECHO
ECHO *** YOU ARE NOW AT THE INTELLIGENCE TRAINING AREA ***
ECHO
EXIT

strength-bank:
pause
move climb step
move sw
move nw
move nw
move n
move nw
goto %1

bank-strength:
pause
move se
move s
move se
move se
move go pier
move climb step
pause
ECHO
ECHO *** YOU ARE NOW AT THE STRENGTH TRAINING AREA ***
ECHO
EXIT

stamina-bank:
pause
move s
move out
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto %1

bank-stamina:
pause
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move go building
move n
pause
ECHO
ECHO *** YOU ARE NOW AT THE STAMINA TRAINING AREA ***
ECHO
EXIT

discipline-4th:
pause
move go gravel path
move se
move e
move ne
move e
move ne
move ne
move n
move ne
move go shop
goto %1

4th-discipline:
pause
move go door
move sw
move s
move sw
move sw
move w
move sw
move w
move nw
move go gravel path
pause
ECHO
ECHO *** YOU ARE NOW AT THE DISCIPLINE TRAINING AREA ***
ECHO *** The Discipline instructor is only present during the day ***
ECHO
EXIT

agility-4th:
pause
move go wooden door
move out
move ne
move n
move ne
move go shop
goto %1

4th-agility:
pause
move go door
move sw
move s
move sw
move go shop
move go wooden door
pause
ECHO
ECHO *** YOU ARE NOW AT THE AGILITY TRAINING AREA ***
ECHO
EXIT


NOSTART:
ECHO
ECHO ======================================
ECHO *** You are not at a valid starting location
ECHO *** Please see the list above for valid locations
ECHO ======================================
ECHO
EXIT

FINISH:
put set Description
pause
ECHO
ECHO *** YOU HAVE ARRIVED ***
ECHO
EXIT