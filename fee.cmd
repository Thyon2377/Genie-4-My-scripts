put #var patient %1
put #var speak %1
put #var whisper %1

START:
    var COSTI 0
    if_2 goto %2
    if_1 goto TOUCH
    goto USAGE

USAGE:
    echo
    echo For general usage type .fee
    echo
    echo There is one optional cost modifier: noob
    echo
    echo Syntax is .fee <person> <mod>
    echo
    exit

NOOB:
DEAD:
MODS:
    if ("%2" = "noob") then var NOOB ON
    goto TOUCH


TOUCH:
    put touch %1
    
BASECOSTI:
    action math COSTI add 100 when Wounds to the HEAD
    action math COSTI add 100 when Wounds to the NERVES
    action math COSTI add 50 when Wounds to the NECK
    action math COSTI add 50 when Wounds to the CHEST
    action math COSTI add 50 when Wounds to the ABDOMEN
    action math COSTI add 50 when Wounds to the BACK
    action math COSTI add 25 when Wounds to the SKIN
    action math COSTI add 20 when Wounds to the RIGHT EYE
    action math COSTI add 20 when Wounds to the LEFT EYE
    action math COSTI add 20 when Wounds to the RIGHT ARM
    action math COSTI add 20 when Wounds to the LEFT ARM
    action math COSTI add 20 when Wounds to the RIGHT HAND
    action math COSTI add 20 when Wounds to the LEFT HAND
    action math COSTI add 20 when Wounds to the RIGHT LEG
    action math COSTI add 20 when Wounds to the LEFT LEG
    action math COSTI add 20 when Wounds to the TAIL


ALLWOUNDS:

    action math COSTI add 25 when  (Fresh|Scars) (External|Internal):  (.*) -- insignificant
    action math COSTI add 50 when  (Fresh|Scars) (External|Internal):  (.*) -- negligible
    action math COSTI add 75 when  (Fresh|Scars) (External|Internal):  (.*) -- minor
    action math COSTI add 100 when  (Fresh|Scars) (External|Internal):  (.*) -- more than minor
    action math COSTI add 150 when  (Fresh|Scars) (External|Internal):  (.*) -- harmful
    action math COSTI add 200 when  (Fresh|Scars) (External|Internal):  (.*) -- very harmful
    action math COSTI add 250 when  (Fresh|Scars) (External|Internal):  (.*) -- damaging
    action math COSTI add 450 when  (Fresh|Scars) (External|Internal):  (.*) -- very damaging
    action math COSTI add 600 when  (Fresh|Scars) (External|Internal):  (.*) -- severe
    action math COSTI add 700 when  (Fresh|Scars) (External|Internal):  (.*) -- very severe
    action math COSTI add 800 when  (Fresh|Scars) (External|Internal):  (.*) -- devastating
    action math COSTI add 1000 when  (Fresh|Scars) (External|Internal):  (.*) -- very devastating
    action math COSTI add 2000 when  (Fresh|Scars) (External|Internal):  (.*) -- useless
                     
POISON_DISEASE:
    action math COSTI add 5000 when (infected|infection|gangrene|disease|oozing sores)
    action math COSTI add 1000 when poison

    waitforre (loss of|normal) vitality|vitality

EVAL:
    save %COSTI
    if ("%NOOB" = "ON") then
        {
            evalmath COSTI ceiling(%s /3)
            goto EXCHANGE
        }

EXCHANGE:
    evalmath COSTILIR ceiling(%COSTI * .8)
    evalmath COSTIDOK ceiling(%COSTI * .721)
	
gosub CommaKronars
gosub CommaLirums
gosub CommaDokoras
goto ECHO

CommaKronars:
var commanumber %COSTI
eval length len(%commanumber)
var COSTKRO %commanumber
if %length < 4 then goto return
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTKRO %temp
topkro:
if %length < 3 then goto lastkro
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTKRO %temp,%COSTKRO
goto topkro
lastkro:
if %length > 0 then
{
eval temp substr(%commanumber, 0, %length)
var COSTKRO %temp,%COSTKRO
}
goto return

CommaLirums:
var commanumber %COSTILIR
eval length len(%commanumber)
var COSTLIR %commanumber
if %length < 4 then goto return
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTLIR %temp
toplir:
if %length < 3 then goto lastlir
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTLIR %temp,%COSTLIR
goto toplir
lastlir:
if %length > 0 then
{
eval temp substr(%commanumber, 0, %length)
var COSTLIR %temp,%COSTLIR
}
goto return

CommaDokoras:
var commanumber %COSTIDOK
eval length len(%commanumber)
var COSTDOK %commanumber
if %length < 4 then goto return
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTDOK %temp
topdok:
if %length < 3 then goto lastdok
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var COSTDOK %temp,%COSTDOK
goto topdok
lastdok:
if %length > 0 then
{
eval temp substr(%commanumber, 0, %length)
var COSTDOK %temp,%COSTDOK
}
goto return

return:
return

ECHO:
    echo
    echo %COSTKRO Kronars, %COSTLIR Lirums, or %COSTDOK Dokoras
    echo

put act :%1 carefully tallies something on her fingers before looking up at \@ with a grin.
pause 1

if $currency = Dokoras then
{
put '}%1 /confidently I can heal you for %COSTDOK $currency.
}

if $currency = Kronars then
{
put '}%1 /confidently I can heal you for %COSTKRO $currency.
}

if $currency = Lirums then
{
put '}%1 /confidently I can heal you for %COSTLIR $currency.
}