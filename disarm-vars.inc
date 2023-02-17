# version 1.1

#################################################################
## REQUIRED VARIABLES FOR SHROOM'S SMART DISARM SCRIPT
## THIS MUST BE A SEPARATE SCRIPT AND NAMED disarm-vars.inc
#################################################################

## YOU MUST SET YOUR CHARACTER'S NAME(S) BELOW
## IF ONLY ONE CHARACTER THEN JUST SET CHARACTER1. REST CAN BE NULL
## EVERY CHARACTER THAT USES THIS SCRIPT MUST BE SETUP IN HERE
var CHARACTER1 Rheyha
var CHARACTER2 Thyon
var CHARACTER3 Cupcayk
var CHARACTER4 Zynali
var CHARACTER5 Hayiri
var CHARACTER6 Dkar
var CHARACTER7 Lillimay
var CHARACTER8 Feathergrowl
var CHARACTER9 Thandra
var CHARACTER10 Hyapatia
var CHARACTER11 Meal
var CHARACTER12 NULL
var CHARACTER13 NULL
var CHARACTER14 NULL
var CHARACTER15 NULL
###################################################################################################################
## ONCE YOU SET A CHARACTER NAME ABOVE - YOU MUST SET THE SPECIFIC VARIABLES FOR THAT CHARACTER BELOW
## EACH "BLOCK" CONTAINS ALL THE VARIABLES FOR EACH DIFFERENT CHARACTER NUMBER - Search for "CHARACTER2" etc.. 
###################################################################################################################
### VV DO NOT TOUCH THESE LINES!!!
goto disarmload
LOADVARS:
### ^^ DO NOT TOUCH THESE LINES!!!
######################################################
if ("$charactername" = "%CHARACTER1") then
## DONT CHANGE THIS ABOVE ^^^^^ 
## CHANGE ALL THESE BELOW VVVV
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 BACKPACK
     var container2 DARK BAG
     var container3 BACKPACK
     var sheath water BALDRIC
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer toolstrap
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch GEM pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container BACKPACK
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch ON
     # ANY HAND WORN ARMOR?
     var knuckles NULL
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage util belt
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer locksmith's pouch
     return
     }
     
if ("$charactername" = "%CHARACTER2") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 duffel bag
     var container2 rucksack
     var container3 duffel.bag
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container Thigh Pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles NULL
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage kit
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking OFF
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -2
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER3") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 Rucksack
     var container2 duffel.bag
     var container3 NULL
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer toolstrap
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items pelletbow
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh bag
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage pouch
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking YES
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -3
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER4") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 Rucksack
     var container2 Duffel Bag
     var container3 Greatsword Sheath 
     var sheath Baldrick
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container SATCHEL 
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles Knuckles
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER5") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 gearbag
     var container2 haversack
     var container3 Sweets_Pouch
     var sheath Baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON 
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container Sweets.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles NULL
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage NULL
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking YES
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer NULL 
     return
     }
     
if ("$charactername" = "%CHARACTER6") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 KIT
     var container2 Traveling Bag
     var container3 NULL
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container Thigh_Pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -3
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER7") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 pack
     var container2 haversack
     var container3 satchel
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container Haversack
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch ON 
     # ANY HAND WORN ARMOR?
     var knuckles NULL
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER8") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 haversack	
     var container2 backpack
     var container3 baldric
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON 
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container laufisana
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch ON 
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER9") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 backpack
     var container2 carryall
     var container3 thigh pouch
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch lavender pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch ON
     # ANY HAND WORN ARMOR?
     var knuckles NULL 
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage Carryall
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -2
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER10") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 backpack
     var container2 haversack
     var container3 thigh.pouch
     var sheath baldric
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON 
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container hip tote
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF 
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -3
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER11") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 backpack
     var container2 bag
     var container3 thigh pouch
     var sheath harness
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn ON
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch gem pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch ON
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage backpack
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL ON 
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent OFF
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -3
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER12") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 bag
     var container2 lootsack
     var container3 pannier
     var sheath harness
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn OFF
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER13") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 bag
     var container2 lootsack
     var container3 pannier
     var sheath harness
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn OFF
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER14") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 bag
     var container2 lootsack
     var container3 pannier
     var sheath harness
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn OFF
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
if ("$charactername" = "%CHARACTER15") then
     {
     ## SET YOUR BAGS WHERE BOXES CAN BE FOUND
     ## AND/OR WHERE YOUR ARMOR/HAND ITEMS CAN BE STOWED
     var container1 bag
     var container2 lootsack
     var container3 pannier
     var sheath harness
     ## TIE CONTAINER (If you use a toolstrap/toolbelt etc container to TIE weapons etc to) 
     ## SET THE VERB OF THE TIE CONTAINER 
     var TieContainer NULL
     ### SET THE ITEMS YOU WANT TO ALWAYS TIE TO IT ( in an array - item1|item2|item3  )
     var TieContainer.Items NULL 
     ## Do you WEAR your GEM POUCH or do you keep them stowed away in your bags?
     ## (ON or OFF) - ON if you wear one, OFF if you do not wear a gem pouch
     var gempouchWorn OFF
     ## DO YOUR GEM POUCHES HAVE SOME WEIRD SYNTAX? SET IT HERE. LEAVE AT GEM POUCH IF NORMAL
     var gempouch black pouch
     ## WHERE DO WE STORE YOUR COMPLETELY FULL, TIED UP GEM POUCHES? (CLOSABLE CONTAINER!)
     var gempouch.container thigh.pouch
     ## TIE YOUR GEM POUCHES? ON OR OFF - YES WILL TIE UP ANY FULL POUCHES
     var tie.pouch OFF
     # ANY HAND WORN ARMOR?
     var knuckles knuckle
     #### ARE YOU USING A LOCKPICK RING or LOCKPICK CASE? (ON or OFF) (Auto-Detects if case or ring)
     var lockpick.ring ON
     # WHERE DO YOU STORE EXTRA LOCKPICKS FOR RESTOCKING YOUR LOCKPICK RING/CASE? (IF ANY - Not necessary to set)
     var pickstorage bag
     # MAGIC SKELETON KEY? (ON or OFF) - ONLY FOR USE WITH A MAGIC LOCKPICKING SKELETON KEY
     var skeleton.key OFF
     #### DO YOU WANT TO PUT YOUR ARMOR BACK ON AT THE END? (IF IT TOOK ANY OFF FIRST?)
     var wear.armor ON
     #### DO YOU WANT TO USE THE AUTO-HEALER IF YOU GET HURT?? (ON or OFF) 
     #### WARNING: SETTING TO NO WILL SKIP GETTING HEALED SO ITS UP TO YOU TO RECOVER!
     var autoheal ON
     # CONTINUE PICKING AFTER MIND LOCK? (ON or OFF) - NO WILL STOP PICKING ONCE MIND LOCKED
     # SET TO YES IF YOU WANT TO CONTINUE PICKING UNTIL ALL THE BOXES ARE GONE AND IGNORE MINDSTATE
     var keep.picking ON
     # MOVE.ROOMS (ON or OFF) - SET TO YES IF YOU PICK BOXES IN A ROOM WITH OTHER PLAYERS
     # THIS WILL MOVE ROOMS WHEN DISARMING AREA-WIDE TRAPS THAT CAN HURT/EFFECT OTHERS
     var MOVE.ROOMS OFF
     # SET YOUR "STARTING" ROOM IN AUTOMAPPER (MAIN ROOM YOU WANT TO PICK BOXES IN OR RETURN TO)
     # THESE VARIABLES DO NOT MATTER IF YOU HAVE MOVE.ROOMS SET TO NO
     var STARTING.ROOM 45
     # SET YOUR "SAFE" ROOM (FOR DISARMING AREA-WIDE TRAPS THAT CAN HURT OTHERS)
     var SAFE.ROOM 45
     # HARVEST TRAPS? (ON or OFF)
     # Harvesting increases overall time of picking SIGNIFICANTLY but also increases EXP per box
     var harvest OFF
     # ALWAYS DISMANTLE BOXES? (ON or OFF)
     # If ON will ALWAYS dismantle boxes even if in a room with a bucket/trash bin
     # If OFF - Will only dismantle if there is no trash receptacle in room
     var DISMANTLE.ALL OFF
     # DO YOU WANT TO KEEP ALL THE COMPONENTS YOU HARVEST? (ON or OFF)
     # SCRIPT WILL ALWAYS KEEP CUBES IF SCRIPT FINDS THEM, WILL DROP ANYTHING ELSE IF NO
     ## IF YOU TURN THIS ON SCRIPT WILL TRY TO AUTO-SELL COMPONENTS
     var keepcomponent ON
     #### BASE DIFFICULTY ADJUSTER. FOR INCREASING DIFFICULTY MANUALLY ( -5 to 5 ) DEFAULT IS 0
     #### LOWER THIS NUMBER TO MAKE TRAPS TEACH BETTER/HIGHER RISK - (USE QUICK/BLIND MORE OFTEN)
     #### RAISE THIS NUMBER TO MAKE TRAPS EASIER/LESS LIKELY TO EXPLODE - (USE CAREFUL MORE OFTEN)
     var baseline_difficulty -1
     ###################################
     # THIEF ONLY VARIABLES
     ###################################
     # SET THE KHRI YOU WANT TO USE (IGNORE IF NON-THIEF)
     var khri safe focus sight avoidance darken
     # NAME OF YOUR COMPONENT CONTAINER - SET TO NULL TO TURN OFF (HARVEST MUST BE ON)
     var componentcontainer dark.pouch
     return
     }
     
     echo **** ERROR! YOU DID NOT SET YOUR DISARM VARIABLES PROPERLY!!
     echo **** Edit disarm-vars.inc script and make sure to add your character's name to: var CHARACTER1
     echo **** If using script with multiple characters you must set each of them under CHARACTER2, CHARACTER3 etc. 
     echo **** Then find the Character block for that character number below and edit all the variables for each character. 
     put #echo >Log #cf2319 ** Error! Disarm-vars not properly setup. Edit disarm-vars.inc
     goto DONE
disarmload: