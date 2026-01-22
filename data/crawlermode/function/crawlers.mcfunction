function crawlermode:campfire
function crawlermode:broodmother
function crawlermode:crawler_spawns
#function crawlermode:final
function crawlermode:twins

bossbar set broodmother players @a
bossbar set broodmother2 players @a
bossbar set broodmother3 players @a


execute if score -floor crawlers_floor matches 0 run function crawlermode:floor_0
execute if score -floor crawlers_floor matches 2 run function crawlermode:floor_1
execute if score -floor crawlers_floor matches 3 run function crawlermode:floor_2
execute if score -floor crawlers_floor matches 4 run function crawlermode:floor_3
execute if score -floor crawlers_floor matches 5 run function crawlermode:floor_4
execute if score -floor crawlers_floor matches 6 run function crawlermode:floor_5
execute if score -floor crawlers_floor matches 7 run function crawlermode:floor_6

execute at @e[tag=crawlers_campfire] run particle flame ~ ~0.3 ~ 0 3 0 0.1 0
execute at @e[tag=crawlers_campfire] run particle minecraft:campfire_cosy_smoke ~ ~0.3 ~ 0.3 0.2 0.3 0 1

scoreboard players set @e[tag=crawlers_enemy] Team -6699
execute as @e[tag=crawlers_enemy] run attribute @s safe_fall_distance base set 10000

execute as @e[tag=crawlers_enemy,scores={lifetime=..2}] run scoreboard players set @s CC_root -11
execute as @e[tag=crawlers_enemy,scores={lifetime=..2}] run scoreboard players set @s CC_stun -11
execute as @e[tag=crawlers_enemy,scores={lifetime=..2}] run scoreboard players set @s CC_knockup 0

#elevator
execute positioned 97 10 -126 if entity @p[distance=..5] run scoreboard players add -elevator crawlers_wave 1
execute if score -elevator crawlers_wave matches 30.. run scoreboard players set -elevator crawlers_wave 0
execute positioned 97 10 -126 unless entity @p[distance=..5] run scoreboard players set -elevator crawlers_wave 0

execute if score -elevator crawlers_wave matches 1 run clone 94 10 -168 100 4 -174 94 10 -129
execute if score -elevator crawlers_wave matches 1 run execute positioned 97 13 -126 run playsound block.chain.step master @a[distance=..5] ~ ~ ~ 2 0.1

execute if score -elevator crawlers_wave matches 11 run clone 94 10 -157 100 4 -163 94 10 -129
execute if score -elevator crawlers_wave matches 11 run execute positioned 97 13 -126 run playsound block.chain.step master @a[distance=..5] ~ ~ ~ 2 0.1

execute if score -elevator crawlers_wave matches 21 run clone 94 10 -146 100 4 -152 94 10 -129
execute if score -elevator crawlers_wave matches 21 run execute positioned 97 13 -126 run playsound block.chain.step master @a[distance=..5] ~ ~ ~ 2 0.1


#base crawler
#execute at @a[scores={char=1..}] as @e[tag=crawlers_crawlerboi,distance=20..,scores={lifetime=1..}] run damage @s 0 generic by @p from @p
execute at @a[scores={char=1..}] as @e[tag=crawlers_crawlerboi,distance=..60,scores={lifetime=1}] run damage @s 0 generic by @p from @p
execute at @a[scores={char=1..}] as @e[tag=crawlers_crawlerboi,distance=4..,scores={lifetime=1}] run effect give @s speed 1 1 true
execute as @p[scores={char=1..}] run data merge entity @e[type=minecraft:spider,limit=1,sort=random] {AngerTime:10000}

scoreboard players add @e[tag=crawlers_enemy] lifetime 1

#base crawler extinguishing edition
execute as @e[tag=crawlers_crawlerattacker,tag=!crawlers_large,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=!taunt_source_miner] at @s run tp @s ^ ^ ^0.057 facing entity @n[tag=crawlers_campfire]
execute as @e[tag=crawlers_crawlerattacker,tag=crawlers_large,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=!taunt_source_miner] at @s run tp @s ^ ^ ^0.051 facing entity @n[tag=crawlers_campfire]
execute as @e[tag=crawlers_fastbois,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=!taunt_source_miner] at @s run tp @s ^ ^ ^0.02 facing entity @n[tag=crawlers_campfire]

execute as @e[tag=crawlers_crawlerattacker,tag=!crawlers_large,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=taunt_source_miner] at @s run tp @s ^ ^ ^0.057 facing entity @p[scores={char=40},distance=1..]
execute as @e[tag=crawlers_crawlerattacker,tag=crawlers_large,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=taunt_source_miner] at @s run tp @s ^ ^ ^0.051 facing entity @p[scores={char=40},distance=1..]
execute as @e[tag=crawlers_fastbois,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0},tag=taunt_source_miner] at @s run tp @s ^ ^ ^0.02 facing entity @p[scores={char=40},distance=1..]


execute as @e[tag=crawlers_crawlerattacker] at @s if block ~ ~ ~ #minecraft:dash run tp @s ~ ~-0.05 ~
execute as @e[tag=crawlers_crawlerattacker] at @s run effect give @s weakness infinite 14 true
execute as @e[tag=crawlers_crawlerattacker] at @s run particle dust{color:[1.000,0.753,0.169],scale:3} ~ ~ ~ 0.1 0 0.1 0 1

execute as @e[tag=crawlers_crawlerattacker] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run particle lava ~ ~1 ~ 1 1 1 0.1 10
execute as @e[tag=crawlers_crawlerattacker] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run particle smoke ~ ~1 ~ 1 1 1 0.1 10
execute as @e[tag=crawlers_crawlerattacker] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run playsound block.fire.extinguish master @a[scores={char=1..},distance=..20] ~ ~ ~ 1 0.8
execute as @e[tag=crawlers_crawlerattacker,tag=crawlers_crawlerbomber] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run particle explosion ~ ~1 ~ 0.6 0.6 0.6 0 4
execute as @e[tag=crawlers_crawlerattacker,tag=!crawlers_crawlerbomber,tag=!crawlers_large] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run scoreboard players remove -HP campfire_hp 5
execute as @e[tag=crawlers_crawlerattacker,tag=!crawlers_crawlerbomber,tag=crawlers_large] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run scoreboard players remove -HP campfire_hp 15
execute as @e[tag=crawlers_crawlerattacker,tag=crawlers_crawlerbomber,tag=!crawlers_large] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run scoreboard players remove -HP campfire_hp 35
execute as @e[tag=crawlers_crawlerattacker] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run kill @s

#hatcher
execute as @e[tag=crawlers_crawlerhatcher,scores={CC_stun=..0,CC_knockup=..0,CC_root=..0}] at @s if entity @e[tag=crawlers_campfire,distance=8..] run tp @s ^ ^ ^0.05 facing entity @n[tag=crawlers_campfire]
execute as @e[tag=crawlers_crawlerhatcher] at @s if block ~ ~ ~ #minecraft:dash run tp @s ~ ~-0.05 ~
execute as @e[tag=crawlers_crawlerhatcher] at @s run effect give @s weakness infinite 14 true
execute as @e[tag=crawlers_crawlerhatcher] at @s rotated ~ 0 run particle dust{color:[1.000,0.753,0.169],scale:3} ^ ^1.1 ^-1 0.1 0 0.1 0 1

execute at @e[tag=crawlers_crawlerhatcher,scores={lifetime=1}] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:"x"}},transformation:[0.5795554958f,0f,0.1552914271f,-0.1625f,0.086837864f,0.4974225435f,-0.3240833204f,0f,-0.1287424277f,0.3355157421f,0.4804732814f,0.41875f,0f,0f,0f,1f],Tags:["crawlers_hatcherbag"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:"x"}},transformation:[0.4624744968f,0.0983019889f,-0.6156614753f,-0.06875f,0.2653086851f,0.3348728524f,0.7021227226f,-0.5375f,0.2751883745f,-0.4880541893f,0.3577493958f,0.4f,0f,0f,0f,1f],Tags:["crawlers_hatcherbag"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:"x"}},transformation:[0.3090228449f,0f,0.5143003804f,-0.1625f,-0.3305859122f,0.4596266659f,0.1986360558f,0f,-0.3939769485f,-0.3856725658f,0.2367252332f,0.53125f,0f,0f,0f,1f],Tags:["crawlers_hatcherbag"]}],Tags:["crawlers_hatcherbag","crawlers_hatcherbag_main"]}

execute as @e[tag=crawlers_crawlerhatcher,tag=crawlers_large] at @s if entity @e[tag=crawlers_campfire,distance=..20] run scoreboard players add @s lifetime 5
execute as @e[tag=crawlers_crawlerhatcher,tag=crawlers_large,scores={lifetime=600..}] at @s if entity @e[tag=crawlers_campfire,distance=..20] run summon spider ~ ~ ~ {Health:6,PersistenceRequired:1b,Tags:["crawlers_crawlerattacker","crawlers_enemy","valid_spell_target","crawlers_fastbois"],attributes:[{id:scale,base:0.5f},{id:max_health,base:6f}],NoAI:1b}
execute as @e[tag=crawlers_crawlerhatcher,tag=crawlers_large,scores={lifetime=600..}] at @s if entity @e[tag=crawlers_campfire,distance=..20] run playsound block.beehive.exit master @a[distance=..20,scores={char=1..}] ~ ~ ~ 1 0.8
scoreboard players set @e[tag=crawlers_crawlerhatcher,scores={lifetime=600..}] lifetime 3

execute as @e[tag=crawlers_crawlerhatcher] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run particle lava ~ ~1 ~ 1 1 1 0.1 10
execute as @e[tag=crawlers_crawlerhatcher] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run particle smoke ~ ~1 ~ 1 1 1 0.1 10
execute as @e[tag=crawlers_crawlerhatcher] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run playsound block.fire.extinguish master @a[distance=..20,scores={char=1..}] ~ ~ ~ 1 0.8
execute as @e[tag=crawlers_crawlerhatcher] at @s if entity @e[tag=crawlers_campfire,distance=..3.5] run kill @s

execute as @e[tag=crawlers_hatcherbag_main] at @s at @n[tag=crawlers_crawlerhatcher] rotated as @n[tag=crawlers_crawlerhatcher] rotated ~ 0 run tp @s ^ ^1.1 ^-0.5

execute as @e[tag=crawlers_hatcherbag] at @s unless entity @e[tag=crawlers_crawlerhatcher,distance=..4] run kill @s
execute as @e[tag=crawlers_hatcherbag] unless entity @e[tag=crawlers_crawlerhatcher] run kill @s

#scout
execute at @e[tag=crawlers_scout] run particle block{block_state:"minecraft:green_terracotta"} ~ ~0.4 ~ 0.5 0.5 0.5 0 1

execute at @e[tag=crawlers_scout] run effect give @a[distance=..1.6,tag=valid_spell_target,scores={char=1..}] slowness 3 2 true
execute at @e[tag=crawlers_scout] run execute at @a[distance=..1.6,tag=valid_spell_target,scores={char=1..}] run particle block{block_state:"minecraft:green_terracotta"} ~ ~1 ~ 0.5 0.5 0.5 0 2

#poisonous scout
execute at @e[tag=crawlers_scout_poison] run particle block{block_state:"minecraft:lime_concrete"} ~ ~0.4 ~ 0.5 0.5 0.5 0 1
execute at @e[tag=crawlers_scout_poison] run effect give @a[distance=..1.6,tag=valid_spell_target,scores={char=1..}] poison 1 2 true

#Charger!
execute as @e[tag=crawlers_charger,scores={lifetime=1}] run data merge entity @s {attributes:[{id:jump_strength,base:0.0f},{id:step_height,base:1f}]}

execute as @e[tag=crawlers_charger] at @s run damage @p[distance=..2,tag=valid_spell_target] 3 generic by @s from @s

execute as @e[tag=crawlers_charger] run scoreboard players add @s crawlers_attack1 1
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=90..}] run scoreboard players set @s crawlers_attack1 1

execute as @e[tag=crawlers_charger,scores={crawlers_attack1=46..60}] at @s rotated ~ 0 run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.3 2

execute as @e[tag=crawlers_charger,scores={crawlers_attack1=60}] run scoreboard players add @s crawlers_spells 1
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61,crawlers_spells=5..}] run scoreboard players set @s crawlers_spells 1
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61,crawlers_spells=1..3}] at @s run tp @s ^ ^ ^ facing entity @p
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 run tp @s ^ ^0.02 ^0.45
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 run particle large_smoke ~ ~0.5 ~ 0 0 0 0.1 1
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 unless block ^ ^0.2 ^1 #minecraft:dash run scoreboard players set @s crawlers_attack1 81
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 unless block ^ ^0.2 ^2 #minecraft:dash run scoreboard players set @s crawlers_attack1 81
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 unless block ^-1 ^0.2 ^1 #minecraft:dash run scoreboard players set @s crawlers_attack1 81
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..80,crawlers_spells=1..3}] at @s rotated ~ 0 unless block ^1 ^0.2 ^1 #minecraft:dash run scoreboard players set @s crawlers_attack1 81
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61,crawlers_spells=1..3}] rotated ~ 0 run data merge entity @s {NoAI:1b}
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=82,crawlers_spells=1..3}] rotated ~ 0 run data merge entity @s {NoAI:0b}

execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..70,crawlers_spells=4}] at @s run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.3 3
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61..70,crawlers_spells=4}] at @s run particle large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.3 1
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=71..79,crawlers_spells=4}] at @s run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.5 5
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=71..79,crawlers_spells=4}] at @s run particle large_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.5 3
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=71..79,crawlers_spells=4}] at @s run particle white_smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.5 3
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=80,crawlers_spells=4}] at @s run particle smoke ~ ~0.5 ~ 1.5 1.5 1.5 0.5 150
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=80,crawlers_spells=4}] at @s run particle large_smoke ~ ~0.5 ~ 1.5 1.5 1.5 0.5 130
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=80,crawlers_spells=4}] at @s run particle white_smoke ~ ~0.5 ~ 1.5 1.5 1.5 0.5 130
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=80,crawlers_spells=4}] at @s run playsound entity.wither.break_block master @a[distance=..15] ~ ~ ~ 1 0.8
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=80,crawlers_spells=4}] at @s run scoreboard players add @a[distance=..5,tag=valid_spell_target] CC_stun 30
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=61,crawlers_spells=4}] rotated ~ 0 run data merge entity @s {NoAI:1b}
execute as @e[tag=crawlers_charger,scores={crawlers_attack1=82,crawlers_spells=4}] rotated ~ 0 run data merge entity @s {NoAI:0b}

#allahu akbar spider
execute at @e[tag=crawlers_crawlerbomber,scores={lifetime=3}] run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:"x"}},transformation:[0.6f,0f,0f,-0.3375f,0f,0.5767570176f,-0.2756373558f,0f,0f,0.1653824135f,0.9612616959f,-0.49375f,0f,0f,0f,1f],Tags:["crawlers_bomberbag"]}],Tags:["crawlers_bomberbag","crawlers_bomberbag_main"],Marker:1b,Invisible:1b}
execute as @e[tag=crawlers_bomberbag_main] at @s at @n[tag=crawlers_crawlerbomber] rotated as @n[tag=crawlers_crawlerbomber] rotated ~ 0 run tp @s ^ ^0.6 ^-0.4 ~ ~
effect give @e[tag=crawlers_crawlerbomber] weakness infinite 10 true

execute as @e[tag=crawlers_bomberbag_main] at @s unless entity @e[tag=crawlers_crawlerbomber,distance=..3] run particle explosion ~ ~ ~ 0 0 0 0 1
execute as @e[tag=crawlers_bomberbag_main] at @s unless entity @e[tag=crawlers_crawlerbomber,distance=..3] run particle flame ~ ~ ~ 0 0 0 0.1 10
execute as @e[tag=crawlers_bomberbag_main] at @s unless entity @e[tag=crawlers_crawlerbomber,distance=..3] run playsound block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 1.2
execute as @e[tag=crawlers_bomberbag_main] at @s unless entity @e[tag=crawlers_crawlerbomber,distance=..3] run kill @n[tag=crawlers_bomberbag,tag=!crawlers_bomberbag_main]
execute as @e[tag=crawlers_bomberbag_main] at @s unless entity @e[tag=crawlers_crawlerbomber,distance=..3] run kill @s

execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0 4
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run particle flame ~ ~ ~ 0.5 0.5 0.5 0.25 50
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run playsound entity.generic.explode master @a[distance=..15,scores={char=1..}] ~ ~ ~ 1 1.2
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run execute as @a[distance=..3.5,tag=valid_spell_target,scores={char=1..}] run damage @s 20 player_attack by @n[tag=crawlers_crawlerbomber]
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run kill @n[tag=crawlers_crawlerbomber]
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run kill @n[tag=crawlers_bomberbag,tag=!crawlers_bomberbag_main]
execute as @e[tag=crawlers_bomberbag_main] at @s if entity @p[distance=..2.5] run kill @s

execute unless entity @e[tag=crawlers_crawlerbomber] run kill @e[tag=crawlers_bomberbag]

#australian karen
execute at @e[tag=crawlers_mother,scores={lifetime=3}] run summon armor_stand ~ ~ ~ {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:ochre_froglight",Properties:{axis:"x"}},transformation:[1f,0f,0f,-0.3375f,0f,0.5767570176f,-0.2756373558f,0f,0f,0.1653824135f,0.9612616959f,-0.75375f,0f,0f,0f,1f],Tags:["crawlers_motherbag"]}],Tags:["crawlers_motherbag","crawlers_motherbag_main"],Marker:1b,Invisible:1b}
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run particle block{block_state:"minecraft:orange_concrete"} ~ ~0.4 ~ 0.9 0.9 0.9 0 30
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run playsound block.beehive.exit master @a[distance=..20,scores={char=1..}] ~ ~ ~ 1 0.8
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run summon spider ~ ~0.2 ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run summon spider ~ ~0.3 ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run summon spider ~ ~0.4 ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run summon spider ~ ~0.5 ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run kill @n[tag=crawlers_motherbag,tag=!crawlers_motherbag_main]
execute as @e[tag=crawlers_motherbag_main] at @s unless entity @e[distance=..2.5,tag=crawlers_mother] run kill @s

execute as @e[tag=crawlers_motherbag_main] at @s at @n[tag=crawlers_mother] rotated as @n[tag=crawlers_mother] rotated ~ 0 run tp @s ^ ^0.7 ^-0.7 ~ ~


execute unless entity @e[tag=crawlers_mother] run kill @e[tag=crawlers_motherbag]

#sniper cunt spider
execute as @e[tag=crawlers_sniper,scores={lifetime=70}] at @s run summon marker ~ ~-0.1 ~ {Tags:["crawlers_sniper_shot","projectile"]}
execute as @e[tag=crawlers_sniper,scores={lifetime=140}] at @s run summon marker ~ ~-0.1 ~ {Tags:["crawlers_sniper_shot","projectile"]}
execute as @e[tag=crawlers_sniper,scores={lifetime=210}] at @s run summon marker ~ ~-0.1 ~ {Tags:["crawlers_sniper_shot","projectile"]}
execute as @e[tag=crawlers_sniper,scores={lifetime=260}] at @s run data merge entity @s {CustomName:[{text:" "}]}
execute as @e[tag=crawlers_sniper,scores={lifetime=260}] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=crawlers_sniper,scores={lifetime=260..290}] at @s if block ~ ~-1 ~ #minecraft:dash run particle white_smoke ~ ~4 ~ 0 1.5 0 0 30

execute as @e[tag=crawlers_sniper,scores={lifetime=..260}] at @s if block ~ ~1 ~ #minecraft:dash run tp @s ~ ~1 ~ facing entity @p
execute as @e[tag=crawlers_sniper,scores={lifetime=..260}] at @s unless block ~ ~1 ~ #minecraft:dash run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=crawlers_sniper,scores={lifetime=2}] run attribute @s knockback_resistance base set 100
execute as @e[tag=crawlers_sniper,scores={lifetime=2}] run attribute @s safe_fall_distance base set 100

scoreboard players add @e[tag=crawlers_sniper_shot] lifetime 1
execute as @e[tag=crawlers_sniper_shot,scores={lifetime=1..2}] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=crawlers_sniper_shot] at @s run tp @s ^ ^ ^0.65
execute as @e[tag=crawlers_sniper_shot] at @s run particle block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.2 0.2 0.2 0 5
execute as @e[tag=crawlers_sniper_shot] at @s run particle white_smoke ~ ~ ~ 0 0 0 0 1
execute as @e[tag=crawlers_sniper_shot,scores={lifetime=1..2}] at @s run playsound block.cobweb.break master @a[distance=..20,scores={char=1..}] ~ ~ ~ 3 0.8
execute as @e[tag=crawlers_sniper_shot] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
kill @e[tag=crawlers_sniper_shot,scores={lifetime=50..}]
execute as @e[tag=crawlers_sniper_shot] at @s positioned ~-.5 ~-.5 ~-.5 as @p[dz=0,dx=0,dy=0,tag=valid_spell_target] run scoreboard players set @s CC_silence 100
execute as @e[tag=crawlers_sniper_shot] at @s positioned ~-.5 ~-.5 ~-.5 if entity @p[dz=0,dx=0,dy=0] run kill @s

#unburrow
scoreboard players add @e[tag=crawlers_burrow] lifetime 1
execute at @e[tag=crawlers_burrow] run particle block{block_state:"cobblestone"} ~ ~ ~ 0.5 0.5 0.5 0 5
execute at @e[tag=crawlers_burrow] run particle block{block_state:"stone"} ~ ~ ~ 0.1 0.1 0.1 0 5
execute at @e[tag=crawlers_burrow] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.8

execute as @e[tag=crawlers_burrow,scores={lifetime=50..}] at @s run summon spider ~ ~-1 ~ {Health:8,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:0.6f},{id:max_health,base:8f}]}
execute as @e[tag=crawlers_burrow,scores={lifetime=50..}] run kill @s

scoreboard players add @e[tag=crawlers_burrow_big] lifetime 1
execute at @e[tag=crawlers_burrow_big] run particle block{block_state:"cobblestone"} ~ ~ ~ 0.5 0.5 0.5 0 8
execute at @e[tag=crawlers_burrow_big] run particle block{block_state:"stone"} ~ ~ ~ 0.1 0.1 0.1 0 8
execute at @e[tag=crawlers_burrow_big] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.7

execute as @e[tag=crawlers_burrow_big,scores={lifetime=50..}] at @s run summon spider ~ ~-1.2 ~ {Health:15,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target","crawlers_large"],attributes:[{id:scale,base:1f},{id:max_health,base:15f}]}
execute as @e[tag=crawlers_burrow_big,scores={lifetime=50..}] run kill @s

scoreboard players add @e[tag=crawlers_burrow_scout] lifetime 1
execute at @e[tag=crawlers_burrow_scout] run particle block{block_state:"cobblestone"} ~ ~ ~ 0.5 0.5 0.5 0 8
execute at @e[tag=crawlers_burrow_scout] run particle block{block_state:"terracotta"} ~ ~ ~ 0.1 0.1 0.1 0 8
execute at @e[tag=crawlers_burrow_scout] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.7

execute as @e[tag=crawlers_burrow_scout,scores={lifetime=40..}] at @s run summon cave_spider ~ ~-1 ~ {Health:12,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target","crawlers_scout"],attributes:[{id:scale,base:1.12f},{id:max_health,base:12f}]}
execute as @e[tag=crawlers_burrow_scout,scores={lifetime=40..}] run kill @s

scoreboard players add @e[tag=crawlers_burrow_spit] lifetime 1
execute at @e[tag=crawlers_burrow_spit] run particle block{block_state:"cobblestone"} ~ ~ ~ 0.5 0.5 0.5 0 5
execute at @e[tag=crawlers_burrow_spit] run particle block{block_state:"stone"} ~ ~ ~ 0.1 0.1 0.1 0 5
execute at @e[tag=crawlers_burrow_spit] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.9

execute as @e[tag=crawlers_burrow_spit,scores={lifetime=20..}] at @s run summon cave_spider ~ ~-1.5 ~ {Health:5,PersistenceRequired:1b,Tags:["crawlers_sniper","crawlers_enemy","valid_spell_target"],attributes:[{id:scale,base:1.2f},{id:max_health,base:5f}],CustomName:[{text:Dinnerbone}],NoAI:1b}
execute as @e[tag=crawlers_burrow_spit,scores={lifetime=20..}] run kill @s

scoreboard players add @e[tag=crawlers_burrow_mother] lifetime 1
execute at @e[tag=crawlers_burrow_mother] run particle block{block_state:"cobblestone"} ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=crawlers_burrow_mother] run particle block{block_state:"ochre_froglight"} ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @e[tag=crawlers_burrow_mother] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.9

execute as @e[tag=crawlers_burrow_mother,scores={lifetime=60..}] at @s run summon spider ~ ~-1.2 ~ {Health:17,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target","crawlers_large","crawlers_mother"],attributes:[{id:scale,base:1f},{id:max_health,base:16f}]}
execute as @e[tag=crawlers_burrow_mother,scores={lifetime=60..}] run kill @s

scoreboard players add @e[tag=crawlers_burrow_charger] lifetime 1
execute at @e[tag=crawlers_burrow_charger] run particle block{block_state:"netherite_block"} ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @e[tag=crawlers_burrow_charger] run particle block{block_state:"ochre_froglight"} ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @e[tag=crawlers_burrow_charger] run playsound block.gravel.break master @a[distance=..15] ~ ~ ~ 2 0.9

execute as @e[tag=crawlers_burrow_charger,scores={lifetime=60..}] at @s run summon cave_spider ~ ~-1.5 ~ {Health:42,PersistenceRequired:1b,Tags:["crawlers_crawlerboi","crawlers_enemy","valid_spell_target","crawlers_charger"],attributes:[{id:scale,base:2.3f},{id:max_health,base:42f}]}
execute as @e[tag=crawlers_burrow_charger,scores={lifetime=60..}] run kill @s

#CRAWLER JOCKEY
execute as @e[tag=crawlers_crawler_mount] at @s if entity @e[tag=crawlers_crawler_rider,distance=..2] run effect give @s resistance 1 3 true
execute as @e[tag=crawlers_crawler_mount] at @s if entity @e[tag=crawlers_crawler_rider,distance=..2] at @s run particle block{block_state:"minecraft:ochre_froglight"} ~ ~0.2 ~ 0.4 0.2 0.4 0 1 normal
execute as @e[tag=crawlers_crawler_mount] at @s unless entity @e[tag=crawlers_crawler_rider,distance=..2] if entity @e[tag=crawlers_campfire] at @s run tp @s ^ ^ ^0.075

#defiler (normal extinguisher and jockey)
execute as @e[tag=crawlers_crawler_defiler] at @s run scoreboard players set @a[distance=..5,tag=valid_spell_target,scores={char=1..}] CC_defiled 2
execute as @e[tag=crawlers_crawler_defiler] at @s run particle dust{color:[1.000,0.745,0.310],scale:3} ~ ~ ~ 1.5 0.1 1.5 0 15

#end screen
scoreboard players remove @a[scores={crawlers_end=1..}] crawlers_end 1
title @a[scores={crawlers_end=60..}] title ["",{text:"-= ",color:"green"},{text:"Victory",bold:true,color:"dark_green"},{text:" =-",color:"green"}]
execute as @p[scores={crawlers_end=99}] at @s run playsound ui.toast.challenge_complete master @a[distance=..30] ~ ~ ~ 3 1

execute as @p[scores={crawlers_end=1}] at @s run function crawlermode:reset
execute as @p[scores={crawlers_end=1}] at @s run function main:reset

scoreboard players add @a[scores={crawlers_end=..-1}] crawlers_end 1
title @a[scores={crawlers_end=..-60}] title ["",{text:"-= ",color:"red"},{text:"Defeat",bold:true,color:"dark_red"},{text:" =-",color:"red"}]
execute as @p[scores={crawlers_end=-99}] at @s run playsound entity.wither.ambient master @a[distance=..30] ~ ~ ~ 3 0.3

execute as @p[scores={crawlers_end=-1}] at @s run function crawlermode:reset
execute as @p[scores={crawlers_end=-1}] at @s run function main:reset

#campfire destroyed
execute if score -floor crawlers_floor matches 1.. if score -HP campfire_hp matches -100..0 run scoreboard players set @a[scores={char=1..}] crawlers_end -100
execute if score -floor crawlers_floor matches 1.. if score -HP campfire_hp matches -100..0 at @e[tag=crawlers_campfire] run setblock ~ ~ ~ air
execute if score -floor crawlers_floor matches 1.. if score -HP campfire_hp matches -100..0 at @e[tag=crawlers_campfire] run particle explosion ~ ~1 ~ 1 1 1 0 3
execute if score -floor crawlers_floor matches 1.. if score -HP campfire_hp matches -101..0 run scoreboard players remove -HP campfire_hp 15

#
execute if score -floor crawlers_floor matches 1.. positioned 97 10 -126 if entity @a[scores={char=1..},distance=..5] run scoreboard players add -wait crawlers_wave 1
execute if score -floor crawlers_floor matches 1.. positioned 97 10 -126 unless entity @a[scores={char=1..},distance=..5] run scoreboard players set -wait crawlers_wave 0

execute if score -wait crawlers_floor matches 100.. run function crawlermode:start_handle
