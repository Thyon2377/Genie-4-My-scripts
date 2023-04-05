# Variables for quick and dirty magic trainer by Reveler
# Discord: Reveler#6969
# March 2021
# Use with magic.cmd


#  CHARACTERNAME NEEDS TO BE AS IT APPEARS EXACTLY WHEN YOU ENTER #echo $charactername (first letter capitalized)
if ("$charactername" = "Amesia") then
	{
	### Your spell to train Augmentation.  Should be a spell that only trains augmentation for most efficiency
	  put #var MAGIC.Augmentation.spell EASE
	### For the augmentation spell you picked, this is the initial spell prep amount
	  put #var MAGIC.Augmentation.cast 14
	### For the augmentation spell you picked, this is the amount to harness
	  put #var MAGIC.Augmentation.harness 5
	### For the augmentation spell you picked, this is the amount to charge your cambrinth
	  put #var MAGIC.Augmentation.charge 3
	### Your spell to train Utility.  Should be a spell that only trains utility for most efficiency
	  put #var MAGIC.Utility.spell EOTB
	### For the utility spell you picked, this is the initial spell prep amount
	  put #var MAGIC.Utility.cast 15
	### For the utility spell you picked, this is the amount to harness
	  put #var MAGIC.Utility.harness 3
	### For the utility spell you picked, this is the amount to charge your cambrinth
	  put #var MAGIC.Utility.charge 3
	### Your spell to train Warding.  Should be a spell that only trains warding for most efficiency
	  put #var MAGIC.Warding.spell MAF
	### For the warding spell you picked, this is the initial spell prep amount
	  put #var MAGIC.Warding.cast 14
	### For the warding spell you picked, this is the amount to harness
	  put #var MAGIC.Warding.harness 3
	### For the warding spell you picked, this is the amount to charge your cambrinth
	  put #var MAGIC.Warding.charge 4
	### Your spell to train Sorcery.  Caveat emptor.  Sorcery is dangerous.
	  put #var MAGIC.Sorcery.spell NULL
	### For the sorcery spell you picked, this is the initial spell prep amount
	  put #var MAGIC.Sorcery.cast 0
	### For the sorcery spell you picked, this is the amount to harness
	  put #var MAGIC.Sorcery.harness 0
	### For the sorcery spell you picked, this is the amount to charge your cambrinth
	  put #var MAGIC.Sorcery.charge 0
	### This is your cambrinth item.  You can put adjective noun here if you have multiples of the same noun
	  put #var MAGIC.cambrinth cambrinth armband

	### YES if you train using symbiosis.  NO if you do not.
	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	### The mindstate to stop training each specific skill  
	  put #var MAGIC.Utility.exp.stop 30
	  put #var MAGIC.Augmentation.exp.stop 30
	  put #var MAGIC.Warding.exp.stop 30
	  put #var MAGIC.Sorcery.exp.stop 20
	}
if ("$charactername" = "Thandra") then
	{
	  put #var MAGIC.Augmentation.spell EASE
	  put #var MAGIC.Augmentation.cast 1
	  put #var MAGIC.Augmentation.harness 1
	  put #var MAGIC.Augmentation.charge 1
	  put #var MAGIC.Utility.spell BLESS
	  put #var MAGIC.Utility.cast 1
	  put #var MAGIC.Utility.harness 1
	  put #var MAGIC.Utility.charge 1
	  put #var MAGIC.Warding.spell MAF
	  put #var MAGIC.Warding.cast 1
	  put #var MAGIC.Warding.harness 1
	  put #var MAGIC.Warding.charge 1
	  put #var MAGIC.Sorcery.spell NULL
	  put #var MAGIC.Sorcery.cast 0
	  put #var MAGIC.Sorcery.harness 0
	  put #var MAGIC.Sorcery.charge 0


	  put #var MAGIC.cambrinth cambrinth ring

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 33
	  put #var MAGIC.Warding.exp.stop 33
	  put #var MAGIC.Sorcery.exp.stop 33
	}

if ("$charactername" = "Thyon") then
	{
	  put #var MAGIC.Augmentation.spell SOTT
	  put #var MAGIC.Augmentation.cast 5
	  put #var MAGIC.Augmentation.harness 7
	  put #var MAGIC.Augmentation.charge 5
	  put #var MAGIC.Utility.spell BLEND
	  put #var MAGIC.Utility.cast 10
	  put #var MAGIC.Utility.harness 7
	  put #var MAGIC.Utility.charge 5
	  put #var MAGIC.Warding.spell EY
	  put #var MAGIC.Warding.cast 10
	  put #var MAGIC.Warding.harness 7
	  put #var MAGIC.Warding.charge 6
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast 0
	  put #var MAGIC.Sorcery.harness 0
	  put #var MAGIC.Sorcery.charge 0


	  put #var MAGIC.cambrinth WATERSILK BAG

	  put #var MAGIC.Utility.symbiosis YES
	  put #var MAGIC.Augmentation.symbiosis YES
	  put #var MAGIC.Warding.symbiosis YES
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 30
	  put #var MAGIC.Augmentation.exp.stop 30
	  put #var MAGIC.Warding.exp.stop 30
	  put #var MAGIC.Sorcery.exp.stop 30
	}

if ("$charactername" = "Dkar") then
	{
	  put #var MAGIC.Augmentation.spell shadows
	  put #var MAGIC.Augmentation.cast 1
	  put #var MAGIC.Augmentation.harness 1
	  put #var MAGIC.Augmentation.charge 1
	  put #var MAGIC.Utility.spell PG
	  put #var MAGIC.Utility.cast 1
	  put #var MAGIC.Utility.harness 1
	  put #var MAGIC.Utility.charge 1
	  put #var MAGIC.Warding.spell MAF
	  put #var MAGIC.Warding.cast 1
	  put #var MAGIC.Warding.harness 1
	  put #var MAGIC.Warding.charge 1
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast 0
	  put #var MAGIC.Sorcery.harness 0
	  put #var MAGIC.Sorcery.charge 0


	  put #var MAGIC.cambrinth EARCUFF

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 30
	  put #var MAGIC.Warding.exp.stop 30
	  put #var MAGIC.Sorcery.exp.stop 30
	}

if ("$charactername" = "Zynali") then
	{
	  put #var MAGIC.Augmentation.spell MEF
	  put #var MAGIC.Augmentation.cast 5
	  put #var MAGIC.Augmentation.harness 10
	  put #var MAGIC.Augmentation.charge 5
	  put #var MAGIC.Utility.spell BS
	  put #var MAGIC.Utility.cast 5
	  put #var MAGIC.Utility.harness 10
	  put #var MAGIC.Utility.charge 5
	  put #var MAGIC.Warding.spell IC 
	  put #var MAGIC.Warding.cast 5
	  put #var MAGIC.Warding.harness 10
	  put #var MAGIC.Warding.charge 5
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast 0
	  put #var MAGIC.Sorcery.harness 0
	  put #var MAGIC.Sorcery.charge 0


	  put #var MAGIC.cambrinth cambrinth anklet

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 33
	  put #var MAGIC.Warding.exp.stop 33
	  put #var MAGIC.Sorcery.exp.stop 33
	}

if ("$charactername" = "Feathergrowl") then
	{
	  put #var MAGIC.Augmentation.spell STW
	  put #var MAGIC.Augmentation.cast 12
	  put #var MAGIC.Augmentation.harness 2
	  put #var MAGIC.Augmentation.charge 2
	  put #var MAGIC.Utility.spell Compost
	  put #var MAGIC.Utility.cast 12
	  put #var MAGIC.Utility.harness 2
	  put #var MAGIC.Utility.charge 2
	  put #var MAGIC.Warding.spell EY 
	  put #var MAGIC.Warding.cast 13
	  put #var MAGIC.Warding.harness 2
	  put #var MAGIC.Warding.charge 2
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast NULL
	  put #var MAGIC.Sorcery.harness NULL
	  put #var MAGIC.Sorcery.charge NULL


	  put #var MAGIC.cambrinth Camb Ring

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 33
	  put #var MAGIC.Warding.exp.stop 33
	  put #var MAGIC.Sorcery.exp.stop 33
	}

if ("$charactername" = "Hyapatia") then
	{
	  put #var MAGIC.Augmentation.spell CENTERING
	  put #var MAGIC.Augmentation.cast 30
	  put #var MAGIC.Augmentation.harness 10
	  put #var MAGIC.Augmentation.charge 10
	  put #var MAGIC.Utility.spell Bless
	  put #var MAGIC.Utility.cast 20
	  put #var MAGIC.Utility.harness 5
	  put #var MAGIC.Utility.charge 10
	  put #var MAGIC.Warding.spell MPP 
	  put #var MAGIC.Warding.cast 15
	  put #var MAGIC.Warding.harness 5
	  put #var MAGIC.Warding.charge 10
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast NULL
	  put #var MAGIC.Sorcery.harness NULL
	  put #var MAGIC.Sorcery.charge NULL


	  put #var MAGIC.cambrinth Camb Rod

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 33
	  put #var MAGIC.Warding.exp.stop 33
	  put #var MAGIC.Sorcery.exp.stop 33
	}

if ("$charactername" = "Meal") then
	{
	  put #var MAGIC.Augmentation.spell SHADOWS
	  put #var MAGIC.Augmentation.cast 20
	  put #var MAGIC.Augmentation.harness 5
	  put #var MAGIC.Augmentation.charge 5
	  put #var MAGIC.Utility.spell PG
	  put #var MAGIC.Utility.cast 20
	  put #var MAGIC.Utility.harness 3
	  put #var MAGIC.Utility.charge 5
	  put #var MAGIC.Warding.spell PSY 
	  put #var MAGIC.Warding.cast 15
	  put #var MAGIC.Warding.harness 2
	  put #var MAGIC.Warding.charge 3
	  put #var MAGIC.Sorcery.spell NULL 
	  put #var MAGIC.Sorcery.cast NULL
	  put #var MAGIC.Sorcery.harness NULL
	  put #var MAGIC.Sorcery.charge NULL


	  put #var MAGIC.cambrinth bracer

	  put #var MAGIC.Utility.symbiosis NO
	  put #var MAGIC.Augmentation.symbiosis NO
	  put #var MAGIC.Warding.symbiosis NO
	  put #var MAGIC.Sorcery.symbiosis NO
	  
	  put #var MAGIC.Utility.exp.stop 33
	  put #var MAGIC.Augmentation.exp.stop 33
	  put #var MAGIC.Warding.exp.stop 33
	  put #var MAGIC.Sorcery.exp.stop 33
	}


	put #var MAGIC.SET DONE


