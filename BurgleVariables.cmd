## Reveler's BurgleVariables Script
## v.3.1
## 07/13/2021
## Discord Reveler#6969

## v. 2.1 updates:
## Added option to hide before searches
## Added variable to drop all burgled items if not in your donotpawnthis variable
## Added variable to drop certain burgled items
## v. 3.0 updates:
## Changed var for burgle type to RING|LOCKPICK|ROPE|TOGGLE - with "TOGGLE" will pick the skill with lowest learning rate.  Must have worn lockpick ring for TOGGLE.
## v. 3.1 updated to use global tvars instead of global vars

## THIS IS AN INCLUDED SCRIPT IN THE BURGLE SCRIPT AND MUST BE COMPLETED BEFORE RUNNING .BURGLE.CMD

#debug 10

#Preliminary variables - don't touch
var skip NULL
var donotpawnthis NULL
var trashall NO
var home Crossing
### Edit below here


## SET YOUR CHARACTER'S NAMES BELOW, IF NOTHING USE NULL
## MAKE SURE TO UPDATE EACH CHARACTERS VARIABLES INDIVIDUALLY BELOW
var CHARACTER1 Amesia
var CHARACTER2 Thyon
var CHARACTER3 Cupcayk
var CHARACTER4 Dkar
var CHARACTER5 Zynali
var CHARACTER6 Lillimay
var CHARACTER7 Feathergrowl
var CHARACTER8 Vhini
var CHARACTER9 Thandra
var CHARACTER10 Hyapatia
var CHARACTER11 Meal
var CHARACTER12 Ezmaralda


## SET ALL YOUR CUSTOM VARIABLES PER EACH CHARACTER IN THE BLOCKS BELOW THIS!
##### CHARACTER 1 VARIABLES
if ("$charactername" = "%CHARACTER1") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack PACK
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method LOCKPICK
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick  
var ringtype lockpick
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype titian rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis manual|scimitar|opener|arrow|book
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home 
}

if ("$charactername" = "%CHARACTER2") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack RUCKSACK
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype braided rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis case|manual|arrow
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|pestle|basket|tote
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip kitchen
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home RIVERHAVEN
}

if ("$charactername" = "%CHARACTER3") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Rucksack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype heavy rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn NO
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 7
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis arrow|book|bolt
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|pestle|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home Crossing
}

if ("$charactername" = "%CHARACTER4") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack KIT
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype heavy rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 2
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis case|manual|arrow|book
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|pestle|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home Crossing
}

if ("$charactername" = "%CHARACTER5") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack RUCKSACK
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype braided rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis arrow|book|sieve|bolt
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket|fabric
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home Crossing
}

if ("$charactername" = "%CHARACTER6") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Haversack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype NULL
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn NO
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme ON
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn YES
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis arrow|stone
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home Crossing
}

if ("$charactername" = "%CHARACTER7") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack haversack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype heavy rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn NO
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme YES
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis bolt|arrow|book|sieve
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip kitchen
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home CROSSING 
}

## SET ALL YOUR CUSTOM VARIABLES PER EACH CHARACTER IN THE BLOCKS BELOW THIS!
##### CHARACTER 1 VARIABLES
if ("$charactername" = "%CHARACTER8") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack rucksack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method TOGGLE
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick ankle-cuff|golden key
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype heavy rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
				 
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 2
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn YES
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis arrow|stone
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|pestle|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home Crossing
}

##### CHARACTER 9 VARIABLES
if ("$charactername" = "%CHARACTER9") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Backpack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick  
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype titian rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis manual|scimitar|opener|arrow|book
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip kitchen|bedroom
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home 
}

##### CHARACTER 10 VARIABLES
if ("$charactername" = "%CHARACTER10") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Backpack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick  
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype titian rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis guide|scimitar|opener|arrow|book|keepsake\sbox|
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL 
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home NULL
}
##### CHARACTER 11 VARIABLES
if ("$charactername" = "%CHARACTER11") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Backpack
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick  
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype titian rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme OFF
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis manual|scimitar|opener|arrow|book
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home CROSSING
}

##### CHARACTER 12 VARIABLES
if ("$charactername" = "%CHARACTER12") then 
{
# do you use the temporal eddy for storage of items?  If yes, list the items in an array, with LOOT for burgle loot, ROPE for burgle rope entry, RING for lockpick ring and LOCKPICK for loose lockpicks.  NULL if you don't use the eddy
var eddy NULL
# where do you want to store your stolen items?  If storing in your eddy, you must use noun "portal"
var pack Duffel Bag
# method can be RING, LOCKPICK, ROPE, or TOGGLE; RING (uses lockpick stacker) and LOCKPICK (uses spare lockpicks) teach locks, ROPE teaches athletics.
# TOGGLE will swap between RING and ROPE - must set your lockpick stacker variable and rope variable
var method RING
# ringtype is the type of lockpick ring you have.  It can be any of the following: lockpick ring|lockpick case|lockpick  
var ringtype lockpick ring
# Use your adjective-noun for your rope
# DANCING ROPES DO NOT WORK
var ropetype titian rope
# Toggle for worn rope - Note - MUST wear lockpick ring
var worn YES
# Travel location should be the city and the roomid.  Pick a room where you *know* there will not be a guard, or leave NULL NOTE: LEAVE NULL IF USING WITHIN UBERCOMBAT
var travel NULL
# maximum times to try to search surfaces
var maxgrabs 3
# do you want to hide before you search? Will ALWAYS be hidden for first search. ON will attempt to hide before any additional search. WARNING - MAY BE MORE RISKY BECAUSE OF ROUND TIME AND WILL REDUCE NUMBER OF POTENTIAL ROOMS YOU WILL HAVE TIME TO SEARCH
var hideme NO
# pawn YES will try to pawn your stolen goods NOTE - PUT NO IF PAWNING THROUGH UBERCOMBAT
var pawn NO
# put loot you DO NOT wish to sell here if you use pawning within .BURGLE.  The full lootpool variable is in .burgle. Separate with |
var donotpawnthis manual|scimitar|opener|arrow|book|stones
# if you want to drop everything EXCEPT the "donotpawnthis" items, put YES here
var trashall NO
# if you want to drop SOME things, put them here
var trashthings cylinder|sphere|napkin|tankard|shakers|snare|twine|mouse|rat|basket
# Rooms you do not want to search.  Choose from following: kitchen|bedroom|workroom|sanctum|armory|library
var skip NULL
# Hometown. Only matters if pawning.  MUST be a location with a pawnshop.  Uses .travel so if .travel won't get you to that location, script will fail
var home NULL 
}

######### END USER VARIABLES DON'T TOUCH ANYTHING ELSE


if matchre("%method", "(?i)toggle") then
{
	if ($Athletics.LearningRate >= $Locksmithing.LearningRate) then var method RING
else var method ROPE
}

put #tvar BURGLE.EDDY %eddy
put #tvar BURGLE.PACK %pack
put #tvar BURGLE.METHOD %method
put #tvar BURGLE.RINGTYPE %ringtype
put #tvar BURGLE.ROPETYPE %ropetype
put #tvar BURGLE.WORN %worn
put #tvar BURGLE.TRAVEL %travel
put #tvar BURGLE.MAXGRABS %maxgrabs
put #tvar BURGLE.PAWN %pawn
put #tvar BURGLE.KEEP %donotpawnthis
put #tvar BURGLE.TRASHALL %trashall
put #tvar BURGLE.TRASHITEMS %trashthings
put #tvar BURGLE.HIDE %hideme
put #tvar BURGLE.SKIP %skip
put #tvar BURGLE.HOME %home
