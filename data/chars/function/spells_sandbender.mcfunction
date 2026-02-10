kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}]

#scorn of the desert

scoreboard players set @a[scores={char=52,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=52,s1_timer=1,CC_silence=1..}] s1_timer 100

execute at @a[scores={char=52,s1_timer=1..2,CC_silence=0}] run playsound block.sand.place master @a[distance=..1] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=52,s1_timer=1,CC_silence=0}] run playsound entity.wither_skeleton.ambient master @a[distance=..1] ~ ~ ~ 0.3 0.6 1
execute at @a[scores={char=52,s1_timer=1,CC_silence=0}] run summon marker ~ ~-1 ~ {Tags:["sand_scorn","entities_sandbender"]}
tp @e[tag=sand_scorn,limit=1] @a[scores={char=52,s1_timer=1},limit=1]
execute store result entity @e[tag=sand_scorn,limit=1] Rotation[1] float 1 run clear
#execute at @a[scores={char=52,s1_timer=1,CC_silence=0}] as @e[tag=sand_scorn,limit=1] at @s run tp @s ~ ~-1 ~ 

execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_1","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.25f,-0.7f],scale:[0.8f,0.5f,1.4f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_2","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.1f,-0.7f],scale:[1f,0.2f,1.4f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_3] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_3","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,-0.05f,-0.9f],scale:[1.2f,0.1f,1.8f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_4] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_4","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.45f,-0.1f,-0.5f],scale:[0.9f,0.2f,1f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_5] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_5","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.075f,-0.5f],scale:[0.6f,0.15f,1f]},block_state:{Name:"minecraft:sand"}}

execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_7] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_7","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[-0.5735765f, 0.0f, 0.0f, 0.819152f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6f, 0.9999999f, 0.89999974f],translation:[-0.3f,-0.5f,-0.3f],scale:[0.6f,1f,0.6f]},block_state:{Name:"minecraft:smooth_sandstone"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_8] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_8","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0.34202015f, 0.0f, 0.0f, 0.9396927f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],translation:[-0.25f,-0.25f,-0.45f],scale:[0.5f,0.5f,0.9f]},block_state:{Name:"minecraft:smooth_sandstone"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_9] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_9","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[-0.121869355f, 0.0f, 0.0f, 0.99254614f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.275f,-0.45f],scale:[0.4f,0.55f,0.9f]},block_state:{Name:"minecraft:smooth_sandstone"}}

execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_11] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_11","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.15f,-0.45f],scale:[0.25f,0.3f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_12] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_12","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.45f],scale:[0.2f,0.2f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_13] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_13","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.15f,-0.45f],scale:[0.25f,0.3f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_14] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_14","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.45f],scale:[0.2f,0.2f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_15] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_15","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.45f],scale:[0.2f,0.2f,0.9f]},block_state:{Name:"minecraft:sand"}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_16] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["sand_scorn_visual_16","sand_scorn_visuals","entities_sandbender"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.45f],scale:[0.15f,0.15f,0.9f]},block_state:{Name:"minecraft:sand"}}

tp @e[tag=sand_scorn_visuals,tag=!scorn_readjust] @e[tag=sand_scorn,limit=1]
tag @e[tag=sand_scorn_visuals] add scorn_readjust

execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_1] ^ ^ ^-0.1
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_2] ^ ^0.05 ^-0.4
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_3] ^ ^ ^-0.5
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_4] ^ ^ ^0.3
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_5] ^ ^ ^0.5

#execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_6] ^ ^0.1 ^-0.3
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_7] ^ ^0.4 ^0.45
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_8] ^ ^1.05 ^-0.1
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_9] ^ ^0.85 ^0.3
#execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_10] ^ ^1 ^0.4

execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_11] ^ ^1.15 ^1
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_12] ^ ^1.25 ^1.4

execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_13] ^ ^0.7 ^0.68
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_14] ^ ^0.8 ^1.2

execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_15] ^ ^0.3 ^0.6
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_16] ^ ^0.4 ^1

execute unless entity @e[tag=sand_scorn] run kill @e[tag=sand_scorn_visuals]

execute at @e[tag=sand_scorn] run particle dust{color:[0.67,0.0,0.67],scale:1} ^1.5 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=sand_scorn] run particle dust{color:[0.67,0.0,0.67],scale:1} ^-1.5 ^0.1 ^0.5 0.1 0 0.1 0.1 20
execute at @e[tag=sand_scorn] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.6 0.1 0.6 0.0001 25 normal
execute at @e[tag=sand_scorn] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.7 1 0.7 0.0001 5 normal
execute at @e[tag=sand_scorn] run particle witch ~ ~0.5 ~ 0.8 1 0.8 2 3
execute as @e[tag=sand_scorn] at @s run tp @s ^ ^ ^0.6

execute as @e[tag=sand_scorn] at @s unless block ^ ^1 ^1 #minecraft:dash run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 1.5 1.5 1.5 1 250
execute as @e[tag=sand_scorn] at @s unless block ^ ^1 ^1 #minecraft:dash run playsound block.sand.break master @a[distance=..20] ~ ~ ~ 1 0.8 1
execute as @e[tag=sand_scorn] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=sand_scorn] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.4 ~
execute as @e[tag=sand_scorn] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=sand_scorn] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @a[scores={char=52,s1_timer=20..}] run kill @e[tag=sand_scorn]

execute at @e[tag=sand_scorn] positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=valid_spell_target,limit=1] unless score @s Team = @p[scores={char=52}] Team run tag @s add sand_scorn_explosion

execute if entity @e[tag=sand_scorn_explosion] run kill @e[tag=sand_scorn]

execute at @e[tag=sand_scorn_explosion] run playsound block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @e[tag=sand_scorn_explosion] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @e[tag=sand_scorn_explosion] run playsound entity.husk.step master @a[distance=..10] ~ ~ ~ 0.4 1.5 1
execute at @e[tag=sand_scorn_explosion] run playsound entity.wither_skeleton.hurt master @a[distance=..10] ~ ~ ~ 0.5 2 1
execute at @e[tag=sand_scorn_explosion] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 1 1.5 1 1 300 force
execute at @e[tag=sand_scorn_explosion] run particle witch ~ ~1 ~ 2 2 2 2 100 force
execute at @e[tag=sand_scorn_explosion] run kill @e[tag=sand_scorn]

scoreboard players set @e[tag=sand_scorn_explosion] CC_root 10
damage @n[tag=sand_scorn_explosion] 6 generic by @p[scores={char=52}] from @p[scores={char=52}]

tag @e remove sand_scorn_explosion



#last sandstorm

scoreboard players set @a[scores={char=52,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=52,s2_timer=1,CC_silence=1..}] s2_timer 260

scoreboard players set @a[scores={char=52,s2_timer=1..60,CC_silence=1..}] spellCD2 330
scoreboard players set @a[scores={char=52,s2_timer=1..60,CC_silence=1..}] s2_timer 71

execute at @a[scores={char=52,s2_timer=1..20,CC_silence=0}] run playsound block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.4 1.0
execute at @a[scores={char=52,s2_timer=21..40,CC_silence=0}] run playsound block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.6 1.0
execute at @a[scores={char=52,s2_timer=41..65,CC_silence=0}] run playsound block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.8 1.0
effect give @a[scores={char=52,s2_timer=1..2,CC_silence=0}] absorption 3 2
execute at @a[scores={char=52,s2_timer=1..60,CC_silence=0}] run particle witch ~ ~0.4 ~ 0.8 0.8 0.8 1 3 force
execute at @a[scores={char=52,s2_timer=1..40,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 1 1 1 3 force

execute at @a[scores={char=52,s2_timer=1..20,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.2 ~ 1.5 0.3 1.5 0.001 40 force
execute at @a[scores={char=52,s2_timer=21..40,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.3 ~ 1 0.5 1 0.001 30 force
execute at @a[scores={char=52,s2_timer=41..60,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.001 20 force

execute at @a[scores={char=52,s2_timer=62..70,CC_silence=0}] run playsound block.sand.break master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,s2_timer=62..70,CC_silence=0}] run playsound block.sand.place master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,s2_timer=62,CC_silence=0}] run playsound block.stone.break master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,s2_timer=62,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.6 0.6 1
execute at @a[scores={char=52,s2_timer=62,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["last_sandstorm","projectile","entities_sandbender"]}
scoreboard players operation @e[tag=projectile,tag=last_sandstorm] Team = @p[scores={char=52}] Team
tp @e[tag=last_sandstorm,limit=1] @a[scores={char=52,s2_timer=62},limit=1]
execute at @a[scores={char=52,s2_timer=62,CC_silence=0}] at @e[tag=last_sandstorm] run tp @s ~ ~1 ~

#execute as @e[tag=last_sandstorm] at @s unless block ^ ^1 ^1 #dash run kill @s
#execute as @e[tag=last_sandstorm] at @s unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=52,s2_timer=62..70}] at @e[tag=last_sandstorm] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.5 20
execute at @e[tag=last_sandstorm] run playsound block.sand.place master @a[distance=..10] ~ ~ ~ 1 0.8 1.0
execute at @e[tag=last_sandstorm] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 2.5 2.5 2.5 0.01 50 normal
execute at @e[tag=last_sandstorm] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 2.5 2.5 2.5 0.0001 40 normal
execute at @e[tag=last_sandstorm] run particle witch ~ ~1 ~ 5 5 5 2 40
execute as @e[tag=last_sandstorm] at @s run tp @s ^ ^ ^0.4

execute at @a[scores={char=52,s2_timer=120..}] run kill @e[tag=last_sandstorm]

execute at @e[tag=last_sandstorm] as @a[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=52}] Team run scoreboard players set @s sandgrasp 50

effect give @a[scores={sandgrasp=2..}] slow_falling 1 0 true
#execute as @a[scores={sandgrasp=2..}] at @s run tp @e[tag=sandgrasp_grasp,limit=1,sort=nearest,distance=..1.5]
execute at @e[tag=sandgrasp_grasp] run tp @a[distance=..1.5,scores={sandgrasp=2..},limit=1] ~ ~ ~

execute as @e[tag=sandgrasp_grasp] at @s run tp @s ~ ~ ~ ~ 90
execute as @e[tag=sandgrasp_grasp] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1.5 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ~ ~-1 ~ #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1

execute at @a[scores={sandgrasp=2..}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.6 0.6 0.6 0.1 3
execute at @a[scores={sandgrasp=2..}] run particle witch ~ ~ ~ 0.6 0.6 0.6 0.1 1

scoreboard players set @a[scores={sandgrasp=3..}] CC_knockdown 3
scoreboard players set @a[scores={sandgrasp=1}] CC_stagger 60
execute at @a[scores={sandgrasp=-1}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1.5 0.5 1.5 1 100
execute at @a[scores={sandgrasp=-1}] run particle witch ~ ~ ~ 1.5 0.5 1.5 1 30
execute at @a[scores={sandgrasp=-1}] run playsound entity.generic.big_fall master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @a[scores={sandgrasp=-1}] run playsound block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.1 1
effect give @a[scores={sandgrasp=1..2}] blindness 3
effect give @a[scores={sandgrasp=1..2}] slowness 3 4
effect give @a[scores={sandgrasp=1..2}] glowing 3 0 true
effect clear @a[scores={sandgrasp=1..2}] slow_falling

scoreboard players set @a[scores={sandgrasp=1}] sandgrasp -1
scoreboard players remove @a[scores={sandgrasp=-40..-1}] sandgrasp 1
scoreboard players remove @a[scores={sandgrasp=2..}] sandgrasp 1
scoreboard players set @a[scores={sandgrasp=..-40}] sandgrasp 0

execute at @a[scores={sandgrasp=3..}] unless entity @e[distance=..1,tag=sandgrasp_grasp] run summon minecraft:marker ~ ~ ~ {Tags:["sandgrasp_grasp"]}

execute as @e[tag=sandgrasp_grasp] at @s unless entity @a[distance=..1,scores={sandgrasp=3..}] run kill @s

title @a[scores={char=52,s2_timer=1..75,CC_silence=0}] times 0 20 0
title @a[scores={char=52,s2_timer=1..75,CC_silence=0}] title {text:" ",type:"text"}
title @a[scores={char=52,s2_timer=1..19,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 3 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,s2_timer=20..39,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 2 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,s2_timer=40..59,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 1 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,s2_timer=60..70,CC_silence=0}] subtitle {text:"Buush rou Shar aff",italic:1b,color:"light_purple",type:"text"}
title @a[scores={char=52,s2_timer=71..75,CC_silence=0}] subtitle {text:" ",type:"text"}

#blind vengeance

effect give @a[scores={char=52}] blindness infinite 0 true

execute at @a[scores={char=52}] as @a[distance=..10,scores={universal_damagetaken=1..}] unless score @s Team = @p[scores={char=52}] Team run effect give @s glowing 3 0 true
execute at @a[scores={char=52}] as @a[distance=..10,scores={universal_damagetaken_shield=1..}] unless score @s Team = @p[scores={char=52}] Team run effect give @s glowing 3 0 true

scoreboard players add @a[scores={char=52,s1_timer=1}] passive_bend 1
scoreboard players add @a[scores={char=52,s2_timer=1}] passive_bend 1
scoreboard players set @a[scores={char=52,passive_bend=5}] passive_bend 6
scoreboard players set @a[scores={char=52,passive_bend=6..}] passive_bend 6

scoreboard players set @a[scores={char=52,s3_timer=1,CC_silence=1..}] s3_timer 0

clear @a[scores={char=52,s3_timer=1,CC_silence=0}] *[custom_data={s3:1}]
execute at @a[scores={char=52,s3_timer=1,CC_silence=0}] as @e[tag=valid_spell_target,distance=..10] unless score @s Team = @p[scores={char=52}] Team run tag @s add blind_vengeanced

scoreboard players set @e[tag=blind_vengeanced] CC_knockup 10
execute at @e[tag=blind_vengeanced] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~0.3 ~ 0.3 1 0.3 1 130 force
execute as @e[tag=blind_vengeanced] run damage @s 6 generic by @p[scores={char=52}] from @p[scores={char=52}]

tag @e remove blind_vengeanced

execute at @a[scores={char=52,s3_timer=1,CC_silence=0}] run playsound item.totem.use master @a[distance=..15] ~ ~ ~ 0.2 2 1
execute at @a[scores={char=52,s3_timer=1..5,CC_silence=0}] run playsound block.sand.fall master @a[distance=..15] ~ ~ ~ 1.0 0.6 1.0
execute at @a[scores={char=52,s3_timer=1..2,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~0.1 ~ 6 0.5 6 1 300 force
execute at @a[scores={char=52,s3_timer=1..2,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~0.1 ~ 6 0.5 6 1 300 force
execute at @a[scores={char=52,s3_timer=1..,CC_silence=0}] run particle witch ~ ~ ~ 6 0.3 6 2 25
scoreboard players set @a[scores={char=52,s3_timer=1,CC_silence=0}] passive_bend 0


title @a[scores={char=52,passive_bend=0}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"- - - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=1}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"=",color:"light_purple",type:"text"},{text:" - - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=2}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= =",color:"light_purple",type:"text"},{text:" - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=3}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = =",color:"light_purple",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=4}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = = =",color:"light_purple",type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=5..6}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = = = =",color:"light_purple",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]


#sandbender

scoreboard players set @a[scores={s1_timer=1,char=52}] spellCD1 120
scoreboard players add @a[scores={s1_timer=1..,char=52}] s1_timer 1
scoreboard players set @a[scores={s1_timer=121..,char=52}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=52}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=52}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=52}] s2_timer 0

scoreboard players add @a[scores={s3_timer=1..,char=52}] s3_timer 1
scoreboard players set @a[scores={s3_timer=20..,char=52}] s3_timer 0

execute as @a[scores={char=52}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_axe",Slot:0b}]}] run clear @a[scores={char=52}] golden_axe
item replace entity @a[scores={char=52}] hotbar.0 with minecraft:golden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Mantis Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=52,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=52}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=52,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:rabbit_foot",minecraft:custom_name={text:"Scorn of The Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=52,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=52}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=52,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:sandstone_wall",minecraft:custom_name={text:"Last Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=52,passive_bend=5..6,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=52}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=52,passive_bend=5..6,CC_silence=0}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:pumpkin_seeds",minecraft:custom_name={text:"Blind Vengeance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
