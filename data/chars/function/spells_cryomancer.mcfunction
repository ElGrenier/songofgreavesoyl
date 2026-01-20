kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword"}}]

#brain freeze

scoreboard players remove @a[scores={char=61,passive_cryo_cd=1..}] passive_cryo_cd 1

#extinguisher
clear @a[scores={char=61,s1_timer=1,CC_silence=0}] *[custom_data={s1:1}]

execute at @a[scores={char=61,s1_timer=1,CC_silence=0}] run playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 0.6 1 1
execute at @a[scores={char=61,s1_timer=1..29,CC_silence=0}] run playsound block.snow.break master @a[distance=..12] ~ ~ ~ 0.2 0.8 1
execute at @a[scores={char=61,s1_timer=1..29,CC_silence=0}] run particle block{block_state:{Name:"minecraft:blue_candle"}} ~ ~1 ~ 0.5 0.8 0.5 0.1 10 force

scoreboard players set @a[scores={char=61,s1_timer=1..30,CC_silence=1..}] spellCD1 150
scoreboard players set @a[scores={char=61,s1_timer=1..30,CC_silence=1..}] s1_timer 81

clear @a[scores={char=61,s1_timer=31..80}] *[custom_data={s1:1}]
clear @a[scores={char=61,s1_timer=31..80}] *[custom_data={s1:2}]
execute at @a[scores={char=61,s1_timer=31..80,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["cryostream","entities_cryomancer","projectile"]}
execute at @a[scores={char=61,s1_timer=31..70,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..12] ~ ~ ~ 0.1 0.5 0.1
execute at @a[scores={char=61,s1_timer=31..70,CC_silence=0}] run playsound block.snow.place master @a[distance=..12] ~ ~ ~ 0.2 0.8 1
scoreboard players operation @e[tag=projectile,tag=cryostream] Team = @p[scores={char=2}] Team
tp @e[tag=cryostream,scores={fire_life=1..2}] @a[scores={char=61},limit=1]
execute as @e[tag=cryostream,scores={fire_life=2}] at @s run tp @s ~ ~1.4 ~ 

execute as @e[tag=cryostream] at @s run tp @s ^ ^ ^0.6

execute at @e[tag=cryostream] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run damage @s 2 generic by @p[scores={char=61}] from @p[scores={char=61}]
execute at @e[tag=cryostream] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run effect give @s slowness 2 4
execute at @e[tag=cryostream] positioned ~-0.5 ~-0.5 ~-0.5 as @a[scores={CC_silence=0,HPercentage=..50,passive_cryo_cd=0},dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_silence 60
execute at @e[tag=cryostream] positioned ~-0.5 ~-0.5 ~-0.5 as @a[scores={CC_silence=0,HPercentage=..50,passive_cryo_cd=0},dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100
execute at @e[tag=cryostream] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run kill @n[tag=cryostream]


execute at @e[tag=cryostream,scores={fire_life=2..}] run particle entity_effect{color:[0.33,1.0,1.0,1.0]} ~ ~ ~ 0.2 0.2 0.2 0.1 1 force
#execute at @e[tag=cryostream,scores={fire_life=2..}] run particle falling_dust{block_state:{Name:"minecraft:snow"}} ~ ~ ~ 0.2 0.2 0.2 0.1 1 force
execute at @e[tag=cryostream,scores={fire_life=2..}] run particle dust{color:[1.0,1.0,1.0],scale:1.0f} ~ ~ ~ 0.3 0.3 0.3 0.01 1 force
execute at @e[tag=cryostream,scores={fire_life=2..}] run particle dust{color:[0.33,0.33,1.0],scale:1.0f} ~ ~ ~ 0.3 0.3 0.3 0.01 1 normal
execute as @e[tag=cryostream] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s


scoreboard players add @e[tag=cryostream] fire_life 1
kill @e[tag=cryostream,scores={fire_life=16..}]

execute at @e[tag=cryostream] run fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace fire

execute at @a[scores={char=61,s1_timer=81..85,CC_silence=0}] run function battlegrounds:firerestore
execute at @a[scores={char=61,s1_timer=81..85,CC_silence=0}] run function battlegrounds:lightrestore

#cone of cold

scoreboard players set @a[scores={char=61,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=61,s1_timer=1,CC_silence=1..}] s1_timer 180

scoreboard players set @a[scores={char=61,s2_timer=1..21,CC_silence=1..}] spellCD1 288
scoreboard players set @a[scores={char=61,s2_timer=1..21,CC_silence=1..}] s2_timer 22

scoreboard players set @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] s1_timer 80
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..12] ~ ~ ~ 0.7 0.6 0.1
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run playsound entity.player.hurt_freeze master @a[distance=..12] ~ ~ ~ 1 0.8 0.1

execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_1","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_2","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_3","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_4","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_5","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_6","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_7","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_8","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}
execute at @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] run summon block_display ~ ~ ~ {Tags:["cone_of_cold_9","cold_cone","entities_cryomancer","projectile"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:ice"}}


tp @e[tag=cold_cone,scores={fire_life=1..2}] @a[scores={char=61},limit=1]
execute as @e[tag=cone_of_cold_1,scores={fire_life=2}] at @s run rotate @s ~40 ~
execute as @e[tag=cone_of_cold_2,scores={fire_life=2}] at @s run rotate @s ~30 ~
execute as @e[tag=cone_of_cold_3,scores={fire_life=2}] at @s run rotate @s ~20 ~
execute as @e[tag=cone_of_cold_4,scores={fire_life=2}] at @s run rotate @s ~10 ~
execute as @e[tag=cone_of_cold_6,scores={fire_life=2}] at @s run rotate @s ~-10 ~
execute as @e[tag=cone_of_cold_7,scores={fire_life=2}] at @s run rotate @s ~-20 ~
execute as @e[tag=cone_of_cold_8,scores={fire_life=2}] at @s run rotate @s ~-30 ~
execute as @e[tag=cone_of_cold_9,scores={fire_life=2}] at @s run rotate @s ~-40 ~
execute as @e[tag=cold_cone,scores={fire_life=2}] at @s run tp @s ~ ~1.2 ~ 

execute as @e[tag=cold_cone] at @s run tp @s ^ ^ ^0.8

scoreboard players set @a[scores={char=61,s1_timer_recast=1,CC_silence=0}] spellCD1 150

execute at @e[tag=cold_cone] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run damage @s 5 freeze by @p[scores={char=61}] from @p[scores={char=61}]
execute at @e[tag=cold_cone] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_root 40
execute at @e[tag=cold_cone] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_silence=0,HPercentage=..50}] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_silence 60
execute at @e[tag=cold_cone] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,scores={CC_silence=0,HPercentage=..50}] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100
execute at @e[tag=cold_cone] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run kill @n[tag=cold_cone]

execute at @e[tag=cold_cone,scores={fire_life=2..}] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 0.2 0.1 0.2 0.01 5 force
execute at @e[tag=cold_cone,scores={fire_life=2..}] run particle dust{color:[1.0,1.0,1.0],scale:1.0f} ~ ~ ~ 0.2 0.1 0.2 0.01 3 force
execute as @e[tag=cold_cone] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s

scoreboard players add @e[tag=cold_cone] fire_life 1
kill @e[tag=cold_cone,scores={fire_life=10..}]

#cooling fluids


scoreboard players set @a[scores={char=61,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=61,s2_timer=1,CC_silence=1..}] s2_timer 280

scoreboard players set @a[scores={char=61,s2_timer=1..21,CC_silence=1..}] spellCD2 288
scoreboard players set @a[scores={char=61,s2_timer=1..21,CC_silence=1..}] s2_timer 22

effect give @a[scores={char=61,s2_timer=1..2,CC_silence=0}] slowness 1 1 true
execute at @a[scores={char=61,s2_timer=2,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,s2_timer=5,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,s2_timer=10,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5
execute at @a[scores={char=61,s2_timer=15,CC_silence=0}] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.2 0.5 0.5

execute at @a[scores={char=61,s2_timer=21,CC_silence=0}] run summon item_display ~ ~ ~ {Tags:["cooling_can","entities_cryomancer","projectile"],teleport_duration:1,item:{components: {"minecraft:potion_contents":{potion:"minecraft:water"}},count:1,id:"minecraft:lingering_potion"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,3.0f],translation:[0.0f,0.0f,0.0f]}}
execute at @a[scores={char=61,s2_timer=21,CC_silence=0}] run playsound entity.snowball.throw master @a[distance=..10] ~ ~ ~ 1 1.3 1
scoreboard players operation @e[tag=projectile,tag=cooling_can] Team = @p[scores={char=61}] Team
tp @e[tag=cooling_can,limit=1] @a[scores={char=61,s2_timer=21},limit=1]
execute at @a[scores={char=61,s2_timer=21,CC_silence=0}] as @e[tag=cooling_can,limit=1] at @s run tp @s ~ ~1.3 ~ 

execute at @a[scores={char=61,s2_timer=21..34}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=61,s2_timer=35..44}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.6
execute at @a[scores={char=61,s2_timer=35..44}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=61,s2_timer=45..}] as @e[tag=cooling_can] at @s run tp @s ^ ^ ^0.3
execute at @a[scores={char=61,s2_timer=45..}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=61,s2_timer=60..}] as @e[tag=cooling_can] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=cooling_can] run particle entity_effect{color:[0.33,1.0,1.0,1.0]} ~ ~ ~ 0.3 0.3 0.3 0.1 1 normal
execute at @e[tag=cooling_can] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~ ~ 0.2 0.2 0.2 0.01 1 normal
execute at @e[tag=cooling_can] run particle dust{color:[0.33,1.0,1.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 0.01 2 normal
execute at @e[tag=cooling_can] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal

execute as @e[tag=cooling_can] at @s unless block ^ ^ ^1 #minecraft:dash unless entity @e[tag=hypotermia_gas] run summon marker ~ ~ ~ {Tags:["hypotermia_gas","entities_cryomancer"]}
execute as @e[tag=cooling_can] at @s unless block ^ ^ ^0.5 #minecraft:dash unless entity @e[tag=hypotermia_gas] run summon marker ~ ~ ~ {Tags:["hypotermia_gas","entities_cryomancer"]}
execute as @e[tag=cooling_can] at @s unless block ^ ^ ^ #minecraft:dash unless entity @e[tag=hypotermia_gas] run summon marker ~ ~ ~ {Tags:["hypotermia_gas","entities_cryomancer"]}

execute if entity @e[tag=hypotermia_gas] run kill @e[tag=cooling_can]

execute at @e[tag=hypotermia_gas] run particle entity_effect{color:[0.33,1.0,1.0,1.0]} ~ ~1 ~ 2 2 2 0.01 100 normal
execute at @e[tag=hypotermia_gas] run particle entity_effect{color:[0.33,0.33,1.0,1.0]} ~ ~1 ~ 2 2 2 0.01 300 normal
execute at @e[tag=hypotermia_gas] run particle block{block_state:{Name:"minecraft:ice"}} ~ ~1 ~ 2 2 2 0.01 300 normal
execute at @e[tag=hypotermia_gas] run particle rain ~ ~1 ~ 3.5 3.5 3.5 1 500
execute at @e[tag=hypotermia_gas] run particle cloud ~ ~1 ~ 2.5 2.5 2.5 0.1 30

execute at @e[tag=hypotermia_gas] run playsound block.lava.extinguish master @a[distance=..16] ~ ~ ~ 0.5 1.2 1
execute at @e[tag=hypotermia_gas] run playsound block.glass.break master @a[distance=..16] ~ ~ ~ 1.0 0.1 1
execute at @e[tag=hypotermia_gas] run playsound entity.player.hurt_freeze master @a[distance=..16] ~ ~ ~ 1 0.1 1

execute at @e[tag=hypotermia_gas] as @a[distance=..4] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_stun 20
execute at @e[tag=hypotermia_gas] as @a[distance=..4] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_hypothermia 120
execute at @e[tag=hypotermia_gas] as @a[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=61}] Team run damage @s 2 freeze by @p[scores={char=61}] from @p[scores={char=61}]

execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0}] as @a[distance=..4,scores={CC_silence=0,HPercentage=..50}] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @s CC_silence 60
execute at @e[tag=hypotermia_gas] if entity @a[scores={char=61,passive_cryo_cd=0}] as @a[distance=..4,scores={CC_silence=0,HPercentage=..50}] unless score @s Team = @p[scores={char=61}] Team run scoreboard players set @a[scores={char=61}] passive_cryo_cd 100

kill @e[tag=hypotermia_gas]

effect give @a[scores={CC_hypothermia=1..100,universal_damagetaken=1..},nbt={active_effects:[{id:"minecraft:slowness"}]}] slowness 1 5
effect give @a[scores={CC_hypothermia=1..100,universal_damagetaken=1..},nbt={active_effects:[{id:"minecraft:slowness"}]}] nausea 5


# cryomancer

scoreboard players set @a[scores={char=61}] MaxHP 16

scoreboard players set @a[scores={s1_timer=80,char=61}] spellCD1 150
scoreboard players add @a[scores={s1_timer=1..,char=61}] s1_timer 1
scoreboard players set @a[scores={s1_timer=231..,char=61}] s1_timer 0

scoreboard players add @a[scores={char=61,s1_timer_recast=1..,char=61}] s1_timer_recast 1
scoreboard players set @a[scores={char=61,s1_timer_recast=10..,char=61}] s1_timer_recast 0

scoreboard players set @a[scores={s2_timer=1,char=61}] spellCD2 300
scoreboard players add @a[scores={s2_timer=1..,char=61}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=61}] s2_timer 0

execute as @a[scores={char=61}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword",Slot:0b}]}] run clear @a[scores={char=61}] netherite_sword
item replace entity @a[scores={char=61}] hotbar.0 with minecraft:netherite_sword[minecraft:custom_name={bold:1b,color:"gray",text:"Knife"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:3.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.8d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=61,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=61}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=61,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:light_blue_candle",minecraft:custom_name={text:"Cryostream",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=61,s1_timer=16..30,s1_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=61}] carrot_on_a_stick[custom_data={s1:2}]
item replace entity @a[scores={char=61,s1_timer=16..30,s1_timer_recast=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:2},minecraft:item_model="minecraft:cyan_candle",minecraft:custom_name={text:"Cone of Cold",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=61,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=61}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=61,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:lingering_potion",minecraft:custom_name={text:"Cooling Fluid",color:"dark_aqua",bold:1b}] 1
