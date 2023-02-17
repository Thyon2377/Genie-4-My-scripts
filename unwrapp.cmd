put #class tend off
if $standing = 1 then
{
send sit
waitforre ^You sit (down|up)|^You are already sitting
}

ACTION setvar head 1 WHEN ^\s+head       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar neck 1 WHEN ^\s+neck       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar chest 1 WHEN ^\s+chest       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar abdomen 1 WHEN ^\s+abdomen       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar back 1 WHEN ^\s+back       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar tail 1 WHEN ^\s+tail       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar rightarm 1 WHEN ^\s+right arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar leftarm 1 WHEN ^\s+left arm       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar righthand 1 WHEN ^\s+right hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar lefthand 1 WHEN ^\s+left hand       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar rightleg 1 WHEN ^\s+right leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar leftleg 1 WHEN ^\s+left leg       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar righteye 1 WHEN ^\s+right eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
ACTION setvar lefteye 1 WHEN ^\s+left eye       (clotted|slight|light|moderate|bad|very bad|heavy|very heavy|severe|very severe|profuse|very profuse|gushing|massive|uncontrollable|unbelievable|beyond measure|death awaits)?\(tended\)$
put health
waitforre ^-----------------------------------------$

if %head = 1 then gosub unwrap head
if %neck = 1 then gosub unwrap neck
if %chest = 1 then gosub unwrap chest
if %abdomen = 1 then gosub unwrap abdomen
if %back = 1 then gosub unwrap back
if %tail = 1 then gosub unwrap tail
if %rightarm = 1 then gosub unwrap right arm
if %leftarm = 1 then gosub unwrap left arm
if %righthand = 1 then gosub unwrap right hand
if %lefthand = 1 then gosub unwrap left hand
if %rightleg = 1 then gosub unwrap right leg
if %leftleg = 1 then gosub unwrap left leg
if %righteye = 1 then gosub unwrap right eye
if %lefteye = 1 then gosub unwrap left eye
goto end

unwrap:
send unwrap my $0
matchre return ^You unwrap your bandages|^That area is not tended

return:
pause
return

end:
put health
waitforre ^You have
send .tend
exit