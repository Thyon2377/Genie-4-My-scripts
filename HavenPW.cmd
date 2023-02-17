ECHO Haven Powerwalking script  

setvariable CAM_PIECE AMULET
setvariable SPELL EASE
setvariable CAM_CHARGE 1
setvariable SPELL_MANA 1 
setvariable JUGGLIE knives
setvariable APPRAISE_1 hauberk	
setvariable APPRAISE_2 shield	
setvariable APPRAISE_3 black.pouch
setvariable APPRAISE_4 helm
setvariable NUM_STONES 5

top:
 put perc
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move s

 put perc
 waitfor ROUNDTIME
 pause 1
 move sw

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
 pause 1
 move w

 put perc
 waitfor ROUNDTIME
  pause 1

topClimb:
 move go tower
 move go door
 move climb ladd
 move climb ladd
 move go trap
 move out
 move e
 move e
 move climb ladder
 move climb ladder
 pause 6
 move e
 move e
 move e
 move e
 move e
 move e
 move e
 move e
 move e
 move e
 move e
 move go gate
 move climb mound
 move down
 move ne
 move nw
 move out
 move e
 move go tower
 move climb stair
 move climb ladder
 move climb rope
 pause 6
 move climb rope
 move climb ladder
 move climb stair
 move out
 move n
 move n
 move n
 move n
 move n
 move nw
 move nw
 move nw
 move nw
 move climb ladder
 move climb ladder
 move nw
 move nw
 move w
 move sw
 move sw
 move sw
 move s
 move s
 move s
 move s
 pause 6
 match doneClimb bew
 match doneClimb dazed
 match doneClimb mind lock
 match topClimb EXP HELP
 put exp climb
 matchwait

doneClimb:
 put get my %JUGGLIE
 topJugg:
  match topJugg ...wait
  match CheckEXP Roundtime
  put juggle my %JUGGLIE
  matchwait
 CheckEXP: 
  match done bew
  match done dazed
  match done mind lock
  match topJugg EXP HELP
  put exp perception
  matchwait

 done:
 pause 1
 put stow %JUGGLIE
 move e

 put perc
 waitfor ROUNDTIME
 pause 1
 move e

 put perc
 waitfor ROUNDTIME
 pause 1

 put climb ladder
 put go gap
 pause 1

#Just swims back and forth
topSwim:
 put swim n
 match topSwim ...wait
 match swim The planking overhead is in
 match expSwim swim north but can't
 matchwait
swim:
 put swim s
 match swim ...wait
 match expSwim The river lies blind
 match swim swim south but can't
 matchwait
expSwim:
 match doneSwim bew
 match doneSwim dazed
 match doneSwim mind lock
 match topSwim EXP HELP
 put exp swim
 matchwait 
doneSwim:
 pause 1
 put go gap
 put climb ladd
 move e

 put perc
 waitfor ROUNDTIME
 pause 1
 move e

 put perc
 waitfor ROUNDTIME
 pause 1
 move e

 put perc
 waitfor ROUNDTIME
 pause 1
 move e

 put perc
 waitfor ROUNDTIME
 pause 1
 move ne

 put get my stone
 match mechLearn You get
 match error I could not find
 match mechLearn You are already
 matchwait

 mechLearn:
  put rem %NUM_STONES stone from my stones
  pause
  pause
  put combine stone with other stone
  pause
  pause
  put exp mech
  match mechDone mind lock
  match mechLearn Time
  matchwait

 error:
  echo
  echo Where are your stones dumbass?
  echo

 mechDone:
  pause 1
  put put stone in cloa

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1
 move n

 put perc
 waitfor ROUNDTIME
 pause 1

 put rem my %CAM_PIECE

charge2:
 match charge2 ...wait
 match charge2 You fail
 match focus3 dissipates
 match expcheck3 absorbs
 match chill2 cannot harness
 put charge my cambrinth %CAM_PIECE %CAM_CHARGE
 matchwait

expcheck3:
 match focus3 mind lock
 match focus3 dazed
 match expcheck4 EXP HELP
 put exp magical devices
 matchwait

expcheck4:
 match focus4 mind lock
 match focus4 dazed
 match focus4 bew
 match charge2 EXP HELP
 put exp primary magic
 matchwait

chill2:
 echo              Chillin'
 pause 10
 goto charge2

focus3:
 match focus3 ...wait
 match focus3 fail
 match charge2 dim, almost magically null
 match Magic3 Your link to the
 match Magic3 readying it for your use
 put focus my cambrinth %CAM_PIECE
 matchwait

Magic3:
 pause 1
 put prep %SPELL %SPELL_MANA
 waitfor You feel fully prepared
 put cast
 put prep %SPELL %SPELL_MANA
 waitfor You feel fully prepared
 put cast
 pause 1
 goto expcheck3

focus4:
 match focus4 ...wait
 match focus4 fail
 match Magic4 dim, almost magically null
 match Magic4 readying it for your use
 put focus my cambrinth ring
 matchwait

Magic4:
 pause 1
 put prep %SPELL %SPELL_MANA
 waitfor You feel fully prepared
 put cast
 put wear ring

 put wield %APPRAISE_1
 pause 1
 put swap
 pause 1
 put wield %APPRAISE_2
 pause 1
topAppr:
 appr1:
  match appr1 ...wait
  match appr2 Roundtime
  put appraise my %APPRAISE_1
  matchwait
 appr2:
  match appr2 ...wait
  match cmpr Roundtime
  put appraise my %APPRAISE_2
  matchwait
 cmpr:
  match cmpr ...wait
  match appr3 Roundtime
  put compare my %APPRAISE_1 to my %APPRAISE_2
  matchwait
 appr3:
  match appr3 ...wait
  match appr4 Roundtime
  put appraise my %APPRAISE_3
  matchwait
 appr4:
  match appr4 ...wait
  match CheckAppr Roundtime
  put appraise my %APPRAISE_4
  matchwait
 CheckAppr:
  match doneAppr mind lock
  match topAppr EXP HELP
  put exp appraisal
  matchwait
 doneAppr:
  pause 1
  put shea %APPRAISE_1
  put shea %APPRAISE_2
  pause 1
CheckMindState:
 match Rest mind lock
 match Rest dazed
 match Rest bewilder
 match Rest perplex
 match Rest muddled
 match top EXP HELP
 put exp power
 matchwait
Rest:
 ECHO ******* Resting *******
 pause 300
 goto CheckMindState
