Start:
put forage %2
pause
 put get saw from my %1
waitfor You get
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put put my saw in my %1
waitfor You put
  pause 1
  put get my drawknife from my %1
waitfor You get
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
echo -------------------------------
echo =  One refined lumber finished.
echo -------------------------------
put drop lumber
waitfor You drop
goto Start