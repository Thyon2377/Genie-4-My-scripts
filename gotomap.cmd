#debug 10
var crossingRegion 1|2|2a|4|4a|5a|6|7|7a|7b|7c|8|8a|9a|9b|10|11|12|12a|13|14b|14d

start:
if "$zoneid" = "%1" then {
	if "$roomid" != "%2 then {
		put #goto %2
		waitfor YOU HAVE ARRIVED
	}
	put #parse At destination map.
	exit
}
goto $zoneid

1:
	if matchre("%1", "2|4|4a|5a") then {
	    put #goto 121
		waitfor YOU HAVE ARRIVED
		put #goto 172
		waitfor YOU HAVE ARRIVED
		goto start
	}
	if "%1" = "2a" then {
		put #goto Temple
		waitfor YOU HAVE ARRIVED
		goto start
	}
	if "%1" = "6" then {
		put #goto North Gate
		waitfor YOU HAVE ARRIVED
		goto start
	}
	if matchre("%1", "8|8a") then {
		put #goto 170
		waitfor YOU HAVE ARRIVED
		goto start
	}
	put #goto NE Gate
	waitfor YOU HAVE ARRIVED
goto start

2:
4a:
5a:
	put #goto Map4
	waitfor YOU HAVE ARRIVED
goto start

2a:
	put #goto Map1
	waitfor YOU HAVE ARRIVED
goto start

6:
	put #goto North Gate
	waitfor YOU HAVE ARRIVED
goto start

8:
	if "%1" = "8a" then {
		put #goto Map8a
		waitfor YOU HAVE ARRIVED
		goto start
	}
	put #goto 43
	waitfor YOU HAVE ARRIVED
goto start

4:
	if matchre("%1", "2|4a|5a|6") then {
		put #goto Map%1_
		waitfor YOU HAVE ARRIVED
		goto start
	}
	put #goto Crossing
	waitfor YOU HAVE ARRIVED
goto start
	
	put #goto Map4
	waitfor YOU HAVE ARRIVED
goto start

8a:
	put #goto Map8
	waitfor YOU HAVE ARRIVED
goto start

7a:
7b:
9a:
9b:
10:
11:
12:
12a:
	put #goto Map7
	waitfor YOU HAVE ARRIVED
goto start

7:
	if matchre("%1", "7c|13|14b|14d") then {
		put #goto north
		waitfor YOU HAVE ARRIVED
		goto start
	}
	if matchre("%1", "7a|7b|9a|9b|10|11|12|12a") then {
		put #goto Map%1_
		waitfor YOU HAVE ARRIVED
		goto start
	}
	put #goto Crossing
	waitfor YOU HAVE ARRIVED
goto start

7c:
	if matchre("%1", "13|14b|14d") then {
		put #goto Map%1_
		waitfor YOU HAVE ARRIVED
		goto start
	}
	put #goto Map7
	waitfor YOU HAVE ARRIVED
goto start

13:
	put #goto Map7c
	waitfor YOU HAVE ARRIVED
goto start

14b:
	put #goto NTR
	waitfor YOU HAVE ARRIVED
goto start

14d:
	put #goto Map7c
	waitfor YOU HAVE ARRIVED
goto start