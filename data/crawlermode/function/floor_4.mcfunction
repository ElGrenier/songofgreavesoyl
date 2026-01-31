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

execute if score -wave crawlers_wave matches -50 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"T",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -48 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"Th",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -46 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -44 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The ",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -42 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The B",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -40 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Br",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -38 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Bro",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -36 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broo",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -34 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Brood",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -32 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodm",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -30 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodmo",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -28 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodmot",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -26 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodmoth",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -24 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodmothe",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -22..-2 run title @a[scores={char=1..},tag=!waiting_respawn] title {text:"The Broodmother",bold:true,underlined:true,color:"red"}
execute if score -wave crawlers_wave matches -22 run title @a[scores={char=1..},tag=!waiting_respawn] subtitle {text:"Queen of The Crawlers",color:"dark_red"}
execute if score -wave crawlers_wave matches -22 run bossbar set broodmother visible true
execute if score -wave crawlers_wave matches -22 run summon spider -220 2 -139 {Health:300,NoAI:1b,PersistenceRequired:1b,Tags:["valid_spell_target","crawlers_enemy","crawlers_broodmother"],attributes:[{id:scale,base:3.6f},{id:max_health,base:300f}]}


#ACTUAL GAMEPLAY ===========================================================================================================================================================================================

execute if score -wave crawlers_wave matches 1..300 run scoreboard players add -wave crawlers_wave 1

execute if score -wave crawlers_wave matches 2801..4000 run scoreboard players add -wave crawlers_wave 1

#wave 1

execute if score -wave crawlers_wave matches 3 run scoreboard players set -attacker_small_slow crawler_spawns 1

execute if score -wave crawlers_wave matches 300..701 unless entity @e[tag=crawlers_broodmother] run scoreboard players set -attacker_small_slow crawler_spawns 0
execute if score -wave crawlers_wave matches 300..701 unless entity @e[tag=crawlers_broodmother] run bossbar set broodmother visible false
execute if score -wave crawlers_wave matches 300..701 unless entity @e[tag=crawlers_broodmother] run kill @e[type=spider]
execute if score -wave crawlers_wave matches 300..701 unless entity @e[tag=crawlers_broodmother] run scoreboard players set -wave crawlers_wave 4000

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
execute if score -wave crawlers_wave matches 4312 at @e[tag=crawlers_downward] run clone -58 4 -283 -62 22 -279 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4322 at @e[tag=crawlers_downward] run clone -58 4 -277 -62 22 -273 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4332 at @e[tag=crawlers_downward] run clone -58 4 -271 -62 22 -267 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4342 at @e[tag=crawlers_downward] run clone -58 4 -265 -62 22 -261 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4352 at @e[tag=crawlers_downward] run clone -58 4 -259 -62 22 -255 ~-2 ~-1 ~-2
execute if score -wave crawlers_wave matches 4362 at @e[tag=crawlers_downward] run clone -58 4 -253 -62 22 -249 ~-2 ~-1 ~-2


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

execute if score -wave crawlers_wave matches 4312 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~
execute if score -wave crawlers_wave matches 4322 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~
execute if score -wave crawlers_wave matches 4332 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~
execute if score -wave crawlers_wave matches 4342 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~
execute if score -wave crawlers_wave matches 4352 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~
execute if score -wave crawlers_wave matches 4362 as @a[scores={char=1..},tag=!waiting_respawn] run execute as @a[scores={char=1..},tag=!waiting_respawn] at @s run tp @s ~ ~1 ~

execute if score -wave crawlers_wave matches 4370 run effect clear @a[scores={char=1..},tag=!waiting_respawn] slowness
execute if score -wave crawlers_wave matches 4370 as @a[scores={char=1..},tag=!waiting_respawn] run attribute @s jump_strength modifier remove crawl1
execute if score -wave crawlers_wave matches 4370 run tp @a[scores={char=1..},tag=!waiting_respawn] 97 11 -126
execute if score -dif crawlers_dif matches 1 if score -wave crawlers_wave matches 4370 run scoreboard players set @a[scores={char=1..},tag=!waiting_respawn] crawlers_end 100
execute if score -wave crawlers_wave matches 4370 run kill @e[tag=crawlers_downward]
execute if score -wave crawlers_wave matches 4370 as @a[tag=waiting_respawn] run function crawlermode:respawn

execute if score -wave crawlers_wave matches 4370 run scoreboard players set -wave crawlers_wave -212
