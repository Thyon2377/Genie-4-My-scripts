put #class racial off
put #class rp on
put #class arrive off
put #class combat off
put #class joust off
action setvariable article $1;setvariable item $2 when Bidding is now open for (an?|some|the) (.+)\.\s+The opening bid is
action setvariable price $1;setvariable acurrency $2 when \"SOLD! for (\d+) (coins|platinum Dokoras|Hollow Eve Tickets|Prison Scrip)!\"$
action setvariable buyer $2 when ^An attendant picks up the (\w+), hands it to (\w+), and collects the funds from

Start:
waitforre ^An attendant picks up the (\w+), hands it to (\w+), and collects the funds from (him|her)\.$
put #log >Auction.txt [$date $time]	%item	%buyer	%price	%acurrency
put #echo >log %buyer buys %article %item for %price %acurrency.
goto Start