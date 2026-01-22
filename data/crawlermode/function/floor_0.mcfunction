#descent
execute if score -wave crawlers_wave matches -210 run execute at @n[tag=crawlers_centre] run summon marker ~ ~ ~ {Tags:["crawlers_descent"]}
execute if score -wave crawlers_wave matches -210 run kill @e[tag=crawlers_campfire]
execute if score -wave crawlers_wave matches -211..1 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches -208 at @n[tag=crawlers_centre] positioned ~ ~6 ~1 run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["crawlers_camera"],NoGravity:1b}
execute if score -wave crawlers_wave matches -208 as @a[scores={char=1..}] at @n[tag=crawlers_centre] run gamemode spectator @s
execute if score -wave crawlers_wave matches -208..151 as @a[scores={char=1..}] at @n[tag=crawlers_centre] run spectate @n[tag=crawlers_camera]
execute if score -wave crawlers_wave matches -209 run effect give @a[scores={char=1..}] slowness 13 8 true
execute if score -wave crawlers_wave matches -209 as @a[scores={char=1..}] run attribute @s jump_strength modifier add crawl1 -10 add_value
execute if score -wave crawlers_wave matches -209 run execute at @e[tag=crawlers_descent] run clone 115 22 -128 103 21 -116 ~-6 ~3 ~-6

execute if score -wave crawlers_wave matches -209 at @e[tag=crawlers_descent] run clone -58 4 -253 -62 22 -249 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -200 at @e[tag=crawlers_descent] run clone -58 4 -259 -62 22 -255 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -190 at @e[tag=crawlers_descent] run clone -58 4 -265 -62 22 -261 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -180 at @e[tag=crawlers_descent] run clone -58 4 -271 -62 22 -267 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -170 at @e[tag=crawlers_descent] run clone -58 4 -277 -62 22 -273 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -160 at @e[tag=crawlers_descent] run clone -58 4 -283 -62 22 -279 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches -150 at @e[tag=crawlers_descent] run clone -58 4 -289 -62 22 -285 ~-2 ~-1 ~-2

execute if score -wave crawlers_wave matches -200 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -190 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -180 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -170 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -160 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..}] run execute as @n[tag=crawlers_camera] at @s run tp @s ~ ~-1 ~

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

execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..}] at @n[tag=crawlers_centre] run gamemode adventure @s
execute if score -wave crawlers_wave matches -150 run kill @e[tag=crawlers_camera]
execute if score -wave crawlers_wave matches -150 run effect clear @a[scores={char=1..}] slowness
execute if score -wave crawlers_wave matches -150 as @a[scores={char=1..}] run attribute @s jump_strength modifier remove crawl1

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

execute if score -wave crawlers_wave matches 1..320 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 3 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Welcome to ",color:"gray"},{text:"Mine Control",color:"red"},{text:"!",color:"gray"}]
execute if score -wave crawlers_wave matches 51 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Your main goal is simple: slay as many Aranite Crawlers as you can.",color:"gray"}]
execute if score -wave crawlers_wave matches 121 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" But beware: the Crawlers fight back, by trying to attack either you or your elevator.",color:"gray"}]

execute if score -wave crawlers_wave matches 201 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Hover over the names to see the Crawler's stats and abilities.",color:"gray"}]
execute if score -wave crawlers_wave matches 201 run tellraw @a[scores={char=1..}] {text:"Wave 1:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 201 run tellraw @a[scores={char=1..}] {text:"Crawler",color:"red",hover_event:{action:"show_text",value:[{text:"Crawler",color:"red"},{text:"\n"},{text:"10 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the Elevator",color:"gray"}]}}

execute if score -wave crawlers_wave matches 211 run scoreboard players set -HP campfire_hp 200
execute if score -wave crawlers_wave matches 211 run clone -130 20 -39 -126 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 221 run clone -124 20 -39 -120 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 231 run clone -118 20 -39 -114 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 241 run clone -112 20 -39 -108 26 -33 -118 20 -74

execute if score -wave crawlers_wave matches 261 run clone -106 20 -39 -102 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 261 run playsound block.wooden_trapdoor.open master @a[scores={char=1..}] -118 20 -74 2 0.8

execute if score -wave crawlers_wave matches 262 run summon spider -116 24 -72 {Health:10,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.8f},{id:max_health,base:10f}],NoAI:1b}

execute if score -wave crawlers_wave matches 281 run clone -112 20 -39 -108 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 291 run clone -118 20 -39 -114 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 301 run clone -124 20 -39 -120 26 -33 -118 20 -74
execute if score -wave crawlers_wave matches 311 run clone -130 20 -39 -126 26 -33 -118 20 -74

execute if score -wave crawlers_wave matches 325 unless entity @e[tag=crawlers_enemy] if score -HP campfire_hp matches 200.. at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},distance=..40] ~ ~ ~ 3 0.8
execute if score -wave crawlers_wave matches 320..330 unless entity @e[tag=crawlers_enemy] if score -HP campfire_hp matches 200.. run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 320..330 unless entity @e[tag=crawlers_enemy] unless score -HP campfire_hp matches 200.. run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Don't let the Crawlers reach your elevator.",color:"gray"}]
execute if score -wave crawlers_wave matches 320..330 unless entity @e[tag=crawlers_enemy] unless score -HP campfire_hp matches 200.. run scoreboard players set -wave crawlers_wave 210

execute if score -wave crawlers_wave matches 325..450 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 351 run effect give @a[scores={char=1..}] resistance infinite 10 true
execute if score -wave crawlers_wave matches 351 run tellraw @a[scores={char=1..}] {text:"Wave 2:",color:"dark_green",bold:true}
execute if score -wave crawlers_wave matches 351 run tellraw @a[scores={char=1..}] {text:"Digger",color:"red",hover_event:{action:"show_text",value:[{text:"Crawler",color:"red"},{text:"\n"},{text:"8 Health | Decent Speed",color:"gray"},{text:"\n"},{text:"Attacks the players. \nUnburrows from the ceiling.",color:"gray"}]}}
execute if score -wave crawlers_wave matches 361 run summon marker -118 32 -69 {Tags:["crawlers_burrow"]}

execute if score -wave crawlers_wave matches 450..460 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1
execute if score -wave crawlers_wave matches 455 unless entity @e[tag=crawlers_enemy] run execute at @n[tag=crawlers_campfire] run playsound minecraft:entity.player.levelup master @a[scores={char=1..},distance=..40] ~ ~ ~ 3 0.8
execute if score -wave crawlers_wave matches 460 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Congratulations, you have completed this short tutorial to ",color:"gray"},{text:"Mine Control",color:"red"},{text:"!",color:"gray"}]
execute if score -wave crawlers_wave matches 460 run scoreboard players set -wave crawlers_wave 4000

#exit
execute if score -wave crawlers_wave matches 4000..4100 unless entity @e[tag=crawlers_enemy] run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 4001 run execute at @e[tag=crawlers_campfire] run clone -56 6 -240 -68 5 -228 ~-6 ~3 ~-6

execute if score -wave crawlers_wave matches 4012 run execute at @e[tag=crawlers_campfire] run clone -56 10 -240 -68 9 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4012 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4027 run execute at @e[tag=crawlers_campfire] run clone -56 14 -240 -68 13 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4027 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4040 run execute at @e[tag=crawlers_campfire] run clone -56 18 -240 -68 17 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4040 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8

execute if score -wave crawlers_wave matches 4055 run execute at @e[tag=crawlers_campfire] run clone -56 22 -240 -68 21 -228 ~-6 ~3 ~-6
execute if score -wave crawlers_wave matches 4055 run execute at @e[tag=crawlers_campfire] run playsound block.iron_trapdoor.close master @a[distance=..30] ~ ~ ~ 2 0.8


execute if score -wave crawlers_wave matches 4053 run effect clear @a resistance
execute if score -wave crawlers_wave matches 4053 run tellraw @a[scores={char=1..}] ["",{text:"",bold:true,color:"red"},{text:"=",color:"red"},{text:"Tip",bold:true,color:"gold"},{text:"=",bold:true,color:"red"},{text:" Entering an elevator in a normal game will cause you to go deeper, until you eventually face off against a ",color:"gray"},{text:"Broodmother",color:"red"},{text:", but here you will be sent back to the lobby.",color:"gray"}]
execute if score -wave crawlers_wave matches 4050..4101 as @e[tag=crawlers_campfire] at @s unless entity @a[distance=1.6..] run scoreboard players set -wave crawlers_wave 4301

execute if score -wave crawlers_wave matches 4300..4371 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 4302 run effect give @a[scores={char=1..}] slowness 13 8 true
execute if score -wave crawlers_wave matches 4302 as @a[scores={char=1..}] run attribute @s jump_strength modifier add crawl1 -10 add_value
execute if score -wave crawlers_wave matches 4302 at @e[tag=crawlers_campfire] run summon marker ~ ~ ~ {Tags:["crawlers_downward"]}
execute if score -wave crawlers_wave matches 4302 as @a[scores={char=1..}] run kill @e[tag=crawlers_campfire]

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

execute if score -wave crawlers_wave matches 4312 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4322 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4332 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4342 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4352 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~
execute if score -wave crawlers_wave matches 4362 as @a[scores={char=1..}] run execute as @a[scores={char=1..}] at @s run tp @s ~ ~-1 ~

execute if score -wave crawlers_wave matches 4370 run effect clear @a[scores={char=1..}] slowness
execute if score -wave crawlers_wave matches 4370 as @a[scores={char=1..}] run attribute @s jump_strength modifier remove crawl1
execute if score -wave crawlers_wave matches 4370 run tp @a[scores={char=1..}] 97 11 -126
execute if score -wave crawlers_wave matches 4370 run kill @e[tag=crawlers_downward]
execute if score -wave crawlers_wave matches 4370 as @a[tag=waiting_respawn] run function crawlermode:respawn
execute if score -wave crawlers_wave matches 4370 run scoreboard players set @a[scores={char=1..}] crawlers_end 100
execute if score -wave crawlers_wave matches 4370 run scoreboard players set -wave crawlers_wave -212
