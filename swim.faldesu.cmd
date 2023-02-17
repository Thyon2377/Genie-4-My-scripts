Start:
pause 2
swim.faldesu.look:
matchre swim.faldesu.north South Bank\]
matchre swim.faldesu.south North Bank\]
put look
matchwait


swim.faldesu.north:
pause .5
matchre swim.faldesu.northwest ^An enormous slab of rock is upthrust in the river to the north 
matchre swim.faldesu.return North Bank\]$|^You can't swim in that direction
matchre swim.faldesu.north ^Obvious paths:|^...wait|^Sorry|^You slap|^You struggle
put n
matchwait

swim.faldesu.northwest:
pause .5
matchre swim.faldesu.northeast ^The rushing waters split around a huge boulder rising out of the river to the east
matchre swim.faldesu.northwest ^...wait|^Sorry|^An enormous slab of rock is upthrust in the river to the north|^You work against
matchre swim.faldesu.south ^You slap
put nw
matchwait

swim.faldesu.northeast:
pause .5
matchre swim.faldesu.north ^An enormous slab of rock is upthrust in the river to the south
matchre swim.faldesu.northeast ^...wait|^Sorry|^You slap|^The rushing waters split around a huge boulder rising out of the river to the east|^You work against
put ne
matchwait

swim.faldesu.south:
pause .5
matchre swim.faldesu.southwest ^An enormous slab of rock is upthrust in the river to the south
matchre swim.faldesu.return South Bank]$|You can't swim in that|^You can't swim in that direction
matchre swim.faldesu.south ^Obvious paths:|^...wait|^Sorry|^You slap|^You struggle
put s
matchwait

swim.faldesu.southwest:
pause .5
matchre swim.faldesu.southeast ^The rushing waters split around a huge boulder rising out of the river to the east
matchre swim.faldesu.southwest ^...wait|^Sorry|^You slap|^An enormous slab of rock is upthrust in the river to the south|^You work against
put sw
matchwait

swim.faldesu.southeast:
pause .5
matchre swim.faldesu.south ^An enormous slab of rock is upthrust in the river to the north
matchre swim.faldesu.southeast ^...wait|^Sorry|^You slap|^The rushing waters split around a huge boulder rising out of the river to the east|^You work against
put se
matchwait

swim.faldesu.return:
match swim.faldesu.finished 34/34
match Start EXP
put exp athletic
matchwait

swim.faldesu.finished:
put climb bridge
exit