action put #var guild $1 when Guild:\s+(Barbarian|Bard|Cleric|Commoner|Empath|Moon Mage|Necromancer|Paladin|Ranger|Thief|Trader|Warrior Mage)$
put info
waitforre ^Debt:$
put #var guildshort $guild

if ("$guild" = "Warrior Mage) then put #var guildshort WarriorMage
if ("$guild" = "Moon Mage) then put #var guildshort MoonMage
put #log >SpellData-$guildshort.txt Spellbook	Spell	Skill	Type	Target	Contest	MinPrep	MyCap	MaxPrep	MinRanks	MaxRanks	Slots	Prerequisites
put #log >SpellRaw-$guildshort.txt Spellbook	Spell	Skill	Type	Target	Contest	MinPrep	MyCap	MaxPrep	MinRanks	MaxRanks	Slots	Prerequisites

send SPELLS
waitforre to view or modify your spellcasting preferences\.$

send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything

action setvariable type $1 when ^This is an? (area targeted|battle|cyclic|metaspell|non-battle|ritual|targeted) spell
action setvariable type metaspell when ^This is a metaspell\.
action setvariable spelltype $1 when ^This is an? (battle|targeted|area targeted|non-battle) spell,? (intended to be prepared|which must be TARGETed|that can be cast on)
action setvariable spelltype ritual when ^This is a ritual spell, which means that it requires a high amount of mana to use
action setvariable spelltype cyclic when This is a cyclic spell\.
action setvariable spelltype metaspell when ^This is a metaspell\.
action setvariable target caster when It affects yourself\.
action setvariable target caster/objects when It affects yourself and some objects\.
action setvariable target single target when ^This is a battle spell, intended to be prepared quickly and cast on a single target while in battle|^This is a targeted spell, which must be TARGETed at a specific opponent|^This is a non-battle spell that can be cast on a single target
action setvariable target area/group when ^This is a battle spell, intended to be prepared quickly and cast on an area or group while in battle|^This is an area targeted spell, which must be TARGETed at the area around you|^This is a non-battle spell that can be cast on an area or group
action setvariable minprep $1;setvariable maxprep $2 when It requires a minimum of (.+) mana streams, and can expand to a maximum of (.+) mana streams woven into it\.
action setvariable mindiff $1;setvariable maxdiff $2 when To begin to be able to cast this spell, you will need to reach the rank of an? (.+)\.  By the time you have mastered this spell, you will be ranked as an? (.+) in your abilities as a caster
action setvariable contest1 $1;setvariable contest2 $2 when When used on opponents, this spell pits your (\S+) against your enemy's (\S+)\.\s+It
action setvariable skill $1 when It requires the (.+) skills? to cast effectively\.
action setvariable spellprereq $1 when Before you can learn this spell, you must know(?! one of) (.+)(?<!( and be circle \d+| and be circle \d+\.\s+Additionally.+|Additionally.+))\.\s+It will also
action setvariable spellprereq $1 when Before you can learn this spell, you must know one of (.+)(?<!( and be circle \d+| and be circle \d+\.\s+Additionally.+|Additionally.+))\.\s+It will also
action setvariable spellprereq $1;setvariable circleprereq $2 when Before you can learn this spell, you must know(?! one of) (.+), and be circle (\d+)\.\s+It will also
action setvariable spellprereq $1;setvariable circleprereq $2 when Before you can learn this spell, you must know one of (.+), and be circle (\d+)\.\s+It will also
action setvariable spellprereq $1 and $2 when Before you can learn this spell, you must know(?! one of) (.+)(?<! and be circle \d+)\.\s+Additionally, you must know one of (.+)(?<! and be circle \d+)\.\s+It will also
action setvariable spellprereq $1 and $3;setvariable circleprereq $2 when Before you can learn this spell, you must know(?! one of) (.+), and be circle (\d+)\.\s+Additionally, you must know one of (.+)(?<! and be circle \d+)\.\s+It will also
action setvariable circleprereq $1 when Before you can learn this spell, you must be circle (\d+)\.\s+It will also
action setvariable spellprereq $1;setvariable slotcost zero when Before you can learn this spell, you must know(?! one of) (.+)(?<!( and be circle \d+| and be circle \d+\.\s+Additionally.+|Additionally.+))\.$
action setvariable spellprereq $1;setvariable slotcost zero when Before you can learn this spell, you must know one of (.+)(?<!( and be circle \d+| and be circle \d+\.\s+Additionally.+|Additionally.+))\.$
action setvariable spellprereq $1;setvariable circleprereq $2;setvariable slotcost zero when Before you can learn this spell, you must know(?! one of) (.+), and be circle (\d+)\.$
action setvariable spellprereq $1;setvariable circleprereq $2;setvariable slotcost zero when Before you can learn this spell, you must know one of (.+), and be circle (\d+)\.$
action setvariable spellprereq $1 and $2;setvariable slotcost zero when Before you can learn this spell, you must know(?! one of) (.+)(?<! and be circle \d+)\.\s+Additionally, you must know one of (.+)(?<! and be circle \d+)\.$
action setvariable spellprereq $1 and $3;setvariable circleprereq $2;setvariable slotcost zero when Before you can learn this spell, you must know(?! one of) (.+), and be circle (\d+)\.\s+Additionally, you must know one of (.+)(?<! and be circle \d+)\.$
action setvariable circleprereq $1;setvariable slotcost zero when Before you can learn this spell, you must be circle (\d+)\.$
action setvariable spellprereq none when This spell has no prerequisites\.\s+It will
action setvariable spellprereq none;setvariable slotcost zero when This spell has no prerequisites\.$|to cast effectively\.$
action setvariable slotcost $1 when It will also cost (\S+) spell slots?\.$
action setvariable mycap $3 when ^The spell requires at minimum (\d+) mana streams and you think you can reinforce it with (\d+) more, for a total of (\d+) streams\.$
action setvariable mycap ERROR when ^You don't think you are able to cast this spell
action setvariable setvariable skill unknown; setvariable spelltype unknown; setvariable target unknown; setvariable contest unknown; setvariable minprepnum unknown; setvariable maxprepnum unknown; setvariable minranks unknown; setvariable maxranks unknown; setvariable slotcostnum unknown; setvariable prereq unknown; setvariable mycap unknown when ^You have no idea how to cast that spell
gosub VarBlank

if ("$guild" = "Cleric") then
{
var spellbook Holy Defense
var syntax pfe
gosub Discern Protection from Evil
var syntax mpp
gosub Discern Minor Physical Protection
var syntax sol
gosub Discern Shield of Light
var syntax Benediction
gosub Discern Benediction
var syntax mapp
gosub Discern Major Physical Protection
var syntax ghs
gosub Discern Ghost Shroud
var syntax Halo
gosub Discern Halo
var syntax sos
gosub Discern Soul Shield
var syntax sl
gosub Discern Sanyu Lyba
var spellbook Spirit Manipulation
var syntax Rejuvenation
gosub Discern Rejuvenation
var syntax Vigil
gosub Discern Vigil
var syntax sb
gosub Discern Soul Bonding
var syntax Auspice
gosub Discern Auspice
var syntax rev
gosub Discern Revelation
var syntax mre
gosub Discern Mass Rejuvenation
var syntax Centering
gosub Discern Centering
var syntax sa
gosub Discern Soul Attrition
var syntax chs
gosub Discern Chill Spirit
var syntax sick
gosub Discern Soul Sickness
var syntax ef
gosub Discern Eylhaar's Feast
var syntax bf
gosub Discern Bitter Feast
var spellbook Holy Evocations
var syntax Bless
gosub Discern Bless
var syntax he
gosub Discern Harm Evil
var syntax ps
gosub Discern Phelim's Sanction
var syntax dr
gosub Discern Divine Radiance
var syntax totrs
gosub Discern Time of the Red Spiral
var syntax hh
gosub Discern Harm Horde
var syntax coz
gosub Discern Curse of Zachriedek
var syntax hot
gosub Discern Hand of Tenemlor
var syntax Malediction
gosub Discern Malediction
var syntax horn
gosub Discern Horn of the Black Unicorn
var syntax rob
gosub Discern Ring of Blessings
var syntax ff
gosub Discern Fists of Faenella
var syntax hyh
gosub Discern Hydra Hex
var spellbook Divine Intervention
var syntax ae
gosub Discern Aesrela Everild
var syntax hf
gosub Discern Heavenly Fires
var syntax rezz
gosub Discern Resurrection
var syntax gg
gosub Discern Glythtide's Gift
var syntax mf
gosub Discern Murrula's Flames
var syntax fou
gosub Discern Fire of Ushnish
var spellbook Metamagic
var syntax sap
gosub Discern Sanctify Pattern
var syntax Uncurse
gosub Discern Uncurse
var syntax hulp
gosub Discern Huldah's Pall
var syntax pom
gosub Discern Persistence of Mana
var syntax om
gosub Discern Osrel Meraud
var syntax mc
gosub Discern Meraud's Cry
var syntax it
gosub Discern Idon's Theft
var syntax spit
gosub Discern Spite of Dergati
goto APSpells
goto end
}

if ("$guild" = "Paladin") then
{
var spellbook Inspiration
var syntax Courage
gosub Discern Courage
var syntax rw
gosub Discern Righteous Wrath
var syntax dig
gosub Discern Divine Guidance
var syntax tr
gosub Discern Truffenyi's Rally
var syntax sr
gosub Discern Sentinel's Resolve
var syntax veteran
gosub Discern Veteran Insight
var syntax as
gosub Discern Anti-Stun
var syntax hes
gosub Discern Heroic Strength
var syntax sp
gosub Discern Soldier's Prayer
var syntax da
gosub Discern Divine Armor
var syntax mo
gosub Discern Marshal Order
var syntax ba
gosub Discern Bond Armaments
var spellbook Justice
var syntax Halt
gosub Discern Halt
var syntax sf
gosub Discern Stun Foe
var syntax Shatter
gosub Discern Shatter
var syntax bot
gosub Discern Banner of Truce
var syntax hoj
gosub Discern Hands of Justice
var syntax rue
gosub Discern Rutilor's Edge
var syntax how
gosub Discern Holy Warrior
var syntax reb
gosub Discern Rebuke
var syntax Clarity
gosub Discern Clarity
var syntax smh
gosub Discern Smite Horde
var syntax fst
gosub Discern Footman's Strike
var spellbook
var syntax ag
gosub Discern Alamhif's Gift
var syntax crc
gosub Discern Crusader's Challenge
var syntax aa
gosub Discern Aspirant's Aegis
var syntax vos
gosub Discern Vessel of Salvation
goto APSpells
goto end
}

if ("$guild" = "Empath") then
{
var spellbook Healing
var syntax vh
gosub Discern Vitality Healing
var syntax hw
gosub Discern Heal Wounds
var syntax hs
gosub Discern Heal Scars
var syntax Heal
gosub Discern Heal
var syntax Regenerate
gosub Discern Regenerate
var syntax foc
gosub Discern Fountain of Creation
var spellbook Body Purification
var syntax bs
gosub Discern Blood Staunching
var syntax fp
gosub Discern Flush Poisons
var syntax cd
gosub Discern Cure Disease
var syntax adc
gosub Discern Adaptive Curing
var syntax hl
gosub Discern Heart Link
var syntax Absolution
gosub Discern Absolution
var spellbook Life Force Manipulation
var syntax Refresh
gosub Discern Refresh
var syntax rp
gosub Discern Raise Power
var syntax gol
gosub Discern Gift of Life
var syntax Vigor
gosub Discern Vigor
var syntax Paralysis
gosub Discern Paralysis
var syntax Lethargy
gosub Discern Lethargy
var spellbook Protection
var syntax Innocence
gosub Discern Innocence
var syntax ad
gosub Discern Aesandry Darlaeth
var syntax gs
gosub Discern Guardian Spirit
var syntax ic
gosub Discern Iron Constitution
var syntax ags
gosub Discern Aggressive Stance
var syntax pop
gosub Discern Perseverance of Peri'el
var spellbook Mental Preparation
var syntax cos
gosub Discern Circle of Sympathy
var syntax nb
gosub Discern Nissa's Binding
var syntax mef
gosub Discern Mental Focus
var syntax Compel
gosub Discern Compel
var syntax Tranquility
gosub Discern Tranquility
var syntax Awaken
gosub Discern Awaken
goto APSpells
goto end
}

if ("$guild" = "Ranger") then
{
var spellbook Animal Abilities
var syntax ws
gosub Discern Wolf Scent
var syntax stw
gosub Discern See the Wind
var syntax inst
gosub Discern Instinct
var syntax cs
gosub Discern Cheetah Swiftness
var syntax bes
gosub Discern Bear Strength
var syntax griz
gosub Discern Grizzly Claws
var syntax sott
gosub Discern Senses of the Tiger
var syntax wotp
gosub Discern Wisdom of the Pack
var syntax cotc
gosub Discern Claws of the Cougar
var syntax aots
gosub Discern Aspect of the Shark
var spellbook Wilderness Survival
var syntax hol
gosub Discern Hands of Lirisa
var syntax em
gosub Discern Earth Meld
var syntax ey
gosub Discern Essence of Yew
var syntax Blend
gosub Discern Blend
var syntax fwb
gosub Discern Forestwalker's Boon
var syntax sks
gosub Discern Skein of Shadows
var syntax oath
gosub Discern Oath of the Firstborn
var syntax Athleticism
gosub Discern Athleticism
var syntax mon
gosub Discern Memory of Nature
var spellbook Nature Manipulation
var syntax Compost
gosub Discern Compost
var syntax Swarm
gosub Discern Swarm
var syntax hb
gosub Discern Harawep's Bonds
var syntax af
gosub Discern Awaken Forest
var syntax df
gosub Discern Deadfall
var syntax ec
gosub Discern Eagle's Cry
var syntax devi
gosub Discern Devitalize
var syntax cotw
gosub Discern Curse of the Wilds
var syntax Stampede
gosub Discern Stampede
var syntax cac
gosub Discern Carrion Call
var syntax de
gosub Discern Devolve
goto APSpells
goto end
}

if ("$guild" = "Warrior Mage") then
{
var spellbook Aether Manipulation
var syntax es
gosub Discern Ethereal Shield
var syntax ac
gosub Discern Aether Cloak
var syntax wb
gosub Discern Ward Break
var syntax Substratum
gosub Discern Substratum
var syntax etf
gosub Discern Ethereal Fissure
var syntax Elementalism
gosub Discern Elementalism
var syntax ei
gosub Discern Expansive Infusions
var spellbook Electricity Manipulation
var syntax al
gosub Discern Arc Light
var syntax ti
gosub Discern Tingle
var syntax lb
gosub Discern Lightning Bolt
var syntax gf
gosub Discern Grounding Field
var syntax cl
gosub Discern Chain Lightning
var syntax gz
gosub Discern Gar Zeng
var syntax si
gosub Discern Shocking Infusions
var syntax ee
gosub Discern Electrostatic Eddy
var spellbook Fire Manipulation
var syntax fs
gosub Discern Fire Shards
var syntax fb
gosub Discern Fire Ball
var syntax db
gosub Discern Dragon's Breath
var syntax mof
gosub Discern Mantle of Flame
var syntax fr
gosub Discern Fire Rain
var syntax fls
gosub Discern Flame Shockwave
var syntax Ignite
gosub Discern Ignite
var syntax moa
gosub Discern Mark of Arhat
var syntax fi
gosub Discern Fiery Infusions
var spellbook Water Manipulation
var syntax Frostbite
gosub Discern Frostbite
var syntax ip
gosub Discern Ice Patch
var syntax rm
gosub Discern Rising Mists
var syntax voi
gosub Discern Veil of Ice
var syntax foi
gosub Discern Fortress of Ice
var syntax Geyser
gosub Discern Geyser
var syntax frs
gosub Discern Frost Scythe
var syntax rim
gosub Discern Rimefang
var syntax ii
gosub Discern Icy Infusions
var spellbook Earth Manipulation
var syntax trem
gosub Discern Tremor
var syntax suf
gosub Discern Sure Footing
var syntax mab
gosub Discern Magnetic Ballista
var syntax aeg
gosub Discern Aegis of Granite
var syntax sts
gosub Discern Stone Strike
var syntax anc
gosub Discern Anther's Call
var syntax ros
gosub Discern Ring of Spears
var syntax rin
gosub Discern Reinforced Infusions
var spellbook Air Manipulation
var syntax Zephyr
gosub Discern Zephyr
var syntax tw
gosub Discern Tailwind
var syntax pw
gosub Discern Paeldryth's Wrath
var syntax Shockwave
gosub Discern Shockwave
var syntax sw
gosub Discern Swirling Winds
var syntax Vertigo
gosub Discern Vertigo
var syntax ala
gosub Discern Air Lash
var syntax tc
gosub Discern Thunderclap
var syntax ys
gosub Discern Y'ntrel Sechra
var syntax ab
gosub Discern Air Bubble
var syntax bg
gosub Discern Blufmor Garaen
var syntax qi
gosub Discern Quick Infusions
goto APSpells
goto end
}

if ("$guild" = "Bard") then
{
var spellbook Fae Arts
var syntax aewo
gosub Discern Aether Wolves
var syntax botf
gosub Discern Blessing of the Fae
var syntax eye
gosub Discern Eye of Kertigen
var syntax gj
gosub Discern Glythtide's Joy
var syntax Nexus
gosub Discern Nexus
var syntax Sanctuary
gosub Discern Sanctuary
var syntax btn
gosub Discern Beckon the Naga
var spellbook Emotion Control
var syntax alb
gosub Discern Albreda's Balm
var syntax aban
gosub Discern Abandoned Heart
var syntax dalu
gosub Discern Damaris' Lullaby
var syntax wotm
gosub Discern Whispers of the Muse
var syntax fae
gosub Discern Faenella's Grace
var syntax mis
gosub Discern Misdirection
var syntax rage
gosub Discern Rage of the Clans
var syntax repr
gosub Discern Redeemer's Pride
var spellbook Sound Manipulation
var syntax dmrs
gosub Discern Demrris' Resolve
var syntax drum
gosub Discern Drums of the Snake
var syntax ecry
gosub Discern Eillie's Cry
var syntax Harmony
gosub Discern Harmony
var syntax hodi
gosub Discern Hodierna's Lilt
var syntax name
gosub Discern Naming of Tears
var syntax Resonance
gosub Discern Resonance
var syntax aot
gosub Discern Aura of Tongues
var spellbook Elemental Invocations
var syntax bos
gosub Discern Breath of Storms
var syntax care
gosub Discern Caress of the Sun
var syntax dema
gosub Discern Desert's Maelstrom
var syntax pyre
gosub Discern Phoenix's Pyre
var syntax echo
gosub Discern Echoes of Aether
var syntax word
gosub Discern Words of the Wind
var syntax soul
gosub Discern Soul Ablaze
var syntax will
gosub Discern Will of Winter
goto APSpells
goto end
}

if ("$guild" = "Moon Mage") then
{
var spellbook Perception
var syntax cv
gosub Discern Clear Vision
var syntax pg
gosub Discern Piercing Gaze
var syntax Locate
gosub Discern Locate
var syntax dg
gosub Discern Distant Gaze
var syntax mt
gosub Discern Machinist's Touch
var syntax seer
gosub Discern Seer's Sense
var syntax art
gosub Discern Artificer's Eye
var syntax aus
gosub Discern Aura Sight
var syntax ts
gosub Discern Tenebrous Sense
var syntax Unleash
gosub Discern Unleash
var spellbook Psychic Projection
var syntax Calm
gosub Discern Calm
var syntax mb
gosub Discern Mental Blast
var syntax Sleep
gosub Discern Sleep
var syntax Hypnotize
gosub Discern Hypnotize
var syntax tkt
gosub Discern Telekinetic Throw
var syntax tks
gosub Discern Telekinetic Storm
var syntax psy
gosub Discern Psychic Shield
var syntax Rend
gosub Discern Rend
var syntax Shear
gosub Discern Shear
var syntax th
gosub Discern Thoughtcast
var syntax ms
gosub Discern Mind Shout
var syntax emmo
gosub Discern Empower Moonblade
var spellbook Moonlight Manipulation
var syntax Shadows
gosub Discern Shadows
var syntax fm
gosub Discern Focus Moonbeam
var syntax Dazzle
gosub Discern Dazzle
var syntax rf
gosub Discern Refractive Field
var syntax sov
gosub Discern Steps of Vuan
var syntax Burn
gosub Discern Burn
var syntax Moonblade
gosub Discern Moonblade
var syntax do
gosub Discern Dinazen Olkar
var syntax shmo
gosub Discern Shape Moonblade
var syntax col
gosub Discern Cage of Light
var syntax sm
gosub Discern Shift Moonbeam
var spellbook Enlightened Geometry
var syntax Shadowling
gosub Discern Shadowling
var syntax ss
gosub Discern Shadow Servant
var syntax pd
gosub Discern Partial Displacement
var syntax Teleport
gosub Discern Teleport
var syntax wd
gosub Discern Whole Displacement
var syntax mg
gosub Discern Moongate
var syntax bc
gosub Discern Braun's Conjecture
var syntax rs
gosub Discern Riftal Summons
var syntax Contingency
gosub Discern Contingency
var spellbook Stellar Magic
var syntax sls
gosub Discern Starlight Sphere
var syntax iots
gosub Discern Invocation of the Spheres
var syntax shm
gosub Discern Shadewatch Mirror
var syntax rtr
gosub Discern Read the Ripples
var spellbook Teleologic Sorcery
var syntax set
gosub Discern Sever Thread
var syntax tf
gosub Discern Tangled Fate
var syntax tv
gosub Discern Tezirah's Veil
var syntax sod
gosub Discern Sovereign Destiny
goto APSpells
goto end
}

if ("$guild" = "Necromancer") then
{
var spellbook Animation
var syntax cfb
gosub Discern Call from Beyond
var syntax nr
gosub Discern Necrotic Reconstruction
var syntax rpu
gosub Discern Reverse Putrefaction
var syntax qe
gosub Discern Quicken the Earth
var spellbook Blood Magic
var syntax blb
gosub Discern Blood Burst
var syntax hp
gosub Discern Heighten Pain
var syntax sv
gosub Discern Siphon Vitality
var syntax cf
gosub Discern Consume Flesh
var syntax Devour
gosub Discern Devour
var spellbook Corruption
var syntax vod
gosub Discern Visions of Darkness
var syntax pv
gosub Discern Petrifying Visions
var syntax eotb
gosub Discern Eyes of the Blind
var syntax Obfuscation
gosub Discern Obfuscation
var syntax roc
gosub Discern Rite of Contrition
var syntax rog
gosub Discern Rite of Grace
var syntax Liturgy
gosub Discern Liturgy
var spellbook Synthetic Creation
var syntax acs
gosub Discern Acid Splash
var syntax Vivisection
gosub Discern Vivisection
var syntax vs
gosub Discern Viscous Solution
var syntax rei
gosub Discern Researcher's Insight
var syntax usol
gosub Discern Universal Solvent
var syntax alk
gosub Discern Alkahest Edge
var spellbook
var syntax bue
gosub Discern Butcher's Eye
var syntax ch
gosub Discern Calcified Hide
var syntax php
gosub Discern Philosopher's Preservation
var syntax worm
gosub Discern Worm's Mist
var syntax ks
gosub Discern Kura-Silma
var syntax sre
gosub Discern Spiteful Rebirth
var syntax ivm
gosub Discern Ivory Mask
var syntax cre
gosub Discern Covetous Rebirth
var syntax chir
gosub Discern Chirurgia
goto APSpells
goto end
}

APSpells:
var spellbook Analogous Patterns
var syntax ease
gosub Discern Ease Burden
var syntax stra
gosub Discern Strange Arrow
var syntax lw
gosub Discern Lay Ward
var syntax maf
gosub Discern Manifest Force
var syntax Dispel
gosub Discern Dispel
var syntax Imbue
gosub Discern Imbue
var syntax sec
gosub Discern Seal Cambrinth
var syntax Burden
gosub Discern Burden
var syntax gaf
gosub Discern Gauge Flow
goto end

Discern:
gosub VarBlank
var spellname $0
send discern %syntax
waitforre ^Roundtime|^You have no idea how to cast that spell
wait
pause .25
gosub CleanForm
gosub NumberFixMinPrep
gosub NumberFixMaxPrep
gosub NumberSlotCost
gosub LogData
var spellname ERROR
var syntax ERROR
return

VarBlank:
var skill N/A
var spelltype ERROR
var target N/A
var contest1 N/A
var contest2 N/A
var contest N/A
var minprep N/A
var maxprep N/A
var minprepnum N/A
var maxprepnum N/A
var mindiff N/A
var difficulty N/A
var maxdiff N/A
var minranks N/A
var maxranks N/A
var slotcost N/A
var slotcostnum N/A
var spellprereq N/A
var circleprereq N/A
var prereq N/A
var mycap ERROR
return

CleanForm:
if ("%mindiff" = "lowly novice") then var minranks 0
if ("%mindiff" = "promising novice") then var minranks 10
if ("%mindiff" = "able novice") then var minranks 20
if ("%mindiff" = "trained novice") then var minranks 30
if ("%mindiff" = "full novice") then var minranks 40
if ("%mindiff" = "beginning practitioner") then var minranks 50
if ("%mindiff" = "competent practitioner") then var minranks 60
if ("%mindiff" = "proficient practitioner") then var minranks 70
if ("%mindiff" = "experienced practitioner") then var minranks 80
if ("%mindiff" = "skilled practitioner") then var minranks 90
if ("%mindiff" = "beginning dilettante") then var minranks 100
if ("%mindiff" = "competent dilettante") then var minranks 110
if ("%mindiff" = "proficient dilettante") then var minranks 120
if ("%mindiff" = "experienced dilettante") then var minranks 130
if ("%mindiff" = "skilled dilettante") then var minranks 140
if ("%mindiff" = "beginning aficionado") then var minranks 150
if ("%mindiff" = "competent aficionado") then var minranks 160
if ("%mindiff" = "proficient aficionado") then var minranks 170
if ("%mindiff" = "experienced aficionado") then var minranks 180
if ("%mindiff" = "skilled aficionado") then var minranks 190
if ("%mindiff" = "adept") then var minranks 200
if ("%mindiff" = "13th degree adept") then var minranks 213
if ("%mindiff" = "20th degree adept") then var minranks 220
if ("%mindiff" = "24th degree adept") then var minranks 224
if ("%mindiff" = "25th degree adept") then var minranks 225
if ("%mindiff" = "30th degree adept") then var minranks 230
if ("%mindiff" = "50th degree adept") then var minranks 250
if ("%mindiff" = "60th degree adept") then var minranks 260
if ("%mindiff" = "75th degree adept") then var minranks 275
if ("%mindiff" = "99th degree adept") then var minranks 299
if ("%mindiff" = "expert") then var minranks 300
if ("%mindiff" = "25th degree expert") then var minranks 325
if ("%mindiff" = "50th degree expert") then var minranks 350
if ("%mindiff" = "58th degree expert") then var minranks 358
if ("%mindiff" = "75th degree expert") then var minranks 375
if ("%mindiff" = "professional") then var minranks 400
if ("%maxdiff" = "adept") then var maxranks 200
if ("%maxdiff" = "25th degree adept") then var maxranks 225
if ("%maxdiff" = "50th degree adept") then var maxranks 250
if ("%maxdiff" = "75th degree adept") then var maxranks 275
if ("%maxdiff" = "expert") then var maxranks 300
if ("%maxdiff" = "25th degree expert") then var maxranks 325
if ("%maxdiff" = "50th degree expert") then var maxranks 350
if ("%maxdiff" = "58th degree expert") then var maxranks 358
if ("%maxdiff" = "75th degree expert") then var maxranks 375
if ("%maxdiff" = "professional") then var maxranks 400
if ("%maxdiff" = "exceptional professional") then var maxranks 420
if ("%maxdiff" = "outstanding professional") then var maxranks 440
if ("%maxdiff" = "renowned professional") then var maxranks 460
if ("%maxdiff" = "true professional") then var maxranks 480
if ("%maxdiff" = "authority") then var maxranks 500
if ("%maxdiff" = "exceptional authority") then var maxranks 520
if ("%maxdiff" = "outstanding authority") then var maxranks 540
if ("%maxdiff" = "renowned authority") then var maxranks 560
if ("%maxdiff" = "true authority") then var maxranks 580
if ("%maxdiff" = "genius") then var maxranks 600
if ("%maxdiff" = "exceptional genius") then var maxranks 620
if ("%maxdiff" = "outstanding genius") then var maxranks 640
if ("%maxdiff" = "renowned genius") then var maxranks 660
if ("%maxdiff" = "true genius") then var maxranks 680
if ("%maxdiff" = "savant") then var maxranks 700
if ("%maxdiff" = "distinguished savant") then var maxranks 720
if ("%maxdiff" = "venerated savant") then var maxranks 740
if ("%maxdiff" = "exalted savant") then var maxranks 760
if ("%maxdiff" = "transcendent savant") then var maxranks 780
if ("%maxdiff" = "master") then var maxranks 800
if ("%maxdiff" = "distinguished master") then var maxranks 820
if ("%maxdiff" = "venerated master") then var maxranks 840
if ("%maxdiff" = "exalted master") then var maxranks 860
if ("%maxdiff" = "transcendent master") then var maxranks 880
if ("%maxdiff" = "grand master") then var maxranks 900
if ("%maxdiff" = "distinguished grand master") then var maxranks 920
if ("%maxdiff" = "venerated grand master") then var maxranks 940
if ("%maxdiff" = "exalted grand master") then var maxranks 960
if ("%maxdiff" = "transcendent grand master") then var maxranks 980
if ("%maxdiff" = "guru") then var maxranks 1000
if ("%maxdiff" = "legend") then var maxranks 1250
if ("%contest1" != "N/A") then var contest %contest1 vs. %contest2
if ("%circleprereq" != "N/A") then var prereq circle %circleprereq, %spellprereq
if ("%circleprereq" = "N/A") then var prereq %spellprereq
if ("%circleprereq" != "N/A") && ("%spellprereq" = "N/A") then var prereq circle %circleprereq
if ("%circleprereq" = "N/A") && ("%spellprereq" = "N/A") then var prereq none
if ("%spellprereq" = "none") then var prereq none
return

NumberFixMinPrep:
if ("%minprep" = "one") then var minprepnum 1
if ("%minprep" = "two") then var minprepnum 2
if ("%minprep" = "three") then var minprepnum 3
if ("%minprep" = "four") then var minprepnum 4
if ("%minprep" = "five") then var minprepnum 5
if ("%minprep" = "six") then var minprepnum 6
if ("%minprep" = "seven") then var minprepnum 7
if ("%minprep" = "eight") then var minprepnum 8
if ("%minprep" = "nine") then var minprepnum 9
if ("%minprep" = "ten") then var minprepnum 10
if ("%minprep" = "eleven") then var minprepnum 11
if ("%minprep" = "twelve") then var minprepnum 12
if ("%minprep" = "thirteen") then var minprepnum 13
if ("%minprep" = "fourteen") then var minprepnum 14
if ("%minprep" = "fifteen") then var minprepnum 15
if ("%minprep" = "sixteen") then var minprepnum 16
if ("%minprep" = "seventeen") then var minprepnum 17
if ("%minprep" = "eighteen") then var minprepnum 18
if ("%minprep" = "nineteen") then var minprepnum 19
if ("%minprep" = "twenty") then var minprepnum 20
if ("%minprep" = "twenty-one") then var minprepnum 21
if ("%minprep" = "twenty-two") then var minprepnum 22
if ("%minprep" = "twenty-three") then var minprepnum 23
if ("%minprep" = "twenty-four") then var minprepnum 24
if ("%minprep" = "twenty-five") then var minprepnum 25
if ("%minprep" = "twenty-six") then var minprepnum 26
if ("%minprep" = "twenty-seven") then var minprepnum 27
if ("%minprep" = "twenty-eight") then var minprepnum 28
if ("%minprep" = "twenty-nine") then var minprepnum 29
if ("%minprep" = "thirty") then var minprepnum 30
if ("%minprep" = "thirty-one") then var minprepnum 31
if ("%minprep" = "thirty-two") then var minprepnum 32
if ("%minprep" = "thirty-three") then var minprepnum 33
if ("%minprep" = "thirty-four") then var minprepnum 34
if ("%minprep" = "thirty-five") then var minprepnum 35
if ("%minprep" = "thirty-six") then var minprepnum 36
if ("%minprep" = "thirty-seven") then var minprepnum 37
if ("%minprep" = "thirty-eight") then var minprepnum 38
if ("%minprep" = "thirty-nine") then var minprepnum 39
if ("%minprep" = "forty") then var minprepnum 40
if ("%minprep" = "forty-one") then var minprepnum 41
if ("%minprep" = "forty-two") then var minprepnum 42
if ("%minprep" = "forty-three") then var minprepnum 43
if ("%minprep" = "forty-four") then var minprepnum 44
if ("%minprep" = "forty-five") then var minprepnum 45
if ("%minprep" = "forty-six") then var minprepnum 46
if ("%minprep" = "forty-seven") then var minprepnum 47
if ("%minprep" = "forty-eight") then var minprepnum 48
if ("%minprep" = "forty-nine") then var minprepnum 49
if ("%minprep" = "fifty") then var minprepnum 50
if ("%minprep" = "fifty-one") then var minprepnum 51
if ("%minprep" = "fifty-two") then var minprepnum 52
if ("%minprep" = "fifty-three") then var minprepnum 53
if ("%minprep" = "fifty-four") then var minprepnum 54
if ("%minprep" = "fifty-five") then var minprepnum 55
if ("%minprep" = "fifty-six") then var minprepnum 56
if ("%minprep" = "fifty-seven") then var minprepnum 57
if ("%minprep" = "fifty-eight") then var minprepnum 58
if ("%minprep" = "fifty-nine") then var minprepnum 59
if ("%minprep" = "sixty") then var minprepnum 60
if ("%minprep" = "sixty-one") then var minprepnum 61
if ("%minprep" = "sixty-two") then var minprepnum 62
if ("%minprep" = "sixty-three") then var minprepnum 63
if ("%minprep" = "sixty-four") then var minprepnum 64
if ("%minprep" = "sixty-five") then var minprepnum 65
if ("%minprep" = "sixty-six") then var minprepnum 66
if ("%minprep" = "sixty-seven") then var minprepnum 67
if ("%minprep" = "sixty-eight") then var minprepnum 68
if ("%minprep" = "sixty-nine") then var minprepnum 69
if ("%minprep" = "seventy") then var minprepnum 70
if ("%minprep" = "seventy-one") then var minprepnum 71
if ("%minprep" = "seventy-two") then var minprepnum 72
if ("%minprep" = "seventy-three") then var minprepnum 73
if ("%minprep" = "seventy-four") then var minprepnum 74
if ("%minprep" = "seventy-five") then var minprepnum 75
if ("%minprep" = "seventy-six") then var minprepnum 76
if ("%minprep" = "seventy-seven") then var minprepnum 77
if ("%minprep" = "seventy-eight") then var minprepnum 78
if ("%minprep" = "seventy-nine") then var minprepnum 79
if ("%minprep" = "eighty") then var minprepnum 80
if ("%minprep" = "eighty-one") then var minprepnum 81
if ("%minprep" = "eighty-two") then var minprepnum 82
if ("%minprep" = "eighty-three") then var minprepnum 83
if ("%minprep" = "eighty-four") then var minprepnum 84
if ("%minprep" = "eighty-five") then var minprepnum 85
if ("%minprep" = "eighty-six") then var minprepnum 86
if ("%minprep" = "eighty-seven") then var minprepnum 87
if ("%minprep" = "eighty-eight") then var minprepnum 88
if ("%minprep" = "eighty-nine") then var minprepnum 89
if ("%minprep" = "ninety") then var minprepnum 90
if ("%minprep" = "ninety-one") then var minprepnum 91
if ("%minprep" = "ninety-two") then var minprepnum 92
if ("%minprep" = "ninety-three") then var minprepnum 93
if ("%minprep" = "ninety-four") then var minprepnum 94
if ("%minprep" = "ninety-five") then var minprepnum 95
if ("%minprep" = "ninety-six") then var minprepnum 96
if ("%minprep" = "ninety-seven") then var minprepnum 97
if ("%minprep" = "ninety-eight") then var minprepnum 98
if ("%minprep" = "ninety-nine") then var minprepnum 99
if ("%minprep" = "one hundred") then var minprepnum 100
if ("%minprep" = "one hundred one") then var minprepnum 101
if ("%minprep" = "one hundred two") then var minprepnum 102
if ("%minprep" = "one hundred three") then var minprepnum 103
if ("%minprep" = "one hundred four") then var minprepnum 104
if ("%minprep" = "one hundred five") then var minprepnum 105
if ("%minprep" = "one hundred six") then var minprepnum 106
if ("%minprep" = "one hundred seven") then var minprepnum 107
if ("%minprep" = "one hundred eight") then var minprepnum 108
if ("%minprep" = "one hundred nine") then var minprepnum 109
if ("%minprep" = "one hundred ten") then var minprepnum 110
if ("%minprep" = "one hundred eleven") then var minprepnum 111
if ("%minprep" = "one hundred twelve") then var minprepnum 112
if ("%minprep" = "one hundred thirteen") then var minprepnum 113
if ("%minprep" = "one hundred fourteen") then var minprepnum 114
if ("%minprep" = "one hundred fifteen") then var minprepnum 115
if ("%minprep" = "one hundred sixteen") then var minprepnum 116
if ("%minprep" = "one hundred seventeen") then var minprepnum 117
if ("%minprep" = "one hundred eighteen") then var minprepnum 118
if ("%minprep" = "one hundred nineteen") then var minprepnum 119
if ("%minprep" = "one hundred twenty") then var minprepnum 120
if ("%minprep" = "one hundred twenty-one") then var minprepnum 121
if ("%minprep" = "one hundred twenty-two") then var minprepnum 122
if ("%minprep" = "one hundred twenty-three") then var minprepnum 123
if ("%minprep" = "one hundred twenty-four") then var minprepnum 124
if ("%minprep" = "one hundred twenty-five") then var minprepnum 125
if ("%minprep" = "one hundred fifty") then var minprepnum 150
if ("%minprep" = "one hundred seventy-five") then var minprepnum 175
if ("%minprep" = "two hundred") then var minprepnum 200
if ("%minprep" = "two hundred twenty-five") then var minprepnum 225
if ("%minprep" = "two hundred fifty") then var minprepnum 250
if ("%minprep" = "two hundred seventy-five") then var minprepnum 275
if ("%minprep" = "three hundred") then var minprepnum 300
if ("%minprep" = "three hundred twenty-five") then var minprepnum 325
if ("%minprep" = "three hundred fifty") then var minprepnum 350
if ("%minprep" = "three hundred seventy-five") then var minprepnum 375
if ("%minprep" = "four hundred") then var minprepnum 400
if ("%minprep" = "four hundred twenty-five") then var minprepnum 425
if ("%minprep" = "four hundred fifty") then var minprepnum 450
if ("%minprep" = "four hundred seventy-five") then var minprepnum 475
if ("%minprep" = "five hundred") then var minprepnum 500
if ("%minprep" = "five hundred twenty-five") then var minprepnum 525
if ("%minprep" = "five hundred fifty") then var minprepnum 550
if ("%minprep" = "five hundred seventy-five") then var minprepnum 575
if ("%minprep" = "six hundred") then var minprepnum 600
if ("%minprep" = "six hundred twenty-five") then var minprepnum 625
if ("%minprep" = "six hundred fifty") then var minprepnum 650
if ("%minprep" = "six hundred seventy-five") then var minprepnum 675
if ("%minprep" = "seven hundred") then var minprepnum 700
if ("%minprep" = "seven hundred twenty-five") then var minprepnum 725
if ("%minprep" = "seven hundred fifty") then var minprepnum 750
if ("%minprep" = "seven hundred seventy-five") then var minprepnum 775
if ("%minprep" = "eight hundred") then var minprepnum 800
if ("%minprep" = "eight hundred twenty-five") then var minprepnum 825
if ("%minprep" = "eight hundred fifty") then var minprepnum 850
if ("%minprep" = "eight hundred seventy-five") then var minprepnum 875
if ("%minprep" = "nine hundred") then var minprepnum 900
if ("%minprep" = "nine hundred twenty-five") then var minprepnum 925
if ("%minprep" = "nine hundred fifty") then var minprepnum 950
if ("%minprep" = "nine hundred seventy-five") then var minprepnum 975
if ("%minprep" = "one thousand") then var minprepnum 1000
return

NumberFixMaxPrep:
if ("%maxprep" = "one") then var maxprepnum 1
if ("%maxprep" = "two") then var maxprepnum 2
if ("%maxprep" = "three") then var maxprepnum 3
if ("%maxprep" = "four") then var maxprepnum 4
if ("%maxprep" = "five") then var maxprepnum 5
if ("%maxprep" = "six") then var maxprepnum 6
if ("%maxprep" = "seven") then var maxprepnum 7
if ("%maxprep" = "eight") then var maxprepnum 8
if ("%maxprep" = "nine") then var maxprepnum 9
if ("%maxprep" = "ten") then var maxprepnum 10
if ("%maxprep" = "eleven") then var maxprepnum 11
if ("%maxprep" = "twelve") then var maxprepnum 12
if ("%maxprep" = "thirteen") then var maxprepnum 13
if ("%maxprep" = "fourteen") then var maxprepnum 14
if ("%maxprep" = "fifteen") then var maxprepnum 15
if ("%maxprep" = "sixteen") then var maxprepnum 16
if ("%maxprep" = "seventeen") then var maxprepnum 17
if ("%maxprep" = "eighteen") then var maxprepnum 18
if ("%maxprep" = "nineteen") then var maxprepnum 19
if ("%maxprep" = "twenty") then var maxprepnum 20
if ("%maxprep" = "twenty-one") then var maxprepnum 21
if ("%maxprep" = "twenty-two") then var maxprepnum 22
if ("%maxprep" = "twenty-three") then var maxprepnum 23
if ("%maxprep" = "twenty-four") then var maxprepnum 24
if ("%maxprep" = "twenty-five") then var maxprepnum 25
if ("%maxprep" = "twenty-six") then var maxprepnum 26
if ("%maxprep" = "twenty-seven") then var maxprepnum 27
if ("%maxprep" = "twenty-eight") then var maxprepnum 28
if ("%maxprep" = "twenty-nine") then var maxprepnum 29
if ("%maxprep" = "thirty") then var maxprepnum 30
if ("%maxprep" = "thirty-one") then var maxprepnum 31
if ("%maxprep" = "thirty-two") then var maxprepnum 32
if ("%maxprep" = "thirty-three") then var maxprepnum 33
if ("%maxprep" = "thirty-four") then var maxprepnum 34
if ("%maxprep" = "thirty-five") then var maxprepnum 35
if ("%maxprep" = "thirty-six") then var maxprepnum 36
if ("%maxprep" = "thirty-seven") then var maxprepnum 37
if ("%maxprep" = "thirty-eight") then var maxprepnum 38
if ("%maxprep" = "thirty-nine") then var maxprepnum 39
if ("%maxprep" = "forty") then var maxprepnum 40
if ("%maxprep" = "forty-one") then var maxprepnum 41
if ("%maxprep" = "forty-two") then var maxprepnum 42
if ("%maxprep" = "forty-three") then var maxprepnum 43
if ("%maxprep" = "forty-four") then var maxprepnum 44
if ("%maxprep" = "forty-five") then var maxprepnum 45
if ("%maxprep" = "forty-six") then var maxprepnum 46
if ("%maxprep" = "forty-seven") then var maxprepnum 47
if ("%maxprep" = "forty-eight") then var maxprepnum 48
if ("%maxprep" = "forty-nine") then var maxprepnum 49
if ("%maxprep" = "fifty") then var maxprepnum 50
if ("%maxprep" = "fifty-one") then var maxprepnum 51
if ("%maxprep" = "fifty-two") then var maxprepnum 52
if ("%maxprep" = "fifty-three") then var maxprepnum 53
if ("%maxprep" = "fifty-four") then var maxprepnum 54
if ("%maxprep" = "fifty-five") then var maxprepnum 55
if ("%maxprep" = "fifty-six") then var maxprepnum 56
if ("%maxprep" = "fifty-seven") then var maxprepnum 57
if ("%maxprep" = "fifty-eight") then var maxprepnum 58
if ("%maxprep" = "fifty-nine") then var maxprepnum 59
if ("%maxprep" = "sixty") then var maxprepnum 60
if ("%maxprep" = "sixty-one") then var maxprepnum 61
if ("%maxprep" = "sixty-two") then var maxprepnum 62
if ("%maxprep" = "sixty-three") then var maxprepnum 63
if ("%maxprep" = "sixty-four") then var maxprepnum 64
if ("%maxprep" = "sixty-five") then var maxprepnum 65
if ("%maxprep" = "sixty-six") then var maxprepnum 66
if ("%maxprep" = "sixty-seven") then var maxprepnum 67
if ("%maxprep" = "sixty-eight") then var maxprepnum 68
if ("%maxprep" = "sixty-nine") then var maxprepnum 69
if ("%maxprep" = "seventy") then var maxprepnum 70
if ("%maxprep" = "seventy-one") then var maxprepnum 71
if ("%maxprep" = "seventy-two") then var maxprepnum 72
if ("%maxprep" = "seventy-three") then var maxprepnum 73
if ("%maxprep" = "seventy-four") then var maxprepnum 74
if ("%maxprep" = "seventy-five") then var maxprepnum 75
if ("%maxprep" = "seventy-six") then var maxprepnum 76
if ("%maxprep" = "seventy-seven") then var maxprepnum 77
if ("%maxprep" = "seventy-eight") then var maxprepnum 78
if ("%maxprep" = "seventy-nine") then var maxprepnum 79
if ("%maxprep" = "eighty") then var maxprepnum 80
if ("%maxprep" = "eighty-one") then var maxprepnum 81
if ("%maxprep" = "eighty-two") then var maxprepnum 82
if ("%maxprep" = "eighty-three") then var maxprepnum 83
if ("%maxprep" = "eighty-four") then var maxprepnum 84
if ("%maxprep" = "eighty-five") then var maxprepnum 85
if ("%maxprep" = "eighty-six") then var maxprepnum 86
if ("%maxprep" = "eighty-seven") then var maxprepnum 87
if ("%maxprep" = "eighty-eight") then var maxprepnum 88
if ("%maxprep" = "eighty-nine") then var maxprepnum 89
if ("%maxprep" = "ninety") then var maxprepnum 90
if ("%maxprep" = "ninety-one") then var maxprepnum 91
if ("%maxprep" = "ninety-two") then var maxprepnum 92
if ("%maxprep" = "ninety-three") then var maxprepnum 93
if ("%maxprep" = "ninety-four") then var maxprepnum 94
if ("%maxprep" = "ninety-five") then var maxprepnum 95
if ("%maxprep" = "ninety-six") then var maxprepnum 96
if ("%maxprep" = "ninety-seven") then var maxprepnum 97
if ("%maxprep" = "ninety-eight") then var maxprepnum 98
if ("%maxprep" = "ninety-nine") then var maxprepnum 99
if ("%maxprep" = "one hundred") then var maxprepnum 100
if ("%maxprep" = "one hundred one") then var maxprepnum 101
if ("%maxprep" = "one hundred two") then var maxprepnum 102
if ("%maxprep" = "one hundred three") then var maxprepnum 103
if ("%maxprep" = "one hundred four") then var maxprepnum 104
if ("%maxprep" = "one hundred five") then var maxprepnum 105
if ("%maxprep" = "one hundred six") then var maxprepnum 106
if ("%maxprep" = "one hundred seven") then var maxprepnum 107
if ("%maxprep" = "one hundred eight") then var maxprepnum 108
if ("%maxprep" = "one hundred nine") then var maxprepnum 109
if ("%maxprep" = "one hundred ten") then var maxprepnum 110
if ("%maxprep" = "one hundred eleven") then var maxprepnum 111
if ("%maxprep" = "one hundred twelve") then var maxprepnum 112
if ("%maxprep" = "one hundred thirteen") then var maxprepnum 113
if ("%maxprep" = "one hundred fourteen") then var maxprepnum 114
if ("%maxprep" = "one hundred fifteen") then var maxprepnum 115
if ("%maxprep" = "one hundred sixteen") then var maxprepnum 116
if ("%maxprep" = "one hundred seventeen") then var maxprepnum 117
if ("%maxprep" = "one hundred eighteen") then var maxprepnum 118
if ("%maxprep" = "one hundred nineteen") then var maxprepnum 119
if ("%maxprep" = "one hundred twenty") then var maxprepnum 120
if ("%maxprep" = "one hundred twenty-one") then var maxprepnum 121
if ("%maxprep" = "one hundred twenty-two") then var maxprepnum 122
if ("%maxprep" = "one hundred twenty-three") then var maxprepnum 123
if ("%maxprep" = "one hundred twenty-four") then var maxprepnum 124
if ("%maxprep" = "one hundred twenty-five") then var maxprepnum 125
if ("%maxprep" = "one hundred fifty") then var maxprepnum 150
if ("%maxprep" = "one hundred seventy-five") then var maxprepnum 175
if ("%maxprep" = "two hundred") then var maxprepnum 200
if ("%maxprep" = "two hundred twenty-five") then var maxprepnum 225
if ("%maxprep" = "two hundred fifty") then var maxprepnum 250
if ("%maxprep" = "two hundred seventy-five") then var maxprepnum 275
if ("%maxprep" = "three hundred") then var maxprepnum 300
if ("%maxprep" = "three hundred twenty-five") then var maxprepnum 325
if ("%maxprep" = "three hundred fifty") then var maxprepnum 350
if ("%maxprep" = "three hundred seventy-five") then var maxprepnum 375
if ("%maxprep" = "four hundred") then var maxprepnum 400
if ("%maxprep" = "four hundred twenty-five") then var maxprepnum 425
if ("%maxprep" = "four hundred fifty") then var maxprepnum 450
if ("%maxprep" = "four hundred seventy-five") then var maxprepnum 475
if ("%maxprep" = "five hundred") then var maxprepnum 500
if ("%maxprep" = "five hundred twenty-five") then var maxprepnum 525
if ("%maxprep" = "five hundred fifty") then var maxprepnum 550
if ("%maxprep" = "five hundred seventy-five") then var maxprepnum 575
if ("%maxprep" = "six hundred") then var maxprepnum 600
if ("%maxprep" = "six hundred twenty-five") then var maxprepnum 625
if ("%maxprep" = "six hundred fifty") then var maxprepnum 650
if ("%maxprep" = "six hundred seventy-five") then var maxprepnum 675
if ("%maxprep" = "seven hundred") then var maxprepnum 700
if ("%maxprep" = "seven hundred twenty-five") then var maxprepnum 725
if ("%maxprep" = "seven hundred fifty") then var maxprepnum 750
if ("%maxprep" = "seven hundred seventy-five") then var maxprepnum 775
if ("%maxprep" = "eight hundred") then var maxprepnum 800
if ("%maxprep" = "eight hundred twenty-five") then var maxprepnum 825
if ("%maxprep" = "eight hundred fifty") then var maxprepnum 850
if ("%maxprep" = "eight hundred seventy-five") then var maxprepnum 875
if ("%maxprep" = "nine hundred") then var maxprepnum 900
if ("%maxprep" = "nine hundred twenty-five") then var maxprepnum 925
if ("%maxprep" = "nine hundred fifty") then var maxprepnum 950
if ("%maxprep" = "nine hundred seventy-five") then var maxprepnum 975
if ("%maxprep" = "one thousand") then var maxprepnum 1000
return

NumberSlotCost:
if ("%slotcost" = "zero") then var slotcostnum 0
if ("%slotcost" = "one") then var slotcostnum 1
if ("%slotcost" = "two") then var slotcostnum 2
if ("%slotcost" = "three") then var slotcostnum 3
if ("%slotcost" = "four") then var slotcostnum 4
if ("%slotcost" = "five") then var slotcostnum 5
if ("%slotcost" = "six") then var slotcostnum 6
if ("%slotcost" = "seven") then var slotcostnum 7
return

LogData:
put #log >SpellData-$guildshort.txt %spellbook	%spellname [%syntax]	%skill	%spelltype	%target	%contest	%minprepnum	%mycap	%maxprepnum	%minranks	%maxranks	%slotcostnum	%prereq
put #log >SpellRaw-$guildshort.txt %spellbook	%spellname [%syntax]	%skill	%spelltype	%target	%contest	%minprep	%mycap	%maxprep	%mindiff	%maxdiff	%slotcost	%prereq
echo SpellData-$guildshort.txt %spellbook	%spellname [%syntax]	%skill	%spelltype	%target	%contest	%minprepnum	%mycap	%maxprepnum	%minranks	%maxranks	%slotcostnum	%prereq
echo SpellRaw-$guildshort.txt %spellbook	%spellname [%syntax]	%skill	%spelltype	%target	%contest	%minprep	%mycap	%maxprep	%mindiff	%maxdiff	%slotcost	%prereq
pause
return

end:
exit