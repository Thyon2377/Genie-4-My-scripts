

if ("$charactername" = "Thyon") then
	{
	  var Axe tanto
	  var Scimitar tachi
	 
	}
if ("$charactername" = "Cupcayk") then
	{
	  var Axe shotel
	  var Scimitar iltesh
	  
	}
if ("$charactername" = "Hayiri") then
	{
	  var Axe hairpin
	  var Scimitar fan
	  
	}
if ("$charactername" = "Cheon") then
	{
	  var Axe Dagger
	  var Scimitar Boomerang
	  
	}



Start:
put #goto 371
pause 10

Get.Axe:
	matchre Get.Axe ^\.\.\.wait|^Sorry\, you may|^You are still stunned
	matchre Get.Scimitar ^You draw
put wield my %Axe
	matchwait

Get.Scimitar:
	matchre Get.Scimitar ^\.\.\.wait|^Sorry\, you may|^You are still stunned
	matchre Athletics.Check ^You draw
put wield my %Scimitar
	matchwait

#####################

Athletics.Check:
if ($Athletics.LearningRate >= 32) then goto Stow.Axe
gosub Climb

Time.Check:
if ($Athletics.LearningRate >= 32) then goto Stow.Axe
if ($gametime >= %Climb.Time && $Athletics.LearningRate < 32) then goto Athletics.Check
pause 2
goto Time.Check

Climb:

#####################

var Climb.Time $gametime
math Climb.Time add 70

#####################

move down
move n

move climb ash tree
move climb trunk

move climb birch tree
move climb trunk

move n

move climb ash tree
move climb trunk

move climb birch tree
move climb trunk

move w

move climb oak tree
move climb trunk

move climb elm tree
move climb trunk

move w

move climb elm tree
move climb trunk

move climb oak tree
move climb trunk

move e
move e
move s
move s
move climb tree
move climb twisted limb
move down
move climb north limb
move down
move climb southeast limb
move down
move climb tree
move climb tree
move down
move down

move down
move w
move w
move w
move w
move sw
move go running water
move sw
move w
move w
move w
move climb young log
move sw
move climb log
move s
move climb log
move sw
move climb log
move s
move climb log
move s
move go bridge
move s
move s
move go shore
move s
move s
move s
move sw
move w
move w
move sw
move sw
move s
move s
move s
move s
move s


move climb birch tree
move climb trunk

move climb pine tree
move climb trunk

move climb oak tree
move climb trunk

move n
move n
move w 

move climb deobar tree
move climb trunk

move e
move n
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move n
move go bridge
move n
move n
move go shore
move n
move climb log
move n
move climb log
move ne
move climb log
move n
move climb log
move ne
move climb log
move e
move e
move e
move ne
move go trail
move ne
move e
move e
move e
move e
move climb tree
RETURN

End:

Stow.Axe:
	matchre Stow.Axe ^\.\.\.wait|^Sorry\, you may|^You are still stunned
	matchre Stow.Scimitar ^You sheathe
put sheath my %Axe
	matchwait
	
Stow.Scimitar:
	matchre Stow.Scimitar ^\.\.\.wait|^Sorry\, you may|^You are still stunned
	matchre End1 ^You sheathe
put sheath my %Scimitar
	matchwait

End1:
put #goto 246
pause 5
put #PARSE DONE WITH ATHLETICS
exit