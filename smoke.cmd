

Start:
pause 
put get cigar
pause
put drop cigar
put get flint
pause
put get carv knife
pause
put light cigar with flint
pause 5
put stow l
put stow r
pause
put get cigar
pause

Inhale:
match Exhale You take a long drag
match End You need to be holding 
put inhale cigar
matchwait

Exhale:
match Inhale Smoke
match Inhale some smoke
match Inhale of smoke
match End You need to be holding the cigar first
match End You need to have inhaled some smoke to do that!
put exhale line %1
matchwait

End:
put exhale line %1
pause 5
put smoke list
exit