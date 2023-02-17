action goto end when ^What were you referring to

start:
put get %1 %2 from $cleans
waitforre ^You get
put put %1 %2 in $cleanc
waitforre ^You drop
goto start

end:

send look on $cleans