kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:sugar"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:black_dye"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_gold_ore"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}]
scoreboard players set @a[scores={char=26,weapondrop_shot=1..}] crossbowcd 1
scoreboard players set @a[scores={char=26,weapondrop_shot=1..}] weapondrop_shot 0


#effect give @a[scores={char=26},nbt={SelectedItem:{id:"minecraft:crossbow",count:1b}}] minecraft:weakness 1 100 true
effect give @a[scores={char=26},nbt={SelectedItem:{id:"minecraft:crossbow"}}] minecraft:weakness 1 100 true

execute at @a[scores={char=26,arrowcd_1=..15}] run tag @e[type=minecraft:arrow,distance=..2] add sharpshootershot_ar
execute at @a[scores={char=26,arrowcd_1=..15}] run data merge entity @e[type=minecraft:arrow,distance=..2,tag=sharpshootershot_ar,limit=1,nbt={crit:1b}] {crit:0b}
execute at @e[tag=sharpshootershot_ar] run particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~ ~ 0.1 0.1 0.1 0.1 3

execute at @a[scores={char=26,CC_disarm=1..}] run kill @e[tag=sharpshootershot_ar]


#wall jump

scoreboard players set @a[scores={char=26,spell_shot_1_1=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=26,spell_shot_1_1=1,CC_silence=1..}] spell_shot_1_1 260

effect clear @a[scores={char=26,CC_grounded=1..}] minecraft:levitation
effect clear @a[scores={char=26,CC_root=1..}] minecraft:levitation
effect clear @a[scores={char=26,CC_stun=1..}] minecraft:levitation
effect clear @a[scores={char=26,CC_silence=1..}] minecraft:levitation
effect clear @a[scores={char=26,CC_grounded=1..}] minecraft:slow_falling
effect clear @a[scores={char=26,CC_root=1..}] minecraft:slow_falling
effect clear @a[scores={char=26,CC_stun=1..}] minecraft:slow_falling
effect clear @a[scores={char=26,CC_silence=1..}] minecraft:slow_falling


execute at @a[scores={char=26,death_dash_reset=1..}] run kill @e[tag=walldash]
execute at @a[scores={char=26,universal_death=1..}] run kill @e[tag=walldash]
execute at @a[scores={char=26,CC_grounded=1..}] run kill @e[tag=walldash]
execute at @a[scores={char=26,CC_root=1..}] run kill @e[tag=walldash]
execute at @a[scores={char=26,CC_stun=1..}] run kill @e[tag=walldash]
execute at @a[scores={char=26,CC_silence=1..}] run kill @e[tag=walldash]

effect give @a[scores={char=26,spell_shot_1_1=1}] minecraft:levitation 1 20 true
effect give @a[scores={char=26,spell_shot_1_1=1}] minecraft:slow_falling 1 0 true
effect clear @a[scores={char=26,spell_shot_1_1=5}] minecraft:levitation
effect clear @a[scores={char=26,spell_shot_1_1=50}] minecraft:levitation


execute at @e[scores={char=26,spell_shot_1_1=10..30}] unless block ~1 ~ ~ #minecraft:dash run scoreboard players set @a[scores={char=26}] walljump 1
execute at @e[scores={char=26,spell_shot_1_1=10..30}] unless block ~-1 ~ ~ #minecraft:dash run scoreboard players set @a[scores={char=26}] walljump 1
execute at @e[scores={char=26,spell_shot_1_1=10..30}] unless block ~ ~ ~1 #minecraft:dash run scoreboard players set @a[scores={char=26}] walljump 1
execute at @e[scores={char=26,spell_shot_1_1=10..30}] unless block ~ ~ ~-1 #minecraft:dash run scoreboard players set @a[scores={char=26}] walljump 1

scoreboard players set @a[scores={char=26,walljump=1}] spell_shot_1_1 41
execute at @a[scores={char=26,walljump=1,CC_silence=0}] run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.001 20 normal
effect give @a[scores={char=26,walljump=1,CC_silence=0}] minecraft:levitation 1 1 true
execute at @a[scores={char=26,walljump=1,CC_silence=0}] run playsound minecraft:entity.player.attack.knockback master @a[distance=..10] ~ ~ ~ 1.0 0.8 1

scoreboard players add @a[scores={char=26,walljump=1..}] walljump 1

execute at @a[scores={char=26,walljump=7,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["walldash"],NoGravity:1b}
tp @e[tag=walldash,limit=1] @a[scores={char=26,walljump=7},limit=1]
execute at @a[scores={char=26,walljump=7},limit=1] run tp @e[tag=walldash,limit=1] ~ ~0.5 ~

scoreboard players set @a[scores={walljump=7..}] walljump 0

execute as @e[tag=walldash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=walldash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=walldash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=walldash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=walldash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=walldash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=walldash] at @s run tp @s ^ ^ ^0.9
tp @a[scores={char=26,death_dash_reset=0}] @e[tag=walldash,limit=1]
scoreboard players add @e[tag=walldash] walldistance 1
kill @e[tag=walldash,scores={walldistance=10..}]

#toxic blindness

scoreboard players set @a[scores={char=26,spell_shot_2_1=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=26,spell_shot_2_1=1,CC_silence=1..}] spell_shot_2_1 240


execute at @a[scores={char=26}] unless entity @e[tag=eyes_blindness] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["eyes_blindness"],equipment:{}}
execute as @a[scores={char=26}] at @s run tp @e[tag=eyes_blindness] ^ ^1 ^-0.5 facing entity @p[scores={char=26}]

execute at @a[scores={char=26,spell_shot_2_1=1,CC_silence=0}] run playsound minecraft:entity.enderman.ambient master @a[distance=..5] ~ ~ ~ 0.1 0.4 1
execute at @a[scores={char=26,spell_shot_2_1=1,CC_silence=0}] run playsound minecraft:entity.snowball.throw master @a[distance=..15] ~ ~ ~ 1 1 1
execute at @a[scores={char=26,spell_shot_2_1=1,CC_silence=0}] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["toxicity"],NoGravity:1b,Small:1b,equipment:{head:{id:"minecraft:nether_gold_ore",count:1}}}
tp @e[tag=toxicity,limit=1] @a[scores={char=26,spell_shot_2_1=1},limit=1]
execute at @a[scores={char=26,spell_shot_2_1=1,CC_silence=0,spell_shot_3=0}] run data merge entity @e[tag=eyes_blindness,limit=1] {equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7208960},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1956923902,-1153610189,-1450835436,374665507],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ViOTMyMzU2NzY0YTQ3NTBhYmYzMmUxOTcyNTAyN2VkMzhiMzFkOTE3ZDE1YTdlMzIxOGFiYWNjOTYwNTgifX19"}]}},count:1}}}
execute at @a[scores={char=26,spell_shot_2_1=1..10,CC_silence=0,spell_shot_3=0}] at @e[tag=eyes_blindness] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~1 ~ 0.8 0.6 0.8 0.01 8 force
execute at @a[scores={char=26,spell_shot_2_1=10}] run data merge entity @e[tag=eyes_blindness,limit=1] {equipment:{chest:{id:"air",count:1},head:{id:"air",count:1}}}


execute at @a[scores={char=26,spell_shot_2_1=1..14}] as @e[tag=toxicity] at @s run tp @s ^ ^ ^1.2
execute at @a[scores={char=26,spell_shot_2_1=15..24}] as @e[tag=toxicity] at @s run tp @s ^ ^ ^1
execute at @a[scores={char=26,spell_shot_2_1=15..24}] as @e[tag=toxicity] at @s run tp @s ~ ~-0.3 ~
execute at @a[scores={char=26,spell_shot_2_1=25..}] as @e[tag=toxicity] at @s run tp @s ^ ^ ^0.8
execute at @a[scores={char=26,spell_shot_2_1=25..}] as @e[tag=toxicity] at @s run tp @s ~ ~-0.5 ~
execute at @a[scores={char=26,spell_shot_2_1=40..}] as @e[tag=toxicity] at @s run tp @s ~ ~-0.6 ~

execute at @e[tag=toxicity] run particle minecraft:crit ~ ~1 ~ 0.1 0.2 0.1 0.01 7 normal
execute at @e[tag=toxicity] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~1 ~ 0.1 0.1 0.1 0.01 2 normal
execute at @e[tag=toxicity] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.01 4 normal




execute if entity @a[scores={char=26},team=purple] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=yellow] minecraft:blindness 3
execute if entity @a[scores={char=26},team=purple] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=yellow] minecraft:slowness 3 0
execute if entity @a[scores={char=26},team=purple] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=yellow] minecraft:poison 2 2

execute if entity @a[scores={char=26},team=yellow] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=purple] minecraft:blindness 3
execute if entity @a[scores={char=26},team=yellow] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=purple] minecraft:slowness 3 0
execute if entity @a[scores={char=26},team=yellow] at @e[tag=toxicblindness] run effect give @a[distance=..3,team=purple] minecraft:poison 2 2

execute at @e[tag=toxicblindness] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~1 ~ 2 1 2 0.01 200 normal
execute at @e[tag=toxicblindness] run particle minecraft:falling_dust{block_state:{Name:"minecraft:obsidian"}} ~ ~1 ~ 2 1 2 0.01 200 normal
execute at @e[tag=toxicblindness] run playsound minecraft:entity.enderman.scream master @a[distance=..15] ~ ~ ~ 0.2 0.4 1
execute at @e[tag=toxicblindness] run playsound minecraft:entity.spider.death master @a[distance=..15] ~ ~ ~ 1 0.1 1
execute at @e[tag=toxicblindness] run playsound minecraft:entity.wither_skeleton.ambien master @a[distance=..15] ~ ~ ~ 0.8 0.4 1
execute at @e[tag=toxicblindness] run particle minecraft:smoke ~ ~0.6 ~ 0.7 0.9 0.7 0.2 200

kill @e[tag=toxicblindness]

#demontrigger

item replace entity @a[scores={char=26,sorrow=6}] hotbar.3 with minecraft:nether_gold_ore[minecraft:custom_name={text:"Demon Trigger",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={char=26,sorrow=6}] sorrow 7
scoreboard players set @a[scores={char=26,sorrow=7..}] sorrow 7


execute if entity @a[scores={universal_death=1..},team=yellow] run tag @a[scores={char=26,sorrow=..6},team=purple] add add_sorrow
execute if entity @a[scores={universal_death=1..},team=purple] run tag @a[scores={char=26,sorrow=..6},team=yellow] add add_sorrow

execute at @a[tag=add_sorrow,scores={char=26,sorrow=..6}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..3] ~ ~ ~ 0.5 0.1 1
execute at @a[tag=add_sorrow,scores={char=26,sorrow=..6}] run playsound minecraft:entity.enderman.ambient master @a[distance=..3] ~ ~ ~ 0.5 0.1 1
execute at @a[tag=add_sorrow,scores={char=26,sorrow=0}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 10
execute at @a[tag=add_sorrow,scores={char=26,sorrow=1}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 20
execute at @a[tag=add_sorrow,scores={char=26,sorrow=2}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 30
execute at @a[tag=add_sorrow,scores={char=26,sorrow=3}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 40
execute at @a[tag=add_sorrow,scores={char=26,sorrow=4}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 50
execute at @a[tag=add_sorrow,scores={char=26,sorrow=5}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~0.5 ~ 0.6 0.8 0.6 0.3 60
execute at @a[tag=add_sorrow,scores={char=26,sorrow=..6}] run particle minecraft:smoke ~ ~0.5 ~ 0.6 0.8 0.6 0.2 10

scoreboard players add @a[tag=add_sorrow,scores={char=26,sorrow=..6}] sorrow 1
tag @a remove add_sorrow


item replace entity @a[scores={char=26,spell_shot_3=1,CC_silence=1..}] hotbar.3 with minecraft:nether_gold_ore[minecraft:custom_name={text:"Demon Trigger",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={char=26,spell_shot_3=1,CC_silence=1..}] spell_shot_3 0

scoreboard players add @a[scores={char=26,spell_shot_3=1..}] spell_shot_3 1
scoreboard players set @a[scores={char=26,spell_shot_3=2}] sorrow 0

item replace entity @a[scores={char=26,spell_shot_3=1..199}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:-4.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:movement_speed",amount:0.1d,operation:"add_multiplied_base",slot:"head"}],minecraft:profile={id:[I;-1525471341,42943223,-1836502789,1793436656],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAyYmFjYWQ2OTA4YThmOGI1OTg1NGNiYzJmZjc0YWFhMGNhNmZlMTU3YzQ0Yzc2ZTAwNjZkZjA1MWYxMGMwZCJ9fX0="}]}] 1
execute as @a[scores={char=26,spell_shot_3=2}] at @s run summon minecraft:armor_stand ^ ^1 ^-0.5 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["eyes"],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7208960},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1956923902,-1153610189,-1450835436,374665507],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ViOTMyMzU2NzY0YTQ3NTBhYmYzMmUxOTcyNTAyN2VkMzhiMzFkOTE3ZDE1YTdlMzIxOGFiYWNjOTYwNTgifX19"}]}},count:1}}}
execute at @a[scores={char=26,spell_shot_3=2}] run particle minecraft:smoke ~ ~0.6 ~ 0.5 0.8 0.5 0.3 100
execute at @a[scores={char=26,spell_shot_3=2}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~1 ~ 1.5 0.8 1.5 0.3 100

execute as @e[scores={char=26}] at @s run tp @e[tag=eyes] ^ ^1 ^-0.5
data modify entity @e[tag=eyes,limit=1] Rotation set from entity @p[scores={char=26}] Rotation
execute at @e[tag=eyes] run particle minecraft:falling_dust{block_state:{Name:"minecraft:magma_block"}} ~ ~1 ~ 0.4 0.6 0.4 0.01 5 force
execute at @e[tag=eyes] run particle minecraft:falling_dust{block_state:{Name:"minecraft:obsidian"}} ~ ~1 ~ 1.5 1 1.5 0.01 2 force
execute at @e[tag=eyes] run particle minecraft:smoke ~ ~1 ~ 1.5 1 1.5 0.01 5 force

execute at @a[scores={char=26,spell_shot_3=2},team=yellow] run effect give @a[team=purple] minecraft:glowing 10
execute at @a[scores={char=26,spell_shot_3=2},team=purple] run effect give @a[team=yellow] minecraft:glowing 10
execute at @a[scores={char=26,spell_shot_3=2}] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 1.5 1
execute at @a[scores={char=26,spell_shot_3=5}] run playsound minecraft:entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 1 1
execute at @a[scores={char=26,spell_shot_3=10}] run playsound minecraft:entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=26,spell_shot_3=15}] run playsound minecraft:entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 0.6 1
execute at @a[scores={char=26,spell_shot_3=195}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:nether_bricks"}} ~ ~1 ~ 1 2 1 0.01 200 force
execute at @a[scores={char=26,spell_shot_3=195}] run particle minecraft:falling_dust{block_state:{Name:"minecraft:obsidian"}} ~ ~1 ~ 1 2 1 0.01 150 force
execute at @a[scores={char=26,spell_shot_3=195}] run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0.2 1
execute at @a[scores={char=26,spell_shot_3=200..}] run kill @e[tag=eyes]
item replace entity @a[scores={char=26,spell_shot_3=200..}] armor.head with minecraft:player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:-4.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1658334643,491734479,-2036031261,-2059642805],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY2NDUzNmY1MjY5NTIyNTc0Yjk5YjdkYmRlZjQ1YzM3N2I4ZWU2ZTI4NzA0YWZjY2JlYjljZjRkOTUxZGZhNCJ9fX0="}]}] 1

scoreboard players set @a[scores={char=26,spell_shot_3=200..}] spell_shot_3 0

execute as @a[scores={char=26,spell_shot_3=..0,sorrow=0..5}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Eyes' Mood: ",color:"red",bold:0b,type:"text"},{score:{name:"@s",objective:"sorrow"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"6",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=26,spell_shot_3=..0,sorrow=6..}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Eyes' Mood: ",color:"red",bold:0b,type:"text"},{text:"6",color:"red",bold:0b,type:"text"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"6",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=26,spell_shot_3=1..}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"KILL KILL KILL",color:"red",bold:1b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]

#eyes wings

execute if entity @e[tag=eyes] unless entity @e[tag=eyes_wingL] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["eyes_wingL","eyes_wings"],equipment:{head:{id:"minecraft:red_banner",count:1}}}
execute if entity @e[tag=eyes] unless entity @e[tag=eyes_wingR] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["eyes_wingR","eyes_wings"],equipment:{head:{id:"minecraft:red_banner",count:1}}}

execute unless entity @e[tag=eyes] run kill @e[tag=eyes_wings]
execute as @e[tag=eyes,limit=1] at @s run tp @e[tag=eyes_wingL] ^-0.1 ^-0.2 ^-0.2 facing entity @e[tag=eyes,limit=1]
execute as @e[tag=eyes,limit=1] at @s run tp @e[tag=eyes_wingR] ^0.1 ^-0.2 ^-0.2 facing entity @e[tag=eyes,limit=1]
scoreboard players add @e[tag=eyes_wings] eyes_wingsanimation 1

data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=5},limit=1] {Pose:{Head:[0.0f,-40.0f,50.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=10},limit=1] {Pose:{Head:[0.0f,-40.0f,70.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=15},limit=1] {Pose:{Head:[0.0f,-40.0f,90.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=20},limit=1] {Pose:{Head:[0.0f,-40.0f,110.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=25},limit=1] {Pose:{Head:[0.0f,-40.0f,130.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=30},limit=1] {Pose:{Head:[0.0f,-40.0f,110.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=35},limit=1] {Pose:{Head:[0.0f,-40.0f,90.0f]}}
data merge entity @e[tag=eyes_wingL,scores={eyes_wingsanimation=40},limit=1] {Pose:{Head:[0.0f,-40.0f,70.0f]}}


data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=5},limit=1] {Pose:{Head:[0.0f,40.0f,-50.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=10},limit=1] {Pose:{Head:[0.0f,40.0f,-70.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=15},limit=1] {Pose:{Head:[0.0f,40.0f,-90.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=20},limit=1] {Pose:{Head:[0.0f,40.0f,-110.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=25},limit=1] {Pose:{Head:[0.0f,40.0f,-130.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=30},limit=1] {Pose:{Head:[0.0f,40.0f,-110.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=35},limit=1] {Pose:{Head:[0.0f,40.0f,-90.0f]}}
data merge entity @e[tag=eyes_wingR,scores={eyes_wingsanimation=40},limit=1] {Pose:{Head:[0.0f,40.0f,-70.0f]}}

scoreboard players set @e[tag=eyes_wings,scores={eyes_wingsanimation=40..}] eyes_wingsanimation 0


# sharpshooter

scoreboard players add @a[scores={spell_shot_1=1..}] spell_shot_1_1 1
item replace entity @a[scores={char=26,spell_shot_1_1=280..}] hotbar.1 with minecraft:sugar[minecraft:custom_name={text:"Leap Over",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_shot_1_1=281..}] spell_shot_1 0
scoreboard players set @a[scores={spell_shot_1_1=281..}] spell_shot_1_1 0
scoreboard players set @a[scores={spell_shot_1_1=42}] spellCD1 240

scoreboard players add @a[scores={spell_shot_2=1..}] spell_shot_2_1 1
item replace entity @a[scores={char=26,spell_shot_2_1=260..}] hotbar.2 with minecraft:black_dye[minecraft:custom_name={text:"Toxic Smoke",color:"dark_aqua",bold:1b}] 1
scoreboard players set @a[scores={spell_shot_2_1=261..}] spell_shot_2 0
scoreboard players set @a[scores={spell_shot_2_1=261..}] spell_shot_2_1 0
scoreboard players set @a[scores={spell_shot_2_1=1}] spellCD2 260


execute as @a[scores={char=26,spell_shot_1=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:sugar",Slot:1b}]}] run clear @a[scores={char=26}] minecraft:sugar
item replace entity @a[scores={char=26,spell_shot_1=0}] hotbar.1 with minecraft:sugar[minecraft:custom_name={text:"Leap Over",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=26,spell_shot_2=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:black_dye",Slot:2b}]}] run clear @a[scores={char=26}] minecraft:black_dye
item replace entity @a[scores={char=26,spell_shot_2=0}] hotbar.2 with minecraft:black_dye[minecraft:custom_name={text:"Toxic Smoke",color:"dark_aqua",bold:1b}] 1
