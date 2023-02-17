start:
put #goto %1
waiteval !matchre("$scriptlist","automapper\.cmd")
put #goto %2
waiteval !matchre("$scriptlist","automapper\.cmd")
waitfor You feel fully rested.
goto start