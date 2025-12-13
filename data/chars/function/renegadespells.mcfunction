kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cherry_button"}}]

execute at @a[scores={char=26}] as @e[tag=valid_spell_target,distance=0.1..5.0] unless score @s Team = @p[scores={char=26}] Team run tag @s add renegade_enemy_within_melee
execute at @a[scores={char=26}] as @e[tag=valid_spell_target,distance=5.1..] run tag @s remove renegade_enemy_within_melee
execute at @a[scores={char=26}] as @e if score @s Team = @p[scores={char=26}] Team run tag @s remove renegade_enemy_within_melee

tag @a[scores={char=26,universal_hit=15..}] add add_cruelty

execute at @a[scores={char=26}] if entity @e[tag=renegade_enemy_within_melee,distance=..4.6] run tag @e[scores={char=26}] add kayral_melee
execute at @a[scores={char=26}] if entity @e[tag=renegade_enemy_within_melee,distance=..4.6] run tag @e[scores={char=26}] remove kayral_ranged
execute at @a[scores={char=26}] unless entity @e[tag=renegade_enemy_within_melee,distance=..4.6] run tag @e[scores={char=26}] remove kayral_melee
execute at @a[scores={char=26}] unless entity @e[tag=renegade_enemy_within_melee,distance=..4.6] run tag @e[scores={char=26}] add kayral_ranged

execute at @a[scores={char=26,s0_timer=1}] run playsound entity.shulker.shoot master @a[distance=..15] ~ ~ ~ 1 1.2 1
execute at @a[scores={char=26,s0_timer=1}] run playsound entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 0.2 2 1
execute at @a[scores={char=26,s0_timer=1}] run summon marker ~ ~1 ~ {Tags:["renegade_ebw_shot","entities_renegade"]}
scoreboard players operation @e[tag=projectile,tag=renegade_ebw_shot] Team = @p[scores={char=26}] Team
tp @e[tag=renegade_ebw_shot,limit=1] @a[scores={char=26,s0_timer=1},limit=1]
execute at @a[scores={char=26,s0_timer=1,CC_silence=0}] as @e[tag=renegade_ebw_shot,limit=1] at @s run tp @s ~ ~1.5 ~ 

execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute as @e[tag=renegade_ebw_shot] at @s run tp @s ^ ^ ^0.3
execute at @e[tag=renegade_ebw_shot] run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 2
execute at @e[tag=renegade_ebw_shot] run particle dust{color:[0.33,0.33,1.0],scale:1} ~ ~ ~ 0 0 0 0 2

execute as @e[tag=renegade_ebw_shot] at @s positioned ~ ~ ~ unless block ^ ^ ^0.4 #dash run kill @s
execute as @e[tag=renegade_ebw_shot] at @s positioned ~ ~ ~ unless block ~ ~ ~ #dash run kill @s

execute at @e[tag=renegade_ebw_shot] positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=26}] Team run tag @s add kayraled
execute at @e[tag=kayraled] run kill @e[tag=renegade_ebw_shot]
execute at @e[tag=kayraled] run tag @a[scores={char=26}] add add_cruelty
execute if entity @e[tag=kayraled] at @a[scores={char=26}] run playsound entity.experience_orb.pickup master @a[scores={char=26}] ~ ~ ~ 1 0.1 1
damage @e[tag=kayraled,limit=1] 4 generic by @p[scores={char=26}] from @p[scores={char=26}]
tag @e remove kayraled

execute at @a[scores={char=26,s0_timer=6..}] run kill @e[tag=renegade_ebw_shot]

#kick in the balls

scoreboard players set @a[scores={char=26,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=26,s1_timer=1,CC_silence=1..}] s1_timer 260

effect clear @a[scores={char=26,CC_grounded=1..}] levitation
effect clear @a[scores={char=26,CC_root=1..}] levitation
effect clear @a[scores={char=26,CC_stun=1..}] levitation
effect clear @a[scores={char=26,CC_silence=1..}] levitation

execute at @a[scores={char=26,death_dash_reset=1..}] run kill @e[tag=renegade_dash]
execute at @a[scores={char=26,universal_death=1..}] run kill @e[tag=renegade_dash]
execute at @a[scores={char=26,CC_grounded=1..}] run kill @e[tag=renegade_dash]
execute at @a[scores={char=26,CC_root=1..}] run kill @e[tag=renegade_dash]
execute at @a[scores={char=26,CC_stun=1..}] run kill @e[tag=renegade_dash]
execute at @a[scores={char=26,CC_silence=1..}] run kill @e[tag=renegade_dash]

execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_melee] run summon marker ~ ~ ~ {Tags:["kick_in_the_balls","renegade_dash","entities_renegade"]}
execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_melee] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 0.5 1.2 1
execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_melee] run playsound entity.wither.shoot master @a[distance=..10] ~ ~ ~ 0.1 2 1

execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_ranged] run summon marker ~ ~ ~ {Tags:["backflip_v2","renegade_dash","entities_renegade"]}
execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_ranged] run particle cloud ~ ~ ~ 0.3 0.2 0.3 0.001 20 normal
execute at @a[scores={char=26,s1_timer=1,CC_silence=0},tag=kayral_ranged] run playsound entity.player.attack.weak master @a[distance=..10] ~ ~ ~ 1 1.2 1

tp @e[tag=renegade_dash,limit=1] @a[scores={char=26,s1_timer=1},limit=1]
execute at @a[scores={char=26,s1_timer=1},limit=1] run tp @e[tag=renegade_dash,limit=1] ~ ~0.5 ~
execute store result entity @e[tag=renegade_dash,limit=1] Rotation[1] float 1 run clear

execute at @e[tag=kick_in_the_balls] run particle crit ~ ~0.5 ~ 0.2 0.2 0.2 0.001 15 normal

execute as @e[tag=kick_in_the_balls] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=kick_in_the_balls] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=kick_in_the_balls] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=kick_in_the_balls] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=kick_in_the_balls] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=kick_in_the_balls] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=backflip_v2] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=backflip_v2] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s
execute as @e[tag=backflip_v2] at @s unless block ^ ^1 ^-0.5 #minecraft:dash run kill @s
execute as @e[tag=backflip_v2] at @s unless block ^ ^1.5 ^-1.5 #minecraft:dash run kill @s
execute as @e[tag=backflip_v2] at @s unless block ^ ^1 ^-1 #minecraft:dash run kill @s
execute as @e[tag=backflip_v2] at @s unless block ^ ^ ^-1 #minecraft:dash run kill @s

execute at @a[scores={char=26,s1_timer=1..3}] as @e[tag=backflip_v2] at @s run tp @s ^ ^0.15 ^
execute at @a[scores={char=26,s1_timer=4..6}] as @e[tag=backflip_v2] at @s run tp @s ^ ^0.1 ^
execute at @a[scores={char=26,s1_timer=7..8}] as @e[tag=backflip_v2] at @s run tp @s ^ ^-0.15 ^

execute as @e[tag=kick_in_the_balls] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=backflip_v2] at @s run tp @s ^ ^ ^-0.9

execute at @e[tag=backflip_v2] run effect give @a[scores={char=26}] speed 1 1 true
execute at @e[tag=kick_in_the_balls] as @e[tag=valid_spell_target,distance=..1.5,limit=1] unless score @s Team = @p[scores={char=26}] Team run tag @s add renegade_kicked

execute at @e[tag=renegade_kicked] run kill @e[tag=kick_in_the_balls]
execute at @e[tag=renegade_kicked] run tag @a[scores={char=26}] add add_cruelty
execute at @e[tag=renegade_kicked] run particle crit ~ ~0.5 ~ 0.3 0.1 0.3 0 10
scoreboard players set @e[tag=renegade_kicked] CC_stun 10
effect give @e[tag=renegade_kicked] blindness 1 0 true
execute if entity @e[tag=renegade_kicked] at @a[scores={char=26}] run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 1 0.5 1

damage @e[tag=renegade_kicked,limit=1] 3 generic by @p[scores={char=26}] from @p[scores={char=26}]
tag @e remove renegade_kicked

tp @a[scores={char=26,s1_timer=1..8,death_dash_reset=0}] @e[tag=renegade_dash,limit=1]
execute at @a[scores={char=26,s1_timer=4}] run kill @e[tag=kick_in_the_balls]
execute at @a[scores={char=26,s1_timer=4}] run kill @e[tag=backflip_v2]




#toxic blindness

scoreboard players set @a[scores={char=26,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=26,s2_timer=1,CC_silence=1..}] s2_timer 240


execute at @a[scores={char=26}] unless entity @e[tag=eyes_blindness] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["eyes_blindness","entities_renegade"],equipment:{},attributes:[{id:"minecraft:scale",base:1.5}]}
execute as @a[scores={char=26}] at @s run tp @e[tag=eyes_blindness] ^ ^0.5 ^-0.5 facing entity @p[scores={char=26}]

execute at @a[scores={char=26,s2_timer=1..30,CC_silence=0}] run playsound entity.wither_skeleton.ambient master @a[distance=..10] ~ ~ ~ 0.3 0.1 1
execute at @a[scores={char=26,s2_timer=2,CC_silence=0}] run playsound entity.enderman.ambient master @a[distance=..10] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=26,s2_timer=21,CC_silence=0}] run playsound item.crossbow.shoot master @a[distance=..15] ~ ~ ~ 1 0.4 1
execute at @a[scores={char=26,s2_timer=21,CC_silence=0}] run playsound entity.wither.shoot master @a[distance=..15] ~ ~ ~ 0.6 0.8 1
execute at @a[scores={char=26,s2_timer=21,CC_silence=0}] run playsound entity.phantom.death master @a[distance=..15] ~ ~ ~ 0.8 0.8 1
execute at @a[scores={char=26,s2_timer=21,CC_silence=0}] run summon marker ~ ~ ~ {Tags:["toxic_smoke_blast","projectile","entities_renegade"]}
scoreboard players operation @e[tag=projectile,tag=toxic_smoke_blast] Team = @p[scores={char=26}] Team
tp @e[tag=toxic_smoke_blast,limit=1] @a[scores={char=26,s2_timer=21},limit=1]
execute at @a[scores={char=26,s2_timer=21,CC_silence=0}] as @e[tag=toxic_smoke_blast,limit=1] at @s run tp @s ~ ~1.4 ~ 


execute as @a[scores={char=26,s2_timer=1..20,CC_silence=0}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function chars:renegade_smoke_shield

execute at @a[scores={char=26,s2_timer=1,CC_silence=0,s3_timer=0}] run data merge entity @e[tag=eyes_blindness,limit=1] {equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7208960},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1956923902,-1153610189,-1450835436,374665507],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ViOTMyMzU2NzY0YTQ3NTBhYmYzMmUxOTcyNTAyN2VkMzhiMzFkOTE3ZDE1YTdlMzIxOGFiYWNjOTYwNTgifX19"}]}},count:1}}}
execute at @a[scores={char=26,s2_timer=1..30,CC_silence=0,s3_timer=0}] at @e[tag=eyes_blindness] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~2 ~ 0.6 0.8 0.6 0.01 3 force
execute at @a[scores={char=26,s2_timer=1..30,CC_silence=0,s3_timer=0}] at @e[tag=eyes_blindness] run particle dust{color:[0.37,0.0,0.0],scale:1} ~ ~2 ~ 0.6 0.8 0.6 0.01 3 force
execute at @a[scores={char=26,s2_timer=1..30,CC_silence=0,s3_timer=0}] at @e[tag=eyes_blindness] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~2 ~ 1 1.2 1 0.01 3 force
execute at @a[scores={char=26,s2_timer=30}] run data merge entity @e[tag=eyes_blindness,limit=1] {equipment:{chest:{id:"air",count:1},head:{id:"air",count:1}}}


execute at @a[scores={char=26,s2_timer=21..34}] as @e[tag=toxic_smoke_blast] at @s run tp @s ^ ^ ^0.7
execute at @a[scores={char=26,s2_timer=35..44}] as @e[tag=toxic_smoke_blast] at @s run tp @s ^ ^ ^0.5
execute at @a[scores={char=26,s2_timer=45..}] as @e[tag=toxic_smoke_blast] at @s run tp @s ^ ^ ^0.3

execute at @a[scores={char=26,s2_timer=60..}] run kill @e[tag=toxic_smoke_blast]

execute at @e[tag=toxic_smoke_blast] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~ ~ 0.8 0.8 0.8 0.01 80 normal
execute at @e[tag=toxic_smoke_blast] run particle dust{color:[0.37,0.0,0.0],scale:1} ~ ~ ~ 0.8 0.8 0.8 0.01 80 normal
execute at @e[tag=toxic_smoke_blast] run particle smoke ~ ~ ~ 1 1 1 0.01 100 normal

execute at @e[tag=toxic_smoke_blast] positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s toxic_smoked matches 1.. unless score @s Team = @p[scores={char=26}] Team run scoreboard players set @s toxic_smoked 1

scoreboard players add @e[scores={toxic_smoked=1..}] toxic_smoked 1
effect give @e[scores={toxic_smoked=1..2}] blindness 3
effect give @e[scores={toxic_smoked=1..2}] glowing 3
execute at @e[scores={toxic_smoked=2}] run tag @a[scores={char=26}] add add_cruelty
execute at @e[scores={toxic_smoked=1..}] run particle smoke ~ ~1.5 ~ 0.3 0.3 0.3 0 20
execute as @e[scores={toxic_smoked=2}] run damage @s 3 generic by @p[scores={char=26}] from @p[scores={char=26}]
scoreboard players set @e[scores={toxic_smoked=50..}] toxic_smoked 0



#demon trigger

scoreboard players set @a[scores={char=26,cruelty=10}] cruelty 11
scoreboard players set @a[scores={char=26,cruelty=11..}] cruelty 11

execute as @a[scores={char=26,cruelty=0..9}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Cruelty: ",color:"red",bold:0b,type:"text"},{score:{name:"@s",objective:"cruelty"},color:"red",bold:0b,type:"score"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"10",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=26,cruelty=11..}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"Cruelty: ",color:"red",bold:0b,type:"text"},{text:"10",color:"red",bold:0b,type:"text"},{text:"/",color:"dark_red",bold:1b,type:"text"},{text:"10",color:"red",bold:0b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]
execute as @a[scores={char=26,demontrigger=1..}] run title @s[scores={char=26}] actionbar [{text:"[ ",color:"dark_red",bold:1b,type:"text"},{text:"KILL KILL KILL",color:"red",bold:1b,type:"text"},{text:" ]",color:"dark_red",bold:1b,type:"text"}]

execute at @a[tag=add_cruelty,scores={char=26,cruelty=..10}] run particle smoke ~ ~0.5 ~ 0.6 0.8 0.6 0.002 5
execute at @a[tag=add_cruelty,scores={char=26,cruelty=..10}] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~0.5 ~ 0.6 0.8 0.6 0.01 10 force

scoreboard players add @a[tag=add_cruelty,scores={char=26,cruelty=..10}] cruelty 1
tag @a remove add_cruelty


execute as @e[scores={char=26}] at @s run tp @e[tag=eyes] ^ ^0.5 ^-0.5
data modify entity @e[tag=eyes,limit=1] Rotation set from entity @p[scores={char=26}] Rotation
execute at @e[tag=eyes] run particle dust{color:[0.37,0.0,0.0],scale:1} ~ ~2 ~ 0.6 0.8 0.6 0.01 4 force
execute at @e[tag=eyes] run particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~2 ~ 0.6 0.8 0.6 0.01 4 force
execute at @e[tag=eyes] run particle dust{color:[1.0,0.67,0.0],scale:1} ~ ~2 ~ 1 1.2 1 0.01 1 force
execute at @e[tag=eyes] run particle smoke ~ ~1 ~ 1.5 1 1.5 0.01 5 force

scoreboard players set @a[scores={char=26,s3_timer=1}] cruelty 0
scoreboard players set @a[scores={char=26,s3_timer=1}] demontrigger 200
clear @a[scores={char=26,s3_timer=1..2}] *[custom_data={s3:1}]
execute at @a[scores={char=26,s3_timer=2}] run particle smoke ~ ~0.6 ~ 0.5 0.8 0.5 0.3 100
execute at @a[scores={char=26,s3_timer=2}] run playsound entity.wither.death master @a ~ ~ ~ 1 1.5 1
execute at @a[scores={char=26,s3_timer=5}] run playsound entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 1 1
execute at @a[scores={char=26,s3_timer=10}] run playsound entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @a[scores={char=26,s3_timer=15}] run playsound entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 0.6 1

scoreboard players remove @a[scores={char=26,demontrigger=1..}] demontrigger 1
scoreboard players set @a[scores={char=26,demontrigger=1..}] cruelty 0

scoreboard players add @a[scores={char=26,demontrigger=1..,universal_kill=1..}] demontrigger 100
execute at @a[scores={char=26,demontrigger=1..,universal_kill=1..}] run playsound entity.enderman.scream master @a[distance=..15] ~ ~ ~ 1 0.6 1

item replace entity @a[scores={char=26,demontrigger=2..200}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:-4.0d,operation:"add_value",slot:"head"},{id:"armor",type:"minecraft:movement_speed",amount:0.3d,operation:"add_multiplied_base",slot:"head"}],minecraft:profile={id:[I;-1525471341,42943223,-1836502789,1793436656],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAyYmFjYWQ2OTA4YThmOGI1OTg1NGNiYzJmZjc0YWFhMGNhNmZlMTU3YzQ0Yzc2ZTAwNjZkZjA1MWYxMGMwZCJ9fX0="}]}] 1
execute as @a[scores={char=26,s3_timer=2}] at @s run summon armor_stand ^ ^0.5 ^-0.5 {attributes:[{id:"minecraft:scale",base:1.5}],Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["eyes"],equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":7208960,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:silence"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;-1956923902,-1153610189,-1450835436,374665507],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ViOTMyMzU2NzY0YTQ3NTBhYmYzMmUxOTcyNTAyN2VkMzhiMzFkOTE3ZDE1YTdlMzIxOGFiYWNjOTYwNTgifX19"}]}},count:1}}}



execute at @a[scores={char=26,demontrigger=3}] run playsound entity.wither.hurt master @a ~ ~ ~ 1 0.2 1
execute at @a[scores={char=26,demontrigger=1..2}] run kill @e[tag=eyes]

item replace entity @a[scores={char=26,demontrigger=1..2}] armor.head with player_head[minecraft:custom_name="Head",minecraft:enchantments={"minecraft:projectile_protection":2,"minecraft:binding_curse":1},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:max_health",amount:-4.0d,operation:"add_value",slot:"head"}],minecraft:profile={id:[I;-1658334643,491734479,-2036031261,-2059642805],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY2NDUzNmY1MjY5NTIyNTc0Yjk5YjdkYmRlZjQ1YzM3N2I4ZWU2ZTI4NzA0YWZjY2JlYjljZjRkOTUxZGZhNCJ9fX0="}]}] 1





#eyes wings

execute if entity @e[tag=eyes] unless entity @e[tag=eyes_wingL] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["eyes_wingL","eyes_wings"],equipment:{head:{id:"minecraft:red_banner",count:1}},attributes:[{id:"minecraft:scale",base:1.5}]}
execute if entity @e[tag=eyes] unless entity @e[tag=eyes_wingR] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["eyes_wingR","eyes_wings"],equipment:{head:{id:"minecraft:red_banner",count:1}},attributes:[{id:"minecraft:scale",base:1.5}]}

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

scoreboard players set @a[scores={char=26}] MaxHP 16


scoreboard players add @a[scores={s0_timer=1..,char=26}] s0_timer 1
scoreboard players add @a[scores={s0_timer=2..,char=26},tag=sentrymode] s0_timer 2
scoreboard players set @a[scores={s0_timer=21..,demontrigger=1..,char=26}] s0_timer 31
scoreboard players set @a[scores={s0_timer=30..,char=26}] s0_timer 0

scoreboard players set @a[scores={s1_timer=1,char=26}] spellCD1 260
scoreboard players add @a[scores={s1_timer=1..,char=26}] s1_timer 1
scoreboard players set @a[scores={s1_timer=261..,char=26}] s1_timer 0

scoreboard players set @a[scores={s2_timer=1,char=26}] spellCD2 300
scoreboard players add @a[scores={s2_timer=1..,char=26}] s2_timer 1
scoreboard players set @a[scores={s2_timer=301..,char=26}] s2_timer 0

scoreboard players add @a[scores={s3_timer=1..,char=26}] s3_timer 1
scoreboard players set @a[scores={s3_timer=30..,char=26}] s3_timer 0

execute as @a[scores={char=26},tag=kayral_melee] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:cherry_button",Slot:0b}]}] run clear @a[scores={char=26}] cherry_button
item replace entity @a[scores={char=26,demontrigger=0},tag=kayral_melee] hotbar.0 with cherry_button[custom_data={warden:1},minecraft:custom_name={bold:1b,color:"gray",text:"Fists"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.5d,operation:"add_multiplied_base",slot:"mainhand"}]] 1
item replace entity @a[scores={char=26,demontrigger=1..},tag=kayral_melee] hotbar.0 with cherry_button[minecraft:item_model="minecraft:mangrove_button",custom_data={warden:1},minecraft:custom_name={bold:1b,color:"gray",text:"Fists"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2.5d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.35d,operation:"add_multiplied_base",slot:"mainhand"}]] 1

execute as @a[scores={char=26},tag=kayral_ranged] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:0b}]}] run clear @a[scores={char=26}] warped_fungus_on_a_stick[custom_data={s0:1}]
item replace entity @a[scores={char=26,s0_timer=0},tag=kayral_ranged] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"E.B.W."},minecraft:unbreakable={},minecraft:charged_projectiles=[{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:levitation",amplifier:1,duration:1,show_particles:1b,show_icon:0b}]}}}]] 1
item replace entity @a[scores={char=26,s0_timer=1..},tag=kayral_ranged] hotbar.0 with warped_fungus_on_a_stick[custom_data={s0:1},minecraft:item_model="minecraft:crossbow",minecraft:custom_name={bold:1b,color:"gray",text:"E.B.W."},minecraft:unbreakable={}] 1


execute as @a[scores={char=26,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=26}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=26,s1_timer=0,CC_silence=0},tag=kayral_melee] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:copper_boots",minecraft:custom_name={text:"Where It Hurts",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=26,s1_timer=0,CC_silence=0},tag=kayral_ranged] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:iron_boots",minecraft:custom_name={text:"Backstep",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=26,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=26}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=26,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:magma_cube_spawn_egg",minecraft:custom_name={text:"Eyes See You",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=26,s3_timer=0,CC_silence=0,cruelty=11..}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:3b}]}] run clear @a[scores={char=26}] carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=26,s3_timer=0,CC_silence=0,cruelty=11..}] hotbar.3 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:nether_gold_ore",minecraft:custom_name={text:"Demon Trigger",color:"dark_aqua",bold:1b}] 1
