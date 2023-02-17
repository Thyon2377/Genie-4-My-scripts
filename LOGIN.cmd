put sort auto head


main:
if $concentration > 99 then goto gaze
if $concentration < 99 then goto pause 

pause:
pause 400
goto gaze

gaze:
if $Arcana.LearningRate > 26 then {
           goto pause
           } else { 
           goto gaze2
           }

gaze.p:
pause 1

gaze2:
    pause .3
    send gaze my crystal
    match gaze.p (type ahead|...wait)
    match pause You gaze
    matchwait