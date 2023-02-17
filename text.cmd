##############################
var TextbookStorageBag Rucksack
var TextbookType guide
var TextbookShortname guide
var TextbookStartPage %1
##############################

###############
Initialize:
###############

InitGetTome:
matchre InitGetTome ^\.\.\.wait|^Sorry\, you may
matchre InitOpenTome ^You get a|^What were you referring to
	put GET %TextbookType FROM MY %TextbookStorageBag
matchwait

InitOpenTome:
matchre InitOpenTome ^\.\.\.wait|^Sorry\, you may
matchre InitResetTome ^You open your|^That is already open
	put OPEN MY %TextbookType
matchwait

InitResetTome:
matchre InitResetTome ^\.\.\.wait|^Sorry\, you may
matchre MainLoop ^You turn to the section
	put TURN MY %TextbookType TO %TextbookStartPage
matchwait


###############
MainLoop:
###############

MainExperienceCheck:
if (First_Aid.LearningRate <= 34 || Scholarship.LearningRate <= 34) then goto MainStudy
if (First_Aid.LearningRate > 33 && Scholarship.LearningRate < 33) then goto TextbookDone

MainStudy:
matchre MainStudy ^\.\.\.wait|^Sorry\, you may
matchre MainExperienceCheck ^Roundtime
matchre MainTurn ^With a sudden moment of clarity|^Why do you need to study this chart again
	put STUDY MY %TextbookType
matchwait

MainTurn:
matchre MainTurn ^\.\.\.wait|^Sorry\, you may
matchre MainExperienceCheck ^You turn to page
	put TURN MY %TextbookShortname
matchwait

TextbookDone:
MainClose:
matchre MainClose ^\.\.\.wait|^Sorry\, you may
matchre MainStow ^You close your
	put close my %TextbookType
matchwait

MainStow:
matchre MainStow ^\.\.\.wait|^Sorry\, you may
matchre TextbookDone ^You put your
	put stow my %TextbookType
matchwait

TextbookDone:
exit









