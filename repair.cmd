  action instant setvariable type metal when (metal .* armor|metal .* weapon|appears to be a crafting tool|metal shield)
     action instant setvariable type cloth when finished (leather|cloth) armor
     action instant setvariable type cloth when finished tanned shield
     if "$righthand" = "Empty" then var hand right
     if "$lefthand" = "Empty" then var hand left

     gosub verb analyze my %0
     if "%type" = "cloth" then goto cloth
metal:
     gosub verb get wire brush
     gosub repair rub my %0 with my wire brush
     gosub verb stow my wire brush
     gosub verb get my oil
     gosub verb pour my oil on my %0
     gosub verb stow my oil
     goto metal
cloth:
     gosub verb get sew needle
     gosub repair push my %0 with my needle
     gosub verb stow my needle
     gosub verb get my slickstone
     gosub verb rub my %0 with my slickstone
     gosub verb stow my slickstone
     goto cloth

repair.p:
     pause 0.5
repair:
put $0
     match repair.p type ahead
     match repair.p ...wait
     match repair.f suffered too much damage and needs to be repaired
     match repair.d not damaged enough to warrant repair
     match repair.g Roundtime
     matchwait
repair.g:
     return
repair.d:
     gosub verb stow %hand
echo . [ Fully Repaired ]
put #parse SCRIPT DONE
     exit
repair.f:
     gosub verb stow %hand
echo . [ Too Damaged ]
put #parse SCRIPT DONE
     exit

verb:
     setvariable verb $0
     goto verb.a
verb.p:
     pause 0.5
verb.a:
put %verb
     match verb.p type ahead
     match verb.p ...wait
     matchre verb.d (You get|You put|Roundtime|STOW HELP|completely undamaged and does not need repair|cannot figure out how to do that|You pick up|not damaged enough to warrant repair)
     matchwait
verb.d:
     return