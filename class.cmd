#debuglevel 10
send demeanor neutral
waitforre ^You decide to take things as they come
send demeanor clear Empath
waitforre ^You no longer regard
send demeanor clear Thief
waitforre ^You no longer regard
send avoid !touch
waitforre ^You're now avoiding attempts to touch you
pause

action setvariable class $1 when ^You are teaching a class on (.*) which (is still open to new students|you have currently closed to new students)
put assess teach
wait

action setvariable level a novice's when %class.+ novice
action setvariable level a practitioner's when %class.+ practitioner
action setvariable level a dilettante's when %class.+ dilettante
action setvariable level an aficionado's when %class.+ aficionado
action setvariable level an adept's when %class.+ adept
action setvariable level an expert's when %class.+ expert
action setvariable level a professional's when %class.+ professional
action setvariable level an authority's when %class.+ authority
action setvariable level a genius's when %class.+ genius
action setvariable level a savant's when %class.+ savant
action setvariable level a master's when %class.+ (?<!grand )master
action setvariable level a grand master's when %class.+ grand master
action setvariable level a guru's when %class.+ guru
action setvariable level a legend's when %class.+ legend

put exp rp %1 1
waitforre Total Ranks Displayed
pause 1

put '/politely I am teaching %level class on %class that is open to additional students.

end: