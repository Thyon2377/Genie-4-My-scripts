action goto done when ^You feel the link between you and %1 suddenly fade away|^You feel your shift link with %1 dissipate
action setvariable progress $1 when ^You sense you are (.*) %1\'s transformation

pause 120
send shift evaluate
pause

send '}%1 We are two minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are four minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are six minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are eight minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 10 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 12 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 14 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 16 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 18 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 20 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 22 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 24 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 26 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are 28 minutes into this procedure, and I am %progress your transformation.

pause 120
send shift evaluate
pause

send '}%1 We are one anlas into this procedure, and I am %progress your transformation.

done:
send look %1 features
waitforre ^(He|She) appears|^(He|She) is|^You cannot make out
send stand
waitforre ^You stand back up|^You are already standing
send research status
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything
if $researchproject != NOTSET then send research $researchproject 300
pause .5
exit