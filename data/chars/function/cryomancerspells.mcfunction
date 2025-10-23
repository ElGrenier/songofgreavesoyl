kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:light_blue_candle"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_candle"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_horse_armor"}}]

#brain freeze

scoreboard players remove @a[scores={char=61,passive_cryo_cd=1..}] passive_cryo_cd 1

#extinguisher

execute at @a[scores={char=61,spell_cryo_1_1=1,CC_silence=0}] run playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 0.6 1 1
execute at @a[scores={char=61,spell_cryo_1_1=1..29,CC_silence=0}] run playsound minecraft:block.snow.break master @a[distance=..12] ~ ~ ~ 0.2 0.8 1
execute at @a[scores={char=61,spell_cryo_1_1=1..29,CC_silence=0}] run particle minecraft:block{block_state:{Name:"minecraft:blue_candle"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 10 force
item replace entity @a[scores={char=61,spell_cryo_1_1=16,CC_silence=0}] hotbar.1 with minecraft:cyan_candle[minecraft:custom_name={text:"Cone of Cold",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute at @a[scores={char=61,spell_cryo_1_1=31..80,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cryostream"]}
execute at @a[scores={char=61,spell_cryo_1_1=31..70,CC_silence=0}] run playsound minecraft:entity.wither.shoot master @a[distance=..12] ~ ~ ~ 0.1 0.5 0.1
execute at @a[scores={char=61,spell_cryo_1_1=31..70,CC_silence=0}] run playsound minecraft:block.snow.place master @a[distance=..12] ~ ~ ~ 0.2 0.8 1

tp @e[tag=cryostream,scores={fire_life=1..2}] @a[scores={char=61},limit=1]
execute as @e[tag=cryostream] at @s run tp @s ^ ^ ^0.6


execute if entity @a[scores={char=61},team=purple] at @e[tag=cryostream] run damage @p[distance=..1.5,team=yellow] 2 generic by @p[scores={char=61}] from @p[scores={char=61}]
execute if entity @a[scores={char=61},team=yellow] at @e[tag=cryostream] run damage @p[distance=..1.5,team=purple] 2 generic by @p[scores={char=61}] from @p[scores={char=61}]

execute if entity @a[scores={char=61},team=purple] at @e[tag=cryostream] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=cryostream]
execute if entity @a[scores={char=61},team=yellow] at @e[tag=cryostream] if entity @a[distance=..1.5,team=purple] run kill @e[tag=cryostream]

execute at @e[tag=cryostream,scores={fire_life=2..}] run particle minecraft:block{block_state:{Name:"minecraft:snow"}} ~ ~1.5 ~ 0.2 0.2 0.2 0.1 1 force
execute at @e[tag=cryostream,scores={fire_life=2..}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~1.5 ~ 0.2 0.2 0.2 0.1 1 force
execute at @e[tag=cryostream,scores={fire_life=2..}] run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.0f} ~ ~1.5 ~ 0.3 0.3 0.3 0.01 1 force
execute at @e[tag=cryostream,scores={fire_life=2..}] run particle minecraft:dust{color:[0.33,1.0,1.0],scale:1.0f} ~ ~1.5 ~ 0.3 0.3 0.3 0.01 1 normal
execute as @e[tag=cryostream] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s


scoreboard players add @e[tag=cryostream] fire_life 1
kill @e[tag=cryostream,scores={fire_life=16..}]

execute at @e[tag=cryostream] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] run scoreboard players set @a[distance=..2,scores={CC_silence=0,HPercentage=..50},team=yellow] CC_silence 60
execute at @e[tag=cryostream] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] if entity @p[distance=..2,scores={CC_silence=0},team=yellow] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

execute at @e[tag=cryostream] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] run scoreboard players set @a[distance=..2,scores={CC_silence=0,HPercentage=..50},team=purple] CC_silence 60
execute at @e[tag=cryostream] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] if entity @p[distance=..2,scores={CC_silence=0},team=purple] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

execute at @e[tag=cryostream] if entity @a[scores={char=61},team=purple] run effect give @a[distance=..2,team=yellow] minecraft:slowness 2 4
execute at @e[tag=cryostream] if entity @a[scores={char=61},team=yellow] run effect give @a[distance=..2,team=purple] minecraft:slowness 2 4

execute at @e[tag=cryostream] run fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace fire

execute at @a[scores={char=61,spell_cryo_1_1=81..85,CC_silence=0}] run function battlegrounds:firerestore
execute at @a[scores={char=61,spell_cryo_1_1=81..85,CC_silence=0}] run function battlegrounds:lightrestore

#cone of cold

scoreboard players set @a[scores={char=61,spell_cryo_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=61,spell_cryo_1_1=1,CC_silence=1..}] spell_cryo_1_1 180

scoreboard players set @a[scores={char=61,spell_cryo_2_1=1..21,CC_silence=1..}] spellCD1 288
scoreboard players set @a[scores={char=61,spell_cryo_2_1=1..21,CC_silence=1..}] spell_cryo_2_1 22

scoreboard players set @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] spell_cryo_1_1 79
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run playsound minecraft:entity.wither.shoot master @a[distance=..12] ~ ~ ~ 1 0.6 0.1
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run playsound minecraft:entity.player.hurt_freeze master @a[distance=..12] ~ ~ ~ 1 0.8 0.1

execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cone_of_cold_1","cold_cone"]}
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cone_of_cold_2","cold_cone"]}
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cone_of_cold_3","cold_cone"]}
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cone_of_cold_4","cold_cone"]}
execute at @a[scores={char=61,spell_cryo_3=1,CC_silence=0}] run summon minecraft:marker ~ ~ ~ {Tags:["cone_of_cold_5","cold_cone"]}

tp @e[tag=cold_cone,scores={fire_life=1..2}] @a[scores={char=61},limit=1]
execute as @e[tag=cone_of_cold_1,scores={fire_life=2}] at @s run tp @s ~ ~ ~ ~40 ~
execute as @e[tag=cone_of_cold_2,scores={fire_life=2}] at @s run tp @s ~ ~ ~ ~20 ~
execute as @e[tag=cone_of_cold_3,scores={fire_life=2}] at @s run tp @s ~ ~ ~ ~-20 ~
execute as @e[tag=cone_of_cold_4,scores={fire_life=2}] at @s run tp @s ~ ~ ~ ~-40 ~

execute as @e[tag=cold_cone] at @s run tp @s ^ ^ ^0.8

scoreboard players set @a[scores={char=61,spell_cryo_3=1..,CC_silence=0}] spellCD1 150
scoreboard players set @a[scores={char=61,spell_cryo_3=1..,CC_silence=0}] spell_cryo_3 0

execute if entity @a[scores={char=61},team=purple] at @e[tag=cold_cone] run damage @p[distance=..1.5,team=yellow] 4 generic by @p[scores={char=61}] from @p[scores={char=61}]
execute if entity @a[scores={char=61},team=yellow] at @e[tag=cold_cone] run damage @p[distance=..1.5,team=purple] 4 generic by @p[scores={char=61}] from @p[scores={char=61}]

execute if entity @a[scores={char=61},team=purple] at @e[tag=cold_cone] run scoreboard players set @a[distance=..1.5,team=yellow] CC_root 40

execute if entity @a[scores={char=61},team=yellow] at @e[tag=cold_cone] run scoreboard players set @a[distance=..1.5,team=purple] CC_root 40

execute if entity @a[scores={char=61},team=purple] at @e[tag=cold_cone] if entity @a[distance=..1.5,team=yellow] run kill @e[tag=cold_cone]
execute if entity @a[scores={char=61},team=yellow] at @e[tag=cold_cone] if entity @a[distance=..1.5,team=purple] run kill @e[tag=cold_cone]


execute at @e[tag=cold_cone,scores={fire_life=2..}] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~1.5 ~ 0.3 0.1 0.3 0.01 10 force
execute at @e[tag=cold_cone,scores={fire_life=2..}] run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.0f} ~ ~1.5 ~ 0.3 0.1 0.3 0.01 10 force
execute as @e[tag=cold_cone] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s

execute at @e[tag=cold_cone] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] run scoreboard players set @a[distance=..1.5,scores={CC_silence=0,HPercentage=..50},team=yellow] CC_silence 60
execute at @e[tag=cold_cone] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] if entity @p[distance=..1.5,scores={CC_silence=0},team=yellow] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

execute at @e[tag=cold_cone] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] run scoreboard players set @a[distance=..1.5,scores={CC_silence=0,HPercentage=..50},team=purple] CC_silence 60
execute at @e[tag=cold_cone] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] if entity @p[distance=..1.5,scores={CC_silence=0},team=purple] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100


scoreboard players add @e[tag=cold_cone] fire_life 1
kill @e[tag=cold_cone,scores={fire_life=8..}]

#cooling fluids


scoreboard players set @a[scores={char=61,spell_cryo_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=61,spell_cryo_2_1=1,CC_silence=1..}] spell_cryo_2_1 280

scoreboard players set @a[scores={char=61,spell_cryo_2_1=1..21,CC_silence=1..}] spellCD2 288
scoreboard players set @a[scores={char=61,spell_cryo_2_1=1..21,CC_silence=1..}] spell_cryo_2_1 22

effect give @a[scores={char=61,spell_cryo_2_1=1..2,CC_silence=0}] minecraft:slowness 1 1 true
execute at @a[scores={char=61,spell_cryo_2_1=2,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,spell_cryo_2_1=5,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,spell_cryo_2_1=10,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,spell_cryo_2_1=15,CC_silence=0}] run playsound minecraft:entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,spell_cryo_2_1=21,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["cooling_can"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:light_blue_shulker_box",count:1}}}
execute at @a[scores={char=61,spell_cryo_2_1=21,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
tp @e[tag=cooling_can,limit=1] @a[scores={char=61,spell_cryo_2_1=21},limit=1]


execute at @a[scores={char=61,spell_cryo_2_1=21..34}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=61,spell_cryo_2_1=35..44}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=61,spell_cryo_2_1=35..44}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=61,spell_cryo_2_1=45..}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.3
execute at @a[scores={char=61,spell_cryo_2_1=45..}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=61,spell_cryo_2_1=60..}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.6 ~


execute at @e[tag=cooling_can] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~1 ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=cooling_can] run particle minecraft:dust{color:[0.33,1.0,1.0],scale:1.0f} ~ ~1 ~ 0.2 0.2 0.2 0.01 3 normal


execute as @e[tag=cooling_can] at @s unless block ^ ^1 ^1 #minecraft:dash run summon minecraft:marker ~ ~ ~ {Tags:["hypotermia_gas"]}
execute as @e[tag=cooling_can] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute if entity @e[tag=hypotermia_gas] run kill @e[tag=cooling_can]

execute at @e[tag=hypotermia_gas] run particle minecraft:dust{color:[0.33,1.0,1.0],scale:1.0f} ~ ~1 ~ 3 1 3 0.01 30 normal
execute at @e[tag=hypotermia_gas] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~1 ~ 3 1 3 0.01 300 normal
execute at @e[tag=hypotermia_gas] run particle minecraft:rain ~ ~1 ~ 3.5 3.5 3.5 1 500
execute at @e[tag=hypotermia_gas] run particle minecraft:cloud ~ ~1 ~ 2.5 2.5 2.5 0.1 30

execute at @e[tag=hypotermia_gas] run playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=hypotermia_gas] run playsound minecraft:entity.player.hurt_freeze master @a[distance=..16] ~ ~ ~ 1 0.1 1

execute if entity @a[scores={char=61},team=yellow] at @e[tag=hypotermia_gas] run scoreboard players set @a[distance=..4,team=purple] CC_stun 20

execute if entity @a[scores={char=61},team=purple] at @e[tag=hypotermia_gas] run scoreboard players set @a[distance=..4,team=yellow] CC_stun 20

execute if entity @a[scores={char=61},team=purple] at @e[tag=hypotermia_gas] run scoreboard players set @a[distance=..4,team=yellow] CC_hypothermia 120
execute if entity @a[scores={char=61},team=yellow] at @e[tag=hypotermia_gas] run scoreboard players set @a[distance=..4,team=purple] CC_hypothermia 120

execute if entity @a[scores={char=61},team=purple] at @e[tag=hypotermia_gas] run damage @p[distance=..4,team=yellow] 2 generic by @p[scores={char=61}] from @p[scores={char=61}]
execute if entity @a[scores={char=61},team=yellow] at @e[tag=hypotermia_gas] run damage @p[distance=..4,team=purple] 2 generic by @p[scores={char=61}] from @p[scores={char=61}]


execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] run scoreboard players set @a[distance=..4,scores={CC_silence=0,HPercentage=..50},team=yellow] CC_silence 60
execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0},team=purple] if entity @p[distance=..4,scores={CC_silence=0},team=yellow] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] run scoreboard players set @a[distance=..4,scores={CC_silence=0,HPercentage=..50},team=purple] CC_silence 60
execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0},team=yellow] if entity @p[distance=..4,scores={CC_silence=0},team=purple] run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

kill @e[tag=hypotermia_gas]

effect give @a[scores={CC_hypothermia=1..100,universal_damagetaken=1..},nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:slowness 1 5
effect give @a[scores={CC_hypothermia=1..100,universal_damagetaken=1..},nbt={active_effects:[{id:"minecraft:slowness"}]}] minecraft:nausea 5


# cryomancer

scoreboard players add @a[scores={spell_cryo_1=1..}] spell_cryo_1_1 1
item replace entity @a[scores={char=61,spell_cryo_1_1=230..}] hotbar.1 with minecraft:light_blue_candle[minecraft:custom_name={text:"Extinguisher",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1
scoreboard players set @a[scores={spell_cryo_1_1=231..}] spell_cryo_1 0
scoreboard players set @a[scores={spell_cryo_1_1=231..}] spell_cryo_1_1 0
scoreboard players set @a[scores={spell_cryo_1_1=31}] spellCD1 200

scoreboard players add @a[scores={spell_cryo_2=1..}] spell_cryo_2_1 1
item replace entity @a[scores={char=61,spell_cryo_2_1=300..}] hotbar.2 with minecraft:diamond_horse_armor[minecraft:custom_name={text:"Cooling Fluids",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1
scoreboard players set @a[scores={spell_cryo_2_1=301..}] spell_cryo_2 0
scoreboard players set @a[scores={spell_cryo_2_1=301..}] spell_cryo_2_1 0
scoreboard players set @a[scores={spell_cryo_2_1=1}] spellCD2 300

execute as @a[scores={char=61}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=61}] minecraft:netherite_sword
item replace entity @a[scores={char=61}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=61,spell_cryo_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:light_blue_candle",Slot:1b}]}] run clear @a[scores={char=61}] minecraft:light_blue_candle
item replace entity @a[scores={char=61,spell_cryo_1=0}] hotbar.1 with minecraft:light_blue_candle[minecraft:custom_name={text:"Extinguisher",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1

execute as @a[scores={char=61,spell_cryo_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_horse_armor",Slot:2b}]}] run clear @a[scores={char=61}] minecraft:diamond_horse_armor
item replace entity @a[scores={char=61,spell_cryo_2=0}] hotbar.2 with minecraft:diamond_horse_armor[minecraft:custom_name={text:"Cooling Fluids",color:"dark_aqua",bold:1b},minecraft:enchantments={"minecraft:frost_walker":1}] 1