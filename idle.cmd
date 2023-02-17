action goto exit when ^\s+No skills have field experience or none meet your criteria!$

put /timers end all
put .afkmessage

put #window hide OOC
put #window show OOC
put #window hide Experience
put #window show Experience
put #window hide Thoughts
put #window show Thoughts
put #window hide Log
put #window show Log

put /timers start idle

idle:
put skills
pause 60

put look
pause 60
put /timers list

goto idle

exit:
exit