kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bow"}}]

effect give @a[scores={char=34},nbt={SelectedItem:{id:"minecraft:bow"}}] minecraft:weakness 1 100 true

#precipitation

execute at @a[scores={char=34,arrowcd_1=..10}] run tag @e[type=minecraft:arrow,distance=..2] add rainmakershoot_ar
execute at @e[tag=rainmakershoot_ar] run particle minecraft:block{block_state:{Name:"minecraft:water"}} ~ ~ ~ 0.1 0.1 0.1 0.1 5

execute at @a[scores={char=34,CC_disarm=1..}] run kill @e[tag=rainmakershoot_ar]

execute at @a[scores={char=34,rainmaker_shoot=1..}] run tag @e[type=minecraft:arrow,distance=..2,nbt={crit:1b}] add puddleShoot

execute at @e[type=minecraft:arrow,tag=puddleShoot,nbt={inGround:1b}] run summon marker ~ ~ ~ {Tags:["puddle","entities_rainmaker"]}
execute at @e[type=minecraft:arrow,tag=puddleShoot,nbt={inGround:1b}] run playsound entity.player.splash master @a[distance=..8] ~ ~ ~ 1 2 1 

scoreboard players set @a[scores={rainmaker_shoot=1..}] rainmaker_shoot 0

scoreboard players add @e[tag=puddle] puddle_life 1


execute at @e[tag=puddle,scores={puddle_life=1}] run playsound block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute at @e[tag=puddle,scores={puddle_life=20}] run playsound block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute at @e[tag=puddle,scores={puddle_life=40}] run playsound block.water.ambient master @a[distance=..5] ~ ~ ~ 0.5 1 1
execute as @e[tag=puddle] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.1 ~
execute as @e[tag=puddle] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=puddle] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=puddle] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=puddle] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=puddle] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] if score @s Team = @p[scores={char=34}] Team run effect give @s speed 1

execute at @e[tag=puddle,scores={puddle_life=2}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh
execute at @e[tag=puddle,scores={puddle_life=20}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh
execute at @e[tag=puddle,scores={puddle_life=40}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh
execute at @e[tag=puddle,scores={puddle_life=60}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh
execute at @e[tag=puddle,scores={puddle_life=80}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh
execute at @e[tag=puddle,scores={puddle_life=100}] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..3] unless score @s Team = @p[scores={char=34}] Team run tag @s add sogged_by_deshh

execute as @e[tag=sogged_by_deshh] run attribute @s knockback_resistance base set 100
execute as @e[tag=sogged_by_deshh] run damage @s 1 generic by @p[scores={char=34}] from @p[scores={char=34}]
execute as @e[tag=sogged_by_deshh] run attribute @s knockback_resistance base set 0
tag @e remove sogged_by_deshh


execute at @e[tag=puddle] run particle rain ~ ~ ~ 1 0.05 1 0.01 50

execute as @e[tag=puddle] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^ ^ ^2 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^ ^ ^-2 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^2 ^ ^ 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^-2 ^ ^ 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^1.5 ^ ^1.5 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^-1.5 ^ ^-1.5 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^1.5 ^ ^-1.5 0 0 0 0 1
execute as @e[tag=puddle] at @s run particle block{block_state:{Name:"minecraft:water"}} ^-1.5 ^ ^1.5 0 0 0 0 1

kill @e[tag=puddle,scores={puddle_life=100..}]

#caress of the downpour

scoreboard players set @a[scores={char=34,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=34,s1_timer=1,CC_silence=1..}] s1_timer 80

scoreboard players set @a[scores={char=34,s1_timer=2,s2_timer=1..58,CC_silence=0}] s2_timer 58
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run kill @e[tag=caress_cloud]
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run kill @e[tag=rain_cloud_visuals]

execute as @e[tag=caress_cloud] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.1 ~
execute as @e[tag=caress_cloud] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=caress_cloud] at @s if block ~ ~-0.5 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=caress_cloud] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=caress_cloud] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["caress_cloud","entities_rainmaker"]}
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..15] ~ ~ ~ 1 0.5 1
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run playsound block.enchantment_table.use master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] run playsound entity.player.splash.high_speed master @a[distance=..15] ~ ~ ~ 0.5 2 1
execute at @a[scores={char=34,s1_timer=2,CC_silence=0}] as @a[tag=valid_spell_target,distance=..5] if score @s Team = @p[scores={char=34}] Team run effect give @s absorption 3 1

scoreboard players add @e[tag=caress_cloud] puddle_life 1
execute at @e[tag=caress_cloud,scores={puddle_life=30..}] run playsound weather.rain master @a[distance=..10] ~ ~ ~ 0.03 1 1

execute at @e[tag=caress_cloud] positioned ~ ~1 ~ as @e[tag=valid_spell_target,distance=..5] if score @s Team = @p[scores={char=34}] Team run effect give @s resistance 1


execute as @e[tag=caress_cloud] at @s unless entity @a[distance=..10,scores={char=34}] run kill @s

execute at @e[tag=caress_cloud] run particle cloud ~ ~6 ~ 2.1 1 2.1 0.01 5 normal
execute at @e[tag=caress_cloud] run particle dripping_water ~ ~6 ~ 1.7 0.1 1.7 0.01 10 normal

execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_1] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_1","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.5f,-2f],scale:[4f,1f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}

execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_2] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_2","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.5f,-2f],scale:[4f,1f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_3] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_3","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.5f,-2f],scale:[4f,1f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_4] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_4","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.5f,-2f],scale:[4f,1f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_5] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_5","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.5f,-2f],scale:[4f,1f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}

execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_6] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_6","rain_cloud_outer","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.45f,-2f],scale:[4f,0.9f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_7] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_7","rain_cloud_outer","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.45f,-2f],scale:[4f,0.9f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_8] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_8","rain_cloud_outer","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.45f,-2f],scale:[4f,0.9f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}
execute at @e[tag=caress_cloud] unless entity @e[tag=rain_cloud_visual_9] run summon block_display ~ ~ ~ {brightness:{sky:15,block:15},teleport_duration:1,Tags:["rain_cloud_visual_9","rain_cloud_outer","rain_cloud_visuals","entities_rainmaker"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-0.45f,-2f],scale:[4f,0.9f,4f]},block_state:{Name:"minecraft:light_gray_concrete_powder"}}


execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_1] ~ ~6 ~
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_2] ~ ~6 ~2.85
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_3] ~2.85 ~6 ~
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_4] ~ ~6 ~-2.85
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_5] ~-2.85 ~6 ~

execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_6] ~-2 ~6 ~-2
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_7] ~2 ~6 ~-2
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_8] ~-2 ~6 ~2
execute at @e[tag=caress_cloud] run tp @e[tag=rain_cloud_visual_9] ~2 ~6 ~2

execute as @e[tag=rain_cloud_outer] at @s run tp @s ~ ~ ~ facing entity @n[tag=rain_cloud_visual_1]

execute unless entity @e[tag=caress_cloud] run kill @e[tag=rain_cloud_visuals]

execute as @e[tag=caress_cloud] at @s run tp @s ~ ~ ~ ~-6 ~
execute as @e[tag=caress_cloud] at @s run particle rain ^ ^ ^5 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^ ^ ^-5 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^5 ^ ^ 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^-5 ^ ^ 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^3.5 ^ ^3.5 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^-3.5 ^ ^-3.5 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^3.5 ^ ^-3.5 0 0 0 0 20
execute as @e[tag=caress_cloud] at @s run particle rain ^-3.5 ^ ^3.5 0 0 0 0 20


#deluge

scoreboard players set @a[scores={char=34,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=34,s2_timer=1,CC_silence=1..}] s2_timer 340

execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run playsound item.bucket.empty master @a[distance=..15] ~ ~ ~ 1 0.8 1
#execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run playsound weather.rain master @a[distance=..20] ~ ~ ~ 1 1 1
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_1","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_2","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_3","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_4","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_5","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_6","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_7","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_8","deluge_things","projectile","entities_rainmaker"]}
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] run summon marker ~ ~1 ~ {Tags:["deluge_wave_9","deluge_things","projectile","entities_rainmaker"]}

scoreboard players operation @e[tag=projectile,tag=deluge_things] Team = @p[scores={char=34}] Team
execute as @e[tag=deluge_things] run tp @p[scores={char=34,s2_timer=1}]
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_things] at @s run tp @s ~ ~1 ~ 

execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_1] run rotate @s ~40 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_2] run rotate @s ~30 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_3] run rotate @s ~20 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_4] run rotate @s ~10 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_5] run rotate @s ~ ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_6] run rotate @s ~-10 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_7] run rotate @s ~-20 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_8] run rotate @s ~-30 ~
execute at @a[scores={char=34,s2_timer=1,CC_silence=0}] as @e[tag=deluge_wave_9] run rotate @s ~-40 ~


execute as @e[tag=deluge_things] at @s run tp @s ^ ^ ^0.2

execute at @e[tag=deluge_wave_5] run playsound weather.rain master @a[distance=..10] ~ ~ ~ 0.05 0.8 1
execute at @e[tag=deluge_things] run particle rain ~ ~ ~ 0.5 1 0.5 0.01 20 normal
execute at @a[scores={char=34,s2_timer=3..}] at @e[tag=deluge_things] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0.5 1 0.5 0.01 3 normal

execute at @e[tag=deluge_things] positioned ~-0.75 ~-1 ~-0.75 as @e[dx=0.5,dy=1,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=34}] Team run tag @s add rain_pushed

effect give @e[tag=rain_pushed] slowness 1 2
execute as @e[tag=rain_pushed] run damage @s 2 mace_smash by @p[scores={char=34}] from @p[scores={char=34}]
tag @e remove rain_pushed

execute at @a[scores={char=34,s2_timer=60..,CC_silence=0}] run kill @e[tag=deluge_things]

# rainmaker

scoreboard players set @a[scores={char=34}] MaxHP 20

scoreboard players set @a[scores={s1_timer=1,char=34}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=34}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=34}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=34}] spellCD2 300
scoreboard players add @a[scores={s2_timer=1..,char=34}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=34}] s2_timer 0

execute as @a[scores={char=34}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Slot:0b}]}] run clear @a[scores={char=34}] minecraft:bow
item replace entity @a[scores={char=34}] hotbar.0 with minecraft:bow[minecraft:custom_name={text:"Rain",color:"gray",bold:1b},minecraft:enchantments={"minecraft:aqua_affinity":1},minecraft:unbreakable={}] 1


execute as @a[scores={char=34,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=34}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=34,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:white_glazed_terracotta",minecraft:enchantments={"minecraft:feather_falling":1},minecraft:custom_name={text:"Caress of the Downpour",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=34,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=34}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=34,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:blue_glazed_terracotta",minecraft:enchantments={"minecraft:feather_falling":1},minecraft:custom_name={text:"Deluge",color:"dark_aqua",bold:1b}] 1
