kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_shovel"}}]

#passive

execute at @a[scores={char=27}] as @a[tag=valid_spell_target,distance=0.1..7,scores={HPercentage=..50}] if score @s Team = @p[scores={char=27}] Team run effect give @s resistance 1
execute at @a[scores={char=27}] as @a[tag=valid_spell_target,distance=0.1..7,scores={HPercentage=..50}] if score @s Team = @p[scores={char=27}] Team run particle small_flame ~ ~0.5 ~ 0.6 1.2 0.6 0.0001 2


#smite and ignite
scoreboard players set @a[scores={char=27,s1_timer=1}] champion_empower 1
execute at @a[scores={char=27,s1_timer=1,CC_silence=0}] run playsound entity.blaze.burn master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=27,s1_timer=1,CC_silence=0}] run playsound item.armor.equip_gold master @a[distance=..10] ~ ~ ~ 1 0.5 1

execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^1 0.3 0.3 0.3 0.001 10
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^1.5 0.25 0.25 0.25 0.001 8
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^2 0.2 0.2 0.2 0.001 8
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^2.5 0.15 0.15 0.15 0.001 6
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^3 0.1 0.1 0.1 0.001 6
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^3.5 0.1 0.1 0.1 0.001 4
execute as @a[scores={char=27,champion_empower=2..}] at @s run particle minecraft:flame ^ ^1.4 ^4 0.1 0.1 0.1 0.001 4
scoreboard players set @a[scores={char=27,champion_empower=2..}] champion_empower 0

scoreboard players set @a[advancements={chars:champion_ignite=true}] CC_shieldbreak 60
advancement revoke @a[advancements={chars:champion_ignite=true}] only chars:champion_ignite

execute at @a[scores={char=27,champion_empower=1}] run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.01 3

#blessing of flames

scoreboard players set @a[scores={char=27,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=27,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] as @a[tag=valid_spell_target,distance=..7] if score @s Team = @p[scores={char=27}] Team run effect give @s absorption 6 1


execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run particle flame ~ ~ ~ 4 1 4 0.001 40 normal
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run particle falling_dust{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 4 1 4 0.001 200 normal
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 0.4 0.4 1
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run playsound entity.blaze.burn master @a[distance=..10] ~ ~ ~ 1 0.4 1


execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] as @a[tag=valid_spell_target,distance=..7] if score @s Team = @p[scores={char=27}] Team run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~0.2 ~ 0.6 1.5 0.6 1 30
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] as @a[tag=valid_spell_target,distance=..7] if score @s Team = @p[scores={char=27}] Team run particle minecraft:flame ~ ~0.2 ~ 0.6 1 0.6 0.1 30

execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run summon marker ~ ~0.5 ~ {Tags:["blessing_visual_core","blessingofflames_visuals"]}
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run summon marker ~0.5 ~0.5 ~ {Tags:["blessing_visual_1","blessingofflames_visuals"]}
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run summon marker ~-0.5 ~0.5 ~ {Tags:["blessing_visual_2","blessingofflames_visuals"]}
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run summon marker ~ ~0.5 ~0.5 {Tags:["blessing_visual_3","blessingofflames_visuals"]}
execute at @a[scores={char=27,s2_timer=1,CC_silence=0}] run summon marker ~ ~0.5 ~-0.5 {Tags:["blessing_visual_4","blessingofflames_visuals"]}

execute at @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] run particle small_flame ~ ~0.2 ~ 0.2 0.1 0.2 0.001 25
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=blessing_visual_core,limit=1]
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] at @s run tp @s ^0.9 ^ ^-0.21

execute at @a[scores={char=27,s2_timer=20..}] run kill @e[tag=blessingofflames_visuals]






# champion

scoreboard players set @a[scores={s1_timer=1,char=27}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=27}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=27}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=27}] spellCD2 200
scoreboard players add @a[scores={s2_timer=1..,char=27}] s2_timer 1
scoreboard players set @a[scores={s2_timer=201..,char=27}] s2_timer 0

execute as @a[scores={char=27,champion_empower=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=27}] netherite_shovel
item replace entity @a[scores={char=27,champion_empower=0}] hotbar.0 with netherite_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Mace"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=27,champion_empower=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:copper_shovel",Slot:0b}]}] run clear @a[scores={char=27}] copper_shovel
item replace entity @a[scores={char=27,champion_empower=1}] hotbar.0 with copper_shovel[custom_data={champion:1},minecraft:custom_name={bold:1b,color:"gray",text:"Mace"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:fire_aspect":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1


execute as @a[scores={char=27,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=27}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=27,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:blaze_rod",minecraft:custom_name={text:"Smite and Ignite",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:flame":1}] 1

execute as @a[scores={char=27,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=27}] warped_fungus_on_a_stick
item replace entity @a[scores={char=27,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:golden_helmet",minecraft:custom_name={text:"Blessing of Flames",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sharpness":1}] 1
