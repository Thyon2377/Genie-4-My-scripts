send rub my gwethdesuan
waitforre ^A \S+ of foreign thoughts joins your own|^Since you already have telepathy, nothing more happens

put ESP channel
waitforre ^Your telepathic password is currently

gosub listen1 general
gosub listen1 trade
gosub listen1 guild
gosub listen1 race
gosub listen1 local
gosub listen1 private
gosub listen1 personal
goto end

listen1:
var channel $0
listen2:
send ESP listen %channel
matchre listen2 ^With a moment of focus you close your mind
matchre return ^With a moment of focus, you open your mind
matchwait 3

return:
return

end:
send ESP send general
waitforre ^You prepare to project your thoughts into the General channel\.$|^You are already sending thoughts to the General channel\.$