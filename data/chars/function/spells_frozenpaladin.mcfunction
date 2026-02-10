kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword"}}]

#icy aura

scoreboard players set @a[scores={char=3,CC_silence=1..}] icyaura 0

scoreboard players set @a[scores={char=3,icyaura=0,universal_hit=1..}] icyaura 60
scoreboard players set @a[scores={char=3,icyaura=1..,universal_hit=1..}] icyaura 60
scoreboard players set @a[scores={char=3,icyaura=1..,universal_damagetaken=1..}] icyaura 60

execute at @a[scores={char=3,icyaura=1..}] as @e[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run effect give @s slowness 1 1

scoreboard players remove @a[scores={icyaura=1..}] icyaura 1

execute at @a[scores={icyaura=1..}] unless entity @e[tag=icy_aura_thingy] run summon marker ~ ~ ~ {Tags:["icy_aura_thingy","entities_frozenpaladin"]}
execute at @a[scores={icyaura=1..}] run particle block{block_state:{Name:ice}} ~ ~0.1 ~ 2.5 0.1 2.5 0 10
execute at @a[scores={icyaura=1..}] run particle cloud ~ ~0.1 ~ 1.5 0.1 1.5 0.01 2
execute at @a[scores={icyaura=1..}] run playsound entity.snow_golem.hurt master @a[distance=..6] ~ ~ ~ 0.03 0.1 1
execute at @a[scores={icyaura=1..}] run tp @e[tag=icy_aura_thingy] ~ ~ ~
execute unless entity @a[scores={icyaura=1..}] run kill @e[tag=icy_aura_thingy]

execute as @e[tag=icy_aura_thingy] at @s run rotate @s ~13 ~
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^ ^ ^5 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^ ^ ^-5 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^5 ^ ^ 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^-5 ^ ^ 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^3.5 ^ ^3.5 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^-3.5 ^ ^-3.5 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^3.5 ^ ^-3.5 0.1 0.1 0.1 0 10
execute as @e[tag=icy_aura_thingy] at @s run particle dust{color:[0.33,1.0,1.0],scale:1} ^-3.5 ^ ^3.5 0.1 0.1 0.1 0 10

#chillrend

scoreboard players set @a[scores={char=3,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=3,s1_timer=1,CC_silence=1..}] s1_timer 260

execute at @a[scores={char=3,s1_timer=1,CC_silence=0}] run playsound entity.snow_golem.death master @a[distance=..15] ~ ~ ~ 1.0 1.2 1.0
execute at @a[scores={char=3,s1_timer=1,CC_silence=0}] run playsound block.snow.place master @a[distance=..1] ~ ~ ~ 1 0.1 1
execute at @a[scores={char=3,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Invisible:1b,Tags:["chillrend","projectile","entities_frozenpaladin"],NoGravity:0b}
scoreboard players operation @e[tag=projectile,tag=chillrend] Team = @p[scores={char=3}] Team
tp @e[tag=chillrend,limit=1] @a[scores={char=3,s1_timer=1},limit=1]

execute store result entity @e[tag=chillrend,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=chillrend] at @s unless block ^ ^1 ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["chillrend_nova","entities_frozenpaladin"]}
execute as @e[tag=chillrend] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=chillrend] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=chillrend] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=chillrend] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute at @e[tag=chillrend] run particle minecraft:block{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.2 1 0.2 0.0001 5 normal
execute at @e[tag=chillrend] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.3 1 0.3 0.0001 20 normal
execute as @e[tag=chillrend] at @s run tp @s ^ ^ ^0.5

execute at @e[tag=chillrend] as @a[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run summon marker ~ ~ ~ {Tags:["chillrend_nova","entities_frozenpaladin"]}


execute if entity @a[scores={char=3,s1_timer=20..}] at @e[tag=chillrend] run summon marker ~ ~ ~ {Invisible:1b,Tags:["chillrend_nova","entities_frozenpaladin"],NoGravity:1b}
execute if entity @e[tag=chillrend_nova] run kill @e[tag=chillrend]
execute at @a[scores={char=3,s1_timer=30..}] run kill @e[tag=chillrend]


execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_1] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_1","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_2] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_2","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_3] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_3","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_4] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_4","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_5] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_5","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_6] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_6","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_7] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_7","chillrend_visuals","entities_frozenpaladin"]}
execute at @e[tag=chillrend_nova] unless entity @e[tag=chillrend_visual_8] run summon block_display ~ ~0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:snow_block"},Tags:["chillrend_visual_8","chillrend_visuals","entities_frozenpaladin"]}


execute as @e[tag=chillrend_visual_1] at @s run tp @s ~0.6 ~ ~
execute as @e[tag=chillrend_visual_2] at @s run tp @s ~-0.6 ~ ~
execute as @e[tag=chillrend_visual_3] at @s run tp @s ~ ~ ~0.6
execute as @e[tag=chillrend_visual_4] at @s run tp @s ~ ~ ~-0.6
execute as @e[tag=chillrend_visual_5] at @s run tp @s ~0.4 ~ ~0.4
execute as @e[tag=chillrend_visual_6] at @s run tp @s ~-0.4 ~ ~-0.4
execute as @e[tag=chillrend_visual_7] at @s run tp @s ~0.4 ~ ~-0.4
execute as @e[tag=chillrend_visual_8] at @s run tp @s ~-0.4 ~ ~0.4

scoreboard players add @e[tag=chillrend_visuals] s1_timer 1
kill @e[tag=chillrend_visuals,scores={s1_timer=10..}]


execute at @e[tag=chillrend_nova] run particle falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~0.2 ~ 3 0.5 3 1 200 force
execute at @e[tag=chillrend_nova] run particle falling_dust{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 3 0.5 3 1 50 force
execute at @e[tag=chillrend_nova] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 3 0.5 3 1 100 force
execute at @e[tag=chillrend_nova] run playsound entity.player.hurt_freeze master @a[distance=..15] ~ ~ ~ 1.0 0.6 1.0
execute at @e[tag=chillrend_nova] run playsound entity.snow_golem.death master @a[distance=..15] ~ ~ ~ 0.4 0.6 1.0

execute at @e[tag=chillrend_nova] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run scoreboard players set @s CC_root 40
execute at @e[tag=chillrend_nova] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run scoreboard players set @s chillrend_root_vis 40

kill @e[tag=chillrend_nova]

execute at @a[scores={chillrend_root_vis=1..}] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 0.4 0.2 0.4 0.1 10
execute at @a[scores={chillrend_root_vis=1..}] run particle block{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.4 0.2 0.4 0.1 30
scoreboard players remove @a[scores={chillrend_root_vis=1..}] chillrend_root_vis 1

#cryokinesis

scoreboard players set @a[scores={char=3,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=3,s2_timer=1,CC_silence=1..}] s2_timer 240

execute at @a[scores={char=3,s2_timer=1,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..15] ~ ~ ~ 1.0 0.1 1.0
execute at @a[scores={char=3,s2_timer=1,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.3 0.5 1.0

execute at @a[scores={char=3,s2_timer=1,CC_silence=0},y_rotation=45..135] positioned ~-3 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["icewall_NS","icewall","entities_frozenpaladin"]}
execute at @a[scores={char=3,s2_timer=1,CC_silence=0},y_rotation=-135..-45] positioned ~3 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["icewall_NS","icewall","entities_frozenpaladin"]}
execute at @a[scores={char=3,s2_timer=1,CC_silence=0},y_rotation=-45..45] positioned ~ ~ ~3 align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["icewall_EW","icewall","entities_frozenpaladin"]}
execute at @a[scores={char=3,s2_timer=1,CC_silence=0},y_rotation=135..-135] positioned ~ ~ ~-3 align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["icewall_EW","icewall","entities_frozenpaladin"]}

execute at @e[tag=icewall_EW] positioned ~-3 ~-0.75 ~-0.75 as @e[dx=5,dy=3,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run effect give @s slowness 1 2
execute at @e[tag=icewall_NS] positioned ~-0.75 ~-0.75 ~-3 as @e[dx=0.5,dy=3,dz=5,tag=valid_spell_target] unless score @s Team = @p[scores={char=3}] Team run effect give @s slowness 1 2

scoreboard players add @e[tag=icewall] icyaura 1
execute at @e[tag=icewall_EW,scores={icyaura=1..2}] align xyz positioned ~0.5 ~ ~0.5 run fill ~2 ~ ~ ~-2 ~ ~ ice replace #minecraft:dash
execute at @e[tag=icewall_EW,scores={icyaura=4..5}] align xyz positioned ~0.5 ~ ~0.5 run fill ~2 ~ ~ ~-2 ~1 ~ ice replace #minecraft:dash
execute at @e[tag=icewall_EW,scores={icyaura=6..7}] align xyz positioned ~0.5 ~ ~0.5 run fill ~2 ~ ~ ~-2 ~2 ~ ice replace #minecraft:dash
execute at @e[tag=icewall_EW,scores={icyaura=8..9}] align xyz positioned ~0.5 ~ ~0.5 run fill ~1 ~ ~ ~-1 ~3 ~ ice replace #minecraft:dash
execute at @e[tag=icewall_NS,scores={icyaura=1..2}] align xyz positioned ~0.5 ~ ~0.5 run fill ~ ~ ~2 ~ ~ ~-2 ice replace #minecraft:dash
execute at @e[tag=icewall_NS,scores={icyaura=4..5}] align xyz positioned ~0.5 ~ ~0.5 run fill ~ ~ ~2 ~ ~1 ~-2 ice replace #minecraft:dash
execute at @e[tag=icewall_NS,scores={icyaura=6..7}] align xyz positioned ~0.5 ~ ~0.5 run fill ~ ~ ~2 ~ ~2 ~-2 ice replace #minecraft:dash
execute at @e[tag=icewall_NS,scores={icyaura=8..9}] align xyz positioned ~0.5 ~ ~0.5 run fill ~ ~ ~1 ~ ~3 ~-1 ice replace #minecraft:dash

execute at @e[tag=icewall] if block ~1 ~ ~ minecraft:ice run particle cloud ~ ~1.5 ~ 1.5 1 0.5 0.001 1
execute at @e[tag=icewall] if block ~2 ~ ~ minecraft:ice run particle cloud ~ ~1.5 ~ 1.5 1 0.5 0.001 1
execute at @e[tag=icewall] if block ~ ~ ~1 minecraft:ice run particle cloud ~ ~1.5 ~ 0.5 1 1.5 0.001 1
execute at @e[tag=icewall] if block ~ ~ ~2 minecraft:ice run particle cloud ~ ~1.5 ~ 0.5 1 1.5 0.001 1
execute at @e[tag=icewall] if block ~-1 ~ ~ minecraft:ice run particle cloud ~ ~1.5 ~ 1.5 1 0.5 0.001 1
execute at @e[tag=icewall] if block ~-2 ~ ~ minecraft:ice run particle cloud ~ ~1.5 ~ 1.5 1 0.5 0.001 1
execute at @e[tag=icewall] if block ~ ~ ~-1 minecraft:ice run particle cloud ~ ~1.5 ~ 0.5 1 1.5 0.001 1
execute at @e[tag=icewall] if block ~ ~ ~-2 minecraft:ice run particle cloud ~ ~1.5 ~ 0.5 1 1.5 0.001 1
execute at @e[tag=icewall] if block ~1 ~ ~ minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 1 1 0.3 0.001 3
execute at @e[tag=icewall] if block ~2 ~ ~ minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 1 1 0.3 0.001 3
execute at @e[tag=icewall] if block ~ ~ ~1 minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 0.3 1 1 0.001 3
execute at @e[tag=icewall] if block ~ ~ ~2 minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 0.3 1 1 0.001 3
execute at @e[tag=icewall] if block ~-1 ~ ~ minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 1 1 0.3 0.001 3
execute at @e[tag=icewall] if block ~-2 ~ ~ minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 1 1 0.3 0.001 3
execute at @e[tag=icewall] if block ~ ~ ~-1 minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 0.3 1 1 0.001 3
execute at @e[tag=icewall] if block ~ ~ ~-2 minecraft:ice run particle block{block_state:{Name:ice}} ~ ~2 ~ 0.3 0 1 0.001 3


execute at @a[scores={char=3,s2_timer=100}] at @e[tag=icewall_EW] run particle block{block_state:{Name:ice}} ~ ~1 ~ 1.5 2 0.5 0.001 300
execute at @a[scores={char=3,s2_timer=100}] at @e[tag=icewall_NS] run particle block{block_state:{Name:ice}} ~ ~1 ~ 0.5 2 1.5 0.001 300
execute at @a[scores={char=3,s2_timer=100}] at @e[tag=icewall] run playsound glass.break master @a[distance=..10] ~ ~ ~ 1 0.15 1
execute at @a[scores={char=3,s2_timer=100}] at @e[tag=icewall] run playsound entity.player.hurt_freeze master @a[distance=..15] ~ ~ ~ 1.0 0.8 1.0
execute at @a[scores={char=3,s2_timer=100}] at @e[tag=icewall] run fill ~20 ~10 ~20 ~-20 ~-3 ~-20 minecraft:air replace minecraft:ice
execute at @a[scores={char=3,s2_timer=110..}] run kill @e[tag=icewall]
execute at @a[scores={char=3,s2_timer=109..111}] run function battlegrounds:lightrestore

# frozen paladin

scoreboard players set @a[scores={s1_timer=1,char=3}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=3}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=3}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=3}] spellCD2 260
scoreboard players add @a[scores={s2_timer=1..,char=3}] s2_timer 1
scoreboard players set @a[scores={s2_timer=261..,char=3}] s2_timer 0

execute as @a[scores={char=3,CC_disarm=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_sword",Slot:0b}]}] run clear @a[scores={char=3}] diamond_sword
item replace entity @a[scores={char=3,CC_disarm=0}] hotbar.0 with diamond_sword[minecraft:custom_name=[{color:"gray",text:"\""},{bold:1b,color:"gray",text:"Rimebreaker"},{color:"gray",text:"\""}],minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=0.8] 1

execute as @a[scores={char=3,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=3}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=3,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:white_candle",minecraft:custom_name={text:"Chillrend",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=3,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=3}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=3,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:ice",minecraft:custom_name={text:"Cryokinesis",color:"dark_aqua",bold:1b}] 1

