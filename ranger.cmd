#ranger.Cmd
#
#
if_1 goto %1

Start:

echo *******************************************************
echo Scouting and sorcery Training scripts
echo BY
echo Pfanston Melgorn
echo *******************************************************
echo *
echo *
echo *Scoutt1....:.....Crossing T1 to train scouting and perception Must Clear Hands First.
echo *
echo *   Note SCOUTT1 can take 15 min to complete, so dont stop it till its done.
echo *
echo *Scoutt3....:.....Crossing T1 to train scouting and percption must clear hands first.
echo *
echo *   Note SCOUTT3 has only easy trails, while Scoutt1 had 2 moderate and 1 difficult trail
echo *   Moderate trails take 70 skill, hand difficult take 100 skill. Put this int to handle
echo *   Easy only trails.
echo *
echo *Scoutt2....:.....Crossing T2 to train scouting and perception Must Clear Hands First.
echo *
echo *   Note SCOUTT2 can take 15 min to complete, so dont stop it till its done.
echo *
echo *Scout......:.....Shard Frozen Falls to train scouting and perception Must Clear Hands First.
echo *
echo *   Note SCOUT can take 20 min to complete, so dont stop it till its done.
echo *
echo *
echo *
exit

#*****************************************************************
# Train Scouting and Perception skills T1. Start south of ranger 
# guild and end up there as well.
#*****************************************************************
SCOUTT1:

  put glance
  match scoutt1a You glance down at your empty hands
  match scoutendt1 You glance down to see
matchwait

SCOUTT1A:
move go gate
move e
move e
move s
move s
move w
move w
move go bridge
move w
move w
move w
move w
move go gate
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move ne
move nw
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
move ne
move n
move go bush
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move e
move ne
move go gate
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move se
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move s
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move n
move ne
move go gate
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move w
move nw
move sw
move w
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move nw
move w
move w
move go bridge
move w
move w
move w
move w
move w
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move w
move n
move n
move n
move go path
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move w
move w
move n
move w
move w
move s
move s
move w
move w
move w
move n
move w
move w
move go gate
 
put exp skill scouting

echo ******************************************************
echo * YOU HAVE RETURNED TO SOUTH OF THE RANGER GUILD.
echo * YOU HAVE COMPLETED TRAINING SCOUTING AND PERCEPTION.
echo * IF NOT LOCKED RUN IT AGAIN.
echo ******************************************************
exit

SCOUTENDT1:
  pause 2
  echo ********************************************************************
  echo * YOU HAVE SOMETHING IN HAND!  PUT IT AWAY AND RESTART THE SCRIPT! *
  echo ********************************************************************
  exit

#*****************************************************************
# Train Scouting and Perception skills T1. Start south of ranger 
# guild and end up there as well.  Easy trails only.
#*****************************************************************
SCOUTT3:

  put glance
  match scoutt3a You glance down at your empty hands
  match scoutendt3 You glance down to see
matchwait

SCOUTT3A:
move go gate
move e
move e
move s
move s
move w
move w
move go bridge
move w
move w
move w
move w
move go gate
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move ne
move nw
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move ne
move e
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
move n
move e
move e
move e
move n
move n
move e
move e
move s
move e
move e
move e
move e
move go gate
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move sw
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move s
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move n
move ne
move go gate
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move w
move nw
move sw
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move s
move s
move s
move go gate
move w
move w
move w
move w
move n
move w
move w
move s
move s
move w
move w
move w
move n
move w
move w
move go gate
 
put exp skill scouting

echo ******************************************************
echo * YOU HAVE RETURNED TO SOUTH OF THE RANGER GUILD.
echo * YOU HAVE COMPLETED TRAINING SCOUTING AND PERCEPTION.
echo * IF NOT LOCKED RUN IT AGAIN.
echo ******************************************************
exit

SCOUTENDT3A:
  pause 2
  echo ********************************************************************
  echo * YOU HAVE SOMETHING IN HAND!  PUT IT AWAY AND RESTART THE SCRIPT! *
  echo ********************************************************************
  exit

#*****************************************************************
# Train Scouting and Perception skills T2. Start south of ranger 
# guild and end up there as well.
#*****************************************************************
SCOUTT2:

  put glance
  match scoutt2a You glance down at your empty hands
  match scoutendt2 You glance down to see
matchwait

SCOUTT2A:
move go gate
move e
move e
move s
move s
move w
move w
move go bridge
move w
move w
move w
move w
move go gate
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move ne
move nw
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
move ne
move n
move go bush
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move e
move ne
move go gate
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move se
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move s
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move n
move ne
move go gate
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move ne
move w
move nw
move sw
move w
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move nw
move w
move w
move go bridge
move w
move w
move w
move w
move w
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move w
move n
move n
move n
move go path
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move sw
move sw
move s
move s
move s
move se
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move e
move e
move e
move e
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move se
move  s
move sw
move sw
move s
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go gate
move go well
move e
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move sw
move s
move w
move s
move w
move s
move go path
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move e
move e
move go bridge
move e
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move n
move go bridge
move n
move n
move n
move se
move go path
move se
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move e
move e
move e
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
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
move w
move w
move n
move w
move w
move s
move s
move w
move w
move w
move n
move w
move w
move go gate
 
put exp skill scouting

echo ******************************************************
echo * YOU HAVE RETURNED TO SOUTH OF THE RANGER GUILD.
echo * YOU HAVE COMPLETED TRAINING SCOUTING AND PERCEPTION.
echo * IF NOT LOCKED RUN IT AGAIN.
echo ******************************************************
exit

SCOUTENDT2:
  pause 2
  echo ********************************************************************
  echo * YOU HAVE SOMETHING IN HAND!  PUT IT AWAY AND RESTART THE SCRIPT! *
  echo ********************************************************************
  exit


#*****************************************************************
# Train Scouting and Perception skills and Return to Frozen Falls.
#*****************************************************************
SCOUT:

  put glance
  match scout1 You glance down at your empty hands
  match scoutend You glance down to see
matchwait

SCOUT1:
move go crack
move e
move e
move sw
move s
move se
move sw
move go switchbacked path
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move s
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go path
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move n
move n
move sw
move up
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move nw
move nw
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move se
move down
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move w
put scout trailmarker
pause 2
move go trailmarker
waitfor As your journey 
move go path
move nw
#move go switchbacked path
move go path
move ne
move nw
move n
move ne
move w
move w
move go crev

put exp skill scouting

echo ******************************************************
echo * YOU HAVE RETURNED TO FROZEN FALLS
echo * YOU HAVE COMPLETED TRAINING SCOUTING AND PERCEPTION.
echo * IF NOT LOCKED RUN IT AGAIN.
echo ******************************************************
exit

SCOUTEND:
  pause 2
  echo ********************************************************************
  echo * YOU HAVE SOMETHING IN HAND!  PUT IT AWAY AND RESTART THE SCRIPT! *
  echo ********************************************************************
  exit