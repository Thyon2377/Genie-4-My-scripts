#debuglevel 10
put #class rp on
put #class arrive off
put #class joust off
put #class combat off
put #class racial off
put #class shop off
setvariable short $righthand

var appcostl 0
var appcostd 0
var newshieldapp no
action goto end when ^I could not find what (you|you were) referring to\.$

if $lefthand = Empty then
{
send get my yardstick
waitforre ^You get|^You are already holding that
}

action setvariable tap $2 when ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying
action setvariable lsize $1;setvariable wsize $2;setvariable hsize $3 when ^You compare your .+ with the .+ yardstick several times and are certain the length measures (.+) spans?, the width measures (.+) spans? and the height measures (.+) spans?\.$
action setvariable ilsize $1;setvariable iwsize $2;setvariable ihsize $3;setvariable csize $4 when ^You compare your .+ with the .+ yardstick several times and are certain the interior length measures (.+) spans?, the interior width measures (.+) spans?, the interior height measures (.+) spans? and the .+ appears capable of holding about (\d+) stones of weight\.$

Measure:
gosub VarBlank
send close my $righthandnoun
matchre MeasuredItem ^You can't close that|^(That|This) is not possible|^There is no way to do that
matchwait 1
send measure my $righthandnoun with yardstick
wait
pause
MeasuredItem:
send open my $righthandnoun
pause .5
send measure my $righthandnoun with yardstick
wait
pause .25
}
gosub Dimensionset
echo Date: $date $time
echo %tap
echo
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |ilsize=%ilsize
echo |iwsize=%iwsize
echo |ihsize=%ihsize
echo |csize=%csize
echo
echo %ilsize x %iwsize x %ihsize (%csize stones)
echo
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |ilsize=%ilsize
put #log >Appraisal-$charactername.txt |iwsize=%iwsize
put #log >Appraisal-$charactername.txt |ihsize=%ihsize
put #log >Appraisal-$charactername.txt |csize=%csize
put #log >Appraisal-$charactername.txt
goto end

VarBlank:
var lsize -
var wsize -
var hsize -
var ilsize DELETE
var iwsize DELETE
var ihsize DELETE
var csize DELETE
return

Dimensionset:
if %lsize = one then var lsize 1
if %lsize = two then var lsize 2
if %lsize = three then var lsize 3
if %lsize = four then var lsize 4
if %lsize = five then var lsize 5
if %lsize = six then var lsize 6
if %lsize = seven then var lsize 7
if %lsize = eight then var lsize 8
if %lsize = nine then var lsize 9
if %lsize = ten then var lsize 10
if %lsize = eleven then var lsize 11
if %lsize = twelve then var lsize 12
if %lsize = thirteen then var lsize 13
if %lsize = fourteen then var lsize 14
if %lsize = fifteen then var lsize 15
if %lsize = sixteen then var lsize 16
if %lsize = seventeen then var lsize 17
if %lsize = eighteen then var lsize 18
if %lsize = nineteen then var lsize 19
if %lsize = twenty then var lsize 20
if %lsize = twenty-one then var lsize 21
if %lsize = twenty-two then var lsize 22
if %lsize = twenty-three then var lsize 23
if %lsize = twenty-four then var lsize 24
if %lsize = twenty-five then var lsize 25
if %lsize = twenty-six then var lsize 26
if %lsize = twenty-seven then var lsize 27
if %lsize = twenty-eight then var lsize 28
if %lsize = twenty-nine then var lsize 29
if %lsize = thirty then var lsize 30
if %lsize = thirty-five then var lsize 35
if %lsize = forty then var lsize 40
if %lsize = forty-five then var lsize 45
if %lsize = fifty then var lsize 50
if %lsize = fifty-five then var lsize 55
if %lsize = sixty then var lsize 60
if %lsize = sixty-five then var lsize 65
if %lsize = seventy then var lsize 70
if %lsize = seventy-five then var lsize 75
if %lsize = eighty then var lsize 80
if %lsize = eighty-five then var lsize 85
if %lsize = ninety then var lsize 90
if %lsize = ninety-five then var lsize 95
if %lsize = one hundred then var lsize 100
if %lsize = one hundred ten then var lsize 110
if %lsize = one hundred twenty then var lsize 120
if %wsize = one then var wsize 1
if %wsize = two then var wsize 2
if %wsize = three then var wsize 3
if %wsize = four then var wsize 4
if %wsize = five then var wsize 5
if %wsize = six then var wsize 6
if %wsize = seven then var wsize 7
if %wsize = eight then var wsize 8
if %wsize = nine then var wsize 9
if %wsize = ten then var wsize 10
if %wsize = eleven then var wsize 11
if %wsize = twelve then var wsize 12
if %wsize = thirteen then var wsize 13
if %wsize = fourteen then var wsize 14
if %wsize = fifteen then var wsize 15
if %wsize = sixteen then var wsize 16
if %wsize = seventeen then var wsize 17
if %wsize = eighteen then var wsize 18
if %wsize = nineteen then var wsize 19
if %wsize = twenty then var wsize 20
if %wsize = twenty-one then var wsize 21
if %wsize = twenty-two then var wsize 22
if %wsize = twenty-three then var wsize 23
if %wsize = twenty-four then var wsize 24
if %wsize = twenty-five then var wsize 25
if %wsize = twenty-six then var wsize 26
if %wsize = twenty-seven then var wsize 27
if %wsize = twenty-eight then var wsize 28
if %wsize = twenty-nine then var wsize 29
if %wsize = thirty then var wsize 30
if %wsize = thirty-five then var wsize 35
if %wsize = forty then var wsize 40
if %wsize = forty-five then var wsize 45
if %wsize = fifty then var wsize 50
if %wsize = fifty-five then var wsize 55
if %wsize = sixty then var wsize 60
if %wsize = sixty-five then var wsize 65
if %wsize = seventy then var wsize 70
if %wsize = seventy-five then var wsize 75
if %wsize = eighty then var wsize 80
if %wsize = eighty-five then var wsize 85
if %wsize = ninety then var wsize 90
if %wsize = ninety-five then var wsize 95
if %wsize = one hundred then var wsize 100
if %wsize = one hundred ten then var wsize 110
if %wsize = one hundred twenty then var wsize 120
if %hsize = one then var hsize 1
if %hsize = two then var hsize 2
if %hsize = three then var hsize 3
if %hsize = four then var hsize 4
if %hsize = five then var hsize 5
if %hsize = six then var hsize 6
if %hsize = seven then var hsize 7
if %hsize = eight then var hsize 8
if %hsize = nine then var hsize 9
if %hsize = ten then var hsize 10
if %hsize = eleven then var hsize 11
if %hsize = twelve then var hsize 12
if %hsize = thirteen then var hsize 13
if %hsize = fourteen then var hsize 14
if %hsize = fifteen then var hsize 15
if %hsize = sixteen then var hsize 16
if %hsize = seventeen then var hsize 17
if %hsize = eighteen then var hsize 18
if %hsize = nineteen then var hsize 19
if %hsize = twenty then var hsize 20
if %hsize = twenty-one then var hsize 21
if %hsize = twenty-two then var hsize 22
if %hsize = twenty-three then var hsize 23
if %hsize = twenty-four then var hsize 24
if %hsize = twenty-five then var hsize 25
if %hsize = twenty-six then var hsize 26
if %hsize = twenty-seven then var hsize 27
if %hsize = twenty-eight then var hsize 28
if %hsize = twenty-nine then var hsize 29
if %hsize = thirty then var hsize 30
if %hsize = thirty-five then var hsize 35
if %hsize = forty then var hsize 40
if %hsize = forty-five then var hsize 45
if %hsize = fifty then var hsize 50
if %hsize = fifty-five then var hsize 55
if %hsize = sixty then var hsize 60
if %hsize = sixty-five then var hsize 65
if %hsize = seventy then var hsize 70
if %hsize = seventy-five then var hsize 75
if %hsize = eighty then var hsize 80
if %hsize = eighty-five then var hsize 85
if %hsize = ninety then var hsize 90
if %hsize = ninety-five then var hsize 95
if %hsize = one hundred then var hsize 100
if %hsize = one hundred ten then var hsize 110
if %hsize = one hundred twenty then var hsize 120
if %ilsize = one then var ilsize 1
if %ilsize = two then var ilsize 2
if %ilsize = three then var ilsize 3
if %ilsize = four then var ilsize 4
if %ilsize = five then var ilsize 5
if %ilsize = six then var ilsize 6
if %ilsize = seven then var ilsize 7
if %ilsize = eight then var ilsize 8
if %ilsize = nine then var ilsize 9
if %ilsize = ten then var ilsize 10
if %ilsize = eleven then var ilsize 11
if %ilsize = twelve then var ilsize 12
if %ilsize = thirteen then var ilsize 13
if %ilsize = fourteen then var ilsize 14
if %ilsize = fifteen then var ilsize 15
if %ilsize = sixteen then var ilsize 16
if %ilsize = seventeen then var ilsize 17
if %ilsize = eighteen then var ilsize 18
if %ilsize = nineteen then var ilsize 19
if %ilsize = twenty then var ilsize 20
if %ilsize = twenty-one then var ilsize 21
if %ilsize = twenty-two then var ilsize 22
if %ilsize = twenty-three then var ilsize 23
if %ilsize = twenty-four then var ilsize 24
if %ilsize = twenty-five then var ilsize 25
if %ilsize = twenty-six then var ilsize 26
if %ilsize = twenty-seven then var ilsize 27
if %ilsize = twenty-eight then var ilsize 28
if %ilsize = twenty-nine then var ilsize 29
if %ilsize = thirty then var ilsize 30
if %ilsize = thirty-five then var ilsize 35
if %ilsize = forty then var ilsize 40
if %ilsize = forty-five then var ilsize 45
if %ilsize = fifty then var ilsize 50
if %ilsize = fifty-five then var ilsize 55
if %ilsize = sixty then var ilsize 60
if %ilsize = sixty-five then var ilsize 65
if %ilsize = seventy then var ilsize 70
if %ilsize = seventy-five then var ilsize 75
if %ilsize = eighty then var ilsize 80
if %ilsize = eighty-five then var ilsize 85
if %ilsize = ninety then var ilsize 90
if %ilsize = ninety-five then var ilsize 95
if %ilsize = one hundred then var ilsize 100
if %ilsize = one hundred ten then var ilsize 110
if %ilsize = one hundred twenty then var ilsize 120
if %iwsize = one then var iwsize 1
if %iwsize = two then var iwsize 2
if %iwsize = three then var iwsize 3
if %iwsize = four then var iwsize 4
if %iwsize = five then var iwsize 5
if %iwsize = six then var iwsize 6
if %iwsize = seven then var iwsize 7
if %iwsize = eight then var iwsize 8
if %iwsize = nine then var iwsize 9
if %iwsize = ten then var iwsize 10
if %iwsize = eleven then var iwsize 11
if %iwsize = twelve then var iwsize 12
if %iwsize = thirteen then var iwsize 13
if %iwsize = fourteen then var iwsize 14
if %iwsize = fifteen then var iwsize 15
if %iwsize = sixteen then var iwsize 16
if %iwsize = seventeen then var iwsize 17
if %iwsize = eighteen then var iwsize 18
if %iwsize = nineteen then var iwsize 19
if %iwsize = twenty then var iwsize 20
if %iwsize = twenty-one then var iwsize 21
if %iwsize = twenty-two then var iwsize 22
if %iwsize = twenty-three then var iwsize 23
if %iwsize = twenty-four then var iwsize 24
if %iwsize = twenty-five then var iwsize 25
if %iwsize = twenty-six then var iwsize 26
if %iwsize = twenty-seven then var iwsize 27
if %iwsize = twenty-eight then var iwsize 28
if %iwsize = twenty-nine then var iwsize 29
if %iwsize = thirty then var iwsize 30
if %iwsize = thirty-five then var iwsize 35
if %iwsize = forty then var iwsize 40
if %iwsize = forty-five then var iwsize 45
if %iwsize = fifty then var iwsize 50
if %iwsize = fifty-five then var iwsize 55
if %iwsize = sixty then var iwsize 60
if %iwsize = sixty-five then var iwsize 65
if %iwsize = seventy then var iwsize 70
if %iwsize = seventy-five then var iwsize 75
if %iwsize = eighty then var iwsize 80
if %iwsize = eighty-five then var iwsize 85
if %iwsize = ninety then var iwsize 90
if %iwsize = ninety-five then var iwsize 95
if %iwsize = one hundred then var iwsize 100
if %iwsize = one hundred ten then var iwsize 110
if %iwsize = one hundred twenty then var iwsize 120
if %ihsize = one then var ihsize 1
if %ihsize = two then var ihsize 2
if %ihsize = three then var ihsize 3
if %ihsize = four then var ihsize 4
if %ihsize = five then var ihsize 5
if %ihsize = six then var ihsize 6
if %ihsize = seven then var ihsize 7
if %ihsize = eight then var ihsize 8
if %ihsize = nine then var ihsize 9
if %ihsize = ten then var ihsize 10
if %ihsize = eleven then var ihsize 11
if %ihsize = twelve then var ihsize 12
if %ihsize = thirteen then var ihsize 13
if %ihsize = fourteen then var ihsize 14
if %ihsize = fifteen then var ihsize 15
if %ihsize = sixteen then var ihsize 16
if %ihsize = seventeen then var ihsize 17
if %ihsize = eighteen then var ihsize 18
if %ihsize = nineteen then var ihsize 19
if %ihsize = twenty then var ihsize 20
if %ihsize = twenty-one then var ihsize 21
if %ihsize = twenty-two then var ihsize 22
if %ihsize = twenty-three then var ihsize 23
if %ihsize = twenty-four then var ihsize 24
if %ihsize = twenty-five then var ihsize 25
if %ihsize = twenty-six then var ihsize 26
if %ihsize = twenty-seven then var ihsize 27
if %ihsize = twenty-eight then var ihsize 28
if %ihsize = twenty-nine then var ihsize 29
if %ihsize = thirty then var ihsize 30
if %ihsize = thirty-five then var ihsize 35
if %ihsize = forty then var ihsize 40
if %ihsize = forty-five then var ihsize 45
if %ihsize = fifty then var ihsize 50
if %ihsize = fifty-five then var ihsize 55
if %ihsize = sixty then var ihsize 60
if %ihsize = sixty-five then var ihsize 65
if %ihsize = seventy then var ihsize 70
if %ihsize = seventy-five then var ihsize 75
if %ihsize = eighty then var ihsize 80
if %ihsize = eighty-five then var ihsize 85
if %ihsize = ninety then var ihsize 90
if %ihsize = ninety-five then var ihsize 95
if %ihsize = one hundred then var ihsize 100
if %ihsize = one hundred ten then var ihsize 110
if %ihsize = one hundred twenty then var ihsize 120
goto return

return:
return

end:
send stow my yardstick
waitforre ^You put|^Stow what
put #class racial on
put #play ScriptEnd
put #flash
put #parse SCRIPT DONE
exit