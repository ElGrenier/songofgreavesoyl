kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_powder"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_shovel"}}]

#flesh ablaze

effect give @a[scores={char=5}] minecraft:fire_resistance infinite 0 true

execute as @a[scores={char=5}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_shovel",Slot:0b}]}] run clear @a[scores={char=5}] minecraft:golden_shovel
item replace entity @a[scores={char=5,fire=-1..}] hotbar.0 with golden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Blazing Hand"},minecraft:unbreakable={},minecraft:enchantments={"minecraft:fire_aspect":2},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=5,fire=..0}] hotbar.0 with golden_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Hand"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

#infernal discharge

scoreboard players set @a[scores={char=5,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=5,s1_timer=1,CC_silence=1..}] s1_timer 120

execute at @a[scores={char=5,s1_timer=1,CC_silence=0}] run playsound entity.ghast.shoot master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=5,s1_timer=1,CC_silence=0}] run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:fire_charge",count:1},Tags:["NewFireball","projectile","entities_cremator"]}
scoreboard players operation @e[tag=NewFireball,tag=chillrend] Team = @p[scores={char=5}] Team
tp @e[tag=NewFireball,limit=1] @a[scores={char=5,s1_timer=1},limit=1]
execute if entity @a[scores={char=5,s1_timer=1},limit=1] as @e[tag=NewFireball,limit=1] at @s run tp @s ~ ~1 ~

execute at @e[tag=NewFireball] run particle block{block_state:{Name:"minecraft:magma_block"}} ~ ~ ~ 0.2 0.2 0.2 0.0001 5 force
execute at @e[tag=NewFireball] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.0001 10 force
execute at @e[tag=NewFireball] run particle small_flame ~ ~ ~ 0.4 0.4 0.4 0.01 10 force
execute as @e[tag=NewFireball,x_rotation=20..90] at @s run tp @s ~ ~ ~ ~ 21
execute as @e[tag=NewFireball] at @s run tp @s ^ ^ ^0.65
execute as @e[tag=NewFireball] at @s unless block ^ ^ ^0.1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["CrematorBoom","entities_cremator"]}

execute at @e[tag=NewFireball] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=5}] Team run summon marker ~ ~ ~ {Tags:["CrematorBoom","entities_cremator"]}
execute at @a[scores={char=5,s1_timer=50..}] run kill @e[tag=NewFireball]

execute if entity @e[tag=CrematorBoom] run kill @e[tag=NewFireball]

execute at @e[tag=CrematorBoom] run playsound entity.dragon_fireball.explode master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=CrematorBoom] run particle explosion ~ ~ ~ 3 3 3 0.01 40 force
execute at @e[tag=CrematorBoom] run particle flame ~ ~ ~ 4 4 4 0.01 300 force
execute at @e[tag=CrematorBoom] run particle small_flame ~ ~ ~ 3.5 3.5 3.5 0.1 200 force

execute at @e[tag=CrematorBoom] as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=5}] Team run damage @s 8 generic by @p[scores={char=5}] from @p[scores={char=5}]
execute at @e[tag=CrematorBoom] as @e[distance=2.1..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=5}] Team run damage @s 4 generic by @p[scores={char=5}] from @p[scores={char=5}]
execute at @e[tag=CrematorBoom] as @e[distance=..6,tag=valid_spell_target] unless score @s Team = @p[scores={char=5}] Team run scoreboard players set @s CC_knockup 10

kill @e[tag=CrematorBoom]

#heatblast

scoreboard players set @a[scores={char=5,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=5,s2_timer=1,CC_silence=1..}] s2_timer 220

execute at @a[scores={char=5,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 1.0 0.5 1.0
execute at @a[scores={char=5,s2_timer=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["incinerate","entities_cremator"],NoGravity:0b}
tp @e[tag=incinerate,limit=1] @a[scores={char=5,s2_timer=1,CC_silence=0},limit=1]

execute store result entity @e[tag=incinerate,limit=1] Rotation[1] float 1 run clear
execute at @a[scores={char=5,s2_timer=1..15,CC_silence=0}] as @e[tag=incinerate] at @s run tp @s ^ ^ ^0.4

execute at @e[tag=incinerate] run particle minecraft:flame ~ ~1 ~ 2 0.5 2 0.001 30 force

execute at @a[scores={char=5,s2_timer=3..8,CC_silence=0}] at @e[tag=incinerate] run fill ~ ~2 ~ ~ ~-3 ~ minecraft:fire replace #minecraft:dash
execute at @a[scores={char=5,s2_timer=9..15,CC_silence=0}] at @e[tag=incinerate] run fill ~1 ~2 ~1 ~-1 ~-3 ~-1 minecraft:fire replace #minecraft:dash
execute at @a[scores={char=5,s2_timer=20..}] run kill @e[tag=incinerate]

execute at @e[tag=incinerate] as @e[distance=..4,tag=valid_spell_target] if score @s Team = @p[scores={char=5}] Team run tag @s add friendly_fire
execute at @e[tag=incinerate] as @e[distance=..4,tag=valid_spell_target] if score @s Team = @p[scores={char=5}] Team run effect give @s fire_resistance 3 0 true
execute at @e[tag=incinerate] as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=5}] Team run effect give @s slowness 2 1

execute at @a[scores={char=5,s2_timer=1}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["fireremove","entities_cremator"],NoGravity:1b}
tp @e[tag=fireremove,limit=1] @e[tag=incinerate,limit=1]
execute at @a[scores={char=5,s2_timer=41..}] at @e[tag=fireremove] run fill ~8 ~10 ~8 ~-8 ~-3 ~-8 minecraft:air replace minecraft:fire
execute at @a[scores={char=5,s2_timer=41..}] at @e[tag=fireremove] run fill ~8 ~10 ~8 ~-8 ~-3 ~-8 minecraft:air replace minecraft:soul_fire
execute at @a[scores={char=5,s2_timer=41..}] run kill @e[tag=fireremove]
execute at @a[scores={char=5,s2_timer=41..45}] run function battlegrounds:firerestore
execute at @a[scores={char=5,s2_timer=41..45}] run function battlegrounds:lightrestore


effect give @a[tag=friendly_fire] minecraft:fire_resistance 1 0 true
tag @a[scores={fire=..-20}] remove friendly_fire

# cremator

scoreboard players set @a[scores={s1_timer=1,char=5}] spellCD1 140
scoreboard players add @a[scores={s1_timer=1..,char=5}] s1_timer 1
scoreboard players set @a[scores={s1_timer=141..,char=5}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=5}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=5}] s2_timer 1
scoreboard players set @a[scores={s2_timer=241..,char=5}] s2_timer 0


execute as @a[scores={char=5,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=5}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=5,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:fire_charge",minecraft:custom_name={text:"Infernal Discharge",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=5,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=5}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=5,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:blaze_powder",minecraft:custom_name={text:"Heatblast",color:"dark_aqua",bold:1b}] 1
