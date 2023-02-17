put #var patient %1
put #var customer %1
put #var save
action var canshift yes when ^You feel your ability to Shift return to you|^You sense that your ability to alter others' forms has recovered|^You sense that your ability to shift others' forms is fully intact
action var canshift no when ^You feel unfocused and off-center|^You don't feel as if you've sufficiently recovered from the previous shift
echo
echo Select shift:
echo
echo 1. hair
echo 2. eyes
echo 3. skin
echo 4. feature
echo 5. face
echo 6. nose
echo 7. body
echo 8. age
echo
matchre HairShift ^1$
matchre EyeShift ^2$
matchre SkinShift ^3$
matchre FeatureShift ^4$
matchre FaceShift ^5$
matchre NoseShift ^6$
matchre BodyShift ^7$
matchre AgeShift ^8$
matchwait

HairShift:
echo
echo Select hair shift:
echo
echo 1. facial hair
echo 2. hair length
echo 3. hair color
echo 4. hair streak
echo 5. hair texture
echo
matchre Beard ^1$
matchre HairLength ^2$
matchre HairColor ^3$
matchre HairStreak ^4$
matchre HairTexture ^5$
matchwait

Beard:
var type beard
var saytype Your facial hair is now
echo
echo Select facial hair length:
echo
echo 1. longer
echo 2. shorter
echo 3. freeze (must be clean shaven)
echo
matchre BeardLonger ^1$
matchre BeardShorter ^2$
matchre BeardFreeze ^3$
matchwait

BeardLonger:
var option longer
goto Shift
BeardShorter:
var option shorter
goto Shift
BeardFreeze:
var option freeze
goto Shift

HairLength:
var type hair length
var saytype Your hair is now
echo
echo Select hair length:
echo
echo 1. shorter
echo 2. longer
echo
matchre HairShorter ^1$
matchre HairLonger ^2$
matchwait

HairLonger:
var option longer
goto Shift
HairShorter:
var option shorter
goto Shift

HairColor:
var type hair color
var saytype Your hair color is now
echo
echo Select hair color:
echo
echo 1. grey		17. strawberry
echo 2. white		18. auburn
echo 3. snow-white		19. russet
echo 4. silver		20. golden brown
echo 5. platinum		21. mouse brown
echo 6. silver-gilt		22. light brown
echo 7. flaxen		23. brunette
echo 8. blonde		24. brown
echo 9. ash-blonde		25. dark brown
echo 10. honey		26. black
echo 11. golden		27. blue-black
echo 12. amber		28. bright green
echo 13. bright orange		29. deep blue
echo 14. red		30. deep purple
echo 15. ginger		31. lavender
echo 16. red-gold		32. original
echo
matchre GreyHair ^1$
matchre WhiteHair ^2$
matchre SnowwhiteHair ^3$
matchre SilverHair ^4$
matchre PlatinumHair ^5$
matchre SilvergiltHair ^6$
matchre FlaxenHair ^7$
matchre BlondeHair ^8$
matchre AshblondeHair ^9$
matchre HoneyHair ^10$
matchre GoldenHair ^11$
matchre AmberHair ^12$
matchre BrightOrangeHair ^13$
matchre RedHair ^14$
matchre GingerHair ^15$
matchre RedgoldHair ^16$
matchre StrawberryHair ^17$
matchre AuburnHair ^18$
matchre RussetHair ^19$
matchre GoldenBrownHair ^20$
matchre MouseBrownHair ^21$
matchre LightBrownHair ^22$
matchre BrunetteHair ^23$
matchre BrownHair ^24$
matchre DarkBrownHair ^25$
matchre BlackHair ^26$
matchre BlueblackHair ^27$
matchre BrightGreenHair ^28$
matchre DeepBlueHair ^29$
matchre DeepPurpleHair ^30$
matchre LavenderHair ^31$
matchre OriginalHair ^32$
matchwait

GreyHair:
var option grey
goto Shift
WhiteHair:
var option white
goto Shift
SnowwhiteHair:
var option snow-white
goto Shift
SilverHair:
var option silver
goto Shift
PlatinumHair:
var option platinum
goto Shift
SilvergiltHair:
var option silver-gilt
goto Shift
FlaxenHair:
var option flaxen
goto Shift
BlondeHair:
var option blonde
goto Shift
AshblondeHair:
var option ash-blonde
goto Shift
HoneyHair:
var option honey
goto Shift
GoldenHair:
var option golden
goto Shift
AmberHair:
var option amber
goto Shift
BrightOrangeHair:
var option bright orange
goto Shift
RedHair:
var option red
goto Shift
GingerHair:
var option ginger
goto Shift
RedgoldHair:
var option red-gold
goto Shift
StrawberryHair:
var option strawberry
goto Shift
AuburnHair:
var option auburn
goto Shift
RussetHair:
var option russet
goto Shift
GoldenBrownHair:
var option golden brown
goto Shift
MouseBrownHair:
var option mouse brown
goto Shift
LightBrownHair:
var option light brown
goto Shift
BrunetteHair:
var option brunette
goto Shift
BrownHair:
var option brown
goto Shift
DarkBrownHair:
var option dark brown
goto Shift
BlackHair:
var option black
goto Shift
BlueblackHair:
var option blue-black
goto Shift
BrightGreenHair:
var option bright green
goto Shift
DeepBlueHair:
var option deep blue
goto Shift
DeepPurpleHair:
var option deep purple
goto Shift
LavenderHair:
var option lavender
goto Shift
OriginalHair:
var option original
goto Shift

HairStreak:
var type hair streak
var saytype Your hair streaks are now
echo
echo Select hair streak color:
echo
echo 1. grey		18. auburn
echo 2. white		19. russet
echo 3. snow-white		20. golden brown
echo 4. silver		21. mouse brown
echo 5. platinum		22. light brown
echo 6. silver-gilt		23. brunette
echo 7. flaxen		24. brown
echo 8. blonde		25. dark brown
echo 9. ash-blonde		26. black
echo 10. honey		27. blue-black
echo 11. golden		28. bright green
echo 12. amber		29. deep blue
echo 13. bright orange		30. deep purple
echo 14. red		31. lavender
echo 15. ginger		32. standard
echo 16. red-gold		33. original
echo 17. strawberry		34. absent
echo
matchre GreyStreak ^1$
matchre WhiteStreak ^2$
matchre SnowwhiteStreak ^3$
matchre SilverStreak ^4$
matchre PlatinumStreak ^5$
matchre SilvergiltStreak ^6$
matchre FlaxenStreak ^7$
matchre BlondeStreak ^8$
matchre AshblondeStreak ^9$
matchre HoneyStreak ^10$
matchre GoldenStreak ^11$
matchre AmberStreak ^12$
matchre BrightOrangeStreak ^13$
matchre RedStreak ^14$
matchre GingerStreak ^15$
matchre RedgoldStreak ^16$
matchre StrawberryStreak ^17$
matchre AuburnStreak ^18$
matchre RussetStreak ^19$
matchre GoldenBrownStreak ^20$
matchre MouseBrownStreak ^21$
matchre LightBrownStreak ^22$
matchre BrunetteStreak ^23$
matchre BrownStreak ^24$
matchre DarkBrownStreak ^25$
matchre BlackStreak ^26$
matchre BlueblackStreak ^27$
matchre BrightGreenStreak ^28$
matchre DeepBlueStreak ^29$
matchre DeepPurpleStreak ^30$
matchre LavenderStreak ^31$
matchre StandardStreak ^32$
matchre OriginalStreak ^33$
matchre AbsentStreak ^34$
matchwait

GreyStreak:
var option grey
goto Shift
WhiteStreak:
var option white
goto Shift
SnowwhiteStreak:
var option snow-white
goto Shift
SilverStreak:
var option silver
goto Shift
PlatinumStreak:
var option platinum
goto Shift
SilvergiltStreak:
var option silver-gilt
goto Shift
FlaxenStreak:
var option flaxen
goto Shift
BlondeStreak:
var option blonde
goto Shift
AshblondeStreak:
var option ash-blonde
goto Shift
HoneyStreak:
var option honey
goto Shift
GoldenStreak:
var option golden
goto Shift
AmberStreak:
var option amber
goto Shift
BrightOrangeStreak:
var option bright orange
goto Shift
RedStreak:
var option red
goto Shift
GingerStreak:
var option ginger
goto Shift
RedgoldStreak:
var option red-gold
goto Shift
StrawberryStreak:
var option strawberry
goto Shift
AuburnStreak:
var option auburn
goto Shift
RussetStreak:
var option russet
goto Shift
GoldenBrownStreak:
var option golden brown
goto Shift
MouseBrownStreak:
var option mouse brown
goto Shift
LightBrownStreak:
var option light brown
goto Shift
BrunetteStreak:
var option brunette
goto Shift
BrownStreak:
var option brown
goto Shift
DarkBrownStreak:
var option dark brown
goto Shift
BlackStreak:
var option black
goto Shift
BlueblackStreak:
var option blue-black
goto Shift
BrightGreenStreak:
var option bright green
goto Shift
DeepBlueStreak:
var option deep blue
goto Shift
DeepPurpleStreak:
var option deep purple
goto Shift
LavenderStreak:
var option lavender
goto Shift
StandardStreak:
var option standard
goto Shift
OriginalStreak:
var option original
goto Shift
AbsentStreak:
var option absent
goto Shift

HairTexture:
var type hair texture
var saytype Your hair texture is now
echo
echo Select hair texture:
echo
echo 1. fine
echo 2. thick
echo 3. curly
echo 4. wavy
echo 5. straight
echo 6. peppered
echo 7. original
echo
matchre FineHairTexture ^1$
matchre ThickHairTexture ^2$
matchre CurlyHairTexture ^3$
matchre WavyHairTexture ^4$
matchre StraightHairTexture ^5$
matchre PepperedHairTexture ^6$
matchre OriginalHairTexture ^7$
matchwait

FineHairTexture:
var option fine
goto Shift
ThickHairTexture:
var option thick
goto Shift
CurlyHairTexture:
var option curly
goto Shift
WavyHairTexture:
var option wavy
goto Shift
StraightHairTexture:
var option straight
goto Shift
PepperedHairTexture:
var option peppered
goto Shift
OriginalHairTexture:
var option original
goto Shift

EyeShift:
echo
echo Select eye shift:
echo
echo 1. left eye
echo 2. right eye
echo 3. both eyes
echo 4. eye shape
echo
matchre LeftEye ^1$
matchre RightEye ^2$
matchre BothEyes ^3$
matchre EyeShape ^4$
matchwait

LeftEye:
var type left eye
var saytype Your left eye is now
goto EyeColors
RightEye:
var type right eye
var saytype Your right eye is now
goto EyeColors
BothEyes:
var type both eyes
var saytype Your eye color is now
goto EyeColors

EyeColors:
echo
echo Select eye color:
echo
echo 1. blue		17. ale-brown
echo 2. gold		18. brown
echo 3. crystal blue		19. dark
echo 4. sapphire		20. dark brown
echo 5. turquoise		21. black
echo 6. blue-green		22. silver
echo 7. emerald		23. milky white
echo 8. crystal green		24. steely grey
echo 9. moss-green		25. stormy grey
echo 10. leaf-green		26. grey
echo 11. green		27. blue-grey
echo 12. jade		28. violet
echo 13. hazel		29. red
echo 14. topaz		30. original
echo 15. milky blue		31. clear colored
echo
matchre BlueEyes ^1$
matchre GoldEyes ^2$
matchre CrystalBlueEyes ^3$
matchre SapphireEyes ^4$
matchre TurquoiseEyes ^5$
matchre BluegreenEyes ^6$
matchre EmeraldEyes ^7$
matchre CrystalGreenEyes ^8$
matchre MossgreenEyes ^9$
matchre LeafgreenEyes ^10$
matchre GreenEyes ^11$
matchre JadeEyes ^12$
matchre HazelEyes ^13$
matchre TopazEyes ^14$
matchre MilkyBlueEyes ^15$
matchre AmberEyes ^16$
matchre AlebrownEyes ^17$
matchre BrownEyes ^18$
matchre DarkEyes ^19$
matchre DarkBrownEyes ^20$
matchre BlackEyes ^21$
matchre SilverEyes ^22$
matchre MilkyWhiteEyes ^23$
matchre SteelyGreyEyes ^24$
matchre StormyGreyEyes ^25$
matchre GreyEyes ^26$
matchre BluegreyEyes ^27$
matchre VioletEyes ^28$
matchre RedEyes ^29$
matchre OriginalEyes ^30$
matchre ClearColoredEyes ^31$
matchwait

BlueEyes:
var option blue
goto Shift
GoldEyes:
var option gold
goto Shift
CrystalBlueEyes:
var option crystal blue
goto Shift
SapphireEyes:
var option sapphire
goto Shift
TurquoiseEyes:
var option turquoise
goto Shift
BluegreenEyes:
var option blue-green
goto Shift
EmeraldEyes:
var option emerald
goto Shift
CrystalGreenEyes:
var option crystal green
goto Shift
MossgreenEyes:
var option moss-green
goto Shift
LeafgreenEyes:
var option leaf-green
goto Shift
GreenEyes:
var option green
goto Shift
JadeEyes:
var option jade
goto Shift
HazelEyes:
var option hazel
goto Shift
TopazEyes:
var option topaz
goto Shift
MilkyBlueEyes:
var option milky blue
goto Shift
AmberEyes:
var option amber
goto Shift
AlebrownEyes:
var option ale-brown
goto Shift
BrownEyes:
var option brown
goto Shift
DarkEyes:
var option dark
goto Shift
DarkBrownEyes:
var option dark brown
goto Shift
BlackEyes:
var option black
goto Shift
SilverEyes:
var option silver
goto Shift
MilkyWhiteEyes:
var option milky white
goto Shift
SteelyGreyEyes:
var option steely grey
goto Shift
StormyGreyEyes:
var option stormy grey
goto Shift
GreyEyes:
var option grey
goto Shift
BluegreyEyes:
var option blue-grey
goto Shift
VioletEyes:
var option violet
goto Shift
RedEyes:
var option red
goto Shift
OriginalEyes:
var option original
goto Shift
ClearColoredEyes:
var option clear colored
goto Shift

EyeShape:
var type eyes shape
var saytype Your eye shape is now
echo
echo Select your client's race
echo
echo 1. Human, Dwarf, Elf, Halfling, Elothean, Gnome, Kaldar, or Rakash
echo 2. Gor'Tog or S'Kra Mur
echo 3. Prydaen or Rakash in Moonskin
echo
matchre HumanEyes ^1$
matchre GorTogEyes ^2$
matchre PrydaenEyes ^3$
matchwait

HumanEyes:
echo
echo Select eye shape:
echo
echo 1. almond-shaped		11. crossed
echo 2. tilted		12. twitching
echo 3. thick-lashed		13. red-veined
echo 4. gold-flecked		14. beady
echo 5. silver-flecked		15. bulging
echo 6. wide-set		16. tilted almond-shaped (not for Rakash)
echo 7. close-set		17. standard
echo 8. deep-set		18. absent
echo 9. limpid		19. original
echo 10. sparkling
echo
matchre AlmondshapedEyes ^1$
matchre TiltedEyes ^2$
matchre ThicklashedEyes ^3$
matchre GoldfleckedEyes ^4$
matchre SilverfleckedEyes ^5$
matchre WidesetEyes ^6$
matchre ClosesetEyes ^7$
matchre DeepsetEyes ^8$
matchre LimpidEyes ^9$
matchre SparklingEyes ^10$
matchre CrossedEyes ^11$
matchre TwitchingEyes ^12$
matchre RedveinedEyes ^13$
matchre BeadyEyes ^14$
matchre BulgingEyes ^15$
matchre TiltedAlmondshapedEyes ^16$
matchre StandardEyes ^17$
matchre AbsentEyes ^18$
matchre OriginalEyes ^19$
matchwait

GorTogEyes:
echo
echo Select Gor'Tog/S'Kra Mur eye shape:
echo
echo 1. almond-shaped		10. sparkling
echo 2. tilted		11. crossed
echo 3. crinkled		12. twitching
echo 4. gold-flecked		13. red-veined
echo 5. silver-flecked		14. beady
echo 6. wide-set		15. bulging
echo 7. close-set		16. standard
echo 8. deep-set		17. absent
echo 9. limpid		18. original
echo
matchre AlmondshapedEyes ^1$
matchre TiltedEyes ^2$
matchre CrinkledEyes ^3$
matchre GoldfleckedEyes ^4$
matchre SilverfleckedEyes ^5$
matchre WidesetEyes ^6$
matchre ClosesetEyes ^7$
matchre DeepsetEyes ^8$
matchre LimpidEyes ^9$
matchre SparklingEyes ^10$
matchre CrossedEyes ^11$
matchre TwitchingEyes ^12$
matchre RedveinedEyes ^13$
matchre BeadyEyes ^14$
matchre BulgingEyes ^15$
matchre StandardEyes ^16$
matchre AbsentEyes ^17$
matchre OriginalEyes ^18$
matchwait

PrydaenEyes:
echo
echo Select Prydaen/Rakash eye shape:
echo
echo 1. slanted		10. sparkling
echo 2. tilted		11. crossed
echo 3. thick-lashed		12. twitching
echo 4. gold-flecked		13. red-veined
echo 5. silver-flecked		14. beady
echo 6. wide		15. bulging
echo 7. small		16. standard
echo 8. bright		17. original
echo 9. limpid		18. absent
echo
matchre SlantedEyes ^1$
matchre TiltedEyes ^2$
matchre ThicklashedEyes ^3$
matchre GoldfleckedEyes ^4$
matchre SilverfleckedEyes ^5$
matchre WideEyes ^6$
matchre SmallEyes ^7$
matchre BrightEyes ^8$
matchre LimpidEyes ^9$
matchre SparklingEyes ^10$
matchre CrossedEyes ^11$
matchre TwitchingEyes ^12$
matchre RedveinedEyes ^13$
matchre BeadyEyes ^14$
matchre BulgingEyes ^15$
matchre StandardEyes ^16$
matchre OriginalEyes ^17$
matchre AbsentEyes ^18$
matchwait

AbsentEyes:
var option absent
goto Shift
AlmondshapedEyes:
var option almond-shaped
goto Shift
BeadyEyes:
var option beady
goto Shift
BrightEyes:
var option bright
goto Shift
BulgingEyes:
var option bulging
goto Shift
ClosesetEyes:
var option close-set
goto Shift
CrinkledEyes:
var option crinkled
goto Shift
CrossedEyes:
var option crossed
goto Shift
DeepsetEyes:
var option deep-set
goto Shift
GoldfleckedEyes:
var option gold-flecked
goto Shift
LimpidEyes:
var option limpid
goto Shift
OriginalEyes:
var option original
goto Shift
RedveinedEyes:
var option red-veined
goto Shift
SilverfleckedEyes:
var option silver-flecked
goto Shift
SlantedEyes:
var option slanted
goto Shift
SmallEyes:
var option small
goto Shift
SparklingEyes:
var option sparkling
goto Shift
StandardEyes:
var option standard
goto Shift
ThicklashedEyes:
var option thick-lashed
goto Shift
TiltedAlmondshapedEyes:
var option tilted almond-shaped
goto Shift
TiltedEyes:
var option tilted
goto Shift
TwitchingEyes:
var option twitching
goto Shift
WideEyes:
var option wide
goto Shift
WidesetEyes:
var option wide-set
goto Shift

SkinShift:
echo
echo Select skin shift:
echo
echo 1. skin color (for Human, Dwarf, Elf, Halfling, Elothean, Gnome, Kaldar, and Rakash)
echo 2. skin color (for Gor'Tog)
echo 3. scale color (for S'Kra Mur)
echo 4. fur color (for Prydaen)
echo 5. fur color (for Rakash in Moonskin)
echo 6. primary markings (fur markings for Prydaen)
echo 7. primary markings (fur markings for Rakash)
echo 8. secondary color (face-masking for Rakash in moonskin and markings for Prydaen)
echo 9. secondary markings (for Prydaen)
echo
matchre HumanSkin ^1$
matchre GorTogSkin ^2$
matchre ScaleColor ^3$
matchre PrydaenFur ^4$
matchre RakashFur ^5$
matchre PrydaenMarkings ^6$
matchre RakashMarkings ^7$
matchre SecondaryColor ^8$
matchre SecondaryMarkings ^9$
matchwait

HumanSkin:
var type skin color
var saytype Your skin is now
echo
echo Select skin color:
echo
echo 1. pale		10. smooth
echo 2. fair		11. pockmarked
echo 3. tanned		12. leathery
echo 4. rosy		13. weathered
echo 5. copper		14. translucent
echo 6. dark		15. blue-veined
echo 7. dark brown		16. wrinkled
echo 8. black		17. freckled
echo 9. ebon		18. original
echo
matchre PaleSkin ^1$
matchre FairSkin ^2$
matchre TannedSkin ^3$
matchre RosySkin ^4$
matchre CopperSkin ^5$
matchre DarkSkin ^6$
matchre DarkBrownSkin ^7$
matchre BlackSkin ^8$
matchre EbonSkin ^9$
matchre SmoothSkin ^10$
matchre PockmarkedSkin ^11$
matchre LeatherySkin ^12$
matchre WeatheredSkin ^13$
matchre TranslucentSkin ^14$
matchre BlueveinedSkin ^15$
matchre WrinkledSkin ^16$
matchre FreckledSkin ^17$
matchre OriginalSkin ^18$
matchwait

GorTogSkin:
var type skin color
var saytype Your skin is now
echo
echo Select Gor'Tog skin color:
echo
echo 1. pale green		10. smooth
echo 2. green		11. pockmarked
echo 3. olive		12. leathery
echo 4. emerald		13. weathered
echo 5. jade		14. bronze-green
echo 6. dusky olive		15. coppery-green
echo 7. green-grey		16. wrinkled
echo 8. dark green		17. original
echo 9. ebon
echo
matchre PaleGreenSkin ^1$
matchre GreenSkin ^2$
matchre OliveSkin ^3$
matchre EmeraldSkin ^4$
matchre JadeSkin ^5$
matchre DuskyOliveSkin ^6$
matchre GreengreySkin ^7$
matchre DarkGreenSkin ^8$
matchre EbonSkin ^9$
matchre SmoothSkin ^10$
matchre PockmarkedSkin ^11$
matchre LeatherySkin ^12$
matchre WeatheredSkin ^13$
matchre BronzegreenSkin ^14$
matchre CopperygreenSkin ^15$
matchre WrinkledSkin ^16$
matchre OriginalSkin ^17$
matchwait

ScaleColor:
var type scale color
var saytype Your scales are now
echo
echo Select S'Kra Mur scale color:
echo
echo 1. grey		10. silver
echo 2. sorrel		11. white
echo 3. brown		12. mottled
echo 4. green		13. speckled
echo 5. green-grey		14. camouflage
echo 6. olive		15. dark gold-edged
echo 7. black		16. red-gold
echo 8. green-brown		17. original
echo 9. golden
echo
matchre GreySkin ^1$
matchre SorrelSkin ^2$
matchre BrownSkin ^3$
matchre GreenSkin ^4$
matchre GreengreySkin ^5$
matchre OliveSkin ^6$
matchre BlackSkin ^7$
matchre GreenbrownSkin ^8$
matchre GoldenSkin ^9$
matchre SilverSkin ^10$
matchre WhiteSkin ^11$
matchre MottledSkin ^12$
matchre SpeckledSkin ^13$
matchre CamouflageSkin ^14$
matchre DarkGoldedgedSkin ^15$
matchre RedgoldSkin ^16$
matchre OriginalSkin ^17$
matchwait

PrydaenFur:
var type fur color
var saytype Your fur is now
echo
echo Select Prydaen fur color:
echo
echo 1. white		10. black
echo 2. silver		11. calico
echo 3. grey		12. tortoiseshell
echo 4. blue-grey		13. orange
echo 5. sandy		14. creamy white
echo 6. tawny		15. golden
echo 7. sepia		16. dark brown
echo 8. rust-colored		17. original
echo 9. brown
echo
matchre WhiteSkin ^1$
matchre SilverSkin ^2$
matchre GreySkin ^3$
matchre BluegreySkin ^4$
matchre SandySkin ^5$
matchre TawnySkin ^6$
matchre SepiaSkin ^7$
matchre RustcoloredSkin ^8$
matchre BrownSkin ^9$
matchre BlackSkin ^10$
matchre CalicoSkin ^11$
matchre TortoiseshellSkin ^12$
matchre OrangeSkin ^13$
matchre CreamyWhiteSkin ^14$
matchre GoldenSkin ^15$
matchre DarkBrownSkin ^16$
matchre OriginalSkin ^17$
matchwait

RakashFur:
var type fur color
var saytype Your coat while in Moonskin is now
echo
echo Select Rakash fur color:
echo
echo 1. white		10. silvered black
echo 2. silver		11. black
echo 3. grey		12. tri-color
echo 4. blonde		13. brown
echo 5. agouti		14. brindled
echo 6. tan		15. fawn
echo 7. ruddy		16. russet
echo 8. piebald		17. original
echo 9. sable
echo
matchre WhiteSkin ^1$
matchre SilverSkin ^2$
matchre GreySkin ^3$
matchre BlondeSkin ^4$
matchre AgoutiSkin ^5$
matchre TanSkin ^6$
matchre RuddySkin ^7$
matchre PiebaldSkin ^8$
matchre SableSkin ^9$
matchre SilveredBlackSkin ^10$
matchre BlackSkin ^11$
matchre TricolorSkin ^12$
matchre BrownSkin ^13$
matchre BrindledSkin ^14$
matchre FawnSkin ^15$
matchre RussetSkin ^16$
matchre OriginalSkin ^17$
matchwait

AgoutiSkin:
var option agouti
goto Shift
BlackSkin:
var option black
goto Shift
BlondeSkin:
var option blonde
goto Shift
BluegreySkin:
var option blue-grey
goto Shift
BlueveinedSkin:
var option blue-veined
goto Shift
BrindledSkin:
var option brindled
goto Shift
BronzegreenSkin:
var option bronze-green
goto Shift
BrownSkin:
var option brown
goto Shift
CalicoSkin:
var option calico
goto Shift
CamouflageSkin:
var option camouflage
goto Shift
CopperSkin:
var option copper
goto Shift
CopperygreenSkin:
var option coppery-green
goto Shift
CreamyWhiteSkin:
var option creamy white
goto Shift
DarkBrownSkin:
var option dark brown
goto Shift
DarkGoldedgedSkin:
var option dark gold-edged
goto Shift
DarkGreenSkin:
var option dark green
goto Shift
DarkSkin:
var option dark
goto Shift
DuskyOliveSkin:
var option dusky olive
goto Shift
EbonSkin:
var option ebon
goto Shift
EmeraldSkin:
var option emerald
goto Shift
FairSkin:
var option fair
goto Shift
FawnSkin:
var option fawn
goto Shift
FreckledSkin:
var option freckled
goto Shift
GoldenSkin:
var option golden
goto Shift
GreenbrownSkin:
var option green-brown
goto Shift
GreengreySkin:
var option green-grey
goto Shift
GreenSkin:
var option green
goto Shift
GreySkin:
var option grey
goto Shift
JadeSkin:
var option jade
goto Shift
LeatherySkin:
var option leathery
goto Shift
MottledSkin:
var option mottled
goto Shift
OliveSkin:
var option olive
goto Shift
OrangeSkin:
var option orange
goto Shift
OriginalSkin:
var option original
goto Shift
PaleGreenSkin:
var option pale green
goto Shift
PaleSkin:
var option pale
goto Shift
PiebaldSkin:
var option piebald
goto Shift
PockmarkedSkin:
var option pockmarked
goto Shift
RedgoldSkin:
var option red-gold
goto Shift
RosySkin:
var option rosy
goto Shift
RuddySkin:
var option ruddy
goto Shift
RussetSkin:
var option russet
goto Shift
RustcoloredSkin:
var option rust-colored
goto Shift
SableSkin:
var option sable
goto Shift
SandySkin:
var option sandy
goto Shift
SepiaSkin:
var option sepia
goto Shift
SilveredBlackSkin:
var option silvered black
goto Shift
SilverSkin:
var option silver
goto Shift
SmoothSkin:
var option smooth
goto Shift
SorrelSkin:
var option sorrel
goto Shift
SpeckledSkin:
var option speckled
goto Shift
TannedSkin:
var option tanned
goto Shift
TanSkin:
var option tan
goto Shift
TawnySkin:
var option tawny
goto Shift
TortoiseshellSkin:
var option tortoiseshell
goto Shift
TranslucentSkin:
var option translucent
goto Shift
TricolorSkin:
var option tri-color
goto Shift
WeatheredSkin:
var option weathered
goto Shift
WhiteSkin:
var option white
goto Shift
WrinkledSkin:
var option wrinkled
goto Shift

PrydaenMarkings:
var type primary markings
var saytype Your fur's primary markings are now
echo
echo Select Prydaen primary marking:
echo
echo 1. white belly		9. grey points
echo 2. silver belly		10. sepia points
echo 3. grey belly		11. brown points
echo 4. sepia belly		12. black points
echo 5. brown belly		13. glittered
echo 6. black belly		14. standard
echo 7. white points		15. original
echo 8. silver points		16. absent
echo
matchre WhiteBellyMarkings ^1$
matchre SilverBellyMarkings ^2$
matchre GreyBellyMarkings ^3$
matchre SepiaBellyMarkings ^4$
matchre BrownBellyMarkings ^5$
matchre BlackBellyMarkings ^6$
matchre WhitePointsMarkings ^7$
matchre SilverPointsMarkings ^8$
matchre GreyPointsMarkings ^9$
matchre SepiaPointsMarkings ^10$
matchre BrownPointsMarkings ^11$
matchre BlackPointsMarkings ^12$
matchre GlitteredMarkings ^13$
matchre StandardMarkings ^14$
matchre OriginalMarkings ^15$
matchre AbsentMarkings ^16$
matchwait

RakashMarkings:
var type primary markings
var saytype Your coat's primary markings are now
echo
echo Select Rakash primary marking color:
echo
echo 1. white		7. sable
echo 2. silver		8. silvered black
echo 3. grey		9. standard
echo 4. blonde		10. original
echo 5. tan		11. absent
echo 6. ruddy
echo
matchre WhiteMarkings ^1$
matchre SilverMarkings ^2$
matchre GreyMarkings ^3$
matchre BlondeMarkings ^4$
matchre TanMarkings ^5$
matchre RuddyMarkings ^6$
matchre SableMarkings ^7$
matchre SilveredBlackMarkings ^8$
matchre StandardMarkings ^9$
matchre OriginalMarkings ^10$
matchre AbsentMarkings ^11$
matchwait

SecondaryColor:
var type secondary color
var saytype Your secondary color is now
echo
echo Select Prydaen/Rakash secondary color:
echo
echo 1. white		8. silvered black
echo 2. silver		9. black
echo 3. grey		10. sepia
echo 4. blonde		11. standard
echo 5. tan		12. original
echo 6. ruddy		13. absent
echo 7. sable
echo
matchre WhiteMarkings ^1$
matchre SilverMarkings ^2$
matchre GreyMarkings ^3$
matchre BlondeMarkings ^4$
matchre TanMarkings ^5$
matchre RuddyMarkings ^6$
matchre SableMarkings ^7$
matchre SilveredBlackMarkings ^8$
matchre BlackMarkings ^9$
matchre SepiaMarkings ^10$
matchre StandardMarkings ^11$
matchre OriginalMarkings ^12$
matchre AbsentMarkings ^13$
matchwait

SecondaryMarkings:
var type secondary markings
var saytype Your fur's secondary markings are now
echo
echo Select Prydaen secondary markings:
echo
echo 1. stripes
echo 2. spots
echo 3. rosettes
echo 4. marbling
echo 5. standard
echo 6. absent
echo 7. original
echo
matchre StripesMarkings ^1$
matchre SpotsMarkings ^2$
matchre RosettesMarkings ^3$
matchre MarblingMarkings ^4$
matchre StandardMarkings ^5$
matchre AbsentMarkings ^6$
matchre OriginalMarkings ^7$
matchwait

AbsentMarkings:
var option absent
goto Shift
BlackBellyMarkings:
var option black belly
goto Shift
BlackMarkings:
var option black
goto Shift
BlackPointsMarkings:
var option black points
goto Shift
BlondeMarkings:
var option blonde
goto Shift
BrownBellyMarkings:
var option brown belly
goto Shift
BrownPointsMarkings:
var option brown points
goto Shift
GlitteredMarkings:
var option glittered
goto Shift
GreyBellyMarkings:
var option grey belly
goto Shift
GreyMarkings:
var option grey
goto Shift
GreyPointsMarkings:
var option grey points
goto Shift
MarblingMarkings:
var option marbling
goto Shift
OriginalMarkings:
var option original
goto Shift
RosettesMarkings:
var option rosettes
goto Shift
RuddyMarkings:
var option ruddy
goto Shift
SableMarkings:
var option sable
goto Shift
SepiaBellyMarkings:
var option sepia belly
goto Shift
SepiaMarkings:
var option sepia
goto Shift
SepiaPointsMarkings:
var option sepia points
goto Shift
SilverBellyMarkings:
var option silver belly
goto Shift
SilveredBlackMarkings:
var option silvered black
goto Shift
SilverMarkings:
var option silver
goto Shift
SilverPointsMarkings:
var option silver points
goto Shift
SpotsMarkings:
var option spots
goto Shift
StandardMarkings:
var option standard
goto Shift
StripesMarkings:
var option stripes
goto Shift
TanMarkings:
var option tan
goto Shift
WhiteBellyMarkings:
var option white belly
goto Shift
WhiteMarkings:
var option white
goto Shift
WhitePointsMarkings:
var option white points
goto Shift

FeatureShift:
echo
echo Select feature shift:
echo
echo 1. dimples
echo 2. chin (cleft chin)
echo 3. tufted tail (for Prydaen)
echo 4. pale silver underbelly (for S'Kra Mur)
echo 5. ear shape (for all except S'Kra Mur)
echo 6. tail shape (for S'Kra Mur, Prydaen, and Rakash)
echo 7. distinguishing mark
echo
matchre Dimples ^1$
matchre Chin ^2$
matchre TuftedTail ^3$
matchre Belly ^4$
matchre EarShape ^5$
matchre TailShape ^6$
matchre DistinguishingMark ^7$
matchwait

Dimples:
var type dimples
var saytype Your dimples are now
echo
echo Select dimple option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

Chin:
var type chin
var saytype Your cleft chin is now
echo
echo Select cleft chin option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

TuftedTail:
var type tufted tail
var saytype Your tufted tail is now
echo
echo Select tufted tail option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

Belly:
var type belly
var saytype Your pale silver underbelly is now
echo
echo Select pale silver underbelly option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

FeaturePresent:
var option present
goto Shift
FeatureAbsent:
var option absent
goto Shift

EarShape:
var type ear shape
var saytype Your ears are now
echo
echo Select ear shape option:
echo
echo 1. slightly pointed ears
echo 2. pointed ears
echo 3. standard
echo 4. original
echo
matchre SlightlyPointedEars ^1$
matchre PointedEars ^2$
matchre StandardEars ^3$
matchre OriginalEars ^4$
matchwait

SlightlyPointedEars:
var option slightly pointed ears
goto Shift
PointedEars:
var option pointed ears
goto Shift
StandardEars:
var option standard
goto Shift
OriginalEars:
var option original
goto Shift

TailShape:
var type tail shape
var saytype Your tail is now
echo
echo 1. slender tail
echo 2. crooked tail
echo 3. long tail
echo 4. stubby tail
echo 5. thick tail
echo 6. kinked tail
echo 7. straight tail
echo 8. curving tail
echo 9. original
echo
matchre SlenderTail ^1$
matchre CrookedTail ^2$
matchre LongTail ^3$
matchre StubbyTail ^4$
matchre ThickTail ^5$
matchre KinkedTail ^6$
matchre StraightTail ^7$
matchre CurvingTail ^8$
matchre OriginalTail ^9$
matchwait

SlenderTail:
var option slender tail
goto Shift
CrookedTail:
var option crooked tail
goto Shift
LongTail:
var option long tail
goto Shift
StubbyTail:
var option stubby tail
goto Shift
ThickTail:
var option thick tail
goto Shift
KinkedTail:
var option kinked tail
goto Shift
StraightTail:
var option straight tail
goto Shift
CurvingTail:
var option curving tail
goto Shift
OriginalTail:
var option original
goto Shift

DistinguishingMark:
var type distinguishing mark
var saytype Your distinguishing mark is now
echo
echo Select distinguishing mark:
echo
echo 1. elegant arched eyebrows
echo 2. heavy jowls
echo 3. laugh lines
echo 4. missing tooth
echo 5. frown lines around her mouth
echo 6. generous mouth
echo 7. pouting lips
echo 8. standard
echo 9. absent
echo 10. original
echo
matchre ElegantArchedEyebrowsMark ^1$
matchre HeavyJowlsMark ^2$
matchre LaughLinesMark ^3$
matchre MissingToothMark ^4$
matchre FrownLinesAroundHerMouthMark ^5$
matchre GenerousMouthMark ^6$
matchre PoutingLipsMark ^7$
matchre StandardMark ^8$
matchre AbsentMark ^9$
matchre OriginalMark ^10$
matchwait

ElegantArchedEyebrowsMark:
var option elegant arched eyebrows
goto Shift
HeavyJowlsMark:
var option heavy jowls
goto Shift
LaughLinesMark:
var option laugh lines
goto Shift
MissingToothMark:
var option missing tooth
goto Shift
FrownLinesAroundHerMouthMark:
var option frown lines around her mouth
goto Shift
GenerousMouthMark:
var option generous mouth
goto Shift
PoutingLipsMark:
var option pouting lips
goto Shift
StandardMark:
var option standard
goto Shift
AbsentMark:
var option absent
goto Shift
OriginalMark:
var option original
goto Shift

FaceShift:
echo
echo Select face shift:
echo
echo 1. face shape
echo 2. tufted ears (for Prydaen)
echo 3. head crest (flexible ridged crest for S'Kra Mur)
echo
matchre FaceShape ^1$
matchre TuftedEars ^2$
matchre HeadCrest ^3$
matchwait

FaceShape:
var type face shape
var saytype Your face is now
echo
echo Select your client's race:
echo
echo 1. Human, Dwarf, Elf, Halfling, Gor'Tog, Elothean, Gnome, Kaldar, Prydaen, or Rakash
echo 2. S'Kra Mur
echo 3. Rakash in Moonskin
echo
matchre HumanFace ^1$
matchre SKraFace ^2$
matchre RakashFace ^3$
matchwait

HumanFace:
echo
echo Select face shape:
echo
echo 1. heart-shaped
echo 2. oval
echo 3. round
echo 4. square
echo 5. triangular
echo 6. square-jawed
echo 7. angular
echo 8. standard
echo 9. original
echo
matchre HeartshapedFace ^1$
matchre OvalFace ^2$
matchre RoundFace ^3$
matchre SquareFace ^4$
matchre TriangularFace ^5$
matchre SquarejawedFace ^6$
matchre AngularFace ^7$
matchre StandardFace ^8$
matchre OriginalFace ^9$
matchwait

SkraFace:
echo
echo Select S'Kra Mur face shape:
echo
echo 1. elongated
echo 2. flat-featured
echo 3. round
echo 4. shallow-featured
echo 5. triangular
echo 6. sharp-featured
echo 7. angular
echo 8. standard
echo 9. original
echo
matchre ElongatedFace ^1$
matchre FlatfeaturedFace ^2$
matchre RoundFace ^3$
matchre ShallowfeaturedFace ^4$
matchre TriangularFace ^5$
matchre SharpfeaturedFace ^6$
matchre AngularFace ^7$
matchre StandardFace ^8$
matchre OriginalFace ^9$
matchwait

RakashFace:
echo
echo Select Rakash face shape:
echo
echo 1. pointy-eared
echo 2. wolfish
echo 3. pudgy
echo 4. square
echo 5. triangular
echo 6. classic lupine
echo 7. angular
echo 8. standard
echo 9. original
echo
matchre PointyearedFace ^1$
matchre WolfishFace ^2$
matchre PudgyFace ^3$
matchre SquareFace ^4$
matchre TriangularFace ^5$
matchre ClassicLupineFace ^6$
matchre AngularFace ^7$
matchre StandardFace ^8$
matchre OriginalFace ^9$
echo
matchwait

AngularFace:
var option angular
goto Shift
ClassicLupineFace:
var option classic lupine
goto Shift
ElongatedFace:
var option elongated
goto Shift
FlatfeaturedFace:
var option flat-featured
goto Shift
HeartshapedFace:
var option heart-shaped
goto Shift
OriginalFace:
var option original
goto Shift
OvalFace:
var option oval
goto Shift
PointyearedFace:
var option pointy-eared
goto Shift
PudgyFace:
var option pudgy
goto Shift
RoundFace:
var option round
goto Shift
ShallowfeaturedFace:
var option shallow-featured
goto Shift
SharpfeaturedFace:
var option sharp-featured
goto Shift
SquareFace:
var option square
goto Shift
SquarejawedFace:
var option square-jawed
goto Shift
StandardFace:
var option standard
goto Shift
TriangularFace:
var option triangular
goto Shift
WolfishFace:
var option wolfish
goto Shift

TuftedEars:
var type tufted ears
var saytype Your tufted ears are now
echo
echo Select tufted ears option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

HeadCrest:
var type head crest
var saytype Your flexible ridged crest is now
echo
echo Select flexible ridged crest option:
echo
echo 1. present
echo 2. absent
echo
matchre FeaturePresent ^1$
matchre FeatureAbsent ^2$
matchwait

NoseShift:
var type nose shape
var saytype Your nose is now
echo
echo Select your client's race:
echo
echo 1. Human, Dwarf, Elf, Halfling, Gor'Tog, Elothean, Gnome, Kaldar, or Rakash
echo 2. S'Kra Mur (snout)
echo 3. Prydaen
echo 4. Rakash in Moonskin (muzzle)
echo
matchre HumanNose ^1$
matchre SKraNose ^2$
matchre PrydaenNose ^3$
matchre RakashNose ^4$
matchwait

HumanNose:
echo
echo Select nose option:
echo
echo 1. upturned		10. bulbous
echo 2. button		11. crooked
echo 3. small		12. broken
echo 4. classical		13. pointy
echo 5. straight		14. wart-tipped
echo 6. freckled		15. pinched
echo 7. beak-like		16. standard
echo 8. hooked		17. original
echo 9. aquiline
echo
matchre UpturnedNose ^1$
matchre ButtonNose ^2$
matchre SmallNose ^3$
matchre ClassicalNose ^4$
matchre StraightNose ^5$
matchre FreckledNose ^6$
matchre BeaklikeNose ^7$
matchre HookedNose ^8$
matchre AquilineNose ^9$
matchre BulbousNose ^10$
matchre CrookedNose ^11$
matchre BrokenNose ^12$
matchre PointyNose ^13$
matchre WarttippedNose ^14$
matchre PinchedNose ^15$
matchre StandardNose ^16$
matchre OriginalNose ^17$
matchwait

SKraNose:
echo
echo Select S'Kra Mur snout option:
echo
echo 1. slender		10. flat
echo 2. narrow		11. crooked
echo 3. elegant		12. pointed
echo 4. straight		13. striped
echo 5. squared		14. speckled
echo 6. long		15. dappled
echo 7. upturned		16. standard
echo 8. blunt		17. original
echo 9. rounded
echo
matchre SlenderNose ^1$
matchre NarrowNose ^2$
matchre ElegantNose ^3$
matchre StraightNose ^4$
matchre SquaredNose ^5$
matchre LongNose ^6$
matchre UpturnedNose ^7$
matchre BluntNose ^8$
matchre RoundedNose ^9$
matchre FlatNose ^10$
matchre CrookedNose ^11$
matchre PointedNose ^12$
matchre StripedNose ^13$
matchre SpeckledNose ^14$
matchre DappledNose ^15$
matchre StandardNose ^16$
matchre OriginalNose ^17$
matchwait

PrydaenNose:
echo
echo Select Prydaen nose option:
echo
echo 1. upturned		10. bulbous
echo 2. button		11. crooked
echo 3. small		12. broken
echo 4. classical		13. pointy
echo 5. straight		14. pushed-in
echo 6. narrow		15. pinched
echo 7. beak-like		16. standard
echo 8. hooked		17. original
echo 9. aquiline
echo
matchre UpturnedNose ^1$
matchre ButtonNose ^2$
matchre SmallNose ^3$
matchre ClassicalNose ^4$
matchre StraightNose ^5$
matchre NarrowNose ^6$
matchre BeaklikeNose ^7$
matchre HookedNose ^8$
matchre AquilineNose ^9$
matchre BulbousNose ^10$
matchre CrookedNose ^11$
matchre BrokenNose ^12$
matchre PointyNose ^13$
matchre PushedinNose ^14$
matchre PinchedNose ^15$
matchre StandardNose ^16$
matchre OriginalNose ^17$
matchwait

RakashNose:
echo
echo Select Rakash muzzle option:
echo
echo 1. slender		10. stubby
echo 2. pug		11. patchy
echo 3. narrow		12. crooked
echo 4. elegant		13. pointed
echo 5. straight		14. rounded
echo 6. squared		15. pushed-in
echo 7. long		16. standard
echo 8. dewlapped		17. original
echo 9. blunted
echo
matchre SlenderNose ^1$
matchre PugNose ^2$
matchre NarrowNose ^3$
matchre ElegantNose ^4$
matchre StraightNose ^5$
matchre SquaredNose ^6$
matchre LongNose ^7$
matchre DewlappedNose ^8$
matchre BluntedNose ^9$
matchre StubbyNose ^10$
matchre PatchyNose ^11$
matchre CrookedNose ^12$
matchre PointedNose ^13$
matchre RoundedNose ^14$
matchre PushedinNose ^15$
matchre StandardNose ^16$
matchre OriginalNose ^17$
matchwait

AquilineNose:
var option aquiline
goto Shift
BeaklikeNose:
var option beak-like
goto Shift
BluntedNose:
var option blunted
goto Shift
BluntNose:
var option blunt
goto Shift
BrokenNose:
var option broken
goto Shift
BulbousNose:
var option bulbous
goto Shift
ButtonNose:
var option button
goto Shift
ClassicalNose:
var option classical
goto Shift
CrookedNose:
var option crooked
goto Shift
DappledNose:
var option dappled
goto Shift
DewlappedNose:
var option dewlapped
goto Shift
ElegantNose:
var option elegant
goto Shift
FlatNose:
var option flat
goto Shift
FreckledNose:
var option freckled
goto Shift
HookedNose:
var option hooked
goto Shift
LongNose:
var option long
goto Shift
NarrowNose:
var option narrow
goto Shift
OriginalNose:
var option original
goto Shift
PatchyNose:
var option patchy
goto Shift
PinchedNose:
var option pinched
goto Shift
PointedNose:
var option pointed
goto Shift
PointyNose:
var option pointy
goto Shift
PugNose:
var option pug
goto Shift
PushedinNose:
var option pushed-in
goto Shift
RoundedNose:
var option rounded
goto Shift
SlenderNose:
var option slender
goto Shift
SmallNose:
var option small
goto Shift
SpeckledNose:
var option speckled
goto Shift
SquaredNose:
var option squared
goto Shift
StandardNose:
var option standard
goto Shift
StraightNose:
var option straight
goto Shift
StripedNose:
var option striped
goto Shift
StubbyNose:
var option stubby
goto Shift
UpturnedNose:
var option upturned
goto Shift
WarttippedNose:
var option wart-tipped
goto Shift

BodyShift:
echo
echo Select body shift:
echo
echo 1. height
echo 2. build
echo 3. gender
echo
matchre Height ^1$
matchre Build ^2$
matchre Gender ^3$
matchwait

Height:
var type height
var saytype You are now
echo
echo Select height option:
echo
echo 1. shorter
echo 2. taller
echo
matchre HeightShorter ^1$
matchre HeightTaller ^2$
matchwait

HeightShorter:
var option shorter
goto Shift
HeightTaller:
var option taller
goto Shift

Build:
var type build
var saytype Your physique is now
echo
echo Select build option:
echo
echo 1. rotund		14. lissome
echo 2. portly		15. athletic
echo 3. pot-bellied		16. brawny
echo 4. slender		17. burly
echo 5. emaciated		18. svelte
echo 6. scrawny		19. stocky
echo 7. thin		20. shapely
echo 8. lean		21. hefty
echo 9. wiry		22. curvaceous
echo 10. plump		23. generous
echo 11. stout		24. fat
echo 12. matronly (female)		25. standard
echo 13. lithe		26. original
echo
matchre RotundBuild ^1$
matchre PortlyBuild ^2$
matchre PotbelliedBuild ^3$
matchre SlenderBuild ^4$
matchre EmaciatedBuild ^5$
matchre ScrawnyBuild ^6$
matchre ThinBuild ^7$
matchre LeanBuild ^8$
matchre WiryBuild ^9$
matchre PlumpBuild ^10$
matchre StoutBuild ^11$
matchre MatronlyBuild ^12$
matchre LitheBuild ^13$
matchre LissomeBuild ^14$
matchre AthleticBuild ^15$
matchre BrawnyBuild ^16$
matchre BurlyBuild ^17$
matchre SvelteBuild ^18$
matchre StockyBuild ^19$
matchre ShapelyBuild ^20$
matchre HeftyBuild ^21$
matchre CurvaceousBuild ^22$
matchre GenerousBuild ^23$
matchre FatBuild ^24$
matchre StandardBuild ^25$
matchre OriginalBuild ^26$
matchwait

RotundBuild:
var option rotund
goto Shift
PortlyBuild:
var option portly
goto Shift
PotbelliedBuild:
var option pot-bellied
goto Shift
SlenderBuild:
var option slender
goto Shift
EmaciatedBuild:
var option emaciated
goto Shift
ScrawnyBuild:
var option scrawny
goto Shift
ThinBuild:
var option thin
goto Shift
LeanBuild:
var option lean
goto Shift
WiryBuild:
var option wiry
goto Shift
PlumpBuild:
var option plump
goto Shift
StoutBuild:
var option stout
goto Shift
MatronlyBuild:
var option matronly
goto Shift
LitheBuild:
var option lithe
goto Shift
LissomeBuild:
var option lissome
goto Shift
AthleticBuild:
var option athletic
goto Shift
BrawnyBuild:
var option brawny
goto Shift
BurlyBuild:
var option burly
goto Shift
SvelteBuild:
var option svelte
goto Shift
StockyBuild:
var option stocky
goto Shift
ShapelyBuild:
var option shapely
goto Shift
HeftyBuild:
var option hefty
goto Shift
CurvaceousBuild:
var option curvaceous
goto Shift
GenerousBuild:
var option generous
goto Shift
FatBuild:
var option fat
goto Shift
StandardBuild:
var option standard
goto Shift
OriginalBuild:
var option original
goto Shift

Gender:
var type gender
var saytype You are now
echo
echo Select gender option:
echo
echo 1. male
echo 2. female
echo
matchre GenderMale ^1$
matchre GenderFemale ^2$
matchwait

GenderMale:
var option male
goto Shift
GenderFemale:
var option female
goto Shift

AgeShift:
var type age a year
var saytype You now look one year
echo
echo Select age option:
echo
echo 1. one year younger
echo 2. one year older
echo
matchre AgeYounger ^1$
matchre AgeOlder ^2$
matchwait

AgeYounger:
var option younger
goto Shift
AgeOlder:
var option older
goto Shift

Shift:
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
send teach First Aid to %1
waitforre ^%1 begins to listen to you teach the (.+) skill|^%1 is already listening to you|^You are already teaching a different class|^You cannot listen|^That person is too busy teaching their own students to listen to your lesson|^%1 is listening to someone else|^%1 is not paying attention to you

shiftcheck:
send shift evaluate
pause .5
if %canshift = yes then goto shiftstart
pause 5
goto shiftcheck

shiftstart:
echo Command: shift %1 %type %option
send research status
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything
if $researchproject != NOTSET then send research $researchproject 300
pause .5
send touch %1
waitforre ^%1 .+ vitality
send shift %1 %type %option
matchre Shift2 ^There is a problem
matchre Fail ^You lack to skill
matchre Success ^Gathering what strength you can
matchwait

Shift2:
echo Command: shift %1 %type %option
pause 5
send touch %1
waitforre ^%1 .+ vitality
send shift %1 %type %option
matchre Shift2 ^There is a problem
matchre Fail ^You lack to skill
matchre Success ^Gathering what strength you can
matchwait

Fail:
echo You lack the skill to shift %1's %type to %option.
exit

Success:
setvariable canshift no
waitforre ^%1's eyes lower briefly
put #class shift on
send shift %1
send .shiftp %1

var sayoption %option
var if %option = absent then var sayoption unremarkable
var if %option = standard then var sayoption unremarkable
var if %option = original then var sayoption as the gods gave you

waitforre ^You feel the link between you and %1 suddenly fade away
put #echo >Log #FFFFFF shift complete: %1's %type - %option
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything
send ooc %1 %saytype %sayoption.
