var whisper-time $gametime
var think-time $gametime
var chatter-time $gametime
action var player $1;goto WhisperAFK when ^(\w+) just tried to whisper to you, but you turned away
action var player $1;goto WhisperAFK when ^(\w+) whispers, \"
action var player $1;goto WhisperAFK when ^(\w+) (asks|exclaims to|says to) you, \".+\"$
action var player $1;goto WhisperAFK when ^(\w+) (\S+) (asks|exclaims to|says to) you, \".+\"$
action var player $1;goto WhisperAFK when ^(\w+) (asks|exclaims|says), \"$charactername\"$
action var player $1;goto WhisperAFK when ^(\w+) (\S+) (asks|exclaims|says), \"$charactername\"$
action var player $1;goto WhisperAFK when ^(\w+) (asks|exclaims|says), \"$charactername.+\"$
action var player $1;goto WhisperAFK when ^(\w+) (\S+) (asks|exclaims|says), \"$charactername.+\"$
action var player $1;goto WhisperAFK when ^(\w+) (asks|exclaims|says), \".+$charactername.+\"$
action var player $1;goto WhisperAFK when ^(\w+) (\S+) (asks|exclaims|says), \".+$charactername.+\"$
action var player $1;goto WhisperAFK when ^(\w+) (asks|exclaims|says), \".+$charactername\"$
action var player $1;goto WhisperAFK when ^(\w+) (\S+) (asks|exclaims|says), \".+$charactername\"$
action var player $1;goto ThinkAFK when ^Your mind hears (\w+) thinking, \"<to you>\"
action var player $1;goto ThinkAFK when ^\[Personal\]\[(\w+)\]\s+\"\<to you\>\"\s+\"(.*)\"$
action var player $1;goto ThinkAFK when ^\[(.+)\]\[(\w+)\](?! \"\<to you\>\")\"$charactername\"$
action var player $1;goto ThinkAFK when ^\[(.+)\]\[(\w+)\](?! \"\<to you\>\")\"$charactername.+\"$
action var player $1;goto ThinkAFK when ^\[(.+)\]\[(\w+)\](?! \"\<to you\>\")\".+$charactername.+\"$
action var player $1;goto ThinkAFK when ^\[(.+)\]\[(\w+)\](?! \"\<to you\>\")\".+$charactername\"$
action goto ChatterAFK when ^Chatter\[(.+)\].+$charactername

WhisperAFK:
if $gametime > %whisper-time then
{
put OOC %player I am AFK right now. I'll get back to you later. You can also leave me a message on $IMclient at $IMname or write to $email.
var whisper-time $gametime
math whisper-time add 60
}
goto loopAFK

ThinkAFK:
if $gametime > %think-time then
{
send send %player OOC: I am AFK right now. I'll get back to you later. You can also leave me a message on $IMclient at $IMname or write to $email.
var think-time $gametime
math think-time add 60
}
goto loopAFK

ChatterAFK:
if $gametime > %chatter-time then
{
put chatter I am AFK right now. I'll get back to you later. You can also leave me a message on $IMclient at $IMname or write to $email.
var chatter-time $gametime
math chatter-time add 60
}
goto loopAFK

loopAFK:
pause 60
goto loopAFK