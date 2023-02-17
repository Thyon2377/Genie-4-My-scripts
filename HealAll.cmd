#HealAll

#  Variables in use in this script:
#  H = body PART healed  (arm)
#  P = body PLACE healed (right)
#  C = cambrinth used
#  M = mana used to charge cambrinth


CambrinthCheck:
echo
echo ************************************************
echo
echo Glancing for cambrinth now.
echo If using cambrinth, please tap or get your cambrinth.
echo If not using cambrinth, please type “none”.
echo
echo ************************************************
echo
put glance
match Yourcambrinth yourcambrinth
match Medallion medallion
match Ring ring
match Earcuff earcuff
match Orb orb
match Choker choker
match Pendant pendant
match Shard shard
match Wristcuff wristcuff
match Wristband wristband
match Cube cube
match Anklet anklet
match Torque torque
match Sliver sliver
match Shaving shaving
match Scrap scrap
match Flake flake
match Earring earring
match Globe globe
match Dragon dragon
match Armband armband
match Hairpin hairpin
match Pin pin
match Chain chain
match Rose rose
match Rod rod
match Skull skull
match Marble marble
match Phoenix phoenix
match Dolphin dolphin
match Wren wren
match Bag bag
match Marble marble
match Cricket cricket
match Hip hip
match HealthCheck none
match HealthCheck None
matchwait

Yourcambrinth:
setvariable C yourcambrinth
goto CambrinthMana

CambrinthMana:
echo
echo *****************************************************
echo
echo How much mana would you like to charge your cambrinth with?
echo ( Answer must be in the form of “ # mana “. )
echo ( Current preps are HW-5 and HS-7)
echo
echo *****************************************************
echo
match HealthCheck none
match HealthCheck None
match Cero 0 mana
match Uno 1 mana
match Dos 2 mana
match Tres 3 mana
match Cuatro 4 mana
match Cinco 5 mana
match Seis 6 mana
match Siete 7 mana
match Ocho 8 mana
match Nueve 9 mana
match Diez 10 mana
match Once 11 mana
match Doce 12 mana
match Trece 13 mana
match Catorce 14 mana
match Quince 15 mana
match Dieciseis 16 mana
match Diecisiete 17 mana
match Dieciocho 18 mana
match Diecinueve 19 mana
match Veinte 20 mana
match Veintiuno 21 mana
match Veintidos 22 mana
match Veintitres 23 mana
match Veinticuatro 24 mana
match Veinticinco 25 mana
match Veintiseis 26 mana
match Veintisiete 27 mana
match Veinteocho 28 mana
match Veintenueve 29 mana
match Treinta 30 mana
matchwait

HealthCheck:
put health
match Skin paralysis of the entire
match Skin difficulty controlling
match Skin some severe twitching
match Skin some minor twitching
match Skin to the skin
match Head head
match REye right eye
match LEye left eye
match Neck neck
match RArm right arm
match LArm left arm
match RHand right hand
match LHand left hand
match Chest chest
match Back back
match Abdomen abdomen
match RLeg right leg
match LLeg left leg
match Done You have no significant
matchwait

Skin:
setvariable H skin
setvariable P  
goto HealExt

Head:
setvariable H head
setvariable P  
goto HealExt

REye:
setvariable H right
setvariable P eye
goto HealExt

LEye:
setvariable H left
setvariable P eye
goto HealExt

Neck:
setvariable H neck
setvariable P  
goto HealExt

RArm:
setvariable H right
setvariable P arm
goto HealExt

Larm:
setvariable H left
setvariable P arm
goto HealExt

RHand:
setvariable H right
setvariable P hand
goto HealExt

LHand:
setvariable H left
setvariable P hand
goto HealExt

Chest:
setvariable H chest
setvariable P  
goto HealExt

Back:
setvariable H back
setvariable P  
goto HealExt

Abdomen:
setvariable H abdomen
setvariable P  
goto HealExt

RLeg:
setvariable H right
setvariable P leg
goto HealExt

LLeg:
setvariable H left
setvariable P leg
goto HealExt

#HealAllSupport

HealExt:
put prep hw 5
put charge my %C %M
waitfor Roundtime
pause 1
put invoke my %C
pause 12
put cast %H %P
match HealExt better
match HealExt improved
match HealExtScar healed
match HealExtScar is not injured
matchwait

HealExtScar:
put prep hs 7
put charge my %C %M
waitfor Roundtime
pause 1
put invoke my %C
pause 12
put cast %H %P
match HealExtScar better
match HealExtScar improved
match HealInt is not injured
match HealInt healed
matchwait

HealInt:
put prep hw 5
put charge my %C %M
waitfor Roundtime
pause 1
put invoke my %C
pause 12
put cast %H %P int
match HealInt better
match HealInt improved
match HealIntScar healed
match HealIntScar is not injured
matchwait

HealIntScar:
put prep hs 7
put charge my %C %M
waitfor Roundtime
pause 1
put invoke my %C
pause 12
put cast %H %P int
match HealIntScar better
match HealIntScar improved
match HealthCheck is not injured
match HealthCheck healed
matchwait

Done:
echo
echo ******************
echo
echo *** All clean! ***
echo
echo ******************
echo
Exit

Medallion:
setvariable C medallion
goto CambrinthMana
	
Ring:
setvariable C ring
goto CambrinthMana

Earcuff:
setvariable C earcuff
goto CambrinthMana

Orb:
setvariable C orb
goto CambrinthMana

Choker:
setvariable C choker
goto CambrinthMana

Pendant:
setvariable C pendant
goto CambrinthMana

Shard:
setvariable C shard
goto CambrinthMana

Wristcuff:
setvariable C wristcuff
goto CambrinthMana

Wristband:
setvariable C wristband
goto CambrinthMana

Cube:
setvariable C cube
goto CambrinthMana

Anklet:
setvariable C anklet
goto CambrinthMana

Torque:
setvariable C torque
goto CambrinthMana

Sliver:
setvariable C sliver
goto CambrinthMana

Shaving:
setvariable C shaving
goto CambrinthMana

Scrap:
setvariable C scrap
goto CambrinthMana

Flake:
setvariable C flake
goto CambrinthMana

Earring:
setvariable C earring
goto CambrinthMana

Globe:
setvariable C globe
goto CambrinthMana

Dragon:
setvariable C dragon
goto CambrinthMana

Cricket:
setvariable C cricket
goto CambrinthMana

Armband:
setvariable C armband
goto CambrinthMana

Hairpin:
setvariable C hairpin
goto CambrinthMana

Pin:
setvariable C pin
goto CambrinthMana

Chain:
setvariable C chain
goto CambrinthMana

Rose:
setvariable C rose
goto CambrinthMana

Hip:
setvariable C hip
goto CambrinthMana

Rod:
setvariable C rod
goto CambrinthMana

Skull:
setvariable C skull
goto CambrinthMana

Marble:
setvariable C marble
goto CambrinthMana

Phoenix:
setvariable C phoenix
goto CambrinthMana

Dolphin:
setvariable C dolphin
goto CambrinthMana

Wren:
setvariable C wren
goto CambrinthMana

Bag:
setvariable C bag
goto CambrinthMana

Cero:
setvariable M 0
goto HealthCheck

Uno:
setvariable M 1
goto HealthCheck

Dos:
setvariable M 2
goto HealthCheck

Tres:
setvariable M 3
goto HealthCheck

Cuatro:
setvariable M 4
goto HealthCheck

Cinco:
setvariable M 5
goto HealthCheck

Seis:
setvariable M 6
goto HealthCheck

Siete:
setvariable M 7
goto HealthCheck

Ocho:
setvariable M 8
goto HealthCheck

Nueve:
setvariable M 9
goto HealthCheck

Diez:
setvariable M 10
goto HealthCheck

Once:
setvariable M 11
goto HealthCheck

Doce:
setvariable M 12
goto HealthCheck

Trece:
setvariable M 13
goto HealthCheck

Catorce:
setvariable M 14
goto HealthCheck

Quince:
setvariable M 15
goto HealthCheck

Dieciseis:
setvariable M 16
goto HealthCheck

Diecisiete:
setvariable M 17
goto HealthCheck

Dieciocho:
setvariable M 18
goto HealthCheck

Diecinueve:
setvariable M 19
goto HealthCheck

Veinte:
setvariable M 20
goto HealthCheck

Veintiuno:
setvariable M 21
goto HealthCheck

Veintidos:
setvariable M 22
goto HealthCheck

Veintitres:
setvariable M 23
goto HealthCheck

Veinticuatro:
setvariable M 24
goto HealthCheck

Veinticinco:
setvariable M 25
goto HealthCheck

Veintiseis:
setvariable M 26
goto HealthCheck

Veintisiete:
setvariable M 27
goto HealthCheck

Veinteocho:
setvariable M 28
goto HealthCheck

Veintenueve:
setvariable M 29
goto HealthCheck

Treinta:
setvariable M 30
goto HealthCheck
