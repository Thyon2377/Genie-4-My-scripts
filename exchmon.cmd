if $currency = Dokoras then
{
put exchange all Kronars for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
put exchange all Lirums for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
}

if $currency = Kronars then
{
put exchange all Dokoras for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
put exchange all Lirums for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
}

if $currency = Lirums then
{
put exchange all Dokoras for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
put exchange all Kronars for $currency
waitforre ^You hand|^But you|^The money-changer|^There is no
}

put wealth