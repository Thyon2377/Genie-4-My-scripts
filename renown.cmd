put .gametime
waitfor GAMETIME SCRIPT DONE

Start:
echo
echo Guild:
echo
echo 1. Barbarian		7. Paladin
echo 2. Bard			8. Ranger
echo 3. Cleric			9. Thief
echo 4. Empath		10. Trader
echo 5. Moon Mage		11. Warrior Mage
echo 6. Necromancer
echo
echo Enter Guild Number:

matchre Barbarian ^1$
matchre Bard ^2$
matchre Cleric ^3$
matchre Empath ^4$
matchre MoonMage ^5$
matchre Necromancer ^6$
matchre Paladin ^7$
matchre Ranger ^8$
matchre Thief ^9$
matchre Trader ^10$
matchre WarriorMage ^11$
matchwait

Barbarian:
var guild Barbarian
var file Barbarian
goto RoomDescCheck
Bard:
var guild Bard
var file Bard
goto RoomDescCheck
Cleric:
var guild Cleric
var file Cleric
goto RoomDescCheck
Empath:
var guild Empath
var file Empath
goto RoomDescCheck
MoonMage:
var guild Moon Mage
var file MoonMage
goto RoomDescCheck
Necromancer:
var guild Necromancer
var file Necromancer
goto RoomDescCheck
Paladin:
var guild Paladin
var file Paladin
goto RoomDescCheck
Ranger:
var guild Ranger
var file Ranger
goto RoomDescCheck
Thief:
var guild Thief
var file Thief
goto RoomDescCheck
Trader:
var guild Trader
var file Trader
goto RoomDescCheck
WarriorMage:
var guild Warrior Mage
var file WarriorMage
goto RoomDescCheck

RoomDescCheck:
if_2 goto RoomDesc
goto Format

RoomDesc:
put #log >RenownScroll-%file.txt {{ShopDescription
put #log >RenownScroll-%file.txt |roomname=$roomname
put #log >RenownScroll-%file.txt |desc=$roomdesc<br />
put #log >RenownScroll-%file.txt $roomobjs<br />
put #log >RenownScroll-%file.txt $roomexits
put #log >RenownScroll-%file.txt }}

Format:
put #log >RenownScroll-%file.txt $zonename: room $roomid
put #log >RenownScroll-%file.txt '''Last updated:''' $GameDate ($date)<br />
put #log >RenownScroll-%file.txt <br />
put #log >RenownScroll-%file.txt {|class="wikitable sortable"
put #log >RenownScroll-%file.txt |-
echo
echo List Format:
echo
echo 1. Rank/Name
echo 2. Rank/Name/Race
echo 3. Rank/Name/Circle
echo 4. Rank/Name/Race/Circle
echo 5. Rank/Name/Circle/Race
echo 6. Rank/Name/Circle/Race/Guild
echo 7. Rank/Name/Race/Deity
echo 8. Rank/Name/Race/Deity/Circle
echo
echo Enter Format Number:

matchre Format1 ^1$
matchre Format2 ^2$
matchre Format3 ^3$
matchre Format4 ^4$
matchre Format5 ^5$
matchre Format6 ^6$
matchre Format7 ^7$
matchre Format8 ^8$
matchwait

Format1:
put #log >RenownScroll-%file.txt !Rank!!firstname
action setvariable rank $1;setvariable firstname $2 when (\d+)\s+(\S+)\D+
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]] when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format2:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Race
action setvariable rank $1;setvariable firstname $2;setvariable race $3 when (\d+)\s+(\S+).+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%race when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format3:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Circle
action setvariable rank $1;setvariable firstname $2;setvariable circle $3 when (\d+)\s+(\S+)\D+(\d+)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%circle when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format4:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Race!!Circle
action setvariable rank $1;setvariable firstname $2;setvariable race $3;setvariable circle $4 when (\d+)\s+(\S+).+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)\D+(\d+)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%race||%circle when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format5:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Circle!!Race
action setvariable rank $1;setvariable firstname $2;setvariable circle $3;setvariable race $4 when (\d+)\s+(\S+)\D+(\d+)\s+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%circle||%race when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format6:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Circle!!Race!!Guild
action setvariable rank $1;setvariable firstname $2;setvariable circle $3;setvariable race $4 when (\d+)\s+(\S+)\D+(\d+)\s+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%circle||%race||%guild when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format7:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Race!!Deity
action setvariable rank $1;setvariable firstname $2;setvariable race $3;setvariable deity $4 when (\d+)\s+(\S+).+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)\s+(\S+)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%race||%deity when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Format8:
put #log >RenownScroll-%file.txt !Rank!!firstname!!Race!!Deity!!Circle
action setvariable rank $1;setvariable firstname $2;setvariable race $3;setvariable deity $4;setvariable circle $5 when (\d+)\s+(\S+).+(Dwarf|Elf|Elothean|Gnome|Gor'Tog|Halfling|Human|Kaldar|Prydaen|Rakash|S'Kra Mur)\s+(\S+)\D+(\d+)
action put #log >RenownScroll-%file.txt |-|%rank||[[%firstname]]||%race||%deity||%circle when ^(\s+)?(\|)?(\s+)?\d+
send look %1
pause 3
goto Exit

Exit:
put #log >RenownScroll-%file.txt |}
put #log >RenownScroll-%file.txt
exit