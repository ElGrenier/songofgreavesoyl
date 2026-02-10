kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:wooden_sword"}}]


# feed of the weak


execute at @a[scores={char=62,passive_fien=0}] as @a[distance=..5,scores={HPercentage=..50}] unless score @s Team = @p[scores={char=62}] Team run tag @s add yummy_weak

scoreboard players set @p[scores={char=62},advancements={chars:fiend_vore=true}] passive_fien 1
advancement revoke @p[scores={char=62},advancements={chars:fiend_vore=true}] only chars:fiend_vore

tag @a[tag=yummy_weak,scores={HPercentage=51..}] remove yummy_weak

effect give @a[scores={char=62,passive_fien=2..3}] absorption 3
execute at @a[scores={char=62,passive_fien=1..3}] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 60 normal
execute at @a[scores={char=62,passive_fien=1..3}] run particle block{block_state:{Name:"minecraft:oak_log"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 20 normal
execute at @a[scores={char=62,passive_fien=1..3}] run particle tinted_leaves{color:-14072030} ~ ~0.5 ~ 1 1 1 1 15 normal


scoreboard players add @a[scores={char=62,passive_fien=1..}] passive_fien 1
scoreboard players set @a[scores={char=62,passive_fien=120..130}] passive_fien 0
scoreboard players set @a[scores={char=62,passive_fien=1005..1100}] passive_fien 0


execute at @a[scores={char=62,universal_kill=1..}] run scoreboard players set @a[scores={char=62}] passive_fien 990
execute at @a[scores={char=62,universal_kill=1..}] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 80 normal
execute at @a[scores={char=62,universal_kill=1..}] run particle block{block_state:{Name:"minecraft:oak_log"}} ~ ~0.5 ~ 0.5 1 0.5 0.0001 20 normal
execute at @a[scores={char=62,universal_kill=1..}] run particle block{block_state:{Name:"minecraft:nether_wart"}} ~ ~0.5 ~ 0.8 1 0.8 0.0001 40 normal
execute at @a[scores={char=62,universal_kill=1..}] run particle tinted_leaves{color:-14072030} ~ ~0.5 ~ 1 1 1 0.0001 10 normal
execute at @a[scores={char=62,universal_kill=1..}] run playsound entity.sniffer.eat master @a[distance=..6] ~ ~ ~ 1 0.2 1
effect give @a[scores={char=62,universal_kill=1..}] absorption 6 1


execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_1] run summon marker ~ ~ ~ {Tags:["devouringthorns_visual_core_1","thorns_visuals","entities_thornfiend","thorns_devour"]}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_2] run summon marker ~ ~ ~ {Tags:["devouringthorns_visual_core_2","thorns_visuals","entities_thornfiend","thorns_devour"]}
execute at @a[scores={char=62}] unless entity @e[tag=devouringthorns_visual_core_3] run summon marker ~ ~ ~ {Tags:["devouringthorns_visual_core_3","thorns_visuals","entities_thornfiend","thorns_devour"]}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_1] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_1","p_thorns_vis_t1","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_2] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_2","p_thorns_vis_t1","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_3] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_3","p_thorns_vis_t1","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:flowering_azalea_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_4] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_4","p_thorns_vis_t1","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:flowering_azalea_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_5] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_5","p_thorns_vis_t2","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_6] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_6","p_thorns_vis_t2","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_7] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_7","p_thorns_vis_t2","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:flowering_azalea_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}
execute at @a[scores={char=62,passive_fien=990..1000}] unless entity @e[tag=devouringthorns_visual_8] run summon block_display ~ ~ ~ {Tags:["devouringthorns_visual_8","p_thorns_vis_t2","thorns_visuals","entities_thornfiend","thorns_devour"],teleport_duration:1,block_state:{Name:"minecraft:flowering_azalea_leaves"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,0.6f],translation:[-0.3f,-0.3f,-0.3f]}}

execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_1] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_1","s2_thorns","s2_thorns_t1","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_2] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_2","s2_thorns","s2_thorns_t1","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_3] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_3","s2_thorns","s2_thorns_t1","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_4] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_4","s2_thorns","s2_thorns_t1","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_5] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_5","s2_thorns","s2_thorns_t2","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_6] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_6","s2_thorns","s2_thorns_t2","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_7] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_7","s2_thorns","s2_thorns_t2","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_8] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_8","s2_thorns","s2_thorns_t2","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_9] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_9","s2_thorns","s2_thorns_t3","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_10] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_10","s2_thorns","s2_thorns_t3","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_11] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_11","s2_thorns","s2_thorns_t3","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=62,thorns_timer=3..}] unless entity @e[tag=s2_thorns_12] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["s2_thorns_12","s2_thorns","s2_thorns_t3","thorns_visuals","entities_thornfiend"],item: {count: 1, id: "minecraft:pointed_dripstone"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f],scale:[0.8f,0.8f,0.8f],translation:[0.0f,0.0f,0.0f]}}

execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_1] ~ ~1.5 ~
execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_2] ~ ~1 ~
execute as @a[scores={char=62}] at @s run tp @e[tag=devouringthorns_visual_core_3] ~ ~0.5 ~
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @s ~ ~ ~ ~-17.5 0
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @s ~ ~ ~ ~17.5 0
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @s ~ ~ ~ ~-17.5 0

execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_5] ^-0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_6] ^-0.6 ^ ^-0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_7] ^0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=devouringthorns_visual_8] ^0.6 ^ ^-0.6

execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=devouringthorns_visual_1] ^-0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=devouringthorns_visual_2] ^-0.6 ^ ^-0.6
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=devouringthorns_visual_3] ^0.6 ^ ^0.6
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=devouringthorns_visual_4] ^0.6 ^ ^-0.6

execute as @e[tag=p_thorns_vis_t1] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_3,limit=1]
execute as @e[tag=p_thorns_vis_t2] at @s run tp @s ~ ~ ~ facing entity @e[tag=devouringthorns_visual_core_2,limit=1]

execute as @e[tag=s2_thorns_t1] at @s facing entity @e[tag=devouringthorns_visual_core_1,limit=1] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=s2_thorns_t2] at @s facing entity @e[tag=devouringthorns_visual_core_2,limit=1] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=s2_thorns_t3] at @s facing entity @e[tag=devouringthorns_visual_core_3,limit=1] feet run tp @s ~ ~ ~ ~ 0



execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_1] ^-.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_2] ^-.825 ^ ^-.825
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_3] ^.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_1] at @s run tp @e[tag=s2_thorns_4] ^.825 ^ ^-.825

execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_5] ^-.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_6] ^-.825 ^ ^-.825
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_7] ^.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_2] at @s run tp @e[tag=s2_thorns_8] ^.825 ^ ^-.825

execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_9] ^-.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_10] ^-.825 ^ ^-.825
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_11] ^.825 ^ ^.825
execute as @e[tag=devouringthorns_visual_core_3] at @s run tp @e[tag=s2_thorns_12] ^.825 ^ ^-.825


execute at @a[scores={char=62,passive_fien=1001..1010}] run kill @e[tag=thorns_devour]

# rooten grasp


scoreboard players set @a[scores={char=62,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=62,s1_timer=1,CC_silence=1..}] s1_timer 120

execute at @a[scores={char=62,s1_timer=1,CC_silence=0}] run playsound block.azalea_leaves.place master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=62,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["rotten_grasp","entities_thornfiend","projectile"]}
tp @e[tag=rotten_grasp,limit=1] @a[scores={char=62,s1_timer=1},limit=1]

execute store result entity @e[tag=rotten_grasp,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=rotten_grasp] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @e[tag=rotten_grasp] run playsound entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.1 0.5 1
execute at @e[tag=rotten_grasp] run playsound block.azalea_leaves.break master @a[distance=..10] ~ ~ ~ 0.4 0.7 1
execute at @e[tag=rotten_grasp] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~ ~ 1 0.4 1 0.0001 80 normal
execute at @e[tag=rotten_grasp] run particle falling_dust{block_state:{Name:"minecraft:birch_leaves"}} ~ ~ ~ 1 0.3 1 0.0001 8 normal

execute at @e[tag=rotten_grasp] positioned ~ ~.25 ~ run particle dust{color:[0.309,0.474,0.258],scale:1} ^-1.2 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=rotten_grasp] positioned ~ ~.25 ~ run particle dust{color:[0.309,0.474,0.258],scale:1} ^1.2 ^0.1 ^0.5 0.1 0 0.1 0.1 20

execute as @e[tag=rotten_grasp] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=rotten_grasp] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=rotten_grasp] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=rotten_grasp] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_1] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_1","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_wood"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6f,0.6f,1f],translation:[-0.3f,-0.3f,-0.5f]}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_2] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_2","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:mangrove_wood"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.8f],translation:[-0.25f,-0.25f,-0.4f]}}


execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_3] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_3","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:moss_block"},transformation:{left_rotation:[-0.38268346f, 0.0f, 0.0f, 0.9238795f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,1f],translation:[-0.15f,-0.15f,-0.6f]}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_4] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_4","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:moss_block"},transformation:{left_rotation:[-0.3639041f, 0.117803864f, -0.28580275f, 0.8786426f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,1f],translation:[-0.15f,-0.15f,-0.6f]}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_5] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_5","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:moss_block"},transformation:{left_rotation:[-0.3640498f, -0.1188883f, 0.28471822f, 0.8787883f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,1f],translation:[-0.15f,-0.15f,-0.6f]}}


execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_6] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_6","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:dark_oak_wood"},transformation:{left_rotation:[0.17364818f, 0.0f, 0.0f, 0.9848077f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.7f],translation:[-0.2f,-0.2f,-0.45f]}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_7] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_7","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:dark_oak_wood"},transformation:{left_rotation:[0.17364818f, 0.0f, 0.0f, 0.9848077f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.7f],translation:[-0.2f,-0.2f,-0.45f]}}
execute at @e[tag=rotten_grasp] unless entity @e[tag=rotten_grasp_visual_8] run summon block_display ~ ~ ~ {Tags:["rotten_grasp_visual_8","rotten_grasp_visuals","entities_thornfiend"],teleport_duration:1,block_state:{Name:"minecraft:dark_oak_wood"},transformation:{left_rotation:[0.17364818f, 0.0f, 0.0f, 0.9848077f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.7f],translation:[-0.2f,-0.2f,-0.45f]}}

tp @e[tag=rotten_grasp_visuals,tag=!rot_hand_readjust] @e[tag=rotten_grasp,limit=1]
tag @e[tag=rotten_grasp_visuals] add rot_hand_readjust

execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_1] ^ ^.3 ^ 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_2] ^ ^0.3 ^-.5
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_3] ^ ^.5 ^1 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_4] ^0.2 ^.4 ^1 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_5] ^-0.2 ^.3 ^1 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_6] ^ ^1.1 ^1.2 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_7] ^-0.6 ^0.8 ^1.2 
execute as @e[tag=rotten_grasp] at @s run tp @e[tag=rotten_grasp_visual_8] ^0.6 ^0.8 ^1.2 

execute unless entity @e[tag=rotten_grasp] run kill @e[tag=rotten_grasp_visuals]

execute at @e[tag=rotten_grasp] positioned ~-.875 ~-0 ~-.875 as @p[tag=valid_spell_target,dx=.75,dy=0,dz=.75] unless score @s Team = @p[scores={char=62}] Team run summon marker ~ ~ ~ {Tags:["rotten_grasp_grab","entities_thornfiend"]}
execute at @e[tag=rotten_grasp] positioned ~-.875 ~-0 ~-.875 as @p[tag=valid_spell_target,dx=.75,dy=0,dz=.75] unless score @s Team = @p[scores={char=62}] Team run tag @s add root_grabbed
execute if entity @e[tag=rotten_grasp_grab] run kill @e[tag=rotten_grasp]
execute at @a[scores={char=62,s1_timer=17..}] run kill @e[tag=rotten_grasp]

scoreboard players add @e[tag=rotten_grasp_grab] thorns_timer 1
execute as @e[tag=rotten_grasp_grab,scores={thorns_timer=1}] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=rotten_grasp_grab,scores={thorns_timer=1..2}] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=62},limit=1]
execute at @e[tag=rotten_grasp_grab,scores={thorns_timer=2}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=rotten_grasp_grab,scores={thorns_timer=2..}] run playsound block.vine.place master @a[distance=..10] ~ ~ ~ 1 0.4 1

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


scoreboard players set @a[scores={char=62,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=62,s2_timer=1,CC_silence=1..}] s2_timer 380

scoreboard players set @a[scores={char=62,s2_timer=1,CC_silence=0}] thorns_timer 63
execute at @a[scores={char=62,s2_timer=2,CC_silence=0}] run particle crit ~ ~1 ~ 0.7 1 0.7 0.01 50
execute at @a[scores={char=62,s2_timer=2,CC_silence=0}] run playsound entity.player.hurt_sweet_berry_bush master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=62,s2_timer=2,CC_silence=0}] run playsound block.vine.place master @a[distance=..10] ~ ~ ~ 1 0.1 1

item replace entity @a[scores={char=62,thorns_timer=3..}] armor.head with player_head[minecraft:custom_name="Wood",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:thorns":13,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:16.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;922351862,-2026683839,-1211501750,10060195],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1NzE5MmIxOTRjNjU4YWFhODg4MTY4NDhjYmNlN2M3NDk0NjZhNzkyYjhhN2UxZDNmYWZhNDFjNDRmMzQxMiJ9fX0="}]}] 1
execute at @a[scores={char=62,thorns_timer=3..}] run particle crit ~ ~1 ~ 0.5 0.8 0.5 0.01 2
execute at @a[scores={char=62,thorns_timer=3..}] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.7 1 0.7 0.01 2
#execute at @a[scores={char=62,thorns_timer=3..}] run particle block{block_state: 'minecraft:oak_log'} ~ ~1 ~ 0.7 1 0.7 0.01 2

item replace entity @a[scores={char=62,thorns_timer=..2}] armor.head with player_head[minecraft:custom_name="Wood",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:16.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;922351862,-2026683839,-1211501750,10060195],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1NzE5MmIxOTRjNjU4YWFhODg4MTY4NDhjYmNlN2M3NDk0NjZhNzkyYjhhN2UxZDNmYWZhNDFjNDRmMzQxMiJ9fX0="}]}] 1

execute at @a[scores={char=62,thorns_timer=1..2}] run playsound block.vine.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=62,thorns_timer=1..2}] run particle block{block_state:{Name:"minecraft:oak_leaves"}} ~ ~1 ~ 0.7 1 0.7 0.01 40

scoreboard players remove @a[scores={thorns_timer=1..}] thorns_timer 1

scoreboard players add @a[scores={char=62,thorns_timer=3..,universal_hit=1..}] thorns_timer 10

execute at @a[scores={char=62,thorns_timer=..2}] run kill @e[tag=s2_thorns,type=item_display]

# thorn fiend

scoreboard players set @a[scores={s1_timer=1,char=62}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=62}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=62}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=62}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=62}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=62}] s2_timer 0

execute as @a[scores={char=62}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword",Slot:0b}]}] run clear @a[scores={char=62}] wooden_sword
item replace entity @a[scores={char=62}] hotbar.0 with minecraft:wooden_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Thorns"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=62,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=62}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=62,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Rotten Grasp",color:"gray",bold:1b},item_model=torchflower_seeds,custom_data={s1:1}] 1

execute as @a[scores={char=62,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=62}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=62,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Piercing Pain",color:"gray",bold:1b},minecraft:enchantments={"minecraft:thorns":1},item_model=jungle_sapling,custom_data={s2:1}] 1