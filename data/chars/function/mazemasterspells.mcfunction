kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:deepslate_redstone_ore"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_ore"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:weeping_vines"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel"}}]

#interregnum

execute at @a[scores={universal_hit=1..,char=36},team=yellow] run scoreboard players set @p[distance=..5,team=purple] decay_add 1
execute at @a[scores={universal_hit=1..,char=36},team=purple] run scoreboard players set @p[distance=..5,team=yellow] decay_add 1

scoreboard players add @a[scores={decay_add=1..}] decay_add 1
scoreboard players add @a[scores={decay_add=5..}] decay 60
scoreboard players set @a[scores={decay_add=5..}] decay_add 0

scoreboard players remove @a[scores={decay=1..}] decay 1
scoreboard players set @a[scores={decay=101..}] decay 100

scoreboard players add @a[scores={decay=2..}] decay_timer 1
scoreboard players set @a[scores={decay=..1}] decay_timer 0

scoreboard players set @a[scores={decay=1..}] regen 0
scoreboard players add @a[scores={decay=1..}] decay_timer 1
effect give @a[scores={decay_timer=2..3}] minecraft:wither 1 2
scoreboard players set @a[scores={decay_timer=40..}] decay_timer 0

scoreboard players set @a[scores={decay_death=1..}] decay 0
scoreboard players set @a[scores={decay_death=1..}] decay_timer 0
scoreboard players set @a[scores={decay_death=1..}] decay_death 0

#title @a[scores={decay=1..}] times 0 3 1
#title @a[scores={decay=1..}] title {"text":" "}
#title @a[scores={decay=1..}] subtitle {"text":"DECAY","color":"red","bold":true}

execute at @a[scores={decay=1..}] positioned ~ ~3 ~ unless entity @e[distance=..1,tag=display_decay] run summon minecraft:armor_stand ~ ~ ~ {Tags:["display_decay"],Marker:1b,Invisible:1b,CustomName:{text:"DECAY",color:"dark_red",bold:1b},CustomNameVisible:1b}
execute at @a[scores={decay=1..}] positioned ~ ~3 ~ run tp @e[distance=..1,tag=display_decay] ~ ~ ~
execute as @e[tag=display_decay] at @s positioned ~ ~-3 ~ unless entity @a[distance=..1,scores={decay=1..}] run kill @s



execute if entity @a[scores={HPercentage=..10,decay=1..,CC_intangible=0}] as @a[scores={char=36}] run function chars:add_kill
effect give @a[scores={HPercentage=..10,decay=1..,CC_intangible=0}] minecraft:instant_damage 1 10 true

scoreboard players set @a[scores={universal_death=1..}] decay 0

#corrupted fissure

scoreboard players set @a[scores={char=36,spell_maze_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=36,spell_maze_1_1=1,CC_silence=1..}] spell_maze_1_1 260

execute at @a[scores={char=36,spell_maze_1_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["fissure"]}
tp @e[tag=fissure,limit=1] @a[scores={char=36,spell_maze_1_1=1},limit=1]
execute store result entity @e[tag=fissure,limit=1] Rotation[1] float 1 run clear
execute store result entity @e[tag=fissure_return,limit=1] Rotation[1] float 1 run clear
execute as @e[tag=fissure] at @s unless block ~ ~1 ~ #minecraft:dash run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["fissure_return"]}
execute as @e[tag=fissure] at @s unless block ~ ~1 ~ #minecraft:dash run kill @s
execute as @e[tag=fissure_return] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s

scoreboard players add @e[tag=fissure_return] fissure_sound 1
scoreboard players add @e[tag=fissure] fissure_sound 1
execute at @e[scores={fissure_sound=5}] run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 0.5 1 1
scoreboard players set @e[scores={fissure_sound=5..}] fissure_sound 0


execute at @e[tag=fissure] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 1 0.1 1 0.3 30 normal
execute as @e[tag=fissure] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=fissure] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=36,spell_maze_1_1=20..}] at @e[tag=fissure] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["fissure_return"]}
execute at @a[scores={char=36,spell_maze_1_1=20..}] run kill @e[tag=fissure]
execute if entity @e[tag=fissure_return] run kill @e[tag=fissure]

execute at @e[tag=fissure] if entity @p[scores={char=36},team=purple] run scoreboard players set @a[distance=..2,team=yellow] decay_add 1
execute at @e[tag=fissure] if entity @p[scores={char=36},team=yellow] run scoreboard players set @a[distance=..2,team=purple] decay_add 1

execute as @e[tag=fissure_return] at @s run tp @s ~ ~ ~ facing entity @p[scores={char=36}]

execute at @e[tag=fissure_return] run particle minecraft:falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 1 0.1 1 0.3 30 normal
execute at @e[tag=fissure_return] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 1 0.1 1 0.3 30 normal
execute as @e[tag=fissure_return] at @s run tp @s ^ ^ ^0.4
execute as @e[tag=fissure_return] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=fissure_return] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute as @e[tag=fissure_return] at @s if entity @p[distance=..2,scores={char=36}] run kill @s

execute at @e[tag=fissure_return] if entity @p[scores={char=36},team=purple] run scoreboard players set @a[distance=..2,scores={decay=1..},team=yellow] CC_root 40
execute at @e[tag=fissure_return] if entity @p[scores={char=36},team=yellow] run scoreboard players set @a[distance=..2,scores={decay=1..},team=purple] CC_root 40

#the eye of the dungeon

scoreboard players set @a[scores={char=36,spell_maze_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=36,spell_maze_2_1=1,CC_silence=1..}] spell_maze_2_1 140

#execute at @a[scores={char=36,spell_maze_2_1=1,CC_silence=0}] run playsound entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 1 1.5 1
execute at @a[scores={char=36,spell_maze_2_1=1,CC_silence=0}] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=36,spell_maze_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dungeoneye","eye_particles"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;505442887,-2020588899,-1601849828,-237322492],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNlM2IxZjI2ZjY1MjVhZjgyZjViYTE0ZGJiOTNiNWU3YTU0M2Q0NzdmYThkYTEyM2RiZmFhNmQyMjlmZGE0ZiJ9fX0="}]}},count:1}}}
item replace entity @a[scores={char=36,spell_maze_2_1=5}] hotbar.2 with minecraft:redstone_ore[minecraft:custom_name={text:"Master's Gaze",color:"dark_aqua",bold:1b}] 1
tp @e[tag=dungeoneye,limit=1] @a[scores={char=36,spell_maze_2_1=1},limit=1]
execute store result entity @e[tag=dungeoneye,limit=1] Rotation[1] float 1 run clear

execute as @e[tag=dungeoneye] at @s if block ^ ^1 ^1 #minecraft:dash run tp @s ^ ^ ^0.25
execute as @e[tag=dungeoneye] at @s if block ~ ~-1 ~ #minecraft:dash run tp @s ~ ~-0.5 ~
execute as @e[tag=dungeoneye] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

item replace entity @a[scores={char=36,spell_maze_3=1..,CC_silence=1..}] hotbar.2 with minecraft:redstone_ore[minecraft:custom_name={text:"Master's Gaze",color:"dark_aqua",bold:1b}] 1
execute at @a[scores={spell_maze_3=1,CC_silence=0}] at @e[tag=dungeoneye] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dungeoneye_dmg","eye_particles"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;505442887,-2020588899,-1601849828,-237322492],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGNlM2IxZjI2ZjY1MjVhZjgyZjViYTE0ZGJiOTNiNWU3YTU0M2Q0NzdmYThkYTEyM2RiZmFhNmQyMjlmZGE0ZiJ9fX0="}]}},count:1}}}
execute at @a[scores={spell_maze_3=1,CC_silence=0}] run kill @e[tag=dungeoneye]
scoreboard players set @a[scores={spell_maze_3=1..}] spell_maze_3 0

clear @a[scores={char=36,spell_maze_2_1=80..90}] minecraft:redstone_ore
execute at @a[scores={char=36,spell_maze_2_1=80..}] run kill @e[tag=dungeoneye]

execute at @e[tag=eye_particles] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~0.3 ~ 0.5 0.8 1 0.1 2

execute as @e[tag=dungeoneye_dmg] at @s run tp @s ~ ~ ~ facing entity @p

scoreboard players add @e[tag=dungeoneye_dmg] eye_damage 1

execute as @e[tag=dungeoneye_dmg] if entity @p[scores={char=36},team=yellow] at @s run tp @s ~ ~ ~ facing entity @p[team=purple]
execute as @e[tag=dungeoneye_dmg] if entity @p[scores={char=36},team=purple] at @s run tp @s ~ ~ ~ facing entity @p[team=yellow]

execute at @e[scores={eye_damage=2}] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 4 0.2 4 0.3 100 normal
execute at @e[scores={eye_damage=2}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 3 0.3 3 0.1 300
execute at @e[scores={eye_damage=2}] run summon minecraft:marker ~ ~ ~ {Tags:["erupt"]}
execute at @e[scores={eye_damage=2}] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 1 0.8 1

execute at @e[scores={eye_damage=2}] if entity @p[scores={char=36},team=yellow] as @a[distance=..3,scores={decay=1..},team=purple] run damage @s 4 generic by @p[scores={char=36}] from @p[scores={char=36}]
execute at @e[scores={eye_damage=2}] if entity @p[scores={char=36},team=yellow] run scoreboard players set @a[distance=..3,team=purple] decay_add 1

execute at @e[scores={eye_damage=2}] if entity @p[scores={char=36},team=purple] as @a[distance=..3,scores={decay=1..},team=yellow] run damage @s 4 generic by @p[scores={char=36}] from @p[scores={char=36}]
execute at @e[scores={eye_damage=2}] if entity @p[scores={char=36},team=purple] run scoreboard players set @a[distance=..3,team=yellow] decay_add 1


execute at @e[scores={eye_damage=40}] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~ ~ 4 0.2 4 0.3 150 normal
execute at @e[scores={eye_damage=40}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~ ~ 3 0.3 3 0.1 350
execute at @e[scores={eye_damage=40}] run summon minecraft:marker ~ ~ ~ {Tags:["erupt"]}
execute at @e[scores={eye_damage=40}] run playsound minecraft:entity.wither.shoot master @a[distance=..15] ~ ~ ~ 1 0.6 1

execute at @e[scores={eye_damage=40}] if entity @p[scores={char=36},team=yellow] as @a[distance=..3,scores={decay=1..},team=purple] run damage @s 4 generic by @p[scores={char=36}] from @p[scores={char=36}]
execute at @e[scores={eye_damage=40}] if entity @p[scores={char=36},team=yellow] run scoreboard players set @a[distance=..3,team=purple] decay_add 1

execute at @e[scores={eye_damage=40}] if entity @p[scores={char=36},team=purple] as @a[distance=..3,scores={decay=1..},team=yellow] run damage @s 4 generic by @p[scores={char=36}] from @p[scores={char=36}]
execute at @e[scores={eye_damage=40}] if entity @p[scores={char=36},team=purple] run scoreboard players set @a[distance=..3,team=yellow] decay_add 1

kill @e[scores={eye_damage=50..}]

execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_1] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[0.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_1","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_2] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[45.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_2","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_3] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[90.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_3","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_4] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[135.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_4","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_5] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[180.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_5","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_6] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-135.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_6","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_7] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-90.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_7","eruption_visuals"],Marker:1b,equipment:{}}
execute at @e[tag=erupt] unless entity @e[tag=eruption_visual_8] run summon minecraft:armor_stand ~ ~ ~ {Rotaion:[-45.0f,0.0f],Small:1b,Invisible:1b,Tags:["eruption_visual_8","eruption_visuals"],Marker:1b,equipment:{}}

kill @e[tag=erupt]

execute as @e[tag=eruption_visual_1] at @s run tp @s ~0.5 ~ ~
execute as @e[tag=eruption_visual_2] at @s run tp @s ~-0.5 ~ ~
execute as @e[tag=eruption_visual_3] at @s run tp @s ~ ~ ~0.5
execute as @e[tag=eruption_visual_4] at @s run tp @s ~ ~ ~-0.5
execute as @e[tag=eruption_visual_5] at @s run tp @s ~0.4 ~ ~0.4
execute as @e[tag=eruption_visual_6] at @s run tp @s ~-0.4 ~ ~-0.4
execute as @e[tag=eruption_visual_7] at @s run tp @s ~0.4 ~ ~-0.4
execute as @e[tag=eruption_visual_8] at @s run tp @s ~-0.4 ~ ~0.4

execute at @e[tag=eruption_visuals] run particle minecraft:block{block_state:{Name:"minecraft:netherrack"}} ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10
scoreboard players add @e[tag=eruption_visuals] decay 1
kill @e[tag=eruption_visuals,scores={decay=6..}]


# maze master

scoreboard players add @a[scores={spell_maze_1=1..}] spell_maze_1_1 1
item replace entity @a[scores={char=36,spell_maze_1_1=280..}] hotbar.1 with minecraft:weeping_vines[minecraft:custom_name={text:"Corrupted Fissure",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_maze_1_1=281..}] spell_maze_1 0
scoreboard players set @a[scores={spell_maze_1_1=281..}] spell_maze_1_1 0
scoreboard players set @a[scores={spell_maze_1_1=1}] spellCD1 280

scoreboard players add @a[scores={spell_maze_2=1..}] spell_maze_2_1 1
item replace entity @a[scores={char=36,spell_maze_2_1=160..}] hotbar.2 with minecraft:deepslate_redstone_ore[minecraft:custom_name={text:"The Eye of The Dungeon",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_maze_2_1=161..}] spell_maze_2 0
scoreboard players set @a[scores={spell_maze_2_1=161..}] spell_maze_2_1 0
scoreboard players set @a[scores={spell_maze_2_1=81}] spellCD2 80

execute as @a[scores={char=36}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_shovel",Slot:0b}]}] run clear @a[scores={char=36}] minecraft:netherite_shovel
item replace entity @a[scores={char=36}] hotbar.0 with minecraft:netherite_shovel[minecraft:custom_name={bold:1b,color:"gray",text:"Grasp"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.0d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.75d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=36,spell_maze_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:weeping_vines",Slot:1b}]}] run clear @a[scores={char=36}] minecraft:weeping_vines
item replace entity @a[scores={char=36,spell_maze_1=0}] hotbar.1 with minecraft:weeping_vines[minecraft:custom_name={text:"Corrupted Fissure",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=36,spell_maze_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:deepslate_redstone_ore",Slot:2b}]}] run clear @a[scores={char=36}] minecraft:deepslate_redstone_ore
item replace entity @a[scores={char=36,spell_maze_2=0}] hotbar.2 with minecraft:deepslate_redstone_ore[minecraft:custom_name={text:"The Eye of The Dungeon",color:"dark_aqua",bold:1b}] 1