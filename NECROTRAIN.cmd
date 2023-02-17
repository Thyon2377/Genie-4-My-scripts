
 Usage: (scriptname) (juggling item) (worn cambrinth) (charge amount)



startwalk:
put north
pause 1
put perc
pause 
put west
pause
put perc
pause 
put south
pause 
put perc
pause 
put east
pause 
put perc
pause
goto walkexp

walkexp:
match chargestart mind lock
match pause EXP HELP
put exp skill attunement
matchwait

 
goto charging

charging:
match charging You fail to
match invoke  %2 absorbs
match invoke  %2 resists
match charging ...wait
match invoke  %2 is already
match break You strain, but cannot
put charge my %2 %3
matchwait

break:
pause 120
goto charging

invoke:
match prepare readying all of its mana for your use
match prepare Your link to the
match invoke ...wait
match invoke but fail
put invoke my %2
matchwait

prepare:
match cast You feel fully prepared
match prepare ...wait
put prep eotb 1
matchwait

cast:
match cambexp You gesture
put cast
matchwait

cambexp:
match end mind lock
match charging EXP HELP
put exp skill arcana
matchwait

end:
put wear my %2
Echo Mind Locked
