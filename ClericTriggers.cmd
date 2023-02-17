CLERIC_TRIGGERS:
#BENEDICTION triggers
put #trigger {^You make a holy gesture and intone reverently|^You sense the Benediction spell} {#var BENE ON}
put #trigger {^You feel the divinity seep from your bones as the previous blessing} {#var BENE OFF}
#CENTERING triggers
put #trigger {^An odd tingling sensation spreads upward from your feet through your entire body|^You sense the Centering spell} {#var CENT ON}
put #trigger {The tingling sensation leaves you} {#var CENT OFF}
#DIVINE RADIANCE triggers
#HALO triggers
#MAJOR PHYSICAL PROTECTION triggers
put #trigger {^A bright silver nimbus roars up around you as streaks of steel-blue light|^You sense the Major Physical Protection spell} {#var MAPP ON}
put #trigger {^The field of silver-blue light dissipates from around you} {#var MAPP OFF}
#MINOR PHYSICAL PROTECTION triggers
put #trigger {^You are bathed in a soft silver glow for a moment|^You sense the Minor Physical Protection spell} {#var MPP ON}
put #trigger {^The soft silver glow fades from around you} {#var MPP OFF}
#MURRULA'S FLAMES triggers
put #trigger {^You raise your palms and face to the heavens, whispering a quiet prayer to Murrula|^You sense that the invisible warmth provided by the Murrula's Flames} {#var MF ON}
put #trigger {The warm sensation of Murrula's wings wanes from your bones, and you suddenly feel much more vulnerable to the gentle beckoning of Eylhaar} {#var MF OFF}
#PROTECTION FROM EVIL triggers
put #trigger {^You are bathed in a soft white glow for a moment|^You sense the Protection From Evil spell} {#var PFE ON}
put #trigger {^The soft white glow fades from around you} {#var PFE OFF}
#PERSISTENCE OF MANA triggers
put #trigger {^A searing pain spreads through your fingertips|^You sense the Persistence of Mana spell} {#var POM ON}
put #trigger {^A brief flicker of pain pulses through your veins as the expanded horizons} {#var POM OFF}
#REVELATION triggers
put #trigger {^Wisps of pale grey light begin to coalesce as you attempt|^You sense the Revelation spell} {#var REV ON}
put #trigger {^The heightened sense of spiritual awareness leaves you} {#var REV OFF}
#SANCTIFY PATTERN triggers
put #trigger {^Your nerves gently tingle as the spell settles into the interface between your mind and the mana streams|^You sense the Sanctify Pattern spell} {#var SAP ON}
put #trigger {^Your nerves buzz unpleasantly as the pattern guiding your spellcasting loses cohesion} {#var SAP OFF}
#SHIELD OF LIGHT triggers
#SOUL SHIELD triggers
put #trigger {^A lucent sphere glistens around you, enfolding your spirit|^You sense (.+) Soul Shield enfolding your spirit} {#var SOS ON}
put #trigger {^Your spirit feels less protected as the lucent sphere fades from around you} {#var SOS OFF}

put #trigger {^After a moment, you (sense|see|feel)} {#statusbar 3 Devotion: $DEVOTION_LEVEL/16}

put #trigger {^com|^comm|^commu|^commune} {#class devotion on;#event 1 "#class devotion off"}
put #trigger {^You feel unclean and unworthy.$} {#var DEVOTION_LEVEL 1} {devotion}
put #trigger {^You close your eyes and start to concentrate. In a moment a vision appears of a barren garden, parched and thirsting for nourishment. You have an intense desire to tend it.$} {#var DEVOTION_LEVEL 2} {devotion}
put #trigger {^You call out to your god, but there is no answer.$} {#var DEVOTION_LEVEL 3} {devotion}
put #trigger {^After a moment, you sense that your god is barely aware of you.$} {#var DEVOTION_LEVEL 4} {devotion}
put #trigger {^After a moment, you sense that your efforts have not gone unnoticed.$} {#var DEVOTION_LEVEL 5} {devotion}
put #trigger {^After a moment, you sense a distinct link between you and your god.$} {#var DEVOTION_LEVEL 6} {devotion}
put #trigger {^After a moment, you sense that your god is aware of your devotion.$} {#var DEVOTION_LEVEL 7} {devotion}
put #trigger {^After a moment, you sense that your god is pleased with your devotion.$} {#var DEVOTION_LEVEL 8} {devotion}
put #trigger {^After a moment, you sense that your god knows your name.$} {#var DEVOTION_LEVEL 9} {devotion}
put #trigger {^After a moment, you see a vision of your god, though the visage is cloudy and impossible to make out clearly.$} {#var DEVOTION_LEVEL 10} {devotion}
put #trigger {^After a moment, you sense a slight pressure on your shoulder, leaving the feeling that your efforts have been acknowledged.$} {#var DEVOTION_LEVEL 11} {devotion}
put #trigger {^After a moment, you see a silent vision of your god, radiating forth with a powerful divine brilliance.$} {#var DEVOTION_LEVEL 12} {devotion}
put #trigger {^After a moment, you see a vision of your god who calls to you by name, "Come here, my child, and I will show you things of wonder."$} {#var DEVOTION_LEVEL 13} {devotion}
put #trigger {^After a moment, you see a vision of your god who calls to you by name, "My child, though you may not always see my face, I am pleased with thee and thy efforts."$} {#var DEVOTION_LEVEL 14} {devotion}
put #trigger {^After a moment, you see a crystal-clear vision of your god who speaks slowly and deliberately, "Your unwavering faith and devotion pleases me greatly, (w+).  Go forth and continue your works, and you shall only attain a greater level of purity."$} {#var DEVOTION_LEVEL 15} {devotion}
put #trigger {^After a moment, you feel a clear presence like a warm blanket covering you beneath the shade of a giant sana'ati tree.$} {#var DEVOTION_LEVEL 16} {devotion}


CLERIC_HIGHLIGHTS:
put #highlight {line} {Red} {You get a sense that you have completed this ritual too recently in the past}
put #highlight {string} {Green} {You feel that your gods have smiled upon you for your attempts to please them}


CLERIC_SUBS:
put #subs {^You feel unclean and unworthy.$} {You feel unclean and unworthy. (1/16)} {devotion}
put #subs {^You close your eyes and start to concentrate. In a moment a vision appears of a barren garden, parched and thirsting for nourishment. You have an intense desire to tend it.$} {You close your eyes and start to concentrate. In a moment a vision appears of a barren garden, parched and thirsting for nourishment. You have an intense desire to tend it. (2/16)} {devotion}
put #subs {^You call out to your god, but there is no answer.$} {You call out to your god, but there is no answer. (3/16)} {devotion}
put #subs {^After a moment, you sense that your god is barely aware of you.$} {After a moment, you sense that your god is barely aware of you. (4/16)} {devotion}
put #subs {^After a moment, you sense that your efforts have not gone unnoticed.$} {After a moment, you sense that your efforts have not gone unnoticed. (5/16)} {devotion}
put #subs {^After a moment, you sense a distinct link between you and your god.$} {After a moment, you sense a distinct link between you and your god. (6/16)} {devotion}
put #subs {^After a moment, you sense that your god is aware of your devotion.$} {After a moment, you sense that your god is aware of your devotion. (7/16)} {devotion}
put #subs {^After a moment, you sense that your god is pleased with your devotion.$} {After a moment, you sense that your god is pleased with your devotion. (8/16)} {devotion}
put #subs {^After a moment, you sense that your god knows your name.$} {After a moment, you sense that your god knows your name. (9/16)} {devotion}
put #subs {^After a moment, you see a vision of your god, though the visage is cloudy and impossible to make out clearly.$} {After a moment, you see a vision of your god, though the visage is cloudy and impossible to make out clearly. (10/16)} {devotion}
put #subs {^After a moment, you sense a slight pressure on your shoulder, leaving the feeling that your efforts have been acknowledged.$} {After a moment, you sense a slight pressure on your shoulder, leaving the feeling that your efforts have been acknowledged. (11/16)} {devotion}
put #subs {^After a moment, you see a silent vision of your god, radiating forth with a powerful divine brilliance.$} {After a moment, you see a silent vision of your god, radiating forth with a powerful divine brilliance. (12/16)} {devotion}
put #subs {^After a moment, you see a vision of your god who calls to you by name, "Come here, my child, and I will show you things of wonder."$} {After a moment, you see a vision of your god who calls to you by name, "Come here, my child, and I will show you things of wonder." (13/16)} {devotion}
put #subs {^After a moment, you see a vision of your god who calls to you by name, "My child, though you may not always see my face, I am pleased with thee and thy efforts."$} {After a moment, you see a vision of your god who calls to you by name, "My child, though you may not always see my face, I am pleased with thee and thy efforts." (14/16)} {devotion}
put #subs {^After a moment, you see a crystal-clear vision of your god who speaks slowly and deliberately, "Your unwavering faith and devotion pleases me greatly, (w+).  Go forth and continue your works, and you shall only attain a greater level of purity."$} {After a moment, you see a crystal-clear vision of your god who speaks slowly and deliberately, "Your unwavering faith and devotion pleases me greatly, $1. Go forth and continue your works, and you shall only attain a greater level of purity." (15/16)} {devotion}
put #subs {^After a moment, you feel a clear presence like a warm blanket covering you beneath the shade of a giant sana'ati tree.$} {After a moment, you feel a clear presence like a warm blanket covering you beneath the shade of a giant sana'ati tree. (16/16)} {devotion}
exit