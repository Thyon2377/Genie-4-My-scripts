#shapelumber
# parameters are .shapelumber <container1> <item>
#
# example .shapelumber bag stick
#
# This script is set up to handle an item on the ground or in your hand.
# That means you should do this in a place where you are alone to prevent other
# folks who might be foraging or working other wood related things from causing
# this script to fail.  The second thing you have to be aware of is based on
# your stamina and strength you might end up with more lumber than you can 
# effectively hold and the only option will be to break it up into smaller parts
# and deed it.
#
# Note this script is set up for stormfront, wizard and genie.  It should run as is
# for all three front ends.  
#
# This script assumes you have some woodtype in hand or in front of you, tools
# and ingredients in the container1.  I dont see any point in stamping lumber and I'm not
# even sure you can.  Once done you will have refined lumber in your hand.  Analyze it or
# appraise it careful then start on the next item to refine.
#
# The script will then get the wood saw out and start the process of cutting the item.
# The things you cut can be stick, branch, limb, or log.  You will cut with the saw 3 
# times and then get the drawknife out and scrape 3 times with the drawknife till you 
# finish and will have refined lumber in hand or on the ground.
#
  put get saw from my %1
waitfor You get
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put cut my %2 with my saw
waitfor Roundtime:
  pause 1
  put put my saw in my %1
waitfor You put
  pause 1
  put get my drawknife from my %1
waitfor You get
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put scrape my %2 with my drawknife
waitfor Roundtime:
  pause 1
  put put my drawknife in my %1
waitfor You put
  pause 1
echo -------------------------------
echo =  One refined lumber finished.
echo -------------------------------
exit