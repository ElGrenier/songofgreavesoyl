kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_stained_glass"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:breeze_rod"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_dye"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword"}}]


#catch me if you can
effect give @a[scores={char=8,HP=..4}] speed 1 1 true
effect give @a[scores={char=8,HP=..12}] speed 1 0 true

#soul shard

scoreboard players set @a[scores={char=8,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=8,s1_timer=1,CC_silence=1..}] s1_timer 260

clear @a[scores={char=8,s1_timer=1,CC_silence=0}] *[custom_data={s1:1}]
execute at @a[scores={char=8,s1_timer=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 1.5 1
effect give @a[scores={char=8,s1_timer=1,CC_silence=0}] invisibility 5 0 true
effect give @a[scores={char=8,s1_timer=1,CC_silence=0}] speed 2 2 true
item replace entity @a[scores={char=8,s1_timer=1..2,CC_silence=0}] armor.head with air
item replace entity @a[scores={char=8,s1_timer=1..2,CC_silence=0}] armor.chest with air
item replace entity @a[scores={char=8,s1_timer=1..2,CC_silence=0}] armor.legs with air
item replace entity @a[scores={char=8,s1_timer=1..2,CC_silence=0}] armor.feet with air
tag @a[scores={char=8,s1_timer=1,CC_silence=0}] add invisible

execute at @a[scores={char=8,s1_timer=1,CC_silence=0},x_rotation=44..90] run summon mannequin ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Health:5.0f,Tags:["decoy","stationary_decoy","entities_trickstress"],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":8876137,"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:tide"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":12895428,"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:coast"}},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":16777215},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1095848999,-769503293,-1321695037,-1486900090],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZiOTkyMGNhZDg4YzlhZDEwMDJkNjJlZTY0NzkxZjFiYmYyYWQ3Y2M0ODY4Yjg3Y2YwNTczYjM1M2E4OWE1ZCJ9fX0="}]}},count:1}},attributes:[{id:"minecraft:max_health",base:5.0d},{id:"minecraft:attack_damage",base:0.0d}]}
execute at @a[scores={char=8,s1_timer=1,CC_silence=0},x_rotation=-90..45] run summon mannequin ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Health:5.0f,Tags:["decoy","moving_decoy","entities_trickstress"],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":8876137,"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:tide"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":12895428,"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:coast"}},count:1},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":16777215},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1095848999,-769503293,-1321695037,-1486900090],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZiOTkyMGNhZDg4YzlhZDEwMDJkNjJlZTY0NzkxZjFiYmYyYWQ3Y2M0ODY4Yjg3Y2YwNTczYjM1M2E4OWE1ZCJ9fX0="}]}},count:1}},attributes:[{id:"minecraft:max_health",base:5.0d},{id:"minecraft:attack_damage",base:0.0d}]}

tp @e[tag=decoy] @a[scores={char=8,s1_timer=2,CC_silence=0},limit=1]
execute at @a[scores={char=8,s1_timer=1}] run particle soul_fire_flame ~ ~ ~ 0.3 1 0.3 0.001 100 force

tag @a[scores={char=8,s1_timer=100}] remove invisible
execute at @a[scores={char=8,s1_timer=100}] run item replace entity @a[scores={char=8}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:projectile_protection":2},minecraft:profile={id:[I;-1095848999,-769503293,-1321695037,-1486900090],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZiOTkyMGNhZDg4YzlhZDEwMDJkNjJlZTY0NzkxZjFiYmYyYWQ3Y2M0ODY4Yjg3Y2YwNTczYjM1M2E4OWE1ZCJ9fX0="}]}] 1
execute at @a[scores={char=8,s1_timer=100}] run item replace entity @a[scores={char=8}] armor.chest with leather_chestplate[minecraft:custom_name="Armor",minecraft:dyed_color=16777215,minecraft:unbreakable={}] 1
execute at @a[scores={char=8,s1_timer=100}] run item replace entity @a[scores={char=8}] armor.legs with leather_leggings[minecraft:trim={pattern:"coast",material:"copper"},minecraft:custom_name="Armor",minecraft:dyed_color=12895428,minecraft:unbreakable={}] 1
execute at @a[scores={char=8,s1_timer=100}] run item replace entity @a[scores={char=8}] armor.feet with leather_boots[minecraft:trim={pattern:"tide",material:"copper"},minecraft:custom_name="Armor",minecraft:dyed_color=8876137,minecraft:unbreakable={}] 1
execute at @a[scores={char=8,s1_timer=100}] at @e[tag=decoy] run particle soul_fire_flame ~ ~ ~ 0.5 1 0.5 0.001 80 force
execute at @a[scores={char=8,s1_timer=100}] run tp @e[tag=decoy] ~ ~-200 ~
clear @a[scores={char=8,s1_timer=100}] minecraft:cyan_dye

execute store result entity @e[tag=decoy,limit=1] Rotation[1] float 1 run clear
execute at @a[scores={char=8,s1_timer=1..30}] as @e[tag=moving_decoy] at @s if block ^ ^1 ^1 #minecraft:dash if block ^ ^ ^1 #minecraft:dash run tp @s ^ ^ ^0.3
execute as @e[tag=decoy] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=decoy] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~


tag @a[scores={char=8,universal_hit=1..}] remove invisible
effect clear @a[scores={char=8,universal_hit=1..}] invisibility


#soul swap

execute at @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] at @e[tag=decoy,limit=1] run particle soul_fire_flame ~ ~ ~ 0.7 1 0.7 0.01 80 force
execute at @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] run particle soul_fire_flame ~ ~ ~ 0.7 1 0.7 0.01 80 force
execute at @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["SwapDecoy","entities_trickstress"]}
tp @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] @e[tag=decoy,limit=1]
execute as @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] at @s run tp @s ~ ~1 ~
execute as @e[tag=SwapDecoy,limit=1] at @s run tp @e[tag=decoy] ~ ~ ~
kill @e[tag=SwapDecoy]
execute at @a[scores={char=8,s1_timer_recast=1,CC_silence=0}] run clear @a[scores={char=8}] *[minecraft:custom_data={s1:2}]


#space twist


scoreboard players set @a[scores={char=8,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=8,s2_timer=1,CC_silence=1..}] s2_timer 380

execute at @a[scores={char=8}] as @a[distance=0.1..12] unless score @s Team = @p[scores={char=8}] Team run tag @s add trickstress_swap_valid_target
execute at @a[scores={char=8}] as @a[distance=12.1..] unless score @s Team = @p[scores={char=8}] Team run tag @s remove trickstress_swap_valid_target
execute at @a[scores={char=8}] as @a if score @s Team = @p[scores={char=8}] Team run tag @s remove trickstress_swap_valid_target

execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] unless entity @e[tag=trickstress_swap_valid_target,distance=..12] run title @a[scores={char=8}] times 0 20 0
execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] unless entity @e[tag=trickstress_swap_valid_target,distance=..12] run title @a[scores={char=8}] actionbar {text:"No targets within range",color:red,bold:1b}
execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] unless entity @e[tag=trickstress_swap_valid_target,distance=..12] run scoreboard players set @a[scores={char=8}] spellCD2 20
execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] unless entity @e[tag=trickstress_swap_valid_target,distance=..12] run scoreboard players set @a[scores={char=8}] s2_timer 380

execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] run playsound block.beacon.power_select master @a[distance=..15] ~ ~ ~ 0.5 1.5 1
execute at @a[scores={char=8,s2_timer=1,CC_silence=0}] run playsound entity.witch.celebrate master @a[distance=..15] ~ ~ ~ 1 1.8 1
execute at @a[scores={char=8,s2_timer=2}] run summon marker ~ ~ ~ {Tags:["SwapMarker","entities_trickstress"]}
execute at @a[scores={char=8,s2_timer=2,CC_silence=0}] as @p[distance=..12,tag=valid_spell_target,tag=trickstress_swap_valid_target,scores={CC_intangible=0}] unless score @s Team = @p[scores={char=8}] Team at @s run tp @p[scores={char=8}] ~ ~ ~
execute at @a[scores={char=8,s2_timer=2,CC_silence=0}] as @p[distance=..2,tag=valid_spell_target,tag=trickstress_swap_valid_target,scores={CC_intangible=0}] unless score @s Team = @p[scores={char=8}] Team run tp @s @e[tag=SwapMarker,limit=1]
kill @e[tag=SwapMarker]



# trickstress

scoreboard players set @a[scores={char=8}] MaxHP 20

scoreboard players set @a[scores={s1_timer=100,char=8}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=8}] s1_timer 1
scoreboard players add @a[scores={s1_timer_recast=1..,char=8}] s1_timer_recast 1
scoreboard players set @a[scores={s1_timer=281..,char=8}] s1_timer_recast 0
scoreboard players set @a[scores={s1_timer=281..,char=8}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=8}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=8}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=8}] s2_timer 0

execute as @a[scores={char=8}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",Slot:0b}]}] run clear @a[scores={char=8}] iron_sword
item replace entity @a[scores={char=8}] hotbar.0 with minecraft:iron_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.4d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=8,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=8}] carrot_on_a_stick
item replace entity @a[scores={char=8,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:light_blue_stained_glass",minecraft:custom_name={text:"Soul Shard",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:binding_curse":1}] 1

execute as @a[scores={char=8,s1_timer=10..99,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=8}] carrot_on_a_stick
item replace entity @a[scores={char=8,s1_timer=10..99,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:light_blue_concrete_powder",minecraft:custom_name={text:"Soul Swap",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:binding_curse":1}] 1

execute as @a[scores={char=8,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=8}] warped_fungus_on_a_stick
item replace entity @a[scores={char=8,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:breeze_rod",minecraft:custom_name={text:"Space Twist",color:"dark_aqua",bold:1b}] 1