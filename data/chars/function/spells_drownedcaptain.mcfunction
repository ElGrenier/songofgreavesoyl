kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stone_pickaxe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel"}}]

#passive


execute as @a[scores={universal_hit=1..,passive_drow=0,char=31}] as @a[advancements={chars:drowned_passive=true}] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s CC_root 20
execute as @a[scores={universal_hit=1..,passive_drow=0,char=31}] as @a[advancements={chars:drowned_passive=true}] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s drownedroot_visual 5
execute as @a[scores={universal_hit=1..,passive_drow=0,char=31}] as @a[advancements={chars:drowned_passive=true}] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @a[scores={char=31}] passive_drow 160
advancement revoke @a[advancements={chars:drowned_passive=true}] only chars:drowned_passive

execute at @a[scores={drownedroot_visual=1..}] run particle block{block_state:{Name:"minecraft:tuff"}} ~ ~0.5 ~ 0.5 1 0.5 0.1 5
execute at @a[scores={drownedroot_visual=1..}] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.5 1 0.5 0.1 5
execute at @a[scores={drownedroot_visual=1..}] run particle dripping_water ~ ~0.5 ~ 0.5 1 0.5 0.1 5

scoreboard players remove @a[scores={passive_drow=1..}] passive_drow 1
scoreboard players remove @a[scores={drownedroot_visual=1..}] drownedroot_visual 1

title @a[scores={char=31,passive_drow=0}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:" Captain's Ire is ready ",bold:0b,color:"blue",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=1..20}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=======",color:"blue",type:"text"},{text:"",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=21..40}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"======",color:"blue",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=41..60}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=====",color:"blue",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=61..80}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"====",color:"blue",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=81..100}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"===",color:"blue",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=101..120}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"==",color:"blue",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=121..140}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"=",color:"blue",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=31,passive_drow=141..160}] actionbar [{text:"[",color:"dark_blue",bold:1b,type:"text"},{text:"",color:"blue",type:"text"},{text:"=======",color:"gray",type:"text"},{text:"]",color:"dark_blue",bold:1b,type:"text"}]

execute unless entity @e[tag=rope_animation_fix] run summon marker ~ ~ ~ {Tags:["rope_animation_fix","entities_drownedcaptain"]}
execute as @p[scores={char=31}] at @s run tp @e[tag=rope_animation_fix] ~ ~1 ~


#keelhaul this filthy landubber send that bastard to the depths below

scoreboard players set @a[scores={char=31,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=31,s1_timer=1,CC_silence=1..}] s1_timer 300

execute at @a[scores={s1_timer=1,CC_silence=0}] run playsound entity.drowned.ambient_water master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @a[scores={char=31,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["keelhaul_hook","keelhaul_point_location","projectile","entities_drownedcaptain"],item:{count:1,id:"minecraft:iron_pickaxe"},teleport_duration:1,transformation:{left_rotation:[0.64755577f,0.2682264f,-0.2729492f,0.6589575f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2f,2f,2f],translation:[0f,0f,0f]}}
scoreboard players operation @e[tag=projectile,tag=keelhaul_hook] Team = @p[scores={char=31}] Team
tp @e[tag=keelhaul_hook,limit=1] @a[scores={char=31,s1_timer=1},limit=1]
execute at @a[scores={char=31,s1_timer=1,CC_silence=0}] as @e[tag=keelhaul_hook,limit=1] at @s run tp @s ~ ~1.4 ~ 


execute at @e[tag=keelhaul_hook] run particle block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.4 0.4 0.4 0.001 2 normal
execute at @e[tag=keelhaul_hook] run particle crit ~ ~ ~ 0.4 0.4 0.4 0.001 2 normal
execute as @e[tag=keelhaul_hook] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=31,s1_timer=30..}] run kill @e[tag=keelhaul_hook]

execute as @e[tag=keelhaul_hook] at @s positioned ~ ~ ~ unless block ^ ^ ^0.5 #dash run kill @s
execute as @e[tag=keelhaul_hook] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @e[tag=keelhaul_hook] positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team run scoreboard players set @s keelhauling 5
execute at @e[tag=keelhaul_hook] positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team run playsound item.crossbow.loading_start master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute if entity @a[scores={keelhauling=1..}] run kill @e[tag=keelhaul_hook]
tag @a[scores={keelhauling=3..}] add keelhaul_point_location


execute as @a[scores={keelhauling=4..5}] at @s run tp @s ~ ~ ~ facing entity @a[scores={char=31},limit=1]
execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=..5,scores={char=31}] run tp @s ^ ^ ^0.4
execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=5..,scores={char=31}] run tp @s ^ ^ ^0.5
scoreboard players set @a[scores={keelhauling=4..5}] CC_intangible 5
scoreboard players set @a[scores={keelhauling=3..5}] CC_stun 2
effect give @a[scores={keelhauling=3..5}] resistance 2 100 true
effect give @a[scores={keelhauling=3..5}] slow_falling 1 100 true

execute as @a[scores={keelhauling=4..5}] at @s if entity @a[distance=..1,scores={char=31}] run scoreboard players set @a[scores={keelhauling=4..5}] keelhauling 3

execute at @a[scores={keelhauling=5}] run playsound item.crossbow.loading_middle master @a[distance=..15] ~ ~ ~ 0.4 1.2 1
scoreboard players set @a[scores={keelhauling=1..2}] CC_intangible 0
scoreboard players set @a[scores={keelhauling=1..2}] CC_stun 0
scoreboard players set @a[scores={keelhauling=1..2}] CC_silence 0
tag @a[scores={keelhauling=1..2}] remove keelhaul_point_location
effect clear @a[scores={keelhauling=1..2}] resistance
effect clear @a[scores={keelhauling=1..2}] weakness
effect clear @a[scores={keelhauling=1..2}] slow_falling
tp @a[scores={keelhauling=1..2}] @p[scores={char=31},limit=1]


scoreboard players remove @a[scores={keelhauling=1..3}] keelhauling 1
#execute at @a[scores={char=31}] run scoreboard players set @a keelhauling 0

execute at @e[tag=keelhaul_point_location] unless entity @e[tag=keelhaul_point] run summon marker ~ ~ ~ {Tags:["keelhaul_point","entities_drownedcaptain"]}
execute as @e[tag=keelhaul_hook,tag=keelhaul_point_location] at @s run tp @e[tag=keelhaul_point] ~ ~ ~
execute as @p[tag=keelhaul_point_location] at @s run tp @e[tag=keelhaul_point] ~ ~1 ~

execute as @e[tag=keelhaul_point] unless entity @e[tag=keelhaul_point_location] run kill @s

execute as @e[tag=keelhaul_point] at @s run tp @s ~ ~ ~ facing entity @e[tag=rope_animation_fix,limit=1]

execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..1] unless entity @e[tag=haul_rope1] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope1","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..2] unless entity @e[tag=haul_rope2] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope2","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..3] unless entity @e[tag=haul_rope3] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope3","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..4] unless entity @e[tag=haul_rope4] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope4","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..5] unless entity @e[tag=haul_rope5] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope5","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..6] unless entity @e[tag=haul_rope6] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope6","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..7] unless entity @e[tag=haul_rope7] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope7","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..8] unless entity @e[tag=haul_rope8] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope8","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..9] unless entity @e[tag=haul_rope9] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope9","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..10] unless entity @e[tag=haul_rope10] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope10","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..11] unless entity @e[tag=haul_rope11] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope11","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..12] unless entity @e[tag=haul_rope12] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope12","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..13] unless entity @e[tag=haul_rope13] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope13","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..14] unless entity @e[tag=haul_rope14] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope14","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..15] unless entity @e[tag=haul_rope15] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope15","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..16] unless entity @e[tag=haul_rope16] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope16","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..17] unless entity @e[tag=haul_rope17] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope17","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..18] unless entity @e[tag=haul_rope18] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope18","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..19] unless entity @e[tag=haul_rope19] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope19","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..20] unless entity @e[tag=haul_rope20] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope20","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..21] unless entity @e[tag=haul_rope21] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope21","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..22] unless entity @e[tag=haul_rope22] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope22","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..23] unless entity @e[tag=haul_rope23] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope23","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..24] unless entity @e[tag=haul_rope24] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope24","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..25] unless entity @e[tag=haul_rope25] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope25","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..26] unless entity @e[tag=haul_rope26] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope26","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..27] unless entity @e[tag=haul_rope27] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope27","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..28] unless entity @e[tag=haul_rope28] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope28","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..29] unless entity @e[tag=haul_rope29] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope29","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..30] unless entity @e[tag=haul_rope30] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope30","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..31] unless entity @e[tag=haul_rope31] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope31","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..32] unless entity @e[tag=haul_rope32] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope32","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..33] unless entity @e[tag=haul_rope33] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope33","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..34] unless entity @e[tag=haul_rope34] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope34","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..35] unless entity @e[tag=haul_rope35] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope35","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..36] unless entity @e[tag=haul_rope36] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope36","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..37] unless entity @e[tag=haul_rope37] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope37","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..38] unless entity @e[tag=haul_rope38] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope38","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}
execute as @e[tag=keelhaul_point] at @s unless entity @a[scores={char=31},distance=..39] unless entity @e[tag=haul_rope39] run summon block_display ~ ~-20 ~ {teleport_duration:1,Tags:["haul_rope39","keelhaul_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.75f],scale:[0.15f,0.15f,1.5f]},block_state:{Name:"minecraft:stripped_birch_wood"}}

execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..1.9] run kill @e[tag=haul_rope2] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..2.9] run kill @e[tag=haul_rope3] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..3.9] run kill @e[tag=haul_rope4] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..4.9] run kill @e[tag=haul_rope5] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..5.9] run kill @e[tag=haul_rope6] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..6.9] run kill @e[tag=haul_rope7] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..7.9] run kill @e[tag=haul_rope8] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..8.9] run kill @e[tag=haul_rope9] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..9.9] run kill @e[tag=haul_rope10] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..10.9] run kill @e[tag=haul_rope11] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..11.9] run kill @e[tag=haul_rope12] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..12.9] run kill @e[tag=haul_rope13] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..13.9] run kill @e[tag=haul_rope14] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..14.9] run kill @e[tag=haul_rope15] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..15.9] run kill @e[tag=haul_rope16] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..16.9] run kill @e[tag=haul_rope17] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..17.9] run kill @e[tag=haul_rope18] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..18.9] run kill @e[tag=haul_rope19] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..19.9] run kill @e[tag=haul_rope20] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..20.9] run kill @e[tag=haul_rope21] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..21.9] run kill @e[tag=haul_rope22] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..22.9] run kill @e[tag=haul_rope23] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..23.9] run kill @e[tag=haul_rope24] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..24.9] run kill @e[tag=haul_rope25] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..25.9] run kill @e[tag=haul_rope26] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..26.9] run kill @e[tag=haul_rope27] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..27.9] run kill @e[tag=haul_rope28] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..28.9] run kill @e[tag=haul_rope29] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..29.9] run kill @e[tag=haul_rope30] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..30.9] run kill @e[tag=haul_rope31] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..31.9] run kill @e[tag=haul_rope32] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..32.9] run kill @e[tag=haul_rope33] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..33.9] run kill @e[tag=haul_rope34] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..34.9] run kill @e[tag=haul_rope35] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..35.9] run kill @e[tag=haul_rope36] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..36.9] run kill @e[tag=haul_rope37] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..37.9] run kill @e[tag=haul_rope38] 
execute as @e[tag=keelhaul_point] at @s if entity @a[scores={char=31},distance=..38.9] run kill @e[tag=haul_rope39] 

execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^1 run tp @e[tag=haul_rope1] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^2 run tp @e[tag=haul_rope2] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^3 run tp @e[tag=haul_rope3] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^4 run tp @e[tag=haul_rope4] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^5 run tp @e[tag=haul_rope5] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^6 run tp @e[tag=haul_rope6] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^7 run tp @e[tag=haul_rope7] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^8 run tp @e[tag=haul_rope8] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^9 run tp @e[tag=haul_rope9] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^10 run tp @e[tag=haul_rope10] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^11 run tp @e[tag=haul_rope11] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^12 run tp @e[tag=haul_rope12] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^13 run tp @e[tag=haul_rope13] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^14 run tp @e[tag=haul_rope14] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^15 run tp @e[tag=haul_rope15] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^16 run tp @e[tag=haul_rope16] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^17 run tp @e[tag=haul_rope17] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^18 run tp @e[tag=haul_rope18] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^19 run tp @e[tag=haul_rope19] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^20 run tp @e[tag=haul_rope20] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^21 run tp @e[tag=haul_rope21] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^22 run tp @e[tag=haul_rope22] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^23 run tp @e[tag=haul_rope23] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^24 run tp @e[tag=haul_rope24] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^25 run tp @e[tag=haul_rope25] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^26 run tp @e[tag=haul_rope26] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^27 run tp @e[tag=haul_rope27] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^28 run tp @e[tag=haul_rope28] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^29 run tp @e[tag=haul_rope29] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^30 run tp @e[tag=haul_rope30] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^31 run tp @e[tag=haul_rope31] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^32 run tp @e[tag=haul_rope32] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^33 run tp @e[tag=haul_rope33] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^34 run tp @e[tag=haul_rope34] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^35 run tp @e[tag=haul_rope35] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^36 run tp @e[tag=haul_rope36] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^37 run tp @e[tag=haul_rope37] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^38 run tp @e[tag=haul_rope38] ~ ~ ~
execute as @e[tag=keelhaul_point] at @s positioned ^ ^ ^39 run tp @e[tag=haul_rope39] ~ ~ ~

execute as @e[tag=keelhaul_rope_visuals] at @s run rotate @s facing entity @e[tag=keelhaul_point,limit=1]
execute unless entity @e[tag=keelhaul_point] run kill @e[tag=keelhaul_rope_visuals]
execute unless entity @e[tag=keelhaul_point] run kill @e[tag=lifeline_haul_rope_visual_core]



#lifeline
clear @a[scores={char=31,s2_timer=1,CC_silence=0}] *[custom_data={s2:1}]

scoreboard players set @a[scores={char=31,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=31,s2_timer=1,CC_silence=1..}] s2_timer 480

execute at @a[scores={universal_death=1..,char=31}] run tag @e remove keelhaul_point_location
execute at @a[scores={universal_death=1..,char=31}] run scoreboard players set @a keelhauling 0
execute at @a[scores={universal_death=1..,char=31}] run kill @e[tag=lifeline_return]
execute at @a[scores={universal_death=1..,char=31}] run kill @e[tag=lifeline_point]

execute at @e[tag=lifeline_point] run particle crit ~ ~ ~ 0.3 0.3 0.3 0.001 2
execute at @e[tag=lifeline_point_visual] run particle bubble ~ ~0.2 ~ 1 0.5 1 0.001 4
execute at @e[tag=lifeline_point_visual] run particle block{block_state:{Name:"minecraft:water"}} ~ ~0.5 ~ 0.3 0.5 0.3 0.01 5

clear @a[scores={char=31,s2_timer=1,CC_silence=0}] stone_pickaxe

scoreboard players set @a[scores={s2_timer_recast=1,char=31,CC_silence=0}] s2_timer 98

execute at @a[scores={char=31,s2_timer=1,CC_silence=0}] run playsound entity.drowned.swim master @a[distance=..15] ~ ~ ~ 0.6 0.2 1
execute at @a[scores={char=31,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=31,s2_timer=5,CC_silence=0}] run playsound block.iron_trapdoor.close master @a[distance=..15] ~ ~ ~ 1 0.1 1

execute at @a[scores={char=31,s2_timer=2..100,CC_silence=0}] run particle dripping_water ~ ~ ~ 0.5 1 0.5 0.001 5
execute at @a[scores={char=31,s2_timer=100..110,CC_silence=0}] run particle bubble ~ ~ ~ 0.5 1 0.5 0.001 40

execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["lifeline_return_particle_circle_thing","entities_drownedcaptain"]}
execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["lifeline_point","entities_drownedcaptain"]}
execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["lifeline_rope_visual_core","entities_drownedcaptain"]}
execute at @a[scores={char=31,s2_timer=2,CC_silence=0}] run summon item_display ~ ~1.5 ~ {teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.9238795f,0.38268346f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.7f,0f]},item:{id:"minecraft:stone_pickaxe",count:1},Tags:["lifeline_point_visual","entities_drownedcaptain"]}

execute as @e[tag=lifeline_point_visual] at @s run tp @e[tag=lifeline_return_particle_circle_thing] ~ ~0.5 ~
execute as @e[tag=lifeline_point_visual] at @s run tp @e[tag=lifeline_point] ~ ~1.5 ~
execute as @e[tag=lifeline_point_visual] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run rotate @s ~9 ~
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^ ^ ^4 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^ ^ ^-4 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^4 ^ ^ 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^-4 ^ ^ 0.1 0.1 0.1 0 5

execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^3 ^ ^3 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^-3 ^ ^-3 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^3 ^ ^-3 0.1 0.1 0.1 0 5
execute at @a[scores={char=31,s2_timer=30..,CC_silence=0}] as @e[tag=lifeline_return_particle_circle_thing] at @s run particle crit ^-3 ^ ^3 0.1 0.1 0.1 0 5

effect give @e[scores={char=31,s2_timer=1,CC_silence=0}] speed 5 0 true
effect clear @e[scores={char=31,s2_timer=100}] speed
clear @a[scores={char=31,s2_timer=99}] diamond_pickaxe
clear @a[scores={char=31,s2_timer=100..}] lightning_rod

execute at @a[scores={char=31,s2_timer=101}] run playsound entity.drowned.death master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=31,s2_timer=100..}] unless entity @e[tag=lifeline_return] run summon marker ~ ~ ~ {Tags:["lifeline_return","entities_drownedcaptain"]}
execute unless entity @e[tag=lifeline_point] run kill @e[tag=lifeline_return]
execute as @e[tag=lifeline_return] at @s run tp @s ~ ~ ~ facing entity @e[tag=lifeline_point,limit=1]
execute as @e[tag=lifeline_return] at @s run tp @s ^ ^ ^0.9
execute as @a[scores={char=31}] run tp @e[tag=lifeline_return,limit=1]

execute if entity @e[tag=lifeline_return] run scoreboard players set @a[scores={char=31}] CC_intangible 5
execute if entity @e[tag=lifeline_return] run effect give @a[scores={char=31}] resistance 2 100 true
execute if entity @e[tag=lifeline_return] run effect give @a[scores={char=31}] slow_falling 1 1 true
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run effect clear @a[scores={char=31}] slow_falling
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run tp @a[scores={char=31}] ~ ~1 ~
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle bubble ~ ~ ~ 8 3 8 0.001 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 3 1 3 1 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run particle block{block_state:{Name:"minecraft:tuff"}} ~ ~ ~ 3 1 3 1 500
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run playsound entity.drowned.ambient master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run playsound entity.drowned.swim master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute as @e[tag=lifeline_return] at @s if entity @e[distance=..1,tag=lifeline_point] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=31}] Team at @s run scoreboard players set @s CC_stun 20

execute as @e[tag=lifeline_return] unless entity @e[tag=lifeline_point] run kill @s
execute at @e[tag=lifeline_return] run kill @e[distance=..1,tag=lifeline_point]
execute as @e[tag=lifeline_point_visual] unless entity @e[tag=lifeline_point] run kill @s
execute as @e[tag=lifeline_return_particle_circle_thing] unless entity @e[tag=lifeline_point] run kill @s

execute as @e[tag=lifeline_point] at @s run tp @s ~ ~ ~ facing entity @e[tag=rope_animation_fix,limit=1]

execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..1] unless entity @e[tag=rope1] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope1","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..2] unless entity @e[tag=rope2] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope2","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..3] unless entity @e[tag=rope3] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope3","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..4] unless entity @e[tag=rope4] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope4","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..5] unless entity @e[tag=rope5] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope5","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..6] unless entity @e[tag=rope6] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope6","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..7] unless entity @e[tag=rope7] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope7","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..8] unless entity @e[tag=rope8] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope8","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..9] unless entity @e[tag=rope9] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope9","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..10] unless entity @e[tag=rope10] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope10","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..11] unless entity @e[tag=rope11] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope11","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..12] unless entity @e[tag=rope12] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope12","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..13] unless entity @e[tag=rope13] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope13","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..14] unless entity @e[tag=rope14] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope14","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..15] unless entity @e[tag=rope15] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope15","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..16] unless entity @e[tag=rope16] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope16","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..17] unless entity @e[tag=rope17] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope17","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..18] unless entity @e[tag=rope18] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope18","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..19] unless entity @e[tag=rope19] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope19","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..20] unless entity @e[tag=rope20] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope20","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..21] unless entity @e[tag=rope21] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope21","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..22] unless entity @e[tag=rope22] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope22","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..23] unless entity @e[tag=rope23] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope23","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..24] unless entity @e[tag=rope24] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope24","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..25] unless entity @e[tag=rope25] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope25","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..26] unless entity @e[tag=rope26] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope26","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..27] unless entity @e[tag=rope27] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope27","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..28] unless entity @e[tag=rope28] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope28","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..29] unless entity @e[tag=rope29] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope29","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..30] unless entity @e[tag=rope30] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope30","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..31] unless entity @e[tag=rope31] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope31","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..32] unless entity @e[tag=rope32] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope32","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..33] unless entity @e[tag=rope33] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope33","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..34] unless entity @e[tag=rope34] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope34","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..35] unless entity @e[tag=rope35] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope35","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..36] unless entity @e[tag=rope36] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope36","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..37] unless entity @e[tag=rope37] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope37","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..38] unless entity @e[tag=rope38] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope38","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}
execute as @e[tag=lifeline_point] at @s unless entity @a[scores={char=31},distance=..39] unless entity @e[tag=rope39] run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["rope39","lifeline_rope_visuals","entities_drownedcaptain"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.75f],scale:[0.2f,0.2f,1.5f]},block_state:{Name:"minecraft:stripped_dark_oak_wood"}}

execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..1.9] run kill @e[tag=rope2] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..2.9] run kill @e[tag=rope3] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..3.9] run kill @e[tag=rope4] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..4.9] run kill @e[tag=rope5] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..5.9] run kill @e[tag=rope6] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..6.9] run kill @e[tag=rope7] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..7.9] run kill @e[tag=rope8] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..8.9] run kill @e[tag=rope9] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..9.9] run kill @e[tag=rope10] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..10.9] run kill @e[tag=rope11] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..11.9] run kill @e[tag=rope12] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..12.9] run kill @e[tag=rope13] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..13.9] run kill @e[tag=rope14] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..14.9] run kill @e[tag=rope15] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..15.9] run kill @e[tag=rope16] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..16.9] run kill @e[tag=rope17] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..17.9] run kill @e[tag=rope18] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..18.9] run kill @e[tag=rope19] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..19.9] run kill @e[tag=rope20] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..20.9] run kill @e[tag=rope21] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..21.9] run kill @e[tag=rope22] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..22.9] run kill @e[tag=rope23] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..23.9] run kill @e[tag=rope24] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..24.9] run kill @e[tag=rope25] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..25.9] run kill @e[tag=rope26] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..26.9] run kill @e[tag=rope27] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..27.9] run kill @e[tag=rope28] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..28.9] run kill @e[tag=rope29] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..29.9] run kill @e[tag=rope30] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..30.9] run kill @e[tag=rope31] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..31.9] run kill @e[tag=rope32] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..32.9] run kill @e[tag=rope33] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..33.9] run kill @e[tag=rope34] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..34.9] run kill @e[tag=rope35] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..35.9] run kill @e[tag=rope36] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..36.9] run kill @e[tag=rope37] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..37.9] run kill @e[tag=rope38] 
execute as @e[tag=lifeline_point] at @s if entity @a[scores={char=31},distance=..38.9] run kill @e[tag=rope39] 

execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^1 run tp @e[tag=rope1] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^2 run tp @e[tag=rope2] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^3 run tp @e[tag=rope3] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^4 run tp @e[tag=rope4] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^5 run tp @e[tag=rope5] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^6 run tp @e[tag=rope6] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^7 run tp @e[tag=rope7] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^8 run tp @e[tag=rope8] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^9 run tp @e[tag=rope9] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^10 run tp @e[tag=rope10] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^11 run tp @e[tag=rope11] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^12 run tp @e[tag=rope12] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^13 run tp @e[tag=rope13] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^14 run tp @e[tag=rope14] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^15 run tp @e[tag=rope15] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^16 run tp @e[tag=rope16] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^17 run tp @e[tag=rope17] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^18 run tp @e[tag=rope18] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^19 run tp @e[tag=rope19] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^20 run tp @e[tag=rope20] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^21 run tp @e[tag=rope21] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^22 run tp @e[tag=rope22] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^23 run tp @e[tag=rope23] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^24 run tp @e[tag=rope24] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^25 run tp @e[tag=rope25] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^26 run tp @e[tag=rope26] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^27 run tp @e[tag=rope27] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^28 run tp @e[tag=rope28] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^29 run tp @e[tag=rope29] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^30 run tp @e[tag=rope30] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^31 run tp @e[tag=rope31] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^32 run tp @e[tag=rope32] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^33 run tp @e[tag=rope33] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^34 run tp @e[tag=rope34] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^35 run tp @e[tag=rope35] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^36 run tp @e[tag=rope36] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^37 run tp @e[tag=rope37] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^38 run tp @e[tag=rope38] ~ ~ ~
execute as @e[tag=lifeline_point] at @s positioned ^ ^ ^39 run tp @e[tag=rope39] ~ ~ ~

execute as @e[tag=lifeline_rope_visuals] at @s run rotate @s facing entity @e[tag=lifeline_point,limit=1]
execute unless entity @e[tag=lifeline_point] run kill @e[tag=lifeline_rope_visuals]
execute unless entity @e[tag=lifeline_point] run kill @e[tag=lifeline_rope_visual_core]


# drowned

scoreboard players set @a[scores={s1_timer=1,char=31}] spellCD1 320
scoreboard players add @a[scores={s1_timer=1..,char=31}] s1_timer 1
scoreboard players set @a[scores={s1_timer=321..,char=31}] s1_timer 0

scoreboard players set @a[scores={s2_timer=101,char=31}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=31}] s2_timer 1
scoreboard players set @a[scores={s2_timer=501..,char=31}] s2_timer 0
scoreboard players add @a[scores={s2_timer_recast=1..,char=31}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=10..,char=31}] s2_timer_recast 0

execute as @a[scores={char=31,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=31}] stone_pickaxe
item replace entity @a[scores={char=31,s2_timer=0}] hotbar.0 with minecraft:stone_pickaxe[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Anchor"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1
execute as @a[scores={char=31,s2_timer=101..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe",Slot:0b}]}] run clear @a[scores={char=31}] stone_pickaxe
item replace entity @a[scores={char=31,s2_timer=101..}] hotbar.0 with minecraft:stone_pickaxe[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Anchor"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=31,s2_timer=1..100}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_shovel",Slot:0b}]}] run clear @a[scores={char=31}] diamond_shovel
item replace entity @a[scores={char=31,s2_timer=1..100}] hotbar.0 with diamond_shovel[custom_data={drowned:1},minecraft:custom_name={bold:1b,color:"gray",text:"Tentacles"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=31,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=31}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=31,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:tripwire_hook",minecraft:custom_name={text:"Keelhaul",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=31,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=31}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=31,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:lead",minecraft:custom_name={text:"Lifeline",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=31,s2_timer=20..97,s2_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=31}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[scores={char=31,s2_timer=20..97,s2_timer_recast=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:lightning_rod",minecraft:custom_name={text:"Emerge",color:"dark_aqua",bold:1b}] 1

