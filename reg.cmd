put remove my %1 %2
waitforre ^You|^What|^Remove|^As you take
put get my %1 %2
waitforre ^You|^What|^Get

register1:
send unregister %1 %2
waitforre ^\[If you wish to unregister .+ then repeat the command in the next 15 seconds\.\]$|^Registrar Paltagir says, \"That item isn't registered so I have nothing to do\.\"$
send unregister %1 %2
waitforre ^Registrar Paltagir takes some coins from you|^Registrar Paltagir says, \"That item isn't registered so I have nothing to do\.\"$
register2:
send register %1 %2
waitforre ^\[If you wish to register .+ then repeat the command in the next 15 seconds\.\]$
send register %1 %2
waitforre ^Registrar Paltagir turns|^Registrar Paltagir says

stow:
put wear my %1 %2
waitforre ^You|^What|^This .+ can't fit over the
put stow my %1 %2
waitforre ^You put|^There isn't any more room in
put put my %1 %2 in $pack