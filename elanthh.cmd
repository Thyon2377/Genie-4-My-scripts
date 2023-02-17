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
send get my $yardstick
waitforre ^You get|^You are already holding that
}

#action goto enderror1 when ^You .+ a quality of \d+, placing it at .+ on the official Trader's Scale\.$|^You.+the \S+ in the .+ is of .+ quality\.$
#action goto enderror2 when ^The .+ looks? to be custom-made\.$
action setvariable tap $2 when ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying
action setvariable tap $2 when ^On the.+you see (a|an|some|the) (.+)\.$
action setvariable tap $2 when ^You glance at (a|an|some|the) (.+)\.$
action setvariable tap $2 when ^You quietly examine (a|an|some|the) (.+) and notice a price tag indicating
action setvariable tap $2 when ^You tap (a|an|some|the) (.+)\.$
action setvariable tap $2;setvariable look $3 when ^\w+ shows you (an?|some|the) (.+?)\.\s+(.+)
action setvariable tap $2;setvariable look - when ^\w+ shows you (an?|some|the) (.+)\.$
action setvariable short $2 when ^Considering the security around (a|an|some|the) (.+), it would be ill advised to tamper with it.
action setvariable short $2 when ^Short: (a|an|some|the) (.+)
action setvariable look $1 when ^Look:  (.+)
action setvariable look - when ^Look:  You see nothing unusual\.$
action setvariable look - when ^You see nothing unusual\.$
action setvariable read $1 when ^Read:\s+(.+)$
action setvariable typefunction tack when ^This is specifically designed to be worn by a horse\.$
action setvariable special tack when ^This is specifically designed to be worn by a horse\.$
action setvariable typecon container when ^The .+ (are|is) a container, and can be opened and closed\.$
action setvariable typecon container when ^The .+ (are|is) a container\.$
action setvariable typecon container when ^The .+ (are|is) pocketed, and can be opened and closed\.$
action setvariable typecon container when ^The .+ (are|is) pocketed\.$
action setvariable typecon container when ^The gem pouch is made for easy storage of gems
action setvariable typeguild trader style when ^The .+ (are|is) obviously a specially made item\.$
action setvariable special trader style when ^The .+ (are|is) obviously a specially made item\.$
action setvariable wearloc $2 when ^It appears that .+ can be worn (around|in|on) the (.+)\.$
action setvariable wearloc $1 when ^It appears that .+ can be draped over the (.+)\.$
action setvariable wearloc generic when ^It appears that .+ can be worn\.$
action setvariable wearloc belt when ^It appears that .+ can be worn attached to a belt\.$
action setvariable wearloc belt when ^The gem pouch is made for easy storage of gems
action setvariable wearloc ear when ^It appears that .+ can be worn in one ear
action setvariable wearloc ears when ^It appears that .+ can be worn in both ears
action setvariable wearloc hair (placed) when ^It appears that .+ can be worn in the hair\.$
action setvariable wearloc pants when ^It appears that .+ can be worn like pants or a skirt\.$
action setvariable wearloc shirt (with armor) when ^It appears that .+ can be worn as a shirt or robe, even with armor\.$
action setvariable wearloc shirt (without armor) when ^It appears that .+ can be worn like a shirt or robe\.$
action setvariable wearloc shoulder when ^It appears that .+ can be slung over one shoulder\.$
action setvariable wearloc upper arm when ^It appears that .+ can be worn on the upper ?arm\.$
action setvariable weight $1 when ^You are certain that .+ weighs exactly (\d+) (stones?)\.$
action setvariable lsize $1;setvariable wsize $2;setvariable hsize $3 when ^You compare your .+ with the .+ yardstick several times and are certain the length measures (.+) spans?, the width measures (.+) spans? and the height measures (.+) spans?\.$
action setvariable ilsize $1;setvariable iwsize $2;setvariable ihsize $3;setvariable csize $4 when ^You compare your .+ with the .+ yardstick several times and are certain the interior length measures (.+) spans?, the interior width measures (.+) spans?, the interior height measures (.+) spans? and the .+ appears capable of holding about (\d+) stones of weight\.$
action setvariable appcostk $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:kronars)\.$
action setvariable appcostk 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:kronar)\.$
action setvariable appcostk 0 when ^You are certain that .+ (is|are) worth exactly nothing\.$
action setvariable appcostk - when ^There doesn't appear to be anything in the gem pouch\.$
action setvariable appcostk - when is made for easy storage of gems, and is used by gemshops everywhere to handle bulk transactions\.$
action setvariable appcostl $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:lirums)\.$
action setvariable appcostl 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:lirum)\.$
action setvariable appcostd $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:dokoras)\.$
action setvariable appcostd 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:dokora)\.$
action setvariable costi $1 when ^Cost:  (\d+)
action setvariable maxcharge $1 when ^You are certain that the .+ holds? exactly (\d+) mana\.$
action setvariable metal yes when ^The .+ (is|are) made with metal\.$

action setvariable wtype1 LE;setvariable wtypename1 light edged;setvariable wskill1 small edged when (is a|are a|and) light edged .+ weapon
action setvariable wtype1 ME;setvariable wtypename1 medium edged;setvariable wskill1 small edged when (is a|are a|and) medium edged .+ weapon
action setvariable wtype1 HE;setvariable wtypename1 heavy edged;setvariable wskill1 large edged when (is a|are a|and) heavy edged .+ weapon
action setvariable wtype1 2HE;setvariable wtypename1 two-handed edged;setvariable wskill1 twohanded edged when (is a|are a|and) two-handed edged .+ weapon
action setvariable wtype1 LB;setvariable wtypename1 light blunt;setvariable wskill1 small blunt when (is a|are a|and) light blunt .+ weapon
action setvariable wtype1 MB;setvariable wtypename1 medium blunt;setvariable wskill1 small blunt when (is a|are a|and) medium blunt .+ weapon
action setvariable wtype1 HB;setvariable wtypename1 heavy blunt;setvariable wskill1 large blunt when (is a|are a|and) heavy blunt .+ weapon
action setvariable wtype1 2HB;setvariable wtypename1 two-handed blunt;setvariable wskill1 twohanded blunt when (is a|are a|and) two-handed blunt .+ weapon
action setvariable wtype1 SL;setvariable wtypename1 sling;setvariable wskill1 slings when (is|are) a sling .+ weapon
action setvariable wtype1 StS;setvariable wtypename1 staff sling;setvariable wskill1 slings when (is|are) a staff sling .+ weapon
action setvariable wtype1 rock;setvariable wtypename1 sling ammo;setvariable wskill1 slings when ^This appears to be ammunition for slings\.$
action setvariable wtype1 SB;setvariable wtypename1 short bow;setvariable wskill1 bow when (is|are) a short bow .+ weapon
action setvariable wtype1 LoB;setvariable wtypename1 long bow;setvariable wskill1 bow when (is|are) a long bow .+ weapon
action setvariable wtype1 CB;setvariable wtypename1 composite bow;setvariable wskill1 bow when (is|are) a composite bow .+ weapon
action setvariable wtype1 arrow;setvariable wtypename1 bow ammo;setvariable wskill1 slings when ^This appears to be ammunition for bows\.$
action setvariable wtype1 LX;setvariable wtypename1 light crossbow;setvariable wskill1 crossbow when (is|are) a light crossbow .+ weapon
action setvariable wtype1 HX;setvariable wtypename1 heavy crossbow;setvariable wskill1 crossbow when (is|are) a heavy crossbow .+ weapon
action setvariable wtype1 bolt;setvariable wtypename1 crossbow ammo;setvariable wskill1 slings when ^This appears to be ammunition for crossbows\.$
action setvariable wtype1 SS;setvariable wtypename1 short staff;setvariable wskill1 staves when (is a|are a|and) short staff .+ weapon
action setvariable wtype1 QS;setvariable wtypename1 quarter staff;setvariable wskill1 staves when (is a|are a|and) quarter staff .+ weapon
action setvariable wtype1 PI;setvariable wtypename1 pike;setvariable wskill1 polearms when (is a|are a|and) pike .+ weapon
action setvariable wtype1 HAL;setvariable wtypename1 halberd;setvariable wskill1 polearms when (is a|are a|and) halberd .+ weapon
action setvariable wtype1 parry;setvariable wskill1 brawling when ^You are certain that the .+ is a purely defensive item\.$
action setvariable wtype1 elbows;setvariable wskill1 brawling when ^It appears that the .+ can be worn strapped to the elbows\.$
action setvariable wtype1 hands;setvariable wskill1 brawling when ^It appears that the .+ can be worn strapped to the hands\.$
action setvariable wtype1 knees;setvariable wskill1 brawling when ^It appears that the .+ can be worn strapped to the knees\.$
action setvariable wtype1 feet;setvariable wskill1 brawling when ^It appears that the .+ can be worn strapped to the feet\.$
action setvariable wtype2 LT;setvariable wtypename2 light thrown;setvariable wskill2 light thrown when (is|are) a light thrown and .+ weapon
action setvariable wtype2 HT;setvariable wtypename2 heavy thrown;setvariable wskill2 heavy thrown when (is|are) a heavy thrown and .+ weapon
action setvariable range melee when melee-ranged weapon
action setvariable range pole when pole-ranged weapon
action setvariable puncture $1 when ^\s+(.*) puncture damage
action setvariable slice $1 when ^\s+(.*) slice damage
action setvariable impact $1 when ^\s+(.*) impact damage
action setvariable fire $1 when ^\s+(.*) fire damage
action setvariable cold $1 when ^\s+(.*) cold damage
action setvariable electric $1 when ^\s+(.*) electric damage
action setvariable puncture quite a bit when ^\s+quite a bit of puncture damage
action setvariable slice quite a bit when ^\s+quite a bit of slice damage
action setvariable impact quite a bit when ^\s+quite a bit of impact damage
action setvariable fire quite a bit when ^\s+quite a bit of fire damage
action setvariable cold quite a bit when ^\s+quite a bit of cold damage
action setvariable electric quite a bit when ^\s+quite a bit of electric damage
action setvariable puncturetypename Yes when ^\s+(.*) puncture damage increase
action setvariable slicetypename Yes when ^\s+(.*) slice damage increase
action setvariable impacttypename Yes when ^\s+(.*) impact damage increase
action setvariable foi $1 when .+ is (.*) designed for improving the force of your attacks\.$
action setvariable balance $1 when .+ is (.*) balanced
action setvariable power $1 when .+ is (.*) suited
action setvariable drawstrength $1 when ^The .+ appears set for a draw strength that is (.+) for a bow of this type\.$
action setvariable adraw Yes when ^The .+ appears to have an adjustable draw strength\.$
action setvariable adraw No when ^The .+ does not appear to have an adjustable draw strength\.$

action setvariable stype lsh;setvariable stypename large when is large in size\.$
action setvariable stype msh;setvariable stypename medium when is medium in size\.$
action setvariable stype ssh;setvariable stypename small when is small in size\.$
action setvariable newshieldapp Yes when ^Your experience with shields allows a better appraisal of the protection capabilities\.$
action setvariable sprotection $1 when .+ offers (.*) protection
action setvariable smin $1 when ^You are certain that .+ offers (.*) to .+ protection\.
action setvariable smax $1 when ^You are certain that .+ offers .+ to (.*) protection\.
action setvariable shindrance $1 when .+ it imposes? (.*) maneuvering hindrance.

action setvariable atype plate armor when (is|are) plate armor\.$
action setvariable atype brigandine when (is|are) brigandine armor\.$
action setvariable atype chain armor when (is|are) chain armor\.$
action setvariable atype light armor when (is|are) light armor\.$
action setvariable abpuncture $1 when .+ \s(.*) for puncture attacks
action setvariable abslice $1 when .+ \s(.*) for slice attacks
action setvariable abimpact $1 when .+ \s(.*) for impact attacks
action setvariable abfire $1 when .+ \s(.*) for fire attacks
action setvariable abcold $1 when .+ \s(.*) for cold attacks
action setvariable abelectrical $1 when .+ \s(.*) for electrical attacks
action setvariable appuncture $1 when .+ \s(.*) protection and .+ damage absorption for puncture attacks
action setvariable apslice $1 when .+ \s(.*) protection and .+ damage absorption for slice attacks
action setvariable apimpact $1 when .+ \s(.*) protection and .+ damage absorption for impact attacks
action setvariable apfire $1 when .+ \s(.*) protection and .+ damage absorption for fire attacks
action setvariable apcold $1 when .+ \s(.*) protection and .+ damage absorption for cold attacks
action setvariable apelectrical $1 when .+ \s(.*) protection and .+ damage absorption for electrical attacks
action setvariable aapuncture $1 when .+ protection and (.*) damage absorption for puncture attacks
action setvariable aaslice $1 when .+ protection and (.*) damage absorption for slice attacks
action setvariable aaimpact $1 when .+ protection and (.*) damage absorption for impact attacks
action setvariable aafire $1 when .+ protection and (.*) damage absorption for fire attacks
action setvariable aacold $1 when .+ protection and (.*) damage absorption for cold attacks
action setvariable aaelectrical $1 when .+ protection and (.*) damage absorption for electrical attacks
action setvariable ahindrance $1 when .+ appears? to impose (.*), offering
action setvariable mhindrance $1 when .+ appears? to impose (.*) maneuvering hindrance and
action setvariable shindrance $1 when .+ appears? to impose .+ maneuvering hindrance and (.*) stealth hindrance
action setvariable ahead head when ^\s+head$
action setvariable aeyes eyes when ^\s+right eye$
action setvariable aneck neck when ^\s+neck$
action setvariable achest chest when ^\s+chest$
action setvariable aback back when ^\s+back$
action setvariable aabdomen abdomen when ^\s+abdomen$
action setvariable aarms arms when ^\s+right arm$
action setvariable aarms arms when ^\s+right front leg$
action setvariable alegs legs when ^\s+right leg$
action setvariable alegs legs when ^\s+right rear leg$
action setvariable ahands hands when ^\s+right hand$

action setvariable construction $2 when ^You are certain that the .+ (is|are) (.*) (against|to) damage, and
action setvariable construction extremely weak when ^You are certain that the .+ (is|are) extremely weak and
action setvariable construction very delicate when ^You are certain that the .+ (is|are) very delicate, and
action setvariable construction quite fragile when ^You are certain that the .+ (is|are) quite fragile and easily damaged, and
action setvariable construction rather flimsy when ^You are certain that the .+ (is|are) rather flimsy and easily damaged, and
action setvariable construction particularly weak when ^You are certain that the .+ (is|are) particularly weak, and
action setvariable construction average construction when ^You are certain that the .+ (is|are) of average construction, and
action setvariable construction very strong when ^You are certain that the .+ (is|are) very strong, and

echo
echo ITEM TYPE:
echo
echo 1:	Weapon: Melee/Thrown
echo
echo 2:	Weapon: Ranged
echo
echo 3:	Weapon: Ammunition
echo
echo 4:	Weapon: Brawling
echo
echo 5:	Weapon: Parry Stick
echo
echo 6:	Shield
echo
echo 7:	Armor/Barding
echo
echo 8:	Item
echo
echo Enter Type Number:

matchre WeaponApp1 ^1$
matchre WeaponApp2 ^2$
matchre WeaponApp3 ^3$
matchre WeaponApp4 ^4$
matchre WeaponApp5 ^5$
matchre ShieldApp ^6$
matchre ArmorApp ^7$
matchre ItemApp ^8$
matchre ItemApp ^9$
matchwait

WeaponApp1:
var number %numbers(%numbers.index)
gosub AppraiseWeapon1
goto verbcheck

WeaponApp2:
var number %numbers(%numbers.index)
gosub AppraiseWeapon2
goto verbcheck

WeaponApp3:
var number %numbers(%numbers.index)
gosub AppraiseWeapon3
goto verbcheck

WeaponApp4:
var number %numbers(%numbers.index)
gosub AppraiseWeapon4
goto verbcheck

WeaponApp5:
var number %numbers(%numbers.index)
gosub AppraiseWeapon5
goto verbcheck

ShieldApp:
var number %numbers(%numbers.index)
gosub AppraiseShield
goto verbcheck

ArmorApp:
var number %numbers(%numbers.index)
gosub AppraiseArmor
goto verbcheck

ItemApp:
var number %numbers(%numbers.index)
gosub AppraiseItem
goto verbcheck

AppraiseWeapon1:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
echo
echo {{Weapon
echo |name=%tap
echo |newapp2=Yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |range=%range
echo |type=%wtype1
echo |type2=%wtype2
echo |puncture=%puncture
echo |slice=%slice
echo |impact=%impact
echo |fire=%fire
echo |cold=%cold
echo |electric=%electric
echo |foi=%foi
echo |balance=%balance
echo |suitedness=%power
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |wearloc=%wearloc
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo note=%wtypename1 (%weight stones)
echo note=%wtypename2/%wtypename1 (%weight stones)
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Weapon
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newapp2=Yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |range=%range
put #log >Appraisal-$charactername.txt |type=%wtype1
put #log >Appraisal-$charactername.txt |type2=%wtype2
put #log >Appraisal-$charactername.txt |puncture=%puncture
put #log >Appraisal-$charactername.txt |slice=%slice
put #log >Appraisal-$charactername.txt |impact=%impact
put #log >Appraisal-$charactername.txt |fire=%fire
put #log >Appraisal-$charactername.txt |cold=%cold
put #log >Appraisal-$charactername.txt |electric=%electric
put #log >Appraisal-$charactername.txt |foi=%foi
put #log >Appraisal-$charactername.txt |balance=%balance
put #log >Appraisal-$charactername.txt |suitedness=%power
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%wtypename1 (%weight stones)
put #log >Appraisal-$charactername.txt note=%wtypename2/%wtypename1 (%weight stones)
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseWeapon2:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
echo
echo {{Weapon
echo |name=%tap
echo |newapp2=Yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |range=ranged
echo |ammo=%ammo
echo |ammocap=
echo |rangedRT=
echo |drawstrength=%drawstrength
echo |adraw=%adraw
echo |type=%wtype1
echo |puncture=-
echo |foi=%foi
echo |balance=%balance
echo |suitedness=%power
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |wearloc=%wearloc
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo note=%wtypename1
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Weapon
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newapp2=Yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |range=ranged
put #log >Appraisal-$charactername.txt |ammo=%ammo
put #log >Appraisal-$charactername.txt |ammocap=
put #log >Appraisal-$charactername.txt |rangedRT=
put #log >Appraisal-$charactername.txt |drawstrength=%drawstrength
put #log >Appraisal-$charactername.txt |adraw=%adraw
put #log >Appraisal-$charactername.txt |type=%wtype1
put #log >Appraisal-$charactername.txt |puncture=-
put #log >Appraisal-$charactername.txt |foi=%foi
put #log >Appraisal-$charactername.txt |balance=%balance
put #log >Appraisal-$charactername.txt |suitedness=%power
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%wtypename1
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseWeapon3:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
echo
echo {{Weapon
echo |name=%tap
echo |newapp2=Yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=%wtype1
echo |puncture=%puncture
echo |slice=%slice
echo |impact=%impact
echo |fire=%fire
echo |cold=%cold
echo |electric=%electric
echo |foi=-
echo |balance=-
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |wearloc=%wearloc
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo note=%wtypename1 (x)
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Weapon
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newapp2=Yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=%wtype1
put #log >Appraisal-$charactername.txt |puncture=%puncture
put #log >Appraisal-$charactername.txt |slice=%slice
put #log >Appraisal-$charactername.txt |impact=%impact
put #log >Appraisal-$charactername.txt |fire=%fire
put #log >Appraisal-$charactername.txt |cold=%cold
put #log >Appraisal-$charactername.txt |electric=%electric
put #log >Appraisal-$charactername.txt |foi=-
put #log >Appraisal-$charactername.txt |balance=-
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%wtypename1 (x)
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseWeapon4:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
echo
echo {{Weapon
echo |name=%tap
echo |newapp2=Yes
echo |brawl=yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=%wtype1
echo |puncture=%puncture
echo |puncturetype=%puncturetype
echo |slice=%slice
echo |slicetype=%slicetype
echo |impact=%impact
echo |impacttype=%impacttype
echo |foi=%foi
echo |balance=-
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo brawling (%wtype1)
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Weapon
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newapp2=Yes
put #log >Appraisal-$charactername.txt |brawl=yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=%wtype1
put #log >Appraisal-$charactername.txt |puncture=%puncture
put #log >Appraisal-$charactername.txt |puncturetype=%puncturetype
put #log >Appraisal-$charactername.txt |slice=%slice
put #log >Appraisal-$charactername.txt |slicetype=%slicetype
put #log >Appraisal-$charactername.txt |impact=%impact
put #log >Appraisal-$charactername.txt |impacttype=%impacttype
put #log >Appraisal-$charactername.txt |foi=%foi
put #log >Appraisal-$charactername.txt |balance=-
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt brawling (%wtype1)
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseWeapon5:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
echo
echo {{Weapon
echo |brawl=yes
echo |name=%tap
echo |newapp2=Yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=parry
echo |puncture=-
echo |puncturetype=No
echo |slicetype=No
echo |impacttype=No
echo |foi=-
echo |balance=%balance
echo |suitedness=%power
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo brawling (parry)
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Weapon:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Weapon
put #log >Appraisal-$charactername.txt |brawl=yes
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newapp2=Yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=parry
put #log >Appraisal-$charactername.txt |puncture=-
put #log >Appraisal-$charactername.txt |puncturetype=No
put #log >Appraisal-$charactername.txt |slicetype=No
put #log >Appraisal-$charactername.txt |impacttype=No
put #log >Appraisal-$charactername.txt |foi=-
put #log >Appraisal-$charactername.txt |balance=%balance
put #log >Appraisal-$charactername.txt |suitedness=%power
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt brawling (parry)
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseShield:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what

if %newshieldapp = no then var smin NOTSET
if %newshieldapp = no then var smax NOTSET
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Shield:%tap&action=edit
echo
echo {{Shield
echo |newshieldapp=%newshieldapp
echo |name=%tap
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=%stype
echo |hindrance=%shindrance
echo |minprotection=%smin
echo |maxprotection=%smax
echo |puncture=%puncture
echo |slice=%slice
echo |impact=%impact
echo |fire=%fire
echo |cold=%cold
echo |electric=%electric
echo |foi=-
echo |balance=%balance
echo |suitedness=%power
echo |construction=%construction
echo |metal=%metal
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |appcost=%appcost
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo note=%stypename (%shindrance hindrance)
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Shield:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Shield
put #log >Appraisal-$charactername.txt |newshieldapp=%newshieldapp
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=%stype
put #log >Appraisal-$charactername.txt |hindrance=%shindrance
put #log >Appraisal-$charactername.txt |minprotection=%smin
put #log >Appraisal-$charactername.txt |maxprotection=%smax
put #log >Appraisal-$charactername.txt |puncture=%puncture
put #log >Appraisal-$charactername.txt |slice=%slice
put #log >Appraisal-$charactername.txt |impact=%impact
put #log >Appraisal-$charactername.txt |fire=%fire
put #log >Appraisal-$charactername.txt |cold=%cold
put #log >Appraisal-$charactername.txt |electric=%electric
put #log >Appraisal-$charactername.txt |foi=-
put #log >Appraisal-$charactername.txt |balance=%balance
put #log >Appraisal-$charactername.txt |suitedness=%power
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%stypename (%shindrance hindrance)
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseArmor:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
send measure my $righthandnoun with $yardstick
wait
pause .5
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if %aapuncture = %aaslice && %aapuncture = %aaimpact && %aapuncture = %aafire && %aapuncture = %aacold && %aapuncture = %aaelectrical then var absorbance %aapuncture
gosub Tagset
gosub Specialset
gosub Itypeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Armor:%tap&action=edit
echo
echo {{Armor
echo |name=%tap
echo |newarmorapp=Yes
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=%atype
echo |area=%ahead, %aeyes, %aneck, %achest, %aback, %aabdomen, %aarms, %alegs, %ahands
echo |hindrance=%mhindrance
echo |stealth=%shindrance
echo |puncture=%appuncture
echo |slice=%apslice
echo |impact=%apimpact
echo |fire=%apfire
echo |cold=%apcold
echo |electric=%apelectrical
echo |absorbance=%absorbance
echo |punctureab=%aapuncture
echo |sliceab=%aaslice
echo |impactab=%aaimpact
echo |fireab=%aafire
echo |coldab=%aacold
echo |electricab=%aaelectrical
echo |construction=%construction
echo |metal=%metal
echo |appcost=%appcost
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |special=%special
echo |itype=%itype
echo }}
echo note=%atype: %ahead/%aeyes/%aneck/%achest/%aback/%aabdomen/%aarms/%alegs/%ahands
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Armor:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Armor
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |newarmorapp=Yes
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=%atype
put #log >Appraisal-$charactername.txt |area=%ahead, %aeyes, %aneck, %achest, %aback, %aabdomen, %aarms, %alegs, %ahands
put #log >Appraisal-$charactername.txt |hindrance=%mhindrance
put #log >Appraisal-$charactername.txt |stealth=%shindrance
put #log >Appraisal-$charactername.txt |puncture=%appuncture
put #log >Appraisal-$charactername.txt |slice=%apslice
put #log >Appraisal-$charactername.txt |impact=%apimpact
put #log >Appraisal-$charactername.txt |fire=%apfire
put #log >Appraisal-$charactername.txt |cold=%apcold
put #log >Appraisal-$charactername.txt |electric=%apelectrical
put #log >Appraisal-$charactername.txt |absorbance=%absorbance
put #log >Appraisal-$charactername.txt |punctureab=%aapuncture
put #log >Appraisal-$charactername.txt |sliceab=%aaslice
put #log >Appraisal-$charactername.txt |impactab=%aaimpact
put #log >Appraisal-$charactername.txt |fireab=%aafire
put #log >Appraisal-$charactername.txt |coldab=%aacold
put #log >Appraisal-$charactername.txt |electricab=%aaelectrical
put #log >Appraisal-$charactername.txt |construction=%construction
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |special=%special
put #log >Appraisal-$charactername.txt |itype=%itype
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%atype: %ahead/%aeyes/%aneck/%achest/%aback/%aabdomen/%aarms/%alegs/%ahands
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

AppraiseItem:
gosub VarBlank
pause 1
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send inventory held
waitforre ^In your right hand, you are carrying (an?|some|the) (.+), and in your left hand, you are carrying.+
send look my $righthandnoun
pause .5
send appraise my $righthandnoun careful
wait
pause 1
MeasureItem1:
if %lsize = NOTSET then
{
send close my $righthandnoun
matchre MeasureItem2 ^You can't close that|^(That|This) is not possible|^There is no way to do that
matchwait 1
pause .5
send measure my $righthandnoun with $yardstick
wait
pause .5
}
MeasureItem2:
if %ilsize = DELETE then
{
send open my $righthandnoun
pause .5
matchwait 1
pause .5
send measure my $righthandnoun with $yardstick
wait
pause .5
}

MeasuredItem:
send stow my $yardstick
waitforre ^You put|^Stow what
if %appcostl > 0 then evalmath appcostk floor(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
if %appcostk > 0 then gosub CommaAppcost
if %appcostk > 0 then gosub CommaCost
if %appcostk = 0 then var appcost 0
if (matchre ("%wtype1", "(SB|LoB|CB)")) then var ammo arrow
if (matchre ("%wtype1", "(LX|HX)")) then var ammo bolt
if (matchre ("%wtype1", "(SL|StS)")) then var ammo rock
if (matchre ("%wtype1", "(LT|HT)")) then var ammo thrown
gosub Tagset
gosub Typeset
gosub Dimensionset
echo Date: $date $time ($roomname)
echo https://elanthipedia.play.net/index.php?title=Item:%tap&action=edit
echo
echo {{Item
echo |name=%tap
echo |noun=$righthandnoun
echo |look=%look
echo <br />'''Read''': %read
echo |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
echo |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
echo |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
echo |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
echo |type=%typefunction, %typecon, %typemagic, %typeguild, %typerace
echo |wearloc=%wearloc
echo |weight=%weight
echo |lsize=%lsize
echo |wsize=%wsize
echo |hsize=%hsize
echo |ilsize=%ilsize
echo |iwsize=%iwsize
echo |ihsize=%ihsize
echo |csize=%csize
echo |appcost=%appcost
echo |sourcetype=-
echo |fname=No
echo |maxcharge=%maxcharge
echo |metal=%metal
echo }}
echo note=%wearloc: %ilsize x %iwsize x %ihsize (%csize stones)
echo note=%wearloc: holds %maxcharge mana
put #log >Appraisal-$charactername.txt Date: $date $time ($roomname)
put #log >Appraisal-$charactername.txt https://elanthipedia.play.net/index.php?title=Item:%tap&action=edit
put #log >Appraisal-$charactername.txt {{Item
put #log >Appraisal-$charactername.txt |name=%tap
put #log >Appraisal-$charactername.txt |noun=$righthandnoun
put #log >Appraisal-$charactername.txt |look=%look
put #log >Appraisal-$charactername.txt <br />'''Read''': %read
put #log >Appraisal-$charactername.txt |MTag=%mtags, %mtagm, %mtagf, %mtagg, %mtagw
put #log >Appraisal-$charactername.txt |CTag=%ctagr, %ctago, %ctagt, %ctagy, %ctagg, %ctagb, %ctagv, %ctagn, %ctagm, %ctagx
put #log >Appraisal-$charactername.txt |STag=%stagg, %stagp, %stagr, %stage, %staga, %stagh, %stagl
put #log >Appraisal-$charactername.txt |ATag=%amtags, %amtagm, %amtagf, %amtagg, %amtagw, %actagr, %actago, %actagt, %actagy, %actagg, %actagb, %actagv, %actagn, %actagm, %actagx, %astagg, %astagp, %astagr, %astage, %astaga, %astagh, %astagl
put #log >Appraisal-$charactername.txt |type=%typefunction, %typecon, %typemagic, %typeguild, %typerace
put #log >Appraisal-$charactername.txt |wearloc=%wearloc
put #log >Appraisal-$charactername.txt |weight=%weight
put #log >Appraisal-$charactername.txt |lsize=%lsize
put #log >Appraisal-$charactername.txt |wsize=%wsize
put #log >Appraisal-$charactername.txt |hsize=%hsize
put #log >Appraisal-$charactername.txt |ilsize=%ilsize
put #log >Appraisal-$charactername.txt |iwsize=%iwsize
put #log >Appraisal-$charactername.txt |ihsize=%ihsize
put #log >Appraisal-$charactername.txt |csize=%csize
put #log >Appraisal-$charactername.txt |appcost=%appcost
put #log >Appraisal-$charactername.txt |sourcetype=-
put #log >Appraisal-$charactername.txt |fname=No
put #log >Appraisal-$charactername.txt |maxcharge=%maxcharge
put #log >Appraisal-$charactername.txt |metal=%metal
put #log >Appraisal-$charactername.txt }}
put #log >Appraisal-$charactername.txt
put #log >Appraisal-$charactername.txt note=%wearloc: %ilsize x %iwsize x %ihsize (%csize stones)
put #log >Appraisal-$charactername.txt note=%wearloc: holds %maxcharge mana
put #log >Appraisal-$charactername.txt
gosub verbcheck
return

VarBlank:
var metal no
var maxcharge DELETE THIS LINE
var wearloc -
var lsize NOTSET
var wsize NOTSET
var hsize NOTSET
var ilsize DELETE
var iwsize DELETE
var ihsize DELETE
var csize DELETE
var appcost NOTSET
var mtags DELETE
var mtagg DELETE
var mtagm DELETE
var mtagw DELETE
var mtagf DELETE
var ctagr DELETE
var ctago DELETE
var ctagt DELETE
var ctagy DELETE
var ctagg DELETE
var ctagb DELETE
var ctagv DELETE
var ctagn DELETE
var ctagm DELETE
var ctagx DELETE
var stagp DELETE
var stagg DELETE
var staga DELETE
var stagh DELETE
var stage DELETE
var stagr DELETE
var stagl DELETE
var amtags DELETE
var amtagm DELETE
var amtagf DELETE
var amtagg DELETE
var amtagw DELETE
var actagr DELETE
var actago DELETE
var actagt DELETE
var actagy DELETE
var actagg DELETE
var actagb DELETE
var actagv DELETE
var actagn DELETE
var actagm DELETE
var actagx DELETE
var astagg DELETE
var astagp DELETE
var astagr DELETE
var astage DELETE
var astaga DELETE
var astagh DELETE
var astagl DELETE
var wtype2 NOTSET
var puncturetype No
var slicetype No
var impacttype No
var absorbance VALUES NOT EQUAL
var ahead DELETE
var aeyes DELETE
var aneck DELETE
var achest DELETE
var aback DELETE
var aabdomen DELETE
var aarms DELETE
var alegs DELETE
var ahands DELETE
var construction NOTSET
var typefunction -
var typecon DELETE
var typemagic DELETE
var typeguild DELETE
var typerace DELETE
var special NOTSET
var itype NOTSET
return

Tagset:
if (matchre ("%tap", "(asketine|avaes|celstite|chakrel|dhhresh|hafaltu|iheaneu'?a|imnera|indakar|ithridu|keismin|lemicule|negnetha|soulstone|sraeth|xibaryl|zengalmi)")) then var mtags $1
if (matchre ("%tap", "(aluminum|animite|anlora[- ]avtoma|audrualm|\bbrass\b|chrome|covellite|Damascus steel|damite|darkstone|electrum|Elven silver|gilded|glaes|(black|blighted|blue|crown|Elven green|grey|pink|purple|rose|white|yellow) \bgold\b|haralun|hepatizon|icesteel|ilmenite|iridium|(?<!wrought )\biron\b|ithridu|kadepa|keismin|kertig|lumium|mithril|moen takibena|moonsilver|muracite|negnetha|nickel|niello|niniam|oravir|orichalcum|palladium|pewter|rencate|silver[- ]gilt|silversteel|spangold|sungold|(?<!watered )\bsteel\b|tantalum|\btin\b|titanium|tyrium|vardite|verdigris copper|watered steel|windsteel|wrought iron|\bzinc\b)")) then var mtagm $1
if (matchre ("%tap", "([cs]endal|angora|armure|arzumodine|\bbast\b|\bbatik\b|batiste|bison[- ]hide|boar[- ]hide|bombazine|bourde|broadcloth|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)brocade|buckskin|burlap|camlet|canvas|cashmere|chainse|chainsil|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)chiffon|\bcire\b|cloth[- ]of[- ]gold|cloth[- ]of[- ]silver|(?<!lipka )cotton|cowhide|cr[ae]pe|crinoline|cuirbouilli|damask|deerskin|dergatine|diamond[- ]hide|doeskin|dragonar|eolienne|\bfaille\b|farandine|\bfelt\b|flannel|\bflax\b|fleece|gabardine|gauze|gingham|gold[- ]weave|grogram|grosgrain|haircloth|\bhemp\b|horsehair|ialalhe|imperial weave|jaalmin |jacquard|\bjaspe\b|\bjute\b|khaddar|khaki|khiynit|kidskin|lambskin|leather|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\blinen\b|longcloth|muslin|oilcloth|oilskin|onyx[- ]hide|petalette|ramshorn|rawhide|rosecloth|ruazen|sackcloth|sailcloth|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\bsamite\b|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\bsatin\b|scalene |seersucker|\bserge\b|\bshagreen\b|sharkskin|sheepskin|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\bsilk\b|silver[- ]weave|silveress|snakeskin|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)snowlace|spun glitter |straw|suede|taffeta|thornweave|titanese|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\btulle\b|turbaurs|tweed|\btwine\b|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\bvelvet\b|velveteen|voile|whisperlayne|whitleather|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\bwool\b|woolen|worsted|zenganne|zibeline|(blood|bluefire|dragonfire|duchess|duponi|Elothean|Elven|fae woven|faeweave|fire|gemfire|ice|lava|lipka|marble|moon|moonspun|Musparan|night|night[rw]eaver|nightstalker|oceanmist|ruaz[ei]n|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velakan?|water|windstorm|zerarin) (brocade|chiffon|cotton|gossamer|lace|linen|samite|satin|silk|snowlace|tulle|velvet|wool))")) then var mtagf $1
if (matchre ("%tap", "((cat'?s?|hawk'?s?|tiger'?s?) eye|(?<!(dragonvein) )agates?|(?<!(orchid|viperscale) )alexandrite|almiris|alshabi stone|ambergris|amlothite|andalusite|anloral|anthracite|arkose|aurora opal|axinite|azurite|basalt|\bberyls?\b|bleeding heart jade|bloodgem|calav[ae]rite|ceramic|chalcedon(y|ies)|\bchalk\b|charoite|chrysoberyl|chrysoprase|cinnabar|(?<!volcano'?s heart )citrine|\bclays?\b|cloudstone|\bcoal\b|\bcorals?\b|\bcrystals?\b|crystalline dragon tear|dawgolite|(?<!(black|blue|champagne|Dalterein|huntress|lilac|midnight|molten-core|night|ocean'?s heart|pink|scorpion|smoky|white) )diamond(?!ique)|diamondique|diopside|diorite|dolomite|dragonfire amber|Drogor's Wrath sapphire|durgauldite|dwalgim|elanthite|elbaite|\beldrings?\b|Enelne's eye|er'?qutrite|erythraean|erythrite|estrildite|feldspar|\bflint\b|fool's gold|(?<!(bloodmist|forest'?s heart|nimbus) )garnet|\bglass\b|gneiss|granite|grazhite|Hav'?roth'?s ambrosia|hematite|iahja|ilmenite|iolite|ismenite|jadeite|(?<!(autumn|ocean|spiderweb|wild horse) )jasper|kaolinite|katamba'?s spire|katambite|kunzite|kyanite|lantholite|larimar|lasmodi|(?<!(Hekemhhg|lapis) )lazuli|malachite|\bmarble\b|merewaldite|mistglass|morganite|morleenite|\bnacres?\b|neitrice|obsidian|olivine|(?<!(aurora|cherry|draconic|dragon fire|firesilk|flame|frost|frostfire|frostflare|nightfire|sky|snow|sunset|water) )\bopals?\b|(?<!(dafora|damaryn|damilyo|fang|fire|geshi|idopun|jackal'?s heart|moon|pitch|taisidonian|talan) )\bpearls?\b|penhetite|peridot|porcelain|porphyry|pumice|pyrite|quartz|rhodochrosite|rhodonite|sana'?ati heart|scheelite|schist|scrimshaw|sea[- ]glass|selenite|\bsenci\b|\bshale\b|sjatmal|sodalite|\bspinels?\b|spiritgem|svelae|szeldite|tanzanite|(?<!(fire maiden|imperial|lion'?s heart|mystic|royal Zoluren|saffron|smoky|starfire|stormfire|xibar) )topaz|(?<!(aurora|vela'?tohr) )tourmaline|tsavorite|ulhari prism|verenite|volcano'?s heart citrine|waermodi|wulfenite|xibarite|yavasite|yoakenite|zircon|(orchid|viperscale) alexandrite|(lightning|violet'?s heart) amethyst|(black|blue|champagne|Dalterein|huntress|lilac|midnight|molten-core|night|ocean'?s heart|pink|scorpion|smoky|white) diamond|(bearclaw|glacier|Ilithi|nature'?s canopy|ocean'?s deep|shadow|spring|Taisidon|winter) emerald|(bloodmist|forest'?s heart|nimbus) garnet|(autumn|ocean|spiderweb|wild horse) jasper|(Hekemhhg|lapis) lazuli|(aurora|cherry|draconic|dragon fire|firesilk|flame|frost|frostfire|frostflare|nightfire|sky|snow|sunset|water) opal|(dafora|damaryn|damilyo|fang|fire|geshi|idopun|jackal'?s heart|moon|pitch|taisidonian|talan) pearl|(blood|cloud|conquerer'?s|dragon'?s (blood|eye|heart)|gemfire|imperial|midnight|moonspun|serpent'?s heart|smoke|star|starlight|Teiro'?s hate) rub(y|ies)|(crimson|dalaeji black|dragon'?s scale|elamiri|eluned'?s tear|haze|Idon'?s|imperial|lotus flower|mermaid'?s tear|Musparan gold|phantom|rainbow|serpent'?s head|shrike'?s eye|star|summer'?s heart|tempest|twilight|viper'?s eye|white Zoluren) sapphire|(fire maiden|imperial|lion'?s heart|mystic|royal Zoluren|saffron|smoky|starfire|stormfire|xibar) topaz|(aurora|vela'?tohr) tourmaline)")) then var mtagg $1
if (matchre ("%tap", "(\w+-stone)")) then var mtagg $1
if (matchre ("%tap", "(\w+stone)")) then var mtagg $1
if (matchre ("%tap", "(\bwooden\b|\bpaper\b|acacia|acanth|adderwood|aganylosh'?a|\balder\b|alerce|\baspen\b|\bbalsa\b|bamboo|basswood|\bbeech\b|(?<!curly )\bbirch\b|black ironwood|black maple|black walnut|black willow|blackwood|bloodwood|boxwood|bricklebranch|burlwood|\bcedar\b|cherrywood|cocobolo|copperleaf|copperwood|\bcork\b|curly birch|cypress|deobar|desert palm|diamondwood|dogwood|dragonwood|driftwood|e'?erdream|ebonwood|\belm\b|eucalyptus|\bfir\b|fishtail oak|flamethorn|flamewood|fruitwood|gethwood|glitvire|gloomwood|goldbark|goldenoak|halmik|\bhaon\b|hawthorn|hhr'?lav'?geluhh|hickory|huljik|Ilithian cedar|iroko|ironwood|juniper|khor'?vela|khor-?vela|lacewood|lemonwood|linden|linwood|\blunat\b|(?<!(black|silver) )\bmaple\b|mikkhalbamar|mistwood|modwir|(?<!(fishtail|golden) )\boak\b|\bosage\b|palmwood|papyrus|parchment|pearwood|\bpine\b|plumwood|poplar|pozumshi|purpleheart|redwood|\breed\b|rosewood|\browan\b|sana'?ati|sandalwood|sanrisi|satinwood|\bshaal\b|silver maple|silverwillow|silverwood|smokewood|\bspruce\b|taborwood|tamboti|\bteak\b|tulvora|\bvedda\b|vellum|(?<!black )walnut|white ironwood|whitethorn|wiirwood|(?<!(black|silver) )\bwillow\b|witchclaw|wyndewood|\byew\b|zingana|zulnatha)")) then var mtagw $1, wood
if (matchre ("%tap", "(\w+-wood)")) then var mtagw $1, wood
if (matchre ("%tap", "(\w+wood)")) then var mtagw $1, wood
if (matchre ("%tap", "(\bgods?\b|Immortal|Alamhif|Albreda|Aldauth|Aliesa|Aniek|Asketi|Be'?ort|Bereng[ae]ria|Botolf|Chadatru|Coshivi|Damaris|Demrris|Dergati|Divyaush|Drogor|Eerayn|Eimeuz|Elide|Eluned|Enelne|\bEu\b|Everild|Eylhaar|Faenella|Faiyka|Firulf|Gizzbolf|Glacis|Glythtide|Harawep|Hav'?roth|Hodierna|Huldah|\bIdon\b|Iladza|Issendar|Kerenhappuch|Kertigen|Kirmhara|Krigglin|Kuniyo|Lemicus|Meraud|Merion|Misiumos|\bMrod\b|Murrula|Orisas|Peri'?el|Phelim|Rutilor|Saemaus|Shariza|Sieben|Sildua|Spangklud|Sraxaec|Tamsine|Tenemlor|Thirteen|Tieheq|Triquetra|Trothfang|Truffenyi|Urrem'?tier|Ushnish|World Dragon|Xosiurion|Zachriedek)")) then var stagg $1
if (matchre ("%tap", "(acolyte|adventurer|alchemist|amazon|apothecary|\barchers?\b|armorsmith|assassin|bandit|Barbarian|\bBards?\b|barmaid|bartender|beggar|blacksmith|blasphemer|bowm[ae]n|\bbrewers?\b|brigand|buccaneer|burglar|captain|celebrant|champion|\bchefe?s?\b|citizen|clergy|clergy(man|clergy(man|woman)|Cleric|combatant|commoner|convict|criminal|dancer|diviner|doctor|druid|duelist|ecclesiastic|elemancer|elementalist|embalmer|Empath|enchanter|enchantress|engineer|executioner|farmer|felon|fencer|forester|gladiator|hangm[ae]n|healer|herald|heretic|\bheroe?s?\b|hierophant|highwaym[ae]n|historian|hunter|huntsm[ae]n|Inquisitor|inquisitress|\bjudges?\b|justiciar|knight|locksmith|lumberjack|\bmages?\b|marshal|martyr|mastermind|\bmedics?\b|medicine (m[ae]n|medicine (m[ae]n|wom[ae]n)|merchant|messenger|minister|minstrel|\bmonks?\b|Moon Mage|mortician|musician|mystic|navigator|Necromancer|nurse|outlaw|Paladin|pastor|peddler|philosopher|physician|pilgrim|pirate|\bpoets?\b|preacher|priest|prisoner|prophet|psychic|Ranger|researcher|rogue|\bsages?\b|sailor|scholar|\bseers?\b|sham[ae]n|shepherd|smuggler|sniper|soldier|spiritualist|surgeon|swashbuckler|Thief|Thieves|Trader|travell?er|undertaker|urchin|villager|villain|warrior|Warrior Mage|weaponsmith|weaver|\bwitche?s?\b|witche?|wizard|wom[ae]n)|woman)|woodcutter|woodsm[ae]n)")) then var stagp $1
if (matchre ("%tap", "(Adan'?f|Dwarf|Dwarves|\bElfs?\b|Elothean (?!(lace|silk))|Elven (?!(lace|silk|silver))|\bElves\b|Gnome|Gor'?Tog|Gorbesh|Halfling|Human|Kaldar|Lohogi'?hhs'?ur|Lohogi'?tel'?tegreis|\bm[ae]n\b|mer-?(folk|m[ae]n|people|wom[ae]n)|Ocular|\bOlvis?\b|Olvis?|\bpeople\b|Prydaen|Rakash|S'?[Kk]ra ?Mur|S'?[Kk]ra'?ur|\bwom[ae]n\b)")) then var stagr $1
if (matchre ("%tap", "(\ba?ether\b|\bearth\b|electricity|\bfires?\b|\bflames?\b|\bice\b|inferno|lightning|\bpyre\b|\bsnow\b|snowflake|thunder|water|\bair\b)")) then var stage $1
if (matchre ("%tap", "(aardvark|adder|albatross|alfar|alligator|alpaca|alphyn|anchovy|antelope|antler|\bapes?\b|apparition|arachnid|armadillo|\bass\b|aurochs|badger|bagwyn|banshee|barnacle|barracuda|basilisk|\bbats?\b|\bbears?\b|\bbeasts?\b|beaver|\bbees?\b|beetle|behemoth|bird|black widow|blackbird|bloodworm|blue ?jay|boggart|boobrie|buffalo|\bbulls?\b|bumble ?bee|burro|bustard|butterflies|butterfly|buzzard|calopus|camel|camelopard|canary|capybara|caracal|\bcats?\b|caterpillar|cattle|celpeze|centaur|centipede|chameleon|cheetah|chimera|chimpanzee|chinchilla|chipmunk|cicada|civet|\bclams?\b|cobra|cockatrice|cockroach|collie|condor|coney|cottontail|cougar|\bcows?\b|coyote|\bcrabs?\b|crane|cricket|\bcrows?\b|curlew|damselfly|demon|\bdevils?\b|\bdingos?\b|\bdogs?\b|dolphin|donkey|\bdoves?\b|\bdragons?\b|dragonfly|dryad|duck|eagle|echidna|\beels?\b|elephant|\belk\b|\bewes?\b|\bfae\b|fairy|falcon|\bfauns?\b|ferret|fiend|\bfinchs?\b|fish|\bfleas?\b|flounder|\bfox\b|\bfrog\b|gazelle|gecko|genie|gerbil|\bghosts?\b|\bghouls?\b|gidii|giraffe|goat|goblin|goose|gopher|gorilla|goshawk|gr[iy]ff[io]n|gr[iy]ph[io]n|grasshopper|greyhound|groundhog|grouse|guinea pig|hamster|\bhares?\b|harpy|\bhawks?\b|hedgehog|heron|\bherring\b|hinny|hippocamp|hippogr[iy]ff|hippogr[iy]ph|\bhogs?\b|honey ?bee|hornet|horse|hound|hydra|hyena|\bibexs?\b|iguana|\bimps?\b|impala|inkhorne|insect|jackal|jaguar|kangaroo|katydid|kelpie|kestrel|king ?snake|kingfisher|kirin|kitten|kobold|ladybug|\blamb\b|\blarks?\b|lemming|lemur|leopard|\blions?\b|lioness|lizard|llama|lobster|locust|\blynxs?\b|maggot|magpie|manatee|manta ray|manticore|mantis|marmot|marten|martlet|mastiff|meerkat|merelew|mermaid|merman|\bminks?\b|minnow|minotaur|mockingbird|mongoose|monkey|moose|mosquito|\bmoth\b|mouflon|mountain lion|mouse|\bmules?\b|musimon|muskox|nightingale|\bnyads?\b|ocelot|octopus|onager|opossum|osprey|ostrich|\botters?\b|\bowls?\b|\boxe?n?\b|panther|parakeet|parrot|partridge|peacock|pegasus|pelican|pheasant|phoenix|\bpigs?\b|pigeon|pika|platypus|polecat|popinjay|porcupine|possum|prairie ?dog|prawn|primate|puma|puppy|python|quail|rabbit|raccoon|raptor|\brats?\b|raven|reindeer|remora|rhinoceros|robin|rooster|salamander|sardine|satyr|scarab|scorpion|seagull|selkie|serpent|shrew|shrike|shrimp|skeleton|\bskulls?\b|snail|snowbeast|sparrow|specter|sphinx|\bspiders?\b|\bspirits?\b|springbok|\bsprites?\b|squirrel|\bstags?\b|starling|stoat|stork|sturgeon|swallow|\bswans?\b|swine|swordfish|talbot|tarantula|termite|terrapin|thrush|\btigers?\b|tityrus|\btoads?\b|tortoise|toucan|trout|turkey|turtle|undead|unicorn|viper|vole|vulture|walrus|weasel|welkin|werewolf|whale|wildcat|winged horse|\bwolfs?\b|wolverine|woodchuck|wraith|wren|wyvern|\byaks?\b|\byales?\b|zebra|zombie)")) then var staga $1
if (matchre ("%tap", "(aevaes|\baloe\b|belladonna|blocil|\bcebi\b|Datura|draconeaia|eghmok|foxglove|genich|georin|glaysker|hemlock|hisan|hulij|hulnik|ithor|jadice|junliar|lujeakave|muljin|nemoih|nightshade|nilos|nuloe|ojhenik|plovik|\bquns?\b|riolur|sufil|yelith)")) then var stagh $1
if (matchre ("%tap", "(\bAesry\b|Aesry Surlaenis'?a|Ain Ghazal|Amlothi|Arthe Dale|bayou|Belarritaco|Boar Clan|\bbogs?\b|canyon|Chyolvea Tayeu'?a|comet|constellation|Crossing|Dawgolesh|Dirge|Durgaulda|El'?Bain'?s|Elanthia|Empire|Er'?qutra|Estrilda|Faldesu|Fayrin'?s Rest|\bfens?\b|Forfedhdar|Fornsted|grassland|Grazhir|Gwenalion|Hara'?jaal|Hekemhhg|Hibarnhvidar|iceberg|Ilaya Taipa|Ilithi(?! emerald)|Irasushen|\bislands?\b|Ismenia|Jantspyre|jungle|Kaerna Village|\bKatamba\b|Kermoria|Knife Clan|\blakes?\b|Langenfirth|Leth Deriel|M'?Riss|\bmarshe?s?\b|meadow|Mer'?Kresh|Merewalda|\bmoons?\b|morass|Morleena|mountain|Muspar'?i|Nenav Dalar|Oxenwaithe|Penhetia|Pi'?Qanah|\bplanets?\b|prairie|Qi'?Reshalia|quagmire|rainforest|Ratamipak|\bRatha\b|Raven'?s Point|\bReshal\b|Reshalia|\brivers?\b|Riverhaven|Rossman'?s Landing|Sarasunath|savanna|Sawstwar|Segoltha|Shamilho|\bShard\b|shrubland|Siksraja|Steelclaw Clan|steppe|Stone Clan|\bsuns?\b|sunburst|Surlaenis|swamp|Szeldia|taiga|Taisgath|The Crossing|Therenborough|Therengia|Throne City|Tiger Clan|tundra|Velaka|Verena|volcano|wetland|Wolf Clan|woodland|\bXibar\b|Yavash|Yoakena|Zaulfung|Zhamikhh|Zoluren)")) then var stagl $1
if (matchre ("%tap", "((?i:crest of the (Barbarians?'?|Barbarian'?s?) Guild|(Barbarians?'?|Barbarian'?s?) Guild crest))")) then var stagp crest of the barbarians' guild
if (matchre ("%tap", "((?i:crest of the (Bards?'?|Bard'?s?) Guild|(Bards?'?|Bard'?s?) Guild crest))")) then var stagp crest of the bards' guild
if (matchre ("%tap", "((?i:crest of the (Clerics?'?|Cleric'?s?) Guild|(Clerics?'?|Cleric'?s?) Guild crest))")) then var stagp crest of the clerics' guild
if (matchre ("%tap", "((?i:crest of the (Empaths?'?|Empath'?s?) Guild|(Empaths?'?|Empath'?s?) Guild crest))")) then var stagp crest of the empaths' guild
if (matchre ("%tap", "((?i:crest of the (Moon ?Mages?'?|Moon ?Mage'?s?) Guild|(Moon ?Mages?'?|Moon ?Mage'?s?) Guild crest))")) then var stagp crest of the moon mages' guild
if (matchre ("%tap", "((?i:crest of the (Necromancers?'?|Necromancer'?s?) Guild|(Necromancers?'?|Necromancer'?s?) Guild crest))")) then var stagp crest of the necromancers' guild
if (matchre ("%tap", "((?i:crest of the (Paladins?'?|Paladin'?s?) Guild|(Paladins?'?|Paladin'?s?) Guild crest))")) then var stagp crest of the paladins' guild
if (matchre ("%tap", "((?i:crest of the (Rangers?'?|Ranger'?s?) Guild|(Rangers?'?|Ranger'?s?) Guild crest))")) then var stagp crest of the rangers' guild
if (matchre ("%tap", "((?i:crest of the (Thiefs?'?|Thief'?s?|Thieves'?) Guild|(Thiefs?'?|Thief'?s?|Thieves'?) Guild crest))")) then var stagp crest of the thieves' guild
if (matchre ("%tap", "((?i:crest of the (Traders?'?|Trader'?s?) Guild|(Traders?'?|Trader'?s?) Guild crest))")) then var stagp crest of the traders' guild
if (matchre ("%tap", "((?i:crest of the (Warr?i?o?r? ?Mages?'?|Warr?i?o?r? ?Mage'?s?) Guild|(Warr?i?o?r? ?Mages?'?|Warr?i?o?r? ?Mage'?s?) Guild crest))")) then var stagp crest of the warrior mages' guild
if (matchre ("%tap", "((\w+)(?=[- ](colored|highlighted|hued|tinted|toned)))")) then var ctagx $1
if (matchre ("%tap", "((\bred\b|amaranth|auburn|blood red|burgundy|carmine|cerise|claret|coquelicot|crimson|gules|haematic|incarnadine|magenta|maroon|murrey|orange red|\bpink\b|\breddish\b|\brosy\b|rubiginose|rubiginous|ruddy|sanguine|scarlet|vermilion|vinaceous)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagr $1, red
if (matchre ("%tap", "((\borange\b|fiery|\bpeach\b|persimmon|red orange|reddish orange|tangerine|yellow orange)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctago $1, orange
if (matchre ("%tap", "((\bbrown\b|ochre|russet|sepia|sienna|\bsorrel\b|\btan\b|tawny|tenne|\bumber\b)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagt $1, brown
if (matchre ("%tap", "((\byellow\b|aurulent|champagne|\becru\b|flaxen|green yellow|jonquil|lemon|saffron|xanthic)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagy $1, yellow
if (matchre ("%tap", "((\bgreen\b|asparagus|blue green|celadon|chartreuse|\blime\b|olivaceous|olive drab|smalt|\bvert\b|viridian|yellow green)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagg $1, green
if (matchre ("%tap", "((\bblue\b|azure|bluish|\bceil\b|cerulean|cobalt|\bcyan\b|cyaneous|indigo|\bteal\b|ultramarine)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagb $1, blue
if (matchre ("%tap", "((\bpurple\b|aubergine|eggplant|fuchsia|lavender|lilac|mauve|orchid|periwinkle|\bpuce\b|purplish|purpure|red violet|violescent)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagv $1, purple
if (matchre ("%tap", "((\bblack\b|\bgr[ae]y\b|white|argent|arsenic|\bashen\b|beige|camouflage|cinereous|colorless|\bcream\b|\bebon\b|eggshell|eisen|feldgrau|glaucous|pellucid|\bsable\b|taupe\b)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagn $1, grey
if (matchre ("%tap", "((rainbow|iridescent|pavonine|polychromatic)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var ctagm $1, rainbow
if (matchre ("%tap", "((\w+)-\bred\b)")) then var ctagr $1, $2, red
if (matchre ("%tap", "((\w+)-\borange\b)")) then var ctago $1, $2, orange
if (matchre ("%tap", "((\w+)-\bbrown\b)")) then var ctagt $1, $2, brown
if (matchre ("%tap", "((\w+)-\byellow\b)")) then var $1, $2, yellow
if (matchre ("%tap", "((\w+)-\bgreen\b)")) then var ctagg $1, $2, green
if (matchre ("%tap", "((\w+)-\bblue\b)")) then var ctagb $1, $2, blue
if (matchre ("%tap", "((\w+)-\b(purple|violet)\b)")) then var ctagv $1, $2, purple
if (matchre ("%tap", "((\w+)-\bblack\b)")) then var ctagn $1, $2, black
if (matchre ("%tap", "((\w+)-\bwhite\b)")) then var ctagn $1, $2, white
if (matchre ("%tap", "((\w+)-\bgr[ae]y\b)")) then var ctagn $1, $2, grey
if (matchre ("%tap", "(bronze|\bcoal\b|(?<!verdigris )\bcopper\b|(?<!(black|blighted|blue|crown|Elven|fool's|green|grey|pink|purple|red|rose|white|yellow) |cloth[- ]of[- ])\bgold\b|\blead\b|platinum|(?<!Elven |cloth[- ]of[- ])\bsilver\b)")) then var amtagm $1
if (matchre ("%tap", "(\bermine\b|feather|\bfur\b|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)gossamer|(?<!(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|Gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velaka|water|windstorm|zerarin) ?)\blace\b)")) then var amtagf $1
if (matchre ("%tap", "(alabaster|(?<!dragonfire )\bamber\b|(?<!(lightning|violet'?s heart) )amethyst|aquamarine|\bbones?\b|carnelian|(?<!(bearclaw|glacier|Ilithi|nature'?s canopy|ocean'?s deep|shadow|spring|Taisidon|winter) )emerald|heliotrope|ivory|(?<!bleeding heart )\bjades?\b|\bonyxe?s?\b|(?<!(blood|cloud|conquerer'?s|dragon'?s (blood|eye|heart)|gemfire|imperial|midnight|moonspun|serpent'?s heart|smoke|star|starlight|Teiro'?s hate) )\brub(y|ies)\b|(?<!(crimson|dalaeji black|dragon'?s scale|Drogor'?s Wrath|elamiri|eluned'?s tear|haze|Idon'?s|imperial|lotus flower|mermaid'?s tear|Musparan gold|phantom|rainbow|serpent'?s head|shrike'?s eye|star|summer'?s heart|tempest|twilight|viper'?s eye|white Zoluren) )sapphire|\bslate\b|turquoise)")) then var amtagg $1
if (matchre ("%tap", "(\bapple\b|\bash\b|\bcherry\b|chestnut|\bebony\b|\belder\b|laurel|mahogany)")) then var amtagw $1
if (matchre ("%tap", "(\belements?\b|\bwind\b)")) then var astage $1
if (matchre ("%tap", "(bison|\bboars?\b|\bbucks?\b|cardinal|\bcocks?\b|crocodile|\bdeers?\b|\bdoe\b|ermine|flies|\bfly\b|leech|mammoth|oyster|\brams?\b|salmon|shark|sheep|\bsnakes?\b|\btrolls?\b|\bwasps?\b|\bwings?\b|yeehar)")) then var astaga $1
if (matchre ("%tap", "(\bblooms?\b|\bblossoms?\b|\bbuds?\b|\bflorets?\b|\bflowers?\b|\bherbs?\b|\bvines?\b)")) then var astagh $1
if (matchre ("%tap", "(\bdeserts?\b|forest(?![- ]green)|\boceans?\b|\bseas?\b|\bstars?\b)")) then var astagl $1
if (matchre ("%tap", "((bronze|chestnut|copper)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var actagt $1
if (matchre ("%tap", "(red gold(?![- ](colored|highlighted|hued|tinted|toned)))")) then var actagy $1
if (matchre ("%tap", "((\bplum\b|thistle|\bviolet\b)(?![- ](colored|highlighted|hued|tinted|toned)))")) then var actagv $1
if (matchre ("%mtagm", "(black|blue|crown|green|grey|pink|purple|red|rose|white|yellow) gold")) then var mtagm $1 gold, gold
if (matchre ("%mtagg", "(?i:(orchid|viperscale)) alexandrite")) then var mtagg $1 alexandrite, alexandrite
if (matchre ("%mtagg", "(?i:(lightning|violet'?s heart)) amethyst")) then var mtagg $1 amethyst, amethyst
if (matchre ("%mtagg", "(?i:(black|blue|champagne|Dalterein|huntress|lilac|midnight|molten-core|night|ocean'?s heart|pink|scorpion|smoky|white)) diamond")) then var mtagg $1 diamond, diamond
if (matchre ("%mtagg", "(?i:(bearclaw|glacier|Ilithi|nature'?s canopy|ocean'?s deep|shadow|spring|Taisidon|winter)) emerald")) then var mtagg $1 emerald, emerald
if (matchre ("%mtagg", "(?i:(bloodmist|forest'?s heart|nimbus)) garnet")) then var mtagg $1 garnet, garnet
if (matchre ("%mtagg", "(?i:(autumn|ocean|spiderweb|wild horse)) jasper")) then var mtagg $1 jasper, jasper
if (matchre ("%mtagg", "(?i:(Hekemhhg|lapis)) lazuli")) then var mtagg $1 lazuli, lazuli
if (matchre ("%mtagg", "(?i:(aurora|cherry|draconic|dragon fire|firesilk|flame|frost|frostfire|frostflare|nightfire|sky|snow|sunset|water)) opal")) then var mtagg $1 opal, opal
if (matchre ("%mtagg", "(?i:(dafora|damaryn|damilyo|fang|fire|geshi|idopun|jackal'?s heart|moon|pitch|taisidonian|talan)) pearl")) then var mtagg $1 pearl, pearl
if (matchre ("%mtagg", "(?i:(blood|cloud|conquerer'?s|dragon'?s (blood|eye|heart)|gemfire|imperial|midnight|moonspun|serpent'?s heart|smoke|star|starlight|Teiro'?s hate)) rub(y|ies)")) then var mtagg $1 ruby, ruby
if (matchre ("%mtagg", "(?i:(crimson|dalaeji black|dragon'?s scale|elamiri|eluned'?s tear|haze|Idon'?s|imperial|lotus flower|mermaid'?s tear|Musparan gold|phantom|rainbow|serpent'?s head|shrike'?s eye|star|summer'?s heart|tempest|twilight|viper'?s eye|white Zoluren)) sapphire")) then var mtagg $1 sapphire, sapphire
if (matchre ("%mtagg", "(?i:(fire maiden|imperial|lion'?s heart|mystic|royal Zoluren|saffron|smoky|starfire|stormfire|xibar)) topaz")) then var mtagg $1 topaz, topaz
if (matchre ("%mtagg", "(?i:(aurora|vela'?tohr)) tourmaline")) then var mtagg $1 tourmaline, tourmaline
if (matchre ("%mtagf", "(?i:(blood|bluefire|dragonfire|duchess|Elothean|Elven|fae woven|fire|gemfire|ice|lava|lipka|marble|moon|Musparan|night|nightstalker|night[rw]eaver|oceanmist|seafoam|shade|shadow|snowflake|spider|starlight|steel|storm|sunkissed|Velakan?|water|windstorm|zerarin)) ?(brocade|chiffon|cotton|gossamer|lace|linen|samite|satin|silk|snowlace|tulle|velvet|wool)")) then var mtagf %mtagf, $2
if %mtagm = Damascus steel then var mtagg Damascus steel, steel
if %mtagm = Elven silver then var mtagg Elven silver, silver
if %mtagm = moonsilver then var mtagg moonsilver, silver
if %mtagm = silver-gilt then var mtagg silver-gilt, silver, gold
if %mtagm = sungold then var mtagg sungold, gold
if %mtagm = windsteel then var mtagg windsteel, steel
if %mtagg = chalcedon(y|ies) then var mtagg chalcedony
if %mtagg = rubies then var mtagg ruby
if %mtagg = soulstone then var mtagg DELETE
if %ctagr = pink, red then var ctagr pink
if %ctagr = cerise, red then var ctagr cerise, pink
if %ctagr = magenta, red then var ctagr magenta, pink
if %ctagr = rosy, red then var ctagr rosy, pink
if %ctagv = fuchsia, purple then var ctagv fuchsia, pink
if %ctagv = puce, purple then var ctagv puce, pink
if %ctagn = camouflage, grey then var ctagn camouflage, brown
if %ctagn = black, grey then var ctagn black
if %ctagn = ebon, grey then var ctagn ebon, black
if %ctagn = sable, grey then var ctagn sable, black
if %ctagn = white, grey then var ctagn white
if %ctagn = alabaster, grey then var ctagn alabaster, white
if %ctagn = beige, grey then var ctagn beige, white
if %ctagn = colorless, grey then var ctagn colorless, white
if %ctagn = cream, grey then var ctagn cream, white
if %ctagn = eggshell, grey then var ctagn eggshell, white
if %ctagn = ivory, grey then var ctagn ivory, white
if %ctagr = red, red then var ctagr red
if %ctago = orange, orange then var ctago orange
if %ctagt = brown, brown then var ctagt brown
if %ctagy = yellow, yellow then var ctagy yellow
if %ctagg = green, green then var ctagg green
if %ctagb = blue, blue then var ctagb blue
if %ctagv = purple, purple then var ctagv purple
if %ctagn = grey, grey then var ctagn grey
if %ctagn = black, black then var ctagn black
if %ctagn = white, white then var ctagn white
if %ctagm = rainbow, rainbow then var ctagm rainbow
return

Specialset:
if (matchre ("%tap", "(cambrinth)")) then var special cambrinth
if (matchre ("%tap", "(gaethzen)")) then var special gaethzen
if (matchre ("%tap", "((belt|carving|skinning) knife|flight glue|hide scraper|wood shaper)")) then var special creation
if (matchre ("%tap", "(dracon crystal|glaysker flower|grain alcohol|mixing stick|seolarn weed|tincture jar|tukai stone|unlonchai bucket|Wayerd pyramid)")) then var special alchemy
if (matchre ("%tap", "((percussion|string|wind) instrument)")) then var special $1 instrument
if (matchre ("%tap", "(anatomy chart)")) then var special anatomy chart, empath style
if (matchre ("%tap", "(curry comb|hoof pick|lead rope|mane and tail brush|saddle blanket|saddle pad|stiff brush)")) then var special tack
if (matchre ("%tap", "(\btoy\b)")) then var special toy
if (matchre ("%tap", "(Barbarian|chakrel|warpaint)")) then var special barbarian style
if (matchre ("%tap", "(Bard|(Blood|Fate|Soul|Spirit) Knot|Bardic|neithrel)")) then var special bard style
if (matchre ("%tap", "(Cleric|acolyte|clergy|clerical|devotional|ecclesiastic|Inquisition|Inquisitor|libation|minister|monastic|\bmonk\b|\bnun\b|\bpastors?\b|prayer|preach|priest|pulpit|sham[ae]n|vestment)")) then var special cleric style
if (matchre ("%tap", "(anloral|pilgrim's badge)")) then var special cleric style, paladin style
if (matchre ("%tap", "(Empath|apothecaries|apothecary|doctor|empathic|foraging|healer|healing|medic|medicine|nurse|physician|surgeon)")) then var special empath style
if (matchre ("%tap", "(Moon Mage|Arid Steppe|astrologer|astrology|Celestial Compact|constellation|Crystal Hand|divination|Fortune's Path|G'nar Pethian|Heritage House|lunar|planet|Progeny|sigilbook|telescope|Tezirah|Tokka)")) then var special moon mage style
if (matchre ("%tap", "(Necromancer|necromancy|necromantic|Philosophers? of the Knife)")) then var special necromancer style
if (matchre ("%tap", "(Paladin|soulstone)")) then var special paladin style
if (matchre ("%tap", "(Ranger|trail map)")) then var special ranger style
if (matchre ("%tap", "(Thief|\bbrigands?\b|burglar|highwaym[ae]n|pirate|robber|smuggler|Thieves)")) then var special thief style
if (matchre ("%tap", "(Trader|auction|bazaar|caravan|contract|merchant)")) then var special trader style
if (matchre ("%tap", "(Warrior Mage|\ba?ether\b|elemental|talisman)")) then var special warrior mage style
if (matchre ("%tap", "(\bDwarfs?\b|Dwarve[ns]|Haakish|\bkwarf\b|\bvalnik\b)")) then var special dwarf style
if (matchre ("%tap", "(\bElf\b|\bElven\b (?!(lace|silk|silver))|\bElves\b|\bElvish\b|Ilithic|sana'?ati dyaus)")) then var special elf style
if (matchre ("%tap", "(Elothean (?!(lace|silk))|chol[ai] top|Gerenshuge|shesegri)")) then var special elothean style
if (matchre ("%tap", "(Gnome|Gizzbolf|Gnomic|Gnomish|Krigglin|Spangklud)")) then var special gnome style
if (matchre ("%tap", "(Gor'?Tog|\bhirdu\b|scalp wax|togball|Toggish|Toggler)")) then var special gortog style
if (matchre ("%tap", "(Halfling|\bOlvi\b|tart pouch)")) then var special halfling style
if (matchre ("%tap", "(Human|Gamgweth)")) then var special human style
if (matchre ("%tap", "(Kaldar|Aliesa|Aniek|Eimeuz|Gorbesh|Merion|Misiumos|Orisas|Sieben|Sraxaec|Tieheq|Xosiurion)")) then var special kaldar style
if (matchre ("%tap", "(Prydaen|claw guards|Demrris|\bEu\b|Faiyka|Iladza|Shariza|Soul Knot|Tenemlor)")) then var special prydaen style
if (matchre ("%tap", "(Rakash|\bafis\b|Coshivi|Enelne|Moonskin|Mrod|\bturnistil\b|\bvarna\b)")) then var special rakash style
if (matchre ("%tap", "(S'?[Kk]ra|ama'?hhrsk|\bArna\b|Eth'?ral'?khh|finger claw|Hav'?roth|Indakar|Irhhnth|\bMalk\b|mehath|Mhhg|\bmus\b|Nehgris|Peri'?el|q'?zhalata|Rasha|ru'?at|scale polish|sharmiit'?mhhg|Smolg|Sraan|\bT'?Lar\b|tail drape|Ushnish|Venda)")) then var special skra mur style
if (matchre ("$righthandnoun", "(ashcloak|mysanda)")) then var special magic
if (matchre ("$righthandnoun", "(arrowhead|bobbin|bodkin|burin|flights|instructions|keyblank|mold|pattern|primer|shears|thread)")) then var special creation
if (matchre ("$righthandnoun", "(cauldron|mortar|pestle|\bstove\b|teapot|\bvial\b|\bwater\b)")) then var special alchemy
if (matchre ("$righthandnoun", "(candle|lamp|lantern|torch)")) then var special gives light
if (matchre ("$righthandnoun", "(bridle|caparison|halter|saddle)")) then var special tack
if (matchre ("$righthandnoun", "(doll|marionette|puppet|toy)")) then var special toy
if (matchre ("$righthandnoun", "(warhorn)")) then var special barbarian style, bard style
if (matchre ("$righthandnoun", "(cassock|censer)")) then var special cleric style
if (matchre ("$righthandnoun", "(sigilbook|starchart|telescope)")) then var special moon mage style
if (matchre ("$righthandnoun", "(feedbag)")) then var special trader style
if (matchre ("$righthandnoun", "(ashcloak)")) then var special warrior mage style
if (matchre ("$righthandnoun", "(bulhawf)")) then var special dwarf style
if (matchre ("$righthandnoun", "(\barca\b|\bbalac\b|catils|\bcelya\b|coinec|gelnutre|\bgerri\b|\bguti\b|\bhac\b|ilalish|iltesh|jiranoci|karambit|liscis|\bmahai\b|oinurte|\bpalta\b|\btago\b|takbahn|\btelo\b)")) then var special elf style
if (matchre ("$righthandnoun", "(cheongsam|\bchol[ai]\b|kimono|nijare)")) then var special elothean style
if (matchre ("$righthandnoun", "(\barek\b|domisaha|kisti|lusks|muhenta|ruven|sochi)")) then var special kaldar style
if (matchre ("$righthandnoun", "(charovras|chmir|mra'?sin|nguru|pr'?chmir|Pr'?mra'?sin|Pr'?ysin|ra'?sarrak|ramkie|sarrak|sharpener|sonajero|vakoti|ysin)")) then var special prydaen style
if (matchre ("$righthandnoun", "(afelsn|\bafis\b|\bava\b|cirvi|cuska|dzelt|dzelteno|feleka|forfra|fratvarit|josta|juans|\bkaft\b|kodur|krekls|laufisana|nauda|\bnuja\b|\bodaj\b|rantija|relna|rugursora|safos|sarkana|\bsega\b|\bsis\b|skefne|sudrava|turinstil|valta|variog|varna|vikses|vluze|vruna|\bzala\b|zelts|zila|zobens|zovens)")) then var special rakash style
if (matchre ("$righthandnoun", "(\ba'?slo\b|aggahhpel|\bashu\b|\bata\b|gamantang|grah'?uaro|hhr'?ata|hhr'?ibu|hhr'?tami|kudalata|\blata\b|lata'?oloh|mahil|nehdalata|nehlata|pahapo|pejek|pel'?hhsmur|Peri'?el|peyvu|pilonu|por'?nidrel|q'?zhalata|rasha'?hhsograth|saran'?pon'?hhs|sharmiit'?mhhg|shh'?oi'?ata|shh'?oi'?lata|sur'?nidrel|tei'?oloh'?ata|tei'?oloh'?lata|\buaro\b|uaro'?s'?sugi|uenlata|uku'?uan|uku'?uanstaho|venda)")) then var special skra mur style
return

Itypeset:
if (matchre ("%tap", "((awgravet|bar|bastard|battle|belaying|boarding|carving|dire|double|double-headed|duraka|elbow|flanged|footman's|giant|half-handled|hand|heavy|horseman's|hunting|hurlable|hurling|igorat|ilglaiks|imperial|k'trinni|knee|leaf blade|light|lochaber|marauder|military|mus|periperiu|pike|pole|ridged|robe|round|short|skinning|spiked|splitting|sterak|thick-bladed|thin-bladed|throwing|thrusting|twin-point|two-handed|two-headed|two-pronged|vilks|war|warring) (abassi|adze|akabo|allarh|arzfilt|ava|axe|back-sword|ball and chain|bardiche|baselard|blade|bludgeon|boko|bola|boomerang|briquet|broadaxe|broadsword|bulhawf|cane|chain|cinqueda|claws|claymore|club|condottiere|coresca|cosh|cudgel|curlade|cuska|cutlass|dagasse|dagger|dao|dart|falcata|falchion|fan|fauchard|flail|flamberge|fork|garz|gauntlet|gavel|gladius|glaive|greataxe|greathammer|greatsword|guisarme|halberd|hammer|hanger|hara|hatchet|hawkbill|hhr'ata|hhr'tami|hunthsleg|iltesh|jambiya|javelin|karambit|kasai|kaskara|katar|khuj|knife|knuckles|kodur|komno|koummya|kris|kudalata|kythe|lance|longsword|mace|mallet|mambeli|marlingspike|mattock|maul|misericorde|morning star|namkomba|nehdelata|nehlata|ngalio|nightstick|nimsha|oben|parang|partisan|pasabas|pike|pin|poignard|prod|pugio|quarterstaff|ranseur|rapier|recade|riste|sabre|sashqa|scepter|schiavona|scimitar|scythe|sha-tai|shh'oi'ata|shotel|skefne|sledgehammer|spatha|spear|spetum|spike|spikes|staff|stiletto|sunblade|sword|takouba|telek|tzece|ukabi|war hammer|zubke))")) then var itype $1
if (matchre ("%tap", "((assassin's|battle|competition|competition-balanced|dako'gi|drop-trigger|flat|flight|forester's|hirdu|horseman's|hunter's|pirate's|plains|recurved?|reflex|repeater|repeating|riot|s'rnhhl|saddle|savannah|siege|sniper's|steppe|tei'oloh|war) (arbalest|bow|chunenguti|composite bow|crossbow|hhr'ibu|jranoki|long ?bow|mahil|short ?bow|slurbow|stonebow|taisgwelduan|uku'uanstaho)|staff sling)")) then var itype $1
if (matchre ("%tap", "((battle|ceremonial|circular|crescent|curved|gladiator's|heater|jousting|kite|medium|ordinary|oval|pageant|rectangular|riot|round|rounded|shuri-kota|siege|skirmisher's|target|tower|triangular|valnik|wall|war|warrior's|wickerwork) (aegis|buckler|heater|pavise|scutum|shield|sipar|targe))")) then var itype $1
if (matchre ("%tap", "((brigandine|chain|closed|cloth|coarse|dome|field|full|great|half|heavy|insulated|lamellar|leather|light|mail|padded|plate|quilted|ring|rugged|scale|thick|visored) (aventail|backplate|balaclava|barbute|bascinet|breastplate|cap|coat|cowl|cuirass|fauld|gauntlets|gloves|greaves|hauberk|helm|hood|jerkin|leathers|lorica|mantle|mask|morion|pants|plate|robe|sallet|shirt|sleeves|tabard|tailcoat|tasset|thorakes|vambraces|vest))")) then var itype $1
if (matchre ("%tap", "((engagement|thumb|toe|wedding) (band|ring|tailband))")) then var itype $1
return



Typeset:
if (matchre ("%tap", "(cambrinth)")) then var typemagic cambrinth
if (matchre ("%tap", "(gaethzen)")) then var typemagic gaethzen
if (matchre ("%tap", "((belt|carving|skinning) knife|flight glue|hide scraper|wood shaper)")) then var typefunction creation
if (matchre ("%tap", "(dracon crystal|glaysker flower|grain alcohol|mixing stick|seolarn weed|tincture jar|tukai stone|unlonchai bucket|Wayerd pyramid)")) then var typefunction alchemy
if (matchre ("%tap", "((percussion|string|wind) instrument)")) then var typefunction $1 instrument
if (matchre ("%tap", "(anatomy chart)")) then var typefunction anatomy chart, empath style
if (matchre ("%tap", "(curry comb|hoof pick|lead rope|mane and tail brush|saddle blanket|saddle pad|stiff brush)")) then var typefunction tack
if (matchre ("%tap", "(\btoy\b)")) then var typefunction toy
if (matchre ("%tap", "(Barbarian|chakrel|warpaint)")) then var typeguild barbarian style
if (matchre ("%tap", "(Bard|(Blood|Fate|Soul|Spirit) Knot|Bardic|neithrel)")) then var typeguild bard style
if (matchre ("%tap", "(Cleric|acolyte|clergy|clerical|devotional|ecclesiastic|Inquisition|Inquisitor|libation|minister|monastic|\bmonk\b|\bnun\b|\bpastors?\b|prayer|preach|priest|pulpit|sham[ae]n|vestment)")) then var typeguild cleric style
if (matchre ("%tap", "(anloral|pilgrim's badge)")) then var typeguild cleric style, paladin style
if (matchre ("%tap", "(Empath|apothecaries|apothecary|doctor|empathic|foraging|healer|healing|medic|medicine|nurse|physician|surgeon)")) then var typeguild empath style
if (matchre ("%tap", "(Moon Mage|Arid Steppe|astrologer|astrology|Celestial Compact|constellation|Crystal Hand|divination|Fortune's Path|G'nar Pethian|Heritage House|lunar|planet|Progeny|sigilbook|telescope|Tezirah|Tokka)")) then var typeguild moon mage style
if (matchre ("%tap", "(Necromancer|necromancy|necromantic|Philosophers? of the Knife)")) then var typeguild necromancer style
if (matchre ("%tap", "(Paladin|soulstone)")) then var typeguild paladin style
if (matchre ("%tap", "(Ranger|trail map)")) then var typeguild ranger style
if (matchre ("%tap", "(Thief|\bbrigands?\b|burglar|highwaym[ae]n|pirate|robber|smuggler|Thieves)")) then var typeguild thief style
if (matchre ("%tap", "(Trader|auction|bazaar|caravan|contract|merchant)")) then var typeguild trader style
if (matchre ("%tap", "(Warrior Mage|\ba?ether\b|elemental|talisman)")) then var typeguild warrior mage style
if (matchre ("%tap", "(\bDwarfs?\b|Dwarve[ns]|Haakish|\bkwarf\b|\bvalnik\b)")) then var typerace dwarf style
if (matchre ("%tap", "(\bElf\b|\bElven\b (?!(lace|silk|silver))|\bElves\b|\bElvish\b|Ilithic|sana'?ati dyaus)")) then var typerace elf style
if (matchre ("%tap", "(Elothean (?!(lace|silk))|chol[ai] top|Gerenshuge|shesegri)")) then var typerace elothean style
if (matchre ("%tap", "(Gnome|Gizzbolf|Gnomic|Gnomish|Krigglin|Spangklud)")) then var typerace gnome style
if (matchre ("%tap", "(Gor'?Tog|\bhirdu\b|scalp wax|togball|Toggish|Toggler)")) then var typerace gortog style
if (matchre ("%tap", "(Halfling|\bOlvi\b|tart pouch)")) then var typerace halfling style
if (matchre ("%tap", "(Human|Gamgweth)")) then var typerace human style
if (matchre ("%tap", "(Kaldar|Aliesa|Aniek|Eimeuz|Gorbesh|Merion|Misiumos|Orisas|Sieben|Sraxaec|Tieheq|Xosiurion)")) then var typerace kaldar style
if (matchre ("%tap", "(Prydaen|claw guards|Demrris|\bEu\b|Faiyka|Iladza|Shariza|Soul Knot|Tenemlor)")) then var typerace prydaen style
if (matchre ("%tap", "(Rakash|\bafis\b|Coshivi|Enelne|Moonskin|Mrod|\bturnistil\b|\bvarna\b)")) then var typerace rakash style
if (matchre ("%tap", "(S'?[Kk]ra|ama'?hhrsk|\bArna\b|Eth'?ral'?khh|finger claw|Hav'?roth|Indakar|Irhhnth|\bMalk\b|mehath|Mhhg|\bmus\b|Nehgris|Peri'?el|q'?zhalata|Rasha|ru'?at|scale polish|sharmiit'?mhhg|Smolg|Sraan|\bT'?Lar\b|tail drape|Ushnish|Venda)")) then var typerace skra mur style
if (matchre ("$righthandnoun", "(\balb\b|apron|\barek\b|ashcloak|balac|baladrana|ballgown|bandeau|\bbelt\b|beret|blazer|blouse|bodice|bodysuit|bonnet|boots|breeches|britches|brogans|bustier|caftan|\bcap\b|\bcape\b|cassock|catils|chemise|cheongsam|chmir|chola|choli|cloak|cloche|clogs|\bcoat\b|coinec|corset|cummerbund|deerstalker|derby|dirndl|domisaha|doublet|drape|dress|eyepatch|fabric|fedora|fillet|frock|galoshes|gamantang|garter|gerri|gloves|\bgown\b|\bhac\b|\bhat\b|headband|\bhood\b|\bhose\b|ilalish|jacket|jerkin|jodhpurs|josta|khandur|\bkilt\b|kimono|kirtle|kisti|knickers|krekls|laufisana|leggings|leine|loafers|loincloth|longcoat|lusks|mantle|\bmask\b|mittens|mocc?asins|mra'?sin|\bmuff\b|muffler|nauda|\bodaj\b|overalls|\bpall\b|pantaloons|pants|pel'?hhsmur|\bpelt\b|poncho|pr'?chmir|Pr'?mra'?sin|Pr'?ysin|pumps|ra'?sarrak|rantija|\brobes?\b|\bruff\b|ruven|safos|safros|sandals|\bsari\b|sarong|sarrak|\bsash\b|scarf|shawl|shift|shirt|shoes|shroud|skirt|skullcap|slacks|slippers|smock|snood|sochi|socks|spats|stockings|stole|\bsuit\b|sundress|surcoat|suspenders|sweater|tabard|tailcoat|takbahn|\btam\b|tights|\btoga\b|trews|trousers|tunic|turban|uaro'?s'?sugi|vakoti|\bveil\b|\bvest\b|vestments?|vikses|vluze|waistcoat|wimple|\bwings?\b|\bwrap\b)")) then var typefunction clothing
if (matchre ("$righthandnoun", "(\bafis\b|aggahhpel|amulet|anklet|armband|armlet|badge|\bband\b|bangle|barrette|\bbead\b|boutonniere|bracelet|bracer|breastpin|brooch|buckle|button|\bchains?\b|charm|choker|circlet|clasp|\bclaw\b|collar|\bcord\b|crown|\bcuff\b|diadem|earcuff|earring|feather|ferroniere|fetish|garland|haircomb|hairnet|hairpin|hairsticks|handflower|hip-chain|jewels|\blei\b|locket|medal|medallion|muhenta|necklace|pearls|pendant|periapt|peyvu|pilonu|\bpin\b|por'?nidrel|rasha'?hhsograth|ribbon|\bring\b|sharmiit'?mhhg|\bstud\b|sur'?nidrel|tailband|thighband|torque|trinket|turinstil|varna|venda|wreath|wristband|wristcuff|wristlet)")) then var typefunction jewelry
if (matchre ("$righthandnoun", "(ashcloak|mysanda)")) then var typemagic magic
if (matchre ("$righthandnoun", "(arrowhead|bobbin|bodkin|burin|flights|instructions|keyblank|mold|pattern|primer|shears|thread)")) then var typefunction creation
if (matchre ("$righthandnoun", "(cauldron|mortar|pestle|\bstove\b|teapot|\bvial\b|\bwater\b)")) then var typefunction alchemy
if (matchre ("$righthandnoun", "(bodhran|bones|castanets|cymbals|damaru|darje|doumbec|drum|frottoir|gansa-gambang|guiro|naqqara|sonajero|spoons|tabla|tambourine|tapani|zills)")) then var typefunction percussion instrument
if (matchre ("$righthandnoun", "(banjo|bow|cistre|cittern|dulcimer|faenellica|fiddle|gittern|guti'?adar|harp|khurmary|kithara|lute|lyre|mandolin|nehpar'?i|psaltery|ramkie|rebec|sarangi|sitar|sra'?aja?hh|strings|tambura|\bviol\b|violin|zither)")) then var typefunction string instrument
if (matchre ("$righthandnoun", "(bagpipes|bassoon|cane flute|chalumeaux|clarin|cornemuse|cornet|didjeridu|fife|flute|gemshorn|hichiriki|horn|minjayrah|mirliton|mitbiq|nguru|oboe|ocarina|pan-pipes|physalis|piccolo|recorder|sackbut|serpent|shakuhachi|shawm|shintu|syrinx|txistu|whistle|yarghul|zurna)")) then var typefunction wind instrument
if (matchre ("$righthandnoun", "(candle|lamp|lantern|torch)")) then var typefunction gives light
if (matchre ("$righthandnoun", "(bridle|caparison|halter|saddle)")) then var typefunction tack
if (matchre ("$righthandnoun", "(doll|marionette|puppet|toy)")) then var typefunction toy
if (matchre ("$righthandnoun", "(warhorn)")) then var typeguild barbarian style, bard style
if (matchre ("$righthandnoun", "(cassock|censer)")) then var typeguild cleric style
if (matchre ("$righthandnoun", "(sigilbook|starchart|telescope)")) then var typeguild moon mage style
if (matchre ("$righthandnoun", "(feedbag)")) then var typeguild trader style
if (matchre ("$righthandnoun", "(ashcloak)")) then var typeguild warrior mage style
if (matchre ("$righthandnoun", "(bulhawf)")) then var typerace dwarf style
if (matchre ("$righthandnoun", "(\barca\b|balac|catils|celya|coinec|gelnutre|gerri|\bguti\b|\bhac\b|ilalish|iltesh|jiranoci|karambit|liscis|mahai|oinurte|palta|\btago\b|takbahn|\btelo\b)")) then var typerace elf style
if (matchre ("$righthandnoun", "(cheongsam|\bchol[ai]\b|kimono|nijare)")) then var typerace elothean style
if (matchre ("$righthandnoun", "(\barek\b|domisaha|kisti|lusks|muhenta|ruven|sochi)")) then var typerace kaldar style
if (matchre ("$righthandnoun", "(charovras|chmir|mra'?sin|nguru|pr'?chmir|Pr'?mra'?sin|Pr'?ysin|ra'?sarrak|ramkie|sarrak|sharpener|sonajero|vakoti|ysin)")) then var typerace prydaen style
if (matchre ("$righthandnoun", "(afelsn|\bafis\b|\bava\b|cirvi|cuska|dzelt|dzelteno|feleka|forfra|fratvarit|josta|juans|\bkaft\b|kodur|krekls|laufisana|nauda|\bnuja\b|\bodaj\b|rantija|relna|rugursora|safos|sarkana|\bsega\b|\bsis\b|skefne|sudrava|turinstil|valta|variog|varna|vikses|vluze|vruna|\bzala\b|zelts|zila|zobens|zovens)")) then var typerace rakash style
if (matchre ("$righthandnoun", "(\ba'?slo\b|aggahhpel|\bashu\b|\bata\b|gamantang|grah'?uaro|hhr'?ata|hhr'?ibu|hhr'?tami|kudalata|\blata\b|lata'?oloh|mahil|nehdalata|nehlata|pahapo|pejek|pel'?hhsmur|Peri'?el|peyvu|pilonu|por'?nidrel|q'?zhalata|rasha'?hhsograth|saran'?pon'?hhs|sharmiit'?mhhg|shh'?oi'?ata|shh'?oi'?lata|sur'?nidrel|tei'?oloh'?ata|tei'?oloh'?lata|\buaro\b|uaro'?s'?sugi|uenlata|uku'?uan|uku'?uanstaho|venda)")) then var typerace skra mur style
if %typefunction = clothing && %wearloc = DELETE then var wearloc -
if %typefunction = jewelry && %wearloc = DELETE then var wearloc -
if %typecon = container && %wearloc = DELETE then var wearloc -
return

CommaAppcost:
var commanumber %appcostk
eval length len(%commanumber)
var appcost %commanumber
if %length < 4 then goto return
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var appcost %temp
topapp:
if %length < 3 then goto lastapp
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var appcost %temp,%appcost
goto topapp
lastapp:
if %length > 0 then
{
eval temp substr(%commanumber, 0, %length)
var appcost %temp,%appcost
}
goto return

CommaCost:
var commanumber %costi
eval length len(%commanumber)
var cost %commanumber
if %length < 4 then goto return
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var cost %temp
topcost:
if %length < 3 then goto lastcost
evalmath length %length - 3
eval temp substr(%commanumber, %length, 3)
var cost %temp,%cost
goto topcost
lastcost:
if %length > 0 then
{
eval temp substr(%commanumber, 0, %length)
var cost %temp,%cost
}
goto return

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

verbcheck:
send look my $righthandnoun
pause .5
send read my $righthandnoun
pause .5
send study my $righthandnoun
wait
pause .5
send analyze my $righthandnoun
wait
pause .5
send focus my $righthandnoun
wait
pause .5
send recall my $righthandnoun
wait
pause .5

end:
put #class racial on
put #play ScriptEnd
put #flash
put #parse SCRIPT DONE
exit

enderror1:
wait
pause .5
echo
echo *** This item is crafted. Please do not make an item page for it on Elanthipedia. ***
echo
put #class racial on
put #play Error
put #flash
put #parse SCRIPT DONE
exit

enderror2:
wait
pause .5
echo
echo *** This item is altered. Please do not make an item page for it on Elanthipedia. ***
echo
put #class racial on
put #play Error
put #flash
put #parse SCRIPT DONE
pause .5
exit