echo
echo Convert From?
echo
echo 1: Earth to Elanthia
echo
echo 2: Elanthia to Earth
echo
echo 3: Elanthia to Elanthia
echo
echo Enter Number:

matchre Earth ^1
matchre Elanthia ^2
matchre Elanthia2 ^3
matchwait

Earth:
echo
echo Starting Unit?
echo
echo 1: Minutes
echo 2: Hours
echo 3: Days
echo 4: Weeks
echo 5: Months
echo 6: Years
echo
echo Enter Unit Number:

matchre EarthMinutes ^1
matchre EarthHours ^2
matchre EarthDays ^3
matchre EarthWeeks ^4
matchre EarthMonths ^5
matchre EarthYears ^6
matchwait

EarthMinutes:
evalmath HOURS round((%1/15),2)
evalmath ANLAEN round((%1/30),2)
evalmath DAYS round((%1/360),3)
evalmath ANDAEN round((%1/1440),4)
evalmath MONTHS round((%1/14400),5)
evalmath YEARS round((%1/144000),6)

echo
echo Time passed in Elanthia in %1 Earth minutes:
echo
echo Roisaen (minutes): %1
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

EarthHours:
evalmath ROISAEN %1*60
evalmath HOURS %1*4
evalmath ANLAEN %1*2
evalmath DAYS round((%1/6),2)
evalmath ANDAEN round((%1/24),2)
evalmath MONTHS round((%1/240),3)
evalmath YEARS round((%1/2400),4)

echo
echo Time passed in Elanthia in %1 Earth hours:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

EarthDays:
evalmath ROISAEN %1*1440
evalmath HOURS %1*96
evalmath ANLAEN %1*48
evalmath DAYS %1*4
evalmath MONTHS %1/10
evalmath YEARS %1/100

echo
echo Time passed in Elanthia in %1 Earth days:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %1
echo Months: %MONTHS
echo Years: %YEARS

goto end

EarthWeeks:
evalmath ROISAEN %1*10080
evalmath HOURS %1*672
evalmath ANLAEN %1*336
evalmath DAYS %1*28
evalmath ANDAEN %1*7
evalmath MONTHS %1*.7
evalmath YEARS %1*.07

echo
echo Time passed in Elanthia in %1 Earth weeks:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

EarthMonths:
evalmath ROISAEN %1*43800
evalmath HOURS %1*2920
evalmath ANLAEN %1*1460
evalmath DAYS round((%1*(365/3)),1)
evalmath ANDAEN round((%1*(365/12)),1)
evalmath MONTHS round((%1*(73/24)),1)
evalmath YEARS round((%1*(73/240)),1)

echo
echo Time passed in Elanthia in %1 Earth months:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

EarthYears:
evalmath ROISAEN %1*525600
evalmath HOURS %1*35040
evalmath ANLAEN %1*17520
evalmath DAYS %1*1460
evalmath ANDAEN %1*365
evalmath MONTHS %1*36.5
evalmath YEARS %1*3.65

echo
echo Time passed in Elanthia in %1 Earth years:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

Elanthia:
echo
echo Starting Unit?
echo
echo 1: Roisaen (minutes)
echo 2: Hours
echo 3: Anlaen
echo 4: Days
echo 5: Andaen (weeks)
echo 6: Months
echo 7: Years
echo
echo Enter Unit Number:

matchre Roisaen ^1
matchre ElanthiaHours ^2
matchre Anlaen ^3
matchre ElanthiaDays ^4
matchre Andaen ^5
matchre ElanthiaMonths ^6
matchre ElanthiaYears ^7
matchwait

Roisaen:
evalmath HOURS round((%1/60),2)
evalmath DAYS round((%1/1440),4)
evalmath WEEKS round((%1/10080),4)
evalmath MONTHS round((%1/43800),5)
evalmath YEARS round((%1/525600),6)

echo
echo Time passed on Earth in %1 roisaen (minutes):
echo
echo Minutes: %1
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaHours:
evalmath MINUTES %1*15
evalmath HOURS %1/4
evalmath DAYS round((%1/96),2)
evalmath WEEKS round((%1/672),3)
evalmath MONTHS round((%1/2920),4)
evalmath YEARS round((%1/35040),5)

echo
echo Time passed on Earth in %1 Elanthian hours:
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

Anlaen:
evalmath MINUTES %1*30
evalmath HOURS %1/2
evalmath DAYS round((%1/48),2)
evalmath WEEKS round((%1/336),3)
evalmath MONTHS round((%1/1460),4)
evalmath YEARS round((%1/17520),5)

echo
echo Time passed on Earth in %1 anlaen:
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaDays:
evalmath MINUTES %1*360
evalmath HOURS %1*6
evalmath DAYS %1/4
evalmath WEEKS round((%1/28),2)
evalmath MONTHS round((%1*(3/365)),3)
evalmath YEARS round((%1/1460),4)

echo
echo Time passed on Earth in %1 Elanthian days:
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

Andaen:
evalmath MINUTES %1*5760
evalmath HOURS %1*96
evalmath WEEKS round((%1/7),1)
evalmath MONTHS round((%1*(12/365)),2)
evalmath YEARS round((%1/360),3)

echo
echo Time passed on Earth in %1 andaen (weeks):
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %1
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaMonths:
evalmath MINUTES %1*14400
evalmath HOURS %1*240
evalmath DAYS %1*10
evalmath WEEKS round((%1*(10/7)),1)
evalmath MONTHS round((%1*(24/73)),1)
evalmath YEARS round((%1*(2/73)),2)

echo
echo Time passed on Earth in %1 Elanthian months:
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaYears:
evalmath MINUTES %1*144000
evalmath HOURS %1*2400
evalmath DAYS %1*100
evalmath WEEKS round((%1*(100/7)),1)
evalmath MONTHS round((%1*(240/73)),1)
evalmath YEARS round((%1*(20/73)),1)

echo
echo Time passed on Earth in %1 Elanthian years:
echo
echo Minutes: %MINUTES
echo Hours: %HOURS
echo Days: %DAYS
echo Weeks: %WEEKS
echo Months: %MONTHS
echo Years: %YEARS

goto end

Elanthia2:
echo
echo Starting Unit?
echo
echo 1: Roisaen (minutes)
echo 2: Hours
echo 3: Anlaen
echo 4: Days
echo 5: Andaen (weeks)
echo 6: Months
echo 7: Years
echo
echo Enter Unit Number:

matchre Roisaen2 ^1
matchre ElanthiaHours2 ^2
matchre Anlaen2 ^3
matchre ElanthiaDays2 ^4
matchre Andaen2 ^5
matchre ElanthiaMonths2 ^6
matchre ElanthiaYears2 ^7
matchwait

Roisaen2:
evalmath HOURS round((%1/15),2)
evalmath ANLAEN round((%1/30),2)
evalmath DAYS round((%1/360),3)
evalmath ANDAEN round((%1/1440),4)
evalmath MONTHS round((%1/14400),5)
evalmath YEARS round((%1/144000),6)

echo
echo Time passed in Elanthia in %1 roisaen (minutes):
echo
echo Roisaen (minutes): %1
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaHours2:
evalmath ROISAEN %1*15
evalmath ANLAEN %1/2
evalmath DAYS round((%1/24),2)
evalmath ANDAEN round((%1/96),2)
evalmath MONTHS round((%1/960),3)
evalmath YEARS round((%1/9600),4)

echo
echo Time passed in Elanthia in %1 Elanthian hours:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %1
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

Anlaen2:
evalmath ROISAEN %1*30
evalmath HOURS %1*2
evalmath DAYS round((%1/12),2)
evalmath ANDAEN round((%1/48),2)
evalmath MONTHS round((%1/480),3)
evalmath YEARS round((%1/4800),4)

echo
echo Time passed in Elanthia in %1 anlaen:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %1
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaDays2:
evalmath ROISAEN %1*360
evalmath HOURS %1*24
evalmath ANLAEN %1*12
evalmath ANDAEN %1/4
evalmath MONTHS %1/40
evalmath YEARS %1/400

echo
echo Time passed in Elanthia in %1 Elanthian days:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %1
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %YEARS

goto end

Andaen2:
evalmath ROISAEN %1*1440
evalmath HOURS %1*96
evalmath ANLAEN %1*48
evalmath DAYS %1*4
evalmath MONTHS %1/10
evalmath YEARS %1/100

echo
echo Time passed in Elanthia in %1 andaen (weeks):
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %1
echo Months: %MONTHS
echo Years: %YEARS

goto end

ElanthiaMonths2:
evalmath ROISAEN %1*14400
evalmath HOURS %1*960
evalmath ANLAEN %1*480
evalmath DAYS %1*40
evalmath ANDAEN %1*10
evalmath YEARS %1/10

echo
echo Time passed in Elanthia in %1 Elanthian months:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %1
echo Years: %YEARS

goto end

goto end

ElanthiaYears2:
evalmath ROISAEN %1*144000
evalmath HOURS %1*9600
evalmath ANLAEN %1*4800
evalmath DAYS %1*400
evalmath ANDAEN %1*100
evalmath MONTHS %1*10

echo
echo Time passed in Elanthia in %1 Elanthian years:
echo
echo Roisaen (minutes): %ROISAEN
echo Hours: %HOURS
echo Anlaen: %ANLAEN
echo Days: %DAYS
echo Andaen (weeks): %ANDAEN
echo Months: %MONTHS
echo Years: %1

goto end

end: