kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sapling"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]


#heavy blade

scoreboard players set @a[scores={char=46,universal_hit=15..,passive_drea=0}] passive_drea 1
#execute at @a[scores={char=46,passive_drea=1}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["dreadnought_cleave"]}
#tp @e[tag=dreadnought_cleave,limit=1] @a[scores={char=46,passive_drea=2},limit=1]
#execute at @a[scores={char=46,passive_drea=2..}] as @e[tag=dreadnought_cleave] at @s run tp @s ^ ^ ^0.4
#execute at @a[scores={char=46,passive_drea=10..}] run kill @e[tag=dreadnought_cleave]

#execute at @e[tag=dreadnought_cleave] run particle minecraft:sweep_attack ~ ~1.4 ~ 0.1 0.1 0.1 0.1 1

#execute if entity @e[scores={char=46},team=purple] at @e[tag=dreadnought_cleave] run effect give @a[distance=..1.5,team=yellow] minecraft:slowness 1 0
#execute if entity @e[scores={char=46},team=purple] at @e[tag=dreadnought_cleave] if entity @a[team=yellow,distance=..1.5] run scoreboard players add @a[scores={char=46}] dreadnought_empower 1
#execute if entity @e[scores={char=46},team=purple] as @e[tag=dreadnought_cleave] at @s if entity @a[team=yellow,distance=..1.5] run kill @s

#execute if entity @e[scores={char=46},team=yellow] at @e[tag=dreadnought_cleave] run effect give @a[team=purple,distance=..1.5] slowness 1 0
#execute if entity @e[scores={char=46},team=yellow] at @e[tag=dreadnought_cleave] if entity @a[team=purple,distance=..1.5] run scoreboard players add @a[scores={char=46}] dreadnought_empower 1
#execute if entity @e[scores={char=46},team=yellow] as @e[tag=dreadnought_cleave] at @s if entity @a[distance=..1.5,team=purple] run kill @s


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

scoreboard players set @a[scores={char=46,spell_drea_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=46,spell_drea_1_1=1,CC_silence=1..}] spell_drea_1_1 160

scoreboard players set @a[scores={char=46,spell_drea_1_1=1..30,CC_silence=1..}] spellCD1 150
scoreboard players set @a[scores={char=46,spell_drea_1_1=1..30,CC_silence=1..}] spell_drea_1_1 31

execute at @a[scores={char=46,spell_drea_1_1=1..30,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.5 0.3 0.5 0.7 10
execute at @a[scores={char=46,spell_drea_1_1=1..30,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~ ~ 0.5 0.3 0.5 0.7 10
execute at @a[scores={char=46,spell_drea_1_1=10,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..12] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=46,spell_drea_1_1=1..30,CC_silence=0}] run playsound minecraft:block.sand.place master @a[distance=..12] ~ ~ ~ 0.1 0.5 1
execute at @a[scores={char=46,spell_drea_1_1=30,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["bludgeon_visual"]}
execute at @a[scores={char=46,spell_drea_1_1=30,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["bludgeon_actual"]}
tp @e[tag=bludgeon_visual,limit=1] @a[scores={char=46,spell_drea_1_1=31},limit=1]
tp @e[tag=bludgeon_actual,limit=1] @a[scores={char=46,spell_drea_1_1=31},limit=1]
execute at @a[scores={char=46,spell_drea_1_1=31,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ -80
execute store result entity @e[tag=bludgeon_actual,limit=1] Rotation[1] float 1 run clear
execute at @a[scores={char=46,spell_drea_1_1=31..50,CC_silence=0}] as @e[tag=bludgeon_actual] at @s run tp @s ^ ^ ^0.2

execute store result entity @e[tag=bludgeon_actual,limit=1] Rotation[1] float 1 run clear

execute if entity @e[scores={char=46},team=purple] at @e[tag=bludgeon_actual] run scoreboard players set @a[distance=..2.5,scores={bludgeon=0},team=yellow] bludgeon 1
execute if entity @e[scores={char=46},team=yellow] at @e[tag=bludgeon_actual] run scoreboard players set @a[distance=..2.5,scores={bludgeon=0},team=purple] bludgeon 1
execute at @a[scores={char=46,spell_drea_1_1=50..}] run kill @e[tag=bludgeon_actual]

execute at @e[tag=bludgeon_actual] run particle minecraft:crit ~ ~ ~ 0.6 0.1 0.6 0.1 50

execute at @a[scores={char=46,spell_drea_1_1=31..80,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run tp @s ~ ~ ~ ~ ~15
#execute at @a[scores={char=46,spell_drea_1_1=31..80,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle block{block_state: 'minecraft:sand'} ^ ^1.8 ^1.8 0.1 0.1 0.1 0.1 5
execute at @a[scores={char=46,spell_drea_1_1=31..40,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle minecraft:crit ^ ^1.7 ^1.7 0.2 0.2 0.2 0.1 20
execute at @a[scores={char=46,spell_drea_1_1=50..50,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle minecraft:crit ^ ^1.6 ^1.6 0.2 0.2 0.2 0.1 30
execute at @a[scores={char=46,spell_drea_1_1=50..60,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle minecraft:crit ^ ^1.5 ^1.5 0.3 0.3 0.3 0.1 40
execute at @a[scores={char=46,spell_drea_1_1=60..70,CC_silence=0}] as @e[tag=bludgeon_visual] at @s run particle minecraft:crit ^ ^1.5 ^1.5 0.3 0.3 0.3 0.1 40
execute at @a[scores={char=46,spell_drea_1_1=35,CC_silence=0}] run playsound minecraft:entity.player.attack.crit master @a[distance=..12] ~ ~ ~ 1 0.9 1
execute at @a[scores={char=46,spell_drea_1_1=70..}] run kill @e[tag=bludgeon_visual]

execute at @a[scores={bludgeon=3}] run particle minecraft:crit ~ ~1.5 ~ 0.2 0.2 0.2 0.5 10
execute at @a[scores={bludgeon=3}] run playsound minecraft:entity.player.attack.knockback master @a[distance=..6] ~ ~ ~ 1 0.3 1

execute as @a[scores={bludgeon=3}] run damage @s 4 generic by @p[scores={char=46}] from @p[scores={char=46}]
scoreboard players set @a[scores={bludgeon=3}] CC_stun 30
scoreboard players add @a[scores={bludgeon=1..}] bludgeon 1
scoreboard players set @a[scores={bludgeon=50..}] bludgeon 0


#shrug it off

scoreboard players set @a[scores={char=46,spell_drea_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=46,spell_drea_2_1=1,CC_silence=1..}] spell_drea_2_1 260

scoreboard players set @a[scores={char=46,spell_drea_2_1=1..40,CC_silence=1..}] spellCD2 240
scoreboard players set @a[scores={char=46,spell_drea_2_1=1..40,CC_silence=1..}] spell_drea_2_1 41

execute at @a[scores={char=46,spell_drea_2_1=1..40,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:netherite_block"}} ~ ~ ~ 0.2 0.3 0.2 1 5
execute at @a[scores={char=46,spell_drea_2_1=1..40,CC_silence=0}] run particle minecraft:crit ~ ~ ~ 0.2 0.3 0.2 1 5
execute at @a[scores={char=46,spell_drea_2_1=10,CC_silence=0}] run playsound minecraft:block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,spell_drea_2_1=20,CC_silence=0}] run playsound minecraft:block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,spell_drea_2_1=30,CC_silence=0}] run playsound minecraft:block.mud_bricks.place master @a[distance=..12] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=46,spell_drea_2_1=40,CC_silence=0}] run playsound minecraft:item.armor.equip_gold master @a[distance=..12] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=46,spell_drea_2_1=40,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:netherite_block"}} ~ ~1.1 ~ 0.3 0.5 0.3 1 100

tag @a[scores={char=46,spell_drea_2_1=40,CC_silence=0}] add invisible
item replace entity @a[scores={char=46,spell_drea_2_1=40,CC_silence=0}] armor.chest with minecraft:netherite_chestplate[minecraft:custom_name="Armor",minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:armor",amount:3.0d,operation:"add_value",slot:"chest"}]] 1
effect give @a[scores={char=46,spell_drea_2_1=40,CC_silence=0,HPercentage=71..}] minecraft:absorption 5 1
effect give @a[scores={char=46,spell_drea_2_1=40,CC_silence=0,HPercentage=41..70}] minecraft:absorption 5 2
effect give @a[scores={char=46,spell_drea_2_1=40,CC_silence=0,HPercentage=11..41}] minecraft:absorption 5 3
effect give @a[scores={char=46,spell_drea_2_1=40,CC_silence=0,HPercentage=..10}] minecraft:absorption 5 4

tag @a[scores={char=46,spell_drea_2_1=140}] remove invisible
execute at @a[scores={char=46,spell_drea_2_1=140}] run particle minecraft:block{block_state:{Name:"minecraft:netherite_block"}} ~ ~1 ~ 0.2 0.5 0.2 1 100


# dreadnought

scoreboard players add @a[scores={spell_drea_1=1..}] spell_drea_1_1 1
item replace entity @a[scores={char=46,spell_drea_1_1=180..}] hotbar.1 with minecraft:spruce_sapling[minecraft:custom_name={text:"Bludgeon",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_drea_1_1=181..}] spell_drea_1 0
scoreboard players set @a[scores={spell_drea_1_1=181..}] spell_drea_1_1 0
scoreboard players set @a[scores={spell_drea_1_1=1}] spellCD1 180

scoreboard players add @a[scores={spell_drea_2=1..}] spell_drea_2_1 1
item replace entity @a[scores={char=46,spell_drea_2_1=280..}] hotbar.2 with minecraft:netherite_chestplate[minecraft:custom_name={text:"Shrug It Off",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_drea_2_1=281..}] spell_drea_2 0
scoreboard players set @a[scores={spell_drea_2_1=281..}] spell_drea_2_1 0
scoreboard players set @a[scores={spell_drea_2_1=1}] spellCD2 280

execute as @a[scores={char=46}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=46}] minecraft:netherite_sword
item replace entity @a[scores={char=46,dreadnought_empower=..2}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Ka`Hra Raff"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=46,dreadnought_empower=3..}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Ka`Hra Raff"},minecraft:max_damage=1,minecraft:enchantments={"minecraft:power":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:5.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=46,spell_drea_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:spruce_sapling",Slot:1b}]}] run clear @a[scores={char=46}] minecraft:spruce_sapling
item replace entity @a[scores={char=46,spell_drea_1=0}] hotbar.1 with minecraft:spruce_sapling[minecraft:custom_name={text:"Bludgeon",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=46,spell_drea_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:2b}]}] run clear @a[scores={char=46}] minecraft:netherite_chestplate
item replace entity @a[scores={char=46,spell_drea_2=0}] hotbar.2 with minecraft:netherite_chestplate[minecraft:custom_name={text:"Shrug It Off",color:"dark_aqua",bold:1b}] 1