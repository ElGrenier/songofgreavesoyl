#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sapling"}}]
#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]


#heavy blade

scoreboard players set @a[scores={char=46,universal_hit=15..,passive_drea=0}] passive_drea 1

scoreboard players add @a[scores={passive_drea=1..}] passive_drea 1
scoreboard players add @a[scores={passive_drea=3}] dreadnought_empower 1
scoreboard players set @a[scores={passive_drea=10..}] passive_drea 0

scoreboard players set @a[scores={dreadnought_empower=4..}] dreadnought_empower 3
scoreboard players set @a[scores={dreadnought_empower=3..}] passive_drea 40

title @a[scores={char=46,dreadnought_empower=0}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"- - -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=46,dreadnought_empower=1}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"X",color:"gray",bold:1b,type:"text"},{text:" - -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=46,dreadnought_empower=2}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"X X",color:"gray",bold:1b,type:"text"},{text:" -",color:"gray",type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]
title @a[scores={char=46,dreadnought_empower=3..}] actionbar [{text:"[ ",color:"dark_blue",bold:1b,type:"text"},{text:"X X X",color:"gray",bold:1b,type:"text"},{text:" ]",color:"dark_blue",bold:1b,type:"text"}]

scoreboard players set @a[scores={dreadnough_empowered_attack=1..}] dreadnought_empower 0
clear @a[scores={dreadnough_empowered_attack=1..}] minecraft:netherite_sword

scoreboard players set @a[scores={dreadnough_empowered_attack=1..}] dreadnough_empowered_attack 0


#bludgeon

scoreboard players set @a[scores={char=46,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=46,s1_timer=1,CC_silence=1..}] s1_timer 160

scoreboard players set @a[scores={char=46,s1_timer=1..30,CC_silence=1..}] spellCD1 150
scoreboard players set @a[scores={char=46,s1_timer=1..30,CC_silence=1..}] s1_timer 31

execute at @a[scores={char=46,s1_timer=1..30,CC_silence=0}] run particle crit ~ ~ ~ 0.5 0.3 0.5 0.7 10
execute at @a[scores={char=46,s1_timer=1..30,CC_silence=0}] run particle block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.3 0.5 0.7 10
execute at @a[scores={char=46,s1_timer=10,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=46,s1_timer=1..30,CC_silence=0}] run playsound block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.5 1
execute at @a[scores={char=46,s1_timer=30,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["bludgeon_visual","entities_dreadnought"],item:{count:1,id:"minecraft:netherite_sword"},transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,3.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=46,s1_timer=30,CC_silence=0}] run summon marker ~ ~ ~ {Invulnerable:1b,Tags:["bludgeon_actual","entities_dreadnought"]}
tp @e[tag=bludgeon_visual,limit=1] @a[scores={char=46,s1_timer=31},limit=1]
tp @e[tag=bludgeon_actual,limit=1] @a[scores={char=46,s1_timer=31},limit=1]
execute at @a[scores={char=46,s1_timer=31,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ -80
execute at @a[scores={char=46,s1_timer=31,CC_silence=0}] as @e[tag=bludgeon_visual,limit=1] at @s run tp @s ~ ~0.6 ~
execute store result entity @e[tag=bludgeon_actual,limit=1] Rotation[1] float 1 run clear
execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_actual] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ^ ^ ^0.15

execute store result entity @e[tag=bludgeon_actual,limit=1] Rotation[1] float 1 run clear

execute at @e[tag=bludgeon_actual] as @e[tag=valid_spell_target,distance=..2] unless score @s bludgeon matches 1.. unless score @s Team = @p[scores={char=46}] Team run scoreboard players set @s bludgeon 1
execute at @a[scores={char=46,s1_timer=50..}] run kill @e[tag=bludgeon_actual]

execute at @e[tag=bludgeon_actual] run particle crit ~ ~ ~ 0.6 0.2 0.6 0.1 50


execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ ~4
execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ ~4
execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ ~4
execute at @a[scores={char=46,s1_timer=31..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ ~4
execute at @a[scores={char=46,s1_timer=31..40,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle crit ^ ^0.5 ^1.3 0.2 0.2 0.2 0.1 20
execute at @a[scores={char=46,s1_timer=50..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle crit ^ ^0.4 ^1.3 0.2 0.2 0.2 0.1 30
execute at @a[scores={char=46,s1_timer=50..60,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle crit ^ ^0.3 ^1.3 0.3 0.3 0.3 0.1 40
execute at @a[scores={char=46,s1_timer=35,CC_silence=0}] run playsound entity.player.attack.crit master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=46,s1_timer=40..}] run kill @e[tag=bludgeon_visual]

execute at @e[scores={bludgeon=3}] run particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0.5 10
execute at @e[scores={bludgeon=3}] run playsound entity.player.attack.knockback master @a[distance=..6] ~ ~ ~ 1 0.3 1

execute as @e[scores={bludgeon=3}] run damage @s 4 generic by @p[scores={char=46}] from @p[scores={char=46}]
scoreboard players set @e[scores={bludgeon=3}] CC_stun 30
scoreboard players add @e[scores={bludgeon=1..}] bludgeon 1
scoreboard players set @e[scores={bludgeon=50..}] bludgeon 0


#shrug it off

scoreboard players set @a[scores={char=46,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=46,s2_timer=1,CC_silence=1..}] s2_timer 260

scoreboard players set @a[scores={char=46,s2_timer=1..40,CC_silence=1..}] spellCD2 240
scoreboard players set @a[scores={char=46,s2_timer=1..40,CC_silence=1..}] s2_timer 41

execute at @a[scores={char=46,s2_timer=1..40,CC_silence=0}] run particle block{block_state:{Name:"minecraft:netherite_block"}} ~ ~ ~ 0.2 0.3 0.2 1 5
execute at @a[scores={char=46,s2_timer=1..40,CC_silence=0}] run particle crit ~ ~ ~ 0.2 0.3 0.2 1 5
execute at @a[scores={char=46,s2_timer=10,CC_silence=0}] run playsound block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,s2_timer=20,CC_silence=0}] run playsound block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,s2_timer=30,CC_silence=0}] run playsound block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,s2_timer=40,CC_silence=0}] run playsound item.armor.equip_gold master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=46,s2_timer=40,CC_silence=0}] run particle dust{color:[0.0,0.0,0],scale:1.0f} ~ ~1 ~ 0.3 0.4 0.3 0.1 50

tag @a[scores={char=46,s2_timer=40,CC_silence=0}] add invisible
item replace entity @a[scores={char=46,s2_timer=40,CC_silence=0}] armor.chest with netherite_chestplate[minecraft:custom_name="Armor",minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:armor",amount:3.0d,operation:"add_value",slot:"chest"}]] 1
effect give @a[scores={char=46,s2_timer=40,CC_silence=0,HPercentage=71..}] absorption 5 1
effect give @a[scores={char=46,s2_timer=40,CC_silence=0,HPercentage=41..70}] absorption 5 2
effect give @a[scores={char=46,s2_timer=40,CC_silence=0,HPercentage=11..41}] absorption 5 3
effect give @a[scores={char=46,s2_timer=40,CC_silence=0,HPercentage=..10}] absorption 5 4

tag @a[scores={char=46,s2_timer=140}] remove invisible
execute at @a[scores={char=46,s2_timer=140}] run playsound block.ancient_debris.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=46,s2_timer=140}] run particle block{block_state:{Name:"minecraft:netherite_block"}} ~ ~1 ~ 0.2 0.3 0.2 1 100
execute at @a[scores={char=46,s2_timer=140}] run particle dust{color:[0.0,0.0,0],scale:1.0f} ~ ~1 ~ 0.3 0.4 0.3 0.1 50


# dreadnought

scoreboard players set @a[scores={char=46}] MaxHP 24

scoreboard players set @a[scores={char=46,s1_timer=1}] spellCD1 180
scoreboard players add @a[scores={char=46,s1_timer=1..}] s1_timer 1
scoreboard players set @a[scores={char=46,s1_timer=181..}] s1_timer 0

scoreboard players set @a[scores={char=46,s2_timer=1}] spellCD2 280
scoreboard players add @a[scores={char=46,s2_timer=1..}] s2_timer 1
scoreboard players set @a[scores={char=46,s2_timer=281..}] s2_timer 0


execute as @a[scores={char=46}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=46}] minecraft:netherite_sword
item replace entity @a[scores={char=46,dreadnought_empower=..2}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name=[{color:"gray",text:"\""},{bold:1b,color:"gray",text:"Ka`Hra Raff"},{color:"gray",text:"\""}],minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=46,dreadnought_empower=3..}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name=[{color:"gray",text:"\""},{bold:1b,color:"gray",text:"Ka`Hra Raff"},{color:"gray",text:"\""}],minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=46,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=46}] minecraft:carrot_on_a_stick
item replace entity @a[scores={char=46,s1_timer=0,CC_silence=0}] hotbar.1 with minecraft:carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:spruce_sapling",minecraft:custom_name={text:"Bludgeon",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=46,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=46}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=46,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:netherite_chestplate",minecraft:custom_name={text:"Shrug It Off",color:"dark_aqua",bold:1b}] 1
