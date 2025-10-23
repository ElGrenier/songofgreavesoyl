kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:torchflower_seeds"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:jungle_sapling"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword"}}]



# feed of the weak


execute at @a[scores={universal_hit=1..,char=62,passive_fien=0},team=purple] run tag @p[distance=..5,team=yellow] add yummy_weak
execute at @a[scores={universal_hit=1..,char=62,passive_fien=0},team=yellow] run tag @p[distance=..5,team=purple] add yummy_weak

execute if entity @a[tag=yummy_weak,scores={HPercentage=..50}] run scoreboard players set @a[scores={char=62}] passive_fien 1

tag @a[tag=yummy_weak] remove yummy_weak

effect give @a[scores={char=62,passive_fien=2..3}] minecraft:absorption 3
execute at @a[scores={char=62,passive_fien=1..3}] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 60 normal
execute at @a[scores={char=62,passive_fien=1..3}] run particle minecraft:block{block_state:{Name:"minecraft:oak_log"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 20 normal


scoreboard players add @a[scores={char=62,passive_fien=1..}] passive_fien 1
scoreboard players set @a[scores={char=62,passive_fien=120..130}] passive_fien 0
scoreboard players set @a[scores={char=62,passive_fien=1005..1100}] passive_fien 0


execute at @a[scores={char=62,universal_kill=1..}] run scoreboard players set @a[scores={char=62}] passive_fien 990
execute at @a[scores={char=62,universal_kill=1..}] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 80 normal
execute at @a[scores={char=62,universal_kill=1..}] run particle minecraft:block{block_state:{Name:"minecraft:oak_log"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 20 normal
execute at @a[scores={char=62,universal_kill=1..}] run particle minecraft:block{block_state:{Name:"minecraft:nether_wart"}} ~ ~0.5 ~ 0.8 1 0.8 0.0001 40 normal
execute at @a[scores={char=62,universal_kill=1..}] run playsound minecraft:entity.sniffer.eat master @a[distance=..6] ~ ~ ~ 1 0.2 1
effect give @a[scores={char=62,universal_kill=1..}] minecraft:absorption 6 1


execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_1] run summon minecraft:marker ~ ~ ~ {Tags:["devouringthorns_visual_core_1","thorns_visuals"]}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_2] run summon minecraft:marker ~ ~ ~ {Tags:["devouringthorns_visual_core_2","thorns_visuals"]}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_3] run summon minecraft:marker ~ ~ ~ {Tags:["devouringthorns_visual_core_3","thorns_visuals"]}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_1","p_thorns_vis_t1","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_2","p_thorns_vis_t1","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_3","p_thorns_vis_t1","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_4","p_thorns_vis_t1","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_5","p_thorns_vis_t2","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_6] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_6","p_thorns_vis_t2","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_7] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_7","p_thorns_vis_t2","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_8] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["devouringthorns_visual_8","p_thorns_vis_t2","thorns_visuals"],Pose:{Head:[180.0f,0.0f,0.0f]}}

execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_1] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_1","s2_thorns","s2_thorns_t1","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_2] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_2","s2_thorns","s2_thorns_t1","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_3] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_3","s2_thorns","s2_thorns_t1","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_4] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_4","s2_thorns","s2_thorns_t1","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_5] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_5","s2_thorns","s2_thorns_t2","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_6] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_6","s2_thorns","s2_thorns_t2","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_7] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_7","s2_thorns","s2_thorns_t2","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_8] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_8","s2_thorns","s2_thorns_t2","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_9] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_9","s2_thorns","s2_thorns_t3","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_10] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_10","s2_thorns","s2_thorns_t3","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_11] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_11","s2_thorns","s2_thorns_t3","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @a[scores={char=62}] unless entity @e[tag=s2_thorns_12] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["s2_thorns_12","s2_thorns","s2_thorns_t3","thorns_visuals"],Pose:{Head:[90.0f,0.0f,0.0f]}}

execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_1] ~ ~ ~
execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_2] ~ ~-0.5 ~
execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_3] ~ ~0.5 ~
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @s ~ ~ ~ ~-15 0
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @s ~ ~ ~ ~15 0
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @s ~ ~ ~ ~-15 0

execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=devouringthorns_visual_1] ^-0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=devouringthorns_visual_2] ^-0.6 ^ ^-0.6
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=devouringthorns_visual_3] ^0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=devouringthorns_visual_4] ^0.6 ^ ^-0.6

execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_5] ^-0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_6] ^-0.6 ^ ^-0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_7] ^0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_8] ^0.6 ^ ^-0.6

execute as @e[tag=p_thorns_vis_t1] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_1,limit=1]
execute as @e[tag=p_thorns_vis_t2] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_2,limit=1]

execute as @e[tag=s2_thorns_t1] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_1,limit=1]
execute as @e[tag=s2_thorns_t2] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_2,limit=1]
execute as @e[tag=s2_thorns_t3] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_3,limit=1]



execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_1] ^-1.1 ^ ^1.1
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_2] ^-1.1 ^ ^-1.1
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_3] ^1.1 ^ ^1.1
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_4] ^1.1 ^ ^-1.1

execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_5] ^-1.1 ^ ^1.1
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_6] ^-1.1 ^ ^-1.1
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_7] ^1.1 ^ ^1.1
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_8] ^1.1 ^ ^-1.1

execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_9] ^-1.1 ^-1.5 ^1.1
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_10] ^-1.1 ^-1.5 ^-1.1
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_11] ^1.1 ^-1.5 ^1.1
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_12] ^1.1 ^-1.5 ^-1.1




execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_1,limit=1] {equipment:{head:{id:"minecraft:mangrove_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_2,limit=1] {equipment:{head:{id:"minecraft:mangrove_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_3,limit=1] {equipment:{head:{id:"minecraft:flowering_azalea_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_4,limit=1] {equipment:{head:{id:"minecraft:flowering_azalea_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_5,limit=1] {equipment:{head:{id:"minecraft:mangrove_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_6,limit=1] {equipment:{head:{id:"minecraft:mangrove_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_7,limit=1] {equipment:{head:{id:"minecraft:flowering_azalea_leaves",count:1}}}
execute at @a[scores={char=62,passive_fien=960..1000}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_8,limit=1] {equipment:{head:{id:"minecraft:flowering_azalea_leaves",count:1}}}

execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_1,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_2,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_3,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_4,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_5,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_6,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_7,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}
execute at @a[scores={char=62,passive_fien=1001..1010}] run data merge entity @e[type=minecraft:armor_stand,tag=devouringthorns_visual_8,limit=1] {equipment:{head:{id:"minecraft:air",count:1}}}


# rooten grasp


scoreboard players set @a[scores={char=62,spell_fien_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=62,spell_fien_1_1=1,CC_silence=1..}] spell_fien_1_1 120

execute at @a[scores={char=62,spell_fien_1_1=1,CC_silence=0}] run playsound minecraft:block.azalea_leaves.place master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=62,spell_fien_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["rotten_grasp"],NoGravity:0b,Marker:1b}
tp @e[tag=rotten_grasp,limit=1] @a[scores={char=62,spell_fien_1_1=1},limit=1]

execute store result entity @e[tag=rotten_grasp,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=rotten_grasp] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

#execute at @e[tag=rotten_grasp] run playsound entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.1 0.5 1
execute at @e[tag=rotten_grasp] run playsound minecraft:block.azalea_leaves.break master @a[distance=..10] ~ ~ ~ 0.5 0.7 1
execute at @e[tag=rotten_grasp] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~ ~ 1 0.4 1 0.0001 80 normal
execute at @e[tag=rotten_grasp] run particle minecraft:falling_dust{block_state:{Name:"minecraft:birch_leaves"}} ~ ~ ~ 1 0.3 1 0.0001 8 normal

execute as @e[tag=rotten_grasp] at @s run tp @s ^ ^ ^0.5

execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_1] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:0b,Invisible:1b,Tags:["rotten_grasp_visual_1","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:mangrove_wood",count:1}}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_2] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:1b,Invisible:1b,Tags:["rotten_grasp_visual_2","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:mangrove_wood",count:1}}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_3] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:1b,Invisible:1b,Tags:["rotten_grasp_visual_3","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:mangrove_wood",count:1}}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_4] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:1b,Invisible:1b,Tags:["rotten_grasp_visual_4","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:green_concrete_powder",count:1}}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_5] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:1b,Invisible:1b,Tags:["rotten_grasp_visual_5","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:green_concrete_powder",count:1}}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_6] run summon minecraft:armor_stand ~ ~-0.6 ~ {Small:1b,Invisible:1b,Tags:["rotten_grasp_visual_6","rotten_grasp_visuals"],Marker:1b,equipment:{head:{id:"minecraft:green_concrete_powder",count:1}}}

#execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_1] ~ ~-0.6 ~
#execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_2] ~ ~-0.8 ~
#execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_3] ~ ~-1 ~

execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_1] ^ ^-1.2 ^ facing entity @e[tag=rotten_grasp,limit=1]
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_2] ^-0.4 ^-0.4 ^0.4 facing entity @e[tag=rotten_grasp,limit=1]
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_3] ^0.4 ^-0.4 ^0.4 facing entity @e[tag=rotten_grasp,limit=1]
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_4] ^-0.8 ^-0.5 ^0.8 facing entity @e[tag=rotten_grasp,limit=1]
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_5] ^0.8 ^-0.5 ^0.8 facing entity @e[tag=rotten_grasp,limit=1]
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_6] ^ ^-0.5 ^0.8 facing entity @e[tag=rotten_grasp,limit=1]

execute unless entity @e[tag=rotten_grasp] run kill @e[tag=rotten_grasp_visuals]


execute if entity @a[scores={char=62},team=yellow] at @e[tag=rotten_grasp] if entity @p[distance=..1.5,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["rotten_grasp_grab"]}
execute if entity @a[scores={char=62},team=purple] at @e[tag=rotten_grasp] if entity @p[distance=..1.5,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["rotten_grasp_grab"]}
execute if entity @a[scores={char=62},team=yellow] at @e[tag=rotten_grasp] run tag @p[distance=..1.5,team=purple] add root_grabbed
execute if entity @a[scores={char=62},team=purple] at @e[tag=rotten_grasp] run tag @p[distance=..1.5,team=yellow] add root_grabbed
execute if entity @e[tag=rotten_grasp_grab] run kill @e[tag=rotten_grasp]
execute at @a[scores={char=62,spell_fien_1_1=20..}] run kill @e[tag=rotten_grasp]

scoreboard players add @e[tag=rotten_grasp_grab] thorns_timer 1
execute as @e[tag=rotten_grasp_grab,scores={thorns_timer=1}] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=rotten_grasp_grab,scores={thorns_timer=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=62},limit=1]
execute at @e[tag=rotten_grasp_grab,scores={thorns_timer=2}] run playsound minecraft:entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=rotten_grasp_grab,scores={thorns_timer=2..}] run playsound minecraft:block.vine.place master @a[distance=..10] ~ ~ ~ 1 0.4 1

execute if entity @a[tag=root_grabbed,scores={universal_death=1..}] run kill @e[tag=rotten_grasp_grab]

execute as @e[tag=rotten_grasp_grab] at @s run tp @p[tag=root_grabbed] ~ ~ ~

execute as @e[tag=rotten_grasp_grab] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=rotten_grasp_grab] at @s if entity @a[distance=..1,scores={char=62}] run kill @s

execute as @e[tag=rotten_grasp_grab] at @s run tp @s ^ ^ ^0.6
execute at @e[tag=rotten_grasp_grab] run particle minecraft:block{block_state:{Name:"minecraft:oak_log"}} ~ ~1 ~ 0.5 1 0.5 0.01 10
execute at @e[tag=rotten_grasp_grab] run particle minecraft:crit ~ ~1 ~ 0.7 1.1 0.7 0.01 10

scoreboard players set @a[tag=root_grabbed] CC_root 15

kill @e[tag=rotten_grasp_grab,scores={thorns_timer=10..}]
execute at @e[tag=rotten_grasp_grab,scores={thorns_timer=10..}] run tag @a remove root_grabbed
execute unless entity @e[tag=rotten_grasp_grab] run tag @a remove root_grabbed

# piercing pain


scoreboard players set @a[scores={char=62,spell_fien_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=62,spell_fien_2_1=1,CC_silence=1..}] spell_fien_2_1 380

scoreboard players set @a[scores={char=62,spell_fien_2_1=1,CC_silence=0}] thorns_timer 63
execute at @a[scores={char=62,spell_fien_2_1=2,CC_silence=0}] run particle minecraft:crit ~ ~1 ~ 0.7 1 0.7 0.01 50
execute at @a[scores={char=62,spell_fien_2_1=2,CC_silence=0}] run playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=62,spell_fien_2_1=2,CC_silence=0}] run playsound minecraft:block.vine.place master @a[distance=..10] ~ ~ ~ 1 0.1 1

item replace entity @a[scores={char=62,thorns_timer=3..}] armor.head with minecraft:player_head[minecraft:custom_name="Wood",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:thorns":13,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:6.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;922351862,-2026683839,-1211501750,10060195],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1NzE5MmIxOTRjNjU4YWFhODg4MTY4NDhjYmNlN2M3NDk0NjZhNzkyYjhhN2UxZDNmYWZhNDFjNDRmMzQxMiJ9fX0="}]}] 1
execute at @a[scores={char=62,thorns_timer=3..}] run particle minecraft:crit ~ ~1 ~ 0.5 0.8 0.5 0.01 2
execute at @a[scores={char=62,thorns_timer=3..}] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.7 1 0.7 0.01 2
#execute at @a[scores={char=62,thorns_timer=3..}] run particle block{block_state: 'minecraft:oak_log'} ~ ~1 ~ 0.7 1 0.7 0.01 2

item replace entity @a[scores={char=62,thorns_timer=1..2}] armor.head with minecraft:player_head[minecraft:custom_name="Wood",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:6.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;922351862,-2026683839,-1211501750,10060195],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1NzE5MmIxOTRjNjU4YWFhODg4MTY4NDhjYmNlN2M3NDk0NjZhNzkyYjhhN2UxZDNmYWZhNDFjNDRmMzQxMiJ9fX0="}]}] 1

execute at @a[scores={char=62,thorns_timer=1..2}] run playsound minecraft:block.vine.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=62,thorns_timer=1..2}] run particle minecraft:block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.7 1 0.7 0.01 40

scoreboard players remove @a[scores={thorns_timer=1..}] thorns_timer 1

scoreboard players add @a[scores={char=62,thorns_timer=3..,universal_hit=1..}] thorns_timer 10

execute at @a[scores={char=62,thorns_timer=3..}] as @e[type=minecraft:armor_stand,tag=s2_thorns] run data merge entity @s {equipment:{head:{id:"minecraft:pointed_dripstone",count:1}}}

execute at @a[scores={char=62,thorns_timer=1..2}] as @e[type=minecraft:armor_stand,tag=s2_thorns] run data merge entity @s {equipment:{head:{id:"minecraft:air",count:1}}}

# thorn fiend

scoreboard players add @a[scores={spell_fien_1=1..}] spell_fien_1_1 1
item replace entity @a[scores={char=62,spell_fien_1_1=140..}] hotbar.1 with minecraft:torchflower_seeds[minecraft:custom_name={text:"Rotten Grasp",color:"gray",bold:1b}] 1
scoreboard players set @a[scores={spell_fien_1_1=141..}] spell_fien_1 0
scoreboard players set @a[scores={spell_fien_1_1=141..}] spell_fien_1_1 0
scoreboard players set @a[scores={spell_fien_1_1=1}] spellCD1 140

scoreboard players add @a[scores={spell_fien_2=1..}] spell_fien_2_1 1
item replace entity @a[scores={char=62,spell_fien_2_1=400..}] hotbar.2 with minecraft:jungle_sapling[minecraft:custom_name={text:"Piercing Pain",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1}] 1
scoreboard players set @a[scores={spell_fien_2_1=401..}] spell_fien_2 0
scoreboard players set @a[scores={spell_fien_2_1=401..}] spell_fien_2_1 0
scoreboard players set @a[scores={spell_fien_2_1=1}] spellCD2 400

execute as @a[scores={char=62}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] run clear @a[scores={char=62}] minecraft:wooden_sword
item replace entity @a[scores={char=62}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Thorns"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=62,spell_fien_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:torchflower_seeds",Slot:1b}]}] run clear @a[scores={char=62}] minecraft:torchflower_seeds
item replace entity @a[scores={char=62,spell_fien_1=0}] hotbar.1 with minecraft:torchflower_seeds[minecraft:custom_name={text:"Rotten Grasp",color:"gray",bold:1b}] 1

execute as @a[scores={char=62,spell_fien_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:jungle_sapling",Slot:2b}]}] run clear @a[scores={char=62}] minecraft:jungle_sapling
item replace entity @a[scores={char=62,spell_fien_2=0}] hotbar.2 with minecraft:jungle_sapling[minecraft:custom_name={text:"Piercing Pain",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1}] 1