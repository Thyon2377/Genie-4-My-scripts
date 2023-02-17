ECHO *[[DEMBONES will clean bones by scraping & bleaching.]]
ECHO *[[DEMBONES by Zamara & Yugen. Updates on Elanthipedia.]]
ECHO *[[Use .DEMBONES <fresh bone location, IE: bundle> <location to put bleaching bones, IE: bag backpack> <Scraping rate CAREFUL/NORMAL/QUICK>]]

BONES:
put get my scraper
pause 1
MATCH NOBONE What were
MATCH CLEAN You get
MATCH CLEAN You carefully
put get bone from %1
matchwait  

CLEAN:
wait 1
put scrape bone with scraper %3
MATCH BLEACH The bones looks as clean as you can make them.
MATCH BLEACH The bones looks as clean as you can make it!
MATCH CLEAN You quickly scrape your bones
MATCH CLEAN You carefully scrape your bones
MATCH CLEAN You scrape your bones
MATCHWAIT


BLEACH:
wait 1
put stow my scraper
put get my solution
MATCH BLEACH2 You get
MATCH NOBLEACH What were
MATCHWAIT


BLEACH2:
put pour solution on bone
MATCH DBONE You pour
MATCH DBONE You drench
MATCH DBONE would only be damaged
MATCHWAIT


DBONE:
wait 1
put stow solution
put put bones in %2
MATCH NOROOM There isn't any more room
MATCH BONES You put your bones
MATCHWAIT

##Error types.

NOBONE:
echo *[[DEMBONES cannot find your bones.]]
EXIT

NOBLEACH:
echo *[[DEMBONES cannot find your bleaching solution.]]
EXIT

NOROOM:
echo *[[DEMBONES has found that your container is full.]]
EXIT
    