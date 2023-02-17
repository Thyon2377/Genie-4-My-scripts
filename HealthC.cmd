echo  (((((((((((((((((((((((((((((((((
echo     Start at Crossing West Gate
echo  ++++++++++++++++++++++++++++++++++
echo  ))))))))))))))))))))))))))))))))))
pause 4


#pwcrossing.Cmd
#debuglevel 5
MAIN:
                match STARTLOCATION Camels, oxen, and mules compete with Elves, Gor'Togs, and Humans
                match BADLOCATION Obvious
        put look
        matchwait

BADLOCATION:
        echo
        echo
        echo You need to be inside Crossing's West Gate to run this script!
        echo
        echo
        exit

STARTLOCATION:
        move e
        move e
        put prep gs
        waitfor You feel
        pause 1
        put cast avenger
        pause 1
        move w
        move w
        goto MOVE1

PHOK:   
        if contains("$roomobjs", "avenger") then goto PERC_HEALTH
        else waitfor calmly strides
        PERC_HEALTH:
                match App1 Roundtime
                match PHPAUSE You're not ready to do that again, yet.
        put perc health
        matchwait

App1:
        put exp
        waitfor Overall state of mind
        if ($Appraisal.LearningRate > 9) then goto perc1
        goto app2

App2:
        pause 1
        put app my bundle
        waitfor Roundtime
        pause 1
        goto perc1

Perc1:
        put exp
        waitfor Overall state of mind
        if ($Perception.LearningRate > 9) then return
        goto perc2

Perc2:
        pause 1
        put get $JUGGLIE in my pack
        pause 1
        put juggle my $JUGGLIE
        waitfor Roundtime
        pause 1
        put put my $JUGGLIE in my pack
        pause 1
        return

PHPAUSE:
        pause 2
        goto PHOK

MOVE1:
        move e
        move e
        move e
        move s
        move go door
        echo 1 of 28
        gosub PHOK

MOVE2:
        move out
        move e
        move go shop
        echo 2 of 28
        gosub PHOK

MOVE3:
        move out
        move w
        move s
        move s
        move s
        move s
        move go shop
        echo 3 of 28
        gosub PHOK

MOVE4:
        pause
        move out
        move e
        move s
        move go hab
        echo 4 of 28
        gosub PHOK

MOVE5:
        move out
        move w
        move s
        move s
        move s
        move se
        move go bui
        echo 5 of 28
        gosub PHOK

MOVE6:
        move go arch
        echo 6 of 28
        gosub PHOK

MOVE7:
        move out
        move out
        move w
        move w
        move go bui
        echo 7 of 28
        gosub PHOK

MOVE8:
        move out
        move e
        move e
        move e
        move e
        move go dock
        echo 8 of 28
        gosub PHOK

MOVE9:
        move out
        move e
        move e
        move ne
        move go bri
        move nw
        move n
        move go shop
        echo 9 of 28
        gosub PHOK

MOVE10:
        move out
        move w
        move w
        move w
        move w
        move n
        move n
        pause 2
        echo 10 of 28
        gosub PHOK

MOVE11:
        move n
        move e
        move e
        move e
        move go shop
        echo 11 of 28
        gosub PHOK

MOVE12:
        move out
        move e
        move e
        echo 12 of 28
        gosub PHOK

MOVE13:
        move n
        move go shop
        echo 13 of 28
        gosub PHOK

MOVE14:
        move out
        move e
        move go shop
        echo 14 of 28
        gosub PHOK

MOVE15:
        move out
        move s
        move s
        move go shop
        echo 15 of 28
        gosub PHOK

MOVE16:
        move out
        move e
        move e
        move go shop
        echo 16 of 28
        gosub PHOK

MOVE17:
        move go room
        echo 17 of 28
        gosub PHOK

MOVE18:
        move out
        move out
        move s
        move s
        move e
        move e
        move n
        move n
        move n
        move w
        move go shop
        echo 18 of 28
        gosub PHOK

MOVE19:
        move out
        move e
        move ne
        move n
        move n
        move go shop
        echo 19 of 28
        gosub PHOK

MOVE20:
        move out
        move n
        move w
        move n
        move w
        move w
        move n
        move n
        move n
        echo 20 of 28
        gosub PHOK

MOVE21:
        move s
        move s
        move w
        move go cot
        echo 21 of 28
        gosub PHOK

MOVE22:
        move out
        move w
        move s
        move go shop
        echo 22 of 28
        gosub PHOK

MOVE23:
        move out
        move e
        move s
        move go shop
        echo 23 of 28
        gosub PHOK

MOVE24:
        move out
        move e
        move s
        move w
        move s
        move go shop
        echo 24 of 28
        gosub PHOK

MOVE25:
        move out
        move s
        move go baz
        echo 25 of 28
        gosub PHOK

MOVE26:
        move se
        echo 26 of 28
        gosub PHOK

MOVE27:
        move go arch
        move n
        move n
        move n
        move w
        move w
        move w
        move n
        move n
        move w
        move go shop
        echo 27 of 28
        gosub PHOK

MOVE28:
        move out
        move e
        move n
        move n
        echo 28 of 28
        gosub PHOK

MOVE29:
        move s
        move s
        move s
        move s
        move w
        move w
        move go bri
        move w
        move w
        move w
        move w
        put exp
        waitfor Overall state of mind
        if ($Empathy.LearningRate > 9) then goto DONE
        goto REPEAT
        
REPEAT:
        waitfor With a warrior's calm
        put ask avenger about leave
        goto MAIN
        
DONE:
        put glance
        exit