put #class rp on
put #class arrive off
put #class combat off
put #class joust off
put #class racial off
put #class shop off

var source $roomname
action goto end when ^I could not find what (you|you were) referring to\.$
var numbers first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh
var numbers.index 0

action setvariable shopheader $1 when ^(.+), you see:$
action setvariable tap $2 when ^You tap (a|an|some|the) (.+) (atop|behind|inside|under) (an?|several|\bsome\b|\bthe\b|\btwo\b)
action setvariable short $2 when ^Short: (a|an|some|the) (.+)
action setvariable costi $1 when ^Cost:\s+(\d+) (Kronars?|Lirums?|Dokoras?|[Tt]ickets?|bloodscrip|[Ff]ame)

send shop $shop
waitforre ^(Behind|In|On|Under).+, you see:$

if_1 goto ShopDesc
goto StartShop

ShopDesc:
put #log >Shop.txt {{Store At A Glance
put #log >Shop.txt |Store Name       =$roomname
put #log >Shop.txt |Province         =
put #log >Shop.txt |Town             =$zonename
put #log >Shop.txt |MapNumber        =$zoneid
put #log >Shop.txt |Owner            =-
put #log >Shop.txt |NumRooms         =
put #log >Shop.txt |restrict         =
put #log >Shop.txt |levelres         =
put #log >Shop.txt |Store Type       =[Guild], [Race], Alchemy, Alteration, Armor, Barber, Boat, Book, Cambrinth, Casino, Clothing, Container, Cosmetics, Crafting, Drink, Dye, Embroidery, Engineering, Engraving, Estate Holder, Face paint, Festival, Fletching, Florist, Food, Forging, Furrier, Games, Gem, General, Heraldry, Herb, Hider, Horse, Housing, Jewelry, Juggling, Light, Locksmithing, Magic, MAMAS, Map, Miscellaneous, Music, Origami, Outfitting, Pawn, Perfume, Pet, Rare Materials, Repair, Shield, Siegery, Smoking, Spellbook, Tack, Tanning, Tattoo, Tobacco, Toy, Trinket, Vault Furniture, Weapon, Wedding, Writing
put #log >Shop.txt |Fest             =
put #log >Shop.txt |Coin             =$currency
put #log >Shop.txt }}
put #log >Shop.txt
put #log >Shop.txt {{ShopDescription
put #log >Shop.txt |roomname=$roomname
put #log >Shop.txt |desc=$roomdesc<br />
put #log >Shop.txt $roomobjs<br />
put #log >Shop.txt $roomexits
put #log >Shop.txt }}
put #log >Shop.txt

StartShop:
put #log >Shop.txt "{{ShopHeader|title=%shopheader}}"
echo
echo ITEM TYPE:
echo
echo 1:	Weapon
echo
echo 2:	Shield
echo
echo 3:	Armor/Barding
echo
echo 4:	Item: Other
echo
echo Enter Type Number:

matchre Weapon ^1$
matchre Shield ^2$
matchre Armor ^3$
matchre Item ^4$
matchwait

Weapon:
var type w
goto Shop1
Shield:
var type s
goto Shop1
Armor:
var type a
goto Shop1
Item:
var type i
goto Shop1

Shop1:
action setvariable tap $2;setvariable price $3 when ^\s+(an?|some|the) (.+) for (\d+) ([Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3 when ^\s+(an?|some|the) (.+) for (\d+) copper (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_0 when ^\s+(an?|some|the) (.+) for (\d+) bronze (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3 when ^\s+(an?|some|the) (.+) for (\d+\.\d+) bronze (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_00 when ^\s+(an?|some|the) (.+) for (\d+) silver (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_0 when ^\s+(an?|some|the) (.+) for (\d+\.\d+) silver (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_000 when ^\s+(an?|some|the) (.+) for (\d+) gold (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_00 when ^\s+(an?|some|the) (.+) for (\d+\.\d+) gold (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_0000 when ^\s+(an?|some|the) (.+) for (\d+) platinum (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action setvariable tap $2;setvariable price $3_000 when ^\s+(an?|some|the) (.+) for (\d+\.\d+) platinum (Kronars?|Dokoras?|Lirums?|[Tt]ickets?|bloodscrip|[Ff]ame)$
action put #log >Shop.txt "{{ShopItem|t=	%type	|	%tap	|	%price	}}" when for (\S+) (copper|bronze|silver|gold|platinum) (Kronars?|Dokoras?|Lirums?)$
action put #log >Shop.txt "{{ShopItem|t=	%type	|	%tap	|	%price	}}" when for (\S+) ([Tt]ickets?|bloodscrip|[Ff]ame)
action put #log >Shop.txt "{{ShopFootnote|rotating stock}}" when ^The inventory of.+rotates\.$
send shop $shop
waitfor [Type SHOP [GOOD] to see some details about it.]
pause 1
goto end

end:
put #log >Shop.txt |}
send shop
put #class racial on
exit