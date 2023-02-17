send retreat
send retreat

start:

waitforre closes to .+ range on you

matchre start ^You retreat from combat|^You are already as far away as you can get
matchre retreat ^You retreat back to
matchre retreat ^You try to back away from

retreat:
send retreat
goto start