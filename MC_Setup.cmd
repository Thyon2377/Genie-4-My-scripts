if "$charactername" = "Zynali" then goto CHARACTER1
if "$charactername" = "Thyon" then goto CHARACTER2
if "$charactername" = "Cupcayk" then goto CHARACTER3
if "$charactername" = "Vleri" then goto CHARACTER4
if "$charactername" = "Feathergrowl" then goto CHARACTER5
if "$charactername" = "Lillimay" then goto CHARACTER6
if "$charactername" = "Dkar" then goto Character7
if "$charactername" = "Amesia" then goto Character8

echo You did not set your character name correctly. Please edit MC_SETUP
exit

#######################################################################
##################  CHARACTER 1 VARIABLES  ############################
#######################################################################
CHARACTER1:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE Backpack
put #var MC_FORGING.DISCIPLINE blacksmith
put #var MC_FORGING.MATERIAL bronze
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE Backpack
put #var MC_ENG.DISCIPLINE carving
put #var MC_ENG.MATERIAL deer-bone
put #var MC_ENG.PREF bone
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE Backpack
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL wool
put #var MC_OUT.PREF yarn
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE Backpack
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE Backpack
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 3
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER hammer
put #var MC_SHOVEL shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging Backpack
#ENGINEERING
put #var MC_CHISEL chisel
put #var MC_SAW slender saw
put #var MC_RASP tapered rasp
put #var MC_RIFFLER riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER shaper
put #var MC_DRAWKNIFE drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering Backpack
#OUTFITTING
put #var MC_NEEDLES knitting needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting Backpack
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE pestle
put #var MC_SIEVE sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy Backpack
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting backpack
goto endsetup

#######################################################################
##################  CHARACTER 2 VARIABLES  ############################
#######################################################################
CHARACTER2:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE rucksack
put #var MC_FORGING.DISCIPLINE weapon
put #var MC_FORGING.MATERIAL STEEL
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE rucksack
put #var MC_ENG.DISCIPLINE shaping
put #var MC_ENG.MATERIAL maple
put #var MC_ENG.PREF lumber
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE rucksack
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL cougar-pelt
put #var MC_OUT.PREF leather
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE rucksack
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE rucksack
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 3
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER ball-peen hammer 
put #var MC_SHOVEL wide shovel
put #var MC_TONGS box-jaw tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS corrugated-hide bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging duffel bag 
#ENGINEERING
put #var MC_CHISEL iron chisel
put #var MC_SAW woodcutter saw 
put #var MC_RASP tapered rasp
put #var MC_RIFFLER square riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER wood shaper
put #var MC_DRAWKNIFE sharpened drawknife
put #var MC_CLAMP textured clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering duffel bag 
#OUTFITTING
put #var MC_NEEDLES sewing needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL slender awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting duffel bag 
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE belzune pestle
put #var MC_SIEVE wire sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy duffel bag 
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_BRAZIER NULL
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting pack
goto endsetup

#######################################################################
##################  CHARACTER 3 VARIABLES  ############################
#######################################################################
CHARACTER3:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE Rucksack
put #var MC_FORGING.DISCIPLINE blacksmith
put #var MC_FORGING.MATERIAL bronze
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE rucksack
put #var MC_ENG.DISCIPLINE shaping
put #var MC_ENG.MATERIAL pine
put #var MC_ENG.PREF lumber
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE rucksack
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL wool
put #var MC_OUT.PREF cloth
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE rucksack
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE shoulder pack
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_NOWO 0
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 2
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER hammer
put #var MC_SHOVEL tapered shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging rucksack
#ENGINEERING
put #var MC_CHISEL short chisel
put #var MC_SAW wood saw
put #var MC_RASP textured rasp
put #var MC_RIFFLER square riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER shaper
put #var MC_DRAWKNIFE metal drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering rucksack
#OUTFITTING
put #var MC_NEEDLES sewing needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting rucksack
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR granite mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE pestle
put #var MC_SIEVE sieve
put #VAR MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy rucksack
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_BRAZIER NULL
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting Rucksack
goto endsetup

#######################################################################
##################  CHARACTER 4 VARIABLES  ############################
#######################################################################
CHARACTER4:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE PACK
put #var MC_FORGING.DISCIPLINE WEAPON
put #var MC_FORGING.MATERIAL steel								   
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE PACK
put #var MC_ENG.DISCIPLINE SHAPING
put #var MC_ENG.MATERIAL MAPLE
put #var MC_ENG.PREF LUMBER
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE PACK
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL WOOL
put #var MC_OUT.PREF cloth
put #var MC_OUT.DIFFICULTY HARD
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE PACK
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY HARD
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE PACK
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_NOWO 0
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 2
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER MALLET
put #var MC_SHOVEL TOMIEK SHOVEL
put #var MC_TONGS TONGS
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging PACK
#ENGINEERING
put #var MC_CHISEL sharpened chisel
put #var MC_SAW serrated saw
put #var MC_RASP tapered rasp
put #var MC_RIFFLER elongated riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER JAGGED shaper
put #var MC_DRAWKNIFE SHARPENED drawknife
put #var MC_CLAMP clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering PACK
#OUTFITTING
put #var MC_NEEDLES sewing needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting PACK
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE pestle
put #var MC_SIEVE sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy PACK
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_BRAZIER NULL
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting satchel
goto endsetup

#######################################################################
##################  CHARACTER 6 VARIABLES  ############################
#######################################################################
CHARACTER6:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE HAVERSACK
put #var MC_FORGING.DISCIPLINE BLACKSMITH
put #var MC_FORGING.MATERIAL BRONZE
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE HAVERSACK
put #var MC_ENG.DISCIPLINE SHAPING
put #var MC_ENG.MATERIAL BALSA
put #var MC_ENG.PREF LUMBER
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE HAVERSACK
put #var MC_OUT.DISCIPLINE TAILOR
put #var MC_OUT.MATERIAL WOOL
put #var MC_OUT.PREF YARN
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE HAVERSACK
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE Backpack
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 3
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER ball-peen hammer
put #var MC_SHOVEL curved shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging haversack
#ENGINEERING
put #var MC_CHISEL iron chisel
put #var MC_SAW WOOD saw
put #var MC_RASP iron rasp
put #var MC_RIFFLER square riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER wood shaper
put #var MC_DRAWKNIFE metal drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering haversack
#OUTFITTING
put #var MC_NEEDLES knitting needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting haversack
#ALCHEMY
put #var MC_BOWL alabaster bowl
put #var MC_MORTAR stone mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE grooved pestle
put #var MC_SIEVE wire sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy haversack
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_BRAZIER NULL
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting haversack
goto endsetup

#######################################################################
##################  CHARACTER 5 VARIABLES  ############################
#######################################################################
CHARACTER5:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE HAVERSACK
put #var MC_FORGING.DISCIPLINE weapon
put #var MC_FORGING.MATERIAL BRONZE
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE HAVERSACK
put #var MC_ENG.DISCIPLINE SHAPING
put #var MC_ENG.MATERIAL BALSA
put #var MC_ENG.PREF LUMBER
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE HAVERSACK
put #var MC_OUT.DISCIPLINE TAILOR
put #var MC_OUT.MATERIAL Burlap
put #var MC_OUT.PREF cloth
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE BACKPACK
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE Backpack
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD fey-bone rod
#put #var MC_FOCUS.WAND wood wand
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 3
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER ball-peen hammer
put #var MC_SHOVEL curved shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging Thigh Bag
#ENGINEERING
put #var MC_CHISEL iron chisel
put #var MC_SAW WOOD saw
put #var MC_RASP iron rasp
put #var MC_RIFFLER square riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER wood shaper
put #var MC_DRAWKNIFE metal drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering BACKPACK
#OUTFITTING
put #var MC_NEEDLES sewing needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting Thigh bag
#ALCHEMY
put #var MC_BOWL alabaster bowl
put #var MC_MORTAR stone mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE grooved pestle
put #var MC_SIEVE wire sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy BACKPACK
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_BRAZIER NULL
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting shoulder pack
goto endsetup

#######################################################################
##################  CHARACTER 7 VARIABLES  ############################
#######################################################################
CHARACTER7:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE Backpack
put #var MC_FORGING.DISCIPLINE blacksmith
put #var MC_FORGING.MATERIAL bronze
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE Backpack
put #var MC_ENG.DISCIPLINE carving
put #var MC_ENG.MATERIAL deer-bone
put #var MC_ENG.PREF bone
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE Backpack
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL wool
put #var MC_OUT.PREF yarn
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE Backpack
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE KIT
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD imbuement rod
#put #var MC_FOCUS.WAND NULL
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 4
put #var MC_MIN.ORDER 3
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER hammer
put #var MC_SHOVEL shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging Backpack
#ENGINEERING
put #var MC_CHISEL chisel
put #var MC_SAW slender saw
put #var MC_RASP tapered rasp
put #var MC_RIFFLER riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER shaper
put #var MC_DRAWKNIFE drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering Backpack
#OUTFITTING
put #var MC_NEEDLES knitting needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting Backpack
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE pestle
put #var MC_SIEVE sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy Backpack
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting Kit
goto endsetup

#######################################################################
##################  CHARACTER 8 VARIABLES  ############################
#######################################################################
CHARACTER8:
#######################################################################
####################  FORGING VARIABLES  ##############################
#######################################################################
#	Variables are case sensitive
#	MC_FORGING.DISCIPLINE: OPTIONS blacksmith, weapon, armor
#	MC_FORGING.MATERIAL: Material type adjactive i.e. bronze, steel
#	MC_FORGING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_FORGING.DEED: DEED orders instead of bundling items on or off
#	MC_SMALL.ORDERS: For only working orders 5 volumes or smaller, 0 for off, 1 for on
put #var MC_FORGING.STORAGE HAVERSACK
put #var MC_FORGING.DISCIPLINE blacksmith
put #var MC_FORGING.MATERIAL bronze
put #var MC_FORGING.DIFFICULTY hard
put #var MC_FORGING.DEED off
put #var MC_SMALL.ORDERS 0
put #var MC_Forging_NOWO 0
#######################################################################
###################  ENGINEERING VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_ENG.DISCIPLINE: OPTIONS carving, shaping, tinkering
#	MC_ENG.MATERIAL: Material type adjactive i.e. maple, basalt, deer-bone
#	MC_ENG.PREF: Material type noun i.e. lumber, bone, stone
#	MC_ENG.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_ENG.DEED: DEED orders instead of bundling items on or off
put #var MC_ENGINEERING.STORAGE HAVERSACK
put #var MC_ENG.DISCIPLINE shaping	
put #var MC_ENG.MATERIAL pine
put #var MC_ENG.PREF lumber
put #var MC_ENG.DIFFICULTY hard
put #var MC_ENG.DEED off
put #var MC_Engineering_NOWO 0
#######################################################################
########################  OUTFITTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_OUT.DISCIPLINE: OPTIONS tailor
#	MC_OUT.MATERIAL: Material type adjactive i.e. wool, burlap, rat-pelt
#	MC_OUT.PREF: Material type noun i.e. yarn, cloth, leather
#	MC_OUT.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_OUT.DEED: DEED orders instead of bundling items on or off
put #var MC_OUTFITTING.STORAGE HAVERSACK
put #var MC_OUT.DISCIPLINE tailor
put #var MC_OUT.MATERIAL wool
put #var MC_OUT.PREF yarn
put #var MC_OUT.DIFFICULTY hard
put #var MC_OUT.DEED off
put #var MC_Outfitting_NOWO 0
#######################################################################
########################  ALCHEMY VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ALC.DISCIPLINE: OPTIONS remed NOTE: Do not do remedy or remedies. This is the only way to get the book to work for all types
#	MC_ALC.DIFFICULTY: Order difficulty easy, challenging, hard
put #var MC_ALCHEMY.STORAGE HAVERSACK
put #var MC_ALC.DISCIPLINE remed
put #var MC_ALC.DIFFICULTY challenging
put #var MC_Alchemy_NOWO 0
#######################################################################
########################  ENCHANTING VARIABLES  #######################
#######################################################################
#	Variables are case sensitive
#	MC_ENCHANTING.DISCIPLINE: OPTIONS artif NOTE: Do not do artifcer or artificing. This is the only way to get the book to work for all types
#	MC_ENCHANTING.DIFFICULTY: Order difficulty easy, challenging, hard
#	MC_IMBUE: ROD or SPELL determines if you're going to cast or use a rod. You will need to have a rod on you if you're going to use it. Needs to be all caps
# 	MC_IMBUE.MANA: Amount of mana you want to cast at if you're using MC_IMBUE SPELL
# MC_IMBUE.ROD: Description of your  imbue Rod. Not necessary if using a spell
#	MC_FOCUS.WAND: The name of the wand you are using for focusing. If you are a magic user it's not needed, leave it commented. If you are using it I suggest being as descriptive as possible

put #var MC_ENCHANTING.STORAGE HAVERSACK
put #var MC_ENCHANTING.DISCIPLINE artif
put #var MC_ENCHANTING.DIFFICULTY challenging
put #var MC_IMBUE ROD
put #var MC_IMBUE.MANA 50
put #var MC_Enchanting_NOWO 0
put #var MC_IMBUE.ROD imbuement rod
#put #var MC_FOCUS.WAND NULL
#######################################################################
##########################  MISC VARIABLES  ###########################
#######################################################################
#	Variables are case sensitive
#	MC_TOOL.STORAGE: Where you want to store your tools
# 	MC_REPAIR: For repairing your tools, if MC_AUTO.REPAIR is off you will go to the repair shop, on or off
#	MC_AUTO.REPAIR: For repairing your own tools, on or off
#	MC_GET.COIN: For getting more coin if you run out while purchasing, on or off
#    MC_WITHD.AMOUNT: Amount of money to withdraw for WOs, enter amount and type, i.e. 5 gold
#	MC_REORDER: For repurchasing mats, on or off
#	MC_MARK: For Marking your working on or off
#	MC_BLACKLIST: Orders that you don't want to take, must be the noun of the items
#	MC_WORK.OUTSIDE: If you want to work outside of the order hall set to 1 if not leave as 0, must set MC_PREFERRED.ROOM if set to 1
#	MC_PREFERRED.ROOM: Set as the roomid of where you want to work on your orders
#	MC_FRIENDLIST: Names of people you want to ignore when looking for an empty room i.e. Johnny|Tim|Barney
#	MC_ENDEARLY: Set to 1 if you want to stop mastercraft when your mindstate is above 30. Will check after each item. 0 if you don't
#	MC_NOWO: Set to 1 if you don't want to do work orders. This will still ask the master for a work order to get an item name, it just won't bundle
#	MC_MAX.ORDER: Maximum number of items to craft, will get a new work order if above this number
# 	MC_MIN.ORDER: Minimum number of items to craft, will get a new work order if below this number
put #var MC_REPAIR on
put #var MC_AUTO.REPAIR on
put #var MC_GET.COIN on
put #var MC_WITHD.AMOUNT 5 gold
put #var MC_REORDER on
put #var MC.Mark off
put #var MC_BLACKLIST none
put #var MC_WORK.OUTSIDE 0
#put #var MC_PREFERRED.ROOM 
#put #var MC_FRIENDLIST
put #var MC_END.EARLY 0
put #var MC_MAX.ORDER 5
put #var MC_MIN.ORDER 2
#######################################################################
##########################  TOOL VARIABLES  ###########################
#######################################################################
## These should match what is shown in your hands. If you're having trouble knowing what to put hold it in your right
## hand and #echo $righthand copy what is shown and paste that.
#Toolbelts/Straps only necessary if you have one.
#GENERAL
# An array of your tools that go on tool belts.i.e. silversteel mallet|muracite tongs|stirring rod
put #var MC_TIED.TOOLS NULL
# An array of your tools that you keep with the clerk. i.e. silversteel mallet|muracite tongs|stirring rod -- Make sure these match the adjective+noun below
put #var MC_CLERK.TOOLS NULL
#FORGING
put #var MC_HAMMER hammer
put #var MC_SHOVEL shovel
put #var MC_TONGS tongs
put #var MC_PLIERS pliers
put #var MC_BELLOWS bellows
put #var MC_STIRROD stirring rod
put #var MC_TOOLBELT_Forging NULL
put #var MC_TOOL.STORAGE_Forging HAVERSACK
#ENGINEERING
put #var MC_CHISEL chisel
put #var MC_SAW slender saw
put #var MC_RASP tapered rasp
put #var MC_RIFFLER riffler
put #var MC_TINKERTOOL tools
put #var MC_CARVINGKNIFE carving knife
put #var MC_SHAPER shaper
put #var MC_DRAWKNIFE drawknife
put #var MC_CLAMP metal clamps
put #var MC_TOOLBELT_Engineering NULL
put #var MC_TOOL.STORAGE_Engineering HAVERSACK
#OUTFITTING
put #var MC_NEEDLES knitting needles
put #var MC_SCISSORS scissors
put #var MC_SLICKSTONE slickstone
put #var MC_YARDSTICK yardstick
put #var MC_AWL uthamar awl
put #var MC_TOOLBELT_Outfitting NULL
put #var MC_TOOL.STORAGE_Outfitting HAVERSACK
#ALCHEMY
put #var MC_BOWL bowl
put #var MC_MORTAR mortar
put #var MC_STICK mixing stick
put #var MC_PESTLE pestle
put #var MC_SIEVE sieve
put #var MC_TOOLBELT_Alchemy NULL
put #var MC_TOOL.STORAGE_Alchemy HAVERSACK
#ENCHANTING
put #var MC_BURIN burin
put #var MC_LOOP loop
put #var MC_TOOLBELT_Enchanting NULL
put #var MC_TOOL.STORAGE_Enchanting HAVERSACK
goto endsetup

endsetup:
### DONT MODIFY THIS
if !def(lastForgingRepair) then put #var lastForgingRepair 0
if !def(lastEngineeringRepair) then put #var lastEngineeringRepair 0
if !def(lastOutfittingRepair) then put #var lastOutfittingRepair 0
if !def(lastAlchemyRepair) then put #var lastAlchemyRepair 0
if !def(lastEnchantingRepair) then put #var lastEnchantingRepair 0