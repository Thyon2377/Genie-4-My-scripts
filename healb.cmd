# Dantia's Self Healing, Keep Bleeders Script
# Use at your own risk.
# Version 1.0

VAR ManaInsignificantWounds 3
VAR ManaInsignificantScars 5
VAR ManaNegligibleWounds 4
VAR ManaNegligibleScars 6
VAR ManaMinorWounds 6
VAR ManaMinorScars 10
VAR ManaMoreThanMinorWounds 10
VAR ManaMoreThanMinorScars 12
VAR ManaHarmfulWounds 13
VAR ManaHarmfulScars 17
VAR ManaVeryHarmfulWounds 15
VAR ManaVeryHarmfulScars 22
VAR ManaDamagingWounds 16
VAR ManaDamagingScars 19
VAR ManaVeryDamagingWounds 22
VAR ManaVeryDamagingScars 31
VAR ManaSevereWounds 21
VAR ManaSevereScars 20
VAR ManaVerySevereWounds 20
VAR ManaVerySevereScars 22
VAR ManaDevastatingWounds 21
VAR ManaDevastatingScars 20
VAR ManaVeryDevastingWounds 21
VAR ManaVeryDevastatingScars 21
VAR ManaUselessWounds 20
VAR ManaUselessScars 20

Start:
ECHO Check for Useless
MATCH Vitality in death’s grasp
MATCH Vitality near death
MATCH SkinScarUseless severe skin loss exposing bone and internal organs
MATCH SkinScarUseless general numbness all over and have difficulty thinking
MATCH HeadScarUseless a stump for a head
MATCH HeadScarUseless blank stare
MATCH RightEyeScarUseless empty right eye socket overgrown with bits of odd shaped flesh
MATCH RightEyeScarUseless blind right eye
MATCH LeftEyeScarUseless empty left eye socket overgrown with bits of odd shaped flesh
MATCH LeftEyeScarUseless blind left eye
MATCH NeckScarUseless ugly flesh stump for a neck with little left to support the head
MATCH NeckScarUseless completely paralyzed neck
MATCH ChestScarUseless mostly non-existent chest filled with ugly chunks of scarred flesh
MATCH ChestScarUseless extremely painful chest while gasping for breath in short shallow bursts
MATCH AbdomenScarUseless mostly non-existent abdomen filled with ugly chunks of scarred flesh
MATCH AbdomenScarUseless death pallor and extreme loss of weight
MATCH BackScarUseless mostly non-existent back filled with ugly chunks of scarred flesh and rearranged bone
MATCH BackScarUseless an extremely painful and bizarrely twisted back making it nearly impossible to move
MATCH LeftHandScarUseless ugly flesh stump for a left hand
MATCH LeftHandScarUseless completely paralyzed left hand
MATCH RightHandScarUseless ugly flesh stump for a right hand
MATCH RightHandScarUseless completely paralyzed right hand
MATCH LeftArmScarUseless ugly flesh stump for a left arm
MATCH LeftArmScarUseless completely paralyzed left arm
MATCH RightArmScarUseless ugly flesh stump for a right arm
MATCH RightArmScarUseless completely paralyzed right hand
MATCH LeftLegScarUseless ugly flesh stump for a left leg
MATCH LeftLegScarUseless completely paralyzed left leg
MATCH RightLegScarUseless ugly flesh stump for a right leg
MATCH RightLegScarUseless completely paralyzed right leg
MATCH TailScarUseless ugly flesh stump for a tail
MATCH TailScarUseless completely paralyzed tail
MATCH HeadUseless grotesquely bloated head with bleeding from the eyes and ears
MATCH HeadUseless pulpy stump for a head
MATCH RightEyeUseless pulpy cavity for a right eye
MATCH RightEyeUseless severely swollen, bruised and blind right eye
MATCH LeftEyeUseless pulpy cavity for a left eye
MATCH LeftEyeUseless severely swollen, bruised and blind left eye
MATCH NeckUseless completely useless neck with nearly all flesh and bone torn away
MATCH NeckUseless severely swollen and shattered neck which appears useless to hold up the head
MATCH ChestUseless completely destroyed chest with nearly all flesh and bone torn away revealing a gaping hole
MATCH ChestUseless severely swollen chest area with a shattered rib cage
MATCH AbdomenUseless completely destroyed abdomen with nearly all flesh and bone torn away revealing a gaping hole
MATCH AbdomenUseless severely bloated and discolored abdomen which appears oddly rearranged
MATCH BackUseless completely destroyed back with nearly all flesh and bone torn away revealing a gaping hole
MATCH BackUseless severely swollen back with a shattered spinal cord
MATCH LeftHandUseless ugly stump for a left hand
MATCH LeftHandUseless severely swollen and shattered left hand which appears completely useless
MATCH RightHandUseless ugly stump for a right hand
MATCH RightHandUseless severely swollen and shattered right hand which appears completely useless
MATCH LeftArmUseless ugly stump for a left arm
MATCH LeftArmUseless severely swollen and shattered left arm which appears completely useless
MATCH RightArmUseless ugly stump for a right arm
MATCH RightArmUseless severely swollen and shattered right arm which appears completely useless
MATCH LeftLegUseless ugly stump for a left leg
MATCH LeftLegUseless severely swollen and shattered left leg which appears completely useless
MATCH RightLegUseless ugly stump for a right leg
MATCH RightLegUseless severely swollen and shattered right leg which appears completely useless
MATCH TailUseless ugly stump for a tail
MATCH TailUseless severely swollen and shattered tail which appears completely useless
MATCH SkinUseless open and bleeding sores all over the skin
MATCH SkinUseless complete paralysis of the entire body

ECHO Check for Very Devastating
MATCH SkinScarVeryDevastating severely stiff and shriveled skin that seems to be peeling off the body
MATCH SkinScarVeryDevastating general numbness all over
MATCH HeadScarVeryDevastating mangled and malformed head
MATCH HeadScarVeryDevastating confused look with sporadic twitching of the forehead
MATCH RightEyeScarVeryDevastating painfully mangled and malformed right eye in a shattered eye socket
MATCH RightEyeScarVeryDevastating completely clouded right eye
MATCH LeftEyeScarVeryDevastating painfully mangled and malformed left eye in a shattered eye socket
MATCH LeftEyeScarVeryDevastating completely clouded left eye
MATCH NeckScarVeryDevastating severely scarred, mangled and malformed neck
MATCH NeckScarVeryDevastating severely paralyzed neck
MATCH ChestScarVeryDevastating severely scarred, mangled and malformed chest area
MATCH ChestScarVeryDevastating severely painful chest area with significant problems breathing
MATCH AbdomenScarVeryDevastating severely scarred, mangled and malformed abdomen
MATCH AbdomenScarVeryDevastating severely yellow pallor and a look of starvation
MATCH BackScarVeryDevastating severely scarred, mangled and malformed back
MATCH BackScarVeryDevastating severely painful back with significant problems moving
MATCH LeftHandScarVeryDevastating severely scarred, mangled and malformed left hand
MATCH LeftHandScarVeryDevastating severely paralyzed left hand
MATCH RightHandScarVeryDevastating severely scarred, mangled and malformed right hand
MATCH RightHandScarVeryDevastating severely paralyzed right hand
MATCH LeftArmScarVeryDevastating severely scarred, mangled and malformed left arm
MATCH LeftArmScarVeryDevastating severely paralyzed left arm
MATCH RightArmScarVeryDevastating severely scarred, mangled and malformed right arm
MATCH RightArmScarVeryDevastating severely paralyzed right arm
MATCH LeftLegScarVeryDevastating severely scarred, mangled and malformed left leg
MATCH LeftLegScarVeryDevastating severely paralyzed left leg
MATCH RightLegScarVeryDevastating severely scarred, mangled and malformed right leg
MATCH RightLegScarVeryDevastating severely paralyzed right leg
MATCH TailScarVeryDevastating severely scarred, mangled and malformed tail
MATCH TailScarVeryDevastating severely paralyzed tail
MATCH HeadVeryDevastating ghastly bloated head with bleeding from the ears
MATCH HeadVeryDevastating crushed skull with horrendous wounds	
MATCH RightEyeVeryDevastating bruised, swollen and shattered right eye
MATCH LeftEyeVeryDevastating bruised, swollen and shattered left eye
MATCH NeckVeryDevastating shattered neck with gaping wounds
MATCH NeckVeryDevastating severely swollen and deeply bruised neck with bones protruding out from the skin
MATCH ChestVeryDevastating shattered chest area with gaping wounds
MATCH ChestVeryDevastating severely swollen and deeply bruised chest area with ribs protruding out from the skin
MATCH AbdomenVeryDevastating abdomen deeply gouged with gaping wounds
MATCH AbdomenVeryDevastating severely bloated and discolored abdomen with strange round lumps under the skin
MATCH BackVeryDevastating shattered back with gaping wounds
MATCH BackVeryDevastating severely swollen and deeply bruised back with ribs or vertebrae protruding out from the skin
MATCH LeftHandVeryDevastating shattered left hand with gaping wounds
MATCH LeftHandVeryDevastating severely swollen and deeply bruised left hand with bones protruding out from the skin
MATCH RightHandVeryDevastating shattered right hand with gaping wounds
MATCH RightHandVeryDevastating severely swollen and deeply bruised right hand with bones protruding out from the skin
MATCH LeftArmVeryDevastating shattered left arm with gaping wounds
MATCH LeftArmVeryDevastating severely swollen and deeply bruised left arm with bones protruding out from the skin
MATCH RightArmVeryDevastating shattered right arm with gaping wounds
MATCH RightArmVeryDevastating severely swollen and deeply bruised right arm with bones protruding out from the skin
MATCH LeftLegVeryDevastating shattered left leg with gaping wounds
MATCH LeftLegVeryDevastating severely swollen and deeply bruised left leg with bones protruding out from the skin
MATCH RightLegVeryDevastating shattered right leg with gaping wounds
MATCH RightLegVeryDevastating severely swollen and deeply bruised right leg with bones protruding out from the skin
MATCH TailVeryDevastating shattered tail with gaping wounds
MATCH TailVeryDevastating severely swollen and deeply bruised tail with bones protruding out from the skin
MATCH SkinVeryDevastating boils and sores around the skin
MATCH SkinVeryDevastating severe paralysis of the entire body

ECHO Check for Devastating

ECHO Check for Very Severe
MATCH SkinScarVerySevere shriveled and oddly folded skin
MATCH SkinScarVerySevere numbness in your arms and legs
MATCH HeadScarVerySevere missing chunks out of the head
MATCH RightEyeScarVerySevere punctured and shriveled right eye
MATCH RightEyeScarVerySevere clouded right eye
MATCH LeftEyeScarVerySevere punctured and shriveled left eye
MATCH LeftEyeScarVerySevere clouded left eye
MATCH NeckScarVerySevere severe scarring and ugly gashes about the neck
MATCH NeckScarVerySevere partially paralyzed neck
MATCH ChestScarVerySevere severe scarring and chunks of flesh missing from the chest area
MATCH ChestScarVerySevere painful chest area and difficulty getting a breath without pain
MATCH AbdomenScarVerySevere severe scarring and chunks of flesh missing from the abdomen
MATCH AbdomenScarVerySevere definite greenish pallor and emaciated look
MATCH BackScarVerySevere severe scarring and chunks of flesh missing from the back
MATCH BackScarVerySevere painful back and difficulty moving without pain
MATCH LeftHandScarVerySevere severe scarring and chunks of flesh missing from the left hand
MATCH LeftHandScarVerySevere partially paralyzed left hand
MATCH RightHandScarVerySevere severe scarring and chunks of flesh missing from the right hand
MATCH RightHandScarVerySevere partially paralyzed right hand
MATCH LeftArmScarVerySevere severe scarring and chunks of flesh missing from the left arm
MATCH LeftArmScarVerySevere partially paralyzed left arm
MATCH RightArmScarVerySevere severe scarring and chunks of flesh missing from the right hand
MATCH RightArmScarVerySevere partially paralyzed right hand
MATCH LeftLegScarVerySevere severe scarring and chunks of flesh missing from the left leg
MATCH LeftLegScarVerySevere partially paralyzed left leg
MATCH RightLegScarVerySevere severe scarring and chunks of flesh missing from the right leg
MATCH RightLegScarVerySevere partially paralyzed right leg
MATCH TailScarVerySevere severe scarring and chunks of flesh missing from the tail
MATCH TailScarVerySevere partially paralyzed tail
MATCH HeadVerySevere cracked skull with deep slashes
MATCH RightEyeVerySevere bruised, swollen and slashed right eye
MATCH RightEyeVerySevere severely swollen, bruised and cloudy right eye
MATCH LeftEyeVerySevere bruised, swollen and slashed left eye
MATCH LeftEyeVerySevere severely swollen, bruised and cloudy left eye
MATCH NeckVerySevere gaping holes in the neck
MATCH NeckVerySevere severely swollen and deeply bruised neck with odd protrusions under the skin
MATCH ChestVerySevere gaping holes in the chest area
MATCH ChestVerySevere severely swollen and deeply bruised chest area with odd protrusions under the skin
MATCH AbdomenVerySevere gaping holes in the abdomen
MATCH BackVerySevere gaping holes in the back
MATCH BackVerySevere severely swollen and deeply bruised back with odd protrusions under the skin
MATCH LeftHandVerySevere broken left hand with gaping holes
MATCH LeftHandVerySevere severely swollen and deeply bruised left hand with odd protrusions under the skin
MATCH RightHandVerySevere broken right hand with gaping holes
MATCH RightHandVerySevere severely swollen and deeply bruised right hand with odd protrusions under the skin
MATCH LeftArmVerySevere broken left arm with gaping holes
MATCH LeftArmVerySevere severely swollen and deeply bruised left arm with odd protrusions under the skin
MATCH RightArmVerySevere broken right arm with gaping holes
MATCH RightArmVerySevere severely swollen and deeply bruised right arm with odd protrusions under the skin
MATCH LeftLegVerySevere broken left leg with gaping holes
MATCH LeftLegVerySevere severely swollen and deeply bruised left leg with odd protrusions under the skin
MATCH RightLegVerySevere broken right leg with gaping holes
MATCH RightLegVerySevere severely swollen and deeply bruised right arm with odd protrusions under the skin
MATCH TailVerySevere broken tail with gaping holes
MATCH TailVerySevere severely swollen and deeply bruised tail with odd protrusions under the skin
MATCH SkinVerySevere painful, inflamed body rash
MATCH SkinVerySevere partial paralysis of the entire body

ECHO Check for Severe

ECHO Check for Very Damaging
MATCH SkinScarVeryDamaging severe skin discoloration
MATCH SkinScarVeryDamaging numbness in your fingers and toes
MATCH HeadScarVeryDamaging severe scarring and ugly gashes about the head
MATCH RightEyeScarVeryDamaging deeply scarred gashes across the right eye
MATCH RightEyeScarVeryDamaging constant twitching in the right eye
MATCH LeftEyeScarVeryDamaging deeply scarred gashes across the left eye
MATCH LeftEyeScarVeryDamaging constant twitching in the left eye
MATCH NeckScarVeryDamaging constant twitching in the neck
MATCH ChestScarVeryDamaging severe scarring and ugly gashes about the chest area
MATCH ChestScarVeryDamaging constant twitching in the chest area and difficulty breathing
MATCH AbdomenScarVeryDamaging severe scarring and ugly gashes about the abdomen
MATCH AbdomenScarVeryDamaging somewhat emaciated look
MATCH BackScarVeryDamaging severe scarring and ugly gashes about the back
MATCH BackScarVeryDamaging constant twitching in the back and difficulty moving in general
MATCH LeftHandScarVeryDamaging severe scarring and ugly gashes about the left hand
MATCH LeftHandScarVeryDamaging constant twitching in the left hand
MATCH RightHandScarVeryDamaging severe scarring and ugly gashes about the right hand
MATCH RightHandScarVeryDamaging constant twitching in the right hand
MATCH LeftArmScarVeryDamaging severe scarring and ugly gashes about the left arm
MATCH LeftArmScarVeryDamaging constant twitching in the left arm
MATCH RightArmScarVeryDamaging severe scarring and ugly gashes about the right arm
MATCH RightArmScarVeryDamaging constant twitching in the right arm
MATCH LeftLegScarVeryDamaging severe scarring and ugly gashes about the left leg
MATCH LeftLegScarVeryDamaging constant twitching in the left leg
MATCH RightLegScarVeryDamaging severe scarring and ugly gashes about the right leg
MATCH RightLegScarVeryDamaging constant twitching in the right leg
MATCH TailScarVeryDamaging severe scarring and ugly gashes about the tail
MATCH TailScarVeryDamaging constant twitching in the tail
MATCH SkinVeryDamaging body rash
MATCH SkinVeryDamaging difficulty controlling actions
MATCH HeadVeryDamaging deep slashes and cuts about the head
MATCH HeadVeryDamaging major swelling and bruising around the head
MATCH RightEyeVeryDamaging bruised, swollen and bleeding right eye
MATCH RightEyeVeryDamaging severely swollen, bruised and crossed right eye
MATCH LeftEyeVeryDamaging bruised, swollen and bleeding left eye
MATCH LeftEyeVeryDamaging severely swollen, bruised and crossed left eye
MATCH ChestVeryDamaging severely swollen and bruised chest area
MATCH AbdomenVeryDamaging severely swollen and bruised abdomen
MATCH BackVeryDamaging severely swollen and bruised back
MATCH LeftHandVeryDamaging severely swollen and deeply bruised left hand
MATCH RightHandVeryDamaging severely swollen and deeply bruised right hand
MATCH LeftArmVeryDamaging severely swollen and deeply bruised left arm
MATCH RightArmVeryDamaging severely swollen and deeply bruised right arm
MATCH LeftLegVeryDamaging severely swollen and deeply bruised left leg
MATCH RightLegVeryDamaging severely swollen and deeply bruised right leg
MATCH TailVeryDamaging severely swollen and deeply bruised tail

ECHO Check for Damaging

ECHO Check for Very Harmful
MATCH Poison poisoned
MATCH Vitality terribly wounded
MATCH vitality smashed up
MATCH SkinScarVeryHarmful slight numbness in your arms and legs
MATCH SkinScarVeryHarmful minor skin discoloration
MATCH HeadScarVeryHarmful severe scarring about the head
MATCH RightEyeScarVeryHarmful severe scarring across the right eye
MATCH LeftEyeScarVeryHarmful severe scarring across the left eye
MATCH NeckScarVeryHarmful severe scarring along the neck
MATCH ChestScarVeryHarmful severe scarring along the chest area
MATCH ChestScarVeryHarmful constant twitching in the chest area
MATCH AbdomenScarVeryHarmful severe scarring along the abdomen
MATCH AbdomenScarVeryHarmful constant twitching in the abdomen
MATCH BackScarVeryHarmful severe scarring along the back
MATCH BackScarVeryHarmful constant twitching in the back
MATCH LeftHandScarVeryHarmful severe scarring along the left hand
MATCH RightHandScarVeryHarmful severe scarring along the right hand
MATCH LeftArmScarVeryHarmful severe scarring along the left arm
MATCH RightArmScarVeryHarmful severe scarring along the right arm
MATCH LeftLegScarVeryHarmful severe scarring along the left leg
MATCH RightLegScarVeryHarmful severe scarring along the right leg
MATCH TailScarVeryHarmful severe scarring along the tail
MATCH SkinVeryHarmful large skin rash
MATCH HeadVeryHarmful moderately deep cuts about the head
MATCH HeadVeryHarmful deeply bruised head
MATCH RightEyeVeryHarmful bruised and swollen right eye
MATCH RightEyeVeryHarmful severely swollen and bruised right eye
MATCH LeftEyeVeryHarmful bruised and swollen left eye
MATCH LeftEyeVeryHarmful severely swollen and bruised left eye
MATCH NeckVeryHarmful severely swollen and deeply bruised neck
MATCH ChestVeryHarmful deep cuts across the chest area
MATCH SkinVeryHarmful severe twitching

ECHO Check for Harmful

ECHO Check for More than Minor
MATCH Vitality very badly hurt
MATCH Vitality badly hurt
MATCH Vitality very beat up
MATCH Vitality beat up
MATCH SkinMoreThanMinor small skin rash
MATCH SkinMoreThanMinor minor twitching
MATCH HeadMoreThanMinor cuts and bruises about the head
MATCH HeadMoreThanMinor bruised head
MATCH RightEyeMoreThanMinor black and blue right eye
MATCH RightEyeMoreThanMinor minor swelling and bruising around the right eye
MATCH LeftEyeMoreThanMinor black and blue left eye
MATCH LeftEyeMoreThanMinor minor swelling and bruising around the left eye
MATCH NeckMoreThanMinor minor swelling and bruising around the neck
MATCH NeckMoreThanMinor cuts and bruises about the neck
MATCH ChestMoreThanMinor cuts and bruises about the chest area
MATCH ChestMoreThanMinor minor swelling and bruising in the chest
MATCH AbdomenMoreThanMinor cuts and bruises about the abdomen
MATCH AbdomenMoreThanMinor minor swelling and bruising in the abdomen
MATCH BackMoreThanMinor cuts and bruises about the back
MATCH BackMoreThanMinor minor swelling and bruising in the back
MATCH LeftHandMoreThanMinor cuts and bruises about the left hand
MATCH LeftHandMoreThanMinor minor swelling and bruising around the left hand
MATCH RightHandMoreThanMinor cuts and bruises about the right hand
MATCH RightHandMoreThanMinor minor swelling and bruising around the right hand
MATCH LeftArmMoreThanMinor cuts and bruises about the left arm
MATCH LeftArmMoreThanMinor minor swelling and bruising around the left arm
MATCH RightArmMoreThanMinor cuts and bruises about the right arm
MATCH RightArmMoreThanMinor minor swelling and bruising around the right arm
MATCH LeftLegMoreThanMinor cuts and bruises about the left leg
MATCH LeftLegMoreThanMinor minor swelling and bruising around the left leg
MATCH RightLegMoreThanMinor cuts and bruises about the right leg
MATCH RightLegMoreThanMinor minor swelling and bruising around the right leg
MATCH TailMoreThanMinor cuts and bruises about the tail
MATCH TailMoreThanMinor minor swelling and bruising around the tail
MATCH SkinScarMoreThanMinor loss of skin tone
MATCH HeadScarMoreThanMinor minor scars about the head
MATCH HeadScarMoreThanMinor occasional twitch on the forehead
MATCH RightEyeScarMoreThanMinor minor scars across the right eye
MATCH LeftEyeScarMoreThanMinor minor scars across the left eye
MATCH RightEyeScarMoreThanMinor occasional twitching in the right eye
MATCH LeftEyeScarMoreThanMinor occasional twitching in the left eye
MATCH NeckScarMoreThanMinor minor scarring along the neck
MATCH NeckScarMoreThanMinor occasional twitching in the neck
MATCH ChestScarMoreThanMinor minor scarring along the chest area
MATCH ChestScarMoreThanMinor occasional twitching in the chest
MATCH AbdomenScarMoreThanMinor minor scarring along the abdomen
MATCH AbdomenScarMoreThanMinor occasional twitching in the abdomen
MATCH BackScarMoreThanMinor minor scarring along the back
MATCH BackScarMoreThanMinor occasional twitching in the back
MATCH LeftHandScarMoreThanMinor minor scarring along the left hand
MATCH LeftHandScarMoreThanMinor occasional twitching in the left hand
MATCH RightHandScarMoreThanMinor minor scarring along the right hand
MATCH RightHandScarMoreThanMinor occasional twitching in the right hand
MATCH LeftArmScarMoreThanMinor minor scarring along the left arm
MATCH LeftArmScarMoreThanMinor occasional twitching in the left arm
MATCH RightArmScarMoreThanMinor minor scarring along the right arm
MATCH RightArmScarMoreThanMinor occasional twitching in the right arm
MATCH LeftLegScarMoreThanMinor minor scarring along the left leg
MATCH LeftLegScarMoreThanMinor occasional twitching in the left leg
MATCH RightLegScarMoreThanMinor minor scarring along the right leg
MATCH RightLegScarMoreThanMinor occasional twitching in the right leg
MATCH TailScarMoreThanMinor minor scarring along the tail
MATCH TailScarMoreThanMinor occasional twitching in the tail

ECHO Check for Minor

ECHO Check for Negligible
MATCH SkinNegligible tiny scratches to the skin
MATCH HeadNegligible tiny scratches to the head
MATCH RightEyeNegligible tiny scratches to the right eye
MATCH LeftEyeNegligible tiny scratches to the left eye
MATCH NeckNegligible tiny scratches to the neck
MATCH ChestNegligible tiny scratches to the chest
MATCH AbdomenNegligible tiny scratches to the abdomen
MATCH BackNegligible tiny scratches to the back
MATCH LeftHandNegligible tiny scratches to the left hand
MATCH RightHandNegligible tiny scratches to the right hand
MATCH LeftArmNegligible tiny scratches to the left arm
MATCH RightArmNegligible tiny scratches to the right arm
MATCH LeftLegNegligible tiny scratches to the left leg
MATCH RightLegNegligible tiny scratches to the right leg
MATCH TailNegligible tiny scratches to the tail
MATCH SkinScarNegligible tiny scars across the skin
MATCH HeadScarNegligible tiny scars across the head
MATCH RightEyeScarNegligible tiny scars across the right eye
MATCH LeftEyeScarNegligible tiny scars across the left eye
MATCH NeckScarNegligible tiny scars across the neck
MATCH ChestScarNegligible tiny scars across the chest
MATCH AbdomenScarNegligible tiny scars across the abdomen
MATCH BackScarNegligible tiny scars across the back
MATCH LeftHandScarNegligible tiny scars across the left hand
MATCH RightHandScarNegligible tiny scars across the right hand
MATCH LeftArmScarNegligible tiny scars across the left arm
MATCH RightArmScarNegligible tiny scars across the right arm
MATCH LeftLegScarNegligible tiny scars across the left leg
MATCH RightLegScarNegligible tiny scars across the right leg
MATCH TaiLScarNegligible tiny scars across the tail

ECHO Check for Insignificant
MATCH SkinInsignificant minor abrasions to the skin
MATCH HeadInsignificant minor abrasions to the head
MATCH RightEyeInsignificant minor abrasions to the right eye
MATCH LeftEyeInsignificant minor abrasions to the left eye
MATCH NeckInsignificant minor abrasions to the neck
MATCH ChestInsignificant minor abrasions to the chest
MATCH ChestInsignificant minor abrasions the chest
MATCH AbdomenInsignificant minor abrasions to the abdomen
MATCH BackInsignificant minor abrasions to the back
MATCH LeftHandInsignificant minor abrasions to the left hand
MATCH RightHandInsignificant minor abrasions to the right hand
MATCH LeftArmInsignificant minor abrasions to the left arm
MATCH RightArmInsignificant minor abrasions to the right arm
MATCH LeftLegInsignificant minor abrasions to the left leg
MATCH RightLegInsignificant minor abrasions to the right leg
MATCH TailInsignificant minor abrasions to the tail
MATCH SkinScarInsignificant few nearly invisible scars along the skin
MATCH HeadScarInsignificant few nearly invisible scars along the head
MATCH RightEyeScarInsignificant few nearly invisible scars along the right eye
MATCH LeftEyeScarInsignificant few nearly invisible scars along the left eye
MATCH NeckScarInsignificant few nearly invisible scars along the neck
MATCH ChestScarInsignificant few nearly invisible scars along the chest
MATCH AbdomenScarInsignificant few nearly invisible scars along the abdomen
MATCH BackScarInsignificant few nearly invisible scars along the back
MATCH LeftHandScarInsignificant few nearly invisible scars along the left hand
MATCH RightHandScarInsignificant few nearly invisible scars along the right hand
MATCH LeftArmScarInsignificant few nearly invisible scars along the left arm
MATCH RightArmScarInsignificant few nearly invisible scars along the right arm
MATCH LeftLegScarInsignificant few nearly invisible scars along the left leg
MATCH RightLegScarInsignificant few nearly invisible scars along the right leg
MATCH TailScarInsignificant few nearly invisible scars along the tail
MATCH AllDone Rate
put health
MATCHWAIT

AllDone:
pause 1
Echo ***************
ECHO ALL HEALED
Echo ***************
Pause 1
Put glance
Exit

SkinInsignificant:
VAR bodypart skin
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

SkinNegligible:
VAR bodypart skin
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

SkinMinor:
VAR bodypart skin
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

SkinMoreThanMinor:
VAR bodypart skin
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

SkinHarmful:
VAR bodypart skin
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

SkinVeryHarmful:
VAR bodypart skin
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

SkinDamaging:
VAR bodypart skin
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

SkinVeryDamaging:
VAR bodypart skin
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

SkinSevere:
VAR bodypart skin
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

SkinVerySevere:
VAR bodypart skin
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

SkinDevastating:
VAR bodypart skin
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

SkinVeryDevastating:
VAR bodypart skin
VAR manawounds %ManaVeryDevastingWounds
goto CastHealWounds

SkinUseless:
VAR bodypart skin
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

SkinScarInsignificant:
VAR bodypart skin
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

SkinScarNegligible:
VAR bodypart skin
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

SkinScarMinor:
VAR bodypart skin
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

SkinScarMoreThanMinor:
VAR bodypart skin
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

SkinScarHarmful:
VAR bodypart skin
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

SkinScarVeryHarmful:
VAR bodypart skin
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

SkinScarDamaging:
VAR bodypart skin
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

SkinScarVeryDamaging:
VAR bodypart skin
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

SkinScarSevere:
VAR bodypart skin
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

SkinScarVerySevere:
VAR bodypart skin
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

SkinScarDevastating:
VAR bodypart skin
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

SkinScarVeryDevastating:
VAR bodypart skin
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

SkinScarUseless:
VAR bodypart skin
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

HeadInsignificant:
VAR bodypart head
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

HeadNegligible:
VAR bodypart head
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

HeadMinor:
VAR bodypart head
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

HeadMoreThanMinor:
VAR bodypart head
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

HeadHarmful:
VAR bodypart head
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

HeadVeryHarmful:
VAR bodypart head
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

HeadDamaging:
VAR bodypart head
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

HeadVeryDamaging:
VAR bodypart head
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

HeadSevere:
VAR bodypart head
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

HeadVerySevere:
VAR bodypart head
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

HeadDevastating:
VAR bodypart head
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

HeadVeryDevastating:
VAR bodypart head
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

HeadUseless:
VAR bodypart head
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

HeadScarInsignificant:
VAR bodypart head
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

HeadScarNegligible:
VAR bodypart head
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

HeadScarMinor:
VAR bodypart head
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

HeadScarMoreThanMinor:
VAR bodypart head
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

HeadScarHarmful:
VAR bodypart head
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

HeadScarVeryHarmful:
VAR bodypart head
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

HeadScarDamaging:
VAR bodypart head
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

HeadScarVeryDamaging:
VAR bodypart head
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

HeadScarSevere:
VAR bodypart head
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

HeadScarVerySevere:
VAR bodypart head
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

HeadScarDevastating:
VAR bodypart head
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

HeadScarVeryDevastating:
VAR bodypart head
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

HeadScarUseless:
VAR bodypart head
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

RightEyeInsignificant:
VAR bodypart right eye
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

RightEyeNegligible:
VAR bodypart right eye
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

RightEyeMinor:
VAR bodypart right eye
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

RightEyeMoreThanMinor:
VAR bodypart right eye
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

RightEyeHarmful:
VAR bodypart right eye
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

RightEyeVeryHarmful:
VAR bodypart right eye
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

RightEyeDamaging:
VAR bodypart right eye
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

RightEyeVeryDamaging:
VAR bodypart right eye
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

RightEyeSevere:
VAR bodypart right eye
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

RightEyeVerySevere:
VAR bodypart right eye
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

RightEyeDevastating:
VAR bodypart right eye
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

RightEyeVeryDevastating:
VAR bodypart right eye
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

RightEyeUseless:
VAR bodypart right eye
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

RightEyeScarInsignificant:
VAR bodypart right eye
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

RightEyeScarNegligible:
VAR bodypart right eye
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

RightEyeScarMinor:
VAR bodypart right eye
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

RightEyeScarMoreThanMinor:
VAR bodypart right eye
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

RightEyeScarHarmful:
VAR bodypart right eye
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

RightEyeScarVeryHarmful:
VAR bodypart right eye
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

RightEyeScarDamaging:
VAR bodypart right eye
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

RightEyeScarVeryDamaging:
VAR bodypart right eye
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

RightEyeScarSevere:
VAR bodypart right eye
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

RightEyeScarVerySevere:
VAR bodypart right eye
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

RightEyeScarDevastating:
VAR bodypart right eye
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

RightEyeScarVeryDevastating:
VAR bodypart right eye
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

RightEyeScarUseless:
VAR bodypart right eye
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

LeftEyeInsignificant:
VAR bodypart left eye
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

LeftEyeNegligible:
VAR bodypart left eye
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

LeftEyeMinor:
VAR bodypart left eye
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

LeftEyeMoreThanMinor:
VAR bodypart left eye
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

LeftEyeHarmful:
VAR bodypart left eye
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

LeftEyeVeryHarmful:
VAR bodypart left eye
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

LeftEyeDamaging:
VAR bodypart left eye
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

LeftEyeVeryDamaging:
VAR bodypart left eye
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

LeftEyeSevere:
VAR bodypart left eye
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

LeftEyeVerySevere:
VAR bodypart left eye
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

LeftEyeDevastating:
VAR bodypart left eye
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

LeftEyeVeryDevastating:
VAR bodypart left eye
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

LeftEyeUseless:
VAR bodypart left eye
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

LeftEyeScarInsignificant:
VAR bodypart left eye
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

LeftEyeScarNegligible:
VAR bodypart left eye
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

LeftEyeScarMinor:
VAR bodypart left eye
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

LeftEyeScarMoreThanMinor:
VAR bodypart left eye
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

LeftEyeScarHarmful:
VAR bodypart left eye
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

LeftEyeScarVeryHarmful:
VAR bodypart left eye
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

LeftEyeScarDamaging:
VAR bodypart left eye
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

LeftEyeScarVeryDamaging:
VAR bodypart left eye
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

LeftEyeScarSevere:
VAR bodypart left eye
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

LeftEyeScarVerySevere:
VAR bodypart left eye
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

LeftEyeScarDevastating:
VAR bodypart left eye
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

LeftEyeScarVeryDevastating:
VAR bodypart left eye
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

LeftEyeScarUseless:
VAR bodypart left eye
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

NeckInsignificant:
VAR bodypart neck
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

NeckNegligible:
VAR bodypart neck
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

NeckMinor:
VAR bodypart neck
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

NeckMoreThanMinor:
VAR bodypart neck
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

NeckHarmful:
VAR bodypart neck
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

NeckVeryHarmful:
VAR bodypart neck
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

NeckDamaging:
VAR bodypart neck
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

NeckVeryDamaging:
VAR bodypart neck
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

NeckSevere:
VAR bodypart neck
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

NeckVerySevere:
VAR bodypart neck
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

NeckDevastating:
VAR bodypart neck
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

NeckVeryDevastating:
VAR bodypart neck
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

NeckUseless:
VAR bodypart neck
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

NeckScarInsignificant:
VAR bodypart neck
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

NeckScarNegligible:
VAR bodypart neck
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

NeckScarMinor:
VAR bodypart neck
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

NeckScarMoreThanMinor:
VAR bodypart neck
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

NeckScarHarmful:
VAR bodypart neck
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

NeckScarVeryHarmful:
VAR bodypart neck
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

NeckScarDamaging:
VAR bodypart neck
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

NeckScarVeryDamaging:
VAR bodypart neck
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

NeckScarSevere:
VAR bodypart neck
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

NeckScarVerySevere:
VAR bodypart neck
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

NeckScarDevastating:
VAR bodypart neck
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

NeckScarVeryDevastating:
VAR bodypart neck
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

NeckScarUseless:
VAR bodypart neck
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

RightArmInsignificant:
VAR bodypart right arm
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

RightArmNegligible:
VAR bodypart right arm
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

RightArmMinor:
VAR bodypart right arm
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

RightArmMoreThanMinor:
VAR bodypart right arm
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

RightArmHarmful:
VAR bodypart right arm
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

RightArmVeryHarmful:
VAR bodypart right arm
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

RightArmDamaging:
VAR bodypart right arm
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

RightArmVeryDamaging:
VAR bodypart right arm
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

RightArmSevere:
VAR bodypart right arm
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

RightArmVerySevere:
VAR bodypart right arm
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

RightArmDevastating:
VAR bodypart right arm
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

RightArmVeryDevastating:
VAR bodypart right arm
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

RightArmUseless:
VAR bodypart right arm
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

RightArmScarInsignificant:
VAR bodypart right arm
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

RightArmScarNegligible:
VAR bodypart right arm
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

RightArmScarMinor:
VAR bodypart right arm
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

RightArmScarMoreThanMinor:
VAR bodypart right arm
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

RightArmScarHarmful:
VAR bodypart right arm
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

RightArmScarVeryHarmful:
VAR bodypart right arm
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

RightArmScarDamaging:
VAR bodypart right arm
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

RightArmScarVeryDamaging:
VAR bodypart right arm
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

RightArmScarSevere:
VAR bodypart right arm
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

RightArmScarVerySevere:
VAR bodypart right arm
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

RightArmScarDevastating:
VAR bodypart right arm
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

RightArmScarVeryDevastating:
VAR bodypart right arm
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

RightArmScarUseless:
VAR bodypart right arm
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

LeftArmInsignificant:
VAR bodypart left arm
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

LeftArmNegligible:
VAR bodypart left arm
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

LeftArmMinor:
VAR bodypart left arm
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

LeftArmMoreThanMinor:
VAR bodypart left arm
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

LeftArmHarmful:
VAR bodypart left arm
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

LeftArmVeryHarmful:
VAR bodypart left arm
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

LeftArmDamaging:
VAR bodypart left arm
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

LeftArmVeryDamaging:
VAR bodypart left arm
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

LeftArmSevere:
VAR bodypart left arm
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

LeftArmVerySevere:
VAR bodypart left arm
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

LeftArmDevastating:
VAR bodypart left arm
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

LeftArmVeryDevastating:
VAR bodypart left arm
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

LeftArmUseless:
VAR bodypart left arm
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

LeftArmScarInsignificant:
VAR bodypart left arm
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

LeftArmScarNegligible:
VAR bodypart left arm
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

LeftArmScarMinor:
VAR bodypart left arm
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

LeftArmScarMoreThanMinor:
VAR bodypart left arm
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

LeftArmScarHarmful:
VAR bodypart left arm
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

LeftArmScarVeryHarmful:
VAR bodypart left arm
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

LeftArmScarDamaging:
VAR bodypart left arm
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

LeftArmScarVeryDamaging:
VAR bodypart left arm
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

LeftArmScarSevere:
VAR bodypart left arm
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

LeftArmScarVerySevere:
VAR bodypart left arm
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

LeftArmScarDevastating:
VAR bodypart left arm
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

LeftArmScarVeryDevastating:
VAR bodypart left arm
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

LeftArmScarUseless:
VAR bodypart left arm
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

RightHandInsignificant:
VAR bodypart right hand
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

RightHandNegligible:
VAR bodypart right hand
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

RightHandMinor:
VAR bodypart right hand
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

RightHandMoreThanMinor:
VAR bodypart right hand
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

RightHandHarmful:
VAR bodypart right hand
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

RightHandVeryHarmful:
VAR bodypart right hand
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

RightHandDamaging:
VAR bodypart right hand
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

RightHandVeryDamaging:
VAR bodypart right hand
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

RightHandSevere:
VAR bodypart right hand
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

RightHandVerySevere:
VAR bodypart right hand
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

RightHandDevastating:
VAR bodypart right hand
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

RightHandVeryDevastating:
VAR bodypart right hand
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

RightHandUseless:
VAR bodypart right hand
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

RightHandScarInsignificant:
VAR bodypart right hand
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

RightHandScarNegligible:
VAR bodypart right hand
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

RightHandScarMinor:
VAR bodypart right hand
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

RightHandScarMoreThanMinor:
VAR bodypart right hand
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

RightHandScarHarmful:
VAR bodypart right hand
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

RightHandScarVeryHarmful:
VAR bodypart right hand
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

RightHandScarDamaging:
VAR bodypart right hand
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

RightHandScarVeryDamaging:
VAR bodypart right hand
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

RightHandScarSevere:
VAR bodypart right hand
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

RightHandScarVerySevere:
VAR bodypart right hand
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

RightHandScarDevastating:
VAR bodypart right hand
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

RightHandScarVeryDevastating:
VAR bodypart right hand
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

RightHandScarUseless:
VAR bodypart right hand
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

LeftHandInsignificant:
VAR bodypart left hand
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

LeftHandNegligible:
VAR bodypart left hand
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

LeftHandMinor:
VAR bodypart left hand
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

LeftHandMoreThanMinor:
VAR bodypart left hand
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

LeftHandHarmful:
VAR bodypart left hand
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

LeftHandVeryHarmful:
VAR bodypart left hand
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

LeftHandDamaging:
VAR bodypart left hand
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

LeftHandVeryDamaging:
VAR bodypart left hand
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

LeftHandSevere:
VAR bodypart left hand
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

LeftHandVerySevere:
VAR bodypart left hand
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

LeftHandDevastating:
VAR bodypart left hand
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

LeftHandVeryDevastating:
VAR bodypart left hand
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

LeftHandUseless:
VAR bodypart left hand
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

LeftHandScarInsignificant:
VAR bodypart left hand
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

LeftHandScarNegligible:
VAR bodypart left hand
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

LeftHandScarMinor:
VAR bodypart left hand
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

LeftHandScarMoreThanMinor:
VAR bodypart left hand
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

LeftHandScarHarmful:
VAR bodypart left hand
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

LeftHandScarVeryHarmful:
VAR bodypart left hand
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

LeftHandScarDamaging:
VAR bodypart left hand
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

LeftHandScarVeryDamaging:
VAR bodypart left hand
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

LeftHandScarSevere:
VAR bodypart left hand
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

LeftHandScarVerySevere:
VAR bodypart left hand
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

LeftHandScarDevastating:
VAR bodypart left hand
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

LeftHandScarVeryDevastating:
VAR bodypart left hand
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

LeftHandScarUseless:
VAR bodypart left hand
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

ChestInsignificant:
VAR bodypart chest
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

ChestNegligible:
VAR bodypart chest
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

ChestMinor:
VAR bodypart chest
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

ChestMoreThanMinor:
VAR bodypart chest
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

ChestHarmful:
VAR bodypart chest
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

ChestVeryHarmful:
VAR bodypart chest
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

ChestDamaging:
VAR bodypart chest
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

ChestVeryDamaging:
VAR bodypart chest
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

ChestSevere:
VAR bodypart chest
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

ChestVerySevere:
VAR bodypart chest
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

ChestDevastating:
VAR bodypart chest
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

ChestVeryDevastating:
VAR bodypart chest
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

ChestUseless:
VAR bodypart chest
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

ChestScarInsignificant:
VAR bodypart chest
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

ChestScarNegligible:
VAR bodypart chest
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

ChestScarMinor:
VAR bodypart chest
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

ChestScarMoreThanMinor:
VAR bodypart chest
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

ChestScarHarmful:
VAR bodypart chest
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

ChestScarVeryHarmful:
VAR bodypart chest
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

ChestScarDamaging:
VAR bodypart chest
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

ChestScarVeryDamaging:
VAR bodypart chest
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

ChestScarSevere:
VAR bodypart chest
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

ChestScarVerySevere:
VAR bodypart chest
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

ChestScarDevastating:
VAR bodypart chest
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

ChestScarVeryDevastating:
VAR bodypart chest
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

ChestScarUseless:
VAR bodypart chest
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

AbdomenInsignificant:
VAR bodypart abdomen
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

AbdomenNegligible:
VAR bodypart abdomen
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

AbdomenMinor:
VAR bodypart abdomen
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

AbdomenMoreThanMinor:
VAR bodypart abdomen
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

AbdomenHarmful:
VAR bodypart abdomen
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

AbdomenVeryHarmful:
VAR bodypart abdomen
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

AbdomenDamaging:
VAR bodypart abdomen
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

AbdomenVeryDamaging:
VAR bodypart abdomen
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

AbdomenSevere:
VAR bodypart abdomen
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

AbdomenVerySevere:
VAR bodypart abdomen
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

AbdomenDevastating:
VAR bodypart abdomen
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

AbdomenVeryDevastating:
VAR bodypart abdomen
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

AbdomenUseless:
VAR bodypart abdomen
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

AbdomenScarInsignificant:
VAR bodypart abdomen
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

AbdomenScarNegligible:
VAR bodypart abdomen
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

AbdomenScarMinor:
VAR bodypart abdomen
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

AbdomenScarMoreThanMinor:
VAR bodypart abdomen
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

AbdomenScarHarmful:
VAR bodypart abdomen
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

AbdomenScarVeryHarmful:
VAR bodypart abdomen
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

AbdomenScarDamaging:
VAR bodypart abdomen
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

AbdomenScarVeryDamaging:
VAR bodypart abdomen
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

AbdomenScarSevere:
VAR bodypart abdomen
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

AbdomenScarVerySevere:
VAR bodypart abdomen
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

AbdomenScarDevastating:
VAR bodypart abdomen
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

AbdomenScarVeryDevastating:
VAR bodypart abdomen
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

AbdomenScarUseless:
VAR bodypart abdomen
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

BackInsignificant:
VAR bodypart back
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

BackNegligible:
VAR bodypart back
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

BackMinor:
VAR bodypart back
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

BackMoreThanMinor:
VAR bodypart back
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

BackHarmful:
VAR bodypart back
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

BackVeryHarmful:
VAR bodypart back
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

BackDamaging:
VAR bodypart back
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

BackVeryDamaging:
VAR bodypart back
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

BackSevere:
VAR bodypart back
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

BackVerySevere:
VAR bodypart back
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

BackDevastating:
VAR bodypart back
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

BackVeryDevastating:
VAR bodypart back
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

BackUseless:
VAR bodypart back
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

BackScarInsignificant:
VAR bodypart back
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

BackScarNegligible:
VAR bodypart back
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

BackScarMinor:
VAR bodypart back
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

BackScarMoreThanMinor:
VAR bodypart back
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

BackScarHarmful:
VAR bodypart back
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

BackScarVeryHarmful:
VAR bodypart back
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

BackScarDamaging:
VAR bodypart back
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

BackScarVeryDamaging:
VAR bodypart back
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

BackScarSevere:
VAR bodypart back
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

BackScarVerySevere:
VAR bodypart back
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

BackScarDevastating:
VAR bodypart back
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

BackScarVeryDevastating:
VAR bodypart back
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

BackScarUseless:
VAR bodypart back
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

RightLegInsignificant:
VAR bodypart right leg
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

RightLegNegligible:
VAR bodypart right leg
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

RightLegMinor:
VAR bodypart right leg
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

RightLegMoreThanMinor:
VAR bodypart right leg
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

RightLegHarmful:
VAR bodypart right leg
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

RightLegVeryHarmful:
VAR bodypart right leg
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

RightLegDamaging:
VAR bodypart right leg
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

RightLegVeryDamaging:
VAR bodypart right leg
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

RightLegSevere:
VAR bodypart right leg
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

RightLegVerySevere:
VAR bodypart right leg
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

RightLegDevastating:
VAR bodypart right leg
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

RightLegVeryDevastating:
VAR bodypart right leg
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

RightLegUseless:
VAR bodypart right leg
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

RightLegScarInsignificant:
VAR bodypart right leg
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

RightLegScarNegligible:
VAR bodypart right leg
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

RightLegScarMinor:
VAR bodypart right leg
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

RightLegScarMoreThanMinor:
VAR bodypart right leg
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

RightLegScarHarmful:
VAR bodypart right leg
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

RightLegScarVeryHarmful:
VAR bodypart right leg
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

RightLegScarDamaging:
VAR bodypart right leg
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

RightLegScarVeryDamaging:
VAR bodypart right leg
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

RightLegScarSevere:
VAR bodypart right leg
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

RightLegScarVerySevere:
VAR bodypart right leg
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

RightLegScarDevastating:
VAR bodypart right leg
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

RightLegScarVeryDevastating:
VAR bodypart right leg
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

RightLegScarUseless:
VAR bodypart right leg
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

LeftLegInsignificant:
VAR bodypart left leg
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

LeftLegNegligible:
VAR bodypart left leg
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

LeftLegMinor:
VAR bodypart left leg
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

LeftLegMoreThanMinor:
VAR bodypart left leg
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

LeftLegHarmful:
VAR bodypart left leg
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

LeftLegVeryHarmful:
VAR bodypart left leg
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

LeftLegDamaging:
VAR bodypart left leg
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

LeftLegVeryDamaging:
VAR bodypart left leg
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

LeftLegSevere:
VAR bodypart left leg
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

LeftLegVerySevere:
VAR bodypart left leg
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

LeftLegDevastating:
VAR bodypart left leg
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

LeftLegVeryDevastating:
VAR bodypart left leg
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

LeftLegUseless:
VAR bodypart left leg
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

LeftLegScarInsignificant:
VAR bodypart left leg
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

LeftLegScarNegligible:
VAR bodypart left leg
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

LeftLegScarMinor:
VAR bodypart left leg
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

LeftLegScarMoreThanMinor:
VAR bodypart left leg
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

LeftLegScarHarmful:
VAR bodypart left leg
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

LeftLegScarVeryHarmful:
VAR bodypart left leg
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

LeftLegScarDamaging:
VAR bodypart left leg
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

LeftLegScarVeryDamaging:
VAR bodypart left leg
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

LeftLegScarSevere:
VAR bodypart left leg
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

LeftLegScarVerySevere:
VAR bodypart left leg
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

LeftLegScarDevastating:
VAR bodypart left leg
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

LeftLegScarVeryDevastating:
VAR bodypart left leg
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

LeftLegScarUseless:
VAR bodypart left leg
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars

TailInsignificant:
VAR bodypart tail
VAR manawounds %ManaInsignificantWounds
VAR woundlevel Insignificant
goto CastHealWounds

TailNegligible:
VAR bodypart tail
VAR manawounds %ManaNegligibleWounds
VAR woundlevel Negligible
goto CastHealWounds

TailMinor:
VAR bodypart tail
VAR manawounds %ManaMinorWounds
VAR woundlevel Minor
goto CastHealWounds

TailMoreThanMinor:
VAR bodypart tail
VAR manawounds %ManaMoreThanMinorWounds
VAR woundlevel More Than Minor
goto CastHealWounds

TailHarmful:
VAR bodypart tail
VAR manawounds %ManaHarmfulWounds
VAR woundlevel Harmful
goto CastHealWounds

TailVeryHarmful:
VAR bodypart tail
VAR manawounds %ManaVeryHarmfulWounds
VAR woundlevel Very Harmful
goto CastHealWounds

TailDamaging:
VAR bodypart tail
VAR manawounds %ManaDamagingWounds
VAR woundlevel Damaging
goto CastHealWounds

TailVeryDamaging:
VAR bodypart tail
VAR manawounds %ManaVeryDamagingWounds
VAR woundlevel Very Damaging
goto CastHealWounds

TailSevere:
VAR bodypart tail
VAR manawounds %ManaSevereWounds
VAR woundlevel Severe
goto CastHealWounds

TailVerySevere:
VAR bodypart tail
VAR manawounds %ManaVerySevereWounds
VAR woundlevel Very Severe
goto CastHealWounds

TailDevastating:
VAR bodypart tail
VAR manawounds %ManaDevastatingWounds
VAR woundlevel Devastating
goto CastHealWounds

TailVeryDevastating:
VAR bodypart tail
VAR manawounds %ManaVeryDevastatingWounds
VAR woundlevel Very Devastating
goto CastHealWounds

TailUseless:
VAR bodypart tail
VAR manawounds %ManaUselessWounds
VAR woundlevel Useless
goto CastHealWounds

TailScarInsignificant:
VAR bodypart tail scar
VAR manascars %ManaInsignificantScars
VAR woundlevel Insignificant
goto CastHealScars

TailScarNegligible:
VAR bodypart tail scar
VAR manascars %ManaNegligibleScars
VAR woundlevel Negligible
goto CastHealScars

TailScarMinor:
VAR bodypart tail scar
VAR manascars %ManaMinorScars
VAR woundlevel Minor
goto CastHealScars

TailScarMoreThanMinor:
VAR bodypart tail scar
VAR manascars %ManaMoreThanMinorScars
VAR woundlevel More Than Minor
goto CastHealScars

TailScarHarmful:
VAR bodypart tail scar
VAR manascars %ManaHarmfulScars
VAR woundlevel Harmful
goto CastHealScars

TailScarVeryHarmful:
VAR bodypart tail scar
VAR manascars %ManaVeryHarmfulScars
VAR woundlevel Very Harmful
goto CastHealScars

TailScarDamaging:
VAR bodypart tail scar
VAR manascars %ManaDamagingScars
VAR woundlevel Damaging
goto CastHealScars

TailScarVeryDamaging:
VAR bodypart tail scar
VAR manascars %ManaVeryDamagingScars
VAR woundlevel Very Damaging
goto CastHealScars

TailScarSevere:
VAR bodypart tail scar
VAR manascars %ManaSevereScars
VAR woundlevel Severe
goto CastHealScars

TailScarVerySevere:
VAR bodypart tail scar
VAR manascars %ManaVerySevereScars
VAR woundlevel Very Severe
goto CastHealScars

TailScarDevastating:
VAR bodypart tail scar
VAR manascars %ManaDevastatingScars
VAR woundlevel Devastating
goto CastHealScars

TailScarVeryDevastating:
VAR bodypart tail scar
VAR manascars %ManaVeryDevastatingScars
VAR woundlevel Very Devastating
goto CastHealScars

TailScarUseless:
VAR bodypart tail scar
VAR manascars %ManaUselessScars
VAR woundlevel Useless
goto CastHealScars




Vitality:
Put prep vh 18
WAITFOR You feel fully prepared to cast your spell.
Put cast
Pause 1
Goto start

Poison:
PUT prep fp 5
pause 1
put harness 5
WAITFOR You feel fully prepared
PUT cast
pause 1
goto start

CastHealWounds:
pause 1
echo healing %woundlevel wounds on %bodypart at %manawounds
math manawounds subtract 10
echo %manawounds
echo manawounds is now %manawounds
put prep hw %manawounds
pause 1
put prep hw 5
pause 10
put harness 10
WAITFOR You feel fully prepared to cast your spell.
put cast %bodypart
Pause 1
goto start

CastHealScars:
pause 1
echo healing %woundlevel scars on %bodypart at %manascars
math manascars subtract 10
echo %manascars
echo manascars is now %manascars
put prep hs %manascars
pause 1
put prep hs 6
pause 10
put harness 10
WAITFOR You feel fully prepared to cast your spell.
put cast %bodypart
Pause 1
goto start