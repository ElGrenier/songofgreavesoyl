kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_shovel"}}]


#stempede


scoreboard players set @a[scores={universal_sprint=1..,char=57}] passive_runa_reset 15
scoreboard players add @a[scores={universal_sprint=1..,char=57}] passive_runa 1

scoreboard players set @a[scores={passive_runa=1..,passive_runa_reset=1..2,char=57}] passive_runa 0
scoreboard players remove @a[scores={passive_runa_reset=1..,char=57}] passive_runa_reset 1

effect give @a[scores={passive_runa=40..119,char=57}] speed 1
effect give @a[scores={passive_runa=40..119,char=57}] resistance 1
effect give @a[scores={passive_runa=121..,char=57}] resistance 1 2
effect give @a[scores={passive_runa=121..,char=57}] speed 1 1

execute at @a[scores={passive_runa=41..119,char=57}] run particle crit ~ ~ ~ 0.3 0.1 0.3 0.3 5

execute at @a[scores={passive_runa=121..,char=57}] run particle crit ~ ~ ~ 0.5 0.2 0.5 0.4 10
execute at @a[scores={passive_runa=121..,char=57}] run particle falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~ ~ 0.5 0.2 0.5 0.01 3

execute at @a[scores={passive_runa=121..,char=57}] as @a[distance=..1,tag=valid_spell_target,limit=1,sort=furthest] unless score @s Team = @p[scores={char=57}] Team at @s run summon marker ~ ~ ~ {Tags:["stempede_collision","entities_runaway"]}


execute at @e[tag=stempede_collision] as @a[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=57}] Team run scoreboard players set @s CC_stun 20

execute at @e[tag=stempede_collision] run effect clear @a[scores={char=57}] speed
execute at @e[tag=stempede_collision] run effect give @a[scores={char=57}] resistance 3 2
execute at @e[tag=stempede_collision] run scoreboard players set @a[scores={char=57}] passive_runa 0
execute at @e[tag=stempede_collision] run scoreboard players set @a[scores={char=57}] passive_runa_reset 0
execute at @e[tag=stempede_collision] run particle cloud ~ ~1 ~ 1 1 1 0.1 10
execute at @e[tag=stempede_collision] run particle crit ~ ~1 ~ 2 2 2 0.6 100
execute at @e[tag=stempede_collision] run playsound entity.player.hurt master @a[distance=..15] ~ ~ ~ 1 0.2 1
execute at @e[tag=stempede_collision] run playsound entity.zombie.break_wooden_door master @a[distance=..15] ~ ~ ~ 0.5 0.9 1
kill @e[tag=stempede_collision]

title @a[scores={char=57,passive_runa=0..19}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"",color:"yellow",type:"text"},{text:"======",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=20..39}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=",color:"yellow",type:"text"},{text:"=====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=40..59}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"==",color:"gold",type:"text"},{text:"====",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=60..79}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"===",color:"gold",type:"text"},{text:"===",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=80..99}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"====",color:"red",type:"text"},{text:"==",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=100..119}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"=====",color:"red",type:"text"},{text:"=",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]
title @a[scores={char=57,passive_runa=120..}] actionbar [{text:"[",bold:1b,color:"dark_gray",type:"text"},{text:"======",color:"dark_red",bold:1b,type:"text"},{text:"",color:"gray",type:"text"},{text:"]",bold:1b,color:"dark_gray",type:"text"}]

#shacke

execute unless entity @e[tag=runaway_chain_animation_fix] run summon marker ~ ~ ~ {Tags:["runaway_chain_animation_fix","entities_runaway"]}
execute as @p[scores={char=57}] at @s run tp @e[tag=runaway_chain_animation_fix] ~ ~1 ~

scoreboard players set @a[scores={char=57,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=57,s1_timer=1,CC_silence=1..}] s1_timer 140

execute at @a[scores={char=57,s1_timer=1,CC_silence=0}] run playsound block.chain.place master @a[distance=..15] ~ ~ ~ 0.8 0.3 1
execute at @a[scores={char=57,s1_timer=1,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.8 0.6 1
execute at @a[scores={char=57,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["grab_chain","entities_runaway","projectile"]}
execute at @a[scores={char=57,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["grab_chain_visual_core","entities_runaway"]}
tp @e[tag=grab_chain,limit=1] @a[scores={char=57,s1_timer=1},limit=1]
execute at @a[scores={char=57,s1_timer=1,CC_silence=0}] as @e[tag=grab_chain,limit=1] at @s run tp @s ~ ~1 ~ 

execute as @e[tag=grab_chain] at @s run tp @s ^ ^ ^0.5

execute store result entity @e[tag=grab_chain,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=grab_chain] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=grab_chain] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s


execute at @a[tag=grab_chain] unless entity @e[tag=grab_chain_visual_core] run summon marker ~ ~ ~ {Tags:["grab_chain_visual_core"]}
execute as @e[tag=grab_chain] at @s run tp @e[tag=grab_chain_visual_core] ~ ~1.5 ~ facing entity @p[scores={char=57}]

execute as @e[tag=grab_chain] at @s run tp @e[tag=grab_chain_visual_core] ~ ~ ~ facing entity @e[tag=runaway_chain_animation_fix,limit=1]

execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..1] unless entity @e[tag=ch_shackle1] at @s positioned ^ ^ ^1 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle1","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..2] unless entity @e[tag=ch_shackle2] at @s positioned ^ ^ ^2 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle2","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..3] unless entity @e[tag=ch_shackle3] at @s positioned ^ ^ ^3 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle3","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..4] unless entity @e[tag=ch_shackle4] at @s positioned ^ ^ ^4 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle4","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..5] unless entity @e[tag=ch_shackle5] at @s positioned ^ ^ ^5 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle5","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..6] unless entity @e[tag=ch_shackle6] at @s positioned ^ ^ ^6 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle6","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..7] unless entity @e[tag=ch_shackle7] at @s positioned ^ ^ ^7 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle7","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..8] unless entity @e[tag=ch_shackle8] at @s positioned ^ ^ ^8 run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["ch_shackle8","ch_shackle_visuals","ch_shackle_visuals_1","entities_runaway"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.15f,-0.5f],scale:[0.3f,0.3f,1f]},block_state:{Name:"minecraft:iron_block"}}
#execute as @e[tag=grab_chain_visual_core] at @s unless entity @a[scores={char=57},distance=..9] unless entity @e[tag=ch_shackle9] at @s positioned ^ ^ ^9 run summon armor_stand ~ ~ ~ {Small:1,ArmorItems:[{},{},{},{id:"iron_block",Count:1b}],Invisible:1b,Tags:["ch_shackle9","ch_shackle_visuals","ch_shackle_visuals_1"],Marker:1}

#execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^9 run tp @e[tag=ch_shackle9] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^8 run tp @e[tag=ch_shackle8] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^7 run tp @e[tag=ch_shackle7] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^6 run tp @e[tag=ch_shackle6] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^5 run tp @e[tag=ch_shackle5] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^4 run tp @e[tag=ch_shackle4] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^3 run tp @e[tag=ch_shackle3] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^2 run tp @e[tag=ch_shackle2] ~ ~ ~
execute as @e[tag=grab_chain_visual_core] at @s positioned ^ ^ ^1 run tp @e[tag=ch_shackle1] ~ ~ ~

execute as @e[tag=ch_shackle_visuals] at @s run rotate @s facing entity @e[tag=grab_chain_visual_core,limit=1]

execute at @a[scores={char=57,s1_timer=15..22}] run kill @e[tag=grab_chain]
execute at @a[scores={char=57,s1_timer=15..22}] run kill @e[tag=grab_chain_visual_core]
execute at @a[scores={char=57,s1_timer=15..22}] run kill @e[tag=ch_shackle_visuals_1]


execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=grab_chain] positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0] unless score @s Team = @p[scores={char=57}] Team at @s run playsound block.chain.place master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=grab_chain] positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0] unless score @s Team = @p[scores={char=57}] Team run tag @s add runaway_pull
execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=grab_chain] positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0] unless score @s Team = @p[scores={char=57}] Team run kill @e[tag=grab_chain]

execute at @a[tag=runaway_pull] run kill @e[tag=grab_chain_visual_core]
execute at @a[tag=runaway_pull] run kill @e[tag=ch_shackle_visuals_1]


scoreboard players set @a[tag=runaway_pull] CC_stun 10

execute if entity @p[tag=runaway_pull] run effect give @a[scores={char=57}] slow_falling 1 1 true

execute at @a[scores={char=57}] run scoreboard players set @a[distance=..1,tag=runaway_pull] CC_stun 0
execute at @a[scores={char=57}] run scoreboard players set @a[distance=..1,tag=runaway_pull] CC_disarm 40
execute at @a[scores={char=57}] run tag @a[distance=..1,tag=runaway_pull] remove runaway_pull

execute if entity @n[tag=runaway_pull] as @a[scores={char=57}] at @s facing entity @p[tag=runaway_pull] feet run tp @s ^ ^ ^.5
execute as @a[scores={char=57,s1_timer=20..22}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=57,universal_death=1..}] run tag @a remove runaway_pull
tag @a[tag=runaway_pull,scores={universal_death=1..}] remove runaway_pull

#overpower

scoreboard players set @a[scores={char=57,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=57,s2_timer=1,CC_silence=1..}] s2_timer 260

execute at @a[scores={char=57,s2_timer=1,CC_silence=0}] run playsound item.bundle.drop_contents master @a[distance=..15] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=57,s2_timer=1,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=57,s2_timer=1,CC_silence=0,passive_runa=0..119}] run summon marker ~ ~ ~ {Tags:["overpower_grab","grab_normal","entities_runaway"]}
execute at @a[scores={char=57,s2_timer=1,CC_silence=0,passive_runa=120..}] run particle cloud ~ ~0.3 ~ 0.5 0.3 0.5 0 50
execute at @a[scores={char=57,s2_timer=1,CC_silence=0,passive_runa=120..}] run summon marker ~ ~ ~ {Tags:["overpower_grab","grab_dash","entities_runaway"]}
tp @e[tag=overpower_grab,limit=1] @a[scores={char=57,s2_timer=1},limit=1]
execute at @a[scores={char=57,s2_timer=1},limit=1] run tp @e[tag=overpower_grab,limit=1] ~ ~1.2 ~
execute at @a[scores={char=57,s2_timer=1},limit=1] run tp @e[tag=grab_dash,limit=1] ~ ~0.5 ~


execute at @e[tag=overpower_grab] run particle sculk_charge_pop ~ ~ ~ 0.8 0.4 0.8 0 3
execute at @e[tag=overpower_grab] run particle crit ~ ~ ~ 0.8 0.4 0.8 0.1 30
execute as @e[tag=overpower_grab] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=overpower_grab] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=overpower_grab] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

tp @a[scores={char=57,s2_timer=1..14}] @e[tag=grab_dash,limit=1]

execute at @a[scores={char=57,s2_timer=7..}] run kill @e[tag=grab_normal]
execute at @a[scores={char=57,s2_timer=10..}] run kill @e[tag=grab_dash]
execute as @a[scores={char=57,s2_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~


execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=overpower_grab] positioned ~-.75 ~-.5 ~-.75 as @a[dx=.5,dy=0,dz=.5] unless score @s Team = @p[scores={char=57}] Team at @s run playsound item.armor.equip_leather master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=overpower_grab] positioned ~-.75 ~-.5 ~-.75 as @a[dx=.5,dy=0,dz=.5] unless score @s Team = @p[scores={char=57}] Team run tag @s add runaway_hold
execute if entity @a[scores={char=57,CC_silence=0}] at @e[tag=overpower_grab] positioned ~-.75 ~-.5 ~-.75 as @a[dx=.5,dy=0,dz=.5] unless score @s Team = @p[scores={char=57}] Team run kill @e[tag=overpower_grab]

execute at @a[scores={char=57,s2_timer=21,CC_silence=0}] if entity @a[tag=runaway_hold] run playsound entity.player.attack.strong master @a[distance=..15] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=57,s2_timer=21,CC_silence=0}] if entity @a[tag=runaway_hold] run playsound entity.snowball.throw master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=57,s2_timer=21,CC_silence=0}] if entity @a[tag=runaway_hold] run summon marker ~ ~ ~ {Tags:["overpower_throw","entities_runaway"]}
tp @e[tag=overpower_throw,limit=1] @a[scores={char=57,s2_timer=21},limit=1]


execute at @a[scores={char=57,universal_death=1..}] run tag @e remove runaway_hold
execute at @a[tag=runaway_hold,scores={universal_death=1..}] run kill @e[tag=overpower_throw]
tag @e[tag=runaway_hold,scores={universal_death=1..}] remove runaway_hold

execute at @e[tag=overpower_throw] run particle minecraft:crit ~ ~1.5 ~ 0.8 0.4 0.8 0.1 50
execute as @e[tag=overpower_throw] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=overpower_throw] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=overpower_throw] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

execute at @a[scores={char=57,s2_timer=31..}] run kill @e[tag=overpower_throw]

execute at @a[scores={char=57,s2_timer=31..35}] as @e[tag=runaway_hold] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=57,s2_timer=31..}] run tag @e remove runaway_hold

scoreboard players set @a[tag=runaway_hold] CC_stun 5
effect give @a[tag=runaway_hold] minecraft:slow_falling 1 100 true

execute as @a[scores={char=57,CC_silence=0,s2_timer=1..20}] at @s run tp @e[tag=runaway_hold] ^ ^1.5 ^0.8
execute at @a[scores={char=57,CC_silence=0,s2_timer=21..30}] run tp @e[tag=runaway_hold] @e[tag=overpower_throw,limit=1]

execute at @a[scores={char=57,CC_silence=0,s2_timer=21..30}] at @e[tag=overpower_throw] positioned ~-.75 ~-.75 ~-.75 as @e[dx=.5,dy=.5,dz=.5,tag=!runaway_hold,tag=valid_spell_target] unless score @s Team = @p[scores={char=57}] Team run summon minecraft:marker ~ ~ ~ {Tags:["throw_collision","entities_runaway"]}

execute at @e[tag=throw_collision] positioned ~-1.5 ~-1.5 ~-1.5 as @a[dx=1.5,dy=1.5,dz=1.5] unless score @s Team = @p[scores={char=57}] Team run scoreboard players set @s CC_stun 50
execute at @e[tag=throw_collision] positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=1.5,dy=1.5,dz=1.5,tag=valid_spell_target,type=!player] unless score @s Team = @p[scores={char=57}] Team run damage @s 5 generic by @p[scores={char=57}]

execute at @e[tag=throw_collision] run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 30
execute at @e[tag=throw_collision] run particle minecraft:crit ~ ~ ~ 1.5 1.5 1.5 0.5 100
execute at @e[tag=throw_collision] run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @e[tag=throw_collision] run kill @e[tag=overpower_throw]
kill @e[tag=throw_collision]


# runaway

scoreboard players set @a[scores={char=57}] MaxHP 28

scoreboard players set @a[scores={s1_timer=1,char=57}] spellCD1 160
scoreboard players add @a[scores={s1_timer=1..,char=57}] s1_timer 1
scoreboard players set @a[scores={s1_timer=161..,char=57}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=57}] spellCD2 280
scoreboard players add @a[scores={s2_timer=1..,char=57}] s2_timer 1
scoreboard players set @a[scores={s2_timer=281..,char=57}] s2_timer 0

execute as @a[scores={char=57}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_shovel",Slot:0b}]}] run clear @a[scores={char=57}] iron_shovel
item replace entity @a[scores={char=57}] hotbar.0 with minecraft:iron_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Mace"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=57,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=57}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=57,s1_timer=0}] hotbar.1 with carrot_on_a_stick[minecraft:custom_name={text:"Unshackled",color:"dark_aqua",bold:1b},item_model="rail",custom_data={s1:1}] 1

execute as @a[scores={char=57,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=57}] warped_fungus_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=57,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[minecraft:custom_name={text:"Overpower",color:"dark_aqua",bold:1b},item_model="saddle",custom_data={s2:1}] 1