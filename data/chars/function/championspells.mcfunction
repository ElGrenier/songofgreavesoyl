kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_helmet"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}]

#passive

execute at @a[scores={char=27},team=yellow] run effect give @a[distance=1..7,scores={HPercentage=..50},team=yellow] minecraft:resistance 3
execute at @a[scores={char=27},team=purple] run effect give @a[distance=1..7,scores={HPercentage=..50},team=purple] minecraft:resistance 3
execute at @a[scores={char=27},team=yellow] at @a[distance=1..7,scores={HPercentage=..50},team=yellow] run particle minecraft:small_flame ~ ~0.5 ~ 0.6 1.2 0.6 0.0001 2
execute at @a[scores={char=27},team=purple] at @a[distance=1..7,scores={HPercentage=..50},team=purple] run particle minecraft:small_flame ~ ~0.5 ~ 0.6 1.2 0.6 0.0001 2

#smite and ignite
execute at @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] run playsound minecraft:entity.blaze.burn master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=27,spell_cham_1_1=1,CC_silence=0},team=yellow] run scoreboard players set @p[distance=..5,team=purple] CC_shieldbreak 80
execute at @a[scores={char=27,spell_cham_1_1=1,CC_silence=0},team=purple] run scoreboard players set @p[distance=..5,team=yellow] CC_shieldbreak 80

execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^1 0.3 0.3 0.3 0.001 10
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^1.5 0.25 0.25 0.25 0.001 8
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^2 0.2 0.2 0.2 0.001 8
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^2.5 0.15 0.15 0.15 0.001 6
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^3 0.1 0.1 0.1 0.001 6
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^3.5 0.1 0.1 0.1 0.001 4
execute as @a[scores={char=27,spell_cham_1_1=1,CC_silence=0}] at @s run particle minecraft:flame ^ ^1.4 ^4 0.1 0.1 0.1 0.001 4

#blessing of flames

scoreboard players set @a[scores={char=27,spell_cham_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=27,spell_cham_2_1=1,CC_silence=1..}] spell_cham_2_1 180

execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=purple] run effect give @a[distance=..7,team=purple] minecraft:absorption 8 1
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=yellow] run effect give @a[distance=..7,team=yellow] minecraft:absorption 8 1
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run particle minecraft:flame ~ ~ ~ 4 1 4 0.001 40 normal
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 4 1 4 0.001 200 normal
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run playsound minecraft:entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 0.4 0.4 1
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run playsound minecraft:entity.blaze.burn master @a[distance=..10] ~ ~ ~ 1 0.4 1

execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=purple] at @a[distance=..7,team=purple] run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~0.2 ~ 0.6 1.5 0.6 1 30
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=purple] at @a[distance=..7,team=purple] run particle minecraft:flame ~ ~0.2 ~ 0.6 1 0.6 0.1 30

execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=yellow] at @a[distance=..7,team=yellow] run particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~0.2 ~ 0.6 1.5 0.6 1 30
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0},team=yellow] at @a[distance=..7,team=yellow] run particle minecraft:flame ~ ~0.2 ~ 0.6 1 0.6 0.1 30

execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~1 ~ {Tags:["blessing_visual_core","blessingofflames_visuals"]}
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run summon minecraft:marker ~0.5 ~1 ~ {Tags:["blessing_visual_1","blessingofflames_visuals"]}
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run summon minecraft:marker ~-0.5 ~1 ~ {Tags:["blessing_visual_2","blessingofflames_visuals"]}
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~1 ~0.5 {Tags:["blessing_visual_3","blessingofflames_visuals"]}
execute at @a[scores={char=27,spell_cham_2_1=1,CC_silence=0}] run summon minecraft:marker ~ ~1 ~-0.5 {Tags:["blessing_visual_4","blessingofflames_visuals"]}

execute at @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] run particle minecraft:small_flame ~ ~0.2 ~ 0.1 0.1 0.1 0.001 15
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] at @s run tp @s ~ ~ ~ facing entity @e[tag=blessing_visual_core,limit=1]
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] store result entity @s Rotation[1] float 1 run clear
execute as @e[tag=blessingofflames_visuals,tag=!blessing_visual_core] at @s run tp @s ^0.7 ^ ^-0.16

execute at @a[scores={char=27,spell_cham_2_1=20..}] run kill @e[tag=blessingofflames_visuals]






# champion

scoreboard players add @a[scores={spell_cham_1=1..}] spell_cham_1_1 1
item replace entity @a[scores={char=27,spell_cham_1_1=180..}] hotbar.1 with minecraft:golden_sword[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Smite and Ignite"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:fire_aspect":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1
scoreboard players set @a[scores={spell_cham_1_1=181..}] spell_cham_1 0
scoreboard players set @a[scores={spell_cham_1_1=181..}] spell_cham_1_1 0
scoreboard players set @a[scores={char=27,spell_cham_1_1=1}] spellCD1 180

scoreboard players add @a[scores={spell_cham_2=1..}] spell_cham_2_1 1
item replace entity @a[scores={char=27,spell_cham_2_1=260..}] hotbar.2 with minecraft:golden_helmet[minecraft:custom_name={text:"Blessing of Flames",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sharpness":1}] 1
scoreboard players set @a[scores={spell_cham_2_1=201..}] spell_cham_2 0
scoreboard players set @a[scores={spell_cham_2_1=201..}] spell_cham_2_1 0
scoreboard players set @a[scores={spell_cham_2_1=1}] spellCD2 200

execute as @a[scores={char=27}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=27}] minecraft:netherite_shovel
item replace entity @a[scores={char=27}] hotbar.0 with minecraft:netherite_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Mace"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=27,spell_cham_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",Slot:1b}]}] run clear @a[scores={char=27}] minecraft:golden_sword
item replace entity @a[scores={char=27,spell_cham_1=0}] hotbar.1 with minecraft:golden_sword[minecraft:custom_name={bold:1b,color:"dark_aqua",text:"Smite and Ignite"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:fire_aspect":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}]] 1

execute as @a[scores={char=27,spell_cham_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:2b}]}] run clear @a[scores={char=27}] minecraft:golden_helmet
item replace entity @a[scores={char=27,spell_cham_2=0}] hotbar.2 with minecraft:golden_helmet[minecraft:custom_name={text:"Blessing of Flames",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:sharpness":1}] 1