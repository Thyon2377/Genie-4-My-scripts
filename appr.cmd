action goto exit when ^You are certain that.+worth exactly

start:
send appraise my %1 %2 careful
wait
pause .5
goto start

exit:
put #play ScriptEnd