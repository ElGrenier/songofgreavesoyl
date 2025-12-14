kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe"}}]


scoreboard players set @e[tag=!enforcer_hammer_initiated] pulverized 0
scoreboard players set @e[tag=!enforcer_hammer_initiated] pulverized_knocked 0
tag @e add enforcer_hammer_initiated


# pummeling strike


execute at @a[scores={char=68,passive_enfo=0}] run tag @a[advancements={chars:mof_smash=true}] add get_pummeled
advancement revoke @a[advancements={chars:mof_smash=true}] only chars:mof_smash

execute if entity @a[tag=get_pummeled,scores={HPercentage=..50}] run scoreboard players set @a[scores={char=68}] passive_enfo 1
scoreboard players set @a[tag=get_pummeled,scores={HPercentage=..50}] CC_stun 20
execute at @a[tag=get_pummeled,scores={HPercentage=..50}] run particle crit ~ ~1.5 ~ 0.5 0.5 0.5 0.1 55
execute at @a[tag=get_pummeled,scores={HPercentage=..50}] run playsound entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 1 0.8 1

tag @a[tag=get_pummeled] remove get_pummeled

scoreboard players add @a[scores={char=68,passive_enfo=1..}] passive_enfo 1
scoreboard players set @a[scores={char=68,passive_enfo=200..}] passive_enfo 0


# pulverize
clear @a[scores={char=68,s1_timer=1,CC_silence=0}] *[custom_data={s1:1}]

scoreboard players set @a[scores={char=68,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=68,s1_timer=1,CC_silence=1..}] s1_timer 160

execute at @a[scores={char=68,s1_timer=1..20,CC_silence=0}] run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.001 5



execute at @a[scores={char=68,s1_timer=21,CC_silence=0}] run particle enchanted_hit ~ ~1 ~ 1 1 1 0.1 50
execute at @a[scores={char=68,s1_timer=21,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["pulverize_shockwave","entities_enforcer"]}
execute at @a[scores={char=68,s1_timer=21,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["pulverize_shockwave_vis","entities_enforcer"],item:{count:1,id:"minecraft:mace"},transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,3.0f],translation:[0.0f,0.0f,0.0f]}}
tp @e[tag=pulverize_shockwave,limit=1] @a[scores={char=68,s1_timer=21},limit=1]
tp @e[tag=pulverize_shockwave_vis,limit=1] @a[scores={char=68,s1_timer=21},limit=1]

execute at @a[scores={char=68,s1_timer=21,CC_silence=0}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~ ~ ~ -80
execute at @a[scores={char=68,s1_timer=21,CC_silence=0}] as @e[tag=pulverize_shockwave_vis,limit=1] at @s run tp @s ~ ~0.6 ~

execute store result entity @e[tag=pulverize_shockwave,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=pulverize_shockwave] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

#execute at @e[tag=pulverize_shockwave] run particle falling_dust{block_state: 'minecraft:sand'} ~ ~ ~ 0.2 1 0.2 0.0001 15 normal

execute at @a[scores={char=68,s1_timer=20..30}] as @e[tag=pulverize_shockwave] at @s run tp @s ^ ^ ^0.15
execute at @a[scores={char=68,s1_timer=31..}] as @e[tag=pulverize_shockwave] at @s run tp @s ^ ^ ^0.6

execute at @a[scores={char=68,s1_timer=21}] run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=68,s1_timer=21}] run playsound entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 0.1 0.4 1

execute at @a[scores={char=68,s1_timer=21}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ^ ^ ^1.5
execute at @a[scores={char=68,s1_timer=21..30}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~-0.14 ~
execute at @a[scores={char=68,s1_timer=21..30}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~ ~ ~ ~5
execute at @a[scores={char=68,s1_timer=21..30}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~ ~ ~ ~5
execute at @a[scores={char=68,s1_timer=21..30}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~ ~ ~ ~5
execute at @a[scores={char=68,s1_timer=21..30}] as @e[tag=pulverize_shockwave_vis] at @s run tp @s ~ ~ ~ ~ ~5
execute at @a[scores={char=68,s1_timer=21..22}] at @e[tag=pulverize_shockwave] run particle crit ~ ~1.5 ~ 0.2 1.5 0.2 0.1 20
execute at @a[scores={char=68,s1_timer=23..24}] at @e[tag=pulverize_shockwave] run particle crit ~ ~1.2 ~ 0.2 1.5 0.2 0.1 30
execute at @a[scores={char=68,s1_timer=25..26}] at @e[tag=pulverize_shockwave] run particle crit ~ ~1 ~ 0.2 1.5 0.2 0.1 50
execute at @a[scores={char=68,s1_timer=27..28}] at @e[tag=pulverize_shockwave] run particle crit ~ ~0.8 ~ 0.2 1.5 0.2 0.1 50
execute at @a[scores={char=68,s1_timer=29..30}] at @e[tag=pulverize_shockwave] run particle crit ~ ~0.6 ~ 0.2 1.5 0.2 0.1 100
execute at @a[scores={char=68,s1_timer=29..30}] at @e[tag=pulverize_shockwave] run particle cloud ~ ~0.6 ~ 0.2 1.5 0.2 0.001 10

execute at @a[scores={char=68,s1_timer=30..}] at @e[tag=pulverize_shockwave] run particle crit ~ ~0.2 ~ 2 0.2 2 0.1 100
execute at @a[scores={char=68,s1_timer=30..}] at @e[tag=pulverize_shockwave] run particle cloud ~ ~0.2 ~ 2 0.2 2 0.1 5

execute at @a[scores={char=68,s1_timer=40..}] run kill @e[tag=pulverize_shockwave]
execute at @a[scores={char=68,s1_timer=40..}] run kill @e[tag=pulverize_shockwave_vis]


execute at @e[tag=pulverize_shockwave] as @a[distance=..2.5,scores={pulverized=0}] unless score @s Team = @p[scores={char=68}] Team run scoreboard players set @s pulverized 1

#execute at @a[scores={pulverized=3}] run particle crit ~ ~1.5 ~ 0.2 0.2 0.2 0.5 10
execute at @a[scores={pulverized=3}] run playsound entity.player.attack.knockback master @a[distance=..6] ~ ~ ~ 0.4 0.8 1
execute as @a[scores={pulverized=2}] at @s run damage @s 4 generic by @p[scores={char=68}] from @p[scores={char=68}]
scoreboard players set @a[scores={pulverized=2}] CC_knockup 20
scoreboard players add @a[scores={pulverized=1..}] pulverized 1
scoreboard players set @a[scores={pulverized=20..}] pulverized 0

# pulverize 2 - knockback


scoreboard players set @a[scores={char=68,s1_timer_recast=1,CC_silence=0}] s1_timer 23
scoreboard players set @a[scores={char=68,s1_timer_recast=1,CC_silence=0}] spellCD1 177
execute at @a[scores={char=68,s1_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 0.5 0.8 1
execute at @a[scores={char=68,s1_timer_recast=1,CC_silence=0}] run playsound entity.player.attack.knockback master @a[distance=..10] ~ ~ ~ 1 0.3 1

execute at @a[scores={char=68,s1_timer_recast=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["pulverize_horizontal","entities_enforcer"]}
tp @e[tag=pulverize_horizontal,limit=1] @a[scores={char=68,s1_timer_recast=1..},limit=1]


scoreboard players set @a[scores={char=68,s1_timer_recast=1..,CC_silence=0}] s1_timer_recast 0


execute store result entity @e[tag=pulverize_horizontal,limit=1] Rotation[1] float 1 run clear

execute at @a[scores={char=68,s1_timer=20..22}] as @e[tag=pulverize_horizontal] at @s run tp @s ^ ^ ^0.1
execute at @a[scores={char=68,s1_timer=25..}] as @e[tag=pulverize_horizontal] at @s run tp @s ^ ^ ^0.3

execute as @e[tag=pulverize_horizontal] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s


execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^-2 ^1.2 ^0.2 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^-1.5 ^1.2 ^0.4 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^-1 ^1.2 ^0.6 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^-0.5 ^1.2 ^0.8 0.2 0.2 0.2 0.1 1

execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^ ^1.2 ^1 0.2 0.2 0.2 0.1 1

execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^0.5 ^1.2 ^0.8 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^1 ^1.2 ^0.6 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^1.5 ^1.2 ^0.4 0.2 0.2 0.2 0.1 1
execute at @a[scores={char=68,s1_timer=21..}] at @e[tag=pulverize_horizontal] run particle sweep_attack ^2 ^1.2 ^0.2 0.2 0.2 0.2 0.1 1


execute at @a[scores={char=68,s1_timer=30..}] run kill @e[tag=pulverize_horizontal]

execute at @e[tag=pulverize_horizontal] as @a[distance=..1.5,scores={pulverized_knocked=0}] unless score @s Team = @p[scores={char=68}] Team run scoreboard players set @s pulverized_knocked 21



effect give @a[scores={pulverized_knocked=20}] slowness 1 100 true
effect give @a[scores={pulverized_knocked=20}] weakness 1 100 true
scoreboard players set @a[scores={pulverized_knocked=20}] CC_stun 10

scoreboard players set @a[scores={pulverized_knocked=20}] CC_intangible 20
#execute at @a[scores={pulverized_knocked=20}] run particle block{block_state: 'minecraft:sand'} ~ ~ ~ 0.2 2.5 0.2 1 150
execute at @a[scores={pulverized_knocked=20}] run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @a[scores={pulverized_knocked=20}] run summon marker ~ ~ ~ {Tags:["enforcer_push","entities_enforcer"]}
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

#execute at @e[tag=enforcer_push] run playsound block.sand.break master @a[distance=..8] ~ ~ ~ 1 0.2 1

execute at @a[scores={pulverized_knocked=10}] run kill @e[distance=..1,tag=enforcer_push]
scoreboard players remove @a[scores={pulverized_knocked=1..}] pulverized_knocked 1






# catch up

scoreboard players set @a[scores={char=68,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=68,s2_timer=1,CC_silence=1..}] s2_timer 180

execute at @e[scores={s2_timer=2,CC_silence=0}] run playsound block.beacon.activate master @a[distance=..8] ~ ~ ~ 0.5 2 1
execute at @e[scores={s2_timer=2,CC_silence=0}] run playsound entity.illusioner.prepare_mirror master @a[distance=..8] ~ ~ ~ 0.3 2 1

effect give @a[scores={s2_timer=2,CC_silence=0}] speed 1 3 true
effect give @a[scores={s2_timer=2,CC_silence=0}] absorption 1 2 true
execute as @e[scores={s2_timer=2,CC_silence=0}] run attribute @s knockback_resistance base set 0.08

execute at @e[scores={s2_timer=2..25,CC_silence=0}] run particle crit ~ ~0.3 ~ 0.5 0.1 0.5 0.1 10
execute at @e[scores={s2_timer=2..25,CC_silence=0}] run particle enchanted_hit ~ ~0.3 ~ 0.5 0.1 0.5 0.1 10
execute at @e[scores={s2_timer=2..25,CC_silence=0}] run particle enchanted_hit ~ ~1 ~ 0.5 1 0.5 0.1 10

execute as @e[scores={s2_timer=21}] run attribute @s knockback_resistance base set 0.0



# enforcer

scoreboard players set @a[scores={char=68}] MaxHP 26

scoreboard players set @a[scores={s1_timer=22,char=68}] spellCD1 178
scoreboard players add @a[scores={s1_timer=1..,char=68}] s1_timer 1
scoreboard players set @a[scores={s1_timer=201..,char=68}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=68}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=68}] s2_timer 1
scoreboard players set @a[scores={s2_timer=241..,char=68}] s2_timer 0

execute as @a[scores={char=68}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",Slot:0b}]}] run clear @a[scores={char=68}] iron_axe
item replace entity @a[scores={char=68}] hotbar.0 with minecraft:iron_axe[custom_data={enforcer:1},minecraft:custom_name={bold:1b,color:"gray",text:"Greathammer"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}],minecraft:item_model="minecraft:mace"]

execute as @a[scores={char=68,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=68}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=68,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:open_eyeblossom",minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=68,s1_timer=10..20,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=68}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=68,s1_timer=10..20,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:closed_eyeblossom",minecraft:custom_name={text:"Pulverize",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=68,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=68}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=68,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:iron_boots",minecraft:custom_name={text:"Catch Up",color:"dark_aqua",bold:1b}] 1

