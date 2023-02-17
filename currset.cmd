action goto end when ^Appraise what|^You are unable to determine the value of|^I could not find what you were referring to|^I don't know what you are referring to

send app my ring
waitforre ^You .+ worth .+ (?i:(Dokoras|Kronars|Lirums))|^You are unable to determine the value|^It's hard to appraise the.+when it's inside something
goto end

end:
echo
echo Currency set to $currency
echo
put #parse SCRIPT DONE
exit