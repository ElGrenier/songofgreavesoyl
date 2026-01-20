kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_axe"}}]

#passive

execute at @a[scores={char=30}] as @e[tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run tag @s add enginner_valid_turret_target
execute at @a[scores={char=30}] as @e[tag=valid_spell_target] if score @s Team = @p[scores={char=30}] Team run tag @s remove enginner_valid_turret_target


execute at @a[scores={char=30}] if block ~ ~-1 ~ #dash run scoreboard players set @a[scores={char=30}] passive_engi 0
execute at @a[scores={char=30}] if entity @e[tag=turret,distance=..3] run scoreboard players set @a[scores={char=30}] passive_engi 0
scoreboard players set @e[scores={CC_silence=1..}] passive_engi 0
scoreboard players set @e[scores={universal_walk=1..}] passive_engi 0
scoreboard players set @e[scores={universal_sprint=1..}] passive_engi 0
scoreboard players set @e[scores={universal_jump=1..}] passive_engi 0

execute at @a[scores={char=30},team=purple] run team join purple @e[tag=turret]
execute at @a[scores={char=30},team=yellow] run team join yellow @e[tag=turret]

execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run playsound entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run playsound block.anvil.use master @a[distance=..10] ~ ~ ~ 0.3 0.4 1
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle wax_on ~ ~ ~ 0.6 1 0.6 1 10 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle block{block_state:{Name:"minecraft:copper_bulb"}} ~ ~ ~ 0.5 1 0.5 0.001 40 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:copper_bulb"}} ~ ~ ~ 0.5 1 0.5 0.001 40 normal
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] align xyz positioned ~0.5 ~ ~0.5 run summon strider ~ ~ ~ {NoAI:1,Silent:1,Tags:["turret","inactive_turret","valid_spell_target","entities_engineer"]}
scoreboard players operation @e[tag=turret] Team = @p[scores={char=30}] Team
execute at @a[scores={char=30,passive_engi=59,CC_silence=0}] run scoreboard players add @e[tag=turret] SummonAge 1
tp @e[tag=turret,limit=1,tag=!turret_initial_rotation] @a[scores={char=30},limit=1]

effect give @e[type=strider] invisibility infinite 1 true
effect clear @e[type=strider] glowing

execute at @e[tag=turret] unless entity @e[tag=turret_visuals_1,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_1","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.35f,-0.5f,-0.45f],scale:[0.7f,1f,0.9f]},block_state:{Name:"minecraft:cyan_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_1_2,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_1_2","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.2f,-0.05f],scale:[0.2f,0.4f,0.1f]},block_state:{Name:"minecraft:redstone_lamp"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_1_1,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_1_1","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.423f,-0.275f],scale:[0.5f,0.1f,0.55f]},block_state:{Name:"minecraft:black_concrete"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_2,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_2","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.525f,-0.1f],scale:[0.2f,1.05f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_3,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_3","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.525f,-0.1f],scale:[0.2f,1.05f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_4,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_4","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.525f,-0.1f],scale:[0.2f,1.05f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_5,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_5","turret_visuals","turret_bottom","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.525f,-0.1f],scale:[0.2f,1.05f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}

execute at @e[tag=turret] unless entity @e[tag=turret_visuals_6,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_6","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.9f,-0.15f],scale:[0.3f,1.8,0.3f]},block_state:{Name:"minecraft:chiseled_copper"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_7,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_7","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.9f,-0.05f],scale:[0.1f,1.8f,0.1f]},block_state:{Name:"minecraft:chiseled_copper"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_8,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_8","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.9f,-0.05f],scale:[0.1f,1.8f,0.1f]},block_state:{Name:"minecraft:chiseled_copper"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_9,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_9","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.225f,0.7f,-0.375f],scale:[0.45f,0.4f,0.75f]},block_state:{Name:"minecraft:black_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_10,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_10","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0.85f,-0.25f],scale:[0.6f,0.4f,0.5f]},block_state:{Name:"minecraft:cyan_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_11,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_11","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0.75f,-0.25f],scale:[0.6f,0.5f,0.5f]},block_state:{Name:"minecraft:cyan_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_12,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_12","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.2f,1f,-0.45f],scale:[0.4f,0.3f,1f]},block_state:{Name:"minecraft:cyan_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_13,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_13","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.125f,0.9f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:shroomlight"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_13_1,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_13_1","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.175f,0.825f,-0.05f],scale:[0.35f,0.4f,0.1f]},block_state:{Name:"minecraft:black_concrete"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_14,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_14","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.15f,0.9f,-0.1f],scale:[0.3f,0.6f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_15,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_15","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.15f,0.9f,-0.1f],scale:[0.3f,0.6f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_16,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_16","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.09f,0.4f,-0.1f],scale:[0.18f,0.6f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}
execute at @e[tag=turret] unless entity @e[tag=turret_visuals_17,distance=..1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["turret_visuals_17","turret_visuals","turret_upper","entities_engineer"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,5f],translation:[-0.09f,0.4f,-0.1f],scale:[0.18f,0.6f,0.2f]},block_state:{Name:"minecraft:brown_terracotta"}}

execute as @e[tag=turret] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=turret_bottom] at @s run tp @s @e[tag=turret,tag=!turret_initial_rotation,distance=..1,limit=1]
execute as @e[tag=turret_upper] at @s run tp @s @e[tag=turret,distance=..1,limit=1]
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_1,distance=..2] ^ ^0.5 ^
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_1_2,distance=..2] ^ ^0.5 ^0.45
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_1_1,distance=..2] ^ ^0.5 ^
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_2,distance=..2] ^0.3 ^0.5 ^0.4
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_3,distance=..2] ^-0.3 ^0.5 ^0.4
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_4,distance=..2] ^0.3 ^0.5 ^-0.4
execute as @e[tag=turret,tag=!turret_initial_rotation] at @s run tp @e[tag=turret_visuals_5,distance=..2] ^-0.3 ^0.5 ^-0.4

execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_6,distance=..2] ^ ^0.5 ^-0.1
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_7,distance=..2] ^0.1 ^0.5 ^0.2
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_8,distance=..2] ^-0.1 ^0.5 ^0.2
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_9,distance=..2] ^ ^0.5 ^0.1
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_10,distance=..2] ^ ^0.5 ^-0.2
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_11,distance=..2] ^ ^0.5 ^0.3
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_12,distance=..2] ^ ^0.5 ^
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_13,distance=..2] ^ ^0.5 ^0.5
execute as @e[tag=turret] at @s run tp @e[tag=turret_visuals_13_1,distance=..2] ^ ^0.5 ^0.55

execute as @e[tag=turret,tag=inactive_turret] at @s run tp @e[tag=turret_visuals_14,distance=..1] ^0.1 ^0.5 ^0.55
execute as @e[tag=turret,tag=inactive_turret] at @s run tp @e[tag=turret_visuals_15,distance=..1] ^-0.1 ^0.5 ^0.55
execute as @e[tag=turret,tag=inactive_turret] at @s run tp @e[tag=turret_visuals_16,distance=..1] ^0.08 ^0.5 ^0.55
execute as @e[tag=turret,tag=inactive_turret] at @s run tp @e[tag=turret_visuals_17,distance=..1] ^-0.08 ^0.5 ^0.55
execute as @e[tag=turret,tag=active_turret] at @s run tp @e[tag=turret_visuals_14,distance=..1] ^0.3 ^0.5 ^0.55
execute as @e[tag=turret,tag=active_turret] at @s run tp @e[tag=turret_visuals_15,distance=..1] ^-0.3 ^0.5 ^0.55
execute as @e[tag=turret,tag=active_turret] at @s run tp @e[tag=turret_visuals_16,distance=..1] ^0.25 ^0.5 ^0.55
execute as @e[tag=turret,tag=active_turret] at @s run tp @e[tag=turret_visuals_17,distance=..1] ^-0.25 ^0.5 ^0.55


execute at @e[tag=turret] unless entity @e[tag=turret_active_range_display,distance=..1] run summon marker ~ ~ ~ {Tags:["turret_active_range_display","entities_engineer"]}
execute at @e[tag=turret] run tp @e[tag=turret_active_range_display,distance=..1] ~ ~0.2 ~
execute at @e[tag=turret_active_range_display] unless entity @e[tag=turret,distance=..1] run kill @s

execute as @e[tag=turret_active_range_display] at @s run rotate @s ~11 ~
execute as @e[tag=turret_active_range_display] at @s run particle crit ^ ^ ^10 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^ ^ ^-10 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^10 ^ ^ 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^-10 ^ ^ 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^7 ^ ^7 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^-7 ^ ^-7 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^7 ^ ^-7 0 0 0 0 1 force @a[scores={char=30}]
execute as @e[tag=turret_active_range_display] at @s run particle crit ^-7 ^ ^7 0 0 0 0 1 force @a[scores={char=30}]



execute as @e[tag=turret] at @s unless entity @p[scores={tracked=1..}] run rotate @s facing entity @e[tag=enginner_valid_turret_target,distance=..10,limit=1,sort=nearest]
execute as @e[tag=turret] at @s if entity @p[scores={tracked=1..}] run rotate @s facing entity @p[scores={tracked=1..},tag=enginner_valid_turret_target,distance=..10,limit=1,sort=nearest]

execute at @e[tag=turret,tag=inactive_turret] if entity @e[tag=enginner_valid_turret_target,distance=..10] run playsound block.piston.extend master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=turret,tag=active_turret] unless entity @e[tag=enginner_valid_turret_target,distance=..10] run playsound block.piston.contract master @a[distance=..15] ~ ~ ~ 1 1.2 1

execute as @e[tag=turret] at @s if entity @e[tag=enginner_valid_turret_target,distance=..10] if entity @a[distance=..15,scores={char=30}] run tag @s remove inactive_turret
execute as @e[tag=turret] at @s if entity @e[tag=enginner_valid_turret_target,distance=..10] if entity @a[distance=..15,scores={char=30}] run tag @s add active_turret

execute as @e[tag=turret] at @s unless entity @e[tag=enginner_valid_turret_target,distance=..10] run tag @s remove active_turret
execute as @e[tag=turret] at @s unless entity @e[tag=enginner_valid_turret_target,distance=..10] run tag @s add inactive_turret

effect give @e[tag=inactive_turret] resistance 1 2 true
effect clear @e[tag=active_turret] resistance

tag @e[tag=turret] add turret_initial_rotation

execute as @e[tag=turret_visuals] at @s unless entity @e[tag=turret,distance=..1] run particle minecraft:block{block_state:{Name:"minecraft:copper_bulb"}} ~ ~ ~ 0.5 1 0.5 0.001 20 normal
execute as @e[tag=turret_visuals] at @s unless entity @e[tag=turret,distance=..1] run playsound entity.iron_golem.damage master @a[distance=..10] ~ ~ ~ 0.2 1.2 1
execute as @e[tag=turret_visuals] at @s unless entity @e[tag=turret,distance=..1] run kill @s

#execute as @e[tag=turret] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=turret] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @a[scores={char=30,passive_engi=10,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.2 1
execute at @a[scores={char=30,passive_engi=20,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.3 1
execute at @a[scores={char=30,passive_engi=30,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.4 1
execute at @a[scores={char=30,passive_engi=40,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.5 1
execute at @a[scores={char=30,passive_engi=50,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.6 1
execute at @a[scores={char=30,passive_engi=60,CC_silence=0}] run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.2 1.7 1
scoreboard players set @a[scores={char=30,passive_engi=59}] passive_engi 80

scoreboard players add @a[scores={char=30,passive_engi=80..}] passive_engi 1
scoreboard players set @a[scores={char=30,passive_engi=90..}] passive_engi 0

execute at @e[tag=turret,scores={SummonAge=5..}] run particle block{block_state:{Name:"minecraft:copper_bulb"}} ~ ~ ~ 0.5 1 0.5 0.001 60 normal
execute at @e[tag=turret,scores={SummonAge=5..}] run playsound entity.iron_golem.damage master @a[distance=..10] ~ ~ ~ 1 1.2 1
tp @e[tag=turret,scores={SummonAge=5..}] ~ ~-100 ~

execute as @e[tag=turret] at @s unless entity @a[distance=..15,scores={char=30}] run tag @s remove active_turret
execute as @e[tag=turret] at @s unless entity @a[distance=..15,scores={char=30}] run tag @s add inactive_turret


title @a[scores={char=30,passive_engi=1..90}] times 0 2 1
title @a[scores={char=30,passive_engi=1..90}] title {text:" ",type:"text"}

title @a[scores={char=30,passive_engi=1..20}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"",color:"yellow",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=20..40}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=",color:"yellow",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=40..80}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"==",color:"yellow",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=30,passive_engi=80..90}] subtitle [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"===",color:"yellow",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]


execute as @e[tag=turret] at @s if entity @e[tag=enginner_valid_turret_target,distance=..10] run scoreboard players add @s turret_aggro 1
execute as @e[tag=turret,scores={turret_aggro=2..57}] at @s if entity @p[scores={tracked=1..},tag=enginner_valid_turret_target,distance=..10] run scoreboard players add @s turret_aggro 1

execute as @e[tag=turret,scores={turret_aggro=20..40}] at @s run particle wax_on ^ ^1.5 ^0.7 0.4 0.4 0.4 0.1 1
execute as @e[tag=turret,scores={turret_aggro=40..60}] at @s run particle wax_on ^ ^1.5 ^0.7 0.1 0.1 0.1 0.5 1

execute at @e[tag=turret,scores={turret_aggro=59}] run playsound entity.shulker.shoot master @a[distance=..15] ~ ~ ~ 1 1 1
#execute at @e[tag=turret,scores={turret_aggro=59}] run playsound entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute at @e[tag=turret,scores={turret_aggro=60}] run playsound entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 0.2 2 1
execute at @e[tag=turret,scores={turret_aggro=60}] run summon marker ~ ~ ~ {Tags:["turret_shoot","entities_engineer"]}
execute as @e[tag=turret_shoot] at @s run tp @s @e[tag=turret,scores={turret_aggro=60},limit=1,sort=nearest,distance=..1]
execute at @e[tag=turret,scores={turret_aggro=60}] as @e[tag=turret_shoot,limit=1,distance=..1] at @s run tp @s ~ ~1.4 ~ 

scoreboard players set @e[tag=turret,scores={turret_aggro=60..}] turret_aggro 0
scoreboard players set @e[tag=turret,tag=inactive_turret] turret_aggro 0

execute as @e[tag=turret_shoot] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=turret_shoot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=turret_shoot] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 3 normal
execute at @e[tag=turret_shoot] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0.001 5 normal
execute as @e[tag=turret_shoot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=turret_shoot] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 3 normal
execute at @e[tag=turret_shoot] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0.001 5 normal
execute as @e[tag=turret_shoot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=turret_shoot] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 3 normal
execute at @e[tag=turret_shoot] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0.001 5 normal
execute as @e[tag=turret_shoot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=turret_shoot] run particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 3 normal
execute at @e[tag=turret_shoot] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 0.001 5 normal


execute at @e[tag=turret_shoot] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run tag @s add shot_by_the_turret
execute at @e[tag=turret_shoot] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run kill @e[dx=0,dy=0,dz=0,tag=turret_shoot]

execute at @e[tag=shot_by_the_turret] run kill @e[tag=turret_shoot,distance=..1,limit=1,sort=nearest]
damage @e[tag=shot_by_the_turret,limit=1] 4 dragon_breath by @p[scores={char=30}] from @p[scores={char=30}]
tag @e remove shot_by_the_turret

scoreboard players add @e[tag=turret_shoot] turret_aggro 1
kill @e[tag=turret_shoot,scores={turret_aggro=20..}]

#E.B.T.D.

scoreboard players set @a[scores={char=30,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=30,s1_timer=1,CC_silence=1..}] s1_timer 240

execute as @a[scores={char=30,s1_timer=1,CC_silence=0}] at @s positioned ~ ~1.5 ~ run function chars:engineer_mark_raycast

execute at @a[scores={char=30,s1_timer=1,CC_silence=0}] unless entity @e[distance=1..12,tag=engineer_marked] run scoreboard players set @a[scores={char=30}] spellCD1 20
execute at @a[scores={char=30,s1_timer=1,CC_silence=0}] unless entity @e[distance=1..12,tag=engineer_marked] run scoreboard players set @a[scores={char=30}] s1_timer 260


scoreboard players set @a[tag=engineer_marked] tracked 1

effect give @a[scores={tracked=1..}] glowing 1 0 true
scoreboard players add @a[scores={tracked=1..}] tracked 1
scoreboard players set @a[scores={tracked=160..}] tracked 0
scoreboard players set @a[scores={universal_death=1..}] tracked 0
tag @a remove engineer_marked


#toxic disorder

scoreboard players set @a[scores={char=30,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=30,s2_timer=1,CC_silence=1..}] s2_timer 340


execute at @a[scores={char=30,s2_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f]},block_state:{Name:"minecraft:waxed_exposed_copper"},Tags:["canister","projectile","entities_engineer"]}
scoreboard players operation @e[tag=projectile,tag=canister] Team = @p[scores={char=30}] Team
execute at @a[scores={char=30,s2_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
tp @e[tag=canister,limit=1] @a[scores={char=30,s2_timer=1},limit=1]
execute at @a[scores={char=30,s2_timer=1,CC_silence=0}] as @e[tag=canister,limit=1] at @s run tp @s ~ ~1.2 ~ 

execute at @a[scores={char=30,s2_timer=1..14}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=30,s2_timer=15..24}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=30,s2_timer=15..24}] as @e[tag=canister] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=30,s2_timer=25..}] as @e[tag=canister] at @s run tp @s ^ ^ ^0.4
execute at @a[scores={char=30,s2_timer=25..}] as @e[tag=canister] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=30,s2_timer=40..}] as @e[tag=canister] at @s run tp @s ~ ~-0.6 ~

#execute at @e[tag=canister] run particle crit ~ ~1 ~ 0.1 0.2 0.1 0.01 3 normal
execute at @e[tag=canister] run particle minecraft:falling_dust{block_state:{Name:"minecraft:cactus"}} ~ ~ ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=canister] run particle minecraft:item_slime ~ ~ ~ 0.1 0.1 0.1 0.01 5 normal

execute at @e[tag=canister] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run summon marker ~ ~1 ~ {Tags:["toxicdisorder","entities_engineer"]}
execute as @e[tag=canister] at @s unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~1 ~ {Tags:["toxicdisorder","entities_engineer"]}
execute as @e[tag=canister] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute if entity @e[tag=toxicdisorder] run kill @e[tag=canister]

execute at @e[tag=toxicdisorder] run particle sneeze ~ ~ ~ 2.8 1 2.8 0.01 25 normal
execute at @e[tag=toxicdisorder] run particle item_slime ~ ~ ~ 3 3 3 0.01 40 normal
execute at @e[tag=toxicdisorder] run particle copper_fire_flame ~ ~ ~ 3 3 3 0.01 3 normal
execute at @e[tag=toxicdisorder,scores={toxic_life=..5}] run particle item_slime ~ ~ ~ 3 1 3 0.01 80 normal

execute at @e[tag=toxicdisorder,scores={toxic_life=2}] run playsound block.copper_bulb.break master @a[distance=..16] ~ ~ ~ 1 0.8 1
execute at @e[tag=toxicdisorder,scores={toxic_life=3}] run playsound item.bucket.empty master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=toxicdisorder,scores={toxic_life=5}] run playsound block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1.0 0.1 1

execute as @e[tag=toxicdisorder] at @s run rotate @s ~6 ~
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^ ^ ^6 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^ ^ ^-6 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^-6 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^4.5 ^ ^4.5 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^-4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^4.5 ^ ^-4.5 0.1 0.2 0.1 0 10
execute as @e[tag=toxicdisorder] at @s run particle dust{color:[0.0,0.67,0.0],scale:1} ^-4.5 ^ ^4.5 0.1 0.2 0.1 0 10

execute as @e[tag=toxicdisorder] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=toxicdisorder] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=toxicdisorder] at @s if block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.2 ~

execute at @e[tag=toxicdisorder] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run scoreboard players set @s CC_broken 5
execute at @e[tag=toxicdisorder] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run effect give @s slowness 1 1
execute at @e[tag=toxicdisorder] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run effect give @s nausea 2
execute at @e[tag=toxicdisorder] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team unless entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @s poison 1 1

scoreboard players add @e[tag=toxicdisorder] toxic_life 1
kill @e[tag=toxicdisorder,scores={toxic_life=100..}]


# engineer

scoreboard players set @a[scores={char=30}] MaxHP 20

scoreboard players set @a[scores={s1_timer=1,char=30}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=30}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=30}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=30}] spellCD2 360
scoreboard players add @a[scores={s2_timer=1..,char=30}] s2_timer 1
scoreboard players set @a[scores={s2_timer=361..,char=30}] s2_timer 0

execute as @a[scores={char=30}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:copper_axe",Slot:0b}]}] run clear @a[scores={char=30}] copper_axe
item replace entity @a[scores={char=30}] hotbar.0 with copper_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Tools"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=30,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=30}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=30,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:music_disc_pigstep",minecraft:custom_name={text:"Sad Machine",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=30,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=30}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=30,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:raw_copper",minecraft:custom_name={text:"Toxic Disorder",color:"dark_aqua",bold:1b}] 1
