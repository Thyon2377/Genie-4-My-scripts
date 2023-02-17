##Summoning training script - Brute force

#debug 10
var paths Quick|Ease|Power|Accuracy|Secrecy|Precise|Defend|Conserve
counter set 0

MainLoop:
        if $Summoning.LearningRate < 34 then {
        send path Focus %paths(%c)
        pause 1
        send sum adm
        waitfor Roundtime
        put summ admit
        waitfor Roundtime
        put summ admit
        waitfor Roundtime
        put path stop
        pause
        put summon weapon
        pause 20
        put break scimitar
        if %c = 7 then counter set 0
        else counter add 1
        goto MainLoop
          }
        exit
