kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}]

#interregnum

execute as @a[advancements={chars:mazemaster_hit=true}] unless score @s Team = @p[scores={char=36}] Team run scoreboard players set @s decay_add 1
advancement revoke @a[advancements={chars:mazemaster_hit=true}] only chars:mazemaster_hit

scoreboard players add @e[scores={decay_add=1..}] decay_add 1
scoreboard players add @e[scores={decay_add=3..}] decay 60
scoreboard players set @e[scores={decay_add=3..}] decay_add 0

scoreboard players remove @e[scores={decay=1..}] decay 1
scoreboard players set @e[scores={decay=101..}] decay 100

scoreboard players add @e[scores={decay=2..}] decay_timer 1
scoreboard players set @e[scores={decay=..1}] decay_timer 0

scoreboard players set @e[scores={decay=1..}] regen 0
scoreboard players add @e[scores={decay=1..}] decay_timer 1
effect give @e[scores={decay_timer=2..3}] wither 1 2
scoreboard players set @e[scores={decay_timer=40..}] decay_timer 0

#title @a[scores={decay=1..}] times 0 3 1
#title @a[scores={decay=1..}] title {"text":" "}
#title @a[scores={decay=1..}] subtitle {"text":"DECAY","color":"red","bold":true}

execute at @a[scores={decay=1..}] positioned ~ ~3 ~ unless entity @e[distance=..1,tag=display_decay] run summon armor_stand ~ ~ ~ {Tags:["display_decay","entities_mazemaster"],Marker:1b,Invisible:1b,CustomName:{text:"DECAY",color:"dark_red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={decay=1..}] positioned ~ ~3 ~ run tp @e[distance=..1,tag=display_decay] ~ ~ ~
execute as @e[tag=display_decay] at @s positioned ~ ~-3 ~ unless entity @a[distance=..1,scores={decay=1..}] run kill @s


execute as @a[scores={HPercentage=..10,decay=1..,CC_intangible=0}] run damage @s 100 generic by @p[scores={char=36}] from @p[scores={char=34}] 
scoreboard players set @a[scores={universal_death=1..}] decay_timer 0
scoreboard players set @a[scores={universal_death=1..}] decay 0

execute at @e[scores={decay=1..}] run particle entity_effect{color:[0.0,0.0,0.0,1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 1
execute at @e[scores={decay=1..}] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~1 ~ 0.4 0.6 0.4 0 1


#corrupted fissure

scoreboard players set @a[scores={char=36,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=36,s1_timer=1,CC_silence=1..}] s1_timer 260

execute at @a[scores={char=36,s1_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["fissure","fissure_main_parts","entities_mazemaster"]}
tp @e[tag=fissure,limit=1] @a[scores={char=36,s1_timer=1},limit=1]
execute store result entity @e[tag=fissure,limit=1] Rotation[1] float 1 run clear
execute store result entity @e[tag=fissure_return,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=fissure] at @s unless block ~ ~1 ~ #minecraft:dash run summon marker ~ ~ ~ {Tags:["fissure_return","fissure_main_parts","entities_mazemaster"]}
execute as @e[tag=fissure] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s
execute as @e[tag=fissure_return] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

scoreboard players add @e[tag=fissure_main_parts] fissure_sound 1
scoreboard players add @e[tag=fissured_spike] fissure_sound 1
scoreboard players add @e[tag=corrupted_ground] fissure_sound 1


execute at @e[scores={fissure_sound=5},tag=fissure_main_parts] run playsound entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 0.5 1 1

execute at @e[scores={fissure_sound=1},tag=fissure_main_parts] run summon marker ~ ~ ~ {Tags:["spawn_corruptedground_1","corrupted_ground_spawner","entities_mazemaster"]}
execute at @e[scores={fissure_sound=3},tag=fissure_main_parts] run summon marker ~ ~ ~ {Tags:["spawn_corruptedground_2","corrupted_ground_spawner","entities_mazemaster"]}
execute at @e[scores={fissure_sound=5},tag=fissure_main_parts] run summon marker ~ ~ ~ {Tags:["spawn_corruptedground_3","corrupted_ground_spawner","entities_mazemaster"]}


execute at @e[scores={fissure_sound=3},tag=fissure] positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["spawn_spike","entities_mazemaster"]}
execute at @e[scores={fissure_sound=5},tag=fissure] positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["spawn_spike","entities_mazemaster"]}

execute at @e[scores={fissure_sound=3},tag=fissure_return] positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["spawn_spike_return","entities_mazemaster"]}
execute at @e[scores={fissure_sound=5},tag=fissure_return] positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["spawn_spike_return","entities_mazemaster"]}

execute at @e[tag=spawn_spike] run summon block_display ~ ~-3 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-1.5f,-0.4f],scale:[0.8f,3f,0.8f]},block_state:{Name:"minecraft:deepslate_coal_ore"},Tags:["fissured_spike","f_spike_0","entities_mazemaster"]}
execute at @e[tag=spawn_spike] run summon block_display ~ ~-1.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.75f,-0.4f],scale:[0.8f,1.5f,0.8f]},block_state:{Name:"minecraft:deepslate_coal_ore"},Tags:["fissured_spike","f_spike_1","entities_mazemaster"]}
execute at @e[tag=spawn_spike] run summon block_display ~ ~-1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.75f,-0.3f],scale:[0.6f,1.5f,0.6f]},block_state:{Name:"minecraft:deepslate_coal_ore"},Tags:["fissured_spike","f_spike_2","entities_mazemaster"]}
execute at @e[tag=spawn_spike] run summon block_display ~ ~-0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.75f,-0.2f],scale:[0.4f,1.5f,0.4f]},block_state:{Name:"minecraft:deepslate_coal_ore"},Tags:["fissured_spike","f_spike_3","entities_mazemaster"]}
execute at @e[tag=spawn_spike_return] run summon block_display ~ ~-3 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-1.5f,-0.4f],scale:[0.8f,3f,0.8f]},block_state:{Name:"minecraft:deepslate_redstone_ore"},Tags:["fissured_spike","f_spike_0","entities_mazemaster"]}
execute at @e[tag=spawn_spike_return] run summon block_display ~ ~-1.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.75f,-0.4f],scale:[0.8f,1.5f,0.8f]},block_state:{Name:"minecraft:deepslate_redstone_ore"},Tags:["fissured_spike","f_spike_1","entities_mazemaster"]}
execute at @e[tag=spawn_spike_return] run summon block_display ~ ~-1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.75f,-0.3f],scale:[0.6f,1.5f,0.6f]},block_state:{Name:"minecraft:deepslate_redstone_ore"},Tags:["fissured_spike","f_spike_2","entities_mazemaster"]}
execute at @e[tag=spawn_spike_return] run summon block_display ~ ~-0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.75f,-0.2f],scale:[0.4f,1.5f,0.4f]},block_state:{Name:"minecraft:deepslate_redstone_ore"},Tags:["fissured_spike","f_spike_3","entities_mazemaster"]}
execute at @e[tag=spawn_corruptedground_1] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,-0.1f,-0.6f],scale:[1.2f,0.2f,1.2]},block_state:{Name:"minecraft:coal_block"},Tags:["corrupted_ground","entities_mazemaster"]}
execute at @e[tag=spawn_corruptedground_2] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,-0.15f,-0.6f],scale:[1.2,0.3f,1.2]},block_state:{Name:"minecraft:coal_block"},Tags:["corrupted_ground","entities_mazemaster"]}
execute at @e[tag=spawn_corruptedground_3] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,-0.22f,-0.6f],scale:[1.2,0.25f,1.2]},block_state:{Name:"minecraft:coal_block"},Tags:["corrupted_ground","entities_mazemaster"]}

tp @e[tag=corrupted_ground,tag=!corrupted_readjust] @e[tag=fissure_main_parts,limit=1]
tag @e[tag=corrupted_ground] add corrupted_readjust
kill @e[tag=spawn_spike]
kill @e[tag=spawn_spike_return]
kill @e[tag=corrupted_ground_spawner]

execute at @e[tag=corrupted_ground] run particle dust{color:[0.0,0.0,0.0],scale:1} ~ ~0.3 ~ 0.4 0.2 0.4 10 1
execute at @e[tag=fissured_spike] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~ ~ 0.4 0.4 0.4 10 5

execute as @e[tag=fissured_spike,scores={fissure_sound=..10}] at @s run tp @s ~ ~0.18 ~
execute as @e[tag=fissured_spike,scores={fissure_sound=11..}] at @s run tp @s ~ ~-0.01 ~
execute as @e[tag=fissured_spike,scores={fissure_sound=15..}] at @s run tp @s ~ ~-0.1 ~
kill @e[tag=fissured_spike,scores={fissure_sound=31..}]
execute at @e[tag=corrupted_ground,scores={fissure_sound=41..}] run particle block{block_state:{Name:"minecraft:coal_block"}} ~ ~ ~ 0.5 0 0.5 0 10
kill @e[tag=corrupted_ground,scores={fissure_sound=41..}]

execute as @e[tag=corrupted_ground] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=corrupted_ground] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=corrupted_ground] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=corrupted_ground] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=corrupted_ground] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

scoreboard players set @e[tag=fissure,scores={fissure_sound=5..}] fissure_sound 0
scoreboard players set @e[tag=fissure_return,scores={fissure_sound=5..}] fissure_sound 0

execute at @e[tag=fissure] run particle dust{color:[0.67,0.0,0.0],scale:1} ^1.5 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @e[tag=fissure] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-1.5 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @e[tag=fissure] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 1 0 1 0.3 30 normal
execute as @e[tag=fissure] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=fissure] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=fissure] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @a[scores={char=36,s1_timer=20..}] at @e[tag=fissure] run summon marker ~ ~ ~ {Tags:["fissure_return","fissure_main_parts","entities_mazemaster"]}
execute at @a[scores={char=36,s1_timer=20..}] run kill @e[tag=fissure]
execute if entity @e[tag=fissure_return] run kill @e[tag=fissure]

execute at @e[tag=fissure_main_parts] as @e[distance=..1.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=36}] Team run scoreboard players set @s decay_add 1

execute as @e[tag=fissure_return] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=36}]

execute at @e[tag=fissure_return] run particle dust{color:[0.67,0.0,0.0],scale:1} ^1.5 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @e[tag=fissure_return] run particle dust{color:[0.67,0.0,0.0],scale:1} ^-1.5 ^0.1 ^ 0.1 0.1 0.1 10 20
execute at @e[tag=fissure_return] run particle minecraft:falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 1 0 1 0.3 30 normal
execute at @e[tag=fissure_return] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 1 0 1 0.3 30 normal
execute as @e[tag=fissure_return] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=fissure_return] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~0.8 ~
execute as @e[tag=fissure_return] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure_return] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~
execute as @e[tag=fissure_return] at @s if entity @p[distance=..2,scores={char=36}] run kill @s

execute at @e[tag=fissure_return] as @e[distance=..1.5,tag=valid_spell_target,scores={decay=1..}] unless score @s Team = @p[scores={char=36}] Team run scoreboard players set @s CC_root 40



#the eye of the dungeon
clear @a[scores={char=36,s2_timer=1,CC_silence=0}] *[custom_data={s2:1}]
clear @a[scores={char=36,s2_timer_recast=1,CC_silence=0}] *[custom_data={s2:2}]

scoreboard players set @a[scores={char=36,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=36,s2_timer=1,CC_silence=1..}] s2_timer 140

execute at @a[scores={char=36,s2_timer=1,CC_silence=0}] run playsound entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=36,s2_timer=1,CC_silence=0}] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=36,s2_timer=1,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["dungeoneye","eye_particles","entities_mazemaster"]}
item replace entity @a[scores={char=36,s2_timer=5}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:redstone_ore",minecraft:custom_name={text:"Master's Gaze",color:"dark_aqua",bold:1b}] 1
tp @e[tag=dungeoneye,limit=1] @a[scores={char=36,s2_timer=1},limit=1]
execute store result entity @e[tag=dungeoneye,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=dungeoneye] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=dungeoneye] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute as @e[tag=dungeoneye] at @s if block ^ ^1 ^1 #minecraft:dash run tp @s ^ ^ ^0.25
execute as @e[tag=dungeoneye] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=dungeoneye] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

clear @a[scores={char=36,s2_timer_recast=1..}] *[custom_data={s2:2}]
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=dungeoneye] run summon zombie ~ ~-3 ~ {Silent:1b,NoAI:1b,Tags:["dungeoneye_visual_main","eye_particles","entities_mazemaster"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;505442887,-2020588899,-1601849828,-237322492],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNlM2IxZjI2ZjY1MjVhZjgyZjViYTE0ZGJiOTNiNWU3YTU0M2Q0NzdmYThkYTEyM2RiZmFhNmQyMjlmZGE0ZiJ9fX0="}]}},count:1}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:200000,show_particles:0b}],attributes:[{id:"minecraft:scale",base:1.5}]}
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=dungeoneye] run summon marker ~ ~ ~ {Tags:["dungeoneye_core","entities_mazemaster"]}
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=dungeoneye] run summon block_display ~ ~-1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.75f,-0.4f],scale:[0.8f,1.5f,0.8f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_1","eye_splash_first","entities_mazemaster"]}
execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=dungeoneye] run summon block_display ~ ~-1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.75f,-0.25f],scale:[0.5f,1.5f,0.5f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_2","eye_splash_first","entities_mazemaster"]}
#execute at @a[scores={s2_timer_recast=1,CC_silence=0}] at @e[tag=dungeoneye] run summon block_display ~ ~-1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.75f,-0.15f],scale:[0.3f,1.5f,0.3f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_3","eye_splash_first","entities_mazemaster"]}

execute at @a[scores={s2_timer_recast=1,CC_silence=0}] run kill @e[tag=dungeoneye]
execute at @a[scores={char=36,s2_timer=80..}] run kill @e[tag=dungeoneye]

execute as @e[tag=dungeoneye_core] at @s if block ~ ~-0.2 ~ #minecraft:dash run tp @s ~ ~-0.2 ~
execute as @e[tag=dungeoneye_core] at @s if block ~ ~-0.1 ~ #minecraft:dash run tp @s ~ ~-0.1 ~

execute at @e[tag=dungeoneye] run particle dust{color:[0.5,0.0,0.0],scale:1} ~ ~1 ~ 0.1 0.35 0.1 0.1 20 force @p[scores={char=36}]
execute at @e[tag=eye_particles] run particle block{block_state:{Name:"minecraft:netherrack"}} ~ ~0.3 ~ 0.5 0.8 0.5 0.1 2
execute as @e[tag=dungeoneye_core] at @s run rotate @s ~6 ~
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^ ^ ^3 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^ ^ ^-3 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^3 ^ ^ 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^-3 ^ ^ 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^2 ^ ^2 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^-2 ^ ^-2 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^2 ^ ^-2 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_core] at @s run particle dust{color:[0.5,0.0,0.0],scale:1} ^-2 ^ ^2 0.1 0.1 0.1 0 5
execute as @e[tag=dungeoneye_visual_main] at @s run rotate @s facing entity @p feet

scoreboard players add @e[tag=dungeoneye_visual_main] eye_damage 1
scoreboard players add @e[tag=dungeoneye_core] eye_damage 1
scoreboard players add @e[tag=eye_splash_first] eye_damage 1
scoreboard players add @e[tag=eye_splash_second] eye_damage 1


execute as @e[tag=eye_splash_1,tag=eye_splash_first,scores={eye_damage=..5}] at @s run tp @s ~ ~0.2 ~
execute as @e[tag=eye_splash_2,tag=eye_splash_first,scores={eye_damage=..10}] at @s run tp @s ~ ~0.2 ~
execute as @e[tag=eye_splash_3,tag=eye_splash_first,scores={eye_damage=..15}] at @s run tp @s ~ ~0.2 ~
execute as @e[tag=eye_splash_1,tag=eye_splash_first,scores={eye_damage=15..}] at @s run tp @s ~ ~-0.2 ~
execute as @e[tag=eye_splash_2,tag=eye_splash_first,scores={eye_damage=15..}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=eye_splash_3,tag=eye_splash_first,scores={eye_damage=15..}] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=eye_splash_1,tag=eye_splash_second,scores={eye_damage=..3}] at @s run tp @s ~ ~0.4 ~
execute as @e[tag=eye_splash_2,tag=eye_splash_second,scores={eye_damage=..7}] at @s run tp @s ~ ~0.4 ~
execute as @e[tag=eye_splash_3,tag=eye_splash_second,scores={eye_damage=..11}] at @s run tp @s ~ ~0.4 ~
execute as @e[tag=eye_splash_1,tag=eye_splash_second,scores={eye_damage=11..}] at @s run tp @s ~ ~-0.25 ~
execute as @e[tag=eye_splash_2,tag=eye_splash_second,scores={eye_damage=11..}] at @s run tp @s ~ ~-0.35 ~
execute as @e[tag=eye_splash_3,tag=eye_splash_second,scores={eye_damage=11..}] at @s run tp @s ~ ~-0.4 ~

kill @e[tag=eye_splash_first,scores={eye_damage=35..}]
kill @e[tag=eye_splash_second,scores={eye_damage=35..}]

execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=..5}] at @s run tp @s ~ ~0.3 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=5..10}] at @s run tp @s ~ ~0.2 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=11..20}] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=21..25}] at @s run tp @s ~ ~-0.1 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=26..40}] at @s run tp @s ~ ~-0.2 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=40..50}] at @s run tp @s ~ ~-0.3 ~
execute as @e[tag=dungeoneye_visual_main,scores={eye_damage=51..}] at @s run tp @s ~ ~-0.4 ~
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=3}] run playsound item.bucket.empty_lava master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=25}] run playsound item.bucket.fill_lava master @a[distance=..10] ~ ~ ~ 1 0.8 1
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=30}] run playsound item.bucket.fill_lava master @a[distance=..10] ~ ~ ~ 1 0.6 1
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=35}] run playsound item.bucket.fill_lava master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=40}] run playsound item.bucket.fill_lava master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @e[tag=dungeoneye_visual_main,scores={eye_damage=40}] run playsound entity.player.splash.high_speed master @a[distance=..10] ~ ~ ~ 0.5 0.5 1

execute at @e[tag=dungeoneye_core,scores={eye_damage=40}] run summon block_display ~ ~-0.4 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-0.75f,-0.4f],scale:[0.8f,1.5f,0.8f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_1","eye_splash_second","entities_mazemaster"]}
execute at @e[tag=dungeoneye_core,scores={eye_damage=40}] run summon block_display ~ ~-0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.75f,-0.25f],scale:[0.5f,1.5f,0.5f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_2","eye_splash_second","entities_mazemaster"]}
execute at @e[tag=dungeoneye_core,scores={eye_damage=40}] run summon block_display ~ ~-0.5 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.15f,-0.75f,-0.15f],scale:[0.3f,1.5f,0.3f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["eye_splash_3","eye_splash_second","entities_mazemaster"]}


tag @e[tag=dungeoneye_core,scores={eye_damage=2}] add dungeoneye_eruption
tag @e[tag=dungeoneye_core,scores={eye_damage=40}] add dungeoneye_eruption

execute at @e[tag=dungeoneye_core,tag=dungeoneye_eruption] run particle block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 4 0.2 4 0.3 100 normal
execute at @e[tag=dungeoneye_core,tag=dungeoneye_eruption] run summon marker ~ ~ ~ {Tags:["erupt","entities_mazemaster"]}
execute at @e[tag=dungeoneye_core,tag=dungeoneye_eruption] run playsound entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.2 0.8 1
execute at @e[tag=dungeoneye_core,tag=dungeoneye_eruption] as @e[distance=..3,scores={decay=1..},tag=valid_spell_target] unless score @s Team = @p[scores={char=36}] Team run damage @s 4 generic by @p[scores={char=36}] from @p[scores={char=36}]
execute at @e[tag=dungeoneye_core,tag=dungeoneye_eruption] as @e[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=36}] Team run scoreboard players set @s decay_add 1


tag @e remove dungeoneye_eruption
 
kill @e[tag=dungeoneye_core,scores={eye_damage=42..}]
kill @e[scores={eye_damage=60..}]

execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_1] run summon marker ~0.1 ~ ~ {Tags:["eruption_visual_1","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_2] run summon marker ~-0.1 ~ ~ {Tags:["eruption_visual_2","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_3] run summon marker ~ ~ ~0.1 {Tags:["eruption_visual_3","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_4] run summon marker ~ ~ ~-0.1 {Tags:["eruption_visual_4","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_5] run summon marker ~-0.1 ~ ~-0.1 {Tags:["eruption_visual_5","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_6] run summon marker ~0.1 ~ ~0.1 {Tags:["eruption_visual_6","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_7] run summon marker ~-0.1 ~ ~0.1 {Tags:["eruption_visual_7","eruption_visuals","entities_mazemaster"]}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_8] run summon marker ~0.1 ~ ~-0.1 {Tags:["eruption_visual_8","eruption_visuals","entities_mazemaster"]}

kill @e[tag=erupt]

execute as @e[tag=eruption_visuals] at @s run rotate @s facing entity @e[tag=dungeoneye_core,limit=1]
execute as @e[tag=eruption_visuals] at @s run tp @s ^ ^ ^-0.5
#execute as @e[tag=eruption_visual_1] at @s run tp @s ~0.5 ~ ~
#execute as @e[tag=eruption_visual_2] at @s run tp @s ~-0.5 ~ ~
#execute as @e[tag=eruption_visual_3] at @s run tp @s ~ ~ ~0.5
#execute as @e[tag=eruption_visual_4] at @s run tp @s ~ ~ ~-0.5
#execute as @e[tag=eruption_visual_5] at @s run tp @s ~0.4 ~ ~0.4
#execute as @e[tag=eruption_visual_6] at @s run tp @s ~-0.4 ~ ~-0.4
#execute as @e[tag=eruption_visual_7] at @s run tp @s ~0.4 ~ ~-0.4
#execute as @e[tag=eruption_visual_8] at @s run tp @s ~-0.4 ~ ~0.4

execute at @e[tag=eruption_visuals] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
execute at @e[tag=eruption_visuals] run summon block_display ~ ~-0.1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,-0.1f,-0.2f],scale:[0.4f,0.2f,0.4f]},block_state:{Name:"minecraft:nether_wart_block"},Tags:["small_splash","entities_mazemaster"]}

scoreboard players add @e[tag=eruption_visuals] eye_damage 1
scoreboard players add @e[tag=small_splash] eye_damage 1
kill @e[tag=eruption_visuals,scores={eye_damage=6..}]
execute as @e[tag=small_splash,scores={eye_damage=..5}] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=small_splash,scores={eye_damage=6..}] at @s run tp @s ~ ~-0.05 ~
kill @e[tag=small_splash,scores={eye_damage=10..}]

# maze master

scoreboard players set @a[scores={char=36}] MaxHP 24

scoreboard players set @a[scores={s1_timer=1,char=36}] spellCD1 280
scoreboard players add @a[scores={s1_timer=1..,char=36}] s1_timer 1
scoreboard players set @a[scores={s1_timer=281..,char=36}] s1_timer 0

scoreboard players set @a[scores={s2_timer=81,char=36}] spellCD2 80
scoreboard players add @a[scores={s2_timer=1..,char=36}] s2_timer 1
scoreboard players set @a[scores={s2_timer=161..,char=36}] s2_timer 0
scoreboard players add @a[scores={s2_timer_recast=1..,char=36}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=100..,char=36}] s2_timer_recast 0

execute as @a[scores={char=36}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=36}] netherite_shovel
item replace entity @a[scores={char=36}] hotbar.0 with netherite_shovel[custom_data={mazemaster:1},minecraft:custom_name={bold:1b,color:"gray",text:"Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.75d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=36,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=36}] carrot_on_a_stick
item replace entity @a[scores={char=36,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:weeping_vines",minecraft:custom_name={text:"Corrupted Fissure",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=36,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=36}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=36,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:deepslate_redstone_ore",minecraft:custom_name={text:"The Eye of The Dungeon",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=36,s2_timer=10..80,s2_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=36}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[scores={char=36,s2_timer=10..80,s2_timer_recast=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:redstone_ore",minecraft:custom_name={text:"Master's Gaze",color:"dark_aqua",bold:1b}] 1
