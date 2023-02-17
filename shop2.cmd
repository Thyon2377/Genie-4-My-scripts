action goto end when ^There is nothing to buy here

setvar altar 0
setvar armoir 0
setvar bale 0
setvar bar 0
setvar barn 0
setvar barrel 0
setvar basket 0
setvar bedroll 0
setvar bench 0
setvar bin 0
setvar block 0
setvar blossom 0
setvar boar 0
setvar board 0
setvar bookcase 0
setvar bookshelf 0
setvar bookshelves 0
setvar bookstand 0
setvar bowl 0
setvar box 0
setvar branch 0
setvar breakfront 0
setvar broomstick 0
setvar bucket 0
setvar buffet 0
setvar bull 0
setvar bureau 0
setvar bust 0
setvar butterflies 0
setvar butterfly 0
setvar cabinet 0
setvar carpet 0
setvar cart 0
setvar carton 0
setvar case 0
setvar catalog 0
setvar cauldron 0
setvar chair 0
setvar chest 0
setvar closet 0
setvar cloud 0
setvar coffer 0
setvar container 0
setvar cord 0
setvar cornucopia 0
setvar corral 0
setvar cot 0
setvar counter 0
setvar cradle 0
setvar crate 0
setvar cupboard 0
setvar cushion 0
setvar desk 0
setvar display 0
setvar drawer 0
setvar dresser 0
setvar drum 0
setvar dummies 0
setvar dummy 0
setvar easel 0
setvar endtable 0
setvar fence 0
setvar firepit 0
setvar footlocker 0
setvar footrest 0
setvar fountain 0
setvar framework 0
setvar garderobe 0
setvar goblin 0
setvar gourd 0
setvar grinder 0
setvar hand 0
setvar hanger 0
setvar hatstand 0
setvar head 0
setvar highboy 0
setvar hole 0
setvar hook 0
setvar hooks 0
setvar horse 0
setvar jar 0
setvar keg 0
setvar lattice 0
setvar locker 0
setvar lowboy 0
setvar mannequin 0
setvar mantel 0
setvar mantle 0
setvar moon 0
setvar net 0
setvar niche 0
setvar ogre 0
setvar pail 0
setvar pallet 0
setvar panel 0
setvar peccaries 0
setvar peccary 0
setvar pedestal 0
setvar peg 0
setvar pegboard 0
setvar pew 0
setvar pillow 0
setvar pipe 0
setvar pit 0
setvar plank 0
setvar planter 0
setvar platter 0
setvar plinth 0
setvar podium 0
setvar pole 0
setvar post 0
setvar pumpkin 0
setvar quilt 0
setvar rack 0
setvar rope 0
setvar rug 0
setvar salver 0
setvar sawhorse 0
setvar shelf 0
setvar shell 0
setvar shelves 0
setvar showcase 0
setvar sidebar 0
setvar sideboard 0
setvar skeleton 0
setvar skippet 0
setvar spittoon 0
setvar stable 0
setvar stand 0
setvar star 0
setvar stool 0
setvar stove 0
setvar stump 0
setvar sun 0
setvar table 0
setvar tomb 0
setvar tray 0
setvar tree 0
setvar trestle 0
setvar trough 0
setvar trunk 0
setvar turtle 0
setvar urn 0
setvar valet 0
setvar vanities 0
setvar vanity 0
setvar vat 0
setvar wall 0
setvar wardrobe 0
setvar waterwheel 0
setvar web 0
setvar webbing 0
setvar workbench 0
setvar worktable 0

ACTION setvar altar 1 WHEN ^\s+(an?|some|the).+\baltare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar armoir 1 WHEN ^\s+(an?|some|the).+\barmoire?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bale 1 WHEN ^\s+(an?|some|the).+\bbalee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bar 1 WHEN ^\s+(an?|some|the).+\bbare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar barn 1 WHEN ^\s+(an?|some|the).+\bbarne?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar barrel 1 WHEN ^\s+(an?|some|the).+\bbarrele?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar basket 1 WHEN ^\s+(an?|some|the).+\bbaskete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bedroll 1 WHEN ^\s+(an?|some|the).+\bbedrolle?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bench 1 WHEN ^\s+(an?|some|the).+\bbenche?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bin 1 WHEN ^\s+(an?|some|the).+\bbine?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar block 1 WHEN ^\s+(an?|some|the).+\bblocke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar blossom 1 WHEN ^\s+(an?|some|the).+\bblossome?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar boar 1 WHEN ^\s+(an?|some|the).+\bboare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar board 1 WHEN ^\s+(an?|some|the).+\bboarde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bookcase 1 WHEN ^\s+(an?|some|the).+\bbookcasee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bookshelf 1 WHEN ^\s+(an?|some|the).+\bbookshelfe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bookshelves 1 WHEN ^\s+(an?|some|the).+\bbookshelves\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bookstand 1 WHEN ^\s+(an?|some|the).+\bbookstande?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bowl 1 WHEN ^\s+(an?|some|the).+\bbowle?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar box 1 WHEN ^\s+(an?|some|the).+\bboxe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar branch 1 WHEN ^\s+(an?|some|the).+\bbranche?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar breakfront 1 WHEN ^\s+(an?|some|the).+\bbreakfronte?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar broomstick 1 WHEN ^\s+(an?|some|the).+\bbroomsticke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bucket 1 WHEN ^\s+(an?|some|the).+\bbuckete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar buffet 1 WHEN ^\s+(an?|some|the).+\bbuffete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bull 1 WHEN ^\s+(an?|some|the).+\bbulle?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bureau 1 WHEN ^\s+(an?|some|the).+\bbureaue?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar bust 1 WHEN ^\s+(an?|some|the).+\bbuste?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar butterflies 1 WHEN ^\s+(an?|some|the).+\bbutterflies\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar butterfly 1 WHEN ^\s+(an?|some|the).+\bbutterflye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cabinet 1 WHEN ^\s+(an?|some|the).+\bcabinete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar carpet 1 WHEN ^\s+(an?|some|the).+\bcarpete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cart 1 WHEN ^\s+(an?|some|the).+\bcarte?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar carton 1 WHEN ^\s+(an?|some|the).+\bcartone?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar case 1 WHEN ^\s+(an?|some|the).+\bcasee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar catalog 1 WHEN ^\s+(an?|some|the).+\bcataloge?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cauldron 1 WHEN ^\s+(an?|some|the).+\bcauldrone?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar chair 1 WHEN ^\s+(an?|some|the).+\bchaire?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar chest 1 WHEN ^\s+(an?|some|the).+\bcheste?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar closet 1 WHEN ^\s+(an?|some|the).+\bclosete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cloud 1 WHEN ^\s+(an?|some|the).+\bcloude?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar coffer 1 WHEN ^\s+(an?|some|the).+\bcoffere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar container 1 WHEN ^\s+(an?|some|the).+\bcontainere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cord 1 WHEN ^\s+(an?|some|the).+\bcorde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cornucopia 1 WHEN ^\s+(an?|some|the).+\bcornucopiae?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar corral 1 WHEN ^\s+(an?|some|the).+\bcorrale?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cot 1 WHEN ^\s+(an?|some|the).+\bcote?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar counter 1 WHEN ^\s+(an?|some|the).+\bcountere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cradle 1 WHEN ^\s+(an?|some|the).+\bcradlee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar crate 1 WHEN ^\s+(an?|some|the).+\bcratee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cupboard 1 WHEN ^\s+(an?|some|the).+\bcupboarde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar cushion 1 WHEN ^\s+(an?|some|the).+\bcushione?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar desk 1 WHEN ^\s+(an?|some|the).+\bdeske?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar display 1 WHEN ^\s+(an?|some|the).+\bdisplaye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar drawer 1 WHEN ^\s+(an?|some|the).+\bdrawere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar dresser 1 WHEN ^\s+(an?|some|the).+\bdressere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar drum 1 WHEN ^\s+(an?|some|the).+\bdrume?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar dummies 1 WHEN ^\s+(an?|some|the).+\bdummies\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar dummy 1 WHEN ^\s+(an?|some|the).+\bdummye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar easel 1 WHEN ^\s+(an?|some|the).+\beasele?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar endtable 1 WHEN ^\s+(an?|some|the).+\bendtablee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar fence 1 WHEN ^\s+(an?|some|the).+\bfencee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar firepit 1 WHEN ^\s+(an?|some|the).+\bfirepite?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar footlocker 1 WHEN ^\s+(an?|some|the).+\bfootlockere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar footrest 1 WHEN ^\s+(an?|some|the).+\bfootreste?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar fountain 1 WHEN ^\s+(an?|some|the).+\bfountaine?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar framework 1 WHEN ^\s+(an?|some|the).+\bframeworke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar garderobe 1 WHEN ^\s+(an?|some|the).+\bgarderobee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar goblin 1 WHEN ^\s+(an?|some|the).+\bgobline?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar gourd 1 WHEN ^\s+(an?|some|the).+\bgourde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar grinder 1 WHEN ^\s+(an?|some|the).+\bgrindere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hand 1 WHEN ^\s+(an?|some|the).+\bhande?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hanger 1 WHEN ^\s+(an?|some|the).+\bhangere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hatstand 1 WHEN ^\s+(an?|some|the).+\bhatstande?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar head 1 WHEN ^\s+(an?|some|the).+\bheade?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar highboy 1 WHEN ^\s+(an?|some|the).+\bhighboye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hole 1 WHEN ^\s+(an?|some|the).+\bholee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hook 1 WHEN ^\s+(an?|some|the).+\bhooke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar hooks 1 WHEN ^\s+(an?|some|the).+\bhooke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar horse 1 WHEN ^\s+(an?|some|the).+\bhorsee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar jar 1 WHEN ^\s+(an?|some|the).+\bjare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar keg 1 WHEN ^\s+(an?|some|the).+\bkege?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar lattice 1 WHEN ^\s+(an?|some|the).+\blatticee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar locker 1 WHEN ^\s+(an?|some|the).+\blockere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar lowboy 1 WHEN ^\s+(an?|some|the).+\blowboye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar mannequin 1 WHEN ^\s+(an?|some|the).+\bmannequine?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar mantel 1 WHEN ^\s+(an?|some|the).+\bmantele?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar mantle 1 WHEN ^\s+(an?|some|the).+\bmantlee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar moon 1 WHEN ^\s+(an?|some|the).+\bmoone?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar net 1 WHEN ^\s+(an?|some|the).+\bnete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar niche 1 WHEN ^\s+(an?|some|the).+\bnichee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar ogre 1 WHEN ^\s+(an?|some|the).+\bogree?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pail 1 WHEN ^\s+(an?|some|the).+\bpaile?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pallet 1 WHEN ^\s+(an?|some|the).+\bpallete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar panel 1 WHEN ^\s+(an?|some|the).+\bpanele?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar peccaries 1 WHEN ^\s+(an?|some|the).+\bpeccaries\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar peccary 1 WHEN ^\s+(an?|some|the).+\bpeccarye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pedestal 1 WHEN ^\s+(an?|some|the).+\bpedestale?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar peg 1 WHEN ^\s+(an?|some|the).+\bpege?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pegboard 1 WHEN ^\s+(an?|some|the).+\bpegboarde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pew 1 WHEN ^\s+(an?|some|the).+\bpewe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pillow 1 WHEN ^\s+(an?|some|the).+\bpillowe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pipe 1 WHEN ^\s+(an?|some|the).+\bpipee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pit 1 WHEN ^\s+(an?|some|the).+\bpite?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar plank 1 WHEN ^\s+(an?|some|the).+\bplanke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar planter 1 WHEN ^\s+(an?|some|the).+\bplantere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar platter 1 WHEN ^\s+(an?|some|the).+\bplattere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar plinth 1 WHEN ^\s+(an?|some|the).+\bplinthe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar podium 1 WHEN ^\s+(an?|some|the).+\bpodiume?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pole 1 WHEN ^\s+(an?|some|the).+\bpolee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar post 1 WHEN ^\s+(an?|some|the).+\bposte?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar pumpkin 1 WHEN ^\s+(an?|some|the).+\bpumpkine?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar quilt 1 WHEN ^\s+(an?|some|the).+\bquilte?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar rack 1 WHEN ^\s+(an?|some|the).+\bracke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar rope 1 WHEN ^\s+(an?|some|the).+\bropee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar rug 1 WHEN ^\s+(an?|some|the).+\bruge?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar salver 1 WHEN ^\s+(an?|some|the).+\bsalvere?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar sawhorse 1 WHEN ^\s+(an?|some|the).+\bsawhorsee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar shelf 1 WHEN ^\s+(an?|some|the).+\bshelfe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar shell 1 WHEN ^\s+(an?|some|the).+\bshelle?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar shelves 1 WHEN ^\s+(an?|some|the).+\bshelves\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar showcase 1 WHEN ^\s+(an?|some|the).+\bshowcasee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar sidebar 1 WHEN ^\s+(an?|some|the).+\bsidebare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar sideboard 1 WHEN ^\s+(an?|some|the).+\bsideboarde?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar skeleton 1 WHEN ^\s+(an?|some|the).+\bskeletone?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar skippet 1 WHEN ^\s+(an?|some|the).+\bskippete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar spittoon 1 WHEN ^\s+(an?|some|the).+\bspittoone?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar stable 1 WHEN ^\s+(an?|some|the).+\bstablee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar stand 1 WHEN ^\s+(an?|some|the).+\bstande?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar star 1 WHEN ^\s+(an?|some|the).+\bstare?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar stool 1 WHEN ^\s+(an?|some|the).+\bstoole?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar stove 1 WHEN ^\s+(an?|some|the).+\bstovee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar stump 1 WHEN ^\s+(an?|some|the).+\bstumpe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar sun 1 WHEN ^\s+(an?|some|the).+\bsune?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar table 1 WHEN ^\s+(an?|some|the).+\btablee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar tomb 1 WHEN ^\s+(an?|some|the).+\btombe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar tray 1 WHEN ^\s+(an?|some|the).+\btraye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar tree 1 WHEN ^\s+(an?|some|the).+\btreee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar trestle 1 WHEN ^\s+(an?|some|the).+\btrestlee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar trough 1 WHEN ^\s+(an?|some|the).+\btroughe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar trunk 1 WHEN ^\s+(an?|some|the).+\btrunke?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar turtle 1 WHEN ^\s+(an?|some|the).+\bturtlee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar urn 1 WHEN ^\s+(an?|some|the).+\burne?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar valet 1 WHEN ^\s+(an?|some|the).+\bvalete?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar vanities 1 WHEN ^\s+(an?|some|the).+\bvanities\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar vanity 1 WHEN ^\s+(an?|some|the).+\bvanitye?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar vat 1 WHEN ^\s+(an?|some|the).+\bvate?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar wall 1 WHEN ^\s+(an?|some|the).+\bwalle?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar wardrobe 1 WHEN ^\s+(an?|some|the).+\bwardrobee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar waterwheel 1 WHEN ^\s+(an?|some|the).+\bwaterwheele?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar web 1 WHEN ^\s+(an?|some|the).+\bwebe?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar webbing 1 WHEN ^\s+(an?|some|the).+\bwebbinge?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar workbench 1 WHEN ^\s+(an?|some|the).+\bworkbenche?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))
ACTION setvar worktable 1 WHEN ^\s+(an?|some|the).+\bworktablee?s?\b(?!.+(Dokoras?|Kronars?|Lirums?))

send shop
waitforre ^The following items contain goods for sale:

startshop:
if %altar = 1 then gosub shopvar altar
if %armoir = 1 then gosub shopvar armoir
if %bale = 1 then gosub shopvar bale
if %bar = 1 then gosub shopvar bar
if %barn = 1 then gosub shopvar barn
if %barrel = 1 then gosub shopvar barrel
if %basket = 1 then gosub shopvar basket
if %bedroll = 1 then gosub shopvar bedroll
if %bench = 1 then gosub shopvar bench
if %bin = 1 then gosub shopvar bin
if %block = 1 then gosub shopvar block
if %blossom = 1 then gosub shopvar blossom
if %boar = 1 then gosub shopvar boar
if %board = 1 then gosub shopvar board
if %bookcase = 1 then gosub shopvar bookcase
if %bookshelf = 1 then gosub shopvar bookshelf
if %bookshelves = 1 then gosub shopvar bookshelves
if %bookstand = 1 then gosub shopvar bookstand
if %bowl = 1 then gosub shopvar bowl
if %box = 1 then gosub shopvar box
if %branch = 1 then gosub shopvar branch
if %breakfront = 1 then gosub shopvar breakfront
if %broomstick = 1 then gosub shopvar broomstick
if %bucket = 1 then gosub shopvar bucket
if %buffet = 1 then gosub shopvar buffet
if %bull = 1 then gosub shopvar bull
if %bureau = 1 then gosub shopvar bureau
if %bust = 1 then gosub shopvar bust
if %butterflies = 1 then gosub shopvar butterflies
if %butterfly = 1 then gosub shopvar butterfly
if %cabinet = 1 then gosub shopvar cabinet
if %carpet = 1 then gosub shopvar carpet
if %cart = 1 then gosub shopvar cart
if %carton = 1 then gosub shopvar carton
if %case = 1 then gosub shopvar case
if %catalog = 1 then gosub shopvar catalog
if %cauldron = 1 then gosub shopvar cauldron
if %chair = 1 then gosub shopvar chair
if %chest = 1 then gosub shopvar chest
if %closet = 1 then gosub shopvar closet
if %cloud = 1 then gosub shopvar cloud
if %coffer = 1 then gosub shopvar coffer
if %container = 1 then gosub shopvar container
if %cord = 1 then gosub shopvar cord
if %cornucopia = 1 then gosub shopvar cornucopia
if %corral = 1 then gosub shopvar corral
if %cot = 1 then gosub shopvar cot
if %counter = 1 then gosub shopvar counter
if %cradle = 1 then gosub shopvar cradle
if %crate = 1 then gosub shopvar crate
if %cupboard = 1 then gosub shopvar cupboard
if %cushion = 1 then gosub shopvar cushion
if %desk = 1 then gosub shopvar desk
if %display = 1 then gosub shopvar display
if %drawer = 1 then gosub shopvar drawer
if %dresser = 1 then gosub shopvar dresser
if %drum = 1 then gosub shopvar drum
if %dummies = 1 then gosub shopvar dummies
if %dummy = 1 then gosub shopvar dummy
if %easel = 1 then gosub shopvar easel
if %endtable = 1 then gosub shopvar endtable
if %fence = 1 then gosub shopvar fence
if %firepit = 1 then gosub shopvar firepit
if %footlocker = 1 then gosub shopvar footlocker
if %footrest = 1 then gosub shopvar footrest
if %fountain = 1 then gosub shopvar fountain
if %framework = 1 then gosub shopvar framework
if %garderobe = 1 then gosub shopvar garderobe
if %goblin = 1 then gosub shopvar goblin
if %gourd = 1 then gosub shopvar gourd
if %grinder = 1 then gosub shopvar grinder
if %hand = 1 then gosub shopvar hand
if %hanger = 1 then gosub shopvar hanger
if %hatstand = 1 then gosub shopvar hatstand
if %head = 1 then gosub shopvar head
if %highboy = 1 then gosub shopvar highboy
if %hole = 1 then gosub shopvar hole
if %hook = 1 then gosub shopvar hook
if %hooks = 1 then gosub shopvar hooks
if %horse = 1 then gosub shopvar horse
if %jar = 1 then gosub shopvar jar
if %keg = 1 then gosub shopvar keg
if %lattice = 1 then gosub shopvar lattice
if %locker = 1 then gosub shopvar locker
if %lowboy = 1 then gosub shopvar lowboy
if %mannequin = 1 then gosub shopvar mannequin
if %mantel = 1 then gosub shopvar mantel
if %mantle = 1 then gosub shopvar mantle
if %moon = 1 then gosub shopvar moon
if %net = 1 then gosub shopvar net
if %niche = 1 then gosub shopvar niche
if %ogre = 1 then gosub shopvar ogre
if %pail = 1 then gosub shopvar pail
if %pallet = 1 then gosub shopvar pallet
if %panel = 1 then gosub shopvar panel
if %peccaries = 1 then gosub shopvar peccaries
if %peccary = 1 then gosub shopvar peccary
if %pedestal = 1 then gosub shopvar pedestal
if %peg = 1 then gosub shopvar peg
if %pegboard = 1 then gosub shopvar pegboard
if %pew = 1 then gosub shopvar pew
if %pillow = 1 then gosub shopvar pillow
if %pipe = 1 then gosub shopvar pipe
if %pit = 1 then gosub shopvar pit
if %plank = 1 then gosub shopvar plank
if %planter = 1 then gosub shopvar planter
if %platter = 1 then gosub shopvar platter
if %plinth = 1 then gosub shopvar plinth
if %podium = 1 then gosub shopvar podium
if %pole = 1 then gosub shopvar pole
if %post = 1 then gosub shopvar post
if %pumpkin = 1 then gosub shopvar pumpkin
if %quilt = 1 then gosub shopvar quilt
if %rack = 1 then gosub shopvar rack
if %rope = 1 then gosub shopvar rope
if %rug = 1 then gosub shopvar rug
if %salver = 1 then gosub shopvar salver
if %sawhorse = 1 then gosub shopvar sawhorse
if %shelf = 1 then gosub shopvar shelf
if %shell = 1 then gosub shopvar shell
if %shelves = 1 then gosub shopvar shelves
if %showcase = 1 then gosub shopvar showcase
if %sidebar = 1 then gosub shopvar sidebar
if %sideboard = 1 then gosub shopvar sideboard
if %skeleton = 1 then gosub shopvar skeleton
if %skippet = 1 then gosub shopvar skippet
if %spittoon = 1 then gosub shopvar spittoon
if %stable = 1 then gosub shopvar stable
if %stand = 1 then gosub shopvar stand
if %star = 1 then gosub shopvar star
if %stool = 1 then gosub shopvar stool
if %stove = 1 then gosub shopvar stove
if %stump = 1 then gosub shopvar stump
if %sun = 1 then gosub shopvar sun
if %table = 1 then gosub shopvar table
if %tomb = 1 then gosub shopvar tomb
if %tray = 1 then gosub shopvar tray
if %tree = 1 then gosub shopvar tree
if %trestle = 1 then gosub shopvar trestle
if %trough = 1 then gosub shopvar trough
if %trunk = 1 then gosub shopvar trunk
if %turtle = 1 then gosub shopvar turtle
if %urn = 1 then gosub shopvar urn
if %valet = 1 then gosub shopvar valet
if %vanities = 1 then gosub shopvar vanities
if %vanity = 1 then gosub shopvar vanity
if %vat = 1 then gosub shopvar vat
if %wall = 1 then gosub shopvar wall
if %wardrobe = 1 then gosub shopvar wardrobe
if %waterwheel = 1 then gosub shopvar waterwheel
if %web = 1 then gosub shopvar web
if %webbing = 1 then gosub shopvar webbing
if %workbench = 1 then gosub shopvar workbench
if %worktable = 1 then gosub shopvar worktable
goto end

shopvar:
put #var shopper $0
goto shop1

shop1:
send shop first $shopper
matchre shop2 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop2:
send shop second $shopper
matchre shop3 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop3:
send shop third $shopper
matchre shop4 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop4:
send shop fourth $shopper
matchre shop5 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop5:
send shop fifth $shopper
matchre shop6 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop6:
send shop sixth $shopper
matchre shop7 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop7:
send shop seventh $shopper
matchre shop8 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop8:
send shop eighth $shopper
matchre shop9 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop9:
send shop ninth $shopper
matchre shop10 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop10:
send shop tenth $shopper
matchre shop11 ^\[Type SHOP \[GOOD\] to see some details about
matchre return ^I could not find what you were referring to|^You can buy this item if you like
matchwait

shop11:
send shop eleventh $shopper
goto return

return:
return

end:
put #parse SCRIPT DONE
exit