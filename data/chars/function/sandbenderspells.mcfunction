kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:rabbit_foot"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sandstone_wall"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe"}}]

#scorn of the desert

scoreboard players set @a[scores={char=52,spell_bend_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=52,spell_bend_1_1=1,CC_silence=1..}] spell_bend_1_1 100

execute at @a[scores={char=52,spell_bend_1_1=1..2,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..1] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=52,spell_bend_1_1=1,CC_silence=0}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..1] ~ ~ ~ 0.2 0.6 1
execute at @a[scores={char=52,spell_bend_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["sand_scorn"],NoGravity:0b}
tp @e[tag=sand_scorn,limit=1] @a[scores={char=52,spell_bend_1_1=1},limit=1]


execute store result entity @e[tag=sand_scorn,limit=1] Rotation[1] float 1 run clear
#execute as @e[tag=sand_scorn] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["sand_scorn_explosion"]}
execute as @e[tag=sand_scorn] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["sand_scorn_visual_1","sand_scorn_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["sand_scorn_visual_2","sand_scorn_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["sand_scorn_visual_3","sand_scorn_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["sand_scorn_visual_4","sand_scorn_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute at @e[tag=sand_scorn] unless entity @e[tag=sand_scorn_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["sand_scorn_visual_5","sand_scorn_visuals"],Marker:1b,equipment:{head:{id:"minecraft:sand",count:1}}}
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_1] ^ ^-0.5 ^ facing entity @e[tag=sand_scorn,limit=1]
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_2] ^0.3 ^-0.5 ^-0.3 facing entity @e[tag=sand_scorn,limit=1]
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_3] ^-0.3 ^-0.5 ^-0.3 facing entity @e[tag=sand_scorn,limit=1]
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_4] ^0.6 ^-0.5 ^-0.6 facing entity @e[tag=sand_scorn,limit=1]
execute as @e[tag=sand_scorn] at @s run tp @e[tag=sand_scorn_visual_5] ^-0.6 ^-0.5 ^-0.6 facing entity @e[tag=sand_scorn,limit=1]
execute unless entity @e[tag=sand_scorn] run kill @e[tag=sand_scorn_visuals]


#execute at @e[tag=sand_scorn] run particle block{block_state: 'minecraft:sandstone'} ~ ~ ~ 0.4 0.6 0.4 0.0001 10 normal
execute at @e[tag=sand_scorn] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.2 1 0.2 0.0001 20 normal
execute at @e[tag=sand_scorn] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.7 1 0.7 0.0001 15 normal
execute at @e[tag=sand_scorn] run particle minecraft:witch ~ ~1 ~ 0.8 1 0.8 2 4
execute as @e[tag=sand_scorn] at @s run tp @s ^ ^ ^0.6

execute if entity @a[scores={char=52},team=yellow] at @e[tag=sand_scorn] if entity @a[distance=..2,team=purple] run summon minecraft:marker ~ ~ ~ {Tags:["sand_scorn_explosion"]}
execute if entity @a[scores={char=52},team=purple] at @e[tag=sand_scorn] if entity @a[distance=..2,team=yellow] run summon minecraft:marker ~ ~ ~ {Tags:["sand_scorn_explosion"]}

execute at @a[scores={char=52,spell_bend_1_1=20..}] run kill @e[tag=sand_scorn]

execute if entity @a[scores={char=52},team=yellow] at @e[tag=sand_scorn_explosion] run scoreboard players set @p[distance=..2,team=purple] CC_root 10
execute if entity @a[scores={char=52},team=yellow] at @e[tag=sand_scorn_explosion] as @p[distance=..2,team=purple] run damage @s 6 generic by @p[scores={char=52}] from @p[scores={char=52}]

execute if entity @a[scores={char=52},team=purple] at @e[tag=sand_scorn_explosion] run scoreboard players set @p[distance=..2,team=yellow] CC_root 10
execute if entity @a[scores={char=52},team=purple] at @e[tag=sand_scorn_explosion] as @p[distance=..2,team=yellow] run damage @s 6 generic by @p[scores={char=52}] from @p[scores={char=52}]


execute at @e[tag=sand_scorn_explosion] run playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.2 1
execute at @e[tag=sand_scorn_explosion] run playsound minecraft:block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @e[tag=sand_scorn_explosion] run playsound minecraft:entity.husk.step master @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @e[tag=sand_scorn_explosion] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 2 2 2 1 300 force
execute at @e[tag=sand_scorn_explosion] run particle minecraft:witch ~ ~1 ~ 2 2 2 2 100 force
execute at @e[tag=sand_scorn_explosion] run kill @e[tag=sand_scorn]
kill @e[tag=sand_scorn_explosion]


#last sandstorm

scoreboard players set @a[scores={char=52,spell_bend_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=52,spell_bend_2_1=1,CC_silence=1..}] spell_bend_2_1 260

scoreboard players set @a[scores={char=52,spell_bend_2_1=1..60,CC_silence=1..}] spellCD2 330
scoreboard players set @a[scores={char=52,spell_bend_2_1=1..60,CC_silence=1..}] spell_bend_2_1 71

#item replace entity @a[scores={char=52,spell_bend_2_1=1..60,CC_silence=0}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:8,Operation:0,UUID:[I;1470799731,-1103936206,-1620418192,-1765381837],Slot:"head"}],SkullOwner:{Id:[I;-655693875,-4962838,-1286410701,1283331238],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiNTliYzlkNjcwNDExMWYxMzE4YmEyYWJlMGM0ODBmZTMyNmVhZDk1Y2Y3ZGRmZDJiMzZmMzAzNWRkOThhOCJ9fX0="}]}}} 1
execute at @a[scores={char=52,spell_bend_2_1=1..20,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.4 1.0
execute at @a[scores={char=52,spell_bend_2_1=21..40,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.6 1.0
execute at @a[scores={char=52,spell_bend_2_1=41..65,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..15] ~ ~ ~ 0.4 0.8 1.0
effect give @a[scores={char=52,spell_bend_2_1=1..2,CC_silence=0}] minecraft:absorption 3 2
execute at @a[scores={char=52,spell_bend_2_1=1..60,CC_silence=0}] run particle minecraft:witch ~ ~0.4 ~ 0.8 0.8 0.8 1 3 force
execute at @a[scores={char=52,spell_bend_2_1=1..40,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1 1 1 1 3 force

execute at @a[scores={char=52,spell_bend_2_1=1..20,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.2 ~ 1.5 0.3 1.5 0.001 40 force
execute at @a[scores={char=52,spell_bend_2_1=21..40,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.3 ~ 1 0.5 1 0.001 30 force
execute at @a[scores={char=52,spell_bend_2_1=41..60,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.001 20 force

execute at @a[scores={char=52,spell_bend_2_1=62..70,CC_silence=0}] run playsound minecraft:block.sand.break master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,spell_bend_2_1=62..70,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,spell_bend_2_1=62,CC_silence=0}] run playsound minecraft:block.stone.break master @a[distance=..15] ~ ~ ~ 0.8 0.8 1.0
execute at @a[scores={char=52,spell_bend_2_1=62,CC_silence=0}] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.6 0.6 1
execute at @a[scores={char=52,spell_bend_2_1=62,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["last_sandstorm"]}
tp @e[tag=last_sandstorm,limit=1] @a[scores={char=52,spell_bend_2_1=62},limit=1]
execute at @a[scores={char=52,spell_bend_2_1=62,CC_silence=0}] at @e[tag=last_sandstorm] run tp @s ~ ~1 ~
#item replace entity @a[scores={char=52,spell_bend_2_1=61..70,CC_silence=0}] armor.head with player_head{display:{Name:'{"text":"Head"}'},Enchantments:[{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"max_health",Name:"max_health",Amount:8,Operation:0,UUID:[I;1470799731,-1103936206,-1620418192,-1765381837],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;471843996,-615300320,-1946372824,170753760],Slot:"head"}],SkullOwner:{Id:[I;-655693875,-4962838,-1286410701,1283331238],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiNTliYzlkNjcwNDExMWYxMzE4YmEyYWJlMGM0ODBmZTMyNmVhZDk1Y2Y3ZGRmZDJiMzZmMzAzNWRkOThhOCJ9fX0="}]}}} 1

#execute as @e[tag=last_sandstorm] at @s unless block ^ ^1 ^1 #dash run kill @s
#execute as @e[tag=last_sandstorm] at @s unless block ~ ~ ~ #dash run kill @s

execute at @a[scores={char=52,spell_bend_2_1=62..70}] at @e[tag=last_sandstorm] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.5 20
execute at @e[tag=last_sandstorm] run playsound minecraft:block.sand.place master @a[distance=..10] ~ ~ ~ 1 0.8 1.0
execute at @e[tag=last_sandstorm] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 4 4 4 0.01 50 normal
execute at @e[tag=last_sandstorm] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~1 ~ 4 4 4 0.0001 40 normal
execute at @e[tag=last_sandstorm] run particle minecraft:witch ~ ~1 ~ 5 5 5 2 40
execute as @e[tag=last_sandstorm] at @s run tp @s ^ ^ ^0.4

execute at @a[scores={char=52,spell_bend_2_1=120..}] run kill @e[tag=last_sandstorm]


execute if entity @a[scores={char=52},team=yellow] at @e[tag=last_sandstorm] run scoreboard players set @p[distance=..5,scores={sandgrasp=0},team=purple] sandgrasp 50
execute if entity @a[scores={char=52},team=purple] at @e[tag=last_sandstorm] run scoreboard players set @p[distance=..5,scores={sandgrasp=0},team=yellow] sandgrasp 50


effect give @a[scores={sandgrasp=2..}] minecraft:slow_falling 1 0 true
#execute as @a[scores={sandgrasp=2..}] at @s run tp @e[tag=sandgrasp_grasp,limit=1,sort=nearest,distance=..1.5]
execute at @e[tag=sandgrasp_grasp] run tp @a[distance=..1.5,scores={sandgrasp=2..},limit=1] ~ ~ ~

execute as @e[tag=sandgrasp_grasp] at @s run tp @s ~ ~ ~ ~ 90
execute as @e[tag=sandgrasp_grasp] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1.5 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ^ ^ ^1 #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1
execute as @e[tag=sandgrasp_grasp] at @s unless block ~ ~-1 ~ #minecraft:dash run scoreboard players set @p[distance=..1,scores={sandgrasp=2..}] sandgrasp 1

execute at @a[scores={sandgrasp=2..}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.6 0.6 0.6 0.1 3
execute at @a[scores={sandgrasp=2..}] run particle minecraft:witch ~ ~ ~ 0.6 0.6 0.6 0.1 1

scoreboard players set @a[scores={sandgrasp=3..}] CC_knockdown 3
scoreboard players set @a[scores={sandgrasp=1}] CC_stagger 60
execute at @a[scores={sandgrasp=-1}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 1.5 0.5 1.5 1 100
execute at @a[scores={sandgrasp=-1}] run particle minecraft:witch ~ ~ ~ 1.5 0.5 1.5 1 30
execute at @a[scores={sandgrasp=-1}] run playsound minecraft:entity.generic.big_fall master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @a[scores={sandgrasp=-1}] run playsound minecraft:block.sand.break master @a[distance=..10] ~ ~ ~ 1 0.1 1
effect give @a[scores={sandgrasp=1..2}] minecraft:blindness 3
effect give @a[scores={sandgrasp=1..2}] minecraft:slowness 3 4
effect give @a[scores={sandgrasp=1..2}] minecraft:glowing 3 0 true
effect clear @a[scores={sandgrasp=1..2}] minecraft:slow_falling

scoreboard players set @a[scores={sandgrasp=1}] sandgrasp -1
scoreboard players remove @a[scores={sandgrasp=-40..-1}] sandgrasp 1
scoreboard players remove @a[scores={sandgrasp=2..}] sandgrasp 1
scoreboard players set @a[scores={sandgrasp=..-40}] sandgrasp 0

execute at @a[scores={sandgrasp=3..}] unless entity @e[distance=..1,tag=sandgrasp_grasp] run summon minecraft:marker ~ ~ ~ {Tags:["sandgrasp_grasp"]}

execute as @e[tag=sandgrasp_grasp] at @s unless entity @a[distance=..1,scores={sandgrasp=3..}] run kill @s


title @a[scores={char=52,spell_bend_2_1=1..75,CC_silence=0}] times 0 20 0
title @a[scores={char=52,spell_bend_2_1=1..75,CC_silence=0}] title {text:" ",type:"text"}
title @a[scores={char=52,spell_bend_2_1=1..19,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 3 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,spell_bend_2_1=20..39,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 2 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,spell_bend_2_1=40..59,CC_silence=0}] subtitle [{text:"=",bold:1b,color:"dark_purple",type:"text"},{text:" 1 ",bold:1b,color:"light_purple",type:"text"},{text:"=",bold:1b,color:"dark_purple",type:"text"}]
title @a[scores={char=52,spell_bend_2_1=60..70,CC_silence=0}] subtitle {text:"Buush rou Shar aff",italic:1b,color:"light_purple",type:"text"}
title @a[scores={char=52,spell_bend_2_1=71..75,CC_silence=0}] subtitle {text:" ",type:"text"}

#blind vengeance

effect give @a[scores={char=52}] minecraft:blindness infinite 0 true

execute at @a[scores={char=52},team=yellow] run effect give @a[distance=..10,scores={universal_damagetaken=1..},team=purple] minecraft:glowing 3 0 true
execute at @a[scores={char=52},team=purple] run effect give @a[distance=..10,scores={universal_damagetaken=1..},team=yellow] minecraft:glowing 3 0 true
execute at @a[scores={char=52},team=yellow] run effect give @a[distance=..10,scores={universal_damagetaken_shield=1..},team=purple] minecraft:glowing 3 0 true
execute at @a[scores={char=52},team=purple] run effect give @a[distance=..10,scores={universal_damagetaken_shield=1..},team=yellow] minecraft:glowing 3 0 true


scoreboard players add @a[scores={char=52,spell_bend_1_1=1}] passive_bend 1
scoreboard players add @a[scores={char=52,spell_bend_2_1=1}] passive_bend 1

item replace entity @a[scores={char=52,passive_bend=5}] hotbar.3 with minecraft:pumpkin_seeds[minecraft:custom_name={text:"Blind Vengeance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={char=52,passive_bend=5}] passive_bend 6
scoreboard players set @a[scores={char=52,passive_bend=6..}] passive_bend 6

item replace entity @a[scores={char=52,spell_bend_3=1,CC_silence=1..}] hotbar.3 with minecraft:pumpkin_seeds[minecraft:custom_name={text:"Blind Vengeance",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:protection":1}] 1
scoreboard players set @a[scores={char=52,spell_bend_3=1,CC_silence=1..}] spell_bend_3 0

execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=yellow] run effect give @a[distance=..10,team=purple] minecraft:blindness 3
execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=yellow] run scoreboard players set @a[distance=..12,team=purple] CC_knockup 10
execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=yellow] as @a[distance=..10,team=purple] run damage @s 2 generic by @p[scores={char=52}] from @p[scores={char=52}]

execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=purple] run effect give @a[distance=..10,team=yellow] minecraft:blindness 3
execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=purple] run scoreboard players set @a[distance=..10,team=yellow] CC_knockup 10
execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0},team=purple] as @a[distance=..10,team=yellow] run damage @s 2 generic by @p[scores={char=52}] from @p[scores={char=52}]




execute at @a[scores={char=52,spell_bend_3=1,CC_silence=0}] run playsound minecraft:item.totem.use master @a[distance=..15] ~ ~ ~ 0.3 2 1
execute at @a[scores={char=52,spell_bend_3=1..5,CC_silence=0}] run playsound minecraft:block.sand.fall master @a[distance=..15] ~ ~ ~ 1.0 0.6 1.0
execute at @a[scores={char=52,spell_bend_3=1..2,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 6 0.5 6 1 200 force
execute at @a[scores={char=52,spell_bend_3=1..2,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 6 0.5 6 1 200 force
execute at @a[scores={char=52,spell_bend_3=1..,CC_silence=0}] run particle minecraft:witch ~ ~ ~ 6 0.3 6 2 100
scoreboard players set @a[scores={char=52,spell_bend_3=1,CC_silence=0}] passive_bend 0

scoreboard players add @a[scores={char=52,spell_bend_3=1..,CC_silence=0}] spell_bend_3 1
scoreboard players set @a[scores={char=52,spell_bend_3=5..,CC_silence=0}] spell_bend_3 0

title @a[scores={char=52,passive_bend=0}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"- - - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=1}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"=",color:"light_purple",type:"text"},{text:" - - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=2}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= =",color:"light_purple",type:"text"},{text:" - - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=3}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = =",color:"light_purple",type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=4}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = = =",color:"light_purple",type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]
title @a[scores={char=52,passive_bend=5..6}] actionbar [{text:"[ ",color:"dark_purple",bold:1b,type:"text"},{text:"= = = = =",color:"light_purple",type:"text"},{text:" ]",color:"dark_purple",bold:1b,type:"text"}]


#sandbender

scoreboard players add @a[scores={spell_bend_1=1..}] spell_bend_1_1 1
item replace entity @a[scores={char=52,spell_bend_1_1=120..}] hotbar.1 with minecraft:rabbit_foot[minecraft:custom_name={text:"Scorn of the Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_bend_1_1=121..}] spell_bend_1 0
scoreboard players set @a[scores={spell_bend_1_1=121..}] spell_bend_1_1 0
scoreboard players set @a[scores={spell_bend_1_1=1}] spellCD1 120

scoreboard players add @a[scores={spell_bend_2=1..}] spell_bend_2_1 1
item replace entity @a[scores={char=52,spell_bend_2_1=400..}] hotbar.2 with minecraft:sandstone_wall[minecraft:custom_name={text:"Last Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
scoreboard players set @a[scores={spell_bend_2_1=401..}] spell_bend_2 0
scoreboard players set @a[scores={spell_bend_2_1=401..}] spell_bend_2_1 0
scoreboard players set @a[scores={spell_bend_2_1=1}] spellCD2 400

execute as @a[scores={char=52}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_axe",Slot:0b}]}] run clear @a[scores={char=52}] minecraft:golden_axe
item replace entity @a[scores={char=52}] hotbar.0 with minecraft:golden_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Mantis Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=52,spell_bend_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:rabbit_foot",Slot:1b}]}] run clear @a[scores={char=52}] minecraft:rabbit_foot
item replace entity @a[scores={char=52,spell_bend_1=0}] hotbar.1 with minecraft:rabbit_foot[minecraft:custom_name={text:"Scorn of the Desert",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1

execute as @a[scores={char=52,spell_bend_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:sandstone_wall",Slot:2b}]}] run clear @a[scores={char=52}] minecraft:sandstone_wall
item replace entity @a[scores={char=52,spell_bend_2=0}] hotbar.2 with minecraft:sandstone_wall[minecraft:custom_name={text:"Last Sandstorm",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1
