#move.Cmd

#fixed minor glitch going to geni tree so it doesn't instantly try run you in circles 10/23/2006
#fixed minor glitch from theren to rossmans and beyond to not go to elbains first 10/19/2006
#updated 10-15-06 to include Forfedhar
#also changed many startpoints so you can add destinations example from geni tree (.move crossing) now functions
#if you own a private ship do a find for RANGER change the ship ones to your ship, Find Wryven change to your name
#find Ushzabum and change it to your pilots name, then it will take your ship rather than the ferry to leth and back

start:

match Theren a crumbling stone wall
match Elbains [El'Bain's Stop, Picnic Area]
match Rossmans a whitewashed marker
match Riverhaven [Riverhaven, Town Square]
match StoneRoad [The Marsh, Stone Road]
match Kaerna [Kaerna Village, By the General Store]
match CrossingGuild a journeyman
match XingDock [The Crossing, Alfren's Ferry]
match LethDock [Southern Trade Route, Segoltha South Bank]
match LethDeriel [Leth Deriel, Sana'ati Dyaus Drui'tas]
match NPlat a granite plaque
match SPlat a door frame
match Waterfall [Dragon's Spine, Behind the Waterfall]
match Crossroad [Southern Trade Route, Road to Shard]
match Adanf [Whistling Wood, Path]
match HorseClan [Zaldi Taipa, Cedar Path]
match IleyaTaipa [Ilaya Taipa, Southwest Gate]
match Basodock [Ilaya Taipa, Baso Dock]
match EastPier [Ain Ghazal, East Pier]
# match AinGhazal ?????++++++++++++++++++++++++++++++
match AinFerryDock [Ain Ghazal, Ferry Dock]
match HaaFerryDock [Haalikshal Highway, Ferry Dock]
match RavensPoint [Seord Kerwaith, North Gate]
match Hibarnhvidar [Gate to Hibarnhvidar]
match BoarClan a moss-clad stone bridge.
match Monastery [Pilgrimage Trail, Outside the Monastery]
match CanopiedTrail [Vela'Tohr Woods, Canopied Trail]
match Maze [Hara'jaal, Fal Daelfa]
match hBeach a driftwood plank
match myboat Pilot Ushzabum
match start1 Obvious paths:
match start1 Obvious exits:
match Widow [Hag's Crag, Widow's Respite]
put look
matchwait

start1:
pause
put look
match Langenfirth [Langenfirth, Lomar Road]
match Warcats [Ruined Village, Inside the Gate]
match Streambed [Wilderness, Dry Streambed]
match ArtheDale [Arthe Dale, Village Gate]
match wolfclan [Crolin's Skins, Main Room]
match FerrySouth ["Kertigen's Honor"]
match FerrySouth ["Hodierna's Grace"]
match Gondola [Gondola, Cab
match Hag [Svesinek Cels, Blocked Canyon]
match ShardGuild [Shattered Oak, Ranger Guild]
match skiff [A Highly Polished Skiff]
match P5Ferry [The "Evening Star"]
match P5Ferry [The "Damaris's Kiss"]
match P5Guild Ranger Guildleader Paglar
match ABank a ragtag peddler
match FORK a steep trail leading up the mountain
match Fissure [Aesry Surlaenis'a, Geshiger]
match Shore a narrow trail.
match MBridge a timber bridge
match Junction [Island Ring Road, Fever Point Junction]
match Cypress [Fala Inisharon, The Mossy Cypress]
match Galley [The galley
match kDock [Mer'Kresh, The Galley Dock]
match Mdock [Belarritaco Bay, The Galley Dock]
match ditch a ditch.
match Oasis [Hidisharon Desert, Oasis]
match Hovel Muddy Courtyard]
match hbank [Baron's Forset, Teller]
match hDock [Sumilo Dock]
match GOS [Skeleton's Crook, Gate of Souls]
match marbledgargs [Asketi's Mount, Temple of the North Wind]
match start2 Obvious paths:
match start2 Obvious exits:
matchwait

start2:
pause
put look
match Manor [Oshu'ehhrsk Manor, Den]
match Sandbarge ["The Suncatcher"]
match Sandbarge ["The Desert Wind"]
match lake [Laakmir, Shallow Lake]
match Altar [Zaulfung, Ruined Shrine]
match hell a thick stalagmite
match Jolas [The Jolas, Fore Deck]
match Dirge [Dirge, Gateway Road]
match Hag [Svesinek Cels, Blocked Canyon]
match Ruins [Siergelde, Stone Grotto]
match tigerclan wrecked tower.
match knifeclan [Knife Clan, Bukor's Leatherworks]
match SurvivalShop [Prairie, A Large Clearing]
match ShadowClan [Blackthorn Canyon, Before the Wall]
match mWharf [Wharf End, Mer'Kresh]
match Sedge some sedge grass
match Arthedock Busar Saaf]
match GeniTree [Old Oak Tree, Amongst the Branches]
match Ldock [Acenamacra Pier]
match Valley [Julge Dolen Zaldeni, Diving Rock]
match Cave [Sea Caves, Crevice]
match Cliff [Aesry Surlaenis'a, Bottom of Cliff]
match Morgue [Morgue]
match Shelter [The Island, A Hunter's Shelter]
match Maltar [Galduta Isharon, The West Face]
match Muspari [Muspar'i, Great Gate Square]
match Hvaral [Hvaral, Gate]
match Fornsted [Fornsted, Arnshal Thoroughfare]
match Dancers [Ice Caves, Crystal Cavern]
match Temple [Resurrection Creche, Li Stil rae Kwego
match SBank [First Bank of Ilithi, Teller's Windows]
match start3 obvious paths:
match start3 obvious exits:
matchwait

start3:
pause
put look
match Empath Healing Room]
match Furrier Scupper's Furrier]
match kBank [Harti Clemois Bank, Teller's Window]
match Mamas [The Assay Shop, Main Office]
match Malchata [Remcli Amarcen, Canyon Floor]
match orbs [Cleric Guild, Prayer Room]
match MGem men playing a game
match Rookie obvious paths:
match Rookie obvious exits:
matchwait


#*******************  THERENGIA   *******************


Siskraja:
if_1 goto Lan2Hag
pause
echo ok boss to head to Siskraja
waitfor ok boss
goto Lan2Hag 

Muspari:
if_1 goto MUS2SAN
pause
echo ok boss to head to Hvaral
waitfor ok boss
goto MUS2SAN


SandBarge:
if_1 goto sbarge
pause
echo choose Muspari or Hvaral boss
match SAN2MUS Muspa
match SAN2HVA Hvara
matchwait
sbarge:
pause
put echo %1
match SAN2MUS Muspa
match SAN2HVA Hvara
match SAN2HVA Forns
match SAN2HVA Theren
match SAN2HVA Elbai
match SAN2HVA Lang
match SAN2HVA Rossm
match SAN2HVA Riverh
match SAN2HVA Haven
match SAN2HVA Kaern
match SAN2HVA Crossing
match SAN2HVA Leth
match SAN2HVA Shard
match SAN2HVA Tomma
match SAN2HVA Ileya
match SAN2HVA Ain
match SAN2HVA Hib
match SAN2HVA Raven
match SAN2HVA Boar
matchwait


Hvaral:
if_1 goto hvarae
pause
echo choose Muspari or Fornsted boss
match HVA2SAN muspa
match HVA2FOR Forns
matchwait
hvarae:
pause
put echo %1
match end Hvaral
match HVA2SAN muspa
match HVA2FOR Forns
match HVA2FOR Theren
match HVA2FOR Elbai
match HVA2FOR Lang
match HVA2FOR Rossm
match HVA2FOR Riverhaven
match HVA2FOR Haven
match HVA2FOR Kaern
match HVA2FOR Crossing
match HVA2FOR Leth
match HVA2FOR Shard
match HVA2FOR Tomma
match HVA2FOR Ileya
match HVA2FOR Ain
match HVA2FOR Hib
match HVA2FOR Raven
match HVA2FOR Boar
matchwait


Fornsted:
if_1 goto fornse
pause
echo choose Lake, Hvaral or Theren boss
match FOR2LAK lake
match FOR2HVA Hvara
match FOR2THE Theren
matchwait
fornse:
pause
put echo %1
match end Fornsted
match FOR2HVA Hvara
match FOR2HVA Muspa
match FOR2THE Theren
match FOR2THE Elbai
match FOR2THE Lang
match FOR2THE Rossm
match FOR2THE Riverh
match FOR2THE Haven
match FOR2THE Kaern
match FOR2THE Crossing
match FOR2THE Leth
match FOR2THE Shard
match FOR2THE Tomma
match FOR2THE Ileya
match FOR2THE Ain
match FOR2THE Hib
match FOR2THE Raven
match FOR2THE Boar
matchwait


Lake:
if_1 goto lakee
pause
echo choose Fornsted or Theren boss
match lak2for forns
match lak2the there
matchwait
Lakee:
pause
put echo %1
match lak2for Musp
match lak2for Hava
match lak2for Forn
match lak2the Theren
match lak2the Elbai
match lak2the Lang
match lak2the Rossm
match lak2the Riverh
match lak2the Haven
match lak2the Kaerna
match lak2the Crossing
match lak2the Leth
match lak2the Shard
match lak2the Tomma
match lak2the Ileya
match lak2the Ain
match lak2the Hib
match lak2the Raven
match lak2the Boar
matchwait


Theren:
if_1 goto theree
pause
echo choose Elbains, Lake, Fornsted, Lang or Rossman boss
match THE2FOR Forns
match THE2LAN Lang
match THE2ROS Rossm
match THE2LAK Lake
match THE2ELB Elbai
matchwait
theree:
pause
put echo %1
match end Theren
match THE2FOR Muspa
match THE2FOR Hvara
match THE2FOR Forns
match THE2LAN Lang
match THE2ROS Rossm
match THE2ELB Elbai
match THE2ROS Riverh
match THE2ROS Haven
match THE2ROS Kaern
match THE2ROS Crossing
match THE2ROS Leth
match THE2ROS Shard
match THE2ROS Tomma
match THE2ROS Ileya
match THE2ROS Ain
match THE2ROS Hib
match THE2ROS Raven
match THE2ROS Boar
matchwait


Elbains:
if_1 goto elbaie
pause
echo choose Lang Rossmans or Theren boss
match ELB2THE Theren
match ELB2LAN Lang
match ELB2ROS Rossma
matchwait
elbaie:
pause
put echo %1
match end Elbai
match ELB2THE Muspa
match ELB2THE Hvara
match ELB2THE Forns
match ELB2THE Theren
match ELB2LAN Lang
match ELB2ROS Rossm
match ELB2ROS Riverh
match ELB2ROS Haven
match ELB2ROS Kaern
match ELB2ROS Crossing
match ELB2ROS Leth
match ELB2ROS Shard
match ELB2ROS Tomma
match ELB2ROS Ileya
match ELB2ROS Ain
match ELB2ROS Hib
match ELB2ROS Raven
match ELB2ROS Boar
matchwait

Widow:
if_1 goto WIDOW2HAG


Langenfirth:
if_1 goto Langee
pause
echo choose Elbains, Theren or Rossman, or Hag boss 
match LAN2THE Theren
match LAN2ELB Elbai
match LAN2ROS Rossm
matchwait
langee:
pause
put echo %1
match end Lang
match LAN2THE Muspa
match LAN2THE Hvara
match LAN2THE Forns
match LAN2THE Theren
match LAN2ELB Elbai
match LAN2HAG Siskraja
match LAN2ROS Rossm
match LAN2ROS Riverh
match LAN2ROS Haven
match LAN2ROS Kaern
match LAN2ROS Crossing
match LAN2ROS Leth
match LAN2ROS Shard
match LAN2ROS Tomma
match LAN2ROS Ileya
match LAN2ROS Ain
match LAN2ROS Hib
match LAN2ROS Raven
match LAN2ROS Boar
matchwait


Rossmans:
if_1 goto rossme
pause
echo choose Riverhaven, Theren, Lang, Elbains or Warcats boss
match ROS2THE Theren
match ROS2LAN Lang
match ROS2HAV Riverh
match ROS2WAR Warca
match ROS2ELB elbai
matchwait
rossme:
pause
put echo %1
match end Rossma
match ROS2THE Muspa
match ROS2THE Hvara
match ROS2THE Forns
match ROS2THE Theren
match ROS2LAN Lang
match ROS2HAV Riverh
match ROS2HAV Haven
match ROS2WAR Warca
match ROS2ELB elbai
match ROS2HAV Kaern
match ROS2HAV Crossing
match ROS2HAV Leth
match ROS2HAV Shard
match ROS2HAV Tomma
match ROS2HAV Ileya
match ROS2HAV Ain
match ROS2HAV Hib
match ROS2HAV Raven
match ROS2HAV Boar
matchwait


Warcats:
echo enter OK boss to head to rossmans 
waitfor ok boss
goto War2ros

Siskraja:
if_1 goto HAG2LAN


Riverhaven:
if_1 goto rivere
pause
echo choose Rossman Altar or Crocs boss
match HAV2ROS Rossm
match HAV2BRI Crocs
match HAV2ALT Altar
matchwait
rivere:
pause
put echo %1
match end Riverh
match end Haven
match HAV2ROS Muspa
match HAV2ROS Hvara
match HAV2ROS Forns
match HAV2ROS Theren
match HAV2ROS Elbai
match HAV2ROS Lang
match HAV2ROS Rossm
match HAV2BRI Bridg
match HAV2BRI Kaern
match HAV2BRI Crossing
match HAV2BRI Leth
match HAV2BRI Shard
match HAV2BRI Tomma
match HAV2BRI Ileya
match HAV2BRI Ain
match HAV2BRI Hib
match HAV2BRI Raven
match HAV2BRI Boar
matchwait


Altar:
if_1 goto ALT2HAV
pause
echo choose Haven or Hell boss
match ALT2HAV Haven
match ALT2HEL Hell
matchwait


Hell:
if_1 goto HEL2ALT
pause
echo enter ok boss when ready to head back towards the altar
waitfor ok boss
goto HEL2ALT


Stoneroad:
if_1 goto bridgee
pause
echo choose Riverhaven, Crossing, Kaerna, Streambed or GOS boss
match BRI2HAV Riverhaven
match BRI2STR Stream
match BRI2GUI Crossing
match BRI2GOS gos
match BRI2KAE Kaern
matchwait
bridgee:
pause
put echo %1
match BRI2HAV Muspa
match BRI2HAV Hvara
match BRI2HAV Forns
match BRI2HAV Theren
match BRI2HAV Elbai
match BRI2HAV Lang
match BRI2HAV Rossm
match BRI2HAV Riverh
match BRI2HAV Haven
match BRI2GUI Crossing
match BRI2KAE Kaern
match BRI2GUI Leth
match BRI2GUI Shard
match BRI2GUI Tomma
match BRI2GUI Ileya
match BRI2GUI Ain
match BRI2GUI Hib
match BRI2GUI Raven
match BRI2GUI Boar
matchwait


#**********************     ZOLUREN     *************************

GOS:
if_1 goto gose
pause
echo choose Crocs or Guild boss
match GOS2BRI crocs
match GOS2GUI guild
matchwait
Gose:
pause
put echo %1
match GOS2BRI Musp
match GOS2BRI Hava
match GOS2BRI Forn
match GOS2BRI Theren
match GOS2BRI Elbai
match GOS2BRI Lang
match GOS2BRI Rossm
match GOS2BRI Riverh
match GOS2BRI Haven
match GOS2GUI Kaerna
match GOS2GUI Crossing
match GOS2GUI Leth
match GOS2GUI Shard
match GOS2GUI Tomma
match GOS2GUI Ileya
match GOS2GUI Ain
match GOS2GUI Hib
match GOS2GUI Raven
match GOS2GUI Boar
matchwait


Streambed:
if_1 goto streae
pause
echo choose Crossings, Geni, Kaerna or Crocs boss
match STR2GEN Geni
match STR2GUI Cross
match STR2KAE Kaern
match STR2BRI crocs
matchwait
streae:
pause
put echo %1
match STR2GUI Guild
match STR2GUI cross
match STR2BRI Muspa
match STR2BRI Hvara
match STR2BRI Forns
match STR2BRI Theren
match STR2BRI Elbai
match STR2BRI Lang
match STR2BRI Rossm
match STR2BRI Riverh
match STR2BRI Haven
match STR2GUI Guild
match STR2KAE Kaern
match STR2BRI crocs
match STR2GUI Leth
match STR2GUI Shard
match STR2GUI Tomma
match STR2GUI Ileya
match STR2GUI Ain
match STR2GUI Hib
match STR2GUI Raven
match STR2GUI Boar
match STR2GEN Geni
matchwait


GeniTree:
if_1 goto GENITE
pause
echo enter ok boss to go to streambed
waitfor ok boss
goto GEN2STR
GENITE:
pause
put echo %1
match GEN2STR Guild
match GEN2STR cross
match GEN2STR Muspa
match GEN2STR Hvara
match GEN2STR Forns
match GEN2STR Theren
match GEN2STR Elbai
match GEN2STR Lang
match GEN2STR Rossm
match GEN2STR Riverh
match GEN2STR Haven
match GEN2STR Guild
match GEN2STR Kaern
match GEN2STR crocs
match GEN2STR Leth
match GEN2STR Shard
match GEN2STR Tomma
match GEN2STR Ileya
match GEN2STR Ain
match GEN2STR Hib
match GEN2STR Raven
match GEN2STR Boar
match END Geni
matchwait


Kaerna:
if_1 goto kareae
pause
echo choose Streambed, GUILD or Crocs boss
match KAE2STR stream
match KAE2GUI guild
match KAE2BRI crocs
matchwait
kareae:
pause
put echo %1
match end Kaerna
match KAE2BRI Muspa
match KAE2BRI Hvara
match KAE2BRI Forns
match KAE2BRI Theren
match KAE2BRI Elbai
match KAE2BRI Lang
match KAE2BRI Rossm
match KAE2BRI Riverh
match KAE2BRI haven
match KAE2GUI guild
match KAE2GUI crossin
match KAE2BRI bridg
match KAE2GUI Leth
match KAE2GUI Shard
match KAE2GUI Tomma
match KAE2GUI Ileya
match KAE2GUI Ain
match KAE2GUI Hib
match KAE2GUI Raven
match KAE2GUI Boar
matchwait


CrossingGuild:
if_1 goto cguilde
pause
echo choose Clans, FERRY, Crocs, Streambed, Geni, Bank, Vault, GOS, Kaerna, Arthe, Dirge or Ruins boss
match Clans Clan
match GUI2ART Arthe
match GUI2DIR Dirge
match GUI2STR Strea
match GUI2BRI Crocs
match GUI2BAN Bank
match GUI2VAU Vault
match GUI2FER Ferry
match GUI2RUI Ruins
match GUI2GOS gos
match GUI2KAE kaern
matchwait
cguilde:
pause
put echo %1
match end crossing
match GUI2BRI RIverh
match GUI2BRI haven
match GUI2KAE kaern
match GUI2STR geni
match GUI2BRI Muspa
match GUI2BRI Hvara
match GUI2BRI Forns
match GUI2BRI lang
match GUI2BRI Theren
match GUI2BRI Elbai
match GUI2BRI Lang
match GUI2BRI Rossm
match GUI2BRI Boat
match GUI2FER Leth
match GUI2FER Shard
match GUI2FER Tomma
match GUI2FER Ileya
match GUI2FER Ain
match GUI2FER Hib
match GUI2FER Raven
match GUI2FER Boar
matchwait


Clans:
echo choose TClan, KClan, or WClan boss
match GUI2TIG TClan
match GUI2KNI KClan
match GUI2WOL WClan
matchwait


Wolfclan:
if_1 goto wol2gui
pause
echo enter OK boss to head to guild 
waitfor ok boss
goto wol2gui


Tigerclan:
if_1 goto Tig2gui
pause
echo enter OK boss to head to guild 
waitfor ok boss
goto tig2gui


Knifeclan:
if_1 goto kni2gui
pause
echo enter ok boss to head to guild
waitfor ok boss
goto KNI2GUI


Temple:
echo enter ok boss to head to clerics guild
waitfor ok boss
goto TEM2GUI


Ruins:
echo enter ok boss to head to ranger guild
waitfor ok boss
goto RUI2GUI


ArtheDale:
if_1 goto Arthee
pause
echo choose Guild Kaerna or dock boss
match ART2GUI guild
match ART2KAE kaern
match ART2DOC dock
matchwait
Arthee:
pause
put echo %1
match end arthe
match ART2KAE Musp
match ART2KAE Hava
match ART2KAE Forn
match ART2KAE Theren
match ART2KAE Elbai
match ART2KAE Lang
match ART2KAE Rossm
match ART2KAE Riverh
match ART2KAE Haven
match ART2KAE Kaerna
match ART2GUI Crossing
match ART2GUI Leth
match ART2GUI Shard
match ART2GUI Tomma
match ART2GUI Ileya
match ART2GUI Ain
match ART2GUI Hib
match ART2GUI Raven
match ART2GUI Boar
matchwait


ArtheDock:
if_1 goto doc2art
pause
echo enter ok boss to head to Arthe Dale
waitfor ok boss
goto DOC2ART


Dirge:
if_1 goto Dirgee
pause
echo ok boss choose crossing or crocs
match DIR2GUI crossing
match DIR2CRO crocs
matchwait
Dirgee:
pause
put echo %1
match end Dirge
match DIR2CRO Musp
match DIR2CRO Hava
match DIR2CRO Forn
match DIR2CRO Theren
match DIR2CRO Elbai
match DIR2CRO Lang
match DIR2CRO Rossm
match DIR2CRO Riverh
match DIR2CRO Haven
match DIR2GUI Kaerna
match DIR2GUI Crossing
match DIR2GUI Leth
match DIR2GUI Shard
match DIR2GUI Tomma
match DIR2GUI Ileya
match DIR2GUI Ain
match DIR2GUI Hib
match DIR2GUI Raven
match DIR2GUI Boar
matchwait


XingDock:
if_1 goto xingde
pause
echo ok boss Crossing or Leth
match ON2FERR leth
match DOC2GUI crossing
matchwait
xingde:
pause
put echo %1
match DOC2GUI Musp
match DOC2GUI Hava
match DOC2GUI Forn
match DOC2GUI Theren
match DOC2GUI Elbai
match DOC2GUI Lang
match DOC2GUI Rossm
match DOC2GUI Riverh
match DOC2GUI Haven
match DOC2GUI Kaerna
match DOC2GUI Crossing
match BOAT2LE Leth
match BOAT2LE Shard
match BOAT2LE Tomma
match BOAT2LE Ileya
match BOAT2LE Ain
match BOAT2LE Hib
match BOAT2LE Raven
match BOAT2LE Boar
matchwait


FerrySouth:
if_1 goto ferrye
pause
echo choose Leth, Gondola or Guild boss
match FER2LET Leth
match FER2GON Gondola
match FER2GUI Guild
matchwait
ferrye:
pause
put echo %1
match FER2GUI Crossing
match FER2GUI Muspa
match FER2GUI Hvara
match FER2GUI Forns
match FER2GUI Theren
match FER2GUI Elbai
match FER2GUI Lang
match FER2GUI Rossm
match FER2GUI Riverh
match FER2GUI Haven
match FER2GUI Kaern
match FER2LET Leth
match FER2GON Gondola
match FER2GUI Guild
match FER2GON Shard
match FER2GON Tomma
match FER2LET Ileya
match FER2LET Ain
match FER2LET Hib
match FER2LET Raven
match FER2LET Boar
matchwait


LethDOck:
if_1 goto Lethde
pause
echo ok boss Crosing or Leth
match ON2FERR cross crossing
match DOC2LET1 leth
matchwait
Lethde:
pause
put echo %1
match BOAT2CRO Musp
match BOAT2CRO Hava
match BOAT2CRO Forn
match BOAT2CRO Theren
match BOAT2CRO Elbai
match BOAT2CRO Lang
match BOAT2CRO Rossm
match BOAT2CRO Riverh
match BOAT2CRO Haven
match BOAT2CRO Kaerna
match BOAT2CRO Crossing
match DOC2LET1 Leth
match FER2GON1 Shard
match FER2GON1 Tomma
match DOC2LET1 Ileya
match DOC2LET1 Ain
match DOC2LET1 Hib
match DOC2LET1 Raven
match DOC2LET1 Boar
matchwait


LethDeriel:
if_1 goto lethe
pause
echo choose Manor, Shard, Docks or Ferry boss
match LET2MAN Manor
match LET2GON Shard
match LET2DOC docks
match LET2FER Ferry
matchwait
lethe:
pause
put echo %1
match end Leth
match LET2FER Muspa
match LET2FER Hvara
match LET2FER Forns
match LET2FER Theren
match LET2FER Elbai
match LET2FER Lang
match LET2FER Rossm
match LET2FER Riverh
match LET2FER Haven
match LET2FER Kaern
match LET2FER Crossing
match LET2GON Gondola
match LET2FER Ferry
match LET2GON Shard
match LET2GON Tomma
match LETGROUP Ileya
match LETGROUP Ain
match LETGROUP Hib
match LETGROUP Raven
match LETGROUP Boar
matchwait


LDock:
if_1 goto DOC2LET
pause
echo enter ok boss to head to Leth
waitfor ok boss
goto DOC2LET


Manor:
if_1 goto MAN2LET
pause
echo ok boss to head to Leth
waitfor ok boss
goto MAN2LET



#*********************   ILITHI   ***********************


NPlat:
if_1 goto nplate
pause
echo choose Leth or Shard boss
match NPL2SHA shard
match NPL2LET leth
matchwait
nplate:
pause
put echo %1
match NPL2LET Theren
match NPL2LET Elbai
match NPL2LET Lang
match NPL2LET Rossm
match NPL2LET Riverh
match NPL2LET Haven
match NPL2LET Kaern
match NPL2LET Crossing
match NPL2SHA shard
match NPL2LET leth
match NPL2SHA Tomma
match NPL2LET Ileya
match NPL2LET Ain
match NPL2LET Hib
match NPL2LET Raven
match NPL2LET Boar
matchwait


Gondola:
if_1 goto gondoe
pause
echo choose Leth, Ferry or Shard boss
match GON2LET Leth
match GON2FER Ferry
match GON2CRO shard
matchwait
gondoe:
pause
put echo %1
match GON2FER Muspa
match GON2FER Hvara
match GON2FER Forns
match GON2FER Theren
match GON2FER Elbai
match GON2FER Lang
match GON2FER Rossm
match GON2FER Riverh
match GON2FER Haven
match GON2FER Kaern
match GON2FER Crossing
match GON2LET Leth
match GON2FER Ferry
match GON2CRO shard
match GON2CRO Tomma
match GON2LET Ileya
match GON2LET Ain
match GON2LET Hib
match GON2LET Raven
match GON2LET Boar
matchwait


SPlat:
if_1 goto splate
pause
echo choose gargs shard or leth boss
match SPL2GAR gargs
match SPL2CRO shard
match SPL2LET leth
matchwait
splate:
pause
put echo %1
match SPL2GAR Muspa
match SPL2GAR Hvara
match SPL2GAR Forns
match SPL2GAR Theren
match SPL2GAR Elbai
match SPL2GAR Lang
match SPL2GAR Rossm
match SPL2GAR Riverhaven
match SPL2GAR Kaern
match SPL2GAR Crossing
match SPL2GAR gargs
match SPL2CRO shard
match SPL2LET leth
match SPL2CRO Tomma
match SPL2LET Ileya
match SPL2CRO Ain
match SPL2CRO Hib
match SPL2CRO Raven
match SPL2CRO Boar
matchwait


Waterfall:
if_1 goto watere
pause
echo choose Leth or Shard boss
match UG2Leth Leth
match WAT2CRO Shard
matchwait
watere:
pause
put echo %1
match end gargs
match UG2Leth Muspa
match UG2Leth Hvara
match UG2Leth Forns
match UG2Leth Theren
match UG2Leth Elbai
match UG2Leth Lang
match UG2Leth Rossm
match UG2Leth Riverh
match UG2Leth Haven
match UG2Leth Kaern
match UG2Leth Crossing
match UG2Leth Leth
match WAT2CRO Shard
match WAT2CRO Tomma
match UG2Leth Ileya
match WAT2CRO Ain
match WAT2CRO Hib
match WAT2CRO Raven
match WAT2CRO Boar
matchwait


Crossroad:
if_1 goto crosse
pause
echo choose Leth, Gargs, Shop, Adanf, Bank, Gondola or Tomma boss
match CRO2LET Leth
match CRO2WAT Gargs
match CRO2SHO Shop
match CRO2ADA Adanf
match CRO2BAN Bank
match CRO2GUI Tomma
match CRO2GON gondo
matchwait
crosse:
pause
put echo %1
match end shard
match CRO2LET Muspa
match CRO2LET Hvara
match CRO2LET Forns
match CRO2LET Theren
match CRO2LET Elbai
match CRO2LET Lang
match CRO2LET Rossm
match CRO2LET Riverh
match CRO2LET Haven
match CRO2LET Kaern
match CRO2LET Crossing
match CRO2LET Leth
match CRO2WAT Gargs
match CRO2GUI Tomma
match CRO2LET Ileya
match CRO2GUI Ain
match CRO2GUI Hib
match CRO2GUI Raven
match CRO2GUI Boar
match CRO2GON gondo
matchwait


SBank:
if_1 goto BAN2CRO
pause
echo choose Crossroads, Shop or Adanf boss
match BAN2CRO crossroad
match BAN2SHO shop
match BAN2ADA adanf
matchwait


Survivalshop:
if_1 goto SHO2CRO
pause
echo choose Bank, Crossroads, Malchata or Adanf boss
match SHO2BAN Bank
match SHO2CRO Crossroads
match SHO2MAL Malchata
match SHO2ADA Adanf
matchwait


Malchata:
if_1 goto Mal2SHO
pause
echo enter ok boss to head back to survival shop
waitfor ok boss
goto MAL2SHO


Adanf:
if_1 goto ADA2CRO
pause
echo choose Shop, Bank, Coriks gate, Dancers or Crossroads boss
match ADA2SHO Shop
match ADA2BAN bank
match ADA2SHA coriks gate
match ADA2DAN dancers
match ADA2CRO Crossroads
matchwait


Dancers:
if_1 goto DAN2ADA
pause
echo enter ok boss to go back to adanf safe spot
waitfor ok boss
goto DAN2ADA


ShadowClan:
if_1 goto shadowe
pause
echo choose Adanf or Guild boss
match SHA2ADA adanf
match SHA2GUI guild
matchwait
Shadowe:
match SHA2ADA Theren
match SHA2ADA Elbai
match SHA2ADA Lang
match SHA2ADA Rossm
match SHA2ADA Riverh
match SHA2ADA Haven
match SHA2ADA Kaerna
match SHA2ADA Crossing
match SHA2ADA Leth
match SHA2ADA Shard
match SHA2GUI Tomma
match SHA2ADA Ileya
match SHA2GUI Ain
match SHA2GUI Hib
match SHA2GUI Raven
match SHA2GUI Boar
matchwait

ShardGuild:
if_1 goto tommae
pause
echo choose Horseclan, Valley, Coriks gate, Ravens point or Shard boss
match GUI2HOR Horseclan
match GUI2VAL valle
match GUI2CRO Shard
match GUI2RAV Raven
match GUI2SHA coriks
matchwait
tommae:
pause
put echo %1
match end tomma
match GUI2CRO Theren
match GUI2CRO Elbai
match GUI2CRO Lang
match GUI2CRO Rossm
match GUI2CRO Riverh
match GUI2CRO Haven
match GUI2CRO Kaern
match GUI2CRO Crossing
match GUI2CRO Leth
match GUI2HOR Horseclan
match GUI2CRO Shard
match GUI2RAV Ain
match GUI2RAV Raven
match GUI2RAV Hib
match GUI2RAV Boar
match GUI2CRO Ileya
matchwait


VALLEY:
if_1 goto Val2GUI
pause
echo choose Horseclan or Guild boss
match VAL2HOR Horseclan
match VAL2GUI guild
matchwait


HorseClan:
if_1 goto HOR2GUI
pause
echo choose valley or guild boss 
match HOR2GUI guild
match HOR2VAL valley
matchwait



#************************* Forfedhar **************************


IleyaTaipa:
if_1 goto Ileyae
pause
echo choose Skiff or Leth boss 
match ILE2SKI skiff
match ILE2LET leth
matchwait
Ileyae:
pause
put echo %1
match end Ileya
match ILE2LET Theren
match ILE2LET Elbai
match ILE2LET Lang
match ILE2LET Rossm
match ILE2LET Riverh
match ILE2LET Haven
match ILE2LET Kaerna
match ILE2LET Crossing
match ILE2LET Leth
match ILE2LET Shard
match ILE2LET Tomma
match ILE2SKI Ain
match ILE2SKI Hib
match ILE2SKI Raven
match ILE2SKI Boar
matchwait


BasoDock:
if_1 goto Basode
pause
echo choose Leth Deriel, Ileya Tapia or Skiff boss
match SKI2ILE Ileya
match SKI2ILE Leth
match ON2SKIF skiff
matchwait
Basode:
pause
put echo %1
match SKI2ILE1 Theren
match SKI2ILE1 Elbai
match SKI2ILE1 Lang
match SKI2ILE1 Rossm
match SKI2ILE1 Riverh
match SKI2ILE1 Haven
match SKI2ILE1 Kaerna
match SKI2ILE1 Crossing
match SKI2ILE1 Leth
match SKI2ILE1 Shard
match SKI2ILE1 Tomma
match SKI2ILE1 Ileya
match ON2SKIF Ain
match ON2SKIF Hib
match ON2SKIF Raven
match ON2SKIF Boar
matchwait


EastPier:
if_1 goto eastpe
pause
echo choose Hib or Ain boss
match Ski2fer1 hib
match ON2SKIF ain
matchwait
Eastpe:
pause
put echo %1
match end AIN
match ON2SKIF Theren
match ON2SKIF Elbai
match ON2SKIF Lang
match ON2SKIF Rossm
match ON2SKIF Riverh
match ON2SKIF Haven
match ON2SKIF Kaerna
match ON2SKIF Crossing
match ON2SKIF Leth
match Ski2fer1 Shard
match Ski2fer1 Tomma
match ON2SKIF1 Ileya
match Ski2fer1 Hib
match Ski2fer1 Raven
match Ski2fer1 Boar
matchwait


Skiff:
if_1 goto Skiffe
pause
echo ok boss choose Ain Ghazal or Ileya Tapia
match Ski2fer Ain
match Ski2Ile Ileya
matchwait
Skiffe:
pause
put echo %1
match Ski2Ile Theren
match Ski2Ile Elbai
match Ski2Ile Lang
match Ski2Ile Rossm
match Ski2Ile Riverh
match Ski2Ile Haven
match Ski2Ile Kaerna
match Ski2Ile Crossing
match Ski2Ile Leth
match Ski2Ile Shard
match Ski2Ile Tomma
match Ski2Ile Ileya
match Ski2fer Ain
match Ski2fer Hib
match Ski2fer Raven
match Ski2fer Boar
matchwait


AinFerryDock:
if_1 goto AinFee
pause
echo ok boss Hib AinGate or Ileya
match ON2FERR1 Hib
match FER2SKI1 Ileya
match FER2AING AinGate
matchwait
Ainfee:
put echo %1
match FER2SKI1 Theren
match FER2SKI1 Elbai
match FER2SKI1 Lang
match FER2SKI1 Rossm
match FER2SKI1 Riverh
match FER2SKI1 Haven
match FER2SKI1 Kaerna
match FER2SKI1 Crossing
match FER2SKI1 Leth
match ON2FERR1 Shard
match ON2FERR1 Tomma
match FER2SKI1 Ileya
match FER2AING AinGate
match ON2FERR1 Hib
match ON2FERR1 Raven
match ON2FERR1 Boar
matchwait


HaaFerryDock:
if_1 goto haafee
pause
echo choose Hib or Ain boss
match FER2HIB1 hib
match ON2FERR1 Ain
matchwait
Haafee:
match ON2FERR1 Theren
match ON2FERR1 Elbai
match ON2FERR1 Lang
match ON2FERR1 Rossm
match ON2FERR1 Riverh
match ON2FERR1 Haven
match ON2FERR1 Kaerna
match ON2FERR1 Crossing
match ON2FERR1 Leth
match FER2HIB1 Shard
match FER2HIB1 Tomma
match ON2FERR1 Ileya
match ON2FERR1 Ain
match FER2HIB1 Hib
match FER2HIB1 Raven
match FER2HIB1 Boar
matchwait

ON2FERR1:
put go ferry
match W4PF What were you referring to?
match W4PF board as soon as they dock.
match W4PF we cannot take any more passengers
match W4PF have to wait for the next ferry.
match start and climb aboard.
matchwait 

W4PF:
put hide
pause
waitfor easy landing at the dock
put go ferry
goto start


P5Ferry:
if_1 goto P5Fere
pause
echo ok boss choose Ain Ghazal or Hibarnhvidar
match FER2HIB Hib
match FER2SKI Ain
matchwait
P5Fere:
pause
put echo %1
match FER2SKI Theren
match FER2SKI Elbai
match FER2SKI Lang
match FER2SKI Rossm
match FER2SKI Riverh
match FER2SKI Haven
match FER2SKI Kaerna
match FER2SKI Crossing
match FER2SKI Leth
match FER2SKI Shard
match FER2SKI Tomma
match FER2SKI Ileya
match FER2SKI Ain
match FER2HIB Hib
match FER2HIB Raven
match FER2HIB Boar
matchwait


RavensPoint:
if_1 goto Ravene
pause
echo choose Hib or Shard boss 
match RAV2HIB hib
match RAV2GUI shard
matchwait
Ravene:
pause
put echo %1
match end raven
match RAV2GUI Theren
match RAV2GUI Elbai
match RAV2GUI Lang
match RAV2GUI Rossm
match RAV2GUI Riverh
match RAV2GUI Haven
match RAV2GUI Kaerna
match RAV2GUI Crossing
match RAV2GUI Leth
match RAV2GUI Shard
match RAV2GUI Tomma
match RAV2GUI Ileya
match RAV2HIB Ain
match RAV2HIB Hib
match RAV2HIB Boar
matchwait


Hibarnhvidar:
if_1 goto Hibare
pause
echo choose Boar clan Ferry or Ravens point boss 
match HIB2BOA boar
match HIB2RAV raven
match HIB2FER ferry
matchwait
Hibare:
pause
put echo %1
match end Hib
match HIB2RAV Theren
match HIB2RAV Elbai
match HIB2RAV Lang
match HIB2RAV Rossm
match HIB2RAV Riverh
match HIB2RAV Haven
match HIB2RAV Kaerna
match HIB2RAV Crossing
match HIB2RAV Leth
match HIB2RAV Shard
match HIB2RAV Tomma
match HIB2RAV Ileya
match HIB2FER Ain
match HIB2BOA Raven
match HIB2BOA Boar
matchwait


BoarClan:
if_1 goto boarce
pause
echo choose guild, hib or Monastery boss 
match BOA2GUI guild
match BOA2HIB Hib
match BOA2MON monas
matchwait
boarce:
pause
put echo %1
match BOA2HIB Hib
match BOA2HIB Theren
match BOA2HIB Elbai
match BOA2HIB Lang
match BOA2HIB Rossm
match BOA2HIB Riverh
match BOA2HIB Haven
match BOA2HIB Kaerna
match BOA2HIB Crossing
match BOA2HIB Leth
match BOA2HIB Shard
match BOA2HIB Tomma
match BOA2HIB Ileya
match BOA2HIB Ain
match BOA2HIB Raven
match end Boar
matchwait


P5Guild:
if_1 goto GUI2BOA
pause
echo type ok boss to head to boarclan bridge and all points beyond
match GUI2BOA ok boss
matchwait


Monastery:
if_1 goto MON2BOA
pause
echo choose boar or Canopied TRAIL boss
match MON2BOA boar
match MON2CAN trail
matchwait


CanopiedTrail:
if_1 goto CAN2MON
pause
echo choose gargs or monastary boss
match CAN2GAR garg
match CAN2MON south
matchwait


marbledgargs:
if_1 goto GAR2CAN
pause
echo type ok boss to head back south
match GAR2CAN ok boss
matchwait

HAG:
if_1 goto WIDOW2HAG


#**********************     AESRY     **********************

ABank:
if_1 goto banke
echo choose Cliff, Tanners, or Fork boss
match BAN2CLI cliff
match BAN2TAN tanners
match BAN2FOR fork
matchwait
aBane:
pause
put echo %1
match BAN2CLI orbs
match BAN2CLI Cliff
match BAN2FOR Riverhaven
match BAN2FOR Crossings
match BAN2FOR Theren
match BAN2FOR Shard
match BAN2FOR Shore
match BAN2FOR Fissure
match BAN2FOR Cave
match END bank
match END Aesry
matchwait


FORK:
if_1 goto FORKE
echo choose bank, fissure, or shore boss
match FOR2BAN bank
match FOR2FIS fissure
match FOR2SHO shore
matchwait
FORKE:
pause
put echo %1
match FOR2BAN Aesry
match FOR2BAN bank
match FOR2BAN orbs
match FOR2FIS fissure
match FOR2SHO shore
match FOR2SHO cave
match FOR2SHO Riverhaven
match FOR2SHO Crossings
match FOR2SHO Shard
match FOR2SHO Theren
matchwait


Fissure:
if_1 goto fisse
echo hit ok boss to return to Fork
waitfor ok boss
goto FIS2FOR
Fisse:
pause
put echo %1
match FIS2FOR cave
match FIS2FOR bank
match FIS2FOR orbs
match FIS2FOR shore
match FIS2FOR Riverhaven
match FIS2FOR Crossings
match FIS2FOR Shard
match FIS2FOR Theren
match END fissure
matchwait


Shore:
if_1 goto ashore
echo choose cave or fork boss
match SHO2CAV cave
match SHO2FOR fork
matchwait
ashore:
pause
put echo %1
match SHO2FOR Aesry
match SHO2FOR bank
match SHO2FOR cliff
match SHO2FOR orbs
match SHO2CAV cave
match SHO2FOR fissure
match end riverhaven
match end crossings
match end theren
match end shard
match end shore
matchwait


Cave:
if_1 goto cavee
echo hit ok boss to return to shore
waitfor ok boss
goto CAV2SHO
cavee:
pause
put echo %1
match CAV2SHO bank
match CAV2SHO cliff
match CAV2SHO orbs
match CAV2SHO fissure
match CAV2SHO shore
match CAV2SHO riverhaven
match CAV2SHO crossings
match CAV2SHO theren
match CAV2SHO shard
match end cave
matchwait


Cliff:
if_1 goto cliffe
echo choose bank or orbs boss
match CLI2BAN bank
match CLI2ORB orbs
matchwait
cliffe:
pause
put echo %1
match CLI2ORB orbs
match CLI2BAN bank
match CLI2BAN fissure
match CLI2BAN cave
match CLI2BAN shore
match CLI2BAN Riverhaven
match CLI2BAN Crossings
match CLI2BAN Theren
match CLI2BAN Shard
match end cliff
matchwait


Morgue:
if_1 goto morguee
echo enter ok boss to go to bank
waitfor ok boss
goto MOR2BAN
morguee:
pause
put echo %1
match MOR2BAN cliff
match MOR2BAN orb
match MOR2BAN fissure
match MOR2BAN shore
match MOR2BAN cave
matchwait


Orbs:
if_1 goto orbse
echo enter ok boss to head back to bank
waitfor ok boss
goto ORB2CLI
orbse:
pause
put echo %1
match ORB2CLI bank
match ORB2CLI fissure
match ORB2CLI fork
match ORB2CLI cave
match ORB2CLI shore
match ORB2CLI riverhaven
match ORB2CLI crossings
match ORB2CLI shard
match end orbs
matchwait

#**********************    Mriss     **********************


Galley:
echo hurry up and wait boss
goto Gal2doc


Mdock:
if_1 goto Mdocke
echo choose Kresh or Mriss boss
match doc2bri Mriss
match doc2gal Kresh
matchwait
Mdocke:
pause
put echo %1
match doc2bri gem
match doc2doc furrier
match doc2bri Mriss
match doc2gal Kresh
match doc2gal Hara
match doc2gal Aesry
match doc2gal Ratha
match doc2gal Theren
match doc2gal Langen
match doc2gal Rossman
match doc2gal Haven
match doc2gal Crossing
match doc2gal Leth
match doc2gal Shard
matchwait


MBridge:
if_1 goto Mbride
echo choose Dock, Cypress, Ditch, or Junction boss
match bri2doc dock
match bri2jun junct
match bri2cyp cypress
match bri2dit ditch
matchwait
Mbride:
pause
put echo %1
match end Mriss
match bri2jun gem
match bri2doc furrier
match bri2doc Kresh
match bri2doc Hara
match bri2doc Aesry
match bri2doc Ratha
match bri2doc Theren
match bri2doc Langen
match bri2doc Rossman
match bri2doc Haven
match bri2doc Crossing
match bri2doc Leth
match bri2doc Shard
matchwait


Junction:
if_1 goto juncte
echo choose gems, ditch, or bridge boss
match jun2gem gem
match jun2dit ditch
match jun2bri bridge
matchwait
Juncte:
pause
put echo %1
match jun2gem gem
match jun2bri furrier
match jun2bri Kresh
match jun2bri Hara
match jun2bri Aesry
match jun2bri Ratha
match jun2bri Theren
match jun2bri Langen
match jun2bri Rossman
match jun2bri Haven
match jun2bri Crossing
match jun2bri Leth
match jun2bri Shard
matchwait


MGem:
echo enter ok boss to goto Junction
waitfor ok boss
goto gem2jun


Oasis:
echo enter ok boss to head to the Ditch boss
waitfor ok boss
goto oas2dit


Ditch:
echo choose Oasis, Junction or Bridge boss 
match dit2oas oasis
match dit2bri bridge
match dit2jun juncti
matchwait


Cypress:
if_1 goto cypree
echo choose shelter, altar, junction, dock or bridge boss
match cyp2isl shelter
match cyp2alt altar
match cyp2bri bridge
match cyp2bri junction
match cyp2bri dock
matchwait
cypree:
pause
put echo %1
match cyp2bri gems
match cyp2bri furrier
match cyp2bri kresh
match cyp2bri hara
match cyp2bri aesry
match cyp2bri ratha
match cyp2bri theren
match cyp2bri Lang
match cyp2bri Rossman
match cyp2bri Haven
match cyp2bri Crossing
match cyp2bri Leth
match cyp2bri Shard
matchwait


Shelter:
echo enter ok boss to head to cypress
waitfor ok boss
goto isl2cyp


Maltar:
echo enter ok boss to head to cypress
waitfor ok boss
goto Alt2cyp



# **********************   Kresh     **********************

kDock:
if_1 goto kdocke
echo choose Hara, Mriss, Bank, Furrier or Empath boss
match doc2wha hara
match doc2gal mriss
match doc2ban bank
match doc2fur furrier
match doc2emp empath
matchwait
kdocke:
pause 
put echo %1
match doc2gal mriss
match doc2gal gem
match doc2fur furrier
match doc2wha hara
match doc2wha aesry
match doc2wha ratha
match doc2wha theren
match doc2wha langen
match doc2wha rossman
match doc2wha haven
match doc2wha crossing
match doc2wha leth
match doc2wha shard
matchwait


Empath:
echo enter ok boss to head towards dock to M'riss
waitfor ok boss
goto emp2doc


Furrier:
echo enter ok boss to head to Bank
waitfor ok boss
goto fur2ban


kBank:
if_1 goto kbanke
echo choose Mamas, furrier, Hara or Mriss boss
match ban2wha hara
match ban2doc mriss
match ban2mam mamas
match ban2fur furri
matchwait
kbanke:
pause
put echo %1
match ban2doc gem
match ban2doc mriss
match ban2fur furrier
match ban2wha hara
match ban2wha aesry
match ban2wha ratha
match ban2wha theren
match ban2wha langen
match ban2wha rossman
match ban2wha haven
match ban2wha crossing
match ban2wha leth
match ban2wha shard
matchwait


Mamas:
echo enter ok boss to head to bank
waitfor ok boss
goto mam2ban


MWharf:
if_1 goto mwhare
echo choose Hara, Mriss or Bank boss
match wha2jol hara
match wha2doc mriss
match wha2ban bank
matchwait
mwhare:
pause
put echo %1
match wha2doc gem
match wha2doc mriss
match wha2ban furrier
match wha2jol hara
match wha2jol aesry
match wha2jol ratha
match wha2jol theren
match wha2jol langen
match wha2jol rossman
match wha2jol haven
match wha2jol crossing
match wha2jol leth
match gojolas shard
matchwait

#**********************  Hara'jaal  **********************

HDock:
if_1 goto hdocke
echo choose Kresh, or Bank or Hovel boss
match gojolas kresh
match doc2hba bank
match doc2hov hovel
matchwait
hdocke:
pause
put echo %1
match gojolas mriss
match gojolas kresh
match doc2hov hara
match doc2hov theren
match doc2hov langen
match doc2hov rossman
match doc2hov haven
match doc2hov crossing
match doc2hov leth
match doc2hov shard
matchwait



Hbank:
echo choose dock or hovel boss
match hba2doc dock
match ban2hov hovel
matchwait



Hovel:
if_1 goto hovele
echo choose maze sedge bank or dock boss
match hov2maz maze
match hov2ban bank
match hov2sed sedge
match hov2doc dock
matchwait
hovele:
pause
put echo %1
match end hara
match hov2doc kresh
match hov2doc mriss
match hov2maz aesry
match hov2maz ratha
match hov2maz theren
match hov2maz langen
match hov2maz rossman
match hov2maz haven
match hov2maz crossing
match hov2maz leth
match hov2maz shard
matchwait



Sedge:
echo enter ok boss to head to hovel
waitfor ok boss
goto sed2hov



Maze:
if_1 goto mazee
echo choose Beach or Hovel boss
match maz2bea beach
match maz2hov hovel
matchwait
mazee:
pause
put echo %1
match maz2hov hara
match maz2hov mriss
match maz2hov kresh
match maz2bea aesry
match maz2bea ratha
match maz2bea theren
match maz2bea lagnen
match maz2bea rossman
match maz2bea haven
match maz2bea crossing
match maz2bea leth
match maz2bea shard
matchwait

hBeach:
if_1 goto beache
echo choose maze or Ratha boss
match bea2maz maze
match bea2tas Ratha
matchwait
beache:
pause
put echo %1
match bea2tas ratha
match bea2tas aesry 
match bea2tas theren
match bea2tas langen
match bea2tas rossman
match bea2tas haven
match bea2tas crossing
match bea2tas leth
match bea2tas shard
match bea2maz hara
match bea2maz mriss
match bea2maz kresh
matchwait

#**********************   Boats     **********************


MYBOAT:
pause
if_1 goto MYBOAE
pause
echo ok boss Crosing or leth
match SAIL2CRO Cross
match SAIL2LET Leth
matchwait
MYBOAE:
pause
put echo %1
match END boat
match SAIL2CRO Musp
match SAIL2CRO Hava
match SAIL2CRO Forn
match SAIL2CRO Theren
match SAIL2CRO Elbai
match SAIL2CRO Lang
match SAIL2CRO Rossm
match SAIL2CRO Riverh
match SAIL2CRO Haven
match SAIL2CRO Kaerna
match SAIL2CRO Crossing
match SAIL2LET Leth
match SAIL2LET Shard
match SAIL2LET Tomma
match SAIL2LET Ileya
match SAIL2LET Ain
match SAIL2LET Hib
match SAIL2LET Raven
match SAIL2LET Boar
matchwait


#myb2thr Throne City
#myb2riv	Riverhaven
#myb2art	Arth Dale
#myb2cro Crossing
#myb2tig	Tiger Clan
#myb2Alf	Alfren's Tollbridge
#myb2let Acenamacra
#myb2Ain Ain Ghazal
#myb2rat	Ratha
#myb2aes	Aesry
#myb2har	Hara'jaal
#myb2mer Mer'Kresh




#afloat in the Port of Ratha facing north and is moored to the main docks.]
#moored to The Crossing docks
#at Alfren's Tollbridge.]



Jolas:
if_1 goto jolase
echo choose hara or kresh
match jol2end kresh
match jol2doc hara
matchwait
jolase:
pause 
put echo %1
match jol2end kresh
match jol2end mriss
match jol2doc hara
match jol2doc aesry
match jol2doc ratha
match jol2doc theren
match jol2doc langen
match jol2doc rossman
match jol2doc haven
match jol2doc crossing
match jol2doc leth
match jol2doc shard
matchwait 

tsia:
echo ok boss aint got this done sorry
goto end


#************************************************************


MUS2SAN:
move go gate
move go ramp
put go barge
match W4Barge you referring to?
match W4Barge What were you referring to?
match W4Barge You can't do that right now.
match SandBarge One of the barge's crew members 
matchwait


W4Barge:
pause 
put hide
waitfor sand barge pulls into the dock.
put go barge
pause
goto start


SAN2MUS:
echo ok boss goin to inside Muspari gate
waitfor The sand barge pulls into dock 
move go platform
move go ramp
move go gate
goto start


SAN2HVA:
echo ok boss goin to just inside the Hvaral gate
waitfor The sand barge pulls into dock
move go dock
move e
move go ramp
move se
move ne
move e
move n
move e
goto start


HVA2SAN:
echo ok boss goin to the sand barge 
move w
move s
move w
move sw
move nw
move go ramp
move w
put go barge
match W4Barge I could not find what
match W4Barge What were you referring to?
match W4Barge You can't do that right now.
match SandBarge One of the barge's crew members 
matchwait


HVA2FOR:
echo headin to gate at Fornstead boss
move go gate
move e
move d
move e
move ne
move ne
move n
move n
move n
move ne
move se
move se
move s
move s
move s
move se
move se
move se
move ne
move n
move n
move n
move n
move ne
move ne
move e
move se
move se
move s
move s
move s
move s
move se
move se
move ne
move ne
move n
move n
move n
move ne
move ne
move e
move go cause
move go gate
move e
move go door
move e
goto start


FOR2LAK:
echo headin for the lake in marauders boss
move go gate
move go bri
move e
move e
move d
move climb path
move se
move s
move sw
move sw
move d
move d
move d
move d
move d
move climb path
move s
move se
move s
move s
move se
move e
move e
move ne
move go lake
goto start


FOR2HVA:
echo runnin to the gate in Hvaral boss
move w
move go door
move w
put get pass
pause
move go gate
put stow r
pause
move w
move w
move sw
move sw
move s
move s
move s
move sw
move sw
move nw
move nw
move n
move n
move n
move n
move nw
move nw
move w
move sw
move sw
move s
move s
move s
move s
move sw
move nw
move nw
move nw
move n
move n
move n
move nw
move nw
move sw
move s
move s
move s
move sw
move sw
move w
move up
move w
move go gate
goto start


FOR2THE:
echo headin to the gate at Theren boss
move go gate
move go bri
move e
move e
move d
move climb path
move se
move s
move sw
move sw
move d
move d
move d
move d
move d
move climb path
move s
move se
move s
move s
move se
ON2THE:
move se
move sw
move s
move w
move s
move sw
move se
move sw
move sw
move s
move sw
move se
move s
move se
move s
move e
pause 64
move go wall
goto start


LAK2FOR:
echo ok boss headin to Fornsted
move out
move sw
move w
move w
goto ON2FOR


LAK2THE:
echo ok boss headin to just outside Theren gate
move out
move sw
move w
move w
goto ON2THE


THE2FOR:
echo Heading for Fornsted gate boss
move go wall
move w
pause 84
move n
move nw
move n
move nw
move ne
move n
move ne
move ne
move nw
move ne
move n
move go road
move n
move ne
move nw
ON2FOR:
move nw
move n
move n
move nw
move n
move climb path
move up
move up
move up
move up
move up
move ne
move ne
move n
move nw
move climb path
move climb ramp
move go bri
move w
move w
move go gate
goto start


THE2LAN:
echo goin to the Langenfirth gathering spot boss
move s
move se
move sw
move sw
move s
move s
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move go bri
move s
move s
move go shore
move s
move s
move s
move sw
move w
move w
move sw
move sw
move s
move s
move s
move s
move s
move e
goto start


THE2ROS:
echo goin to the marker near rossmans boss
move s
move se
move sw
move sw
move s
move s
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move n
goto ON2ROS


THE2LAK:
echo Heading for Fornsted gate boss
move go wall
move w
pause 84
move n
move nw
move n
move nw
move ne
move n
move ne
move ne
move nw
move ne
move n
move go road
move n
move ne
move nw
move e
move e
move ne
move go lake
goto start


THE2ELB:
echo goin to Elbains boss
move s
move se
move sw
move sw
move s
move s
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move n
move nw
move n
move nw
move ne
move nw
move n
move n
move ne
move nw
move e
move go path
goto start


ELB2LAN:
echo ok boss headin to the bin in langenfirth
move go road
move w
move se
move sw
move s
move s
move se
move sw
move se
move s
move se
move s
move go bri
move s
move s
move go shore
move s
move s
move s
move sw
move w
move w
move sw
move sw
move s
move s
move s
move s
move s
move e
goto start


ELB2THE:
echo ok boss headin to just outside Theren gate
move go road
move w
move se
move sw
move s
move s
move se
move sw
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move n
goto start


ELB2ROS:
move go road
move w
move se
move sw
move s
move s
move se
move sw
move se
move s
move se
ON2ROS:
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move ne
move e
put scout trail
pause
move go trail
waitfor Obvious paths
goto start

Lan2Hag:
move w
move w
move w
move w
move nw
move w
move nw
move nw
move w
move w
move sw
move w
move w
move sw
move w
move w
move nw
move w
move w
move w
move sw
move nw
move nw
move w
move w
move w
move w
move sw
move w
move w
move sw
move w
move w
echo Clay Soldiers and Mages off this path
pause 3
move nw
move nw
move sw
move nw
move w
move sw
move sw
move w
move w
move sw
move w
move nw
move nw
move sw
move sw
move w
move w
move w
move nw
move w
move w
move sw
echo Good Deer Hunting over that fence, Boss
pause 3
move sw
move w
move nw
move nw
move w
move w
move w
move w
move sw
echo This is where Rakash go for favors
pause 3
move nw
move nw
move nw
move n
move nw
echo we're here boss
goto Start


HAG2LAN:
move se
move s
move s
move se
move se
move se
move ne
move e
move e
move e
move e
move se
move se
move e
move ne
move ne
move e
move e
move se
move e
move e
move e
move ne
move ne
move se
move se
move e
move ne
move e
move e
move ne
move ne
move e
move se
move se
move e
move e
move ne
move e
move e
move ne
move e
move e
move e
move e
move se
move se
move ne
move e
move e
move e
move se
move e
move e
move ne
move e
move e
move ne
move e
move e
move se
move se
move e
move se
move e
move e
move e
move e
move e
goto Start

HAG2WIDOW:
put scout trail
pause
put go trail
waitfor Obvious Path
goto Start

WIDOW2HAG
put scout trail
pause
put go trail
waitfor Obvious Path
goto Start
 


LAN2ELB:
echo goin to the picnic table boss
move w
move n
move n
move n
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move n
move go bri
move n
move n
move go shore
move n
move nw
move n
move nw
move ne
move nw
move n
move n
move ne
move nw
move e
move go path
goto start


LAN2THE:
echo goin to the gate at Theren boss
move w
move n
move n
move n
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move n
move go bri
move n
move n
move go shore
move n
move nw
move n
move nw
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move n
goto start


LAN2ROS:
echo goin to marker near Rossmans boss
move w
move n
move n
move n
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move n
move go bri
move n
move n
move go shore
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move ne
move e
put scout trail
pause
move go trail
waitfor Obvious paths
goto start


ROS2THE:
echo goin to the Theren gate boss
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move nw
move n
move nw
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move n
goto start


ROS2LAN:
echo goin to the Langenfirth gatherin spot boss
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move s
move go bri
move s
move s
move go shore
move s
move s
move s
move sw
move w
move w
move sw
move sw
move s
move s
move s
move s
move s
move e
goto start


ROS2HAV:
echo to Center of Riverhaven at temple boss
move s
move se
move s
move go river
put whisper group ok if we get seperated swim soutwestish I'll not leave ya behind
match group1 You whisper to
match alone1 You have no group
matchwait
group1:
move w
pause 
pause
move sw
pause 
pause
move sw
pause 
pause
move w
pause 
pause 3
move go bank
put whisper group ok should be in Haven in mere moments
match on2hav You whisper to
match oops You have no group
matchwait
oops:
echo ok boss pause this and go get em, come back here with em and enter ok boss
waitfor ok boss
goto on2hav
alone1:
move w
pause 
move sw
pause 
move sw
pause 
move w
pause 
move go bank


on2hav:
move sw
move s
move se
move s
move s
move s
put search outcro
pause
move climb hand
move climb hand
move sw
move se
put scout trail
pause
put look trail
pause
move go trail
waitfor Obvious paths
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
goto start


ROS2WAR:
move ne
move go thick
move e
move ne
move nw
move n
move go gate
goto start


ROS2ELB:
echo goin to the table at Elbains boss
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move nw
move n
move nw
move ne
move nw
move n
move n
move ne
move nw
move e
move go path
goto start


WAR2ROS:
move go gate
move go thick
move e
move s
move n
move go forest
move sw
goto start


HAV2ROS:
echo goin to the marker near Rossmans boss
move w
move w
move w
move w
move w
move w
move w
put go gate
move nw
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
put search out
pause
move climb hand
move climb wall
move n
put search ledg
pause
move climb shrub
path:
match n need to head north.
match ne need to head northeast.
match nw need to head northwest.
match se need to head southeast.
match sw need to head southwest.
match e need to head east.
match w need to head west.
put peer path
matchwait
n:
move down
move n
goto float
ne:
move down
move ne
goto float
nw:
move down
move nw
goto float
e:
move down
move e
goto float
se:
move down
move se
goto float
sw:
move down
move sw
goto float
w:
move down
move w
goto float
float:
pause
put whisper group ok if we get seperated head northish go bank
match group You whisper to
match alone You have no group
matchwait
group:
pause 14
put nw
pause
move n
move nw
move n
move ne
move go riv
put ok boss on yer own here haul em to the marker grab em and restart
goto end
alone:
put nw
pause
move n
move nw
move n
move ne
move go riv
move e
pause
move ne
pause
move ne
pause
move e
pause
move go ramp
move go path
move nw
move n
goto start


HAV2BRI:
echo heading to the south side of river near crocs boss
move e
move e
move e
move e
move e
move e
move e
move go gate
move dive river
south:
put swim south
match southw ...wait
match south You swim 
match southwest You can't swim in that direction.
matchwait
southw:
pause
goto south
southwest:
pause 
put swim sw
match southwest ...wait
match southeast You swim 
matchwait
southeast:
pause 
put swim se
match southeast ...wait
match south1 You swim 
matchwait
south1:
put swim s
match south1w ...wait
match south1 You swim 
match climb2 You can't swim in that direction.
matchwait
south1w:
pause
goto south1
climb2:
move climb bridge
move se
goto start


HAV2ALT:
echo ok boss heading to the Altar in the swamps stay alert
move e
move e
move e
move e
move e
move e
move e
move go gate
move ne
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move nw
move e
move s
move go trail
waitfor Obvious paths
put look ghost
pause 3
move e
move e
move n
move ne
move go path
echo ok boss find the tree then enter ok boss
echo it's generally on the eastern side of this place
waitfor ok boss
move climb tree
move e
move d
move se
move s
move se
move sw
move e
move ne
move n
move sw
move n
goto start


ALT2HAV:
echo ok boss headin back to Haven
pause
move s
move ne
move s
move sw
move w
move ne
move nw
move n
move nw
move climb tree
move w
move d
echo ok find the path then enter ok boss to continue
echo ok boss the path is generally on the western side of this mess
waitfor ok boss
move go path
move nw
move n
move go brush
move nw
move e
move nw
move n
move ne
move n
move go trail
waitfor Obvious paths
move s
move s
move sw
move s
move sw
move sw
move s
move sw
move go gate
move w
move w
move w
move w
move w
move w
move w
goto start


ALT2HEL:
echo goin into the nasty part with beasts and basilisks boss stay alert
pause
put touch altar
put pray
pause 4
nextroom
nextroom
put stand
pause
move se
move go crack
move u
move n
move nw
move ne
move nw
move n
move nw
move n
move s
goto start


HEL2ALT:
echo ok boss headin to the Altar stay alert
pause
move n
move sw
move e
move se
move s 
move s 
move s 
move s
move sw 
move go tunn
move go crack
move nw
move u
move u
move u
goto start


BRI2HAV:
echo heading to center of Riverhaven boss
move nw
move dive river
north:
put n
match northw ...wait
match north You swim 
match northwest You can't swim in 
matchwait
northw:
pause
goto north
northwest:
pause
put nw 
match northwest ...wait
match northwest You work against
match northeast You swim 
matchwait
northeast:
pause
put ne
match northeast ...wait
match northeast You work against
match north1 You swim 
matchwait
north1:
put swim n
match north1 ...wait
match north1 You swim 
match climb You can't swim in 
matchwait
morth1w:
pause
goto north1
climb:
move climb bridge
move go gate
move w
move w
move w
move w
move w
move w
move w
goto start


BRI2STR:
echo headin off to the streambed viper/leucs boss
move s
move s
move s
move se
move s
move se
move w
move w
move w
move w
move nw
move nw
move w
move w
move go bri
move w
move w
move w
move w
move w
move nw
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move ne
move go gate
move n
move ne
move go gate
move nw
move nw
move n
move e
move e
move n
move n
move ne
move n
move e
move e
move ne
move go path
goto LookIn


BRI2GUI:
echo headin off to the ranger guild boss
move s
move s
move s
move se
move s
move se
move w
move w
move w
move w
move nw
move nw
move w
move w
move go bri
move w
put scout trail
pause 2
move go trail
waitfor Obvious paths
move w
move sw
move sw
move w
move w
move go copse
move sw
move sw
move w
move sw
move sw
move s
move go arch
move e
move s
move s
move w
move w
move n
move w
move w
move go gate
goto start


BRI2GOS:
echo ok boss headin to the gate of souls
move s
move s
move s
move se
move s
move se 
move e
move e
move e
move e
move e
move e
move e
move e
move e
move se
move s
move s
move go bri
move s
move se
move s
move sw
move sw
move s
move s
move go tun
move s
move s
goto N2GOS


BRI2KAE:
echo headin off to Kaerna at the store boss
move s
move s
move s
move se
move s
move se
move w
move w
move w
move w
move nw
move nw
move w
move w
move go bri
move w
move w
move w
move w
move w
move nw
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move ne
move go gate
move n
move ne
goto start


GOS2BRI:
echo ok boss headin to the bridge up north
move se
move climb chann
move d
move d
move climb embank
move se
move e
move s
move go path
move n
move go tunne
move n
move n
move n
move ne
move ne
move n
move nw
move n
move go bri
move n
move n
move nw
move w
move w
move w
move w
move w
move w
move w
move w
move w
move nw
move n
move nw
move n
move n 
move n
goto start


GOS2GUI:
echo ok boss headin to the guild
move se
move climb chann
move d
move d
move climb embank
move se
move e
move s
move go path
move sw
move go flow
move sw
move sw
move s
move go trail
waitfor Obvious paths
move e
move go trail
waitfor Obvious paths
move se
move s
move s
move s
move go path
move e
move ne
move e
move ne
move w
move nw
move sw
move w
move n
move n
move n
move go path
move w
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move s
move s
move w
move w
move s
move w
move w
move w
move w
move n
move n
move w
move w
move go gate
goto start


STR2GEN:
echo to the geni tree boss
str2gen1:
put go spot
match STR2GEN1 ...wait
match RSpot You are engaged
match SPO2GEN [Wilderness]
match Sspot I could not find
matchwait
RSpot:
put ret
pause
put ret
goto STR2GEN1
Sspot:
put search
pause
pause
goto STR2GEN1
SPO2GEN:
move e
move e
move se
move e
move go dead
move se 
move s 
move se 
move sw 
move sw 
move sw 
move w 
move w 
move w 
move w 
move s 
move se 
GoTrail2:
put go trail
match GoTrail2 ...wait
match RTrail You are engaged
match TRA2GEN closes in behind you
match STrail2 I could not find
matchwait
RTrail:
put ret
pause
put ret
goto GoTrail2
Strail2:
put search
pause
pause
goto GoTrail2
TRA2GEN:
move n 
move ne
move n 
move n 
move climb tree
goto start


STR2GUI:
STR2KAE:
echo runnin to Kaerna and all points south boss
move go trail
waitfor Obvious paths
move n
move n
GoPathO:
pause
put go path
match GoPathO ...wait
match PAT2GUI [Northern Trade Road, Wooded Valley]
match Spath I could not find
matchwait
Spath:
put search
pause
pause
goto GoPathO
PAT2GUI:
move sw
move w
move w
move s
move sw
move s
move s
move w
move w
move s
move se
move se
move go gate
goto start


STR2BRI:
echo runnin to the south bank of the Faldesu by crocs boss
move go trail
waitfor Obvious paths
move n
move n
GoPathO1:
pause
put go path
match GoPathO1 ...wait
match PAT2BRI [Northern Trade Road, Wooded Valley]
match Spath1 I could not find
matchwait
Spath1:
put search
pause
pause
goto GoPathO1
PAT2BRI:
move sw
move w
move w
move s
move sw
move s
move s
move w
move w
move s
move se
move se
move go gate
move sw
move s
move go gate
move sw
move s
move s
move s
move s
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move e
move e
move se
move se
move e
move e
move e
move e
move nw
move n
move nw
move n
move n
move n
goto start


GEN2STR:
echo headin to the streambed boss
move climb gap
move nw
move w
GoTrailO:
put go trail
match GoTrailO ...wait
match RTrailO You are engaged
match TRA2STR closes in behind you
match STrailO I could not find
matchwait
RtrailO:
put ret
pause
put ret
pause
goto GoTrailO
StrailO:
put search
pause
pause
goto GoTrailO
TRA2STR:
move nw
move n
move e
move e
move e
move e
move ne
move ne
move ne
move nw
move n
move nw
move go dead
move w
move nw
move w
move w
move nw
goto start


KAE2STR:
echo ok boss headin to streambed to leucs/vipers
move go gate
move nw
move nw
move n
move e
move e
move n
move n
move ne
move n
move e
move e
move ne
move go path
goto lookin


KAE2GUI:
echo ok boss runnin to the guild
move sw
move s
move go gate
move sw
move s
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move s
move s
move s
move go gate
move w
move w
move s
move s
move w
move w
move s
move w
move w
move w
move w
move n
move n
move w
move w
move go gate
goto start


KAE2BRI:
echo ok boss headin to the bridge 
move sw
move s
move go gate
move sw
move s
move s
move s
move s
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move e
move e
move se
move se
move e
move e
move e
move e
move nw
move n
move nw
move n
move n
move n
goto start


GUI2ART:
echo to Arthe dale boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move n
move n
move n
move ne
move ne
move n
move nw
move nw
move n
move n
move ne
move nw
move n
move n
move e
move d
move d
move go gate
goto start


GUI2DIR:
echo to Dirge boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move n
move n
move n
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move nw
move sw
move w
move n
move n
move n
move go gate
goto start


GUI2STR:
echo to the streambed viper/leuc's boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move n
put scout trail
pause
move go trail
waitfor Obvious paths
move go gate
move n
move ne
move go gate
move nw
move nw
move n
move e
move e
move n
move n
move ne
move n
move e
move e
move ne
move go path
LookIn:
pause
put look
match GoTrail  [Wilderness, Overgrown Path]
match start [Wilderness, Dry Streambed]
matchwait
GoTrail:
put go trail
match GoTrail ...wait
match lookIn closes in behind you
match Strail I could not find
matchwait
Strail:
put search
pause
pause
put go trail
goto LookIn
goto start


GUI2BRI:
echo heading to the south side of river near crocs boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move se
put scout trail
pause
move go trail
waitfor Obvious paths
move e
move e
move e
move e
move e
move go bri
move e
move e
move se
move se
move e
move e
move e
move e
move nw
move n
move nw
move n
move n
move n
goto start


GUI2BAN:
echo runnin to the bank and back boss
move go gate
move e
move e
move s
move s
move e
move e
move s
move s
move s
move s
move s
move s
move se
move go bank
move go wind
echo enter ok boss to head back to guild
echo best to pause script here resume when finished boss
pause 5
waitfor ok boss
move out
move out
BAN2GUI:
move nw
move n
move n
move n
move n
move n
move n
move w
move w
move n
move n
move w
move w
move go gate
goto start


GUI2VAU:
echo runnin to the vault and back boss
move go gate
move e
move e
move s
move s
move e
move e
move s
move s
move s
move s
move s
move s
move go squa
move go door
put 'line?
pause
vault1:
echo enter ok boss to try the arches
pause 
waitfor ok boss
pause
goro:
put go ro arch
match goir using that
match goro ...wait
match goro ahead 1 command.
match pull "Pull the lever
matchwait
goir:
put go ir arch
match gobl using that
match goir ...wait
match goir ahead 1 command.
match pull "Pull the lever
matchwait
gobl:
put go bla arch
match vault1 using that
match gobl ...wait
match gobl ahead 1 command.
match pull "Pull the lever
matchwait
pull:
put pull lev
pause
move go door
put open vault
pause
put rum vault
echo enter ok boss to go back to guild
echo boss best to pause here resume when finished
pause 2
waitfor ok boss
put close vault
pause
move go door
move go arch
move out
move out
move n
move n
move n
move n
move n
move n
move w
move w
move n
move n
move w
move w
move go gate
goto start


GUI2FER:
move go gate
move e
move e
move s
move s
move e
move e
move s
move s
move s
move s
move s
move s
move se
move go bank
move go wind
put with 5 silver
pause
move out
move out
move sw
move go bri
move sw
move w
move w
move w
move w
move sw
move go pier
goto start


BOAT2LE:
put info
match FINDBOAT Wryven
match ON2FERR Encumbrance:
matchwait


FINDBOAT:
move go squa
move ne
move e
move e
move go dock
put go ranger
match FINDBOAT2 You can't do that.
match FINDBOAT2 What were you referring to?
match AFT You climb onto the
matchwait
FINDBOAT2:
move out
move e
move e
move ne
move go bridge
move ne
move e
move s
move s
move s
move cli stair
move down
move go dock
put go ranger
match NOBOAT You can't do that.
match NOBOAT What were you referring to?
match AFT You climb onto the
matchwait


NOBOAT:
move n
move cli stair
move up
move n
move n
move n
move w
move go bank
move go wind
put with 50 bronze
pause
move out
move out
move sw
move go bri
move sw
move w
move w
move w
move w
move sw
move go pier


ON2FERR:
put go ferry
match start requests a transportation fee
match W4SF stuck here until
match W4SF could not find what you
match W4SF just pulled away
match W4SF no ferry here to go
matchwait
W4SF:
pause
put hide
waitfor pulls into the
move go ferry
goto start


BOAT2CRO:
put info
match LET2BOA Wryven
match ON2FERR Encumbrance:
matchwait


LET2BOA:
put go ranger
match ON2FERR You can't do that.
match ON2FERR What were you referring to?
match AFT You climb onto the
matchwait


AFT:
move aft
goto start


SAIL2CRO:
put look
match DOCK2GUI moored to the Landfall dock.]
match CROS2GUI moored to the South End dock.]
match CROS2GUI moored to The Crossing docks on the north bank.]
match SAIL2CRO2 moored to the pier at Alfren's Tollbridge.]
match BOATWAIT is afloat in the Segoltha river
matchwait
SAIL2CRO2:
put command Ushzabum to launch
waitfor calls out, "Cast off!"
put command ushzabum to sail towards dock
pause
put command ushzabum to trim
pause
put command ushzabum to trim
waitfor Sailors quickly tie the
move forw
put go dock
put go crossing
pause
put look
match DOCK2GUI [The Crossing Docks, South End]
match CROS2GUI [The Crossing, Landfall Dock]
matchwait

DOCK2GUI:
move out
move e
move e
move ne
move go bridge
move ne
goto BAN2GUI

CROS2GUI:
move n
move cli stair
move up
move n
move n
move n
move w
goto BAN2GUI


BOATWAIT:
waitfor Sailors quickly tie the
goto start


SAIL2LET:
put look
match SAIL2LET2 moored to the Landfall dock.]
match SAIL2LET2 moored to the South End dock.]
match SAIL2LET2 moored to The Crossing docks on the north bank.]
match MOOREDLET moored to the pier at Alfren's Tollbridge.]
match BOATWAIT is afloat in the Segoltha river
matchwait
SAIL2LET2:
put command Ushzabum to launch
waitfor calls out, "Cast off!"
put command ushzabum to sail towards pier
pause
put command ushzabum to trim
pause
put command ushzabum to trim
waitfor Sailors quickly tie the
MOOREDLET:
move forw
move go route
goto start


GUI2RUI:
echo runnin to the ruins to get orbs boss
move go gate
move e
move e
move s
move s
move w
move w
move go bri
move w
move w
move w
move w
move go gate
move nw
move w
move sw
move sw
move s
move w
move sw
move go path
move sw
move s
move sw
move sw
move se
move up
move up
move nw
move go trail
waitfor Obvious paths
move go arch
move go stone
goto start


GUI2GOS:
echo to gate of souls boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move n
move n
move n
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move e
move sw
move w
move sw
move w
move go road
move n
move n
move n
move nw
move go trail
waitfor Obvious paths
move w
move go trail
waitfor Obvious paths
move n
move ne
move ne
move go flow
move ne
N2GOS:
move go path
move n
move w
move nw
move climb embank
move u
move u
move ne
move nw
goto start


GUI2KAE:
echo to the Kaerna at the store boss
move go gate
move e
move e
move s
move s
move e
move e
move e
move e
move n
move e
move e
move n
move e
move n
move e
move go gate
move n
put scout trail
pause
move go trail
waitfor Obvious paths
move go gate
move n
move ne
goto start


GUI2TIG:
echo runnin to the tiger clan gate and back boss
move go gate
move e
move e
move s
move s
move w
move w
move go bri
move w
move w
move w
move w
move go gate
move go path
move w
move w
move nw
move w
move w
move nw
move w
move w
move sw
move w
move w
move nw
move nw
move w
move go gate
move s
move se
move s
move sw
goto start


GUI2KNI:
echo To Knife clan and back boss
move go gate
move e
move e
move s
move s
move w
move w
move go bri
move w
move w
move w
move w
move go gate
move nw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move n
move go bri
move n
move n
move n
move go cave
goto start


GUI2WOL:
echo To Wolf clan and back boss
move go gate
move e
move e
move s
move s
move w
move w
move go bri
move w
move w
move w
move w
move go gate
move nw
move w
move nw
move nw
move nw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move w
move s
move w
move s
move s
move go building
goto start


wol2gui:
echo ok boss headin back to the guild 
move out
move n
move n
move e
move n
move e
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move ne
move ne
move e
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
move n
move n
move w
move w
move go gate
goto start


tig2gui:
echo ok boss headin back to the guild
move ne
move n
move nw
move n
move go gate
move e
move se
move se
move e
move e
move ne
move e
move e
move se
move e
move e
move se
move e
move e
move go path
move go gate
move e
move e
move e
move e
move e
move e
move e
move n
move n
move w
move w
move go gate
goto start


kni2gui:
echo ok boss headin to the guild
move out
move s
move s
move go bri
move s
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move e
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
move n
move n
move w
move w
move go gate
goto start


TEM2GUI:
echo to the clerics guild boss
move go door
move s
move go gate
move ne
move nw
move n
move n
move n
move n
move n
move n
move w
move w
move n
move n
move n
move n
move go guild
move go ar door
move go build
goto end


RUI2GUI:
echo headin to the ranger guild boss
move e
move go arch
move go trail
waitfor Obvious paths
move se
move d
move d
move nw
move ne
move ne
move n
move ne
move go path
move ne
move e
move n
move ne
move ne
move e
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
move n
move n
move w
move w
move go gate
goto start


ART2GUI:
echo headin to the ranger guild boss
move go gate
move u
move u
move w
move s
move s
move se
move sw
move s
move s
move se
move se
move s
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move s
move s
move w
move w
move s
move w
move w
move w
move w
move n
move n
move w
move w
move go gate
goto start


ART2KAE:
echo headin to the Kaerna at the store boss
move go gate
move u
move u
move w
move nw
move nw
move n
move n
move n
move ne
move ne
move ne
move e
move e
move e
move n
move n
move n
move n
move n
move n
move ne
move go gate
move n
move ne
goto start


ART2DOC:
move go gate
move go road
move se
move se
move se
move e
move e
move ne
move ne
move se
move e
move e
move e
move ne
move se
move ne
move e
move e
move e
move e
move e
goto start


DOC2ART:
move go road
move w
move w
move w
move w
move sw
move nw
move sw
move w
move w
move w
move nw
move sw
move sw
move w
move w
move nw
move nw
move nw
move n
move go gate
goto start


DIR2GUI:
echo headin to the guild boss
move go gate
move go path
move w
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move s
move s
move w
move w
move s
move w
move w
move w
move w
move n
move n
move w
move w
move go gate
goto start

DIR2CRO:
echo sorry boss not done yet
pause 10
goto DIR2CRO

FER2LET:
echo goin to the center of Leth boss
waitfor reaches the dock
move go dock
DOC2LET1:
move s
move s
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move go gate
move se
move se
move se
move se
move se
move se
move se
goto start


FER2GON:
echo goin to the gondola boss
waitfor reaches the dock
move go dock
FER2GON1:
move s
move s
move s
move s
move go path
move go clear
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move s
put whisper group ok now for the boring gondola ride
match expclimb1 You have no group
match 2gond You whisper to
matchwait


W4G:
put look gondola
waitfor silently swings open.
move go gond
goto start


FER2GUI:
echo goin to the guild boss
waitfor reaches the dock
move go dock
DOC2GUI:
move go squa
move ne
move e
move e
move e
move e
move ne
move go bri
move ne
bank2guild:
move nw
move n
move n
move n
move n
move n
move n
move w
move w
move n
move n
move w
move w
move go gate
goto start


LET2IlE:
echo ok boss goin to Ileya Taipa Gate
move sw
move sw
move sw
move sw
move sw
move sw
move sw
move go gate
move sw
move nw
move nw
move n
pause 6
move nw
move n
move sw 
move sw 
move sw 
move sw 
move s 
move s 
move s 
move s 
move se 
move sw 
pause 
pause 
move s 
pause 
pause 
move s 
pause 
pause 
move s 
pause 
pause 
move sw 
move w 
move w 
move s 
move sw 
move sw 
move w 
pause 
pause 
move w 
pause 
pause 
move nw 
move go break 
goto start


LET2MAN:
echo ok boss goin to the manor now
move sw
move sw
move sw
move sw
move sw
move sw
move sw
move go gate
move sw
move s
move sw
move sw
move w
move w
move sw
move sw
move s
move nw
move sw
move w
move sw
move w
move n
move go trail
waitfor Obvious paths
move ne
move climb sink
move sw
move w
move w
move n
move climb fire
goto start


LETGroup:
put whisper group gotta grab some doks for ferry and skiff
match LETgroup1 You whisper to
match LETCLIMB You have no group
matchwait
LETgroup1:
move e
move e
move go dep
move up
echo hit ok boss when everyones ready to exchange
put whisp group ok everyone withdraw 3 silver nod when ya got it
put with 3 silver
waitfor ok boss
move up
echo hit ok boss when everyones exchanged
put whisp group ok exchange 3 silver k for d nod when ya done
put exch 3 silver k for d
waitfor ok boss
move down
move down
move out
move w
move w
goto LET2ILE


LETCLIMB:
put echo %1
match letdok ileya
match letclimb1 Ain
match letclimb1 Hib
match letclimb1 Raven
match letclimb1 Boar
matchwait

letclimb1:
put exp rp skill athletic
match LETDOK Practitioner
match LETDOK Dilettante
match LETDOK Aficionado
match LETDOK Adept
match LETDOK expert
match LETDOK Climbing: professional 
match LET2GON exceptional professional 
match LET2GON outstanding professional 
match LET2GON renowned professional
match LET2GON true professional  
match LET2GON  Climbing: authority
match LET2GON authority
match LET2GON genius
match LET2GON savant
match LET2GON master
match LET2GON grandmaster
matchwait


LETDOK:
move e
move e
move go Depos
move up
put with 3 silver
wait
move up
put exch 3 silver k for d
wait
move d
move d
move out
move w
move w
goto LET2ILE


LET2GON:
echo goin to the gondola boss
move nw
move nw
move nw
move nw
move nw
move nw
move nw
move go gate
move nw
move n
move n
move sw
move sw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
pause
put whisper group ok now for the boring gondola ride
match expclimb1 You have no group
match 2gond You whisper to
matchwait


expclimb1:
put exp rp skill athletic
match 2gond Practitioner
match 2gond Dilettante
match 2gond Aficionado
match 2gond Adept
match 2gond expert
match 2gond Climbing: professional 
match 2gondspc exceptional professional
match 2gondspc outstanding professional 
match 2gondspc renowned professional
match 2gondspc true professional  
match 2gondspc Climbing: authority
match 2gondnuts authority
match 2gondnuts genius
match 2gondnuts savant
match 2gondnuts master
match 2gondnuts grandmaster
matchwait


2gondspc:
move n
put prep spc
put harn 15
pause
pause
put harn 15
pause
pause
put harn 15
pause
pause
put harn 15
pause
pause
put cast
pause
pause
2gondnuts:
put ret
put ret
pause
put n
echo just a few seconds and over the branch boss
pause 5
put ret
put ret
pause
move climb branch
move climb niche
move climb ledge
move climb wall
move u
move n
move ne
move climb embank
move climb log
move s
move s
move sw
move s
move sw
move sw
move go cleft
goto start


2gond:
move climb plat
put go gond
match start [Gondola, Cab
match W4G is no wooden gondola
matchwait


tra2let:
move s
move s
move se
move go gate
move se
move se
move se
move se
move se
move se
move se
goto start


LET2FER:
echo goin to the ferry towards crossings boss
move nw
move nw
move nw
move nw
move nw
move nw
move nw
move go gate
move nw
move n
move n
tra2cro:
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move n
goto start


LET2DOC:
echo ok boss headin to the docks
move ne
move ne
move ne
move ne
move ne
move ne
move ne
move go gate
move ne
move e
move ne
move se
move ne
move ne
move go tun
move go eastern opening
move ne
move e
move ne
move n
move ne
move ne
move e
move go bridge
move go north face
move e
move go crev
move e
move ne
move go open
move n
move ne
move e
move ne
move ne
move ne
move e
move ne
move ne
move ne
move ne
move ne
move ne
move e
move down
move down
move down
move down
move e
move e
move e
move go pier
goto start


DOC2LET:
echo ok boss headin to back to Leth
move go beach
move w
move w
move w
move go trail
waitfor Obvious paths
move up
move up
move up
move w
move sw
move sw
move sw
move sw
move sw
move sw
move w
move sw
move sw
move sw
move w
move sw
move s
move go cave
move sw
move w
move go open
move w
move go bri
move go south face
move w
move sw
move sw
move s
move sw
move w
move sw
move go tun
move go western opening
move sw
move sw
move nw
move sw
move w
move sw
move sw
move sw
move sw
move sw
move sw
move sw
move sw
move sw
goto start


MAN2LET:
echo ok boss back to center of Leth
move climb hole
move s
move e
move e
move ne
move climb slope
move sw
move go trail
waitfor Obvious paths
move s
move e
move ne
move e
move ne
move se
move n
move ne
move ne
move e
move e
move ne
move ne
move n
move ne
move go gate
move ne
move ne
move ne
move ne
move ne
move ne
move ne
goto start


NPL2SHA:
pause
put go gond
match start [Gondola, Cab
match W4G is no wooden gondola
matchwait


NPL2LET:
goto ON2LET


GON2LET:
echo goin to center of Leth boss and why didn't ya go the quick route under the gondola from the crossroads?
put n
pause
put hide
waitfor to a stop at its destination.
move out
ON2LET:
move go rid
move n
move ne
move nw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move s
move s
move se
move go gate
move se
move se
move se
move se
move se
move se
move se
goto start


GON2FER:
echo goin to the ferry to Crossings boss and why didn't ya go the quick route under the gondola from the crossroads?
put n
pause
put hide
waitfor to a stop at its destination.
move out
move go rid
move n
move ne
move nw
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move n
move n
move n
move n
put go ferry
match start requests a transportation fee
match W4SF stuck here until
match W4SF could not find what you
match W4SF just pulled away
match W4SF no ferry here to go
matchwait


GON2CRO:
echo to crossroads north of Shard boss
put s
pause
put hide
waitfor to a stop at its destination.
echo to the Crossroads boss
move out
goto SPL2CRO


spl2cro2:
move go frame
move go door
move sw
move s
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
goto start


SPL2GAR:
echo ok boss headin behind waterfall in gargs
move go frame
move go door
move sw
move s
move go trail
waitfor Obvious paths
move ne
move nw
move n
move ne
move w
move w
move go crev
goto start


SPL2CRO:
goto spl2cro2


SPL2LET:
pause
put go gond
match start [Gondola, Cab
match W4G is no wooden gondola
matchwait


UG2Leth:
echo ok boss goin to leth via undergondola
move go wood
move ne
move ne
move n
move ne
move n
move n
move climb log
put whisper group ok go gap as soon as I do, you will get a stun and a slight head bleeder
match expclimb You have no group
match 2letheasy You whisper to
matchwait


expclimb:
put exp rp skill athletic
match 2letheasy Practitioner
match 2letheasy Dilettante
match 2letheasy Aficionado
match 2letheasy Adept
match 2letheasy expert
match 2letheasy Climbing: professional 
match 2lethhard exceptional professional 
match 2lethhard outstanding professional 
match 2lethhard renowned professional
match 2lethhard true professional  
match 2lethhard  Climbing: authority
match 2lethnuts authority
match 2lethnuts genius
match 2lethnuts savant
match 2lethnuts master
match 2lethnuts grandmaster
matchwait


2lethhard:
put prep Athletic 10
put harn 15
pause
pause
put harn 15
pause
pause
put harn 15
pause
pause
put harn 15
waitfor You feel fully prepared
pause
put cast
pause
pause
put ret
put ret
pause
2lethnuts:
move climb embank
move sw
move s
move d
move climb wall
move climb ledge
move climb niche
move climb branch
move ne
move nw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
put echo %1
match tra2let Leth
match tra2cro crossing
match tra2cro kaerna
match tra2cro haven
match tra2cro rossman
match tra2cro muspa
match tra2cro hvara
match tra2cro forns
match tra2cro lang
matchwait


2letheasy:
move e
move climb shelf
move n
move climb ramp
move e
move climb step
move n
move go gap
waitfor You are stunned!
stand:
pause 10
put stand
match stand You are still stunned.
match stand  cannot manage to stand.
match TOLeth You stand back up.
matchwait
TOLeth:
put whisp group ok not much longer
match go You have no group
match waitforgroup You whisper to
matchwait
waitforgroup:
echo enter ok boss when they are up and joined
waitfor ok boss
go:
put eat nem root
pause
put tend my head
pause
pause
N2LET:
move n
move n
move ne
move ne
move ne
move ne
move ne
move n
move ne
move n
move n
move n
move n
move ne
move ne
move ne
move n
move n
move ne
move ne
move n
move n
move ne
move ne
move n
move ne
move go gate
move ne
move ne
move ne
move ne
move ne
move ne
move ne
goto start


WAT2CRO:
echo headin to the crossroads north of Shard boss
move go crac
move e
move e
move sw
move s
move se
move sw
move go trail
waitfor Obvious paths
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
goto start


CRO2LET:
echo to Leth we go via undergondola boss stay alert
move e
move e
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
move s
move go trail
waitfor Obvious paths
move ne
move nw
move n
move ne
move w
move w
move go crev
echo this is gonna smart and ya will be bleeding and stunned for a bit jest be patient boss
goto UG2Leth


CRO2WAT:
echo runnin up behind the waterfall in gargs boss
move e
move e
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
move s
move go trail
waitfor Obvious paths
move ne
move nw
move n
move ne
move w
move w
move go crev
goto start


CRO2SHO:
echo to the survival shop, tanners area boss
move e
move e
move e
move e
move e
move e
move e
move se
move se
move se
move se
move se
move se
move s
move s
move s
move s
move s
move s
move s
move s
move e
move go gap
move n
move n
move n
move go gate
move nw
move go path
goto start


CRO2ADA:
echo to the adanf safe spot boss
move s
move s
move s
move s
move s
move go gate
move w
move w
move sw
move sw
move sw
move s
move s
move se
move se
move se
move e
move e
move go gate
move s
move s
move s
move s
move s
move s
move s
move go path
move w
goto start


CRO2BAN:
echo to the bank and back boss
move s
move s
move s
move s
move s
move go gate
move w
move w
move sw
move sw
move sw
move s
move e
move e
move e
move e
move go bank
move n
goto start


BAN2CRO:
echo enter OK headin back to Crossroads
move s
move out
move w
move w
move w
move w
move n
move ne
move ne
move ne
move e
move e
move go gate
move n
move n
move n
move n
move n
goto start


BAN2ADA:
echo ok boss goin to Adanf safe spot
move s
move out
move w
move w
move w
move w
move s
move se
move se
move se
move e
move e
move go gate
move s
move s
move s
move s
move s
move s
move s
move go path
move w
goto start


CRO2GUI:
echo to the ranger guild boss
move ne
move nw
move nw
put scout trail
pause
pause 2
move go trail
waitfor Obvious paths
move se
move d
move ne
move s
move s
move se
move go path
move go under
goto start


CRO2GON:
echo runnin to the gondola for some odd reason boss
move e
move e
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move go door
move go frame
goto start


SHO2BAN:
echo to the bank boss
move go path
move se
move go gate
move s
move s
move s
move go gap
move w
move w
move w
move w
move w
move w
move go gate
move n
move nw
move nw
move nw
move w
move w
move w
move w
move sw
move sw
move sw
move s
move e
move e
move e
move e
move go bank
move n
goto start


BAN2SHO:
echo OK BOSS back to survival shop
move s
move out
move w
move w
move w
move w
move n
move ne
move ne
move ne
move e
move e
move e
move e
move se
move se
move se
move s
move go gate
move e
move e
move e
move e
move e
move e
move go gap
move n
move n
move n
move go gate
move nw
move go path
goto start


SHO2MAL:
echo ok boss goin to Malchata watch yerself
move go path
move se
move go gate
move s
move s
move s
move ne
move e
move e
move n
move se
move ne
move se
move e
move e
move e
move ne
move ne
move e
move ne
move climb trail
move n
move e
move nw
move nw
goto start


MAL2SHO:
echo ok boss goin to the survival shop
move sw
move ne
move sw
move s
move climb trail
move sw
move w
move sw
move sw
move w
move w
move w
move nw
move sw
move nw
move s
move w
move w
move sw
move n
move n
move n
move go gate
move nw
move go path
goto start


SHO2CRO:
echo to the crossroads north of Shard boss
move go path
move se
move go gate
move s
move s
move s
move go gap
move w
move n
move n
move n
move n
move n
move n
move n
move n
move nw
move nw
move nw
move nw
move nw
move nw
move w
move w
move w
move w
move w
move w
move w
goto start


SHO2ADA:
echo to the adanf safe spot boss
move go path
move se
move go gate
move s
move s
move s
move go gap
move w
move w
move w
move w
move w
move w
move go gate
move s
move sw
move sw
move sw
move w
move w
move go gate
move s
move s
move s
move s
move s
move s
move s
move go path
move w
goto start
goto start


ADA2SHO:
echo to the survival shop/tanner boss
move e
move go path
move n
move n
move n
move n
move n
move n
move n
move go gate
move e
move e
move ne
move ne
move ne
move n
move go gate
move e
move e
move e
move e
move e
move e
move go gap
move n
move n
move n
move go gate
move nw
move go path
goto start


ADA2SHA:
echo ok boss to the gate at coriks wall
move e
move go path
move se
move sw
move s
move s
move s
move s
move s
move se
move s
move s
move s
move s
move se
move s
move s
pause
pause
move se
move go path
move sw
move s
move s
move sw
move sw
move s
move s
move sw
move sw
move sw
move se
pause
pause
move s
pause
pause
move s
pause
pause
move sw
move w
pause
pause
move w
pause
pause
move sw
move sw
move s
move s
move sw
move go ent
move s
move se
move s
move s
move s
goto start


ADA2DAN:
move nw
move nw
move n
move nw
move sw
move se
move w
move nw
move climb bould
move north
move n
move climb fissure
move climb goug
move climb niche
move w
move sw
move w
move sw
move n
move w
move sw
move sw
move w
move w
move climb wall
move climb wall
move climb wall
move climb wall
move ne
move n
move ne
move n
goto start


DAN2ADA:
move s
move sw
move s
move sw
move cli chasm
move cli ledg
move cli ledg
move cli ledg
move e
move e
move ne
move ne
move e
move s
move ne
move e
move ne
move e
move cli wall
move cli wall
move cli wall
move s
move cli bould
move s
move se
move e
move nw
move ne
move se
move s
move se
move se
goto start


ADA2CRO:
echo to the Crossroads north of Shard boss
move e
move go path
move n
move n
move n
move n
move n
move n
move n
move go gate
move w
move w
move nw
move nw
move nw
move n
move n
move ne
move ne
move ne
move e
move e
move go gate
move n
move n
move n
move n
move n
goto start


ADA2BAN:
echo to the bank boss
move e
move go path
move n
move n
move n
move n
move n
move n
move n
move go gate
move w
move w
move nw
move nw
move nw
move n
move e
move e
move e
move e
move go bank
move n
goto start


SHA2ADA:
echo ok boss headin to Adanf safe spot
move n
move n
move n
move nw
move n
move ne
move ne
move n
move n
move ne
move ne
move e
move e
move ne
move n
move n
move nw
move ne
move ne
move ne
move n
move n
move ne
move ne
move n
move n
move ne
move go path
move nw
move n
move n
move nw
move n
move n
move n
move n
move nw
move n
move n
move n
move n
move n
move ne
move nw
move go path
move w
goto start


SHA2GUI:
echo ok boss to the ranger guild now
move n
move n
move n
move nw
move n
put scout trail
pause
pause
move go trail
waitfor Obvious paths	
move se
move go path
move go under
goto start


GUI2HOR:
echo to the horse clan gates boss
move out
move go path
move nw
move n
move n
move sw
move u
move nw
move ne
move n
move w
move nw
move n
move w
move sw
move climb trail
move nw
move s
move sw
move w
move nw
move w
move w
move w
move sw
move se
move s
move w
move sw
move w
move sw
move w
move sw
move w
move nw
move w
move nw
move w
move nw
move w
move s
move go path
goto start


GUI2VAL:
echo ok boss headin to the valley 
move out
move go path
move nw
move n
move n
move sw
move u
move nw
move ne
move n
move w
move nw
move n
move w
move sw
move climb trail
move nw
move s
move sw
move w
move nw
move w
move nw
move n
move ne
move go west trail
move w
move d
move n
move d
move ne
move n
move nw
move ne
move e
move climb root
move e
move e
move climb stone
goto start


GUI2RAV:
echo ok boss goin to the Gear gate
move out
move go path
move nw
move n
move n
move sw
move u
move nw
move ne
move n
move w
move nw
move n
move se
move e
move nw 
move nw 
move w 
move w 
move nw 
move w 
move nw 
move ne 
move nw 
move w 
move w 
move w 
move nw 
move w 
move n 
pause 
move w 
pause 
move nw 
move nw 
move n 
move n 
move ne 
move ne 
move e 
move e 
move ne 
move ne 
move u 
move ne 
move nw 
move ne 
move nw 
move se 
move s 
move go hole 
put stand 
wait
put turn basin 
match swal2 As you pull down on the stone basin 
match basin You push up on the stone basin 
matchwait 
Basin: 
put turn basin 
SWAL2: 
move go wall 
put turn torch 
wait
move go open 
move e 
move e 
put go road 
move nw 
move nw 
move go bar 
move sw 
move climb gully 
move sw 
move climb rock 
move sw 
move w 
move go shard 
move se 
move sw 
move se 
move sw 
goto start

GUI2CRO:
echo to the Crossroads north of Shard boss
move out
move go path
move nw
move n
move n
move sw
move u
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
goto start

GUI2SHA:
echo to the coriks gate boss
move out
move go path
move nw
move n
move n
move sw
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move sw
move s
goto start

VAL2HOR:
echo ok boss headin to horse clan
move dive strea
move w
move w
move climb root
move w
move sw
move se
move s
move sw
move u
move s
move u
move e
move go trail
waitfor Obvious paths
move sw
move s
move se
move w
move w
move sw
move se
move s
move w
move sw
move w
move sw
move w
move sw
move w
move nw
move w
move nw
move w
move nw
move w
move s
move go path
goto start

VAL2GUI:
echo ok boss headin to the Ranger guild
move dive strea
move w
move w
move climb root
move w
move sw
move se
move s
move sw
move u
move s
move u
move e
move go trail
waitfor Obvious paths
move sw
move s
move se
move e
move se
move e
move ne
move n
move se
move climb bluff
move ne
move e
move s
move se
move e
move s
move sw
move se
move d
move ne
move s
move s
move se
move go path
move go under
goto start

HOR2GUI:
echo to the Ranger guild and all points further boss
move go path
move n
move e
move se
move e
move se
move e
move se
move e
move ne
move e
move ne
move e
move ne
move e
move n
move nw
move ne
move e
move e
move e
move se
move e
move ne
move n
move se
move climb bluff
move ne
move e
move s
move se
move e
move s
move sw
move se
move d
move ne
move s
move s
move se
move go path
move go under
goto start

HOR2VAL:
echo ok boss headin to the valley
move go path
move n
move e
move se
move e
move se
move e
move se
move e
move ne
move e
move ne
move e
move ne
move e
move n
move nw
move ne
move e
move e
move nw
move n
move ne
move go west trail
move w
move d
move n
move d
move ne
move n
move nw
move ne
move e
move climb root
move e
move e
move climb stone
goto start


echo ******************************** FORFEDHAR **************************************




ILE2LET:
echo ok boss goin to center of Leth
move go break 
move se 
move e 
move e 
pause 
pause 
move ne
pause
pause 
move ne 
move n 
move e 
move e 
move ne 
move n 
move n 
pause 
pause 
move n 
pause 
pause 
move ne 
pause 
pause 
move nw 
pause 
pause 
move n 
move n 
move n 
move n 
move ne 
move ne 
move ne 
move ne
move s 
move se
pause 6
move s
move se
move se
move ne
move go gate
move ne
move ne
move ne
move ne
move ne
move ne
move ne
goto start


ILE2SKI:
echo ok boss goin to skiff
move go gate 
move e 
move se 
move e 
move e 
move e 
move e 
move ne 
move ne 
move n 
move n 
move n 
move n 
move n 
move nw 
move nw 
move w 
move nw 
move w 
move sw 
move go door 
goto Start


ON2SKIF:
put go skiff 
match W4Skiff What were you referring to?
match Start [A Highly Polished Skiff]
matchwait

W4Skiff:
pause
put hide
match ON2SKIF quickly secure the skiff 
match ON2SKIF skiff pulls into the dock
match ON2SKIF A deckhand shouts, "Don't delay
matchwait
ON2SKIF:


SKI2ILE:
waitfor quickly secure the skiff
put go dock
SKI2ILE1:
echo ok boss goin to Ileya Tapia gate
move go door 
move ne 
move e 
move se 
move e 
move se 
move se 
move s 
move s 
move s 
move s 
move s 
move sw 
move sw 
move w 
move w 
move w 
move w 
move nw 
move w 
move go gate 
goto start


SKI2FER:
waitfor quickly secure the skiff
put go dock
SKI2FER1:
echo ok boss goin to the ferry towards hib
move w
move sw
pause
pause
move s
goto start


FER2SKI:
waitfor the ferry reaches the dock
put go dock
FER2SKI1:
echo ok boss goin to the skiff towards leth
move n
move ne
pause
pause
move e
goto start

FER2AING:
echo ok boss this aint done yet sorry
pause 10
goto Fer2aing

FER2HIB:
echo ok boss just waitin for it to dock
put hide
waitfor the ferry reaches the dock
put go dock
FER2HIB1:
echo ok boss goin to the west gate of Hibarnhvidar
move w 
move sw 
move sw 
move nw 
move sw 
move sw 
move nw 
move sw 
move go gate 
move sw 
move se 
move sw 
move w 
move s 
move w 
move w 
move w 
move w 
move w 
move go gate 
move go ford 
move nw 
pause 
pause 
move nw 
move nw 
move ne 
move ne 
move w 
move nw 
move nw 
move nw 
move go gate 
move go west gate 
move sw
move sw
move n
move sw
move w
move w
move w
move go gate
move w
move w
move w
move w
move w
move nw
move w
move w
move w
move w
move w
move w
move go gate
goto start


HIB2FER:
echo well boss best make sure ya got doks for the rides couple silver per person hit ok boss to continue
waitfor ok boss
echo ok boss goin to the ferry towards Ain Ghazal, Ileya Tapia and all points east
move go gate
move e 
move e 
move e 
move e 
move e 
move e 
move se 
move e 
move e 
move e 
move e 
move e 
move go gate
move e
move e
move e
move ne 
move s 
move ne 
move ne 
move go gate 
move go east gate 
move se 
move se 
move se 
move e 
move sw 
move sw 
move se 
move se 
move go ford 
move e 
pause 
pause 
move go gate 
move e 
move e 
move e 
move e 
move e 
move n 
move e 
move ne 
move nw 
move ne 
put go gate 
move ne 
move se 
move ne 
move ne 
move se 
move ne 
move ne 
move e 
goto start


HIB2BOA:
echo ok boss goin to boar clan 
move n 
move n 
move n 
move n 
move n 
move n 
move n 
move n 
move nw 
move nw 
move n 
move n 
move n 
move nw 
move nw 
move n 
move n 
move n 
move ne 
move ne 
move n 
move n 
move ne 
move nw 
move n 
move ne 
move n 
move ne 
move ne 
move ne 
move nw 
move nw 
move nw 
move n 
move ne 
move n 
move nw 
move n 
move nw 
move nw 
pause 
pause 
move nw 
pause 
pause 
move nw 
pause 
pause 
move nw 
pause 
pause 
move nw 
move n 
move nw 
move w 
move w 
move w 
move nw 
move w 
move w 
move nw 
move n 
move n 
move n 
move n 
move n 
move n 
move nw 
move nw 
move nw 
move nw 
move nw 
move nw 
move go bridge
goto start


HIB2RAV:
echo ok boss goin to Raven's Point
move go gate 
move e 
move e 
move e 
move e 
move e 
move e 
move se 
move e 
move e
move e 
move e 
move e 
move go gate 
move e 
move e 
move e 
move ne 
move s 
move ne 
move ne 
move go gate 
move go east gate 
move se 
move se 
move se 
move e 
move sw 
move sw 
move se 
move se 
move go ford 
move e 
pause 
pause 
move go gate 
move e 
move e 
move e 
move e 
move e 
move n 
move e 
move ne 
move nw 
move ne 
move go gate 
move ne 
move se 
move go road 
move se 
move se 
move e 
move e 
move e 
move se 
move e 
move ne 
move se 
move e 
move e 
move s 
move se 
move s 
move se 
move sw 
move w 
move w 
move sw 
move nw 
move sw 
move w 
move sw 
move se 
move se 
echo ok boss if ya fall down, stand up and move once on your own
pause
put power
pause 8
move se 
pause
put power
pause 8
move e 
pause
put power
pause 8
move e 
pause
put power
pause 8
move ne 
pause
put power
pause 8
move se 
pause
put power
pause 8
move sw 
pause
put power
pause 8
move sw 
pause
put power
pause 8
move sw 
pause
put power
pause 8
move w 
pause
put power
pause 8
move sw 
pause
put power
pause 8
move sw 
pause
put power
pause 8
move se 
pause
put power
pause 8
move go bridge 
move se 
move e 
move e 
move s 
move se 
move se 
move se 
move se 
move s 
move sw 
move se 
move se 
move sw 
move se 
move sw 
goto start


BOA2GUI:
echo ok boss runnin into the guild here
move nw 
move ne 
move w 
move go gate 
move sw
move w
move n
move nw
move go longhouse
move w
goto start

GUI2BOA:
echo ok boss runnin back to the bridge
move e
move out
move se
move s
move e
move ne
move go gate
move e
move sw
move se
goto start

BOA2HIB:
pause
echo ok boss goin to hibs west gate
move go bridge
move se 
move se 
move se 
move se 
move se 
move se 
move s 
move s 
move s 
move s 
move s 
move s 
move se 
move e 
move e 
move se 
move e 
move e 
move e 
move se 
move s 
move se 
move se 
move se 
pause 
pause 
move se 
pause 
pause 
move se 
pause 
pause 
move se 
pause 
pause 
move s 
move se 
move s 
move sw 
move sw 
move se 
move se 
move se 
move sw 
move sw 
move sw 
move s 
move sw 
move s 
move se 
move sw 
move s 
move s 
move sw 
move sw 
move s 
move s 
move s 
move se 
move se 
move s 
move s 
move s 
move se 
move se 
move s 
move s 
move s 
move s 
move s 
move s 
move s 
move s 
goto start


BOA2MON: 
move go bridge 
move ne 
move ne 
move n 
move n 
move nw 
move w 
move n 
move n 
move n 
move nw 
move nw 
move n 
move n 
move go trail
waitfor Obvious paths 
move n 
move ne 
move n 
move ne 
move nw 
move ne 
move ne 
move n 
move nw 
move ne 
move go trail
waitfor Obvious paths 
move ne 
move e 
move ne 
move ne 
move ne 
move n 
move n 
move nw 
move w 
goto start


MON2BOA:
echo ok boss headin to boar clan
move e 
move se 
move s 
move s 
move sw 
move sw 
move sw 
move w 
move sw
move go trail
waitfor Obvious paths 
move sw 
move se 
move s 
move sw 
move sw 
move se 
move sw 
move s 
move sw 
move s 
move go trail
waitfor Obvious paths 
move s 
move s 
move se 
move se 
move s 
move s 
move s 
move e 
move se 
move s 
move s
move sw 
move sw 
move go bridge
goto start


MON2CAN:
echo ok boss headin north to the canopied trail
move w
move w
move nw
move n
move n
move n
move go trail
waitfor Obvious paths
move nw
move s
move nw
move nw
move ne
move e
move sw
move e
move ne
move nw
move w
move sw
move n
move ne
move ne
move s
move se
move ne
move ne
move go trail
waitfor Obvious paths
move n
move e
put hide
pause
pause
move sneak ne
pause
move sneak s
pause
move sneak se
pause
move sneak e
pause
move sneak ne
pause
move climb ridge
goto start


CAN2GAR:
echo ok boss goin to Asketi's temple entrance and Marbled gargs
move ne
move nw
move nw
move n
move nw
move climb trail
move nw
move w
move climb trail
move climb path
move e
move climb crack
move climb slope
move nw
move w
move climb crevice
move e
move ne
move climb ledge
move climb slope
move w
move climb escarpment
move n
move ne
move n
move climb wall
move climb mountainside
move e
move climb cliff
pause
pause
climbup:
put climb up
match climbup feet up the cliff.
match climbup ...wait
match Climbupdone top of the cliff.
matchwait
Climbupdone:
move n
goto start


GAR2CAN:
echo ok boss headin south towards the canopied trail
move s
put climb cliff
pause
pause
climbdown:
put climb down
match climbdown feet down the cliff.
match climbdown ...wait
match downdone You climb down off the cliff.
matchwait
downdone:
move w
move climb mountainside
move climb cliff
move s
move sw
move s
move climb escarpment
move e
move climb slope
move climb ledge
move sw
move w
move climb crevice
move e
move se
move climb slope
move climb crack
move w
move climb path
move climb trail
move e
move se
move climb trail
move se
move s
move se
move se
move sw
goto start


CAN2MON:
echo ok boss headin south towards the monastery
move climb ridge
put hide
pause
pause
move sneak sw
pause
move sneak w
pause
move sneak nw
pause
move sneak n
pause
move sneak sw
pause
move sneak w
pause
move sneak s
pause
move go trail
waitfor Obvious paths
move sw
move sw
move nw
move n
move sw
move sw
move s
move ne
move e
move se
move sw
move w
move ne
move w
move sw
move se
move se
move n
move se
move go trail
waitfor Obvious paths
move s
move s
move s
move se
move e
move e
goto start


RAV2HIB:
echo ok boss goin to east gate of hibarnhvidar
move ne 
move nw 
move ne 
move nw 
move nw 
move ne 
move n 
move nw 
move nw 
move nw 
move nw 
move n 
move w 
move w 
move go bridge 
move nw 
echo ok boss if you fall here stand up and move on one step
move nw 
pause 
put power
pause 
move ne 
pause 
put power
pause 8
move ne 
pause 
put power
pause 8
move e 
pause 
put power
pause 8
move ne 
pause 
put power
pause 8
move ne 
pause 
put power
pause 8
move ne 
pause 
put power
pause 8
move nw 
pause 
put power
pause 8
move sw 
pause 
put power
pause 8
move w 
pause 
put power
pause 8
move w 
pause 
put power
pause 8
move nw 
pause 3
move nw 
move nw 
move ne 
move e 
move ne 
move se 
move ne 
move e 
move e 
move ne 
move nw 
move n 
move nw 
move n 
move w 
move w 
move nw 
move sw 
move w 
move nw 
move w 
move w 
move w 
move nw 
move nw 
move go road 
move nw 
move sw 
move go gate 
move sw 
move se 
move sw 
move w 
move s 
move w 
move w 
move w 
move w 
move w 
move go gate 
move go ford 
move nw 
pause 
pause 
move nw 
move nw 
move ne 
move ne 
move w 
move nw 
move nw 
move nw 
move go gate
move go west gate
move sw
move sw
move n
move sw
move w
move w
move w
move go gate
move w
move w
move w
move w
move w
move nw
move w
move w
move w
move w
move w
move w
move go gate
goto start


RAV2GUI:
echo ok boss headin to shard guild
move go gate
move se
echo bypassing gear gate goin south
move nw
move go gate 
move ne 
move nw 
move ne 
move nw 
move go wall 
move e 
move ne 
move climb rock 
move ne 
move climb gully 
move ne 
move go fence 
move se 
move se 
move go canyon 
move w 
move w 
move go mouth 
put turn torch 
match nwal2 stone wall opens up.
match torch and the stone wall closes.
matchwait 
Torch: 
put turn torch 
goto NWAL2 
NWAL2: 
move go wall 
put turn basin 
pause
move go hole 
put stand 
move n 
move nw 
move se 
move sw 
move se 
move sw 
move d 
move sw 
move sw 
move w 
move w 
move sw 
move sw 
move s 
move s 
move se 
move se 
move e 
move s 
pause 
pause 
move e 
pause 
pause 
move se 
move e 
move e 
move e 
move se 
move sw 
move se 
move e 
move se 
move e 
move e 
move se 
move se 
move w
move nw
move s
move se
move e
move s
move sw
move se
move d
move ne
move s
move s
move se
move go path
move go under
goto start 



#*********************** Aesry ******************************

BAN2CLI:
move se
move s
move se
move se
move e
move se
move e
move ne
move go foot
move ne
move ne
move n
move ne
move e
move go foot
move se
move se
move ne
move se
move ne
move climb bank
move ne
move e
move climb trunk
move n
move n
move ne
move n
move ne
goto start

BAN2TAN:
echo Ok boss runnin to tanners
move w
move n
move n
move n
move climb step
move n
move n
move n
move climb stair
move n
put go gate
put go door
echo enter ok boss to head to bank
waitfor ok boss
move out
move go gate
move s
move climb stair
move s
move s
move s
move climb step
move s
move s
move s
move e
move go gate
move go door
move n
put dep all
put bala
pause
move s
move go door
move go gate
goto start

BAN2FOR:
move w
move go gate
move w
move w
put w
pause 1
move climb stair
move w
move climb stair
move w
move climb stair
move w
move climb stair
move w
move climb stair
move w
move climb stair
move w
move climb stair
move w
move climb steps
move w
move go gate
move w
move w
goto start

FOR2BAN:
move e 
move go gate
move e
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move climb stair
move e
move e
put bow dolp
pause 3
move go gate
move e 
move e
goto start

FOR2FIS:
move climb trail
move w
move nw
move w
move nw
move n
move n
move go path
move climb stair
move climb ledge
move climb slope
move go fissure
goto start

FOR2SHO:
move climb path
move sw
move w
move climb trail
move n
move climb trail
move nw
move w
move climb road
move s
move climb trail
move sw
move climb path
move nw
move climb ramp
move w
move climb walk
goto start

FIS2FOR:
move out
move climb slope
move climb ledge
move climb stair
move go path
move s
move s
move se
move e
move se
move e
move climb trail
goto start

SHO2CAV:
move climb trail
move n
move nw
move u
move n
put search
pause
pause
move go open
put se
pause
put se
pause
put se
pause
put se
pause
put se 
pause
put e
pause
put se
pause
put cli crev
pause
goto start

SHO2FOR:
move climb walk
move e
move climb ramp
move se
move climb path
move ne
move climb trail
move n
move climb road
move e
move se
move climb trail
move s
move climb trail
move e
move ne
move climb path
goto start

CAV2SHO:
put climb crev
pause 1
put nw
pause 1
put w
pause 1
put nw
pause 1
put nw
pause 1
put nw
pause 1
put nw
pause 1
put nw
nextroom
move go open
move s
move d
move se
move s
move climb trail
goto start

CLI2BAN:
move sw
move s
move sw
move s
move s
move s
move w
move sw
move climb bank
move sw
move nw
move sw
move nw
move nw
move w
move w 
move sw
move s
move sw
move sw
move go foot
move sw
move w
move nw
move w
move nw
move nw
move n
move nw
goto start

CLI2ORB:
move sw
move s
move sw
move s
move s
move s
move ne
move e
move go gate
move go bamb door
move n
goto start

ORB2CLI:
move s
move out
move go gate
move w
move sw
move cli trail
move n
move n
move ne
move n
move ne
goto start

MOR2BAN:
move out
move sw
move sw
move s
move sw
move w
move s
move climb step
move s
move s
move s
move e
goto start

#*********************** Mriss ******************************

Gal2doc:
waitfor The crew ties it off
move go dock
goto start

doc2gal:
put go galley
match w4gal You look around in vain
match galley and climb aboard.
matchwait

w4gal:
match doc2gal glides into the dock.
match doc2gal voice calls out, "Leaving
matchwait

doc2bri:
move n
move n
move nw
move w
move sw
move w
move sw
move w
goto start

bri2doc:
move e
move ne
move e
move ne
move e
move se
move s
move s
goto start

bri2dit:
move e
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move w
move go bri
move sw
move s
move sw
move s
move se
move n
move ne
move e
goto start

bri2jun:
move go bri
move nw
move sw
move sw
move sw
move sw
move s
move sw
move sw
move sw
move sw
move w
move s
move s
move w
move nw
move w
move sw
move w
goto start

bri2cyp:
move e
move ne
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move se
move go thick
move se
move se
move sw
move w
move climb cyp
goto start

jun2gem:
move s
move e
move se
move sw
move se
move sw
move s
move se
move w
move nw
move go shop
goto start

Jun2dit:
move nw
move n
move d
move nw
move e
move nw
move d
move ne
move nw
move w
move ne
move ne
move nw
move n
move ne
move n
move sw
move d
move ne
move w
move d
move ne
move n
move ne
move se
move e
move nw
move nw
move ne
move n
move ne
move ne
move n
move ne
move n
move ne
move n
move ne
move n
move ne
move nw
move ne
move n
move ne
move e
move e
move ne
move n
move ne
move e
move ne
move n
move ne
move n
move ne
move se
move n
move ne
move e
goto start

dit2oas:
move ne
move ne
move ne
move nw
move ne
move ne
move n
move n
goto start

dit2bri:
move w
move sw
move s
move nw
move n
move ne
move n
move ne
move go bridge
move e
move e
move se
put scout trail
pause
pause
move go trail
waitfor Obvious paths
move nw
move w
move sw
move w
move sw
move w
goto start


Jun2bri:
move e
move ne
move e
move se
move e
move n
move n
move e
move ne
move ne
move ne
move ne
move n
move ne
move ne
move ne
move ne
move se
move go bridge
goto start 

gem2jun:
move out
move se
move e
move nw
move n
move ne
move nw
move ne
move nw
move w
move n
goto start

oas2dit:
move s
move s
move sw
move sw
move se
move sw
move sw
move sw
goto start

dit2jun:
move w
move sw
move s
move nw
move sw
move s
move sw
move s
move sw
move w
move sw
move s
move sw
move w
move w
move sw
move s
move sw
move se
move sw
move s
move sw
move s
move sw
move s
move sw
move s
move sw
move sw
move s
move sw
move se
move se
move w
move nw
move sw
move s
move sw
move u
move e
move sw
move u
move ne
move s
move sw
move s
move se
move sw
move sw
move e
move se
move sw
move u
move se
move w
move se
move u
move s
move se
goto start

cyp2bri:
move climb cyp
move e
move ne
move nw
move nw
move go thick
move e
move ne
move e
move ne
move ne
move ne
move se
move se
move ne
move ne
move e
move e
move go trail
waitfor Obvious paths
goto start

cyp2isl:
move climb cyp
move nw
move sw
move w
move go log
move go river
move sw
move go island
move w
move w
move go shelt
goto start

isl2cyp:
move out
move e
move e
move go river
move ne
pause
move go bank
move go log
move e
move ne
move se
move climb cyp
goto start

cyp2alt:
move climb cyp
move nw
move sw
move w
move go path
move up
move w
move ne
move nw
move ne
move nw
move nw
move w
move up
move n
move up
goto start

alt2cyp:
move d
move s
move d
move e
move se
move se
move sw
move se
move sw
move e
move d
move s
move e
move ne
move se
move climb cyp
goto start

#*********************** Mriss ****************************

doc2wha:
move sw
move go arch
move se
move se
move se
move se
move se
move se
move s
move s
move s
move s
move sw
move sw
move se
move se
goto start 

doc2ban:
move sw
move go arch
move nw
move nw
move w
move w
move s
move s
move s
move s
move w
move sw
move sw
move s
move e
move go bank
move climb stair
move ne
move up
goto start

doc2fur:
move sw
move go arch
move se
move se
move sw
move sw
move sw
move sw
move se
move s
move w
move go fur
goto start

doc2emp:
move sw
move go arch
move nw
move nw
move go build
move ne
move se
move go door
goto start

emp2doc:
move go door
move nw
move sw
move out
move se
move se
move go arch
move ne
goto start

fur2ban:
move out
move s
move sw
move w
move w
move nw
move n
move go bank
move climb stair
move ne
move up
goto start

ban2wha:
move d
move sw
move climb stair
move out
move s
move se
move e
move s
move e
move ne
move se
move se
move se
move se
move ne
move ne
move se
move se
goto start

ban2fur:
move d
move sw
move climb stair
move out
move n
move ne
move e
move e
move se
move s
move go fur
goto start

ban2doc:
move d
move sw
move climb stair
move out
move w
move n
move ne
move ne
move e
move n
move n
move n
move n
move e
move e
move se
move se
move go arch
move ne
goto start

ban2mam:
move d
move sw
move climb stair
move out
move w
move n
move ne
move nw
move nw
move sw
move sw
move sw
move s
move s
move s
move s
move go tunn
move go south arch
move se
move se
move e
move go shop
goto start

mam2ban:
move out
move w
move w
move w
move go tun
move go north arch
move nw
move nw
move n
move n
move n
move n
move n
move se
move se
move sw
move s
move w
move e
move e
move go bank
move climb stair
move ne
move up
goto start

wha2jol:
put go jolas
match jolas You climb onto the Jolas.
match w4jola I could not find
matchwait

wha2doc:
move nw
move nw
move ne
move ne
move n
move n
move n
move n
move nw
move nw
move nw
move nw
move nw
move nw
move go arch
move ne
goto start

wha2ban:
move nw
move nw
move sw
move sw
move nw
move nw
move nw
move nw
move sw
move w
move n
move w
move nw
move n
move go bank
move climb stair
move ne
move up
goto start

gojolas:
put go jola
match w4jola What were you referring to?
match jolas You climb onto the Jolas.
matchwait

w4jola:
put look
match gojolas The Jolas ties off
match golola sleek Jolas departing
match w4jola IDLE TOO LONG
matchwait

jol2end:
waitfor tie off the Jolas
move go end
goto start

jol2doc:
waitfor tie off the Jolas
move go dock
goto start

#******************** hara'jaal **********************

doc2hba:
move n
move go ramp
move nw
move nw
move nw
move go build
goto start

doc2hov:
move n
move go ramp
move nw
move n
move n
move n
move n
move ne
move go gate
move ne
move nw
move go path
move go gate
goto start

hba2doc:
move out
move se
move se
move se
move go wharf
move s
goto start

ban2hov:
move out
move ne
move ne
move ne
move go gate
move ne
move nw
move go path
move go gate
goto start

hov2maz:
move go gate
move go path
move n
move n
move ne
move ne
move n
move n
move n
move nw
move n
move ne
move w
move w
move n
move n
move ne
move ne
move n
goto start

hov2ban:
move go gate
move go path
move se
move sw
move go gate
move sw
move sw
move sw
move go build
goto start

hov2sed:
move go gate
move go path
move n
move n
move ne
move climb cliff
put n
pause
pause
put n
goto start

hov2doc:
move go gate
move go path
move se
move sw
move go gate
move sw
move s
move s
move s
move s
move se
move go wharf
move s
goto start

sed2hov:
put s
pause
pause
put s
pause
pause
move climb cliff
move sw
move s
move s
move go path
move go gate
goto start

Maz2bea:
move n
move n
move n
move climb slope
move n
move w
move nw
move nw
move n
move n
move ne
move ne
move n
move n
move w
move w
move w
echo watch it here roundtimes boss
move n
pause
put ret

move n
pause
put ret
move nw
pause
put ret
move nw
pause
put ret
move n
pause
put ret
move n
pause
put ret
move n
pause
put ret
move nw
pause
move nw
pause

Climbdown2:
pause
put climb down
match climbdown2 You work your way down
match climbdown2 Roundtime:
match donedown you referring to?
matchwait

donedown:
move ne
move ne
move e
goto start

maz2hov:
move s
move sw
move sw
move s
move s
move e
move e
move sw
move s
move se
move s
move s
move s
move sw
move sw
move s
move s
move go path
move go gate
goto start

bea2Tas:
echo ok boss aint got this done
goto end

bea2maz:
move w
move sw
move sw
climbup:
pause
put climb up
match climbup You work your
match updone you referring to?
match climbup Roundtime:
matchwait
Updone:
move se
move go path
pause
put ret
move s
pause
put ret
move s
pause
put ret
move s
pause
put ret
move se
pause
put ret
move se
pause
put ret
move s
pause
put ret
move s
pause
put ret
move e
pause
put ret
move e
move e
move s
move s
move sw
move sw
move s
move s
move se
move se
move e
move s
move climb slope
findrock:
move e
put look
match foundrock a rock
match findrock Obvious paths:
matchwait
foundrock:
move s
move go trail
waitfor Obvious paths
goto start





Rookie:
echo ****************************************************************************************************
echo    hit escape and take the time to read this section carefully before using for the first time
echo ****************************************************************************************************
echo this script was written for the more mature rangers it will scout, swim and climb so you need some skills
echo   there are Dangerous areas so I don't advise to ever run this script AFK (snowies, orc bandits, unyns)
echo
echo with all my scripts I urge you highlight the word 'boss' and highlight entire line you will see why soon
echo           there are over 70 and soon to be more locations you can start this script 
echo   If unsure where this runs from,  just start it up, if you are not at a startpoint a list will appear
echo
echo    this script now works in two ways, you can simply start it up and it will ask for destinations
echo you simply type out one of the choices offered and enter, when it arrives there it will ask for another
echo         destination and tell you options onscreen. Simple and handy for short jaunts
echo NOTE: once you get to your destination escape from this script or it may decide ya arent done traveling
echo Example you are in the ranger guild and someone gweths or says bank you will find yourself at the teller
echo
echo New feature!  Now you can enter a city as a variable when starting avoiding the need for further input
echo If you are in the crossings guild and want to go to Theren for example you can start as (.move Theren) 
echo       it will not require any input, when it arrives at Theren gate it will hide and exit script
echo  if you use and appreciate this aspect then ya should thank Krilly who got me over that final hurdle
echo
echo         The followin Should work as variables for city to city travel for the most part
echo          Muspari, Hvaral, Fornsted, Theren, Elbains, Langenfirth, Rossmans, Riverhaven, Crossings, 
echo           Leth, Shard, Tomma, Ileya Tapia, Ain Ghazal, Hibarnhvidar, Boar Clan, Raven's Point
echo
echo      For Stormfront users you will need to make slight modifications for this to function properly
echo   after every GO TRAIL you need to add line with NEXTROOM, also on the stairs on Aesry I think thats bout it
echo
echo ****************************************************************************************************
echo ****************************************************************************************************
echo
echo   If you find any bugs or have suggestions on areas you think I should include or have any other input
echo                  +++++     Drop me a pigeon my AIM is  Simu Sux    +++++
echo
echo ****************************************************************************************************
echo ****************************************************************************************************
Startpoint:
echo **************************************************************
echo ok boss choose Zoluren, Ilithi, Therengia Forfedhar or Islands 
echo **************************************************************
match Zoluren Zoluren
match Ilithi Ilithi
match Therengia Therengia
match Forfedhar Forf
match islands island
matchwait

Zoluren:
echo ********************************************** 
echo      at the Crossing GUILD at the gate
echo         at the altar in the TEMPLE 
echo   at the RUINS where you pray for orbs
echo        in ARTHE dale at the gate
echo     Kaerna in front of the store
echo         in DIRGE at the gate
echo   the dry STREAMBED near vipers and leucs
echo     in the GENI tree the lowest section
echo        on either FERRY heading south
echo  tanners/repair building main room in wolf clan
echo the wrecked tower next to the green in tiger clan
echo the leatherworks in knifeclan (1st room in cave)
echo      in the very center of LETH Deriel
echo    the dock where the Degan docks to Mriss
echo  in the den in the Oshu'ehhrsk MANOR (kartais)
echo Gate of Souls right at the boulder (firesprite)
echo ***********************************************
pause 15
Ilithi:
echo ******************************************************
echo           on either gondola platform
echo           on the GONDOLA either room
echo  at the CROSSROADS just north of shard near Wayfarers
echo           behind the waterfall in gargs
echo   in the clearing at the Tanners, Survival SHOP area
echo             at the safe spot in ADANF
echo        in front CORIKS GATE aka Shadow clan
echo            in the Ranger GUILD front room
echo          just inside the gate to HORSE clan
echo   on the stone in the stream in the valley with horses
echo         at the tellers window in the shard bank
echo            at the safe spot in dancers
echo            at the safe spot in malchata
echo ******************************************************
pause 15
Therengia:
echo *************************************************************
echo                 just inside the MUSPARI gate
echo either of the sand barges (Suncatcher or Desert Wind)
echo                  just inside the HVARAL gate
echo                 just inside the FORNSTED gate
echo                   Shallow LAKE in marauders
echo                  just outside the THEREN gate
echo               at the picnic table at ELBAINS
echo         at ROSSMANS at the marker tween river and gate
echo inside the gate of ruined village with WARCATS (DANGEROUS)
echo            at the LANGENFIRTH gathering spot bin
echo      in front of the temple or 3 south of the bank in HAVEN
echo           at the Altar in the swamps east of Haven
echo at the stalagmite in Hell basilisk/shadowbeasts (DANGEROUS)
echo south of the Faldesu river, near Crocs, sw of the bridge
echo ***********************************************************
pause 15
Forfedhar:
echo **********************************************************
echo            just outside gate to ileya taipa
echo                at either skiff dock's
echo                     on the skiff
echo                 either ferry's docks
echo                    either ferry
echo         Right outside gate at ravens point
echo 	     Right outside west gate of Hibarnhvidar
echo            just inside boar clan bridge
echo             at the ranger guildleader
echo  the gate to the monastery (near bats, bloodvines, golins)
echo  at the canopied trail (near blight ogres, more bats, dryads)
echo         at the arch to asketi temple (marbled gargs)
echo **********************************************************
pause 15
Islands:
echo ********************************************************
echo                          Aesry 
echo                  Bank (in front of bank)
echo Fork (where ya leave the main road to snobs and guild)
echo             Fissure (one room before snow goblins)
echo             Shore (near docks at trail to sea cave)
echo         Cave (in the lit area just before middle unyns)
echo            Cliff (at the bottom of the tami cliff)
echo              Morgue (if ya die ya wake here)
echo        Orbs cleric guild prayer room (where ya get orbs)
echo              also goes to tanners from newsstand
echo ********************************************************
pause 5
echo ********************************************************
echo 			      Mriss
echo    timber bridge where ya take trail to hunting area
echo Fever Point Junction fork to oasis, village and bridge
echo   Mossy Cypress tree in the pecc caracal huntin area
echo          Pecc Island, A Hunter's Shelter
echo      on either galley (Kresh to Mriss and back)
echo      either of the docks for the galleys above
echo gem shop in village, near origami shop and degan pier
echo     Altar near the peccary caracal huntin ground
echo Ditch fork goin to oasis or dunes, near penal colony
echo Desert Oasis, Don't know what's here might not be safe
echo ********************************************************
pause 5
echo ****************************************
echo 			      Kresh			  
echo  Healing Room with NPC healer (I think)
echo  Scupper's Furrier for sellin yer skins
echo   Harti Clemois Bank, Teller's Window
echo   The Assay Shop, Main Office (Mama's)
echo   Wharf End, Mer'Kresh (Jolas to Hara)
echo   either galley (Kresh to & from Mriss)
echo     either dock for the galleys above 
echo ****************************************
pause
echo *******************************************
echo 			      Hara
echo  Hovel outside altar/depart spot near town
echo    sedge grass in the river with Hele'la
echo    just before polo maze from the south
echo   beach where ya catch teh Tasia to Ratha
echo    Baron's Forset, at the tellers window
echo        Sumilo Dock (Jolas to Kresh)
echo *******************************************

echo ok time to find one of those locations and start it again boss

end:
put hide