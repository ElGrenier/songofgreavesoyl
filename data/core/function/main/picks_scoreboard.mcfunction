# team add bans_color
# team modify bans_color color dark_red
# team join bans_color -=Bans=-



scoreboard objectives modify Picks numberformat blank

#scoreboard players set bans Picks -2
#scoreboard players display name map Picks {text:"-=Bans=-",color:"red",bold:1b}


#scoreboard players set map Picks -4
#scoreboard players display name map Picks {text:"-=Map=-",color:"aqua",bold:1b}


# maps
#
execute if score map lobby matches 1 run scoreboard players set map_name Picks -5

execute if score map lobby matches 1 run scoreboard players display name map_name Picks "Old Woods"
execute if score map lobby matches 3 run scoreboard players display name map_name Picks "Court of the Kraken King"
execute if score map lobby matches 4 run scoreboard players display name map_name Picks "Temple of Warper"
execute if score map lobby matches 5 run scoreboard players display name map_name Picks "The Laboratory"
execute if score map lobby matches 6 run scoreboard players display name map_name Picks "Snowguard's Fortress"
execute if score map lobby matches 7 run scoreboard players display name map_name Picks "Ruins of Poshh'uh"
execute if score map lobby matches 8 run scoreboard players display name map_name Picks "Black Bridge"
execute if score map lobby matches 9 run scoreboard players display name map_name Picks "Realm of Death"
execute if score map lobby matches 10 run scoreboard players display name map_name Picks "Valley of Bones"
execute if score map lobby matches 11 run scoreboard players display name map_name Picks "Almub Mansion"
execute if score map lobby matches 12 run scoreboard players display name map_name Picks "Aranite Mines"
execute if score map lobby matches 13 run scoreboard players display name map_name Picks "Frozen Burrow"
execute if score map lobby matches 14 run scoreboard players display name map_name Picks "Damned Vault"
execute if score map lobby matches 15 run scoreboard players display name map_name Picks "Throne of Azathoth"
execute if score map lobby matches 16 run scoreboard players display name map_name Picks "The Arbiter's Mausoleum"
execute if score map lobby matches 17 run scoreboard players display name map_name Picks "The Island"
execute if score map lobby matches 18 run scoreboard players display name map_name Picks "Shady Alleys"
execute if score map lobby matches 19 run scoreboard players display name map_name Picks "Parasite Chambers"
execute if score map lobby matches 20 run scoreboard players display name map_name Picks "Lost Halls"
execute if score map lobby matches 21 run scoreboard players display name map_name Picks "Heart of the Swamp"
execute if score map lobby matches 22 run scoreboard players display name map_name Picks "Fossiled Tomb"



#chars

# execute if entity @e[tag=ban_stand] run scoreboard players set -=Bans=- Picks -2
# execute unless entity @e[tag=ban_stand] run scoreboard players reset -=Bans=- Picks

execute if entity @a[scores={char=1},team=purple] run scoreboard players set Demonslayer Picks 1
execute if entity @a[scores={char=1},team=yellow] run scoreboard players set Demonslayer Picks -1
execute if entity @e[tag=ban_1] run scoreboard players set Demonslayer Picks -3
execute unless entity @a[scores={char=1}] unless entity @e[tag=ban_1] run scoreboard players reset Demonslayer Picks

execute if entity @a[scores={char=2},team=purple] run scoreboard players set Huntress Picks 1
execute if entity @a[scores={char=2},team=yellow] run scoreboard players set Huntress Picks -1
execute if entity @e[tag=ban_2] run scoreboard players set Huntress Picks -3
execute unless entity @a[scores={char=2}] unless entity @e[tag=ban_2] run scoreboard players reset Huntress Picks


execute if entity @a[scores={char=3}] run scoreboard players display name picks_paladin Picks "Frozen Paladin"
execute if entity @a[scores={char=3},team=purple] run scoreboard players set picks_paladin Picks 1
execute if entity @a[scores={char=3},team=yellow] run scoreboard players set picks_paladin Picks -1
execute if entity @e[tag=ban_3] run scoreboard players set picks_paladin Picks -3
execute unless entity @a[scores={char=3}] unless entity @e[tag=ban_3] run scoreboard players reset picks_paladin Picks

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

execute if entity @a[scores={char=7}] run scoreboard players display name picks_paladin Picks "Red-Eyes Dragon"
execute if entity @a[scores={char=7},team=purple] run scoreboard players set picks_dragon Picks 1
execute if entity @a[scores={char=7},team=yellow] run scoreboard players set picks_dragon Picks -1
execute if entity @e[tag=ban_7] run scoreboard players set picks_dragon Picks -3
execute unless entity @a[scores={char=7}] unless entity @e[tag=ban_7] run scoreboard players reset picks_dragon Picks

execute if entity @a[scores={char=8},team=purple] run scoreboard players set Trickstress Picks 1
execute if entity @a[scores={char=8},team=yellow] run scoreboard players set Trickstress Picks -1
execute if entity @e[tag=ban_8] run scoreboard players set Trickstress Picks -3
execute unless entity @a[scores={char=8}] unless entity @e[tag=ban_8] run scoreboard players reset Trickstress Picks


execute if entity @a[scores={char=9}] run scoreboard players display name picks_crawler Picks "Sand Crawler"
execute if entity @a[scores={char=9},team=purple] run scoreboard players set picks_crawler Picks 1
execute if entity @a[scores={char=9},team=yellow] run scoreboard players set picks_crawler Picks -1
execute if entity @e[tag=ban_9] run scoreboard players set picks_crawler Picks -3
execute unless entity @a[scores={char=9}] unless entity @e[tag=ban_9] run scoreboard players reset picks_crawler Picks

execute if entity @a[scores={char=10},team=purple] run scoreboard players set Kraken Picks 1
execute if entity @a[scores={char=10},team=yellow] run scoreboard players set Kraken Picks -1
execute if entity @e[tag=ban_10] run scoreboard players set Kraken Picks -3
execute unless entity @a[scores={char=10}] unless entity @e[tag=ban_10] run scoreboard players reset Kraken Picks

execute if entity @a[scores={char=11}] run scoreboard players display name picks_bomb Picks "Bomb Master"
execute if entity @a[scores={char=11},team=purple] run scoreboard players set picks_bomb Picks 1
execute if entity @a[scores={char=11},team=yellow] run scoreboard players set picks_bomb Picks -1
execute if entity @e[tag=ban_11] run scoreboard players set picks_bomb Picks -3
execute unless entity @a[scores={char=11}] unless entity @e[tag=ban_11] run scoreboard players reset picks_bomb Picks


execute if entity @a[scores={char=12}] run scoreboard players display name picks_slime Picks "Slime Core"
execute if entity @a[scores={char=12},team=purple] run scoreboard players set picks_slime Picks 1
execute if entity @a[scores={char=12},team=yellow] run scoreboard players set picks_slime Picks -1
execute if entity @e[tag=ban_12] run scoreboard players set picks_slime Picks -3
execute unless entity @a[scores={char=12}] unless entity @e[tag=ban_12] run scoreboard players reset picks_slime Picks


execute if entity @a[scores={char=13}] run scoreboard players display name picks_skeleton Picks "Skeletal Phantom"
execute if entity @a[scores={char=13},team=purple] run scoreboard players set picks_skeleton Picks 1
execute if entity @a[scores={char=13},team=yellow] run scoreboard players set picks_skeleton Picks -1
execute if entity @e[tag=ban_13] run scoreboard players set picks_skeleton Picks -3
execute unless entity @a[scores={char=13}] unless entity @e[tag=ban_13] run scoreboard players reset picks_skeleton Picks


execute if entity @a[scores={char=14}] run scoreboard players display name picks_skyqueen Picks "Sky Queen"
execute if entity @a[scores={char=14},team=purple] run scoreboard players set picks_skyqueen Picks 1
execute if entity @a[scores={char=14},team=yellow] run scoreboard players set picks_skyqueen Picks -1
execute if entity @e[tag=ban_14] run scoreboard players set picks_skyqueen Picks -3
execute unless entity @a[scores={char=14}] unless entity @e[tag=ban_14] run scoreboard players reset picks_skyqueen Picks

execute if entity @a[scores={char=15},team=purple] run scoreboard players set Shard Picks 1
execute if entity @a[scores={char=15},team=yellow] run scoreboard players set Shard Picks -1
execute if entity @e[tag=ban_15] run scoreboard players set Shard Picks -3
execute unless entity @a[scores={char=15}] unless entity @e[tag=ban_15] run scoreboard players reset Shard Picks


execute if entity @a[scores={char=16}] run scoreboard players display name picks_treespirit Picks "Tree Spirit"
execute if entity @a[scores={char=16},team=purple] run scoreboard players set picks_treespirit Picks 1
execute if entity @a[scores={char=16},team=yellow] run scoreboard players set picks_treespirit Picks -1
execute if entity @e[tag=ban_16] run scoreboard players set picks_treespirit Picks -3
execute unless entity @a[scores={char=16}] unless entity @e[tag=ban_16] run scoreboard players reset picks_treespirit Picks

execute if entity @a[scores={char=17},team=purple] run scoreboard players set Technomancer Picks 1
execute if entity @a[scores={char=17},team=yellow] run scoreboard players set Technomancer Picks -1
execute if entity @e[tag=ban_17] run scoreboard players set Technomancer Picks -3
execute unless entity @a[scores={char=17}] unless entity @e[tag=ban_17] run scoreboard players reset Technomancer Picks

execute if entity @a[scores={char=18},team=purple] run scoreboard players set Golem Picks 1
execute if entity @a[scores={char=18},team=yellow] run scoreboard players set Golem Picks -1
execute if entity @e[tag=ban_18] run scoreboard players set Golem Picks -3
execute unless entity @a[scores={char=18}] unless entity @e[tag=ban_18] run scoreboard players reset Golem Picks

execute if entity @a[scores={char=19}] run scoreboard players display name picks_lunatic Picks "Lunatic and her Demon"
execute if entity @a[scores={char=19},team=purple] run scoreboard players set picks_lunatic Picks 1
execute if entity @a[scores={char=19},team=yellow] run scoreboard players set picks_lunatic Picks -1
execute if entity @e[tag=ban_19] run scoreboard players set picks_lunatic Picks -3
execute unless entity @a[scores={char=19}] unless entity @e[tag=ban_19] run scoreboard players reset picks_lunatic Picks

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

execute if entity @a[scores={char=24}] run scoreboard players display name picks_sandwitch Picks "Sand Witch"
execute if entity @a[scores={char=24},team=purple] run scoreboard players set picks_sandwitch Picks 1
execute if entity @a[scores={char=24},team=yellow] run scoreboard players set picks_sandwitch Picks -1
execute if entity @e[tag=ban_24] run scoreboard players set picks_sandwitch Picks -3
execute unless entity @a[scores={char=24}] unless entity @e[tag=ban_24] run scoreboard players reset picks_sandwitch Picks

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

execute if entity @a[scores={char=29}] run scoreboard players display name picks_parasite Picks "Parasite Host"
execute if entity @a[scores={char=29},team=purple] run scoreboard players set picks_parasite Picks 1
execute if entity @a[scores={char=29},team=yellow] run scoreboard players set picks_parasite Picks -1
execute if entity @e[tag=ban_29] run scoreboard players set picks_parasite Picks -3
execute unless entity @a[scores={char=29}] unless entity @e[tag=ban_29] run scoreboard players reset picks_parasite Picks

execute if entity @a[scores={char=30},team=purple] run scoreboard players set Engineer Picks 1
execute if entity @a[scores={char=30},team=yellow] run scoreboard players set Engineer Picks -1
execute if entity @e[tag=ban_30] run scoreboard players set Engineer Picks -3
execute unless entity @a[scores={char=30}] unless entity @e[tag=ban_30] run scoreboard players reset Engineer Picks

execute if entity @a[scores={char=31}] run scoreboard players display name picks_drowned Picks "Drowned Captain"
execute if entity @a[scores={char=31},team=purple] run scoreboard players set picks_drowned Picks 1
execute if entity @a[scores={char=31},team=yellow] run scoreboard players set picks_drowned Picks -1
execute if entity @e[tag=ban_31] run scoreboard players set picks_drowned Picks -3
execute unless entity @a[scores={char=31}] unless entity @e[tag=ban_31] run scoreboard players reset picks_drowned Picks

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

execute if entity @a[scores={char=36}] run scoreboard players display name picks_mazemaster Picks "Maze Master"
execute if entity @a[scores={char=36},team=purple] run scoreboard players set picks_mazemaster Picks 1
execute if entity @a[scores={char=36},team=yellow] run scoreboard players set picks_mazemaster Picks -1
execute if entity @e[tag=ban_36] run scoreboard players set picks_mazemaster Picks -3
execute unless entity @a[scores={char=36}] unless entity @e[tag=ban_36] run scoreboard players reset picks_mazemaster Picks


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

execute if entity @a[scores={char=43}] run scoreboard players display name picks_iceworm Picks "Ice Worm"
execute if entity @a[scores={char=43},team=purple] run scoreboard players set picks_iceworm Picks 1
execute if entity @a[scores={char=43},team=yellow] run scoreboard players set picks_iceworm Picks -1
execute if entity @e[tag=ban_43] run scoreboard players set picks_iceworm Picks -3
execute unless entity @a[scores={char=43}] unless entity @e[tag=ban_40] run scoreboard players reset picks_iceworm Picks

execute if entity @a[scores={char=44}] run scoreboard players display name picks_raider Picks "Desert Raider"
execute if entity @a[scores={char=44},team=purple] run scoreboard players set picks_raider Picks 1
execute if entity @a[scores={char=44},team=yellow] run scoreboard players set picks_raider Picks -1
execute if entity @e[tag=ban_44] run scoreboard players set picks_raider Picks -3
execute unless entity @a[scores={char=44}] unless entity @e[tag=ban_44] run scoreboard players reset picks_raider Picks

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

execute if entity @a[scores={char=50}] run scoreboard players display name picks_chaos Picks "Crawling Chaos"
execute if entity @a[scores={char=50},team=purple] run scoreboard players set picks_chaos Picks 1
execute if entity @a[scores={char=50},team=yellow] run scoreboard players set picks_chaos Picks -1
execute if entity @e[tag=ban_50] run scoreboard players set picks_chaos Picks -3
execute unless entity @a[scores={char=50}] unless entity @e[tag=ban_50] run scoreboard players reset picks_chaos Picks

execute if entity @a[scores={char=51},team=purple] run scoreboard players set Jester Picks 1
execute if entity @a[scores={char=51},team=yellow] run scoreboard players set Jester Picks -1
execute if entity @e[tag=ban_51] run scoreboard players set Jester Picks -3
execute unless entity @a[scores={char=51}] unless entity @e[tag=ban_51] run scoreboard players reset Jester Picks

execute if entity @a[scores={char=52},team=purple] run scoreboard players set Sandbender Picks 1
execute if entity @a[scores={char=52},team=yellow] run scoreboard players set Sandbender Picks -1
execute if entity @e[tag=ban_52] run scoreboard players set Sandbender Picks -3
execute unless entity @a[scores={char=52}] unless entity @e[tag=ban_52] run scoreboard players reset Sandbender Picks


execute if entity @a[scores={char=53}] run scoreboard players display name picks_stitchedsiren Picks "Stitched Siren"
execute if entity @a[scores={char=53},team=purple] run scoreboard players set picks_stitchedsiren Picks 1
execute if entity @a[scores={char=53},team=yellow] run scoreboard players set picks_stitchedsiren Picks -1
execute if entity @e[tag=ban_53] run scoreboard players set picks_stitchedsiren Picks -3
execute unless entity @a[scores={char=53}] unless entity @e[tag=ban_56] run scoreboard players reset picks_stitchedsiren Picks

execute if entity @a[scores={char=54},team=purple] run scoreboard players set Shaman Picks 1
execute if entity @a[scores={char=54},team=yellow] run scoreboard players set Shaman Picks -1
execute if entity @e[tag=ban_54] run scoreboard players set Shaman Picks -3
execute unless entity @a[scores={char=54}] unless entity @e[tag=ban_54] run scoreboard players reset Shaman Picks

execute if entity @a[scores={char=55},team=purple] run scoreboard players set Shadowdancer Picks 1
execute if entity @a[scores={char=55},team=yellow] run scoreboard players set Shadowdancer Picks -1
execute if entity @e[tag=ban_55] run scoreboard players set Shadowdancer Picks -3
execute unless entity @a[scores={char=55}] unless entity @e[tag=ban_55] run scoreboard players reset Shadowdancer Picks


execute if entity @a[scores={char=56}] run scoreboard players display name picks_smokebride Picks "Smoke Bride"
execute if entity @a[scores={char=56},team=purple] run scoreboard players set picks_smokebride Picks 1
execute if entity @a[scores={char=56},team=yellow] run scoreboard players set picks_smokebride Picks -1
execute if entity @e[tag=ban_56] run scoreboard players set picks_smokebride Picks -3
execute unless entity @a[scores={char=56}] unless entity @e[tag=ban_56] run scoreboard players reset picks_smokebride Picks

execute if entity @a[scores={char=57},team=purple] run scoreboard players set Runaway Picks 1
execute if entity @a[scores={char=57},team=yellow] run scoreboard players set Runaway Picks -1
execute if entity @e[tag=ban_57] run scoreboard players set Runaway Picks -3
execute unless entity @a[scores={char=57}] unless entity @e[tag=ban_57] run scoreboard players reset Runaway Picks

execute if entity @a[scores={char=58},team=purple] run scoreboard players set Purifier Picks 1
execute if entity @a[scores={char=58},team=yellow] run scoreboard players set Purifier Picks -1
execute if entity @e[tag=ban_58] run scoreboard players set Purifier Picks -3
execute unless entity @a[scores={char=58}] unless entity @e[tag=ban_58] run scoreboard players reset Purifier Picks


execute if entity @a[scores={char=59}] run scoreboard players display name picks_redmold Picks "Red Mold"
execute if entity @a[scores={char=59},team=purple] run scoreboard players set picks_redmold Picks 1
execute if entity @a[scores={char=59},team=yellow] run scoreboard players set picks_redmold Picks -1
execute if entity @e[tag=ban_59] run scoreboard players set picks_redmold Picks -3
execute unless entity @a[scores={char=59}] unless entity @e[tag=ban_59] run scoreboard players reset picks_redmold Picks


execute if entity @a[scores={char=60}] run scoreboard players display name picks_starfather Picks "Father of Stars"
execute if entity @a[scores={char=60},team=purple] run scoreboard players set picks_starfather Picks 1
execute if entity @a[scores={char=60},team=yellow] run scoreboard players set picks_starfather Picks -1
execute if entity @e[tag=ban_60] run scoreboard players set picks_starfather Picks -3
execute unless entity @a[scores={char=60}] unless entity @e[tag=ban_60] run scoreboard players reset picks_starfather Picks

execute if entity @a[scores={char=61},team=purple] run scoreboard players set Cryomancer Picks 1
execute if entity @a[scores={char=61},team=yellow] run scoreboard players set Cryomancer Picks -1
execute if entity @e[tag=ban_61] run scoreboard players set Cryomancer Picks -3
execute unless entity @a[scores={char=61}] unless entity @e[tag=ban_61] run scoreboard players reset Cryomancer Picks


execute if entity @a[scores={char=62}] run scoreboard players display name picks_thornfiend Picks "Thorn Fiend"
execute if entity @a[scores={char=62},team=purple] run scoreboard players set picks_thornfiend Picks 1
execute if entity @a[scores={char=62},team=yellow] run scoreboard players set picks_thornfiend Picks -1
execute if entity @e[tag=ban_62] run scoreboard players set picks_thornfiend Picks -3
execute unless entity @a[scores={char=62}] unless entity @e[tag=ban_62] run scoreboard players reset picks_thornfiend Picks


execute if entity @a[scores={char=63},team=purple] run scoreboard players set Druid Picks 1
execute if entity @a[scores={char=63},team=yellow] run scoreboard players set Druid Picks -1
execute if entity @e[tag=ban_63] run scoreboard players set Druid Picks -3
execute unless entity @a[scores={char=63}] unless entity @e[tag=ban_63] run scoreboard players reset Druid Picks


execute if entity @a[scores={char=64}] run scoreboard players display name picks_scarletlady Picks "Scarlet Lady"
execute if entity @a[scores={char=64},team=purple] run scoreboard players set picks_scarletlady Picks 1
execute if entity @a[scores={char=64},team=yellow] run scoreboard players set picks_scarletlady Picks -1
execute if entity @e[tag=ban_64] run scoreboard players set picks_scarletlady Picks -3
execute unless entity @a[scores={char=64}] unless entity @e[tag=ban_62] run scoreboard players reset picks_scarletlady Picks


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
