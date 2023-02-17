gh_buff.start:
## SET THESE VARIABLES
## set the trace variable to 0 if you're a Paladin AND you want to use Glyph of Mana
## The spell abbreviations to use have to be the same as the variable for the spell fron the trigger
## Make sure you have the same number of items in each of the spell, prep, and charge.total variables
## If you don't want to use a cambrinth, set the cambrinth variable to NO
## If you want to harness, set the harness variable to YES, and the increment variable to a number
## The amount to charge each pulse
## Make sure the amount of harness.total is a factor of the increment.  It is the total amount to harness
## The prep.message variable is your spell prep messaging.  Just paste in enough of the beginning messaging
## so that the script will catch it

if $guild = Bard then
{
var buff.trace 1
var buff.spell REPR|RAGE|DRUM
var buff.prep PREP1|PREP2|PREP3
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell DRUM|HARMONY|RAGE|EASE|MIS|ECRY|LW|MAF|NAME|REPR
#var buff.prep 15|30|15|1|15|1|6|5|30|5
#var buff.charge.total 100|100|100|98|100|100|110|101|100|100
var buff.charge.increment 5
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 10
var buff.cambrinth $cambrinth chain
var buff.worn YES
var buff.remove YES
var buff.harness NO
var buff.prep.message You trace a curving sigil
var buff.continue no
var buff.held NO
var buff.manalevel 9
#var buff.ba.thrown no
put #var minprep 5
}

if $guild = Cleric then
{
var buff.trace 1
var buff.spell Center|Bless|MPP
var buff.prep 5|5|5
var buff.charge.total 10|10|10
#var buff.spell Spell1|Spell2
#var buff.prep 0
#var buff.charge.total 10|10|10
var buff.charge.increment 10
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 0
var buff.cambrinth $cambrinth
var buff.worn NO
var buff.remove NO
var buff.harness NO
var buff.prep.message You begin chanting a prayer
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}

if $guild = Empath then
{
var buff.trace 1
var buff.spell SPELL1|SPELL2|SPELL3
var buff.prep PREP1|PREP2|PREP3
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell REFRESH|GOL|AGS|MEF|VIGOR|EASE|TRANQUILITY|BS|FP|CD|INNOCENCE|AWAKEN|LW|MAF|IC
#var buff.prep 1|6|5|5|17|1|15|1|13|14|5|15|6|5|5
#var buff.charge.total 102|101|100|100|100|98|100|100|100|99|95|100|110|101|100
var buff.charge.increment 10
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 10
var buff.cambrinth $cambrinth
var buff.worn YES
var buff.remove NO
var buff.harness NO
var buff.prep.message With tense movements you prepare your body for
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}

if $guild = Moon Mage then
{
var buff.trace 1
var buff.spell SPELL1|SPELL2|SPELL3
var buff.prep PREP1|PREP2|PREP3
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell EASE|LW|MAF
#var buff.prep 1|6|5
#var buff.charge.total 98|110|101
var buff.charge.increment 10
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 10
var buff.cambrinth $cambrinth
var buff.worn YES
var buff.remove NO
var buff.harness NO
var buff.prep.message You raise your arms skyward, chanting the equation of the
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}

if $guild = Necromancer then
{
var buff.trace 1
var buff.spell SPELL1|SPELL2|SPELL3
var buff.prep PREP1|PREP2|PREP3
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell EASE|LW|MAF
#var buff.prep 1|6|5
#var buff.charge.total 98|110|101
var buff.charge.increment 10
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 10
var buff.cambrinth $cambrinth
var buff.worn YES
var buff.remove NO
var buff.harness NO
var buff.prep.message Necromancer spell prep goes here
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}

if $guild = Paladin then
{
var buff.trace 1
var buff.spell SPELL1|SPELL2|SPELL3|SPELL4|SPELL5
var buff.prep PREP1|PREP2|PREP3|PREP4|PREP5
var buff.charge.total TOTAL1|TOTAL2|TOTAL3|TOTAL4|TOTAL5
#var buff.spell CLARITY|COURAGE|DA|DIG|HES|MO|RUE|RW|SR|EASE|AS|BA|LW|MAF|AA|SP
#var buff.prep 15|5|15|5|1|15|15|5|5|1|15|10|6|5|1|15
#var buff.charge.total 100|100|100|100|100|100|100|100|100|98|100|100|110|101|100|100
var buff.charge.increment 5
var buff.harness.total TOTAL1|TOTAL2|TOTAL3|TOTAL4|TOTAL5
var buff.harness.increment 5
var buff.cambrinth $cambrinth
var buff.worn YES
var buff.remove NO
var buff.harness NO
var buff.prep.message You begin chanting a prayer to invoke
var buff.continue no
var buff.held NO
var buff.manalevel 10
var buff.ba.thrown yes
put #var minprep 20
}

if $guild = Ranger then
{
var buff.trace 1
var buff.spell SOTT|MAF|HOL
var buff.prep 10|10|10
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell COTC|STW|SOTT|WOTP|EASE|HOL|INST|EM|MON|LW|EY|MAF
#var buff.prep 15|15|10|5|1|1|1|20|30|6|5|5|
#var buff.charge.total 109|109|109|109|98|109|109|109|109|110|109|101
var buff.charge.increment 10
var buff.harness.total 10|10|10
var buff.harness.increment 10
var buff.cambrinth NO
var buff.worn YES
var buff.remove NO
var buff.harness YES
var buff.prep.message With tense movements you (are|arm|prepare) your body for the
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}

if $guild = Warrior Mage then
{
var buff.trace 1
var buff.spell SPELL1|SPELL2|SPELL3
var buff.prep PREP1|PREP2|PREP3
var buff.charge.total TOTAL1|TOTAL2|TOTAL3
#var buff.spell SUBSTRATUM|SUF|SW|TW|YS|EASE|LW|MAF|ES|VOI
#var buff.prep 5|5|5|5|15|1|6|5|1|15
#var buff.charge.total 100|100|100|100|100|98|110|101|100|100
var buff.charge.increment 10
var buff.harness.total TOTAL1|TOTAL2|TOTAL3
var buff.harness.increment 10
var buff.cambrinth $cambrinth
var buff.worn YES
var buff.remove NO
var buff.harness NO
var buff.prep.message You trace a careful sigil
var buff.continue no
var buff.held NO
var buff.manalevel 10
#var buff.ba.thrown no
put #var minprep 20
}


## Don't edit below here
var gh.counter %c
gosub buff.start
counter set %gh.counter
return

gh_buff.include:
include buff.cmd