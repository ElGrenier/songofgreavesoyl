kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:open_eyeblossom"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:closed_eyeblossom"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_boots"}}]


# pummeling strike



execute at @a[scores={universal_hit=1..,char=68,passive_enfo=0},team=purple] run tag @p[distance=..5,team=yellow] add get_pummeled
execute at @a[scores={universal_hit=1..,char=68,passive_enfo=0},team=yellow] run tag @p[distance=..5,team=purple] add get_pummeled

execute if entity @a[tag=get_pummeled,scores={HPercentage=..50}] run scoreboard players set @a[scores={char=68}] passive_enfo 1
scoreboard players set @a[tag=get_pummeled,scores={HPercentage=..50}] CC_stun 20
effect give @a[tag=get_pummeled,scores={HPercentage=..50}] minecraft:slowness 1 100 true
effect give @a[tag=get_pummeled,scores={HPercentage=..50}] minecraft:slowness 1 100 true
execute at @a[tag=get_pummeled,scores={HPercentage=..50}] run particle minecraft:crit ~ ~1.5 ~ 0.5 0.5 0.5 0.1 55
execute at @a[tag=get_pummeled,scores={HPercentage=..50}] run playsound minecraft:entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1

tag @a[tag=get_pummeled] remove get_pummeled

scoreboard players add @a[scores={char=68,passive_enfo=1..}] passive_enfo 1
scoreboard players set @a[scores={char=68,passive_enfo=200..}] passive_enfo 0


# pulverize

scoreboard players set @a[scores={char=68,spell_enfo_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=68,spell_enfo_1_1=1,CC_silence=1..}] spell_enfo_1_1 160

execute at @a[scores={char=68,spell_enfo_1_1=1..20,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.001 5
item replace entity @a[scores={char=68,spell_enfo_1_1=10,CC_silence=0}] hotbar.1 with minecraft:closed_eyeblossom[minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:power":1}] 1


execute at @a[scores={char=68,spell_enfo_1_1=21,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~1 ~ 1 1 1 0.1 50
execute at @a[scores={char=68,spell_enfo_1_1=21,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["pulverize_shockwave"]}
tp @e[tag=pulverize_shockwave,limit=1] @a[scores={char=68,spell_enfo_1_1=21},limit=1]

execute store result entity @e[tag=pulverize_shockwave,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=pulverize_shockwave] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

#execute at @e[tag=pulverize_shockwave] run particle minecraft:falling_dust{block_state: 'minecraft:sand'} ~ ~ ~ 0.2 1 0.2 0.0001 15 normal

execute at @a[scores={char=68,spell_enfo_1_1=20..30}] as @e[tag=pulverize_shockwave] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=68,spell_enfo_1_1=31..}] as @e[tag=pulverize_shockwave] at @s run tp @s ^ ^ ^0.6

execute at @a[scores={char=68,spell_enfo_1_1=21}] run playsound minecraft:entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=68,spell_enfo_1_1=21}] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 0.1 0.4 1

execute at @a[scores={char=68,spell_enfo_1_1=21..22}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~1.5 ~ 0.2 1.5 0.2 0.1 20
execute at @a[scores={char=68,spell_enfo_1_1=23..24}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~1.2 ~ 0.2 1.5 0.2 0.1 30
execute at @a[scores={char=68,spell_enfo_1_1=25..26}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~1 ~ 0.2 1.5 0.2 0.1 50
execute at @a[scores={char=68,spell_enfo_1_1=27..28}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~0.8 ~ 0.2 1.5 0.2 0.1 50
execute at @a[scores={char=68,spell_enfo_1_1=29..30}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~0.6 ~ 0.2 1.5 0.2 0.1 100
execute at @a[scores={char=68,spell_enfo_1_1=29..30}] at @e[tag=pulverize_shockwave] run particle minecraft:cloud ~ ~0.6 ~ 0.2 1.5 0.2 0.001 10

execute at @a[scores={char=68,spell_enfo_1_1=30..}] at @e[tag=pulverize_shockwave] run particle minecraft:crit ~ ~0.2 ~ 2 0.2 2 0.1 100
execute at @a[scores={char=68,spell_enfo_1_1=30..}] at @e[tag=pulverize_shockwave] run particle minecraft:cloud ~ ~0.2 ~ 2 0.2 2 0.1 5

execute at @a[scores={char=68,spell_enfo_1_1=40..}] run kill @e[tag=pulverize_shockwave]


execute if entity @e[scores={char=68},team=purple] at @e[tag=pulverize_shockwave] run scoreboard players set @a[distance=..2.5,scores={pulverized=0},team=yellow] pulverized 1
execute if entity @e[scores={char=68},team=yellow] at @e[tag=pulverize_shockwave] run scoreboard players set @a[distance=..2.5,scores={pulverized=0},team=purple] pulverized 1

#execute at @a[scores={pulverized=3}] run particle minecraft:crit ~ ~1.5 ~ 0.2 0.2 0.2 0.5 10
execute at @a[scores={pulverized=3}] run playsound minecraft:entity.player.attack.knockback master @a[distance=..6] ~ ~ ~ 0.4 0.8 1
execute as @a[scores={pulverized=2}] at @s run damage @s 4 generic by @p[scores={char=68}] from @p[scores={char=68}]
scoreboard players set @a[scores={pulverized=2}] CC_knockup 20
scoreboard players add @a[scores={pulverized=1..}] pulverized 1
scoreboard players set @a[scores={pulverized=20..}] pulverized 0

# pulverize 2 - knockback


scoreboard players set @a[scores={char=68,spell_enfo_3=1,CC_silence=0}] spell_enfo_1_1 23
scoreboard players set @a[scores={char=68,spell_enfo_3=1,CC_silence=0}] spellCD1 177
execute at @a[scores={char=68,spell_enfo_3=1,CC_silence=0}] run playsound minecraft:entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=68,spell_enfo_3=1,CC_silence=0}] run playsound minecraft:entity.player.attack.knockback master @a[distance=..10] ~ ~ ~ 1 0.3 1

execute at @a[scores={char=68,spell_enfo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["pulverize_horizontal"]}
tp @e[tag=pulverize_horizontal,limit=1] @a[scores={char=68,spell_enfo_3=1..},limit=1]


scoreboard players set @a[scores={char=68,spell_enfo_3=1..,CC_silence=0}] spell_enfo_3 0


execute store result entity @e[tag=pulverize_horizontal,limit=1] Rotation[1] float 1 run clear

execute at @a[scores={char=68,spell_enfo_1_1=20..22}] as @e[tag=pulverize_horizontal] at @s run tp @s ^ ^ ^0.1
execute at @a[scores={char=68,spell_enfo_1_1=25..}] as @e[tag=pulverize_horizontal] at @s run tp @s ^ ^ ^0.3

execute as @e[tag=pulverize_horizontal] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s


execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^-2 ^1.2 ^0.2 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^-1.5 ^1.2 ^0.4 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^-1 ^1.2 ^0.6 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^-0.5 ^1.2 ^0.8 0.2 0.2 0.2 0.1 1

execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^ ^1.2 ^1 0.2 0.2 0.2 0.1 1

execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^0.5 ^1.2 ^0.8 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^1 ^1.2 ^0.6 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^1.5 ^1.2 ^0.4 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,spell_enfo_1_1=21..}] at @e[tag=pulverize_horizontal] run particle minecraft:sweep_attack ^2 ^1.2 ^0.2 0.2 0.2 0.2 0.1 1


execute at @a[scores={char=68,spell_enfo_1_1=30..}] run kill @e[tag=pulverize_horizontal]


execute if entity @e[scores={char=68},team=purple] at @e[tag=pulverize_horizontal] run scoreboard players set @a[distance=..1.5,scores={pulverized_knocked=0},team=yellow] pulverized_knocked 21
execute if entity @e[scores={char=68},team=yellow] at @e[tag=pulverize_horizontal] run scoreboard players set @a[distance=..1.5,scores={pulverized_knocked=0},team=purple] pulverized_knocked 21



effect give @a[scores={pulverized_knocked=20}] minecraft:slowness 1 100 true
effect give @a[scores={pulverized_knocked=20}] minecraft:weakness 1 100 true
scoreboard players set @a[scores={pulverized_knocked=20}] CC_stun 10

scoreboard players set @a[scores={pulverized_knocked=20}] CC_intangible 20
#execute at @a[scores={pulverized_knocked=20}] run particle minecraft:block{block_state: 'minecraft:sand'} ~ ~ ~ 0.2 2.5 0.2 1 150
execute at @a[scores={pulverized_knocked=20}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @a[scores={pulverized_knocked=20}] run summon minecraft:marker ~ ~ ~ {Tags:["enforcer_push"]}
execute as @e[tag=enforcer_push] at @s run tp @p[distance=..1,scores={pulverized_knocked=19},limit=1]
execute at @a[scores={pulverized_knocked=19}] as @e[distance=..1,tag=enforcer_push,limit=1] at @s run tp @s ~ ~0.5 ~
execute at @a[scores={pulverized_knocked=19}] as @e[tag=enforcer_push] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=68}]

execute as @a[scores={pulverized_knocked=19}] at @s run damage @s 6 generic by @p[scores={char=68}] from @p[scores={char=68}]

execute as @a[scores={pulverized_knocked=10..19}] at @s run tp @e[tag=enforcer_push,sort=nearest,limit=1]


execute as @e[tag=enforcer_push] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=enforcer_push] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=enforcer_push] at @s unless block ^ ^1 ^-0.5 #minecraft:dash run kill @s
execute as @e[tag=enforcer_push] at @s unless block ^ ^1.5 ^-1.5 #minecraft:dash run kill @s
execute as @e[tag=enforcer_push] at @s unless block ^ ^1 ^-1 #minecraft:dash run kill @s
execute as @e[tag=enforcer_push] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s

execute as @e[tag=enforcer_push] at @s run tp @s ^ ^ ^-0.6

#execute at @e[tag=enforcer_push] run playsound minecraft:block.sand.break master @a[distance=..8] ~ ~ ~ 1 0.2 1

execute at @a[scores={pulverized_knocked=10}] run kill @e[distance=..1,tag=enforcer_push]
scoreboard players remove @a[scores={pulverized_knocked=1..}] pulverized_knocked 1






# catch up

scoreboard players set @a[scores={char=68,spell_enfo_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=68,spell_enfo_2_1=1,CC_silence=1..}] spell_enfo_2_1 180

execute at @e[scores={spell_enfo_2_1=2,CC_silence=0}] run playsound minecraft:block.beacon.activate master @a[distance=..8] ~ ~ ~ 0.5 2 1
execute at @e[scores={spell_enfo_2_1=2,CC_silence=0}] run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..8] ~ ~ ~ 0.3 2 1

effect give @a[scores={spell_enfo_2_1=2,CC_silence=0}] minecraft:speed 1 3 true
effect give @a[scores={spell_enfo_2_1=2,CC_silence=0}] minecraft:absorption 1 2 true
execute as @e[scores={spell_enfo_2_1=2,CC_silence=0}] run attribute @s minecraft:knockback_resistance base set 0.08

execute at @e[scores={spell_enfo_2_1=2..25,CC_silence=0}] run particle minecraft:crit ~ ~0.3 ~ 0.5 0.1 0.5 0.1 10
execute at @e[scores={spell_enfo_2_1=2..25,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~0.3 ~ 0.5 0.1 0.5 0.1 10
execute at @e[scores={spell_enfo_2_1=2..25,CC_silence=0}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 1 0.5 0.1 10

execute as @e[scores={spell_enfo_2_1=21}] run attribute @s minecraft:knockback_resistance base set 0.0



# enforcer

scoreboard players add @a[scores={spell_enfo_1=1..}] spell_enfo_1_1 1
item replace entity @a[scores={char=68,spell_enfo_1_1=200..}] hotbar.1 with minecraft:open_eyeblossom[minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_enfo_1_1=201..}] spell_enfo_1 0
scoreboard players set @a[scores={spell_enfo_1_1=201..}] spell_enfo_1_1 0
scoreboard players set @a[scores={spell_enfo_1_1=22}] spellCD1 178

scoreboard players add @a[scores={spell_enfo_2=1..}] spell_enfo_2_1 1
item replace entity @a[scores={char=68,spell_enfo_2_1=240..}] hotbar.2 with minecraft:iron_boots[minecraft:custom_name={text:"Catch Up",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_enfo_2_1=241..}] spell_enfo_2 0
scoreboard players set @a[scores={spell_enfo_2_1=241..}] spell_enfo_2_1 0
scoreboard players set @a[scores={spell_enfo_2_1=1}] spellCD2 240

execute as @a[scores={char=68}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:0b}]}] run clear @a[scores={char=68}] minecraft:iron_axe
item replace entity @a[scores={char=68}] hotbar.0 with minecraft:iron_axe[minecraft:custom_name={bold:1b,color:"gray",text:"Greathammer"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minecraft:item_model="minecraft:mace"]

execute as @a[scores={char=68,spell_enfo_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:open_eyeblossom",Slot:1b}]}] run clear @a[scores={char=68}] minecraft:open_eyeblossom
item replace entity @a[scores={char=68,spell_enfo_1=0}] hotbar.1 with minecraft:open_eyeblossom[minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=68,spell_enfo_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:2b}]}] run clear @a[scores={char=68}] minecraft:iron_boots
item replace entity @a[scores={char=68,spell_enfo_2=0}] hotbar.2 with minecraft:iron_boots[minecraft:custom_name={text:"Catch Up",color:"dark_aqua",bold:1b}] 1