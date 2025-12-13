kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=60},nbt={SelectedItem:{id:"minecraft:bow"}}] weakness 1 100 true

#starmaker

execute at @a[scores={char=60,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add starfather_ar
execute at @e[tag=starfather_ar] run particle sculk_charge_pop ~ ~ ~ 0.1 0.1 0.1 0.15 5
execute at @e[tag=starfather_ar] run particle scrape ~ ~ ~ 0.5 0.5 0.5 0.1 1


execute at @a[scores={char=60,CC_disarm=1..}] run kill @e[tag=starfather_ar]


execute at @e[tag=celestial_bodies] positioned ~-.5 ~-.5 ~-.5 as @e[tag=valid_spell_target,dx=0,dy=0,dz=0] unless score @s Team = @p[scores={char=60}] Team run damage @s 4

execute at @a[scores={char=60}] unless entity @e[tag=celestial_visual_core] run summon minecraft:marker ~ ~ ~ {Tags:["celestial_visual_core","entities_starfather"]}
execute at @a[scores={char=60,CelestialBody1=200..}] unless entity @e[tag=celestial_visual_1] run summon block_display ~ ~ ~ {Tags:["celestial_visual_1","celestial_bodies","entities_starfather"],teleport_duration:1,block_state: {Name: "minecraft:deepslate_lapis_ore"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.625f,0.625f,0.625f], translation: [-0.3125f, -0.3125f, -0.3125f]}}
execute at @a[scores={char=60,CelestialBody2=200..}] unless entity @e[tag=celestial_visual_2] run summon block_display ~ ~ ~ {Tags:["celestial_visual_2","celestial_bodies","entities_starfather"],teleport_duration:1,block_state: {Name: "minecraft:deepslate_lapis_ore"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.625f,0.625f,0.625f], translation: [-0.3125f, -0.3125f, -0.3125f]}}
execute at @a[scores={char=60,CelestialBody3=200..}] unless entity @e[tag=celestial_visual_3] run summon block_display ~ ~ ~ {Tags:["celestial_visual_3","celestial_bodies","entities_starfather"],teleport_duration:1,block_state: {Name: "minecraft:deepslate_lapis_ore"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.625f,0.625f,0.625f], translation: [-0.3125f, -0.3125f, -0.3125f]}}
execute at @a[scores={char=60,CelestialBody4=200..}] unless entity @e[tag=celestial_visual_4] run summon block_display ~ ~ ~ {Tags:["celestial_visual_4","celestial_bodies","entities_starfather"],teleport_duration:1,block_state: {Name: "minecraft:deepslate_lapis_ore"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.625f,0.625f,0.625f], translation: [-0.3125f, -0.3125f, -0.3125f]}}

execute as @a[scores={char=60}] at @s run tp @e[tag=celestial_visual_core] ~ ~1 ~
execute as @e[tag=celestial_visual_core] at @s run tp @s ~ ~ ~ ~4 0
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_1] ^-4 ^0.3 ^4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_3] ^-4 ^0.3 ^-4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_2] ^4 ^0.3 ^4
execute as @e[tag=celestial_visual_core] at @s run tp @e[tag=celestial_visual_4] ^4 ^0.3 ^-4
execute as @e[tag=celestial_visual_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_3] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]
execute as @e[tag=celestial_visual_4] at @s run tp @s ~ ~ ~ facing entity @e[tag=celestial_visual_core,limit=1]

execute at @e[type=minecraft:block_display,tag=celestial_bodies] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 0.25 0.25 0.25 0.1 3

execute at @a[scores={char=60,CelestialBody1=199}] run playsound block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody2=199}] run playsound block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody3=199}] run playsound block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=60,CelestialBody4=199}] run playsound block.end_portal_frame.fill master @a[distance=..12] ~ ~ ~ 1 0.8 1

execute unless entity @e[tag=celestial_visual_1] run scoreboard players add @a[scores={char=60,CelestialBody1=..199}] CelestialBody1 1
execute unless entity @e[tag=celestial_visual_2] run scoreboard players add @a[scores={char=60,CelestialBody2=..199}] CelestialBody2 1
execute unless entity @e[tag=celestial_visual_3] run scoreboard players add @a[scores={char=60,CelestialBody3=..199}] CelestialBody3 1
execute unless entity @e[tag=celestial_visual_4] run scoreboard players add @a[scores={char=60,CelestialBody4=..199}] CelestialBody4 1

execute at @a[scores={char=60,arrowcd_1=1..2}] unless entity @e[tag=comet_rotation_fix] run summon marker ~ ~ ~ {Tags:["comet_rotation_fix","entities_starfather"]}
tp @e[tag=comet_rotation_fix,limit=1] @a[scores={char=60,arrowcd_1=2},limit=1]
execute at @e[scores={char=60,arrowcd_1=15..}] run kill @e[tag=comet_rotation_fix]

scoreboard players remove @a[scores={char=60,starfather_comets=1}] CelestialBodiesCount 1
execute at @a[scores={char=60,starfather_comets=1}] run playsound entity.evoker.cast_spell master @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=60,starfather_comets=1}] run playsound block.end_portal_frame.fill master @a[distance=..10] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=60,starfather_comets=1}] run summon marker ~ ~ ~ {Tags:["CelestialProjectile","entities_starfather","projectile"]}
scoreboard players operation @e[tag=projectile,tag=CelestialProjectile] Team = @p[scores={char=60}] Team
execute if entity @a[scores={char=60,starfather_comets=1}] run tp @e[tag=CelestialProjectile,limit=1] @e[tag=comet_rotation_fix,limit=1]
#tp @e[tag=CelestialProjectile,limit=1] @a[scores={char=60,starfather_comets=1},limit=1]
execute if entity @a[scores={char=60,starfather_comets=1},limit=1] as @e[tag=CelestialProjectile,limit=1] at @s run tp @s ~ ~1 ~
execute if entity @a[scores={char=60,starfather_comets=1},limit=1] as @e[tag=CelestialProjectile,limit=1] at @s run tp @s ^ ^0.3 ^4

execute at @e[tag=CelestialProjectile] run particle sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.0001 40 force
execute at @e[tag=CelestialProjectile] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 0.3 0.3 0.3 0.0001 10 force
execute at @e[tag=CelestialProjectile] run particle smoke ~ ~ ~ 0.4 0.4 0.4 0.01 5 force

execute as @e[tag=CelestialProjectile] at @s run tp @s ^ ^ ^0.7


execute as @e[tag=CelestialProjectile] at @s unless block ^ ^ ^0.1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["CelestialBoom","entities_starfather"]}
execute at @e[tag=CelestialProjectile] positioned ~-.75 ~-.75 ~-.75 as @e[tag=valid_spell_target,dx=.5,dy=.5,dz=.5] unless score @s Team = @p[scores={char=60}] Team run summon marker ~ ~ ~ {Tags:["CelestialBoom","entities_starfather"]}

execute if entity @e[tag=CelestialBoom] run kill @e[tag=CelestialProjectile]

execute at @e[tag=CelestialBoom] run playsound entity.dragon_fireball.explode master @a[distance=..15] ~ ~ ~ 0.8 0.8 1
execute at @e[tag=CelestialBoom] run playsound block.end_portal_frame.fill master @a[distance=..15] ~ ~ ~ 1 0.2 1
execute at @e[tag=CelestialBoom] run particle explosion ~ ~ ~ 2 2 2 0.01 20 force
execute at @e[tag=CelestialBoom] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~ ~ 3 3 3 0.01 300 force
execute at @e[tag=CelestialBoom] run particle sculk_charge_pop ~ ~ ~ 3.5 3.5 3.5 0.1 200 force

execute at @e[tag=CelestialBoom] positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=2,dy=2,dz=2,tag=valid_spell_target] unless score @s Team = @p[scores={char=60}] Team run damage @s 6 generic by @p[scores={char=60}] from @p[scores={char=60}]

kill @e[tag=CelestialBoom]

scoreboard players add @a[scores={starfather_comets=1..}] starfather_comets 1
scoreboard players set @a[scores={starfather_comets=20..}] starfather_comets 0

execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_bodies] run particle sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0.15 50
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_bodies] run scoreboard players set @a[scores={char=60}] starfather_comets 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_1] run scoreboard players set @a[scores={char=60}] CelestialBody1 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_2] run scoreboard players set @a[scores={char=60}] CelestialBody2 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_3] run scoreboard players set @a[scores={char=60}] CelestialBody3 1
execute at @e[tag=starfather_ar] if entity @e[distance=..1.8,tag=celestial_visual_4] run scoreboard players set @a[scores={char=60}] CelestialBody4 1

execute at @e[tag=starfather_ar] run kill @e[distance=..1.8,tag=celestial_bodies]


#sky collapse

scoreboard players set @a[scores={char=60,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=60,s1_timer=1,CC_silence=1..}] s1_timer 280

scoreboard players set @a[scores={char=60,s1_timer=2,s2_timer=1..58,CC_silence=0}] s2_timer 58


scoreboard players set @a[scores={char=60,s1_timer=1,CC_silence=0}] arrowcd 1
scoreboard players set @a[scores={char=60,s1_timer=1,CC_silence=0}] arrowcd_1 60
execute at @a[scores={char=60,s1_timer=2,CC_silence=0}] run playsound block.end_portal.spawn master @a[distance=..15] ~ ~ ~ 0.1 2 1
execute at @a[scores={char=60,s1_timer=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["meteor_marker","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_diamond_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation: [-0.2f,-0.4f,-0.4f]}}
execute at @a[scores={char=60,s1_timer=1,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 0.8 1
scoreboard players operation @e[tag=projectile,tag=meteor_marker] Team = @p[scores={char=60}] Team
tp @e[tag=meteor_marker,limit=1] @a[scores={char=60,s1_timer=1},limit=1]
execute at @a[scores={char=60,s1_timer=1},limit=1] run tp @e[tag=meteor_marker,limit=1] ~ ~1 ~


execute at @a[scores={char=60,s1_timer=1..14}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.7

execute at @a[scores={char=60,s1_timer=15..24}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=60,s1_timer=15..24}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.3 ~

execute at @a[scores={char=60,s1_timer=25..}] as @e[tag=meteor_marker] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=60,s1_timer=25..}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.5 ~

execute at @a[scores={char=60,s1_timer=40..}] as @e[tag=meteor_marker] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=meteor_marker] run particle sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.01 3 normal
execute at @e[tag=meteor_marker] run particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.01 4 normal

execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["meteor_point","entities_starfather"]}
execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run summon marker ~ ~30 ~ {Tags:["meteor","entities_starfather"]}
execute as @e[tag=meteor_marker] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s

scoreboard players add @e[tag=meteor_point] s1_timer 1
scoreboard players add @e[tag=meteor] s1_timer 1

execute at @e[tag=meteor_point] run particle electric_spark ~ ~1.2 ~ 3 0.2 3 0.01 3
execute at @e[tag=meteor] run particle electric_spark ~ ~1.2 ~ 1 1 1 0.01 3
execute at @e[tag=meteor] run particle sculk_charge_pop ~ ~1.2 ~ 0.5 0.5 0.5 0.01 3
execute at @e[tag=meteor] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~1.2 ~ 1 1 1 0.01 5


execute as @e[tag=meteor,scores={s1_timer=..61}] at @s run tp @s ~ ~-0.5 ~


execute at @e[tag=meteor,scores={s1_timer=60}] as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=60}] Team run damage @s 8 generic by @p[scores={char=60}] from @p[scores={char=60}]
execute at @e[tag=meteor,scores={s1_timer=60}] as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=60}] Team run effect give @s blindness 1 1 true


execute at @e[tag=meteor,scores={s1_timer=60}] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~0.2 ~ 5 0.1 5 0.01 300
execute at @e[tag=meteor,scores={s1_timer=60}] run particle sculk_charge_pop ~ ~0.2 ~ 4 1 4 1 100
execute at @e[tag=meteor,scores={s1_timer=60}] run particle electric_spark ~ ~0.2 ~ 3 1 3 0.1 100
execute at @e[tag=meteor,scores={s1_timer=60}] run playsound entity.lightning_bolt.impact master @a[distance=..14] ~ ~ ~ 0.8 0.4 1
execute at @e[tag=meteor,scores={s1_timer=60}] run playsound entity.evoker.prepare_summon master @a[distance=..14] ~ ~ ~ 1 0.8 1

execute as @e[tag=meteor_point] at @s run rotate @s ~6 ~
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^ ^ ^3 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^ ^ ^-3 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^3 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^-3 ^ ^ 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^2.25 ^ ^2.25 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^-2.25 ^ ^-2.25 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^2.25 ^ ^-2.25 0.1 0.2 0.1 0 10
execute as @e[tag=meteor_point] at @s positioned ~ ~.1 ~ run particle dust{color:[0.058,0.321,0.729],scale:1} ^-2.25 ^ ^2.25 0.1 0.2 0.1 0 10

execute at @e[tag=meteor,scores={s1_timer=90}] run particle dust{color:[0.38,0.96,0.86],scale:1.0f} ~ ~1 ~ 1.5 1 0.5 1 100
execute at @e[tag=meteor,scores={s1_timer=90}] run particle sculk_charge_pop ~ ~1 ~ 1.5 1 0.5 1 50
execute at @e[tag=meteor,scores={s1_timer=90}] run particle block{block_state:{Name:"minecraft:deepslate_diamond_ore"}} ~ ~1 ~ 1.5 1.5 0.5 1 100
execute at @e[tag=meteor,scores={s1_timer=88..90}] run playsound block.stone.break master @a[distance=..14] ~ ~ ~ 1 0.5 1
execute at @e[tag=meteor,scores={s1_timer=90..}] run kill @e[tag=meteor_visuals]
kill @e[tag=meteor,scores={s1_timer=90..}]

kill @e[tag=meteor_point,scores={s1_timer=60..}]

execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_1] run summon block_display ~ ~ ~ {Tags:["meteor_visual_1","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.3,1.8,1.3],translation:[-0.65,0.0,-0.65]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_2] run summon block_display ~ ~ ~ {Tags:["meteor_visual_2","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.3,1.8,1.3],translation:[-0.65,0.0,-0.65]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_3] run summon block_display ~ ~ ~ {Tags:["meteor_visual_3","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.3,1.5,1.3],translation:[-0.65,0.0,-0.65]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_4] run summon block_display ~ ~ ~ {Tags:["meteor_visual_4","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_diamond_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_5] run summon block_display ~ ~ ~ {Tags:["meteor_visual_5","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_lapis_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_6] run summon block_display ~ ~ ~ {Tags:["meteor_visual_6","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_redstone_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_7] run summon block_display ~ ~ ~ {Tags:["meteor_visual_7","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_iron_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_8] run summon block_display ~ ~ ~ {Tags:["meteor_visual_8","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_diamond_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_9] run summon block_display ~ ~ ~ {Tags:["meteor_visual_9","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_lapis_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}
execute at @e[tag=meteor] unless entity @e[tag=meteor_visual_10] run summon block_display ~ ~ ~ {Tags:["meteor_visual_10","meteor_visuals","entities_starfather"],teleport_duration:1,block_state:{Name:"minecraft:deepslate_emerald_ore"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.6,0.6,0.6],translation:[-0.3,0.0,-0.3]},brightness:{sky:15,block:15}}

execute at @e[tag=meteor] run tp @e[tag=meteor_visual_1] ~0.3 ~0.1 ~0.3
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_2] ~-0.3 ~0.4 ~-0.3
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_3] ~0.1 ~0.5 ~-0.1
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_4] ~-0.7 ~0.7 ~-0.2
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_5] ~-0.8 ~1.2 ~0.1
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_6] ~-0.3 ~1.1 ~-0.8
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_7] ~0.5 ~0.7 ~-0.7
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_8] ~0.5 ~0.3 ~0.7
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_9] ~0.2 ~0.6 ~0.8
execute at @e[tag=meteor] run tp @e[tag=meteor_visual_10] ~0.9 ~0.3 ~


#event horizon

scoreboard players set @a[scores={char=60,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=60,s2_timer=1,CC_silence=1..}] s2_timer 380


execute at @a[scores={char=60,s2_timer=1,CC_silence=0}] run playsound entity.wither.ambient master @a[distance=..10] ~ ~ ~ 0.2 1.5 1
execute at @a[scores={char=60,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["BlackHole","entities_starfather"]}
execute at @a[scores={char=60,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["BlackHoleEventHorizon","entities_starfather"]}
tp @e[tag=BlackHole,limit=1] @a[scores={char=60,s2_timer=1},limit=1]
execute if entity @a[scores={char=60,s2_timer=1},limit=1] as @e[tag=BlackHole,limit=1] at @s run tp @s ~ ~1 ~

execute as @e[tag=BlackHoleEventHorizon] at @s positioned as @n[tag=BlackFuckingHole] run tp @s ~ ~ ~
execute as @e[tag=BlackHoleEventHorizon] at @s run rotate @s ~12 0

execute at @a[scores={char=60}] run tag @e[distance=4..,tag=BlackHole] add BlackFuckingHole
execute as @e[tag=BlackFuckingHole] run tag @s remove BlackHole

execute at @e[tag=BlackFuckingHole] run particle smoke ~ ~0.5 ~ 4 4 4 0.01 10 force
execute at @e[tag=BlackFuckingHole] run playsound entity.ghast.ambient master @a[distance=..8] ~ ~ ~ 0.1 0.1 1
execute at @e[tag=BlackFuckingHole] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 0.4 0.4 0.4 0.0001 100 force
execute at @e[tag=BlackFuckingHole] run particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0.01 5 force
execute at @e[tag=BlackFuckingHole] run particle smoke ~ ~0.5 ~ 3 0.1 3 0.01 20 force
execute at @e[tag=BlackFuckingHole] run particle dust{color:[0.0,0.0,0.0],scale:1.0f} ~ ~0.5 ~ 3 0.1 3 0.01 20 force
execute at @e[tag=BlackHole] run particle smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.01 10 force

execute at @e[tag=BlackHoleEventHorizon] if entity @e[tag=BlackFuckingHole] positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[1.0,0.647,0.0],scale:2f,to_color:[1.0,0.835,0.5]} ^ ^ ^3 .65 0 .65 0.01 5
execute at @e[tag=BlackHoleEventHorizon] if entity @e[tag=BlackFuckingHole] positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[1.0,0.647,0.0],scale:2f,to_color:[1.0,0.835,0.5]} ^ ^ ^-3 .65 0 .65 0.01 5
execute at @e[tag=BlackHoleEventHorizon] if entity @e[tag=BlackFuckingHole] positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[1.0,0.647,0.0],scale:2f,to_color:[1.0,0.835,0.5]} ^3 ^ ^ .65 0 .65 0.01 5
execute at @e[tag=BlackHoleEventHorizon] if entity @e[tag=BlackFuckingHole] positioned ~ ~.5 ~ run particle dust_color_transition{from_color:[1.0,0.647,0.0],scale:2f,to_color:[1.0,0.835,0.5]} ^-3 ^ ^ .65 0 .65 0.01 5

execute as @e[tag=BlackHole] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=BlackFuckingHole] at @s unless block ~ ~-0.5 ~ #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=BlackFuckingHole] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=BlackHole] at @s run tp @s ^ ^ ^0.18
execute as @e[tag=BlackFuckingHole] at @s run tp @s ^ ^ ^0.15

execute at @a[scores={char=60,s2_timer=140..}] run kill @e[tag=BlackHole]
execute at @a[scores={char=60,s2_timer=140..}] run kill @e[tag=BlackFuckingHole]
execute at @a[scores={char=60,s2_timer=140..}] run kill @e[tag=BlackHoleEventHorizon]

execute at @e[tag=BlackFuckingHole] as @e[tag=valid_spell_target,distance=..6] unless score @s Team = @p[scores={char=60}] Team run effect give @s slowness 1 5

execute at @e[tag=BlackFuckingHole] as @a[tag=valid_spell_target,distance=..2] unless score @s Team = @p[scores={char=60}] Team run tp @s @n[tag=BlackFuckingHole]





# father of stars

scoreboard players set @a[scores={char=60}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=60}] spellCD1 300
scoreboard players add @a[scores={s1_timer=1..,char=60}] s1_timer 1
scoreboard players set @a[scores={s1_timer=301..,char=60}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=60}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=60}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=60}] s2_timer 0

execute as @a[scores={char=60}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=60}] bow
item replace entity @a[scores={char=60}] hotbar.0 with bow[minecraft:custom_name={text:"Comet",color:"gray",bold:1b},minecraft:enchantments={"minecraft:power":1},minecraft:unbreakable={}] 1

execute as @a[scores={char=60,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=60}] carrot_on_a_stick
item replace entity @a[scores={char=60,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Sky Collapse",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1},item_model=phantom_spawn_egg,custom_data={s1:1}] 1

execute as @a[scores={char=60,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=60}] warped_fungus_on_a_stick
item replace entity @a[scores={char=60,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Event Horizon",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1},item_model=end_crystal,custom_data={s2:1}] 1


