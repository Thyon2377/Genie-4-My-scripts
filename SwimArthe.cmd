move n
move n
move n
move ne
move ne
move n
move nw
move nw
move n
move n
move ne
move nw
move n
move n
move e
move down
move down
move go gate
move n
move n
move w
move s
move climb tree
move go ramp
put dive swimming hole
pause 1
goto south

south:
pause
match south ...wait
match south but can't get anywhere.
match south You blunder
match south but can't seem to make much headway.
match south You flounder
match south You slap at the water in a sad failure
match west moving against
match west moving with
match west south
put south
matchwait

west:
pause
match west ...wait
match north but can't get anywhere.
match north but can't seem to make much headway.
match north You slap at the water in a sad failure
match north You blunder
match north You flounder
match north moving against
match north moving with
match north west
put west
matchwait

north:
pause
match north ...wait
match north but can't get anywhere.
match north but can't seem to make much headway.
match north You slap at the water in a sad failure
match north You blunder
match north You flounder
match east moving against
match east moving with
match east north
put north
matchwait

east:
pause
match north ...wait
match north but can't get anywhere.
match north but can't seem to make much headway.
match north You slap at the water in a sad failure
match north You blunder
match north You flounder
match exp moving against
match exp moving with
match exp east
put east
matchwait


exp:
pause
match exp …wait
match go_home (33/34)
match go_home (34/34)
match south EXP HELP for more information
match south Overall state of
put exp skill athletic
matchwait

go_home:
move climb embankment
move n
move e
move s
move s
move go gate
move up
move up
move w
move s
move s
move se
move sw
move s
move s
move se
move se
move s
move sw
move sw
move s
move s
move s
move go gate
exit