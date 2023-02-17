put #clear main
setvariable gs avenger
put #class racial on
put #class rp on
put #class arrive off
put #class combat off
put #class joust off

put avoid !drag
waitforre ^You're now avoiding

put avoid !hold
waitforre ^You're now avoiding

put avoid !join
waitforre ^You're now avoiding

send ask %gs for leave
waitforre ^With a sad look, (a|an) .+ (avenger|colepexy|dirnel|guardian|narmorbreth|woodwisp)|^To whom are you speaking

send close my compendium
waitforre ^You close|^That is already|^What were

send stow right
waitforre ^You put|^Stow what

send stow left
waitforre ^You put|^Stow what


send open my compendium
pause

put #mapper load Map61_Leth_Deriel
put look
action put #queue clear;send $lastcommand when ^(\.\.\.wait|Sorry,)

goto PERC1

COMP:
if ($Scholarship.LearningRate >= 34) && ($First_Aid.LearningRate >= 34) || ($First_Aid.LearningRate >= 34) then goto MAGIC
if ("$righthandnoun" = "$cambrinth") then put stow my $cambrinth
put get my compendium
waitforre o
put turn my compendium
waitforre o
put study my compendium
wait
pause .2
goto HPERC

MAGIC:
if ($mana < 85) then goto APPRAISE
else if ($Attunement.LearningRate >= 34) && ($Arcana.LearningRate >= 34) && ($Primary_Magic.LearningRate >= 34) then goto COMP
if ("$righthandnoun" = "compendium") then put stow my compendium
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
put prep GS
wait
put charge my $cambrinth 11
waitfor Roundtime
pause .1
pause .1
send invoke my $cambrinth
gs1:
pause 2
match gs2 not understanding your question.
match castgs1 ^With a sad look
put ask %gs for leave
castgs1:
matchwait 1.5
put cast %gs
waitforre ^With a warrior's calm|^With a gracious smile|^A spotted fungus colepexy gracefully flitters into the area^Howling, a hairy dog-faced dirnel bounds in^A salty bulbous-eyed narmorbreth swims in|^Your heart skips a beat, but you are unable
goto HPERC
gs2:
pause 2
match gs3 not understanding your question.
match castgs2 ^With a sad look
put ask second %gs for leave
castgs2:
matchwait 1.5
put cast %gs
waitforre ^With a warrior's calm|^With a gracious smile|^A spotted fungus colepexy gracefully flitters into the area^Howling, a hairy dog-faced dirnel bounds in^A salty bulbous-eyed narmorbreth swims in|^Your heart skips a beat, but you are unable
goto HPERC

gs3:
pause 2
match gs1 not understanding your question.
match castgs3 ^With a sad look
put ask second %gs for leave
castgs3:
matchwait 1.5
put cast %gs
waitforre ^With a warrior's calm|^With a gracious smile|^A spotted fungus colepexy gracefully flitters into the area^Howling, a hairy dog-faced dirnel bounds in^A salty bulbous-eyed narmorbreth swims in|^Your heart skips a beat, but you are unable
goto HPERC

APPRAISE:
if ($Appraisal.LearningRate >= 34) then goto FORAGE
if matchre ("$monsterlist", "(%gs)") then goto APPRAISE2
waitforre ^With a warrior's calm|^With a gracious smile|^A spotted fungus colepexy gracefully flitters into the area^Howling, a hairy dog-faced dirnel bounds in^A salty bulbous-eyed narmorbreth swims in
APPRAISE2:
send appraise %gs quick
wait
pause
return
goto HPERC

FORAGE:
if ($Perception.LearningRate >= 34) then goto OTHER
send collect torn cloth
wait
pause
send collect torn cloth
wait
pause
KICK:
send kick pile
waitforre Assuming you mean a pile|^I could not find what you were referring to
send kick pile
waitforre Assuming you mean a pile|^I could not find what you were referring to
goto HPERC

OTHER:
pause 5
goto HPERC

HPERC:
pause .5
match %s You're not ready to do that again, yet.
match RETURN You close your eyes, drawing all your thoughts inward,
put perceive health
matchwait

PHMOVE:
pause .5
put #mapper walk %ROOMID
waitfor %ROOMDESC
pause .5
return

RETURN:
pause .5
return

PERC1:
save FORAGE
var ROOMID 165
var ROOMDESC Madame Orris' Perfumerie, Salon
gosub PHMOVE
gosub HPERC

PERC2:
save COMP
var ROOMID 186
var ROOMDESC Arthianna's Clinic, Healing Tent
gosub PHMOVE
gosub HPERC

PERC3:
save MAGIC
var ROOMID 157
var ROOMDESC Khushi's, Back Room
gosub PHMOVE
gosub HPERC

PERC4:
save APPRAISE
var ROOMID 170
var ROOMDESC Ongadine's Garb and Gear, Showroom
gosub PHMOVE
gosub HPERC

PERC5:
save FORAGE
var ROOMID 146
var ROOMDESC Reena's Rainbow, Salesroom
gosub PHMOVE
gosub HPERC

PERC6:
save COMP
var ROOMID 148
var ROOMDESC Dove's Delightful Dwellings
gosub PHMOVE
gosub HPERC

PERC7:
save MAGIC
var ROOMID 151
var ROOMDESC Sinjian's Bardic Requisites, Sales Room
gosub PHMOVE
gosub HPERC

PERC8:
save APPRAISE
var ROOMID 154
var ROOMDESC Blanca's Basketry and Wickerworks, Showroom
gosub PHMOVE
gosub HPERC

PERC9:
save FORAGE
var ROOMID 156
var ROOMDESC Leth Deriel, Wooden Shack
gosub PHMOVE
gosub HPERC

PERC10:
save COMP
var ROOMID 160
var ROOMDESC Huyelm's Trueflight Bow and Arrow Shop, Salesroom
gosub PHMOVE
gosub HPERC

PERC11:
save MAGIC
var ROOMID 162
var ROOMDESC Morikai's, Salesroom
gosub PHMOVE
gosub HPERC

gosub skill.check
goto PERC1

skill.check:
if $Empathy.LearningRate > 33 then
goto end
else
return

end:
send echo YOU ARE MIND LOCKED IN EMPATHY.
put #play MindLocked
put #class arrive on
put avoid all
waitforre ^All AVOID options cleared
send ask %gs for leave
waitforre ^With a sad look, (a|an) .+ (avenger|colepexy|dirnel|guardian|narmorbreth|woodwisp)|^To whom are you speaking
send close my compendium
waitforre ^You close|^That is already|^What were
send stow right
waitforre ^You put|^Stow what
send stow left
waitforre ^You put|^Stow what
put #mapper walk Kilth Aldiyaus
waitfor Kilth Aldiyaus, Prayer Branch
