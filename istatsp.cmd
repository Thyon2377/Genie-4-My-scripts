########################################################
##STAT QUALITY WEIGHTS
##Edit this section if you want to change the weights that the quality formulas assign to each stat.
##sumpd: physical damage (puncture + slice + impact)
##sumed: elemental damage (fire + cold + electric)
##foi: force of impact (determines likelihood of stunning, unbalancing, and knocking back)
##balance: weapon balance (determines how well a weapon takes advantage of your agility when attacking and parrying)
##power: weapon power/suitability (determines how well a weapon takes advantage of your strength when attacking)
##smin: shield's minimum or "basic" defense (the minimum protection a shield offers, regardless of skill)
##smax: shield's maximum or "full" defense (the maximum protection a shield can offer if you have sufficient shield skill)
##shdhindrance: shield's maneuvering and stealth hindrance (All shields impose equal maneuvering and stealth hindrance, which may be reduced with skill.)
##sumpro: armor's total protection (reduces incoming damage by a flat amount -- best for light hits and requires more armor skill)
##sumabs: armor's total absorption (reduces incoming damage by a static percentage -- best for heavy hits and requires less armor skill)
##sumpdef: armor's total physical defense (protection + absorption)
##sumedef: armor's total elemental defense (protection + absorption)
##mhindrance: armor's maneuvering hindrance (determines penalties to defenses, which may be reduced with skill.)
##shindrance: armor's stealth hindrance (determines penalties to stealth, which may be reduced with skill.)
##construction: item's construction (determines how easily damaged an item is and therefore how often it will need to be repaired)
##weight: the item's weight in stones
##Weapon Quality Formula: %sumpd_weight*%sumpd + %sumed_weight*%sumed + %foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction + %rangefactor
##Shield Quality Formula: %smin_weight*%smin + %smax_weight*%smax + %construction_weight*%construction - %shdhindrance_weight*%shdhindrance - %sizefactor
##Armor Quality Formula: %sumpro_weight*%sumpro + %sumabs_weight*%sumabs + %sumpdef_weight*%sumpdef + %sumedef_weight*%sumedef + %construction_weight*%construction - %mhindrance_weight*%mhindrance - %shindrance_weight*%shindrance
var sumpd_weight 2
var sumed_weight 2
var foi_weight 1
var balance_weight 1.5
var power_weight 1.25
var smin_weight 1.5
var smax_weight 2
var shdhindrance_weight 1
var sumpro_weight 2
var sumabs_weight 2.5
var sumpdef_weight 3
var sumedef_weight 1
var mhindrance_weight 1.5
var shindrance_weight .5
var construction_weight .25
var weight_weight .5
##DEFAULT VALUES
##var sumpd_weight 2
##var sumed_weight 2
##var foi_weight 1
##var balance_weight 1.5
##var power_weight 1.25
##var smin_weight 1.5
##var smax_weight 2
##var shdhindrance_weight 1
##var sumpro_weight 2
##var sumabs_weight 2.5
##var sumpdef_weight 3
##var sumedef_weight 1
##var mhindrance_weight 1.5
##var shindrance_weight .5
##var construction_weight .25
##var weight_weight .5
########################################################
put #class joust off
put #class racial off
var short $lefthand
var noun $lefthandnoun
var short $righthand
var noun $righthandnoun
var appcostl 0
var appcostd 0
var source %1

action setvariable sourcetype 07-crafting when ^You .+ a quality of \d+, placing it at .+ on the official Trader's Scale\.$|^You.+the \S+ in the .+ is of .+ quality\.$|You see the initials? \"(.+)\" impressed into the surface of the \S+\.
action setvariable sourcetype altered when ^The .+ looks? to be custom-made\.$
action setvariable source $1 when ^\w+ shows you.+You see the initials? \"(.+)\" impressed into the surface of the mark\.$
action setvariable tap $2;setvariable look - when ^\w+ shows you (an?|some|the) (.+)\.$
action setvariable tap $2;setvariable look $3 when ^\w+ shows you (an?|some|the) (.+?)\.\s+(.+)
action setvariable wtype1 01-LtE;setvariable wtrains 01-SE when (is a|are a|and) light edged .+ weapon
action setvariable wtype1 02-ME;setvariable wtrains 01-SE when (is a|are a|and) medium edged .+ weapon
action setvariable wtype1 03-HE;setvariable wtrains 02-LrE when (is a|are a|and) heavy edged .+ weapon
action setvariable wtype1 04-2HE;setvariable wtrains 03-2HE when (is a|are a|and) two-handed edged .+ weapon
action setvariable wtype1 05-LtBl;setvariable wtrains 04-SBl when (is a|are a|and) light blunt .+ weapon
action setvariable wtype1 06-MB;setvariable wtrains 04-SBl when (is a|are a|and) medium blunt .+ weapon
action setvariable wtype1 07-HB;setvariable wtrains 05-LrBl when (is a|are a|and) heavy blunt .+ weapon
action setvariable wtype1 08-2HB;setvariable wtrains 06-2HB when (is a|are a|and) two-handed blunt .+ weapon
action setvariable wtype1 09-SS;setvariable wtrains 07-staff when (is a|are a|and) short staff .+ weapon
action setvariable wtype1 10-QS;setvariable wtrains 07-staff when (is a|are a|and) quarter staff .+ weapon
action setvariable wtype1 11-pike;setvariable wtrains 08-pole when (is a|are a|and) pike .+ weapon
action setvariable wtype1 12-halberd;setvariable wtrains 08-pole when (is a|are a|and) halberd .+ weapon
action setvariable wtype1 16-sling;setvariable wtrains 12-sling when (is|are) a sling .+ weapon
action setvariable wtype1 17-staff sling;setvariable wtrains 12-sling when (is|are) a staff sling .+ weapon
action setvariable wtype1 19-short bow;setvariable wtrains 14-bow when (is|are) a short bow .+ weapon
action setvariable wtype1 20-long bow;setvariable wtrains 14-bow when (is|are) a long bow .+ weapon
action setvariable wtype1 21-comp bow;setvariable wtrains 14-bow when (is|are) a composite bow .+ weapon
action setvariable wtype1 23-LX;setvariable wtrains 16-Xbow when (is|are) a light crossbow .+ weapon
action setvariable wtype1 24-HX;setvariable wtrains 16-Xbow when (is|are) a heavy crossbow .+ weapon
action setvariable setvariable wtype1 15-brawl;setvariable brawltype parry;setvariable wtrains brawling when ^You are certain that the .+ is a purely defensive item\.$
action setvariable setvariable wtype1 15-brawl;setvariable brawltype elbows;setvariable wtrains brawling when ^It appears that the .+ can be worn strapped to the elbows\.$
action setvariable setvariable wtype1 15-brawl;setvariable brawltype hands;setvariable wtrains brawling when ^It appears that the .+ can be worn strapped to the hands\.$
action setvariable setvariable wtype1 15-brawl;setvariable brawltype knees;setvariable wtrains brawling when ^It appears that the .+ can be worn strapped to the knees\.$
action setvariable setvariable wtype1 15-brawl;setvariable brawltype feet;setvariable wtrains brawling when ^It appears that the .+ can be worn strapped to the feet\.$
action setvariable wtype2 13-LT;setvariable wtrains2 09-LT;setvariable range ranged when (is|are) a light thrown and .+ weapon
action setvariable wtype2 14-HT;setvariable wtrains2 10-HT;setvariable range ranged when (is|are) a heavy thrown and .+ weapon
action setvariable range melee when melee-ranged weapon
action setvariable range pole when pole-ranged weapon
action setvariable puncture 0 when ^\s+no puncture damage
action setvariable puncture 1 when ^\s+dismal puncture damage
action setvariable puncture 2 when ^\s+poor puncture damage
action setvariable puncture 3 when ^\s+low puncture damage
action setvariable puncture 4 when ^\s+somewhat fair puncture damage
action setvariable puncture 5 when ^\s+fair puncture damage
action setvariable puncture 6 when ^\s+somewhat moderate puncture damage
action setvariable puncture 7 when ^\s+moderate puncture damage
action setvariable puncture 8 when ^\s+somewhat heavy puncture damage
action setvariable puncture 9 when ^\s+heavy puncture damage
action setvariable puncture 10 when ^\s+very heavy puncture damage
action setvariable puncture 11 when ^\s+great puncture damage
action setvariable puncture 12 when ^\s+very great puncture damage
action setvariable puncture 13 when ^\s+severe puncture damage
action setvariable puncture 14 when ^\s+very severe puncture damage
action setvariable puncture 15 when ^\s+extreme puncture damage
action setvariable puncture 16 when ^\s+very extreme puncture damage
action setvariable puncture 17 when ^\s+mighty puncture damage
action setvariable puncture 18 when ^\s+very mighty puncture damage
action setvariable puncture 19 when ^\s+bone-crushing puncture damage
action setvariable puncture 20 when ^\s+very bone-crushing puncture damage
action setvariable puncture 21 when ^\s+dev[ae]stating puncture damage
action setvariable puncture 22 when ^\s+very dev[ae]stating puncture damage
action setvariable puncture 23 when ^\s+overwhelming puncture damage
action setvariable puncture 24 when ^\s+annihilating puncture damage
action setvariable puncture 25 when ^\s+obliterating puncture damage
action setvariable puncture 26 when ^\s+demolishing puncture damage
action setvariable puncture 27 when ^\s+catastrophic puncture damage
action setvariable slice 0 when ^\s+no slice damage
action setvariable slice 1 when ^\s+dismal slice damage
action setvariable slice 2 when ^\s+poor slice damage
action setvariable slice 3 when ^\s+low slice damage
action setvariable slice 4 when ^\s+somewhat fair slice damage
action setvariable slice 5 when ^\s+fair slice damage
action setvariable slice 6 when ^\s+somewhat moderate slice damage
action setvariable slice 7 when ^\s+moderate slice damage
action setvariable slice 8 when ^\s+somewhat heavy slice damage
action setvariable slice 9 when ^\s+heavy slice damage
action setvariable slice 10 when ^\s+very heavy slice damage
action setvariable slice 11 when ^\s+great slice damage
action setvariable slice 12 when ^\s+very great slice damage
action setvariable slice 13 when ^\s+severe slice damage
action setvariable slice 14 when ^\s+very severe slice damage
action setvariable slice 15 when ^\s+extreme slice damage
action setvariable slice 16 when ^\s+very extreme slice damage
action setvariable slice 17 when ^\s+mighty slice damage
action setvariable slice 18 when ^\s+very mighty slice damage
action setvariable slice 19 when ^\s+bone-crushing slice damage
action setvariable slice 20 when ^\s+very bone-crushing slice damage
action setvariable slice 21 when ^\s+dev[ae]stating slice damage
action setvariable slice 22 when ^\s+very dev[ae]stating slice damage
action setvariable slice 23 when ^\s+overwhelming slice damage
action setvariable slice 24 when ^\s+annihilating slice damage
action setvariable slice 25 when ^\s+obliterating slice damage
action setvariable slice 26 when ^\s+demolishing slice damage
action setvariable slice 27 when ^\s+catastrophic slice damage
action setvariable impact 0 when ^\s+no impact damage
action setvariable impact 1 when ^\s+dismal impact damage
action setvariable impact 2 when ^\s+poor impact damage
action setvariable impact 3 when ^\s+low impact damage
action setvariable impact 4 when ^\s+somewhat fair impact damage
action setvariable impact 5 when ^\s+fair impact damage
action setvariable impact 6 when ^\s+somewhat moderate impact damage
action setvariable impact 7 when ^\s+moderate impact damage
action setvariable impact 8 when ^\s+somewhat heavy impact damage
action setvariable impact 9 when ^\s+heavy impact damage
action setvariable impact 10 when ^\s+very heavy impact damage
action setvariable impact 11 when ^\s+great impact damage
action setvariable impact 12 when ^\s+very great impact damage
action setvariable impact 13 when ^\s+severe impact damage
action setvariable impact 14 when ^\s+very severe impact damage
action setvariable impact 15 when ^\s+extreme impact damage
action setvariable impact 16 when ^\s+very extreme impact damage
action setvariable impact 17 when ^\s+mighty impact damage
action setvariable impact 18 when ^\s+very mighty impact damage
action setvariable impact 19 when ^\s+bone-crushing impact damage
action setvariable impact 20 when ^\s+very bone-crushing impact damage
action setvariable impact 21 when ^\s+dev[ae]stating impact damage
action setvariable impact 22 when ^\s+very dev[ae]stating impact damage
action setvariable impact 23 when ^\s+overwhelming impact damage
action setvariable impact 24 when ^\s+annihilating impact damage
action setvariable impact 25 when ^\s+obliterating impact damage
action setvariable impact 26 when ^\s+demolishing impact damage
action setvariable impact 27 when ^\s+catastrophic impact damage
action setvariable puncture 0 when ^\s+no puncture damage$
action setvariable puncture 1 when ^\s+a little puncture damage$
action setvariable puncture 2 when ^\s+some puncture damage$
action setvariable puncture 3 when ^\s+quite a bit of puncture damage$
action setvariable puncture 4 when ^\s+a lot of puncture damage$
action setvariable slice 0 when ^\s+no slice damage$
action setvariable slice 1 when ^\s+a little slice damage$
action setvariable slice 2 when ^\s+some slice damage$
action setvariable slice 3 when ^\s+quite a bit of slice damage$
action setvariable slice 4 when ^\s+a lot of slice damage$
action setvariable impact 0 when ^\s+no impact damage$
action setvariable impact 1 when ^\s+a little impact damage$
action setvariable impact 2 when ^\s+some impact damage$
action setvariable impact 3 when ^\s+quite a bit of impact damage$
action setvariable impact 4 when ^\s+a lot of impact damage$
action setvariable fire 0 when ^\s+no fire damage
action setvariable fire 1 when ^\s+dismal fire damage
action setvariable fire 2 when ^\s+poor fire damage
action setvariable fire 3 when ^\s+low fire damage
action setvariable fire 4 when ^\s+somewhat fair fire damage
action setvariable fire 5 when ^\s+fair fire damage
action setvariable fire 6 when ^\s+somewhat moderate fire damage
action setvariable fire 7 when ^\s+moderate fire damage
action setvariable fire 8 when ^\s+somewhat heavy fire damage
action setvariable fire 9 when ^\s+heavy fire damage
action setvariable fire 10 when ^\s+very heavy fire damage
action setvariable fire 11 when ^\s+great fire damage
action setvariable fire 12 when ^\s+very great fire damage
action setvariable fire 13 when ^\s+severe fire damage
action setvariable fire 14 when ^\s+very severe fire damage
action setvariable fire 15 when ^\s+extreme fire damage
action setvariable fire 16 when ^\s+very extreme fire damage
action setvariable fire 17 when ^\s+mighty fire damage
action setvariable fire 18 when ^\s+very mighty fire damage
action setvariable fire 19 when ^\s+bone-crushing fire damage
action setvariable fire 20 when ^\s+very bone-crushing fire damage
action setvariable fire 21 when ^\s+dev[ae]stating fire damage
action setvariable fire 22 when ^\s+very dev[ae]stating fire damage
action setvariable fire 23 when ^\s+overwhelming fire damage
action setvariable fire 24 when ^\s+annihilating fire damage
action setvariable fire 25 when ^\s+obliterating fire damage
action setvariable fire 26 when ^\s+demolishing fire damage
action setvariable fire 27 when ^\s+catastrophic fire damage
action setvariable cold 0 when ^\s+no cold damage
action setvariable cold 1 when ^\s+dismal cold damage
action setvariable cold 2 when ^\s+poor cold damage
action setvariable cold 3 when ^\s+low cold damage
action setvariable cold 4 when ^\s+somewhat fair cold damage
action setvariable cold 5 when ^\s+fair cold damage
action setvariable cold 6 when ^\s+somewhat moderate cold damage
action setvariable cold 7 when ^\s+moderate cold damage
action setvariable cold 8 when ^\s+somewhat heavy cold damage
action setvariable cold 9 when ^\s+heavy cold damage
action setvariable cold 10 when ^\s+very heavy cold damage
action setvariable cold 11 when ^\s+great cold damage
action setvariable cold 12 when ^\s+very great cold damage
action setvariable cold 13 when ^\s+severe cold damage
action setvariable cold 14 when ^\s+very severe cold damage
action setvariable cold 15 when ^\s+extreme cold damage
action setvariable cold 16 when ^\s+very extreme cold damage
action setvariable cold 17 when ^\s+mighty cold damage
action setvariable cold 18 when ^\s+very mighty cold damage
action setvariable cold 19 when ^\s+bone-crushing cold damage
action setvariable cold 20 when ^\s+very bone-crushing cold damage
action setvariable cold 21 when ^\s+dev[ae]stating cold damage
action setvariable cold 22 when ^\s+very dev[ae]stating cold damage
action setvariable cold 23 when ^\s+overwhelming cold damage
action setvariable cold 24 when ^\s+annihilating cold damage
action setvariable cold 25 when ^\s+obliterating cold damage
action setvariable cold 26 when ^\s+demolishing cold damage
action setvariable cold 27 when ^\s+catastrophic cold damage
action setvariable electric 0 when ^\s+no electric damage
action setvariable electric 1 when ^\s+dismal electric damage
action setvariable electric 2 when ^\s+poor electric damage
action setvariable electric 3 when ^\s+low electric damage
action setvariable electric 4 when ^\s+somewhat fair electric damage
action setvariable electric 5 when ^\s+fair electric damage
action setvariable electric 6 when ^\s+somewhat moderate electric damage
action setvariable electric 7 when ^\s+moderate electric damage
action setvariable electric 8 when ^\s+somewhat heavy electric damage
action setvariable electric 9 when ^\s+heavy electric damage
action setvariable electric 10 when ^\s+very heavy electric damage
action setvariable electric 11 when ^\s+great electric damage
action setvariable electric 12 when ^\s+very great electric damage
action setvariable electric 13 when ^\s+severe electric damage
action setvariable electric 14 when ^\s+very severe electric damage
action setvariable electric 15 when ^\s+extreme electric damage
action setvariable electric 16 when ^\s+very extreme electric damage
action setvariable electric 17 when ^\s+mighty electric damage
action setvariable electric 18 when ^\s+very mighty electric damage
action setvariable electric 19 when ^\s+bone-crushing electric damage
action setvariable electric 20 when ^\s+very bone-crushing electric damage
action setvariable electric 21 when ^\s+dev[ae]stating electric damage
action setvariable electric 22 when ^\s+very dev[ae]stating electric damage
action setvariable electric 23 when ^\s+overwhelming electric damage
action setvariable electric 24 when ^\s+annihilating electric damage
action setvariable electric 25 when ^\s+obliterating electric damage
action setvariable electric 26 when ^\s+demolishing electric damage
action setvariable electric 27 when ^\s+catastrophic electric damage
action setvariable fire 0 when ^\s+no fire damage$
action setvariable fire 1 when ^\s+a little fire damage$
action setvariable fire 2 when ^\s+some fire damage$
action setvariable fire 3 when ^\s+quite a bit of fire damage$
action setvariable fire 4 when ^\s+a lot of fire damage$
action setvariable cold 0 when ^\s+no cold damage$
action setvariable cold 1 when ^\s+a little cold damage$
action setvariable cold 2 when ^\s+some cold damage$
action setvariable cold 3 when ^\s+quite a bit of cold damage$
action setvariable cold 4 when ^\s+a lot of cold damage$
action setvariable electric 0 when ^\s+no electric damage$
action setvariable electric 1 when ^\s+a little electric damage$
action setvariable electric 2 when ^\s+some electric damage$
action setvariable electric 3 when ^\s+quite a bit of electric damage$
action setvariable electric 4 when ^\s+a lot of electric damage$
action setvariable foi 0 when (is|are) not designed for improving the force of your attacks\.$
action setvariable foi 1 when (is|are) terribly designed for improving the force of your attacks\.$
action setvariable foi 2 when (is|are) dismally designed for improving the force of your attacks\.$
action setvariable foi 3 when (is|are) poorly designed for improving the force of your attacks\.$
action setvariable foi 4 when (is|are) inadequately designed for improving the force of your attacks\.$
action setvariable foi 5 when (is|are) fairly designed for improving the force of your attacks\.$
action setvariable foi 6 when (is|are) decently designed for improving the force of your attacks\.$
action setvariable foi 7 when (is|are) reasonably designed for improving the force of your attacks\.$
action setvariable foi 8 when (is|are) soundly designed for improving the force of your attacks\.$
action setvariable foi 9 when (is|are) well designed for improving the force of your attacks\.$
action setvariable foi 10 when (is|are) very well designed for improving the force of your attacks\.$
action setvariable foi 11 when (is|are) extremely well designed for improving the force of your attacks\.$
action setvariable foi 12 when (is|are) excellently designed for improving the force of your attacks\.$
action setvariable foi 13 when (is|are) superbly designed for improving the force of your attacks\.$
action setvariable foi 14 when (is|are) incredibly designed for improving the force of your attacks\.$
action setvariable foi 15 when (is|are) amazingly designed for improving the force of your attacks\.$
action setvariable foi 16 when (is|are) unbelieve?ably designed for improving the force of your attacks\.$
action setvariable foi 17 when (is|are) perfectly designed for improving the force of your attacks\.$
action setvariable balance 0 when ^You are certain that .+ (is|are) not balanced and
action setvariable balance 1 when ^You are certain that .+ (is|are) terribly balanced and
action setvariable balance 2 when ^You are certain that .+ (is|are) dismally balanced and
action setvariable balance 3 when ^You are certain that .+ (is|are) poorly balanced and
action setvariable balance 4 when ^You are certain that .+ (is|are) inadequately balanced and
action setvariable balance 5 when ^You are certain that .+ (is|are) fairly balanced and
action setvariable balance 6 when ^You are certain that .+ (is|are) decently balanced and
action setvariable balance 7 when ^You are certain that .+ (is|are) reasonably balanced and
action setvariable balance 8 when ^You are certain that .+ (is|are) soundly balanced and
action setvariable balance 9 when ^You are certain that .+ (is|are) well balanced and
action setvariable balance 10 when ^You are certain that .+ (is|are) very well balanced and
action setvariable balance 11 when ^You are certain that .+ (is|are) extremely well balanced and
action setvariable balance 12 when ^You are certain that .+ (is|are) excellently balanced and
action setvariable balance 13 when ^You are certain that .+ (is|are) superbly balanced and
action setvariable balance 14 when ^You are certain that .+ (is|are) incredibly balanced and
action setvariable balance 15 when ^You are certain that .+ (is|are) amazingly balanced and
action setvariable balance 16 when ^You are certain that .+ (is|are) unbelieve?ably balanced and
action setvariable balance 17 when ^You are certain that .+ (is|are) perfectly balanced and
action setvariable power 0 when ^You are certain that.+balanced and (is|are) not suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 1 when ^You are certain that.+balanced and (is|are) terribly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 2 when ^You are certain that.+balanced and (is|are) dismally suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 3 when ^You are certain that.+balanced and (is|are) poorly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 4 when ^You are certain that.+balanced and (is|are) inadequately suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 5 when ^You are certain that.+balanced and (is|are) fairly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 6 when ^You are certain that.+balanced and (is|are) decently suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 7 when ^You are certain that.+balanced and (is|are) reasonably suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 8 when ^You are certain that.+balanced and (is|are) soundly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 9 when ^You are certain that.+balanced and (is|are) well suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 10 when ^You are certain that.+balanced and (is|are) very well suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 11 when ^You are certain that.+balanced and (is|are) extremely well suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 12 when ^You are certain that.+balanced and (is|are) excellently suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 13 when ^You are certain that.+balanced and (is|are) superbly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 14 when ^You are certain that.+balanced and (is|are) incredibly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 15 when ^You are certain that.+balanced and (is|are) amazingly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 16 when ^You are certain that.+balanced and (is|are) unbelieve?ably suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable power 17 when ^You are certain that.+balanced and (is|are) perfectly suited (to gaining extra|for adding) attack power from (your|its draw) strength.$
action setvariable drawstrength 1 when ^The.+appears set for a draw strength that is extremely low for a bow of this type\.$
action setvariable drawstrength 2 when ^The.+appears set for a draw strength that is very low for a bow of this type\.$
action setvariable drawstrength 3 when ^The.+appears set for a draw strength that is somewhat low for a bow of this type\.$
action setvariable drawstrength 4 when ^The.+appears set for a draw strength that is average for a bow of this type\.$
action setvariable drawstrength 5 when ^The.+appears set for a draw strength that is somewhat high for a bow of this type\.$
action setvariable drawstrength 6 when ^The.+appears set for a draw strength that is very high for a bow of this type\.$
action setvariable drawstrength 7 when ^The.+appears set for a draw strength that is exceptionally high for a bow of this type\.$
action setvariable drawstrength 8 when ^The.+appears set for a draw strength that is extremely high for a bow of this type\.$
action setvariable adjdraw no when ^The.+does not appear to have an adjustable draw strength\.$
action setvariable adjdraw yes when ^The.+appears to have an adjustable draw strength\.$

action setvariable atype 4-plate when (is|are) plate armor\.$
action setvariable atype 3-brigandine when (is|are) brigandine armor\.$
action setvariable atype 2-chain when (is|are) chain armor\.$
action setvariable atype 1-light when (is|are) light armor\.$
action setvariable covershead yes when ^\s+head$
action setvariable coverseyes yes when ^\s+(right|left) eye$
action setvariable coversneck yes when ^\s+neck$
action setvariable coverschest yes when ^\s+chest$
action setvariable coversabdomen yes when ^\s+abdomen$
action setvariable coversback yes when ^\s+back$
action setvariable coversarms yes when ^\s+(right|left) arm$
action setvariable covershands yes when ^\s+(right|left) hand$
action setvariable coverslegs yes when ^\s+(right|left) leg$

action setvariable stype 1-small when is small in size\.$
action setvariable stype 2-medium when is medium in size\.$
action setvariable stype 3-large when is large in size\.$
action setvariable shdhindrance 0 when ^You are certain that it imposes no maneuvering hindrance\.$
action setvariable shdhindrance 1 when ^You are certain that it imposes insignificant maneuvering hindrance\.$
action setvariable shdhindrance 2 when ^You are certain that it imposes trivial maneuvering hindrance\.$
action setvariable shdhindrance 3 when ^You are certain that it imposes light maneuvering hindrance\.$
action setvariable shdhindrance 4 when ^You are certain that it imposes minor maneuvering hindrance\.$
action setvariable shdhindrance 5 when ^You are certain that it imposes fair maneuvering hindrance\.$
action setvariable shdhindrance 6 when ^You are certain that it imposes mild maneuvering hindrance\.$
action setvariable shdhindrance 7 when ^You are certain that it imposes moderate maneuvering hindrance\.$
action setvariable shdhindrance 8 when ^You are certain that it imposes noticeable maneuvering hindrance\.$
action setvariable shdhindrance 9 when ^You are certain that it imposes high maneuvering hindrance\.$
action setvariable shdhindrance 10 when ^You are certain that it imposes significant maneuvering hindrance\.$
action setvariable shdhindrance 11 when ^You are certain that it imposes great maneuvering hindrance\.$
action setvariable shdhindrance 12 when ^You are certain that it imposes extreme maneuvering hindrance\.$
action setvariable shdhindrance 13 when ^You are certain that it imposes debilitating maneuvering hindrance\.$
action setvariable shdhindrance 14 when ^You are certain that it imposes overwhelming maneuvering hindrance\.$
action setvariable shdhindrance 15 when ^You are certain that it imposes insane maneuvering hindrance\.$
action setvariable smin 0 when ^You are certain that .+ offers no to
action setvariable smin 1 when ^You are certain that .+ offers extremely terrible to
action setvariable smin 2 when ^You are certain that .+ offers terrible to
action setvariable smin 3 when ^You are certain that .+ offers dismal to
action setvariable smin 4 when ^You are certain that .+ offers very poor to
action setvariable smin 5 when ^You are certain that .+ offers poor to
action setvariable smin 6 when ^You are certain that .+ offers rather low to
action setvariable smin 7 when ^You are certain that .+ offers low to
action setvariable smin 8 when ^You are certain that .+ offers fair to
action setvariable smin 9 when ^You are certain that .+ offers better than fair to
action setvariable smin 10 when ^You are certain that .+ offers moderate to
action setvariable smin 11 when ^You are certain that .+ offers moderately good to
action setvariable smin 12 when ^You are certain that .+ offers good to
action setvariable smin 13 when ^You are certain that .+ offers very good to
action setvariable smin 14 when ^You are certain that .+ offers high to
action setvariable smin 15 when ^You are certain that .+ offers very high to
action setvariable smin 16 when ^You are certain that .+ offers great to
action setvariable smin 17 when ^You are certain that .+ offers very great to
action setvariable smin 18 when ^You are certain that .+ offers exceptional to
action setvariable smin 19 when ^You are certain that .+ offers very exceptional to
action setvariable smin 20 when ^You are certain that .+ offers impressive to
action setvariable smin 21 when ^You are certain that .+ offers very impressive to
action setvariable smin 22 when ^You are certain that .+ offers amazing to
action setvariable smin 23 when ^You are certain that .+ offers incredible to
action setvariable smin 24 when ^You are certain that .+ offers tremendous to
action setvariable smin 25 when ^You are certain that .+ offers unbelievable to
action setvariable smin 26 when ^You are certain that .+ offers god-like to
action setvariable smax 0 when ^You are certain that.+offers.+ to no protection\.$
action setvariable smax 1 when ^You are certain that.+offers.+ to extremely terrible protection\.$
action setvariable smax 2 when ^You are certain that.+offers.+ to terrible protection\.$
action setvariable smax 3 when ^You are certain that.+offers.+ to dismal protection\.$
action setvariable smax 4 when ^You are certain that.+offers.+ to very poor protection\.$
action setvariable smax 5 when ^You are certain that.+offers.+ to poor protection\.$
action setvariable smax 6 when ^You are certain that.+offers.+ to rather low protection\.$
action setvariable smax 7 when ^You are certain that.+offers.+ to low protection\.$
action setvariable smax 8 when ^You are certain that.+offers.+ to fair protection\.$
action setvariable smax 9 when ^You are certain that.+offers.+ to better than fair protection\.$
action setvariable smax 10 when ^You are certain that.+offers.+ to moderate protection\.$
action setvariable smax 11 when ^You are certain that.+offers.+ to moderately good protection\.$
action setvariable smax 12 when ^You are certain that.+offers.+ to good protection\.$
action setvariable smax 13 when ^You are certain that.+offers.+ to very good protection\.$
action setvariable smax 14 when ^You are certain that.+offers.+ to high protection\.$
action setvariable smax 15 when ^You are certain that.+offers.+ to very high protection\.$
action setvariable smax 16 when ^You are certain that.+offers.+ to great protection\.$
action setvariable smax 17 when ^You are certain that.+offers.+ to very great protection\.$
action setvariable smax 18 when ^You are certain that.+offers.+ to exceptional protection\.$
action setvariable smax 19 when ^You are certain that.+offers.+ to very exceptional protection\.$
action setvariable smax 20 when ^You are certain that.+offers.+ to impressive protection\.$
action setvariable smax 21 when ^You are certain that.+offers.+ to very impressive protection\.$
action setvariable smax 22 when ^You are certain that.+offers.+ to amazing protection\.$
action setvariable smax 23 when ^You are certain that.+offers.+ to incredible protection\.$
action setvariable smax 24 when ^You are certain that.+offers.+ to tremendous protection\.$
action setvariable smax 25 when ^You are certain that.+offers.+ to unbelievable protection\.$
action setvariable smax 26 when ^You are certain that.+offers.+ to god-like protection\.$

action setvariable mhindrance 0 when ^You feel certain that .+ appears? to impose no maneuvering hindrance
action setvariable mhindrance 1 when ^You feel certain that .+ appears? to impose insignificant maneuvering hindrance
action setvariable mhindrance 2 when ^You feel certain that .+ appears? to impose trivial maneuvering hindrance
action setvariable mhindrance 3 when ^You feel certain that .+ appears? to impose light maneuvering hindrance
action setvariable mhindrance 4 when ^You feel certain that .+ appears? to impose minor maneuvering hindrance
action setvariable mhindrance 5 when ^You feel certain that .+ appears? to impose fair maneuvering hindrance
action setvariable mhindrance 6 when ^You feel certain that .+ appears? to impose mild maneuvering hindrance
action setvariable mhindrance 7 when ^You feel certain that .+ appears? to impose moderate maneuvering hindrance
action setvariable mhindrance 8 when ^You feel certain that .+ appears? to impose noticeable maneuvering hindrance
action setvariable mhindrance 9 when ^You feel certain that .+ appears? to impose high maneuvering hindrance
action setvariable mhindrance 10 when ^You feel certain that .+ appears? to impose significant maneuvering hindrance
action setvariable mhindrance 11 when ^You feel certain that .+ appears? to impose great maneuvering hindrance
action setvariable mhindrance 12 when ^You feel certain that .+ appears? to impose extreme maneuvering hindrance
action setvariable mhindrance 13 when ^You feel certain that .+ appears? to impose debilitating maneuvering hindrance
action setvariable mhindrance 14 when ^You feel certain that .+ appears? to impose overwhelming maneuvering hindrance
action setvariable mhindrance 15 when ^You feel certain that .+ appears? to impose insane maneuvering hindrance
action setvariable shindrance 0 when ^You feel certain that.+maneuvering hindrance and no stealth hindrance, offering:
action setvariable shindrance 1 when ^You feel certain that.+maneuvering hindrance and insignificant stealth hindrance, offering:
action setvariable shindrance 2 when ^You feel certain that.+maneuvering hindrance and trivial stealth hindrance, offering:
action setvariable shindrance 3 when ^You feel certain that.+maneuvering hindrance and light stealth hindrance, offering:
action setvariable shindrance 4 when ^You feel certain that.+maneuvering hindrance and minor stealth hindrance, offering:
action setvariable shindrance 5 when ^You feel certain that.+maneuvering hindrance and fair stealth hindrance, offering:
action setvariable shindrance 6 when ^You feel certain that.+maneuvering hindrance and mild stealth hindrance, offering:
action setvariable shindrance 7 when ^You feel certain that.+maneuvering hindrance and moderate stealth hindrance, offering:
action setvariable shindrance 8 when ^You feel certain that.+maneuvering hindrance and noticeable stealth hindrance, offering:
action setvariable shindrance 9 when ^You feel certain that.+maneuvering hindrance and high stealth hindrance, offering:
action setvariable shindrance 10 when ^You feel certain that.+maneuvering hindrance and significant stealth hindrance, offering:
action setvariable shindrance 11 when ^You feel certain that.+maneuvering hindrance and great stealth hindrance, offering:
action setvariable shindrance 12 when ^You feel certain that.+maneuvering hindrance and extreme stealth hindrance, offering:
action setvariable shindrance 13 when ^You feel certain that.+maneuvering hindrance and debilitating stealth hindrance, offering:
action setvariable shindrance 14 when ^You feel certain that.+maneuvering hindrance and overwhelming stealth hindrance, offering:
action setvariable shindrance 15 when ^You feel certain that.+maneuvering hindrance and insane stealth hindrance, offering:
action setvariable puncturep 1 when ^\s+poor protection and.+absorption for puncture attacks
action setvariable puncturep 2 when ^\s+low protection and.+absorption for puncture attacks
action setvariable puncturep 3 when ^\s+fair protection and.+absorption for puncture attacks
action setvariable puncturep 4 when ^\s+moderate protection and.+absorption for puncture attacks
action setvariable puncturep 5 when ^\s+good protection and.+absorption for puncture attacks
action setvariable puncturep 6 when ^\s+very good protection and.+absorption for puncture attacks
action setvariable puncturep 7 when ^\s+high protection and.+absorption for puncture attacks
action setvariable puncturep 8 when ^\s+very high protection and.+absorption for puncture attacks
action setvariable puncturep 9 when ^\s+great protection and.+absorption for puncture attacks
action setvariable puncturep 10 when ^\s+very great protection and.+absorption for puncture attacks
action setvariable puncturep 11 when ^\s+extreme protection and.+absorption for puncture attacks
action setvariable puncturep 12 when ^\s+exceptional protection and.+absorption for puncture attacks
action setvariable puncturep 13 when ^\s+incredible protection and.+absorption for puncture attacks
action setvariable puncturep 14 when ^\s+amazing protection and.+absorption for puncture attacks
action setvariable puncturep 15 when ^\s+unbelieve?able protection and.+absorption for puncture attacks
action setvariable puncturea 1 when ^\s.+protection and very poor damage absorption for puncture attacks
action setvariable puncturea 2 when ^\s.+protection and poor damage absorption for puncture attacks
action setvariable puncturea 3 when ^\s.+protection and low damage absorption for puncture attacks
action setvariable puncturea 4 when ^\s.+protection and somewhat fair damage absorption for puncture attacks
action setvariable puncturea 5 when ^\s.+protection and fair damage absorption for puncture attacks
action setvariable puncturea 6 when ^\s.+protection and moderate damage absorption for puncture attacks
action setvariable puncturea 7 when ^\s.+protection and good damage absorption for puncture attacks
action setvariable puncturea 8 when ^\s.+protection and very good damage absorption for puncture attacks
action setvariable puncturea 9 when ^\s.+protection and high damage absorption for puncture attacks
action setvariable puncturea 10 when ^\s.+protection and very high damage absorption for puncture attacks
action setvariable puncturea 11 when ^\s.+protection and great damage absorption for puncture attacks
action setvariable puncturea 12 when ^\s.+protection and very great damage absorption for puncture attacks
action setvariable puncturea 13 when ^\s.+protection and extreme damage absorption for puncture attacks
action setvariable puncturea 14 when ^\s.+protection and exceptional damage absorption for puncture attacks
action setvariable puncturea 15 when ^\s.+protection and incredible damage absorption for puncture attacks
action setvariable puncturea 16 when ^\s.+protection and outstanding damage absorption for puncture attacks
action setvariable puncturea 17 when ^\s.+protection and amazing damage absorption for puncture attacks
action setvariable puncturea 18 when ^\s.+protection and unbelievable damage absorption for puncture attacks
action setvariable slicep 1 when ^\s+poor protection and.+absorption for slice attacks
action setvariable slicep 2 when ^\s+low protection and.+absorption for slice attacks
action setvariable slicep 3 when ^\s+fair protection and.+absorption for slice attacks
action setvariable slicep 4 when ^\s+moderate protection and.+absorption for slice attacks
action setvariable slicep 5 when ^\s+good protection and.+absorption for slice attacks
action setvariable slicep 6 when ^\s+very good protection and.+absorption for slice attacks
action setvariable slicep 7 when ^\s+high protection and.+absorption for slice attacks
action setvariable slicep 8 when ^\s+very high protection and.+absorption for slice attacks
action setvariable slicep 9 when ^\s+great protection and.+absorption for slice attacks
action setvariable slicep 10 when ^\s+very great protection and.+absorption for slice attacks
action setvariable slicep 11 when ^\s+extreme protection and.+absorption for slice attacks
action setvariable slicep 12 when ^\s+exceptional protection and.+absorption for slice attacks
action setvariable slicep 13 when ^\s+incredible protection and.+absorption for slice attacks
action setvariable slicep 14 when ^\s+amazing protection and.+absorption for slice attacks
action setvariable slicep 15 when ^\s+unbelieve?able protection and.+absorption for slice attacks
action setvariable slicea 1 when ^\s.+protection and very poor damage absorption for slice attacks
action setvariable slicea 2 when ^\s.+protection and poor damage absorption for slice attacks
action setvariable slicea 3 when ^\s.+protection and low damage absorption for slice attacks
action setvariable slicea 4 when ^\s.+protection and somewhat fair damage absorption for slice attacks
action setvariable slicea 5 when ^\s.+protection and fair damage absorption for slice attacks
action setvariable slicea 6 when ^\s.+protection and moderate damage absorption for slice attacks
action setvariable slicea 7 when ^\s.+protection and good damage absorption for slice attacks
action setvariable slicea 8 when ^\s.+protection and very good damage absorption for slice attacks
action setvariable slicea 9 when ^\s.+protection and high damage absorption for slice attacks
action setvariable slicea 10 when ^\s.+protection and very high damage absorption for slice attacks
action setvariable slicea 11 when ^\s.+protection and great damage absorption for slice attacks
action setvariable slicea 12 when ^\s.+protection and very great damage absorption for slice attacks
action setvariable slicea 13 when ^\s.+protection and extreme damage absorption for slice attacks
action setvariable slicea 14 when ^\s.+protection and exceptional damage absorption for slice attacks
action setvariable slicea 15 when ^\s.+protection and incredible damage absorption for slice attacks
action setvariable slicea 16 when ^\s.+protection and outstanding damage absorption for slice attacks
action setvariable slicea 17 when ^\s.+protection and amazing damage absorption for slice attacks
action setvariable slicea 18 when ^\s.+protection and unbelievable damage absorption for slice attacks
action setvariable impactp 1 when ^\s+poor protection and.+absorption for impact attacks
action setvariable impactp 2 when ^\s+low protection and.+absorption for impact attacks
action setvariable impactp 3 when ^\s+fair protection and.+absorption for impact attacks
action setvariable impactp 4 when ^\s+moderate protection and.+absorption for impact attacks
action setvariable impactp 5 when ^\s+good protection and.+absorption for impact attacks
action setvariable impactp 6 when ^\s+very good protection and.+absorption for impact attacks
action setvariable impactp 7 when ^\s+high protection and.+absorption for impact attacks
action setvariable impactp 8 when ^\s+very high protection and.+absorption for impact attacks
action setvariable impactp 9 when ^\s+great protection and.+absorption for impact attacks
action setvariable impactp 10 when ^\s+very great protection and.+absorption for impact attacks
action setvariable impactp 11 when ^\s+extreme protection and.+absorption for impact attacks
action setvariable impactp 12 when ^\s+exceptional protection and.+absorption for impact attacks
action setvariable impactp 13 when ^\s+incredible protection and.+absorption for impact attacks
action setvariable impactp 14 when ^\s+amazing protection and.+absorption for impact attacks
action setvariable impactp 15 when ^\s+unbelieve?able protection and.+absorption for impact attacks
action setvariable impacta 1 when ^\s.+protection and very poor damage absorption for impact attacks
action setvariable impacta 2 when ^\s.+protection and poor damage absorption for impact attacks
action setvariable impacta 3 when ^\s.+protection and low damage absorption for impact attacks
action setvariable impacta 4 when ^\s.+protection and somewhat fair damage absorption for impact attacks
action setvariable impacta 5 when ^\s.+protection and fair damage absorption for impact attacks
action setvariable impacta 6 when ^\s.+protection and moderate damage absorption for impact attacks
action setvariable impacta 7 when ^\s.+protection and good damage absorption for impact attacks
action setvariable impacta 8 when ^\s.+protection and very good damage absorption for impact attacks
action setvariable impacta 9 when ^\s.+protection and high damage absorption for impact attacks
action setvariable impacta 10 when ^\s.+protection and very high damage absorption for impact attacks
action setvariable impacta 11 when ^\s.+protection and great damage absorption for impact attacks
action setvariable impacta 12 when ^\s.+protection and very great damage absorption for impact attacks
action setvariable impacta 13 when ^\s.+protection and extreme damage absorption for impact attacks
action setvariable impacta 14 when ^\s.+protection and exceptional damage absorption for impact attacks
action setvariable impacta 15 when ^\s.+protection and incredible damage absorption for impact attacks
action setvariable impacta 16 when ^\s.+protection and outstanding damage absorption for impact attacks
action setvariable impacta 17 when ^\s.+protection and amazing damage absorption for impact attacks
action setvariable impacta 18 when ^\s.+protection and unbelievable damage absorption for impact attacks
action setvariable firep 1 when ^\s+poor protection and.+absorption for fire attacks
action setvariable firep 2 when ^\s+low protection and.+absorption for fire attacks
action setvariable firep 3 when ^\s+fair protection and.+absorption for fire attacks
action setvariable firep 4 when ^\s+moderate protection and.+absorption for fire attacks
action setvariable firep 5 when ^\s+good protection and.+absorption for fire attacks
action setvariable firep 6 when ^\s+very good protection and.+absorption for fire attacks
action setvariable firep 7 when ^\s+high protection and.+absorption for fire attacks
action setvariable firep 8 when ^\s+very high protection and.+absorption for fire attacks
action setvariable firep 9 when ^\s+great protection and.+absorption for fire attacks
action setvariable firep 10 when ^\s+very great protection and.+absorption for fire attacks
action setvariable firep 11 when ^\s+extreme protection and.+absorption for fire attacks
action setvariable firep 12 when ^\s+exceptional protection and.+absorption for fire attacks
action setvariable firep 13 when ^\s+incredible protection and.+absorption for fire attacks
action setvariable firep 14 when ^\s+amazing protection and.+absorption for fire attacks
action setvariable firep 15 when ^\s+unbelieve?able protection and.+absorption for fire attacks
action setvariable firea 1 when ^\s.+protection and very poor damage absorption for fire attacks
action setvariable firea 2 when ^\s.+protection and poor damage absorption for fire attacks
action setvariable firea 3 when ^\s.+protection and low damage absorption for fire attacks
action setvariable firea 4 when ^\s.+protection and somewhat fair damage absorption for fire attacks
action setvariable firea 5 when ^\s.+protection and fair damage absorption for fire attacks
action setvariable firea 6 when ^\s.+protection and moderate damage absorption for fire attacks
action setvariable firea 7 when ^\s.+protection and good damage absorption for fire attacks
action setvariable firea 8 when ^\s.+protection and very good damage absorption for fire attacks
action setvariable firea 9 when ^\s.+protection and high damage absorption for fire attacks
action setvariable firea 10 when ^\s.+protection and very high damage absorption for fire attacks
action setvariable firea 11 when ^\s.+protection and great damage absorption for fire attacks
action setvariable firea 12 when ^\s.+protection and very great damage absorption for fire attacks
action setvariable firea 13 when ^\s.+protection and extreme damage absorption for fire attacks
action setvariable firea 14 when ^\s.+protection and exceptional damage absorption for fire attacks
action setvariable firea 15 when ^\s.+protection and incredible damage absorption for fire attacks
action setvariable firea 16 when ^\s.+protection and outstanding damage absorption for fire attacks
action setvariable firea 17 when ^\s.+protection and amazing damage absorption for fire attacks
action setvariable firea 18 when ^\s.+protection and unbelievable damage absorption for fire attacks
action setvariable coldp 1 when ^\s+poor protection and.+absorption for cold attacks
action setvariable coldp 2 when ^\s+low protection and.+absorption for cold attacks
action setvariable coldp 3 when ^\s+fair protection and.+absorption for cold attacks
action setvariable coldp 4 when ^\s+moderate protection and.+absorption for cold attacks
action setvariable coldp 5 when ^\s+good protection and.+absorption for cold attacks
action setvariable coldp 6 when ^\s+very good protection and.+absorption for cold attacks
action setvariable coldp 7 when ^\s+high protection and.+absorption for cold attacks
action setvariable coldp 8 when ^\s+very high protection and.+absorption for cold attacks
action setvariable coldp 9 when ^\s+great protection and.+absorption for cold attacks
action setvariable coldp 10 when ^\s+very great protection and.+absorption for cold attacks
action setvariable coldp 11 when ^\s+extreme protection and.+absorption for cold attacks
action setvariable coldp 12 when ^\s+exceptional protection and.+absorption for cold attacks
action setvariable coldp 13 when ^\s+incredible protection and.+absorption for cold attacks
action setvariable coldp 14 when ^\s+amazing protection and.+absorption for cold attacks
action setvariable coldp 15 when ^\s+unbelieve?able protection and.+absorption for cold attacks
action setvariable colda 1 when ^\s.+protection and very poor damage absorption for cold attacks
action setvariable colda 2 when ^\s.+protection and poor damage absorption for cold attacks
action setvariable colda 3 when ^\s.+protection and low damage absorption for cold attacks
action setvariable colda 4 when ^\s.+protection and somewhat fair damage absorption for cold attacks
action setvariable colda 5 when ^\s.+protection and fair damage absorption for cold attacks
action setvariable colda 6 when ^\s.+protection and moderate damage absorption for cold attacks
action setvariable colda 7 when ^\s.+protection and good damage absorption for cold attacks
action setvariable colda 8 when ^\s.+protection and very good damage absorption for cold attacks
action setvariable colda 9 when ^\s.+protection and high damage absorption for cold attacks
action setvariable colda 10 when ^\s.+protection and very high damage absorption for cold attacks
action setvariable colda 11 when ^\s.+protection and great damage absorption for cold attacks
action setvariable colda 12 when ^\s.+protection and very great damage absorption for cold attacks
action setvariable colda 13 when ^\s.+protection and extreme damage absorption for cold attacks
action setvariable colda 14 when ^\s.+protection and exceptional damage absorption for cold attacks
action setvariable colda 15 when ^\s.+protection and incredible damage absorption for cold attacks
action setvariable colda 16 when ^\s.+protection and outstanding damage absorption for cold attacks
action setvariable colda 17 when ^\s.+protection and amazing damage absorption for cold attacks
action setvariable colda 18 when ^\s.+protection and unbelievable damage absorption for cold attacks
action setvariable electricp 1 when ^\s+poor protection and.+absorption for electrical attacks
action setvariable electricp 2 when ^\s+low protection and.+absorption for electrical attacks
action setvariable electricp 3 when ^\s+fair protection and.+absorption for electrical attacks
action setvariable electricp 4 when ^\s+moderate protection and.+absorption for electrical attacks
action setvariable electricp 5 when ^\s+good protection and.+absorption for electrical attacks
action setvariable electricp 6 when ^\s+very good protection and.+absorption for electrical attacks
action setvariable electricp 7 when ^\s+high protection and.+absorption for electrical attacks
action setvariable electricp 8 when ^\s+very high protection and.+absorption for electrical attacks
action setvariable electricp 9 when ^\s+great protection and.+absorption for electrical attacks
action setvariable electricp 10 when ^\s+very great protection and.+absorption for electrical attacks
action setvariable electricp 11 when ^\s+extreme protection and.+absorption for electrical attacks
action setvariable electricp 12 when ^\s+exceptional protection and.+absorption for electrical attacks
action setvariable electricp 13 when ^\s+incredible protection and.+absorption for electrical attacks
action setvariable electricp 14 when ^\s+amazing protection and.+absorption for electrical attacks
action setvariable electricp 15 when ^\s+unbelieve?able protection and.+absorption for electrical attacks
action setvariable electrica 1 when ^\s.+protection and very poor damage absorption for electrical attacks
action setvariable electrica 2 when ^\s.+protection and poor damage absorption for electrical attacks
action setvariable electrica 3 when ^\s.+protection and low damage absorption for electrical attacks
action setvariable electrica 4 when ^\s.+protection and somewhat fair damage absorption for electrical attacks
action setvariable electrica 5 when ^\s.+protection and fair damage absorption for electrical attacks
action setvariable electrica 6 when ^\s.+protection and moderate damage absorption for electrical attacks
action setvariable electrica 7 when ^\s.+protection and good damage absorption for electrical attacks
action setvariable electrica 8 when ^\s.+protection and very good damage absorption for electrical attacks
action setvariable electrica 9 when ^\s.+protection and high damage absorption for electrical attacks
action setvariable electrica 10 when ^\s.+protection and very high damage absorption for electrical attacks
action setvariable electrica 11 when ^\s.+protection and great damage absorption for electrical attacks
action setvariable electrica 12 when ^\s.+protection and very great damage absorption for electrical attacks
action setvariable electrica 13 when ^\s.+protection and extreme damage absorption for electrical attacks
action setvariable electrica 14 when ^\s.+protection and exceptional damage absorption for electrical attacks
action setvariable electrica 15 when ^\s.+protection and incredible damage absorption for electrical attacks
action setvariable electrica 16 when ^\s.+protection and outstanding damage absorption for electrical attacks
action setvariable electrica 17 when ^\s.+protection and amazing damage absorption for electrical attacks
action setvariable electrica 18 when ^\s.+protection and unbelievable damage absorption for electrical attacks

action setvariable construction 1 when ^You are certain that.+(is|are) extremely weak and easily damaged, and
action setvariable construction 2 when ^You are certain that.+(is|are) very delicate and easily damaged, and
action setvariable construction 3 when ^You are certain that.+(is|are) quite fragile and easily damaged, and
action setvariable construction 4 when ^You are certain that.+(is|are) rather flimsy and easily damaged, and
action setvariable construction 5 when ^You are certain that.+(is|are) particularly weak against damage, and
action setvariable construction 6 when ^You are certain that.+(is|are) somewhat unsound against damage, and
action setvariable construction 7 when ^You are certain that.+(is|are) appreciably sus?ceptible to damage, and
action setvariable construction 8 when ^You are certain that.+(is|are) marginally vulnerable to damage, and
action setvariable construction 9 when ^You are certain that.+(is|are) of average construction, and
action setvariable construction 10 when ^You are certain that.+(is|are) a bit safeguarded against damage, and
action setvariable construction 11 when ^You are certain that.+(is|are) rather reinforced against damage, and
action setvariable construction 12 when ^You are certain that.+(is|are) quite guarded against damage, and
action setvariable construction 13 when ^You are certain that.+(is|are) highly protected against damage, and
action setvariable construction 14 when ^You are certain that.+(is|are) very strong against damage, and
action setvariable construction 15 when ^You are certain that.+(is|are) extremely resistant to damage, and
action setvariable construction 16 when ^You are certain that.+(is|are) unusually resilient to damage, and
action setvariable construction 17 when ^You are certain that.+(is|are) nearly impervious to damage, and
action setvariable construction 18 when ^You are certain that.+(is|are) practically invulnerable to damage, and
action setvariable weight $1 when ^You are certain that .+ weighs exactly (\d+) (stones?)\.$
action setvariable appcostk $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:kronars)\.$
action setvariable appcostk 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:kronar)\.$
action setvariable appcostk 0 when ^You are certain that .+ (is|are) worth exactly nothing\.$
action setvariable appcostk - when ^There doesn't appear to be anything in the gem pouch\.$
action setvariable appcostk - when is made for easy storage of gems, and is used by gemshops everywhere to handle bulk transactions\.$
action setvariable appcostl $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:lirums)\.$
action setvariable appcostl 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:lirum)\.$
action setvariable appcostd $2 when ^You are certain that .+ (is|are) worth exactly (\d+) (?i:dokoras)\.$
action setvariable appcostd 1 when ^You are certain that .+ (is|are) worth exactly 1 (?i:dokora)\.$

action setvariable ilsize $1;setvariable iwsize $2;setvariable ihsize $3;setvariable csize $4 when ^You compare your .+ with the .+ yardstick several times and are certain the interior length measures (\w+) spans?, the interior width measures (\w+) spans?, the interior height measures (\w+) spans? and the .+ appears capable of holding about (\d+) stones of weight\.$

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
echo 7:	Armor
echo
echo Enter Type Number:

matchre WeaponApp1 ^1
matchre WeaponApp2 ^2
matchre WeaponApp3 ^3
matchre WeaponApp4 ^4
matchre WeaponApp5 ^5
matchre ShieldApp ^6
matchre ArmorApp ^7
matchwait

WeaponApp1:
var formtype weapon1
var logtype WeaponMelee
goto appraise

WeaponApp2:
var formtype weapon2
var logtype WeaponRanged
goto appraise

WeaponApp3:
var formtype weapon3
var logtype WeaponRanged
goto appraise

WeaponApp4:
var formtype weapon4
var logtype WeaponMelee
goto appraise

WeaponApp5:
var formtype weapon5
var logtype WeaponMelee
goto appraise

ShieldApp:
var formtype shield
var logtype Shield
goto appraise

ArmorApp:
var formtype armor
var logtype Armor
goto appraise

appraise:
gosub VarBlank
send appraise %1 %2 %3 careful
wait
pause .5
if %appcostl > 0 then evalmath appcostk round(%appcostl/0.8)
if %appcostd > 0 then evalmath appcostk round(%appcostd/0.7216)
goto %formtype

VarBlank:
var sourcetype 10-unknown (check)
var wtype1 ERROR
var wtype2 ERROR
var wtrains ERROR
var wtrains2 ERROR
var volume ERROR
var composition ERROR
var brawltype ERROR
var range ERROR
var rangefactor ERROR
var puncture ERROR
var slice ERROR
var impact ERROR
var fire ERROR
var cold ERROR
var electric ERROR
var foi ERROR
var balance ERROR
var power ERROR
var atype ERROR
var covershead no
var coverseyes no
var coversneck no
var coverschest no
var coversabdomen no
var coversback no
var coversarms no
var covershands no
var coverslegs no
var area ERROR
var stype ERROR
var sizefactor ERROR
var smin ERROR
var smax ERROR
var shdhindrance ERROR
var mhindrance ERROR
var shindrance ERROR
var slicep ERROR
var slicea ERROR
var puncturep ERROR
var puncturea ERROR
var impactp ERROR
var impacta ERROR
var firep ERROR
var firea ERROR
var coldp ERROR
var colda ERROR
var electricp ERROR
var electrica ERROR
var construction ERROR
var sumd ERROR
var sumpd ERROR
var sumed ERROR
var meand ERROR
var meanpd ERROR
var meaned ERROR
var sumshield ERROR
var sumpro ERROR
var sumabs ERROR
var sumpdef ERROR
var sumedef ERROR
var sumdef ERROR
var sumhin ERROR
var meanpro ERROR
var meanabs ERROR
var meanpdef ERROR
var meanedef ERROR
var meanhin ERROR
var qpointsw ERROR
var qpointss ERROR
var qpointsa ERROR
var qpointsww ERROR
var qpointssw ERROR
var qpointsaw ERROR
var ilsize ERROR
var iwsize ERROR
var ihsize ERROR
var wearloc -
return

weapon1:
if %range = pole then var rangefactor 1
if %range = melee then var rangefactor 0
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %sumed_weight*%sumed + %foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction + %rangefactor),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

if %wtype2 = ERROR then
{
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
echo
echo Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %range-ranged %wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype1	%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype1	%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %range-ranged %wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end
}
if %wtype2 != ERROR then
{
var range ranged
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
echo
echo Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %range-ranged %wtype2/%wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype2/%wtype1	%wtrains2/%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype2/%wtype1	%wtrains2/%wtrains	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction) + range bonus(%rangefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Melee Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %range-ranged %wtype2/%wtype1 (%weight stones): damage: %puncture/%slice/%impact, force/balance/power: %foi/%balance/%power, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end
}

weapon2:
var puncture N/A
var slice N/A
var impact N/A
var fire N/A
var cold N/A
var electric N/A
var sumd N/A
var sumpd N/A
var sumed N/A
var meand N/A
var meanpd N/A
var meaned N/A
if (matchre ("%wtype1", "(HX|LX)")) then var wtrains 16-Xbow
if (matchre ("%wtype1", "(HX|LX)")) then var drawstrength N/A
if (matchre ("%wtype1", "(HX|LX)")) then var adjdraw N/A
if (matchre ("%wtype1", "(bow)")) then var wtrains 14-bow
if (matchre ("%wtype1", "(sling)")) then var wtrains 12-sling
if (matchre ("%wtype1", "(sling)")) then var drawstrength N/A
if (matchre ("%wtype1", "(sling)")) then var adjdraw N/A
evalmath qpointsw round((%foi_weight*%foi + %balance_weight*%balance + %power_weight*%power + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Ranged Weapon Quality: %qpointsw (%foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction))
echo
echo Ranged Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %wtype1 (%weight stones): force/balance/power: %foi/%balance/%power, draw strength: %drawstrength, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%wtype1	%wtrains	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%wtype1	%wtrains	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ranged Weapon Quality: %qpointsw (%foi_weight*force(%foi) + %balance_weight*balance(%balance) + %power_weight*power(%power) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ranged Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %wtype1 (%weight stones): force/balance/power: %foi/%balance/%power, draw strength: %drawstrength, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon3:
var foi N/A
var balance N/A
var power N/A
var drawstrength N/A
var adjdraw N/A
if (matchre ("%tap", "(bolts?|quadrellos?|quarrels?|pellets?|pulzones?)")) then var ammotype 25-Xbow
if (matchre ("%tap", "(bolts?|quadrellos?|quarrels?|pellets?|pulzones?)")) then var ammoskill 17-Xbow
if (matchre ("%tap", "(arrows?)")) then var ammotype 22-bow
if (matchre ("%tap", "(arrows?)")) then var ammoskill 15-bow
if (matchre ("%tap", "(bullets?|clumps?|lumps?|rocks?|shards?)")) then var ammotype 18-sling
if (matchre ("%tap", "(bullets?|clumps?|lumps?|rocks?|shards?)")) then var ammoskill 13-sling
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %sumed_weight*%sumed + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Total Ammo Damage: %sumd (mean: %meand)
echo Total Physical Damage: %sumpd (mean: %meanpd)
echo Total Elemental Damage: %sumed (mean: %meaned)
echo
echo Ammo Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
echo
echo Ammo Quality/Weight: %qpointsww (ammo quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %ammoskill ammo (%weight stones): damage: %puncture/%slice/%impact, force: %foi, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%ammotype ammo	%ammoskill ammo	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%ammotype ammo	%ammoskill ammo	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%foi	%balance	%power	%drawstrength	%adjdraw	%sumd	%sumpd	%sumed	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Ammo Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Damage: %sumpd (mean: %meanpd)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Damage: %sumed (mean: %meaned)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ammo Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %sumed_weight*elemental damage(%sumed) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Ammo Quality/Weight: %qpointsww (ammo quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %ammoskill ammo (%weight stones): damage: %puncture/%slice/%impact, force: %foi, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon4:
var fire N/A
var cold N/A
var electric N/A
var sumed N/A
var meaned N/A
var balance N/A
var power N/A
if %impact != ERROR then
{
evalmath sumd %puncture + %slice + %impact
evalmath sumpd %puncture + %slice + %impact
evalmath meand round((%sumpd/3),1)
evalmath meanpd round((%sumpd/3),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %foi_weight*%foi + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)
}
if %impact = ERROR then
{
var impact N/A
evalmath sumd %puncture + %slice
evalmath sumpd %puncture + %slice
evalmath meand round((%sumpd/2),1)
evalmath meanpd round((%sumpd/2),1)
evalmath qpointsw round((%sumpd_weight*%sumpd + %foi_weight*%foi + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)
}
echo
echo Stats for %tap
echo
echo Total Weapon Damage: %sumd (mean: %meand)
echo
echo Brawling Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
echo
echo Brawling Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: brawling-%brawltype (%weight stones): damage: %puncture/%slice/%impact, construction: %construction
echo
echo %appcostk	%sourcetype	%source	15-brawl-%brawltype	11-brawl-%brawltype	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	15-brawl-%brawltype	11-brawl-%brawltype	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Weapon Damage: %sumd (mean: %meand)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Brawling Weapon Quality: %qpointsw (%sumpd_weight*physical damage(%sumpd) + %foi_weight*force(%foi) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Brawling Weapon Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: brawling-%brawltype (%weight stones): damage: %puncture/%slice/%impact, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

weapon5:
var puncture N/A
var slice N/A
var impact N/A
var fire N/A
var cold N/A
var electric N/A
var sumd N/A
var sumpd N/A
var sumed N/A
var meand N/A
var meanpd N/A
var meaned N/A
var foi N/A
evalmath qpointsw round((%balance_weight*%balance + %construction_weight*%construction),1)
evalmath qpointsww round((%qpointsw/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Parry Stick Quality: %qpointsw (%balance_weight*balance(%balance) + %construction_weight*construction(%construction))
echo
echo Parry Stick Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: parry stick (%weight stones): balance: %balance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	15-brawl-1parry	11-brawl-1parry	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	15-brawl-1parry	11-brawl-1parry	%range	%composition	%noun	%tap	%qpointsw	%qpointsww	%weight	%sumd	%sumpd	%sumed	%foi	%balance	%power	%construction	%puncture	%slice	%impact	%fire	%cold	%electric	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Parry Stick Quality: %qpointsw (%balance_weight*balance(%balance) + %construction_weight*construction(%construction))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Parry Stick Quality/Weight: %qpointsww (weapon quality(%qpointsw) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: parry stick (%weight stones): balance: %balance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

shield:
if %stype = large then var sizefactor 2
if %stype = medium then var sizefactor 1
if %stype = small then var sizefactor 0
evalmath sumshield %smin + %smax
evalmath sumd %puncture + %slice + %impact + %fire + %cold + %electric
evalmath sumpd %puncture + %slice + %impact
evalmath sumed %fire + %cold + %electric
evalmath meand round((%sumd/6),1)
evalmath meanpd round((%sumpd/3),1)
evalmath meaned round((%sumed/3),1)
evalmath qpointss round((%smin_weight*%smin + %smax_weight*%smax + %construction_weight*%construction - %shdhindrance_weight*%shdhindrance - %sizefactor),1)
evalmath qpointssw round((%qpointss/(%weight_weight*%weight)),1)

echo
echo Stats for %tap
echo
echo Total Shield Protection: %sumshield
echo
echo Shield Quality: %qpointss (%smin_weight*min.protection(%smin) + %smax_weight*max.protection(%smax) + %construction_weight*construction(%construction) - %shdhindrance_weight*hindrance(%shdhindrance) - size factor(%sizefactor))
echo
echo Shield Quality/Weight: %qpointssw (shield quality(%qpointss) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %stype shield (%weight stones): protection: %smin/%smax, hindrance: %shdhindrance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%stype	%composition	%noun	%tap	%qpointss	%qpointssw	%weight	%sumshield	%smin	%smax	%shdhindrance	%construction	%impact	%balance	%power	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%stype	%composition	%noun	%tap	%qpointss	%qpointssw	%weight	%sumshield	%smin	%smax	%shdhindrance	%construction	%impact	%balance	%power	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Shield Protection: %sumshield
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Shield Quality: %qpointss (%smin_weight*min.protection(%smin) + %smax_weight*max.protection(%smax) + %construction_weight*construction(%construction) - %shdhindrance_weight*hindrance(%shdhindrance) - size factor(%sizefactor))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Shield Quality/Weight: %qpointssw (shield quality(%qpointss) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %stype shield (%weight stones): protection: %smin/%smax, hindrance: %shdhindrance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

armor:
evalmath sumpro %puncturep + %slicep + %impactp + %firep + %coldp + %electricp
evalmath sumabs %puncturea + %slicea + %impacta + %firea + %colda + %electrica
evalmath sumpdef %puncturep + %slicep + %impactp + %puncturea + %slicea + %impacta
evalmath sumedef %firep + %coldp + %electricp + %firea + %colda + %electrica
evalmath sumdef %sumpro + %sumabs
evalmath sumhin %mhindrance + %shindrance
evalmath meanpro round((%sumpro/6),1)
evalmath meanabs round((%sumabs/6),1)
evalmath meanpdef round((%sumpdef/6),1)
evalmath meanedef round((%sumedef/6),1)
evalmath meanhin round((%sumhin/2),1)
evalmath qpointsa round((%sumpro_weight*%sumpro + %sumabs_weight*%sumabs + %sumpdef_weight*%sumpdef + %sumedef_weight*%sumedef + %construction_weight*%construction - %mhindrance_weight*%mhindrance - %shindrance_weight*%shindrance),1)
evalmath qpointsaw round((%qpointsa/(%weight_weight*%weight)),1)
if %covershead = yes && %coverseyes = yes && %coversneck = yes then var area 01-head/eyes/neck
if %covershead = yes && %coverseyes = yes && %coversneck = no then var area 02-head/eyes
if %covershead = yes && %coverseyes = no && %coversneck = yes then var area 03-head/neck
if %covershead = yes && %coverseyes = no && %coversneck = no then var area 04-head
if %covershead = no && %coverseyes = yes && %coversneck = no then var area 05-eyes
if %coversneck = yes && %coverschest = yes && %coversback = yes then var area 06-neck/chest/back
if %covershead = no && %coverseyes = no && %coversneck = yes && %coverschest = no && %coversback = no then var area 07-neck
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = yes && %coverslegs = yes then var area 08-torso/arms/legs
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = yes && %coverslegs = no then var area 09-torso/arms
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = no && %coverslegs = yes then var area 10-torso/legs
if %coverschest = yes && %coversabdomen = yes && %coversback = yes && %coversarms = no && %coverslegs = no then var area 11-torso
if %coverschest = yes && %coversabdomen = no && %coversback = yes && %coversarms = no && %coverslegs = no then var area 12-chest/back
if %coverschest = yes && %coversabdomen = no && %coversback = no && %coversarms = no && %coverslegs = no then var area 13-chest
if %coverschest = no && %coversabdomen = yes && %coversback = no && %coversarms = no && %coverslegs = no then var area 14-abdomen
if %coverschest = no && %coversabdomen = no && %coversback = yes && %coversarms = no && %coverslegs = no then var area 15-back
if %coversarms = yes && %covershands = yes then var area 16-arms/hands
if %coverschest = no && %coversarms = yes && %covershands = no then var area 17-arms
if %coverschest = no && %coversarms = no && %covershands = yes then var area 18-hands
if %coverschest = no && %coversarms = no && %coverslegs = yes then var area 19-legs

echo
echo Stats for %tap
echo
echo Total Armor Protection + Absorption: %sumdef
echo Total Armor Protection: %sumpro (mean: %meanpro)
echo Total Armor Absorption: %sumabs (mean: %meanabs)
echo Total Physical Defense: %sumpdef (mean: %meanpdef)
echo Total Elemental Defense: %sumedef (mean: %meanedef)
echo Total Armor Hindrance: %sumhin (mean: %meanhin)
echo
echo Armor Quality: %qpointsa (%sumpro_weight*total protection(%sumpro) + %sumabs_weight*total absorption(%sumabs) + %sumpdef_weight*total physical defense(%sumpdef) + %sumedef_weight*total elemental defense(%sumedef) + %construction_weight*construction(%construction) - %mhindrance_weight*maneuvering hindrance(%mhindrance) - %shindrance_weight*stealth hindrance(%shindrance))
echo
echo Armor Quality/Weight: %qpointsaw (armor quality(%qpointsa) / (%weight_weight*weight(%weight)))
echo
echo OOC Numeric Appraisal: %atype (%weight stones): puncture: %puncturep/%puncturea, slice: %slicep/%slicea, impact: %impactp/%impacta, fire: %firep/%firea, cold: %coldp/%colda, electric: %electricp/%electrica, hindrance: %mhindrance/%shindrance, construction: %construction
echo
echo %appcostk	%sourcetype	%source	%atype	%area	%composition	%noun	%tap	%qpointsa	%qpointsaw	%weight	%sumdef	%sumpro	%sumabs	%sumpdef	%sumedef	%mhindrance	%shindrance	%construction	%sumhin	%puncturep	%puncturea	%slicep	%slicea	%impactp	%impacta	%firep	%firea	%coldp	%colda	%electricp	%electrica	$date	%source
put #log >ItemStats-%logtype-$charactername.txt %appcostk	%sourcetype	%source	%atype	%area	%composition	%noun	%tap	%qpointsa	%qpointsaw	%weight	%sumdef	%sumpro	%sumabs	%sumpdef	%sumedef	%mhindrance	%shindrance	%construction	%sumhin	%puncturep	%puncturea	%slicep	%slicea	%impactp	%impacta	%firep	%firea	%coldp	%colda	%electricp	%electrica	$date	%source
put #log >ItemStatsReader-%logtype-$charactername.txt Stats for %tap
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Protection + Absorption: %sumdef
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Protection: %sumpro (mean: %meanpro)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Absorption: %sumabs (mean: %meanabs)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Physical Defense: %sumpdef (mean: %meanpdef)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Elemental Defense: %sumedef (mean: %meanedef)
put #log >ItemStatsReader-%logtype-$charactername.txt Total Armor Hindrance: %sumhin (mean: %meanhin)
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Armor Quality: %qpointsa (%sumpro_weight*total protection(%sumpro) + %sumabs_weight*total absorption(%sumabs) + %sumpdef_weight*total physical defense(%sumpdef) + %sumedef_weight*total elemental defense(%sumedef) + %construction_weight*construction(%construction) - %mhindrance_weight*maneuvering hindrance(%mhindrance) - %shindrance_weight*stealth hindrance(%shindrance))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt Armor Quality/Weight: %qpointsaw (armor quality(%qpointsa) / (%weight_weight*weight(%weight)))
put #log >ItemStatsReader-%logtype-$charactername.txt @
put #log >ItemStatsReader-%logtype-$charactername.txt OOC Numeric Appraisal: %atype (%weight stones): puncture: %puncturep/%puncturea, slice: %slicep/%slicea, impact: %impactp/%impacta, fire: %firep/%firea, cold: %coldp/%colda, electric: %electricp/%electrica, hindrance: %mhindrance/%shindrance, construction: %construction
put #log >ItemStatsReader-%logtype-$charactername.txt @
echo
goto end

return:
return

end:
put #class racial on
put #play ScriptEnd
put #flash
put #parse SCRIPT DONE
exit