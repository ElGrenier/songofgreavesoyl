#descent
execute if score -wave crawlers_wave matches -210 run execute at @n[tag=crawlers_centre] run summon marker ~ ~ ~ {Tags:["crawlers_descent"]}
execute if score -wave crawlers_wave matches -210 run kill @e[tag=crawlers_campfire]
execute if score -wave crawlers_wave matches -211..1 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches -208 at @n[tag=crawlers_centre] positioned ~ ~6 ~1 run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["crawlers_camera"],NoGravity:1b}
execute if score -wave crawlers_wave matches -208 as @a[scores={char=1..},tag=!waiting_respawn] at @n[tag=crawlers_centre] run gamemode spectator @s
execute if score -wave crawlers_wave matches -208..-151 as @a[scores={char=1..},tag=!waiting_respawn] at @n[tag=crawlers_centre] run spectate @n[tag=crawlers_camera]
execute if score -wave crawlers_wave matches -209 run effect give @a[scores={char=1..},tag=!waiting_respawn] slowness 13 8 true
execute if score -wave crawlers_wave matches -209 as @a[scores={char=1..},tag=!waiting_respawn] run attribute @s jump_strength modifier add crawl1 -10 add_value
execute if score -wave crawlers_wave matches -209 run execute at @e[tag=crawlers_descent] run clone 115 22 -128 103 21 -116 ~-6 ~3 ~-6

execute if score -wave crawlers_wave matches -209 at @e[tag=crawlers_descent] run clone -58 4 -253 -62 22 -249 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -200 at @e[tag=crawlers_descent] run clone -58 4 -259 -62 22 -255 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -190 at @e[tag=crawlers_descent] run clone -58 4 -265 -62 22 -261 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -180 at @e[tag=crawlers_descent] run clone -58 4 -271 -62 22 -267 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -170 at @e[tag=crawlers_descent] run clone -58 4 -277 -62 22 -273 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -160 at @e[tag=crawlers_descent] run clone -58 4 -283 -62 22 -279 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -150 at @e[tag=crawlers_descent] run clone -58 4 -289 -62 22 -285 ~-2 ~-1 ~-2

execute if score -wave crawlers_wave matches -200 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -190 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -180 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -170 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -160 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~

execute if score -wave crawlers_wave matches -210 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -205 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -200 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -195 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -190 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -185 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -180 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -175 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -170 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -165 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -160 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -155 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches -150 at @e[tag=crawlers_descent] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1

execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..},tag=!waiting_respawn] at @n[tag=crawlers_centre] run gamemode adventure @s
execute if score -wave crawlers_wave matches -150 run kill @e[tag=crawlers_camera]
execute if score -wave crawlers_wave matches -150 run effect clear @a[scores={char=1..},tag=!waiting_respawn] slowness
execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..},tag=!waiting_respawn] run attribute @s jump_strength modifier remove crawl1

execute if score -wave crawlers_wave matches -145 at @e[tag=crawlers_descent] run execute at @n[tag=crawlers_centre] run summon marker ~ ~ ~ {Tags:["crawlers_campfire"]}
execute if score -wave crawlers_wave matches -145 at @e[tag=crawlers_descent] run execute at @n[tag=crawlers_centre] run setblock ~ ~ ~ campfire

execute if score -wave crawlers_wave matches -145 run execute at @e[tag=crawlers_campfire] run clone -56 22 -240 -68 21 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches -145 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8
execute if score -wave crawlers_wave matches -140 run execute at @e[tag=crawlers_campfire] run clone -56 18 -240 -68 17 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches -140 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8
execute if score -wave crawlers_wave matches -135 run execute at @e[tag=crawlers_campfire] run clone -56 14 -240 -68 13 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches -135 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8
execute if score -wave crawlers_wave matches -130 run execute at @e[tag=crawlers_campfire] run clone -56 10 -240 -68 9 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches -130 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8
execute if score -wave crawlers_wave matches -125 run execute at @e[tag=crawlers_campfire] run clone -56 6 -240 -68 5 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches -125 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches -105 as @e[tag=crawlers_descent] run kill @s

#ACTUAL GAMEPLAY ===========================================================================================================================================================================================

execute if score -wave crawlers_wave matches 1..700 run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 702..1200 run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 1302..2000 run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 2101..2700 run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 2801..4000 run scoreboard players add -wave crawlers_wave 1

#wave 1
execute if score -wave crawlers_wave matches 3 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Wave 6:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 3 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Crawlers",color:"red",hover_event:{action:"show_text",value:[{text:"Crawler",color:"red"},{text:"\n"},{text:"10 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator",color:"gray"}]}}
execute if score -wave crawlers_wave matches 3 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Diggers",color:"red",hover_event:{action:"show_text",value:[{text:"Digger",color:"red"},{text:"\n"},{text:"8 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 3 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Scouts",color:"red",hover_event:{action:"show_text",value:[{text:"Scout",color:"red"},{text:"\n"},{text:"12 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.\nBites into enemies in a short range, slowing them heavily.",color:"gray"}]}}

execute if score -wave crawlers_wave matches 20 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow"]}
execute if score -wave crawlers_wave matches 200 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 420 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 650 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow"]}

execute if score -wave crawlers_wave matches 3 run scoreboard players set -attacker_small crawler_spawns 1
execute if score -wave crawlers_wave matches 650 run scoreboard players set -attacker_small crawler_spawns 0

execute if score -wave crawlers_wave matches 700..701 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 705 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},tag=!waiting_respawn,distance=..40] ~ ~ ~ 3 0.8

#wave 2
execute if score -wave crawlers_wave matches 803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Wave 7:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Large Crawlers",color:"red",hover_event:{action:"show_text",value:[{text:"Large Crawler",color:"red"},{text:"\n"},{text:"17 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator",color:"gray"}]}}
execute if score -wave crawlers_wave matches 803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Scouts",color:"red",hover_event:{action:"show_text",value:[{text:"Scout",color:"red"},{text:"\n"},{text:"12 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.\nBites into enemies in a short range, slowing them heavily.",color:"gray"}]}}

execute if score -wave crawlers_wave matches 840 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 920 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 1090 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}

execute if score -wave crawlers_wave matches 803 run scoreboard players set -attacker_large crawler_spawns 1
execute if score -wave crawlers_wave matches 1190 run scoreboard players set -attacker_large crawler_spawns 0

execute if score -wave crawlers_wave matches 1200..1301 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 1205 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},tag=!waiting_respawn,distance=..40] ~ ~ ~ 3 0.8

#wave 3
execute if score -wave crawlers_wave matches 1303 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Wave 8:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 1303 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Diggers",color:"red",hover_event:{action:"show_text",value:[{text:"Digger",color:"red"},{text:"\n"},{text:"8 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 1303 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Large Diggers",color:"red",hover_event:{action:"show_text",value:[{text:"Large Digger",color:"red"},{text:"\n"},{text:"15 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 1303 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchers",color:"red",hover_event:{action:"show_text",value:[{text:"Hatcher",color:"red"},{text:"\n"},{text:"25 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator\nInstead of running into it, produces Hatchlings from a distance",color:"gray"}]}}
execute if score -wave crawlers_wave matches 1303 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchling",color:"red",hover_event:{action:"show_text",value:[{text:"Hatchling",color:"red"},{text:"\n"},{text:"6 Health | Quick Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator.",color:"gray"}]}}

execute if score -wave crawlers_wave matches 1330 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow"]}
execute if score -wave crawlers_wave matches 1430 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_big"]}
execute if score -wave crawlers_wave matches 1630 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow"]}
execute if score -wave crawlers_wave matches 1880 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_big"]}
execute if score -wave crawlers_wave matches 1990 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow"]}


execute if score -wave crawlers_wave matches 1303 run scoreboard players set -attacker_hatcher crawler_spawns 1
execute if score -wave crawlers_wave matches 1990 run scoreboard players set -attacker_hatcher crawler_spawns 0

execute if score -wave crawlers_wave matches 2000..2101 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 2005 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},tag=!waiting_respawn,distance=..40] ~ ~ ~ 3 0.8

#wave 4
execute if score -wave crawlers_wave matches 2103 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Wave 9:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 2103 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Crawlers",color:"red",hover_event:{action:"show_text",value:[{text:"Crawler",color:"red"},{text:"\n"},{text:"10 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2103 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Scouts",color:"red",hover_event:{action:"show_text",value:[{text:"Scout",color:"red"},{text:"\n"},{text:"12 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.\nBites into enemies in a short range, slowing them heavily.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2103 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchers",color:"red",hover_event:{action:"show_text",value:[{text:"Hatcher",color:"red"},{text:"\n"},{text:"25 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator\nInstead of running into it, produces Hatchlings from a distance",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2103 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchling",color:"red",hover_event:{action:"show_text",value:[{text:"Hatchling",color:"red"},{text:"\n"},{text:"6 Health | Quick Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator.",color:"gray"}]}}

execute if score -wave crawlers_wave matches 2103 run scoreboard players set -attacker_small crawler_spawns 1
execute if score -wave crawlers_wave matches 2680 run scoreboard players set -attacker_small crawler_spawns 0
execute if score -wave crawlers_wave matches 2103 run scoreboard players set -attacker_hatcher crawler_spawns 1
execute if score -wave crawlers_wave matches 2680 run scoreboard players set -attacker_hatcher crawler_spawns 0

execute if score -wave crawlers_wave matches 2130 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 2360 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=2,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 2590 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}


execute if score -wave crawlers_wave matches 2700..2801 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 2705 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},tag=!waiting_respawn,distance=..40] ~ ~ ~ 3 0.8

#wave 5
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Wave 10:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Crawlers",color:"red",hover_event:{action:"show_text",value:[{text:"Crawler",color:"red"},{text:"\n"},{text:"10 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Large Diggers",color:"red",hover_event:{action:"show_text",value:[{text:"Large Digger",color:"red"},{text:"\n"},{text:"15 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Scouts",color:"red",hover_event:{action:"show_text",value:[{text:"Scout",color:"red"},{text:"\n"},{text:"12 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.\nBites into enemies in a short range, slowing them heavily.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchers",color:"red",hover_event:{action:"show_text",value:[{text:"Hatcher",color:"red"},{text:"\n"},{text:"25 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator\nInstead of running into it, produces Hatchlings from a distance",color:"gray"}]}}
execute if score -wave crawlers_wave matches 2803 run tellraw @a[scores={char=1..},tag=!waiting_respawn] {text:"Hatchling",color:"red",hover_event:{action:"show_text",value:[{text:"Hatchling",color:"red"},{text:"\n"},{text:"6 Health | Quick Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator.",color:"gray"}]}}

execute if score -wave crawlers_wave matches 2830 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_big"]}
execute if score -wave crawlers_wave matches 3050 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_big"]}
execute if score -wave crawlers_wave matches 3060 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 3290 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}
execute if score -wave crawlers_wave matches 3470 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_big"]}
execute if score -wave crawlers_wave matches 3890 run execute at @e[tag=attacker_ceiling_spawnpoint,limit=1,sort=random] run summon marker ~ ~ ~ {Tags:["crawlers_burrow_scout"]}


execute if score -wave crawlers_wave matches 2803 run scoreboard players set -attacker_small crawler_spawns 1
execute if score -wave crawlers_wave matches 3980 run scoreboard players set -attacker_small crawler_spawns 0
execute if score -wave crawlers_wave matches 2803 run scoreboard players set -attacker_hatcher crawler_spawns 1
execute if score -wave crawlers_wave matches 3980 run scoreboard players set -attacker_hatcher crawler_spawns 0

#exit
execute if score -wave crawlers_wave matches 4000..4100 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 4005 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},tag=!waiting_respawn,distance=..40] ~ ~ ~ 3 0.8

execute if score -wave crawlers_wave matches 4001 run execute at @e[tag=crawlers_campfire] run clone -56 6 -240 -68 5 -228 ~-6 ~3 ~-6

execute if score -wave crawlers_wave matches 4012 run execute at @e[tag=crawlers_campfire] run clone -56 10 -240 -68 9 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4012 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4027 run execute at @e[tag=crawlers_campfire] run clone -56 14 -240 -68 13 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4027 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4040 run execute at @e[tag=crawlers_campfire] run clone -56 18 -240 -68 17 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4040 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4055 run execute at @e[tag=crawlers_campfire] run clone -56 22 -240 -68 21 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4055 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8



execute if score -wave crawlers_wave matches 4053 run tellraw @a[scores={char=1..},tag=!waiting_respawn] ["",{text:"[WARNING]",bold:true,color:"dark_red"},{text:" The elevator can now leave.",color:"red"}]
execute if score -wave crawlers_wave matches 4050..4101 as @e[tag=crawlers_campfire] at @s unless entity @a[distance=1.6..] run scoreboard players set -wave crawlers_wave 4301

execute if score -wave crawlers_wave matches 4300..4371 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 4302 run effect give @a[scores={char=1..},tag=!waiting_respawn] slowness 13 8 true
execute if score -wave crawlers_wave matches 4302 as @a[scores={char=1..},tag=!waiting_respawn] run attribute @s jump_strength modifier add crawl1 -10 add_value
execute if score -wave crawlers_wave matches 4302 at @e[tag=crawlers_campfire] run summon marker ~ ~ ~ {Tags:["crawlers_downward"]}
execute if score -wave crawlers_wave matches 4302 as @a[scores={char=1..},tag=!waiting_respawn] run kill @e[tag=crawlers_campfire]

execute if score -wave crawlers_wave matches 4302 at @e[tag=crawlers_downward] run clone -58 4 -289 -62 22 -285 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4312 at @e[tag=crawlers_downward] run clone -58 4 -283 -62 22 -279 ~-2 ~-3 ~-2
execute if score -wave crawlers_wave matches 4322 at @e[tag=crawlers_downward] run clone -58 4 -277 -62 22 -273 ~-2 ~-5 ~-2
execute if score -wave crawlers_wave matches 4332 at @e[tag=crawlers_downward] run clone -58 4 -271 -62 22 -267 ~-2 ~-7 ~-2
execute if score -wave crawlers_wave matches 4342 at @e[tag=crawlers_downward] run clone -58 4 -265 -62 22 -261 ~-2 ~-9 ~-2
execute if score -wave crawlers_wave matches 4352 at @e[tag=crawlers_downward] run clone -58 4 -259 -62 22 -255 ~-2 ~-11 ~-2
execute if score -wave crawlers_wave matches 4362 at @e[tag=crawlers_downward] run clone -58 4 -253 -62 22 -249 ~-2 ~-13 ~-2

execute if score -wave crawlers_wave matches 4302 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4307 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4312 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4317 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4322 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4327 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4332 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4337 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4342 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4347 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4352 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4357 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4362 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1
execute if score -wave crawlers_wave matches 4367 at @e[tag=crawlers_downward] run playsound block.chain.step master @a[distance=..30] ~ ~ ~ 2 0.1

execute if score -wave crawlers_wave matches 4312 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4322 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4332 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4342 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4352 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4362 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~-1 ~

execute if score -wave crawlers_wave matches 4370 run effect clear @a[scores={char=1..},tag=!waiting_respawn] slowness
execute if score -wave crawlers_wave matches 4370 as @a[scores={char=1..},tag=!waiting_respawn] run attribute @s jump_strength modifier remove crawl1
execute if score -wave crawlers_wave matches 4370 run tp @a[scores={char=1..},tag=!waiting_respawn] 97 11 -126
execute if score -wave crawlers_wave matches 4370 run kill @e[tag=crawlers_downward]
execute if score -wave crawlers_wave matches 4370 as @a[tag=waiting_respawn] run function crawlermode:respawn

execute if score -wave crawlers_wave matches 4370 run scoreboard players set -wave crawlers_wave -212
