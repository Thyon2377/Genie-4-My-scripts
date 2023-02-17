action setvariable pouchapp $1 when ^You sort through the gems and finally decide that they're worth a total of about (\d+) (Kronars|Lirums|Dokoras)\.$
action setvariable pouchprice $1 when ^%1 offers you a tip of (\d+) (Kronars|Lirums|Dokoras)\.  Type ACCEPT TIP, to accept it or DECLINE TIP to refuse it\.$

send appraise my %2 pouch
wait
pause
send give my %2 pouch to %1
waitforre ^%1 offers you a tip of
evalmath profit %pouchprice - %pouchapp
evalmath tip round(0.3*%profit)
echo
echo Pouch appraisal: %pouchapp $currency
echo Pouch price: %pouchprice $currency
echo Profit: %profit $currency
echo 30% of profit: %tip $currency
echo
send tip %1 %tip $currency
waitforre ^%1 accepts your tip
put whisper %1 Thanks! That should be 30% what you got over the appraisal value.
exit