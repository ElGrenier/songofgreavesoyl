kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bone"}}]

#chilled path

scoreboard players set @a[scores={char=21,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=21,s1_timer=1,CC_silence=1..}] s1_timer 220

execute at @a[scores={char=21,s1_timer=1,CC_silence=0}] run playsound entity.illusioner.cast_spell master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=21,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["chilledpath","entities_necrolord"]}
tp @e[tag=chilledpath,limit=1] @a[scores={char=21,s1_timer=1},limit=1]

execute store result entity @e[tag=chilledpath,limit=1] Rotation[1] float 1 run clear



execute at @e[tag=chilledpath] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 0.5 2 1
execute at @e[tag=chilledpath] run playsound block.snow.place master @a[distance=..10] ~ ~ ~ 0.5 2 1
execute at @e[tag=chilledpath] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 0.5 0.1 0.5 0.1 40 normal
execute at @e[tag=chilledpath] run particle dust{color:[0.33,0.33,1.0],scale:1} ^1 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @e[tag=chilledpath] run particle dust{color:[0.33,0.33,1.0],scale:1} ^-1 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @a[scores={char=21,s1_timer=3..}] at @e[tag=chilledpath] run particle block{block_state:{Name:"minecraft:ice"}} ^ ^ ^-2 0.5 0.2 0.5 0.1 10 normal
execute at @a[scores={char=21,s1_timer=6..}] at @e[tag=chilledpath] run particle block{block_state:{Name:"minecraft:ice"}} ^ ^ ^-4 0.5 0.2 0.5 0.1 10 normal
execute at @a[scores={char=21,s1_timer=9..}] at @e[tag=chilledpath] run particle block{block_state:{Name:"minecraft:ice"}} ^ ^ ^-6 0.5 0.2 0.5 0.1 10 normal
execute at @a[scores={char=21,s1_timer=12..}] at @e[tag=chilledpath] run particle block{block_state:{Name:"minecraft:ice"}} ^ ^ ^-8 0.5 0.2 0.5 0.1 10 normal
execute at @e[tag=chilledpath] run particle falling_dust{block_state:{Name:"minecraft:snow"}} ^ ^ ^-2 2.5 0.1 2.5 0.1 80 normal
execute as @e[tag=chilledpath] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=chilledpath] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=chilledpath] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=chilledpath] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=chilledpath] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute at @a[scores={char=21,s1_timer=15..}] run kill @e[tag=chilledpath]

execute at @e[tag=chilledpath] as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=21}] Team run effect give @s slowness 1 3
execute at @e[tag=chilledpath] as @e[distance=..1,tag=valid_spell_target] unless score @s Team = @p[scores={char=21}] Team run scoreboard players set @s CC_root 20
execute at @e[tag=chilledpath] as @e[distance=..1,tag=valid_spell_target] unless score @s Team = @p[scores={char=21}] Team run scoreboard players set @s chilledroot_visual 20
execute at @e[tag=chilledpath] as @a[distance=..1,tag=valid_spell_target] unless score @s Team = @p[scores={char=21}] Team run tag @s add tombmarked

execute as @e[tag=necrominion] run damage @s 0 generic by @p[tag=tombmarked,tag=!undeadbaited] from @p[tag=tombmarked,tag=!undeadbaited]
tag @e[tag=tombmarked] add undeadbaited

execute at @e[tag=tombmarked] run effect give @e[distance=5..,tag=necrominion] speed 1 3

execute at @e[tag=tombmarked] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.3 0.2 0.8 0.1 3 normal
execute at @e[tag=tombmarked] run particle item_snowball ~ ~ ~ 0.5 0.2 0.5 0.001 3 normal
execute at @a[scores={char=21,s1_timer=80}] run tag @a remove tombmarked
execute at @a[scores={char=21,s1_timer=80}] run tag @a remove undeadbaited

execute at @a[scores={chilledroot_visual=1..}] unless entity @e[tag=stray_grasp_a] run summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["stray_grasp_a","stray_visual","entities_necrolord"],equipment:{head:{id:"minecraft:oak_button",count:1}}}
execute at @a[scores={chilledroot_visual=1..}] unless entity @e[tag=stray_grasp_b] run summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["stray_grasp_b","stray_visual","entities_necrolord"],equipment:{head:{id:"minecraft:oak_button",count:1}}}
execute at @a[scores={chilledroot_visual=1..}] unless entity @e[tag=stray_grasp_c] run summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["stray_grasp_c","stray_visual","entities_necrolord"],equipment:{head:{id:"minecraft:oak_button",count:1}}}
execute at @a[scores={chilledroot_visual=1..}] unless entity @e[tag=stray_grasp_d] run summon skeleton ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["stray_grasp_d","stray_visual","entities_necrolord"],equipment:{head:{id:"minecraft:oak_button",count:1}}}

execute as @a[scores={chilledroot_visual=1..},limit=1] at @s run tp @e[tag=stray_grasp_a] ~ ~-0.8 ~0.6
execute as @a[scores={chilledroot_visual=1..},limit=1] at @s run tp @e[tag=stray_grasp_b] ~-0.6 ~-0.8 ~
execute as @a[scores={chilledroot_visual=1..},limit=1] at @s run tp @e[tag=stray_grasp_c] ~ ~-0.8 ~-0.6
execute as @a[scores={chilledroot_visual=1..},limit=1] at @s run tp @e[tag=stray_grasp_d] ~0.6 ~-0.8 ~

execute at @a[scores={chilledroot_visual=1..}] run particle minecraft:cloud ~ ~0.2 ~ 0.5 0.1 0.2 0.001 1
execute at @a[scores={chilledroot_visual=1..}] run particle minecraft:cloud ~ ~0.2 ~ 0.2 0.1 0.5 0.001 1

execute as @e[tag=stray_visual] at @s run tp @s ~ ~ ~ facing entity @p[scores={chilledroot_visual=1..}]
effect give @e[tag=stray_visual] water_breathing 5 0
execute at @e[tag=stray_visual] run particle dolphin ~ ~ ~ 0.5 1 0.5 1 2 normal

execute unless entity @a[scores={chilledroot_visual=1..}] run tp @e[tag=stray_visual] ~ ~-200 ~
execute unless entity @a[scores={chilledroot_visual=1..}] run kill @e[tag=stray_visual]

scoreboard players remove @a[scores={chilledroot_visual=1..}] chilledroot_visual 1

#frozen tomb

scoreboard players set @a[scores={char=21,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=21,s2_timer=1,CC_silence=1..}] s2_timer 380

execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] if entity @e[tag=tombmarked] at @e[tag=tombmarked] run summon marker ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["tomb","entities_necrolord"]}
execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] if entity @e[tag=tombmarked] run playsound entity.illusioner.cast_spell master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] if entity @e[tag=tombmarked] run playsound entity.wither.shoot master @a[distance=..10] ~ ~ ~ 0.5 0.5 1
execute at @a[scores={char=21,s2_timer=20,CC_silence=0}] if entity @e[tag=tombmarked] at @e[tag=tombmarked] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 1 0.2 1

execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] unless entity @e[tag=tombmarked] align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sanctuary","entities_necrolord"]}
execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] unless entity @e[tag=tombmarked] run playsound entity.player.hurt_freeze master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] unless entity @e[tag=tombmarked] run playsound entity.wither.shoot master @a[distance=..10] ~ ~ ~ 0.2 0.5 1
#execute at @a[scores={char=21,s2_timer=1,CC_silence=0}] unless entity @e[tag=tombmarked] run effect give @e[tag=necrominion] instant_damage 1 10 true

execute at @e[tag=sanctuary] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 1 0.1 1 0.1 20 normal
execute at @e[tag=sanctuary] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~1 ~ 0.8 0.5 0.8 0.1 10 normal

execute at @a[scores={char=21,s2_timer=20..40,CC_silence=0}] at @e[tag=tomb] run fill ~3 ~ ~3 ~-3 ~ ~-3 blue_ice replace #minecraft:dash
execute at @a[scores={char=21,s2_timer=20..40,CC_silence=0}] at @e[tag=tomb] run fill ~2 ~ ~2 ~-2 ~ ~-2 air replace blue_ice
execute at @a[scores={char=21,s2_timer=80}] at @e[tag=tomb] run fill ~4 ~4 ~4 ~-4 ~ ~-4 air replace blue_ice
execute at @a[scores={char=21,s2_timer=80}] at @e[tag=tomb] run function battlegrounds:lightrestore

execute at @a[scores={char=21,s2_timer=1..5,CC_silence=0}] at @e[tag=sanctuary] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 blue_ice replace #minecraft:dash
execute at @a[scores={char=21,s2_timer=1..5,CC_silence=0}] at @e[tag=sanctuary] run fill ~ ~ ~ ~ ~ ~ air replace blue_ice
execute at @a[scores={char=21,s2_timer=2,CC_silence=0}] at @e[tag=sanctuary] run tp @p[scores={char=21}] ~ ~ ~

execute at @e[tag=sanctuary] unless entity @e[scores={char=21},distance=..2] run fill ~4 ~4 ~4 ~-4 ~-2 ~-4 air replace blue_ice
execute as @e[tag=sanctuary] at @s unless entity @e[scores={char=21},distance=..2] run kill @s

execute at @a[scores={char=21,s2_timer=60}] at @e[tag=sanctuary] run fill ~4 ~4 ~4 ~-4 ~-2 ~-4 air replace blue_ice
execute at @a[scores={char=21,s2_timer=61}] at @e[tag=sanctuary] run function battlegrounds:lightrestore
execute at @a[scores={char=21,s2_timer=81}] run kill @e[tag=tomb]
execute at @a[scores={char=21,s2_timer=61}] run kill @e[tag=sanctuary]

execute at @e[tag=sanctuary] run scoreboard players set @a[distance=..1,scores={char=21}] CC_intangible 5
execute at @e[tag=sanctuary] run effect give @a[distance=..1,scores={char=21}] resistance 1 100
scoreboard players set @a[scores={char=21,s2_timer=80}] CC_intangible 0
effect clear @a[scores={char=21,s2_timer=80}] resistance

execute at @e[tag=tomb] run particle dolphin ~ ~ ~ 4 0.5 4 0.001 100 normal
execute at @e[tag=tomb] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 3 0.1 3 0.1 50 normal


execute at @a[scores={char=21,s2_timer=1..20}] if entity @e[tag=tombmarked] at @e[tag=tomb] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~3 2 0.5 0.3 0.1 50
execute at @a[scores={char=21,s2_timer=1..20}] if entity @e[tag=tombmarked] at @e[tag=tomb] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~-3 2 0.5 0.3 0.1 50
execute at @a[scores={char=21,s2_timer=1..20}] if entity @e[tag=tombmarked] at @e[tag=tomb] run particle dust{color:[0.33,1.0,1.0],scale:1} ~3 ~ ~ 0.3 0.5 2 0.1 50
execute at @a[scores={char=21,s2_timer=1..20}] if entity @e[tag=tombmarked] at @e[tag=tomb] run particle dust{color:[0.33,1.0,1.0],scale:1} ~-3 ~ ~ 0.3 0.5 2 0.1 50


execute at @a[scores={char=21},team=yellow] at @e[tag=tomb] run scoreboard players set @a[distance=..4,team=purple] CC_grounded 20
execute at @a[scores={char=21},team=purple] at @e[tag=tomb] run scoreboard players set @a[distance=..4,team=yellow] CC_grounded 20

#children of the grave

scoreboard players set @a[scores={char=21,s3_timer=1,CC_silence=1..}] spellCD3 20
scoreboard players set @a[scores={char=21,s3_timer=1,CC_silence=1..}] s3_timer 280

execute at @a[scores={char=21,s3_timer=1,CC_silence=0}] run playsound minecraft:entity.wither.spawn master @a[distance=..15] ~ ~ ~ 0.5 0.6 1
execute at @a[scores={char=21,s3_timer=1,CC_silence=0}] run playsound minecraft:block.bell.use master @a[distance=..15] ~ ~ ~ 0.2 0.8 1
execute at @a[scores={char=21,s3_timer=1,CC_silence=0}] run scoreboard players set @e[distance=10..,tag=necrominion] undead_animaton 1

#death conquered


scoreboard players set @a[advancements={chars:necrolord_curse_apply=true}] curse 120
advancement revoke @a[advancements={chars:necrolord_curse_apply=true}] only chars:necrolord_curse_apply

execute at @a[scores={universal_death=1,curse=1..}] at @a[scores={char=21}] run summon zombie ~ ~-2 ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:30f,Tags:["necrominion","valid_spell_target","entities_necrolord"],equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:attribute_modifiers":[{type:"minecraft:armor",operation:"add_value",amount:0.0d,id:"minecraft:6b02ea26-b332-43ec-98c1-dbf0f983abe1"}],"minecraft:dyed_color":12111359,"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:rib"}},count:1},legs:{id:"minecraft:leather_leggings",components:{"minecraft:attribute_modifiers":[{type:"minecraft:armor",operation:"add_value",amount:0.0d,id:"minecraft:c289c816-bdef-41ef-8c03-548f4bae6ca0"}],"minecraft:dyed_color":9549542,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}},count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:attribute_modifiers":[{id:"minecraft:5dce5dfc-f1a8-46a1-bb18-dd4dc6048764",type:"armor",amount:0.0d,operation:"add_value"}],"minecraft:dyed_color":4879334,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:silence"}}},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1902331095,-137279324,-1184236136,-732253997],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWY0MDIyZmI3NGU4MjVhZGE2MGVmNWUxNzQxNTg0ZWRlMGU1MjMxNzVkMTY3NjZjOTE4ZGVhMjU4YzAwZmY0MSJ9fX0="}]}},count:1}},attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:knockback_resistance",base:0.5},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.25}]}
scoreboard players operation @e[tag=necrominion] Team = @p[scores={char=21}] Team
# zombie teams
execute at @a[scores={char=21},team=purple] run team join purple @e[tag=necrominion]
execute at @a[scores={char=21},team=yellow] run team join yellow @e[tag=necrominion]
###
execute at @a[scores={universal_death=1,curse=1..}] run scoreboard players add @e[tag=necrominion] SummonAge 1
execute at @a[scores={universal_death=1,curse=1..}] run scoreboard players set @e[tag=necrominion,scores={SummonAge=1}] undead_animaton 1
scoreboard players set @a[scores={universal_death=1..}] curse 0

scoreboard players add @e[tag=necrominion,scores={undead_animaton=..20}] undead_animaton 1
execute as @e[tag=necrominion,scores={undead_animaton=1..2}] at @p[scores={char=21}] run tp @s ~ ~-2 ~
execute as @e[tag=necrominion,scores={undead_animaton=..20}] at @s run tp @s ~ ~0.15 ~ facing entity @p[scores={char=21}]
execute as @e[tag=necrominion,scores={undead_animaton=1..2}] run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute at @e[tag=necrominion,scores={undead_animaton=1..15}] run particle cloud ~ ~ ~ 0.5 1 0.5 0.01 3
execute at @e[tag=necrominion,scores={undead_animaton=1..15}] run particle falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.8 1 0.8 1 10
execute at @e[tag=necrominion,scores={undead_animaton=5}] run playsound block.grass.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=necrominion,scores={undead_animaton=10}] run playsound block.snow.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=necrominion,scores={undead_animaton=15}] run playsound block.grass.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=necrominion,scores={undead_animaton=20}] run playsound block.snow.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute as @e[tag=necrominion,scores={undead_animaton=20}] run data merge entity @s {NoAI:0b,Invulnerable:0b}

scoreboard players set @e[tag=necrominion,scores={SummonAge=6..,undead_animaton=..99}] undead_animaton 100
scoreboard players add @e[tag=necrominion,scores={undead_animaton=100..}] undead_animaton 1
execute as @e[tag=necrominion,scores={undead_animaton=100..120}] at @s run tp @s ~ ~-0.2 ~

scoreboard players set @e[tag=necrominion,scores={SummonAge=6..,undead_animaton=120}] undead_animaton 150
scoreboard players set @e[tag=necrominion,scores={SummonAge=..5,undead_animaton=120}] undead_animaton 1

execute at @e[tag=necrominion,scores={undead_animaton=100..}] run particle cloud ~ ~ ~ 0.5 1 0.5 0.01 3
execute at @e[tag=necrominion,scores={undead_animaton=100..}] run particle falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.8 1 0.8 1 10
execute as @e[tag=necrominion,scores={undead_animaton=100..102}] run data merge entity @s {NoAI:1b,Invulnerable:1b}

execute as @e[tag=necrominion,scores={undead_animaton=150..160}] at @s run tp @s ~ ~-0.5 ~
kill @e[tag=necrominion,scores={undead_animaton=150..}]

effect give @e[tag=necrominion] water_breathing 5 0
execute at @e[tag=necrominion] run particle dolphin ~ ~0.5 ~ 0.5 0.8 0.5 1 5 normal
execute at @e[tag=necrominion] as @a[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=21}] Team run scoreboard players set @s curse 120


execute at @a[scores={zombiekills=1..}] as @a[scores={char=21}] run function chars:add_kill
scoreboard players remove @a[scores={zombiekills=1..}] zombiekills 1



scoreboard players remove @a[scores={curse=1..}] curse 1
execute at @a[scores={curse=1..}] run particle dolphin ~ ~ ~ 0.5 0.2 0.5 1 30 normal

execute at @a[scores={curse=1..}] positioned ~ ~2.5 ~ unless entity @e[distance=..1,tag=display_curse] run summon armor_stand ~ ~ ~ {Tags:["display_curse","entities_necrolord"],Marker:1b,Invisible:1b,CustomName:{text:"CURSE OF UNDYING",color:"blue",bold:1b},CustomNameVisible:1b}
execute at @a[scores={curse=1..}] positioned ~ ~2.5 ~ run tp @e[distance=..1,tag=display_curse] ~ ~ ~
execute as @e[tag=display_curse] at @s positioned ~ ~-2.5 ~ unless entity @a[distance=..1,scores={curse=1..}] run kill @s



# necrolord

scoreboard players set @a[scores={s1_timer=1,char=21}] spellCD1 240
scoreboard players add @a[scores={s1_timer=1..,char=21}] s1_timer 1
scoreboard players set @a[scores={s1_timer=241..,char=21}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=21}] spellCD2 400
scoreboard players add @a[scores={s2_timer=1..,char=21}] s2_timer 1
scoreboard players set @a[scores={s2_timer=401..,char=21}] s2_timer 0

scoreboard players set @a[scores={s3_timer=1,char=21}] spellCD3 300
scoreboard players add @a[scores={s3_timer=1..,char=21}] s3_timer 1
scoreboard players set @a[scores={s3_timer=301..,char=21}] s3_timer 0

execute as @a[scores={char=21}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bone",Slot:0b}]}] run clear @a[scores={char=21}] bone
item replace entity @a[scores={char=21}] hotbar.0 with bone[minecraft:custom_name={bold:1b,color:"gray",text:"Bone"},custom_data={necrolord:1},minecraft:enchantments={"minecraft:frost_walker":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_speed",amount:-0.7d,operation:"add_multiplied_base",slot:"mainhand"},{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=21,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=21}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=21,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:ghast_tear",minecraft:custom_name={text:"Chilled Path",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=21,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=21}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=21,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:blue_ice",minecraft:custom_name={text:"Frozen Tomb",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=21,s3_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=21}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=21,s3_timer=0,CC_silence=0}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:prismarine_wall",minecraft:custom_name={text:"Children of the Grave",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1