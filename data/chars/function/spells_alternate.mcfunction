kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:blaze_powder"}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_shovel"}}]

#distance
execute as @a[scores={char=71}] run tag @s add alternate_no_enemy
execute as @a[scores={char=71}] at @s as @e[distance=..4.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run tag @p[scores={char=71}] remove alternate_no_enemy

#thymm
#execute if entity @p[scores={s3_timer=0}] run scoreboard players set @e[tag=alt_demon_display1] s0_timer 0
effect give @a[scores={char=71}] weakness 1 100 true

execute unless entity @e[tag=alt_demon_display1] at @a[scores={char=71}] run summon armor_stand ~ ~ ~ {Pose:{LeftArm:[0f,0f,320f],RightArm:[0f,0f,42f],LeftLeg:[0f,0f,17f],RightLeg:[0f,0f,345f]},ShowArms:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1b,Tags:["alt_demon_display1","entities_alternate","altspawned"],equipment:{head:{id:"minecraft:player_head",components:{profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTJiODkxNWUwMGZhNGMwNDRhOTQ1NDE3MGQzMTU0MDEzN2I0MDI3OTJlMmNkMmZlOGYwOTM0YzA2YzYxMWU0ZCJ9fX0="}]}}},chest:{id:leather_chestplate,components:{trim:{pattern:silence,material:netherite},dyed_color:1908001}},legs:{id:netherite_leggings},feet:{id:leather_boots,components:{trim:{pattern:silence,material:netherite},dyed_color:1908001}}}}
execute unless entity @e[tag=alt_demon_display2] at @a[scores={char=71}] run summon armor_stand ~ ~ ~ {Pose:{Body:[6f,0f,0f],LeftLeg:[0f,0f,239f],RightLeg:[0f,0f,113f]},ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Silent:1b,Rotation:[0f,0],Tags:["alt_demon_display2","entities_alternate"],equipment:{legs:{id:netherite_leggings},feet:{id:leather_boots,components:{trim:{pattern:silence,material:netherite},dyed_color:1908001}}}}

scoreboard players set @e[tag=altspawned] s0_timer 0
tag @e[tag=altspawned] remove altspawned

execute at @a[scores={char=71}] unless entity @e[tag=alt_shot] rotated as @p[scores={char=71}] rotated ~ 0 run tp @e[tag=alt_demon_display1,scores={s0_timer=0}] ^ ^2.3 ^-0.7 facing ^ ^ ^10
execute at @e[tag=alt_shot] rotated as @n[tag=alt_shot] rotated ~ 0 run tp @e[tag=alt_demon_display1,scores={s0_timer=0}] ^ ^-0.3 ^-0.3 facing ^ ^ ^10

execute at @e[tag=alt_demon_display1] rotated as @p[scores={char=71}] rotated ~ 0 run tp @e[tag=alt_demon_display2] ~ ~ ~ facing ^ ^ ^10

execute unless entity @e[tag=alt_shot] unless score @n[tag=alt_demon_display1] s0_timer matches 1..20 as @n[tag=alt_demon_display1] run data merge entity @s {Pose:{LeftArm:[0f,0f,320f],RightArm:[0f,0f,42f],LeftLeg:[0f,0f,17f],RightLeg:[0f,0f,345f]}}
execute if score @n[tag=alt_demon_display1] s0_timer matches 1..20 as @n[tag=alt_demon_display1] run data merge entity @s {Pose:{LeftArm:[46f,342f,0f],RightArm:[46f,19f,0f]},ShowArms:1b}
execute if entity @e[tag=alt_shot] as @n[tag=alt_demon_display1] run data merge entity @s {Pose:{LeftArm:[46f,342f,0f],RightArm:[46f,19f,0f]},ShowArms:1b}
execute unless entity @e[tag=alt_shot] unless score @n[tag=alt_demon_display1] s0_timer matches 1..20 as @n[tag=alt_demon_display2] run data merge entity @s {Pose:{Body:[6f,0f,0f],LeftLeg:[0f,0f,239f],RightLeg:[0f,0f,113f]}}
execute if score @n[tag=alt_demon_display1] s0_timer matches 1..20 run data merge entity @s {Pose:{LeftLeg:[51f,0f,325f],RightLeg:[51f,0f,52f]},ShowArms:1b}
execute if entity @e[tag=alt_shot] as @n[tag=alt_demon_display2] run data merge entity @s {Pose:{LeftLeg:[51f,0f,325f],RightLeg:[51f,0f,52f]},ShowArms:1b}

execute at @a[scores={char=71}] at @e[tag=alt_demon_display1] run particle dust{color:[0.000,0.000,0.000],scale:2} ~ ~1 ~ 0.2 0.2 0.2 0 5 normal
execute at @a[scores={char=71}] at @e[tag=alt_shot] run particle dust{color:[0.000,0.000,0.000],scale:2.5} ~ ~1 ~ 0.2 0.2 0.2 0 15 normal

#thymm the yapper
title @a[scores={char=71,universal_kill=1..}] actionbar ["",{text:"{",bold:true,color:"black"},{text:" Good Job ",color:"gray"},{text:"}",bold:true,color:"black"}]
execute as @a[scores={char=71,universal_kill=1..}] at @s run playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 1 0.6

title @a[scores={char=71,universal_death=1..}] actionbar ["",{text:"{",bold:true,color:"black"},{text:" Idiot ",color:"gray"},{text:"}",bold:true,color:"black"}]
execute as @a[scores={char=71,universal_death=1..}] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 0.8

title @a[scores={char=71,CC_madness=35..80}] actionbar ["",{text:"{",bold:true,color:"black"},{text:" It's not really hard to see me when I'm floating above his head ",color:"gray"},{text:"}",bold:true,color:"black"}]
execute as @a[scores={char=71,CC_madness=80}] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 0.8

title @a[scores={char=71,CC_franklofied=35..80}] actionbar ["",{text:"{",bold:true,color:"black"},{text:" Wow is that BREVE GREAVESOYL?! ",color:"gray"},{text:"}",bold:true,color:"black"}]

#friend/calm precision

#percision
scoreboard players set @a[scores={char=71,s3_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=71,s3_timer=1,CC_silence=1..}] s3_timer 61

scoreboard players set @a[scores={char=71,s3_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=71,s3_timer=1,CC_silence=1..}] s3_timer 61

execute as @a[scores={char=71}] run tag @s add alternate_no_enemy
execute as @a[scores={char=71}] at @s as @e[distance=..3.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run tag @p[scores={char=71}] remove alternate_no_enemy

execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=alternate_no_enemy] run playsound entity.player.attack.sweep master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=alternate_no_enemy] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:iron_sword",Count:1},item_display:"none",transformation:[-0.7071067812f,-0.7071067812f,0f,0f,0f,0f,1f,0f,-0.7071067812f,0.7071067812f,0f,0f,0f,0f,0f,1f],Tags:["alt_homing_shot_display","entities_alternate"]}],Tags:["alt_homing_shot","projectile","entities_alternate"]}
scoreboard players operation @e[tag=alt_homing_shot,tag=projectile] Team = @p[scores={char=71}] Team
tp @e[tag=alt_homing_shot,limit=1] @a[scores={char=71,s3_timer=1},limit=1]
execute if entity @a[scores={char=71,s3_timer=1},limit=1] as @e[tag=alt_homing_shot,limit=1] at @s run tp @s ~ ~1 ~

execute as @e[tag=alt_homing_shot] at @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=alt_homing_shot] at @s run tp @s ^ ^ ^1
execute as @e[tag=alt_homing_shot] at @s unless block ^ ^ ^0.1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["alternate_boom","entities_alternate"]}

execute at @e[tag=alt_homing_shot] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] unless score @s Team = @p[scores={char=71}] Team positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["alternate_boom","entities_alternate"]}
execute at @e[tag=alt_homing_shot] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target,nbt={active_effects:[{id:"minecraft:glowing"}]}] unless score @s Team = @p[scores={char=71}] Team positioned ~0.5 ~0.5 ~0.5 run tag @s add alt_flash
execute at @a[scores={char=71,s3_timer=50..}] run kill @e[tag=alt_homing_shot]

execute if entity @e[tag=alternate_boom] run kill @e[tag=alt_homing_shot]
execute at @e[tag=alternate_boom] run playsound block.stone.break master @a[distance=..15] ~ ~ ~ 1 0.8 1
execute at @e[tag=alternate_boom] run particle crit ~ ~ ~ 0.4 0.4 0.4 0.05 50 force
execute at @e[tag=alternate_boom] as @e[distance=..2.4,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run damage @s 3 generic by @p[scores={char=71}] from @p[scores={char=71}]

kill @e[tag=alternate_boom]
execute unless entity @e[tag=alt_homing_shot] run kill @e[tag=alt_homing_shot_display]

execute if entity @e[tag=alt_flash] run kill @e[tag=alt_homing_shot]
execute as @e[tag=alt_flash] at @s as @e[distance=..4,tag=valid_spell_target,tag=!alt_flash] unless score @s Team = @p[scores={char=71}] Team run damage @s 2 generic by @p[scores={char=71}] from @p[scores={char=71}]
execute as @e[tag=alt_flash] at @s as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run effect give @s blindness 2 1 true
execute as @e[tag=alt_flash] at @s run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1
execute as @e[tag=alt_flash] at @s run playsound block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 1 0.8
execute as @e[tag=alt_flash] at @s run playsound entity.wither.break_block master @a[distance=..15] ~ ~ ~ 1 1.2
execute as @e[tag=alt_flash] at @s run effect clear @s glowing
execute as @e[tag=alt_flash] at @s run damage @s 5 generic by @p[scores={char=71}] from @p[scores={char=71}]

execute as @e[tag=alt_flash] at @s run tag @s remove alt_flash

#friend inside me
execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] unless score @n[tag=alt_demon_display1] s0_timer matches 1.. run scoreboard players set @n[tag=alt_demon_display1] s0_timer 1

execute as @n[tag=alt_demon_display1,scores={s0_timer=1}] at @p[scores={char=71}] rotated as @p[scores={char=71}] rotated ~ 0 run tp @s ^ ^ ^1 facing ^ ^ ^10
execute as @n[tag=alt_demon_display1,scores={s0_timer=1..}] run scoreboard players add @s s0_timer 1
execute as @n[tag=alt_demon_display1,scores={s0_timer=1..10}] at @s run tp @s ^ ^ ^0.4
execute as @n[tag=alt_demon_display1,scores={s0_timer=11..12}] at @s run tp @s ^ ^ ^0.3
execute as @n[tag=alt_demon_display1,scores={s0_timer=13..20}] at @s run tp @s ^ ^ ^0.2
execute as @n[tag=alt_demon_display1,scores={s0_timer=2}] run tag @e[tag=alt_demon_display1] add alt_s0_dash
execute as @n[tag=alt_demon_display1,scores={s0_timer=2..20},tag=alt_s0_dash] at @s as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run damage @s 3 player_attack by @p[scores={char=71}] from @p[scores={char=71}]
execute as @n[tag=alt_demon_display1,scores={s0_timer=2..20},tag=alt_s0_dash] at @s as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run playsound entity.player.attack.strong master @a[distance=..10] ~ ~ ~ 2
execute as @n[tag=alt_demon_display1,scores={s0_timer=2..20},tag=alt_s0_dash] at @s as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run execute as @n[tag=alt_demon_display1] at @s run particle sweep_attack ~ ~1 ~ 0.6 0.6 0.6 0 20
execute as @n[tag=alt_demon_display1,scores={s0_timer=2..20},tag=alt_s0_dash] at @s as @e[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run tag @e[tag=alt_demon_display1] remove alt_s0_dash
execute as @n[tag=alt_demon_display1,scores={s0_timer=20..}] run tag @e[tag=alt_s0_dash] remove alt_s0_dash
execute as @n[tag=alt_demon_display1,scores={s0_timer=20..50}] at @s run particle smoke ~ ~1 ~ 1 1 1 0 3
execute as @n[tag=alt_demon_display1,scores={s0_timer=20..50}] if entity @a[tag=alt_pull1] run scoreboard players set @s s0_timer 18
execute as @n[tag=alt_demon_display1,scores={s0_timer=51..}] run scoreboard players set @s s0_timer 0

#xecute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] run playsound entity.lightning_bolt.thunder master @a[distance=..10] ~ ~ ~ 1 2 1
#execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] run particle smoke ~ ~1 ~ 1 1 1 1 150 force
#execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 15 force
#execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] run particle flash{color:[0.000,0.000,0.000,0.00]} ~ ~ ~ 0 0 0 0.01 1 force
#execute at @a[scores={char=71,s3_timer=1,CC_silence=0},tag=!alternate_no_enemy] as @e[distance=..3.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run damage @s 4 player_attack by @p[scores={char=71}] from @p[scores={char=71}]

#biden blast

execute as @a[scores={char=71,death_dash_reset=1..}] run tag @s remove alt_pull1
execute as @a[scores={char=71,death_dash_reset=1..}] run tag @s remove alt_pull2


scoreboard players set @a[scores={char=71,s1_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players add @a[scores={char=71,s1_timer=1,CC_silence=1..}] s1_timer 180

execute as @a[scores={char=71,s1_timer=1,CC_silence=0}] at @s positioned ~ ~1.4 ~ run function chars:alternate_raycast_2
execute as @a[scores={char=71,s1_timer=1,CC_silence=0}] at @s run playsound block.beacon.power_select master @a[distance=..15] ~ ~ ~ 1 2

execute as @a[tag=alt_pull2] at @s run summon armor_stand ~ ~-0.2 ~ {Tags:["alt_pull","entities_alternate"],Invisible:1b,Marker:0b,Small:1b}
execute as @a[tag=alt_pull2] run tag @s remove alt_pull2

execute as @e[tag=alt_pull] at @s run tp @s ^ ^ ^0.5 facing entity @n[tag=alt_demon_display1] eyes
execute as @e[tag=alt_pull] at @s if entity @n[tag=alt_demon_display1,distance=4..] run tp @s ^ ^ ^0.5 facing entity @n[tag=alt_demon_display1] eyes
execute as @a[tag=alt_pull1] at @s run ride @s mount @n[tag=alt_pull]
execute as @a[tag=alt_pull1] at @s run title @s actionbar ""
execute as @a[tag=alt_pull1] at @s run particle dust{color:[0.000,0.000,0.000],scale:3} ~ ~1 ~ 0.6 0.6 0.6 0 15
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] run particle sweep_attack ~ ~1 ~ 1.5 1.5 1.5 0 10
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 1 0.8
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] as @a[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run scoreboard players set @s CC_stun 20
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] as @a[distance=..5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run tag @s add alt_damage_stun
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] run kill @e[tag=alt_pull]
execute as @a[tag=alt_pull1] at @s if entity @e[tag=alt_demon_display1,distance=..2] run tag @s remove alt_pull1

execute as @e[tag=alt_damage_stun,scores={CC_stun=1..}] at @s run particle sweep_attack ~ ~1 ~ 0.6 0.6 0.6 0 5
execute as @e[tag=alt_damage_stun,scores={CC_stun=1}] run damage @s 3 generic by @p[scores={char=71}] from @p[scores={char=71}]
execute as @e[tag=alt_damage_stun,scores={CC_stun=1}] at @s run particle crit ~ ~1 ~ 0.6 0.6 0.6 0.2 25
execute as @e[tag=alt_damage_stun,scores={CC_stun=1}] at @s run playsound entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 1 0.8
execute as @e[tag=alt_damage_stun,scores={CC_stun=1}] run tag @s remove alt_damage_stun

#slam/big shot

scoreboard players set @a[scores={char=71,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=71,s2_timer=1,CC_silence=1..}] s2_timer 71

execute as @a[scores={char=71,s2_timer=40}] at @s run execute unless score @n[tag=alt_shot] s2_timer matches 1.. as @e[tag=alt_shot] at @s run scoreboard players add @e[tag=alt_shot] s2_timer 1


execute as @a[scores={char=71,s2_timer=1,CC_silence=0}] at @s run playsound entity.ender_dragon.flap master @a[distance=..15] ~ ~ ~ 1.0 1.2 1.0
execute as @a[scores={char=71,s2_timer=1,CC_silence=0}] at @s run effect give @s levitation 1 20 true
execute as @a[scores={char=71,s2_timer=1,CC_silence=0}] at @s run effect give @s speed 1 14 true
execute as @a[scores={char=71,s2_timer=7,CC_silence=0}] at @s run effect clear @s speed
execute as @a[scores={char=71,s2_timer=7,CC_silence=0}] at @s run effect clear @s levitation
execute as @a[scores={char=71,s2_timer=7,CC_silence=0}] at @s run effect give @s slow_falling 1 14 true
execute as @a[scores={char=71,s2_timer=17,CC_silence=0}] at @s run effect clear @s slow_falling

clear @a[scores={char=71,s2_timer_recast=1..3,CC_silence=0}] *[custom_data={s2:2}]

execute at @a[scores={char=71,s2_timer_recast=1,CC_silence=0}] positioned ~ ~1.8 ~ positioned ^ ^ ^1.8 unless entity @a[scores={char=71},distance=..0.25] run playsound entity.shulker.shoot master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=71,s2_timer_recast=1,CC_silence=0}] positioned ~ ~1.8 ~ positioned ^ ^ ^1.8 unless entity @a[scores={char=71},distance=..0.25] run summon item_display ~ ~1 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:air",count:1},Tags:["alt_shot","projectile","entities_alternate"]}
execute at @a[scores={char=71,s2_timer_recast=1,CC_silence=0}] positioned ~ ~1.8 ~ positioned ^ ^ ^1.8 if entity @a[scores={char=71},distance=..0.25] run function chars:alternate_raycast
scoreboard players operation @e[tag=alt_shot,tag=chillrend] Team = @p[scores={char=71}] Team
tp @e[tag=alt_shot,limit=1] @a[scores={char=71,s2_timer_recast=1},limit=1]
execute if entity @a[scores={char=71,s2_timer_recast=1},limit=1] as @e[tag=alt_shot,limit=1] at @s run tp @s ~ ~1 ~

execute as @e[tag=alt_shot] at @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=alt_shot] at @s unless score @n[tag=alt_shot] s2_timer matches 1.. run tp @s ^ ^ ^1.2
execute as @e[tag=alt_shot] at @s unless score @n[tag=alt_shot] s2_timer matches 1.. unless block ^ ^ ^1 #minecraft:dash run summon marker ~ ~ ~ {Tags:["alternate_boom2","entities_alternate"]}

execute at @e[tag=alt_shot] unless score @n[tag=alt_shot] s2_timer matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["alternate_boom2","entities_alternate"]}
execute at @a[scores={char=71,s2_timer=80..}] run kill @e[tag=alt_shot]

execute if entity @e[tag=alternate_boom2] run scoreboard players add @e[tag=alt_shot] s2_timer 1

execute as @e[tag=alt_shot,scores={s2_timer=1..}] run scoreboard players add @s s2_timer 1
execute as @e[tag=alt_shot,scores={s2_timer=1..80}] at @s run particle smoke ~ ~1 ~ 1 1 1 0 3
execute as @e[tag=alt_shot,scores={s2_timer=1..80}] at @s run tp @s ~ ~0.01 ~
execute as @e[tag=alt_shot,scores={s2_timer=1..80}] at @s if entity @a[tag=alt_pull1] run scoreboard players set @s s2_timer 40
execute as @e[tag=alt_shot,scores={s2_timer=80..}] run kill @s

execute at @e[tag=alternate_boom2] run playsound entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 1 0.7 1
execute at @e[tag=alternate_boom2] run particle flash{color:[0.000,0.000,0.000,0.00]} ~ ~ ~ 0 0 0 0.01 1 force
execute at @e[tag=alternate_boom2] run particle smoke ~ ~ ~ 0.6 0.6 0.6 0.15 50 force
execute at @e[tag=alternate_boom2] at @n[distance=..3,tag=valid_spell_target] run particle sweep_attack ~ ~ ~ 0.6 0.6 0.6 0.05 50 force
execute at @e[tag=alternate_boom2] as @n[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run damage @s 4 generic by @p[scores={char=71}] from @p[scores={char=71}]

kill @e[tag=alternate_boom2]

# Alternate

scoreboard players set @a[scores={s3_timer=1,char=71},tag=alternate_no_enemy] spellCD0alt1 60
scoreboard players set @a[scores={s3_timer=1,char=71},tag=!alternate_no_enemy] spellCD0alt2 60
scoreboard players add @a[scores={s3_timer=1..,char=71}] s3_timer 1
scoreboard players set @a[scores={s3_timer=61..,char=71}] s3_timer 0

scoreboard players set @a[scores={s1_timer=1,char=71}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=71}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=71}] s1_timer 0

scoreboard players set @a[scores={s2_timer=35,char=71}] spellCD2 340
scoreboard players add @a[scores={s2_timer=1..,char=71}] s2_timer 1
scoreboard players set @a[scores={s2_timer=361..,char=71}] s2_timer 0
scoreboard players add @a[scores={s2_timer_recast=1..,char=71}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer_recast=20..,char=71}] s2_timer_recast 0
scoreboard players set @a[scores={s2_timer=361..,char=71}] s2_timer_recast 0

execute as @a[scores={char=71,s3_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b,}]}] run clear @a[scores={char=71}] minecraft:carrot_on_a_stick[custom_data={s3:1}]
item replace entity @a[scores={char=71,spellCD0alt1=0},tag=alternate_no_enemy] hotbar.0 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:light_gray_candle",minecraft:custom_name={text:"Calm Precision",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=71,spellCD0alt2=0},tag=!alternate_no_enemy] hotbar.0 with carrot_on_a_stick[custom_data={s3:1},minecraft:item_model="minecraft:black_candle",minecraft:custom_name={text:"Friend From the Dark",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=71,s1_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=71}] minecraft:carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=71,s1_timer=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:golden_nautilus_armor",minecraft:custom_name={text:"Luminous Blast",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=71,s2_timer=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=71}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=71,s2_timer=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:bat_spawn_egg",minecraft:custom_name={text:"Leap Over",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=71,s2_timer=1..35,s2_timer_recast=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=71}] minecraft:warped_fungus_on_a_stick
item replace entity @a[scores={char=71,s2_timer=5..10,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[damage=0,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:black_glazed_terracotta",minecraft:custom_name={text:"Crush",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=71,s2_timer=11..20,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[damage=1,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:black_glazed_terracotta",minecraft:custom_name={text:"Crush",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=71,s2_timer=21..30,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[damage=2,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:black_glazed_terracotta",minecraft:custom_name={text:"Crush",color:"dark_aqua",bold:1b}] 1
item replace entity @a[scores={char=71,s2_timer=30..35,s2_timer_recast=0}] hotbar.2 with warped_fungus_on_a_stick[damage=3,max_damage=4,custom_data={s2:2},minecraft:item_model="minecraft:black_glazed_terracotta",minecraft:custom_name={text:"Crush",color:"dark_aqua",bold:1b}] 1
