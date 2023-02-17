##Internal use, do not change value
setvariable dropOrdump drop

if_1 goto check2
goto menu

check2:
setvariable herbToCrush %1
if_2 goto start
goto menu


start:
if_2 save %2
put get mortar
loop:
pause 3
put forage %herbToCrush 
waitfor Roundtime:
##pause 1
put put my %herbToCrush in my mortar
pause 2
put get my pestle

crush:
##pause 2
put crush my %herbToCrush with my pestle
match %dropOrdump Crush what?
match crush Roundtime
matchwait

drop:
##pause 1
put stow pestle
put get my %s in my mortar
match drop2 You get
match dump1 What were you
matchwait

drop2:
put drop my %s
goto loop

dump1:
setvariable dropOrdump drop

dump:
put stow my pestle
pause 1
put dump my mortar in %s
put dump my mortar in %s
goto loop


menu:
echo ###########################################
echo Welcome to Eteladric's crushing script!
echo You can quick start this script by writing :
echo .Crush herbName (crushedHerbName OR dumpable container)
echo exemple   : .Crush ithor_root bucket
echo exemple 2 : .Crush jadice_flower jadice
echo Please select herb to forage
echo -----------------
echo EgMo = Eghmok Moss    (180 Outdoorsmanship needed)
echo AeLe = Aevaes Leaves  (?330?)
echo RiLe = Riolur Leaves  (30)
echo HuLe = Hulij Leaves   (?330?)
echo YeRo = Yelith Root    (60)
echo NuSt = Nuloe Stem     (280)
echo ItRo = Ithor Root     (?330?)
echo MuSa = Muljin Sap     (170)
echo JuSt = Junliar Stem   (???)
echo OjRo = Ojhenik Root   (?330?)
echo LuRo = Lujeakave Root (?330?)
echo HiFl = Hisan Flower   (?330?)
echo BlFl = Blue Flower    (?50?)
echo ###########################################
match EgMo EgMo 
match AeLe AeLe
match RiLe RiLe
match HuLe HuLe
match YeRo YeRo
match NuSt NuSt
match ItRo ItRo
match MuSa MuSa
match JuSt JuSt
match OjRo OjRo
match LuRo LuRo
match HiFl HiFl
match BlFl BlFl
matchwait

EgMo: 
setvariable herbToCrush Eghmok Moss
save Eghmok
goto menu2

AeLe:
setvariable herbToCrush Aevaes Leaves
save Aevaes
goto menu2

RiLe:
setvariable herbToCrush Riolur Leaves
save Riolur
goto menu2

HuLe:
setvariable herbToCrush Hulij Leaves
save Hulij
goto menu2

YeRo:
setvariable herbToCrush Yelith Root
save Yelith
goto menu2

NuSt:
setvariable herbToCrush Nuloe Stem
save Nuloe
goto menu2

ItRo:
setvariable herbToCrush Ithor Root
save Ithor
goto menu2

MuSa:
setvariable herbToCrush Muljin Sap 
save Muljin
goto menu2

JuSt:
setvariable herbToCrush Junliar Stem
save Junliar
goto menu2

OjRo:
setvariable herbToCrush Ojhenik Root
save Ojhenik
goto menu2

LuRo:
setvariable herbToCrush Lujeakave Root
save Lujeakave
goto menu2

HiFl:
setvariable herbToCrush Hisan Flower
save Hisan
goto menu2

BlFl:
Setvariable herbToCrush Blue Flower
save Blue
goto menu2

menu2:
echo ###########################################
echo Would you like to drop the crushed herb or
echo drop the content of your mortar in a container?
echo Write : DropHerb or DumpHerb
echo ###########################################
match start DropHerb
match menu3 DumpHerb
matchwait

menu3:
setvariable dropOrdump dump
echo ###########################################
echo Please select container to dump our herbs in
echo DBin = Bin
echo DBucket = Bucket
echo DBarrel = Barrel
echo DTurtle = Turtle
echo DHollow = Hollow
echo DRecepticle = Recepticle
echo ###########################################

match DBucket DBucket
match DBin DBin
match DBarrel DBarel
match DTurtle DTurtle
match DHollow DHollow
match DRecepticle DRecepticle
matchwait

DBucket:
save Bucket
goto start
DBin:
save Bin
goto start

DBarrel:
save Barrel
goto start

DTurtle:
save Turtle
goto start

DRecepticle:
save Recepticle
goto start

DHollow:
save Hollow
goto start