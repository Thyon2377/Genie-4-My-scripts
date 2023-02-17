var price 0
action setvariable price $1 when (\d+) (?i:(Kronars?|Lirums?|Dokoras?|Doks?|coins?))
action setvariable price $1 when (\d+) copper (?i:(Kronars?|Lirums?|Dokoras?|Doks?|coins?))
action send offer $1 when (\d+) (?i:(Kronars?|Lirums?|Dokoras?|coins?)) is my final offer
action send offer $1 when \"No no, I asked (\d+) (Koranars?|Kronars?|Lirums?|Dokoras?|coins?) and must have it\.  You can refuse if the offer is no good but no more dickering!\"
action goto restart when ^\S+ scowls at your idea of an opening offer

send buy %1
waitforre (?i:(Kronars?|Lirums?|Dokoras?|Doks?|coins?))
evalmath offer round(%price*.9)
send offer %offer
pause
if $lefthand = Empty then goto counteroffer
if $lefthand != Empty then goto end

restart:
send buy %1
waitforre (?i:(Kronars?|Lirums?|Dokoras?|coins?))
evalmath offer round(%offer*1.3)
send offer %offer
pause
if $lefthand = Empty then goto counteroffer
if $lefthand != Empty then goto end

counteroffer:
evalmath offer round((%price-%offer)/3+%offer)
send offer %offer
pause
if $lefthand = Empty then goto counteroffer

end:
send swap