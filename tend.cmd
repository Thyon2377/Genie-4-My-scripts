put #class tend on
action goto end when ^Your .+ too injured|^You have no significant injuries

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send stop climb
waitforre ^You stop practicing your climbing skills|^You weren't practicing your climbing skills anyway

ACTION setvar head 1 WHEN ^\s+head       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar neck 1 WHEN ^\s+neck       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar chest 1 WHEN ^\s+chest       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar abdomen 1 WHEN ^\s+abdomen       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar back 1 WHEN ^\s+back       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar tail 1 WHEN ^\s+tail       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar rightarm 1 WHEN ^\s+right arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar leftarm 1 WHEN ^\s+left arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar righthand 1 WHEN ^\s+right hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar lefthand 1 WHEN ^\s+left hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar rightleg 1 WHEN ^\s+right leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar leftleg 1 WHEN ^\s+left leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar righteye 1 WHEN ^\s+right eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
ACTION setvar lefteye 1 WHEN ^\s+left eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive stream|uncontrollable|unbelievable|beyond measure|death awaits)$
put health
waitforre ^Bleeding$

if %head = 1 then gosub tend head
if %neck = 1 then gosub tend neck
if %chest = 1 then gosub tend chest
if %abdomen = 1 then gosub tend abdomen
if %back = 1 then gosub tend back
if %tail = 1 then gosub tend tail
if %rightarm = 1 then gosub tend right arm
if %leftarm = 1 then gosub tend left arm
if %righthand = 1 then gosub tend right hand
if %lefthand = 1 then gosub tend left hand
if %rightleg = 1 then gosub tend right leg
if %leftleg = 1 then gosub tend left leg
if %righteye = 1 then gosub tend right eye
if %lefteye = 1 then gosub tend left eye
goto end

tend:
send tend my $0
matchre return ^You work|^That area|^Look again

return:
pause
return

end:
put #parse SCRIPT DONE
exit