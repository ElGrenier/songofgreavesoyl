kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}]



#passive

execute at @a[scores={char=10}] as @a[distance=..8] unless score @s Team = @p[scores={char=10}] Team run tag @s add kraken_passive_stacking_valid_target
execute at @a[scores={char=10}] as @a[distance=8.1..] unless score @s Team = @p[scores={char=10}] Team run tag @s remove kraken_passive_stacking_valid_target
execute at @a[scores={char=10}] as @a if score @s Team = @p[scores={char=10}] Team run tag @s remove kraken_passive_stacking_valid_target

scoreboard players set @a[scores={char=10,CC_silence=1..}] passive_krak 0

scoreboard players set @a[scores={passive_krak=..-1}] passive_krak 0
scoreboard players set @a[scores={passive_krak=100..}] passive_krak 100

scoreboard players set @a[scores={passive_krak=..80}] kraken_tentacle 0
scoreboard players add @a[scores={passive_krak=80..}] kraken_tentacle 1


execute at @a[scores={char=10}] if entity @a[distance=..8,tag=kraken_passive_stacking_valid_target] run scoreboard players add @a[scores={char=10}] passive_krak 1
execute at @a[scores={char=10}] unless entity @a[distance=..8,tag=kraken_passive_stacking_valid_target] run scoreboard players remove @a[scores={char=10}] passive_krak 3

execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-0.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.3f,-0.25f],scale:[0.5f,0.7f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-1 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.275f,-0.3f,-0.275f],scale:[0.55f,0.6f,0.55f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-1.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-2 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.275f,-0.4f,-0.275f],scale:[0.65f,0.8f,0.65f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-2.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.275f,-0.5f,-0.275f],scale:[0.65f,1f,0.65f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run summon block_display ~ ~-3 ~ {Tags:["tentacle_visuals","tentacle_visuals_2","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.275f,-0.5f,-0.275f],scale:[0.65f,1f,0.65f]},block_state:{Name:"minecraft:warped_wart_block"}}


execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] at @s unless score @s Team = @p[scores={char=10}] Team run particle minecraft:dust{color:[0.0,0.4,0.2],scale:1.0f} ~ ~ ~ 0.1 0.7 0.1 0.0001 500
execute at @a[scores={char=10,kraken_tentacle=80}] as @a[distance=..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=10}] Team run scoreboard players set @s CC_stun 10

execute at @a[scores={char=10,passive_krak=80..}] run particle bubble ~ ~0.2 ~ 1 0.5 1 0.1 10
execute at @a[scores={char=10,passive_krak=80..}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.1 ~ 1 0.3 1 0.1 40
execute at @a[scores={char=10,passive_krak=80..}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 3 0.2 3 0.1 80
execute at @a[scores={char=10,kraken_tentacle=75..85}] run particle bubble ~ ~ ~ 4 0.5 4 0.1 800
execute at @a[scores={char=10,kraken_tentacle=80}] run playsound entity.guardian.hurt master @a[distance=..10] ~ ~ ~ 1 0.8 1
scoreboard players set @a[scores={kraken_tentacle=85..}] kraken_tentacle 5
scoreboard players add @a[scores={char=10,passive_krak=80..}] regen 1
execute at @a[scores={char=10,passive_krak=120..}] run particle bubble ~ ~0.3 ~ 0.7 0.3 0.7 0.1 30

execute as @e[tag=tentacle_visuals_2] at @s run tp @s ~ ~0.2 ~
scoreboard players add @e[tag=tentacle_visuals_2] kraken_tentacle 1
kill @e[tag=tentacle_visuals_2,scores={kraken_tentacle=20..}]

title @a[scores={char=10,passive_krak=..20}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"- - - -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=10,passive_krak=20..40}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"||",bold:1b,color:"blue",type:"text"},{text:" - - -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=10,passive_krak=40..60}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"|| ||",bold:1b,color:"blue",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=10,passive_krak=60..80}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"|| || ||",bold:1b,color:"blue",type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=10,passive_krak=80..}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"SUBMERGED",bold:1b,color:"aqua",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=10,CC_silence=1..}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"DISABLED",bold:1b,color:"aqua",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]

#grasping abyss

execute unless entity @e[tag=kraken_tentacle_animation_fix] run summon marker ~ ~ ~ {Tags:["kraken_tentacle_animation_fix","entities_kraken"]}
execute as @p[scores={char=10}] at @s run tp @e[tag=kraken_tentacle_animation_fix] ~ ~1 ~

scoreboard players set @a[scores={char=10,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=10,s1_timer=1,CC_silence=1..}] s1_timer 80

execute at @a[scores={char=10,s1_timer=1,CC_silence=0}] run playsound entity.squid.hurt master @a[distance=..15] ~ ~ ~ 1 0.3 1
execute at @a[scores={char=10,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["kraken_tentacle","projectile","entities_kraken"]}
execute at @a[scores={char=10,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["kraken_tentacle_visual_core","entities_kraken"]}
scoreboard players operation @e[tag=projectile,tag=kraken_tentacle] Team = @p[scores={char=10}] Team
tp @e[tag=kraken_tentacle,limit=1] @a[scores={char=10,s1_timer=1},limit=1]
execute at @a[scores={char=10,s1_timer=1,CC_silence=0}] as @e[tag=kraken_tentacle,limit=1] at @s run tp @s ~ ~1 ~ 

execute at @a[scores={char=10,s1_timer=..10}] at @e[tag=tentacle_visuals_1] run particle block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.3 0.3 0.3 0.0001 3 normal
execute as @e[tag=kraken_tentacle] at @s run tp @s ^ ^ ^0.6

#execute store result entity @e[tag=kraken_tentacle,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=kraken_tentacle] at @s unless block ^ ^ ^0.5 #minecraft:dash run kill @s

execute as @e[tag=kraken_tentacle] at @s run tp @e[tag=kraken_tentacle_visual_core] ~ ~ ~ facing entity @e[tag=kraken_tentacle_animation_fix,limit=1]

execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..1] unless entity @e[tag=tentacle1] at @s positioned ^ ^ ^1 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle1","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.6f,0.6f,1.1f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..2] unless entity @e[tag=tentacle2] at @s positioned ^ ^ ^2 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle2","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.6f],scale:[0.6f,0.6f,1.2f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..3] unless entity @e[tag=tentacle3] at @s positioned ^ ^ ^3 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle3","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.6f],scale:[0.6f,0.6f,1.2f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..4] unless entity @e[tag=tentacle4] at @s positioned ^ ^ ^4 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle4","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..5] unless entity @e[tag=tentacle5] at @s positioned ^ ^ ^5 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle5","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..6] unless entity @e[tag=tentacle6] at @s positioned ^ ^ ^6 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle6","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..7] unless entity @e[tag=tentacle7] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle7","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..8] unless entity @e[tag=tentacle8] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle8","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..9] unless entity @e[tag=tentacle9] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle9","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..10] unless entity @e[tag=tentacle10] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle10","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..11] unless entity @e[tag=tentacle11] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle11","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..12] unless entity @e[tag=tentacle12] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle12","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..13] unless entity @e[tag=tentacle13] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle13","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..14] unless entity @e[tag=tentacle14] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle14","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute as @e[tag=kraken_tentacle_visual_core] at @s unless entity @a[scores={char=10},distance=..15] unless entity @e[tag=tentacle15] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["tentacle15","tentacle_visuals","tentacle_visuals_1","entities_kraken"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.65f],scale:[0.6f,0.6f,1.3f]},block_state:{Name:"minecraft:warped_wart_block"}}

execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^15 run tp @e[tag=tentacle15] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^14 run tp @e[tag=tentacle14] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^13 run tp @e[tag=tentacle13] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^12 run tp @e[tag=tentacle12] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^11 run tp @e[tag=tentacle11] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^10 run tp @e[tag=tentacle10] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^9 run tp @e[tag=tentacle9] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^8 run tp @e[tag=tentacle8] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^7 run tp @e[tag=tentacle7] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^6 run tp @e[tag=tentacle6] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^5 run tp @e[tag=tentacle5] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=tentacle4] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=tentacle3] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=tentacle2] ~ ~ ~
execute as @e[tag=kraken_tentacle_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=tentacle1] ~ ~ ~

execute as @e[tag=tentacle_visuals_1] at @s run rotate @s facing entity @e[tag=kraken_tentacle_visual_core,limit=1]
#execute as @e[tag=tentacle_visuals_1] at @s store result entity @s Rotation[1] float 1 run clear

execute at @a[scores={char=10,s1_timer=15..25}] run kill @e[tag=kraken_tentacle]
execute at @a[scores={char=10,s1_timer=15..25}] run kill @e[tag=kraken_tentacle_visual_core]
execute at @a[scores={char=10,s1_timer=15..25}] run kill @e[tag=tentacle_visuals_1]

execute at @e[tag=kraken_tentacle] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=10}] Team run tag @s add kraken_slammed

effect give @e[tag=kraken_slammed] blindness 2 1 true
damage @e[tag=kraken_slammed,limit=1] 6 generic by @p[scores={char=10}] from @p[scores={char=10}]
execute at @e[tag=kraken_slammed] run particle block{block_state:{Name:"minecraft:dark_prismarine"}} ~ ~ ~ 1 1 1 0.1 100
execute if entity @e[tag=kraken_slammed] run kill @e[tag=kraken_tentacle]
tag @e remove kraken_slammed


#weight of the ocean


scoreboard players set @a[scores={char=10,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=10,s2_timer=1,CC_silence=1..}] s2_timer 460

execute at @a[scores={char=10,s2_timer=2,CC_silence=0}] as @p[distance=0.5..8,tag=valid_spell_target] unless score @s Team = @p[scores={char=10}] Team run scoreboard players set @s abyss 1

execute at @a[scores={abyss=2}] run summon marker ~ ~ ~ {Tags:["abyssmarker","entities_kraken"]}

execute at @a[scores={abyss=2}] run summon block_display ~ ~3 ~2 {Tags:["tentacle_tip_1","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~2.5 ~2 {Tags:["tentacle_tip_2","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~2 ~2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~1.5 ~2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~1 ~2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~0.5 ~2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}

execute at @a[scores={abyss=2}] run summon block_display ~ ~3 ~-2 {Tags:["tentacle_tip_1","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~2.5 ~-2 {Tags:["tentacle_tip_2","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~2 ~-2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~1.5 ~-2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~1 ~-2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~ ~0.5 ~-2 {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}

execute at @a[scores={abyss=2}] run summon block_display ~2 ~3 ~ {Tags:["tentacle_tip_1","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~2 ~2.5 ~ {Tags:["tentacle_tip_2","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~2 ~2 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~2 ~1.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~2 ~1 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~2 ~0.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}

execute at @a[scores={abyss=2}] run summon block_display ~-2 ~3 ~ {Tags:["tentacle_tip_1","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~-2 ~2.5 ~ {Tags:["tentacle_tip_2","tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~-2 ~2 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~-2 ~1.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~-2 ~1 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}
execute at @a[scores={abyss=2}] run summon block_display ~-2 ~0.5 ~ {Tags:["tentacle_visuals","tentacle_visuals_3","entities_kraken"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.55f],scale:[0.5f,0.8f,0.5f]},block_state:{Name:"minecraft:warped_wart_block"}}


execute at @a[scores={abyss=1..,universal_death=1..}] run kill @e[tag=abyssmarker]
scoreboard players set @a[scores={abyss=1..,universal_death=1..}] abyss 0

tp @a[scores={abyss=4}] 146 9 -206
effect give @a[scores={abyss=1..40}] blindness 2 0 true
execute at @e[tag=abyssmarker] run tp @a[scores={abyss=60}] ~ ~ ~
execute at @a[scores={abyss=60}] run kill @e[tag=abyssmarker]

execute at @a[scores={char=10,s2_timer=4,CC_silence=0}] as @a[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=10}] Team run effect give @s slowness 1 1
execute at @a[scores={char=10,s2_timer=4,CC_silence=0}] as @a[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=10}] Team run scoreboard players set @s CC_grounded 60

execute at @a[scores={char=10,s2_timer=2,CC_silence=0}] run playsound entity.zombie.converted_to_drowned master @a[distance=..10] ~ ~ ~ 1.0 0.8 1.0
execute at @a[scores={char=10,s2_timer=2,CC_silence=0}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.3 ~ 5 0.3 5 0.00001 1000 force

scoreboard players add @a[scores={abyss=1..}] abyss 1
scoreboard players set @a[scores={abyss=70..}] abyss 0

execute at @e[tag=abyssmarker] run particle bubble ~ ~0.1 ~ 0.3 1 0.3 0.1 60
execute at @e[tag=abyssmarker] run particle dripping_water ~ ~0.1 ~ 1 0.2 1 0.1 5

execute as @e[tag=tentacle_visuals_3] at @s run tp @s ~ ~ ~ facing entity @e[tag=abyssmarker,limit=1]
execute as @e[tag=tentacle_visuals_3] at @s store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=tentacle_visuals_3] at @s run tp @s ~ ~-0.1 ~
execute as @e[tag=tentacle_visuals_3] at @s run tp @s ^ ^ ^0.06
execute as @e[tag=tentacle_tip_1] at @s run tp @s ^ ^ ^0.04
execute as @e[tag=tentacle_tip_2] at @s run tp @s ^ ^ ^0.02
scoreboard players add @e[tag=tentacle_visuals_3] kraken_tentacle 1
kill @e[tag=tentacle_visuals_3,scores={kraken_tentacle=20..}]


# kraken

scoreboard players set @a[scores={char=10,s1_timer=1,char=10}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=10}] s1_timer 1
scoreboard players set @a[scores={s1_timer=161..,char=10}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=10}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=10}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=10}] s2_timer 0

execute as @a[scores={char=10}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_shovel",Slot:0b}]}] run clear @a[scores={char=10}] minecraft:diamond_shovel
item replace entity @a[scores={char=10}] hotbar.0 with minecraft:diamond_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Tentacle"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.6d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=10,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=10}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=10,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:twisting_vines",minecraft:custom_name={text:"Abyssal Grasp",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=10,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=10}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=10,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:tube_coral",minecraft:custom_name={text:"Weight of The Ocean",color:"dark_aqua",bold:1b}] 1


