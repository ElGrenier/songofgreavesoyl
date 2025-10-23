team add bans_color
team modify bans_color color dark_red
team join bans_color -=Bans=-

#

team add map_color
team modify map_color color aqua
team join map_color -=Map=-


# maps

scoreboard players set -=Map=- Picks -4

team add picks_oldwoods
team modify picks_oldwoods prefix "Old W"
team join picks_oldwoods oods
execute if entity @e[tag=GameStart,scores={Map=1}] run scoreboard players set oods Picks -5
execute unless entity @e[tag=GameStart,scores={Map=1}] run scoreboard players reset oods Picks


team add picks_courtofthekrakenking
team modify picks_courtofthekrakenking prefix "Court of the Kraken K"
team join picks_courtofthekrakenking ing
execute if entity @e[tag=GameStart,scores={Map=3}] run scoreboard players set ing Picks -5
execute unless entity @e[tag=GameStart,scores={Map=3}] run scoreboard players reset ing Picks


team add picks_templeofwarper
team modify picks_templeofwarper prefix "Temple of W"
team join picks_templeofwarper arper
execute if entity @e[tag=GameStart,scores={Map=4}] run scoreboard players set arper Picks -5
execute unless entity @e[tag=GameStart,scores={Map=4}] run scoreboard players reset arper Picks


team add picks_thelaboratory
team modify picks_thelaboratory prefix "The L"
team join picks_thelaboratory aboratory
execute if entity @e[tag=GameStart,scores={Map=5}] run scoreboard players set aboratory Picks -5
execute unless entity @e[tag=GameStart,scores={Map=5}] run scoreboard players reset aboratory Picks


team add picks_showguardsfortress
team modify picks_showguardsfortress prefix "Snowguard's F"
team join picks_showguardsfortress ortress
execute if entity @e[tag=GameStart,scores={Map=6}] run scoreboard players set ortress Picks -5
execute unless entity @e[tag=GameStart,scores={Map=6}] run scoreboard players reset ortress Picks


team add picks_ruinsofposhhuh
team modify picks_ruinsofposhhuh prefix "Ruins of Poshh'"
team join picks_ruinsofposhhuh uh
execute if entity @e[tag=GameStart,scores={Map=7}] run scoreboard players set uh Picks -5
execute unless entity @e[tag=GameStart,scores={Map=7}] run scoreboard players reset uh Picks


team add picks_molten
team modify picks_molten prefix "Black B"
team join picks_molten ridge
execute if entity @e[tag=GameStart,scores={Map=8}] run scoreboard players set ridge Picks -5
execute unless entity @e[tag=GameStart,scores={Map=8}] run scoreboard players reset ridge Picks


team add picks_realmofdeath
team modify picks_realmofdeath prefix "Realm of D"
team join picks_realmofdeath eath
execute if entity @e[tag=GameStart,scores={Map=9}] run scoreboard players set eath Picks -5
execute unless entity @e[tag=GameStart,scores={Map=9}] run scoreboard players reset eath Picks


team add picks_valleyofbones
team modify picks_valleyofbones prefix "Valley of B"
team join picks_valleyofbones ones
execute if entity @e[tag=GameStart,scores={Map=10}] run scoreboard players set ones Picks -5
execute unless entity @e[tag=GameStart,scores={Map=10}] run scoreboard players reset ones Picks


team add picks_almubmansion
team modify picks_almubmansion prefix "Almub M"
team join picks_almubmansion ansion
execute if entity @e[tag=GameStart,scores={Map=11}] run scoreboard players set ansion Picks -5
execute unless entity @e[tag=GameStart,scores={Map=11}] run scoreboard players reset ansion Picks


team add picks_aranitemines
team modify picks_aranitemines prefix "Aranite M"
team join picks_aranitemines ines
execute if entity @e[tag=GameStart,scores={Map=12}] run scoreboard players set ines Picks -5
execute unless entity @e[tag=GameStart,scores={Map=12}] run scoreboard players reset ines Picks


team add picks_frozenburrow
team modify picks_frozenburrow prefix "Frozen B"
team join picks_frozenburrow urrow
execute if entity @e[tag=GameStart,scores={Map=13}] run scoreboard players set urrow Picks -5
execute unless entity @e[tag=GameStart,scores={Map=13}] run scoreboard players reset urrow Picks


team add picks_damnedvault
team modify picks_damnedvault prefix "Damned V"
team join picks_damnedvault ault
execute if entity @e[tag=GameStart,scores={Map=14}] run scoreboard players set ault Picks -5
execute unless entity @e[tag=GameStart,scores={Map=14}] run scoreboard players reset ault Picks


team add picks_throneofazathoth
team modify picks_throneofazathoth prefix "Throne of A"
team join picks_throneofazathoth zathoth
execute if entity @e[tag=GameStart,scores={Map=15}] run scoreboard players set zathoth Picks -5
execute unless entity @e[tag=GameStart,scores={Map=15}] run scoreboard players reset zathoth Picks


team add picks_thearbitersmausoleum
team modify picks_thearbitersmausoleum prefix "The Arbiter's M"
team join picks_thearbitersmausoleum ausoleum
execute if entity @e[tag=GameStart,scores={Map=16}] run scoreboard players set ausoleum Picks -5
execute unless entity @e[tag=GameStart,scores={Map=16}] run scoreboard players reset ausoleum Picks


team add picks_theisland
team modify picks_theisland prefix "The I"
team join picks_theisland sland
execute if entity @e[tag=GameStart,scores={Map=17}] run scoreboard players set sland Picks -5
execute unless entity @e[tag=GameStart,scores={Map=17}] run scoreboard players reset sland Picks


team add picks_shadyalleys
team modify picks_shadyalleys prefix "Shady A"
team join picks_shadyalleys lleys
execute if entity @e[tag=GameStart,scores={Map=18}] run scoreboard players set lleys Picks -5
execute unless entity @e[tag=GameStart,scores={Map=18}] run scoreboard players reset lleys Picks


team add picks_parasitechambers
team modify picks_parasitechambers prefix "Parasite C"
team join picks_parasitechambers hambers
execute if entity @e[tag=GameStart,scores={Map=19}] run scoreboard players set hambers Picks -5
execute unless entity @e[tag=GameStart,scores={Map=19}] run scoreboard players reset hambers Picks

team add picks_losthalls
team modify picks_losthalls prefix "Lost H"
team join picks_losthalls alls
execute if entity @e[tag=GameStart,scores={Map=20}] run scoreboard players set alls Picks -5
execute unless entity @e[tag=GameStart,scores={Map=20}] run scoreboard players reset alls Picks

team add picks_heartofswamp
team modify picks_heartofswamp prefix "Heart of the S"
team join picks_heartofswamp wamp
execute if entity @e[tag=GameStart,scores={Map=21}] run scoreboard players set wamp Picks -5
execute unless entity @e[tag=GameStart,scores={Map=21}] run scoreboard players reset wamp Picks

team add picks_fossiledtomb
team modify picks_fossiledtomb prefix "Fossiled T"
team join picks_fossiledtomb omb
execute if entity @e[tag=GameStart,scores={Map=22}] run scoreboard players set omb Picks -5
execute unless entity @e[tag=GameStart,scores={Map=22}] run scoreboard players reset omb Picks







#chars

execute if entity @e[tag=ban_stand] run scoreboard players set -=Bans=- Picks -2
execute unless entity @e[tag=ban_stand] run scoreboard players reset -=Bans=- Picks

execute if entity @a[scores={char=1},team=purple] run scoreboard players set Demonslayer Picks 1
execute if entity @a[scores={char=1},team=yellow] run scoreboard players set Demonslayer Picks -1
execute if entity @e[tag=ban_1] run scoreboard players set Demonslayer Picks -3
execute unless entity @a[scores={char=1}] unless entity @e[tag=ban_1] run scoreboard players reset Demonslayer Picks

execute if entity @a[scores={char=2},team=purple] run scoreboard players set Huntress Picks 1
execute if entity @a[scores={char=2},team=yellow] run scoreboard players set Huntress Picks -1
execute if entity @e[tag=ban_2] run scoreboard players set Huntress Picks -3
execute unless entity @a[scores={char=2}] unless entity @e[tag=ban_2] run scoreboard players reset Huntress Picks

team add picks_paladin
team modify picks_paladin prefix "Frozen Palad"
team join picks_paladin in
execute if entity @a[scores={char=3},team=purple] run scoreboard players set in Picks 1
execute if entity @a[scores={char=3},team=yellow] run scoreboard players set in Picks -1
execute if entity @e[tag=ban_3] run scoreboard players set in Picks -3
execute unless entity @a[scores={char=3}] unless entity @e[tag=ban_3] run scoreboard players reset in Picks

execute if entity @a[scores={char=4},team=purple] run scoreboard players set Warper Picks 1
execute if entity @a[scores={char=4},team=yellow] run scoreboard players set Warper Picks -1
execute if entity @e[tag=ban_4] run scoreboard players set Warper Picks -3
execute unless entity @a[scores={char=4}] unless entity @e[tag=ban_4] run scoreboard players reset Warper Picks

execute if entity @a[scores={char=5},team=purple] run scoreboard players set Cremator Picks 1
execute if entity @a[scores={char=5},team=yellow] run scoreboard players set Cremator Picks -1
execute if entity @e[tag=ban_5] run scoreboard players set Cremator Picks -3
execute unless entity @a[scores={char=5}] unless entity @e[tag=ban_5] run scoreboard players reset Cremator Picks

execute if entity @a[scores={char=6},team=purple] run scoreboard players set Guide Picks 1
execute if entity @a[scores={char=6},team=yellow] run scoreboard players set Guide Picks -1
execute if entity @e[tag=ban_6] run scoreboard players set Guide Picks -3
execute unless entity @a[scores={char=6}] unless entity @e[tag=ban_6] run scoreboard players reset Guide Picks

team add picks_dragon
team modify picks_dragon suffix "d-Eyes Dragon"
team join picks_dragon Re
execute if entity @a[scores={char=7},team=purple] run scoreboard players set Re Picks 1
execute if entity @a[scores={char=7},team=yellow] run scoreboard players set Re Picks -1
execute if entity @e[tag=ban_7] run scoreboard players set Re Picks -3
execute unless entity @a[scores={char=7}] unless entity @e[tag=ban_7] run scoreboard players reset Re Picks

execute if entity @a[scores={char=8},team=purple] run scoreboard players set Trickstress Picks 1
execute if entity @a[scores={char=8},team=yellow] run scoreboard players set Trickstress Picks -1
execute if entity @e[tag=ban_8] run scoreboard players set Trickstress Picks -3
execute unless entity @a[scores={char=8}] unless entity @e[tag=ban_8] run scoreboard players reset Trickstress Picks

team add picks_crawler
team modify picks_crawler suffix "nd Crawler"
team join picks_crawler Sa
execute if entity @a[scores={char=9},team=purple] run scoreboard players set Sa Picks 1
execute if entity @a[scores={char=9},team=yellow] run scoreboard players set Sa Picks -1
execute if entity @e[tag=ban_9] run scoreboard players set Sa Picks -3
execute unless entity @a[scores={char=9}] unless entity @e[tag=ban_9] run scoreboard players reset Sa Picks

execute if entity @a[scores={char=10},team=purple] run scoreboard players set Kraken Picks 1
execute if entity @a[scores={char=10},team=yellow] run scoreboard players set Kraken Picks -1
execute if entity @e[tag=ban_10] run scoreboard players set Kraken Picks -3
execute unless entity @a[scores={char=10}] unless entity @e[tag=ban_10] run scoreboard players reset Kraken Picks

team add picks_bomb
team modify picks_bomb suffix "mb Master"
team join picks_bomb Bo
execute if entity @a[scores={char=11},team=purple] run scoreboard players set Bo Picks 1
execute if entity @a[scores={char=11},team=yellow] run scoreboard players set Bo Picks -1
execute if entity @e[tag=ban_11] run scoreboard players set Bo Picks -3
execute unless entity @a[scores={char=11}] unless entity @e[tag=ban_11] run scoreboard players reset Bo Picks

team add picks_slime
team modify picks_slime suffix "ime Core"
team join picks_slime Sl
execute if entity @a[scores={char=12},team=purple] run scoreboard players set Sl Picks 1
execute if entity @a[scores={char=12},team=yellow] run scoreboard players set Sl Picks -1
execute if entity @e[tag=ban_12] run scoreboard players set Sl Picks -3
execute unless entity @a[scores={char=12}] unless entity @e[tag=ban_12] run scoreboard players reset Sl Picks

team add picks_skeleton
team modify picks_skeleton suffix "eletal Phantom"
team join picks_skeleton Sk
execute if entity @a[scores={char=13},team=purple] run scoreboard players set Sk Picks 1
execute if entity @a[scores={char=13},team=yellow] run scoreboard players set Sk Picks -1
execute if entity @e[tag=ban_13] run scoreboard players set Sk Picks -3
execute unless entity @a[scores={char=13}] unless entity @e[tag=ban_13] run scoreboard players reset Sk Picks

team add picks_skyqueen
team modify picks_skyqueen suffix "ky Queen"
team join picks_skyqueen S
execute if entity @a[scores={char=14},team=purple] run scoreboard players set S Picks 1
execute if entity @a[scores={char=14},team=yellow] run scoreboard players set S Picks -1
execute if entity @e[tag=ban_14] run scoreboard players set S Picks -3
execute unless entity @a[scores={char=14}] unless entity @e[tag=ban_14] run scoreboard players reset S Picks

execute if entity @a[scores={char=15},team=purple] run scoreboard players set Shard Picks 1
execute if entity @a[scores={char=15},team=yellow] run scoreboard players set Shard Picks -1
execute if entity @e[tag=ban_15] run scoreboard players set Shard Picks -3
execute unless entity @a[scores={char=15}] unless entity @e[tag=ban_15] run scoreboard players reset Shard Picks

team add picks_treespirit
team modify picks_treespirit suffix "ee Spirit"
team join picks_treespirit Tr
execute if entity @a[scores={char=16},team=purple] run scoreboard players set Tr Picks 1
execute if entity @a[scores={char=16},team=yellow] run scoreboard players set Tr Picks -1
execute if entity @e[tag=ban_16] run scoreboard players set Tr Picks -3
execute unless entity @a[scores={char=16}] unless entity @e[tag=ban_16] run scoreboard players reset Tr Picks

execute if entity @a[scores={char=17},team=purple] run scoreboard players set Technomancer Picks 1
execute if entity @a[scores={char=17},team=yellow] run scoreboard players set Technomancer Picks -1
execute if entity @e[tag=ban_17] run scoreboard players set Technomancer Picks -3
execute unless entity @a[scores={char=17}] unless entity @e[tag=ban_17] run scoreboard players reset Technomancer Picks

execute if entity @a[scores={char=18},team=purple] run scoreboard players set Golem Picks 1
execute if entity @a[scores={char=18},team=yellow] run scoreboard players set Golem Picks -1
execute if entity @e[tag=ban_18] run scoreboard players set Golem Picks -3
execute unless entity @a[scores={char=18}] unless entity @e[tag=ban_18] run scoreboard players reset Golem Picks

team add picks_lunatic
team modify picks_lunatic suffix "natic and her Demon"
team join picks_lunatic Lu
execute if entity @a[scores={char=19},team=purple] run scoreboard players set Lu Picks 1
execute if entity @a[scores={char=19},team=yellow] run scoreboard players set Lu Picks -1
execute if entity @e[tag=ban_19] run scoreboard players set Lu Picks -3
execute unless entity @a[scores={char=19}] unless entity @e[tag=ban_19] run scoreboard players reset Lu Picks

execute if entity @a[scores={char=20},team=purple] run scoreboard players set Weaver Picks 1
execute if entity @a[scores={char=20},team=yellow] run scoreboard players set Weaver Picks -1
execute if entity @e[tag=ban_20] run scoreboard players set Weaver Picks -3
execute unless entity @a[scores={char=20}] unless entity @e[tag=ban_20] run scoreboard players reset Weaver Picks

execute if entity @a[scores={char=21},team=purple] run scoreboard players set Necrolord Picks 1
execute if entity @a[scores={char=21},team=yellow] run scoreboard players set Necrolord Picks -1
execute if entity @e[tag=ban_21] run scoreboard players set Necrolord Picks -3
execute unless entity @a[scores={char=21}] unless entity @e[tag=ban_21] run scoreboard players reset Necrolord Picks


execute if entity @a[scores={char=22},team=purple] run scoreboard players set Devourer Picks 1
execute if entity @a[scores={char=22},team=yellow] run scoreboard players set Devourer Picks -1
execute if entity @e[tag=ban_22] run scoreboard players set Devourer Picks -3
execute unless entity @a[scores={char=22}] unless entity @e[tag=ban_22] run scoreboard players reset Devourer Picks


execute if entity @a[scores={char=23},team=purple] run scoreboard players set Prowler Picks 1
execute if entity @a[scores={char=23},team=yellow] run scoreboard players set Prowler Picks -1
execute if entity @e[tag=ban_23] run scoreboard players set Prowler Picks -3
execute unless entity @a[scores={char=23}] unless entity @e[tag=ban_23] run scoreboard players reset Prowler Picks


team add picks_sandwitch
team modify picks_sandwitch prefix "Sand Wit"
team join picks_sandwitch ch
execute if entity @a[scores={char=24},team=purple] run scoreboard players set ch Picks 1
execute if entity @a[scores={char=24},team=yellow] run scoreboard players set ch Picks -1
execute if entity @e[tag=ban_24] run scoreboard players set ch Picks -3
execute unless entity @a[scores={char=24}] unless entity @e[tag=ban_24] run scoreboard players reset ch Picks

execute if entity @a[scores={char=25},team=purple] run scoreboard players set Scourge Picks 1
execute if entity @a[scores={char=25},team=yellow] run scoreboard players set Scourge Picks -1
execute if entity @e[tag=ban_25] run scoreboard players set Scourge Picks -3
execute unless entity @a[scores={char=25}] unless entity @e[tag=ban_25] run scoreboard players reset Scourge Picks

execute if entity @a[scores={char=26},team=purple] run scoreboard players set Sharpshooter Picks 1
execute if entity @a[scores={char=26},team=yellow] run scoreboard players set Sharpshooter Picks -1
execute if entity @e[tag=ban_26] run scoreboard players set Sharpshooter Picks -3
execute unless entity @a[scores={char=26}] unless entity @e[tag=ban_26] run scoreboard players reset Sharpshooter Picks

execute if entity @a[scores={char=27},team=purple] run scoreboard players set Champion Picks 1
execute if entity @a[scores={char=27},team=yellow] run scoreboard players set Champion Picks -1
execute if entity @e[tag=ban_27] run scoreboard players set Champion Picks -3
execute unless entity @a[scores={char=27}] unless entity @e[tag=ban_27] run scoreboard players reset Champion Picks

execute if entity @a[scores={char=28},team=purple] run scoreboard players set Operator Picks 1
execute if entity @a[scores={char=28},team=yellow] run scoreboard players set Operator Picks -1
execute if entity @e[tag=ban_28] run scoreboard players set Operator Picks -3
execute unless entity @a[scores={char=28}] unless entity @e[tag=ban_28] run scoreboard players reset Operator Picks

team add picks_parasite
team modify picks_parasite suffix "rasite Host"
team join picks_parasite Pa
execute if entity @a[scores={char=29},team=purple] run scoreboard players set Pa Picks 1
execute if entity @a[scores={char=29},team=yellow] run scoreboard players set Pa Picks -1
execute if entity @e[tag=ban_29] run scoreboard players set Pa Picks -3
execute unless entity @a[scores={char=29}] unless entity @e[tag=ban_29] run scoreboard players reset Pa Picks

execute if entity @a[scores={char=30},team=purple] run scoreboard players set Engineer Picks 1
execute if entity @a[scores={char=30},team=yellow] run scoreboard players set Engineer Picks -1
execute if entity @e[tag=ban_30] run scoreboard players set Engineer Picks -3
execute unless entity @a[scores={char=30}] unless entity @e[tag=ban_30] run scoreboard players reset Engineer Picks

team add picks_drowned
team modify picks_drowned suffix "owned Captain"
team join picks_drowned Dr
execute if entity @a[scores={char=31},team=purple] run scoreboard players set Dr Picks 1
execute if entity @a[scores={char=31},team=yellow] run scoreboard players set Dr Picks -1
execute if entity @e[tag=ban_31] run scoreboard players set Dr Picks -3
execute unless entity @a[scores={char=31}] unless entity @e[tag=ban_31] run scoreboard players reset Dr Picks

execute if entity @a[scores={char=32},team=purple] run scoreboard players set Emperor Picks 1
execute if entity @a[scores={char=32},team=yellow] run scoreboard players set Emperor Picks -1
execute if entity @e[tag=ban_32] run scoreboard players set Emperor Picks -3
execute unless entity @a[scores={char=32}] unless entity @e[tag=ban_32] run scoreboard players reset Emperor Picks

execute if entity @a[scores={char=33},team=purple] run scoreboard players set Stray Picks 1
execute if entity @a[scores={char=33},team=yellow] run scoreboard players set Stray Picks -1
execute if entity @e[tag=ban_33] run scoreboard players set Stray Picks -3
execute unless entity @a[scores={char=33}] unless entity @e[tag=ban_33] run scoreboard players reset Stray Picks


execute if entity @a[scores={char=34},team=purple] run scoreboard players set Rainmaker Picks 1
execute if entity @a[scores={char=34},team=yellow] run scoreboard players set Rainmaker Picks -1
execute if entity @e[tag=ban_34] run scoreboard players set Rainmaker Picks -3
execute unless entity @a[scores={char=34}] unless entity @e[tag=ban_34] run scoreboard players reset Rainmaker Picks


execute if entity @a[scores={char=35},team=purple] run scoreboard players set Priestess Picks 1
execute if entity @a[scores={char=35},team=yellow] run scoreboard players set Priestess Picks -1
execute if entity @e[tag=ban_35] run scoreboard players set Priestess Picks -3
execute unless entity @a[scores={char=35}] unless entity @e[tag=ban_35] run scoreboard players reset Priestess Picks

team add picks_mazemaster
team modify picks_mazemaster suffix "ze Master"
team join picks_mazemaster Ma
execute if entity @a[scores={char=36},team=purple] run scoreboard players set Ma Picks 1
execute if entity @a[scores={char=36},team=yellow] run scoreboard players set Ma Picks -1
execute if entity @e[tag=ban_36] run scoreboard players set Ma Picks -3
execute unless entity @a[scores={char=36}] unless entity @e[tag=ban_36] run scoreboard players reset Ma Picks


execute if entity @a[scores={char=37},team=purple] run scoreboard players set Shapeless Picks 1
execute if entity @a[scores={char=37},team=yellow] run scoreboard players set Shapeless Picks -1
execute if entity @e[tag=ban_37] run scoreboard players set Shapeless Picks -3
execute unless entity @a[scores={char=37}] unless entity @e[tag=ban_37] run scoreboard players reset Shapeless Picks


execute if entity @a[scores={char=38},team=purple] run scoreboard players set Warden Picks 1
execute if entity @a[scores={char=38},team=yellow] run scoreboard players set Warden Picks -1
execute if entity @e[tag=ban_38] run scoreboard players set Warden Picks -3
execute unless entity @a[scores={char=38}] unless entity @e[tag=ban_38] run scoreboard players reset Warden Picks


execute if entity @a[scores={char=39},team=purple] run scoreboard players set Basilisk Picks 1
execute if entity @a[scores={char=39},team=yellow] run scoreboard players set Basilisk Picks -1
execute if entity @e[tag=ban_39] run scoreboard players set Basilisk Picks -3
execute unless entity @a[scores={char=39}] unless entity @e[tag=ban_39] run scoreboard players reset Basilisk Picks

execute if entity @a[scores={char=40},team=purple] run scoreboard players set Miner Picks 1
execute if entity @a[scores={char=40},team=yellow] run scoreboard players set Miner Picks -1
execute if entity @e[tag=ban_40] run scoreboard players set Miner Picks -3
execute unless entity @a[scores={char=40}] unless entity @e[tag=ban_40] run scoreboard players reset Miner Picks


execute if entity @a[scores={char=41},team=purple] run scoreboard players set Broodmother Picks 1
execute if entity @a[scores={char=41},team=yellow] run scoreboard players set Broodmother Picks -1
execute if entity @e[tag=ban_41] run scoreboard players set Broodmother Picks -3
execute unless entity @a[scores={char=41}] unless entity @e[tag=ban_41] run scoreboard players reset Broodmother Picks

execute if entity @a[scores={char=42},team=purple] run scoreboard players set Friged Picks 1
execute if entity @a[scores={char=42},team=yellow] run scoreboard players set Friged Picks -1
execute if entity @e[tag=ban_42] run scoreboard players set Friged Picks -3
execute unless entity @a[scores={char=42}] unless entity @e[tag=ban_42] run scoreboard players reset Friged Picks

team add picks_iceworm
team modify picks_iceworm suffix "e Worm"
team join picks_iceworm Ic
execute if entity @a[scores={char=43},team=purple] run scoreboard players set Ic Picks 1
execute if entity @a[scores={char=43},team=yellow] run scoreboard players set Ic Picks -1
execute if entity @e[tag=ban_43] run scoreboard players set Ic Picks -3
execute unless entity @a[scores={char=43}] unless entity @e[tag=ban_40] run scoreboard players reset Ic Picks

team add picks_raider
team modify picks_raider suffix "sert Raider"
team join picks_raider De
execute if entity @a[scores={char=44},team=purple] run scoreboard players set De Picks 1
execute if entity @a[scores={char=44},team=yellow] run scoreboard players set De Picks -1
execute if entity @e[tag=ban_44] run scoreboard players set De Picks -3
execute unless entity @a[scores={char=44}] unless entity @e[tag=ban_44] run scoreboard players reset De Picks

execute if entity @a[scores={char=45},team=purple] run scoreboard players set Stargazer Picks 1
execute if entity @a[scores={char=45},team=yellow] run scoreboard players set Stargazer Picks -1
execute if entity @e[tag=ban_45] run scoreboard players set Stargazer Picks -3
execute unless entity @a[scores={char=45}] unless entity @e[tag=ban_45] run scoreboard players reset Stargazer Picks

execute if entity @a[scores={char=46},team=purple] run scoreboard players set Dreadnought Picks 1
execute if entity @a[scores={char=46},team=yellow] run scoreboard players set Dreadnought Picks -1
execute if entity @e[tag=ban_46] run scoreboard players set Dreadnought Picks -3
execute unless entity @a[scores={char=46}] unless entity @e[tag=ban_46] run scoreboard players reset Dreadnought Picks

execute if entity @a[scores={char=47},team=purple] run scoreboard players set Mummy Picks 1
execute if entity @a[scores={char=47},team=yellow] run scoreboard players set Mummy Picks -1
execute if entity @e[tag=ban_47] run scoreboard players set Mummy Picks -3
execute unless entity @a[scores={char=47}] unless entity @e[tag=ban_47] run scoreboard players reset Mummy Picks

execute if entity @a[scores={char=48},team=purple] run scoreboard players set Artificer Picks 1
execute if entity @a[scores={char=48},team=yellow] run scoreboard players set Artificer Picks -1
execute if entity @e[tag=ban_48] run scoreboard players set Artificer Picks -3
execute unless entity @a[scores={char=48}] unless entity @e[tag=ban_48] run scoreboard players reset Artificer Picks

execute if entity @a[scores={char=49},team=purple] run scoreboard players set Aberration Picks 1
execute if entity @a[scores={char=49},team=yellow] run scoreboard players set Aberration Picks -1
execute if entity @e[tag=ban_49] run scoreboard players set Aberration Picks -3
execute unless entity @a[scores={char=49}] unless entity @e[tag=ban_49] run scoreboard players reset Aberration Picks

team add picks_chaos
team modify picks_chaos suffix "awling Chaos"
team join picks_chaos Cr
execute if entity @a[scores={char=50},team=purple] run scoreboard players set Cr Picks 1
execute if entity @a[scores={char=50},team=yellow] run scoreboard players set Cr Picks -1
execute if entity @e[tag=ban_50] run scoreboard players set Cr Picks -3
execute unless entity @a[scores={char=50}] unless entity @e[tag=ban_50] run scoreboard players reset Cr Picks

execute if entity @a[scores={char=51},team=purple] run scoreboard players set Jester Picks 1
execute if entity @a[scores={char=51},team=yellow] run scoreboard players set Jester Picks -1
execute if entity @e[tag=ban_51] run scoreboard players set Jester Picks -3
execute unless entity @a[scores={char=51}] unless entity @e[tag=ban_51] run scoreboard players reset Jester Picks

execute if entity @a[scores={char=52},team=purple] run scoreboard players set Sandbender Picks 1
execute if entity @a[scores={char=52},team=yellow] run scoreboard players set Sandbender Picks -1
execute if entity @e[tag=ban_52] run scoreboard players set Sandbender Picks -3
execute unless entity @a[scores={char=52}] unless entity @e[tag=ban_52] run scoreboard players reset Sandbender Picks

team add picks_stitchedsiren
team modify picks_stitchedsiren suffix "itched Siren"
team join picks_stitchedsiren St
execute if entity @a[scores={char=53},team=purple] run scoreboard players set St Picks 1
execute if entity @a[scores={char=53},team=yellow] run scoreboard players set St Picks -1
execute if entity @e[tag=ban_53] run scoreboard players set St Picks -3
execute unless entity @a[scores={char=53}] unless entity @e[tag=ban_56] run scoreboard players reset St Picks


execute if entity @a[scores={char=54},team=purple] run scoreboard players set Shaman Picks 1
execute if entity @a[scores={char=54},team=yellow] run scoreboard players set Shaman Picks -1
execute if entity @e[tag=ban_54] run scoreboard players set Shaman Picks -3
execute unless entity @a[scores={char=54}] unless entity @e[tag=ban_54] run scoreboard players reset Shaman Picks

execute if entity @a[scores={char=55},team=purple] run scoreboard players set Shadowdancer Picks 1
execute if entity @a[scores={char=55},team=yellow] run scoreboard players set Shadowdancer Picks -1
execute if entity @e[tag=ban_55] run scoreboard players set Shadowdancer Picks -3
execute unless entity @a[scores={char=55}] unless entity @e[tag=ban_55] run scoreboard players reset Shadowdancer Picks

team add picks_smokebride
team modify picks_smokebride suffix "oke Bride"
team join picks_smokebride Sm
execute if entity @a[scores={char=56},team=purple] run scoreboard players set Sm Picks 1
execute if entity @a[scores={char=56},team=yellow] run scoreboard players set Sm Picks -1
execute if entity @e[tag=ban_56] run scoreboard players set Sm Picks -3
execute unless entity @a[scores={char=56}] unless entity @e[tag=ban_56] run scoreboard players reset Sm Picks

execute if entity @a[scores={char=57},team=purple] run scoreboard players set Runaway Picks 1
execute if entity @a[scores={char=57},team=yellow] run scoreboard players set Runaway Picks -1
execute if entity @e[tag=ban_57] run scoreboard players set Runaway Picks -3
execute unless entity @a[scores={char=57}] unless entity @e[tag=ban_57] run scoreboard players reset Runaway Picks

execute if entity @a[scores={char=58},team=purple] run scoreboard players set Purifier Picks 1
execute if entity @a[scores={char=58},team=yellow] run scoreboard players set Purifier Picks -1
execute if entity @e[tag=ban_58] run scoreboard players set Purifier Picks -3
execute unless entity @a[scores={char=58}] unless entity @e[tag=ban_58] run scoreboard players reset Purifier Picks

team add picks_redmold
team modify picks_redmold suffix " Mold"
team join picks_redmold Red
execute if entity @a[scores={char=59},team=purple] run scoreboard players set Red Picks 1
execute if entity @a[scores={char=59},team=yellow] run scoreboard players set Red Picks -1
execute if entity @e[tag=ban_59] run scoreboard players set Red Picks -3
execute unless entity @a[scores={char=59}] unless entity @e[tag=ban_59] run scoreboard players reset Red Picks

team add picks_starfather
team modify picks_starfather suffix "r of Stars"
team join picks_starfather Fathe
execute if entity @a[scores={char=60},team=purple] run scoreboard players set Fathe Picks 1
execute if entity @a[scores={char=60},team=yellow] run scoreboard players set Fathe Picks -1
execute if entity @e[tag=ban_60] run scoreboard players set Fathe Picks -3
execute unless entity @a[scores={char=60}] unless entity @e[tag=ban_60] run scoreboard players reset Fathe Picks

execute if entity @a[scores={char=61},team=purple] run scoreboard players set Cryomancer Picks 1
execute if entity @a[scores={char=61},team=yellow] run scoreboard players set Cryomancer Picks -1
execute if entity @e[tag=ban_61] run scoreboard players set Cryomancer Picks -3
execute unless entity @a[scores={char=61}] unless entity @e[tag=ban_61] run scoreboard players reset Cryomancer Picks


team add picks_thornfiend
team modify picks_thornfiend prefix "Thorn F"
team join picks_thornfiend iend
execute if entity @a[scores={char=62},team=purple] run scoreboard players set iend Picks 1
execute if entity @a[scores={char=62},team=yellow] run scoreboard players set iend Picks -1
execute if entity @e[tag=ban_62] run scoreboard players set iend Picks -3
execute unless entity @a[scores={char=62}] unless entity @e[tag=ban_62] run scoreboard players reset iend Picks


execute if entity @a[scores={char=63},team=purple] run scoreboard players set Druid Picks 1
execute if entity @a[scores={char=63},team=yellow] run scoreboard players set Druid Picks -1
execute if entity @e[tag=ban_63] run scoreboard players set Druid Picks -3
execute unless entity @a[scores={char=63}] unless entity @e[tag=ban_63] run scoreboard players reset Druid Picks


team add picks_scarletlady
team modify picks_scarletlady prefix "Scarlet L"
team join picks_scarletlady ady
execute if entity @a[scores={char=64},team=purple] run scoreboard players set ady Picks 1
execute if entity @a[scores={char=64},team=yellow] run scoreboard players set ady Picks -1
execute if entity @e[tag=ban_64] run scoreboard players set ady Picks -3
execute unless entity @a[scores={char=64}] unless entity @e[tag=ban_62] run scoreboard players reset ady Picks


execute if entity @a[scores={char=65},team=purple] run scoreboard players set Ghoul Picks 1
execute if entity @a[scores={char=65},team=yellow] run scoreboard players set Ghoul Picks -1
execute if entity @e[tag=ban_65] run scoreboard players set Ghoul Picks -3
execute unless entity @a[scores={char=65}] unless entity @e[tag=ban_65] run scoreboard players reset Ghoul Picks

execute if entity @a[scores={char=66},team=purple] run scoreboard players set Lich Picks 1
execute if entity @a[scores={char=66},team=yellow] run scoreboard players set Lich Picks -1
execute if entity @e[tag=ban_66] run scoreboard players set Lich Picks -3
execute unless entity @a[scores={char=66}] unless entity @e[tag=ban_66] run scoreboard players reset Lich Picks

execute if entity @a[scores={char=67},team=purple] run scoreboard players set Revenant Picks 1
execute if entity @a[scores={char=67},team=yellow] run scoreboard players set Revenant Picks -1
execute if entity @e[tag=ban_67] run scoreboard players set Revenant Picks -3
execute unless entity @a[scores={char=67}] unless entity @e[tag=ban_67] run scoreboard players reset Revenant Picks

execute if entity @a[scores={char=68},team=purple] run scoreboard players set Enforcer Picks 1
execute if entity @a[scores={char=68},team=yellow] run scoreboard players set Enforcer Picks -1
execute if entity @e[tag=ban_68] run scoreboard players set Enforcer Picks -3
execute unless entity @a[scores={char=68}] unless entity @e[tag=ban_68] run scoreboard players reset Enforcer Picks

execute if entity @a[scores={char=69},team=purple] run scoreboard players set Painter Picks 1
execute if entity @a[scores={char=69},team=yellow] run scoreboard players set Painter Picks -1
execute if entity @e[tag=ban_69] run scoreboard players set Painter Picks -3
execute unless entity @a[scores={char=69}] unless entity @e[tag=ban_68] run scoreboard players reset Painter Picks
