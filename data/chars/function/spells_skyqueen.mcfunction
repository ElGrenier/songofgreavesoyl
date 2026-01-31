kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe"}}]



#P
effect give @a[scores={char=14}] speed 1 0 true
execute at @a[scores={char=14}] as @p[distance=1..7,tag=valid_spell_target,limit=1] if score @s Team = @p[scores={char=14}] Team run effect give @s speed 1 0 true

#pin the prey

execute at @a[scores={char=14,death_dash_reset=1..}] run kill @e[tag=birbdash]
execute at @a[scores={char=14,universal_death=1..}] run kill @e[tag=birbdash]
execute at @a[scores={char=14,CC_grounded=1..}] run kill @e[tag=birbdash]
execute at @a[scores={char=14,CC_root=1..}] run kill @e[tag=birbdash]
execute at @a[scores={char=14,CC_stun=1..}] run kill @e[tag=birbdash]
execute at @a[scores={char=14,CC_silence=1..}] run kill @e[tag=birbdash]

scoreboard players set @a[scores={char=14,s1_timer=1,CC_silence=1..}] spellCD1 20
scoreboard players set @a[scores={char=14,s1_timer=1,CC_silence=1..}] s1_timer 160

execute at @a[scores={char=14,s1_timer=1,CC_silence=0}] run playsound entity.zombie.infect master @a[distance=..10] ~ ~ ~ 1 2 1
execute at @a[scores={char=14,s1_timer=2}] run summon marker ~ ~ ~ {Tags:["birbdash","entities_skyqueen"]}
tp @e[tag=birbdash,limit=1] @a[scores={char=14,s1_timer=2},limit=1]
execute at @a[scores={char=14,s1_timer=2},limit=1] run tp @e[tag=birbdash,limit=1] ~ ~0.5 ~

execute as @e[tag=birbdash] at @s unless block ~ ~ ~ #minecraft:dash run kill @s
execute as @e[tag=birbdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s
execute as @e[tag=birbdash] at @s unless block ^ ^1 ^0.5 #minecraft:dash run kill @s
execute as @e[tag=birbdash] at @s unless block ^ ^1.5 ^1.5 #minecraft:dash run kill @s
execute as @e[tag=birbdash] at @s unless block ^ ^1 ^1 #minecraft:dash run kill @s
execute as @e[tag=birbdash] at @s unless block ^ ^ ^1 #minecraft:dash run kill @s

execute as @e[tag=birbdash] at @s run tp @s ^ ^ ^1
tp @a[scores={char=14,s1_timer=2..9,death_dash_reset=0}] @e[tag=birbdash,limit=1]

execute at @a[scores={char=14,s1_timer=10}] run kill @e[tag=birbdash]
execute as @a[scores={char=14,s1_timer=10}] at @s unless block ~ ~ ~ #minecraft:dash run tp @s ~ ~1 ~

execute at @a[scores={char=14,s1_timer=1,CC_silence=0}] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.01 7

execute at @a[scores={char=14,s1_timer=1..10,CC_silence=0}] run particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0.01 2
execute at @a[scores={char=14,s1_timer=1..10,CC_silence=0}] run particle crit ~ ~ ~ 0.4 0.4 0.4 0.01 4
execute at @a[scores={char=14,s1_timer=1..10,CC_silence=0}] as @a[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=14}] Team run effect clear @s levitation
execute at @a[scores={char=14,s1_timer=1..10,CC_silence=0}] as @a[distance=..2,tag=valid_spell_target] unless score @s Team = @p[scores={char=14}] Team run scoreboard players set @s CC_grounded 40


#nesting storm

scoreboard players set @a[scores={char=14,s2_timer=1,CC_silence=1..}] spellCD2 20
scoreboard players set @a[scores={char=14,s2_timer=1,CC_silence=1..}] s2_timer 300

execute at @a[scores={char=14}] as @a[distance=0.1..7] if score @s Team = @p[scores={char=14}] Team run tag @s add skyqueen_valid_protection_target
execute at @a[scores={char=14}] as @a[distance=7.1..] if score @s Team = @p[scores={char=14}] Team run tag @s remove skyqueen_valid_protection_target
execute at @a[scores={char=14}] as @a unless score @s Team = @p[scores={char=14}] Team run tag @s remove skyqueen_valid_protection_target

execute at @a[scores={char=14,s2_timer=1,CC_silence=0}] run tag @p[scores={char=14}] add nest
execute at @a[scores={char=14,s2_timer=1,CC_silence=0}] run clear @a[scores={char=14}] *[minecraft:custom_data={s2:1}]

execute at @a[scores={char=14,s2_timer_recast=1}] unless entity @p[distance=1..7,tag=skyqueen_valid_protection_target] run scoreboard players set @a[scores={char=14}] s2_timer_recast 0

execute at @a[scores={char=14,s2_timer_recast=1}] if entity @p[distance=1..7,tag=skyqueen_valid_protection_target] run tag @a[scores={char=14}] remove nest
execute at @a[scores={char=14,s2_timer_recast=1}] if entity @p[distance=1..7,tag=skyqueen_valid_protection_target] run scoreboard players set @a nestduration 0
execute at @a[scores={char=14,s2_timer_recast=1}] run tag @p[distance=1..7,tag=skyqueen_valid_protection_target] add nest

execute at @a[scores={char=14,s2_timer_recast=1,CC_silence=0}] run clear @a[scores={char=14}] *[minecraft:custom_data={s1:2}]

execute at @a[scores={nestduration=79..}] run playsound entity.breeze.shoot master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @a[scores={nestduration=1..60}] run playsound entity.breeze.inhale master @a[distance=..10] ~ ~ ~ 0.1 0.2 1
scoreboard players add @a[tag=nest] nestduration 1
effect give @a[scores={nestduration=1..60}] resistance 2 1
execute at @a[scores={nestduration=80..}] run particle cloud ~ ~ ~ 2 1 2 0.0001 100 normal
execute at @a[scores={nestduration=80..}] as @a[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=14}] Team run scoreboard players set @s CC_knockup 20
tag @a[scores={nestduration=80..}] remove nest
scoreboard players set @a[scores={nestduration=80..}] nestduration 0


execute at @e[tag=nest] run particle cloud ~ ~1 ~ 0.9 0.6 0.9 0.0001 2 normal

execute unless entity @a[tag=nest] run kill @e[tag=nest_visuals]

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_core_1] run summon marker ~ ~ ~ {Tags:["nest_visuals_core_1","nest_visuals","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_core_2] run summon marker ~ ~ ~ {Tags:["nest_visuals_core_2","nest_visuals","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_core_3] run summon marker ~ ~ ~ {Tags:["nest_visuals_core_3","nest_visuals","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_1] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_1","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_2] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_2","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_3] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_3","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_4] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_4","nest_visuals","nest_visuals_t1","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_5] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_5","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_6] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_6","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_7] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_7","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_8] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_8","nest_visuals","nest_visuals_t2","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_9] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_9","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_10] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_10","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_11] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_11","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_12] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_12","nest_visuals","nest_visuals_t3","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_13] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_13","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_14] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_14","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_15] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_15","nest_visuals","nest_visuals_t1","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_16] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_16","nest_visuals","nest_visuals_t1","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_17] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_17","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_18] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_18","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_19] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_19","nest_visuals","nest_visuals_t2","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_20] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_20","nest_visuals","nest_visuals_t2","entities_skyqueen"]}

execute at @a[tag=nest] unless entity @e[tag=nest_visuals_21] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_21","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_22] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_22","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_23] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_23","nest_visuals","nest_visuals_t3","entities_skyqueen"]}
execute at @a[tag=nest] unless entity @e[tag=nest_visuals_24] run summon block_display ~ ~ ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:white_stained_glass"},Tags:["nest_visuals_24","nest_visuals","nest_visuals_t3","entities_skyqueen"]}

execute as @a[tag=nest] at @s run tp @e[tag=nest_visuals_core_1] ~ ~1.5 ~
execute as @a[tag=nest] at @s run tp @e[tag=nest_visuals_core_2] ~ ~0.9 ~
execute as @a[tag=nest] at @s run tp @e[tag=nest_visuals_core_3] ~ ~0.3 ~
execute as @e[tag=nest_visuals_core_1] at @s run tp @s ~ ~ ~ ~-11 0
execute as @e[tag=nest_visuals_core_2] at @s run tp @s ~ ~ ~ ~11 0
execute as @e[tag=nest_visuals_core_3] at @s run tp @s ~ ~ ~ ~-11 0

execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_1] ^-1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_2] ^-1.2 ^ ^-1.2
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_3] ^1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_4] ^1.2 ^ ^-1.2
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_13] ^1.5 ^ ^
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_14] ^-1.5 ^ ^
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_15] ^ ^ ^1.5
execute as @e[tag=nest_visuals_core_1] at @s run tp @e[tag=nest_visuals_16] ^ ^ ^-1.5

execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_5] ^-1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_6] ^-1.2 ^ ^-1.2
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_7] ^1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_8] ^1.2 ^ ^-1.2

execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_17] ^1.5 ^ ^
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_18] ^-1.5 ^ ^
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_19] ^ ^ ^1.5
execute as @e[tag=nest_visuals_core_2] at @s run tp @e[tag=nest_visuals_20] ^ ^ ^-1.5

execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_9] ^-1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_10] ^-1.2 ^ ^-1.2
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_11] ^1.2 ^ ^1.2
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_12] ^1.2 ^ ^-1.2

execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_21] ^1.5 ^ ^
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_22] ^-1.5 ^ ^
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_23] ^ ^ ^1.5
execute as @e[tag=nest_visuals_core_3] at @s run tp @e[tag=nest_visuals_24] ^ ^ ^-1.5

#windshield

#arrows

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=2},team=purple] run kill @e[distance=..4,tag=huntressshot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=2},team=yellow] run kill @e[distance=..4,tag=huntressshot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=7},team=purple] run kill @e[distance=..4,tag=dragonshot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=7},team=yellow] run kill @e[distance=..4,tag=dragonshot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=18},team=purple] run kill @e[distance=..4,tag=golemshot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=18},team=yellow] run kill @e[distance=..4,tag=golemshot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=26},team=purple] run kill @e[distance=..4,tag=sharpshootershot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=26},team=yellow] run kill @e[distance=..4,tag=sharpshootershot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=34},team=purple] run kill @e[distance=..4,tag=rainmakershoot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=34},team=yellow] run kill @e[distance=..4,tag=rainmakershoot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=41},team=purple] run kill @e[distance=..4,tag=broodmothershot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=41},team=yellow] run kill @e[distance=..4,tag=broodmothershot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=50},team=purple] run kill @e[distance=..4,tag=chaosshot_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=50},team=yellow] run kill @e[distance=..4,tag=chaosshot_ar]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=60},team=purple] run kill @e[distance=..4,tag=starfather_ar]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=60},team=yellow] run kill @e[distance=..4,tag=starfather_ar]


#vanilla

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=4},team=purple] run kill @e[type=minecraft:ender_pearl,distance=..4]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=4},team=yellow] run kill @e[type=minecraft:ender_pearl,distance=..4]

execute at @e[tag=nest] if entity @p[scores={char=14},team=yellow] if entity @p[scores={char=17},team=purple] run kill @e[type=minecraft:trident,distance=..4]
execute at @e[tag=nest] if entity @p[scores={char=14},team=purple] if entity @p[scores={char=17},team=yellow] run kill @e[type=minecraft:trident,distance=..4]


#custom

execute at @e[tag=nest] as @e[distance=..4,tag=projectile] unless score @s Team = @p[scores={char=14}] Team run kill @s

# sky queen

scoreboard players set @a[scores={s1_timer=1,char=14}] spellCD1 180
scoreboard players add @a[scores={s1_timer=1..,char=14}] s1_timer 1
scoreboard players set @a[scores={s1_timer=181..,char=14}] s1_timer 0

scoreboard players set @a[scores={s2_timer=80,char=14}] spellCD2 240
scoreboard players add @a[scores={s2_timer=1..,char=14}] s2_timer 1
scoreboard players add @a[scores={s2_timer_recast=1..,char=14}] s2_timer_recast 1
scoreboard players set @a[scores={s2_timer=321..,char=14}] s2_timer_recast 0
scoreboard players set @a[scores={s2_timer=321..,char=14}] s2_timer 0

execute as @a[scores={char=14}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe",Slot:0b}]}] run clear @a[scores={char=14}] minecraft:iron_pickaxe
item replace entity @a[scores={char=14}] hotbar.0 with minecraft:iron_pickaxe[minecraft:custom_name={bold:1b,color:"gray",text:"Claws"},minecraft:unbreakable={},minecraft:attribute_modifiers=[{id:"armor",type:"minecraft:attack_damage",amount:2d,operation:"add_value",slot:"mainhand"},{id:"armor",type:"minecraft:attack_speed",amount:-0.65d,operation:"add_multiplied_base",slot:"mainhand"}],minimum_attack_charge=1] 1

execute as @a[scores={char=14,s1_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run clear @a[scores={char=14}] carrot_on_a_stick[custom_data={s1:1}]
item replace entity @a[scores={char=14,s1_timer=0,CC_silence=0}] hotbar.1 with carrot_on_a_stick[custom_data={s1:1},minecraft:item_model="minecraft:quartz",minecraft:custom_name={text:"Pin the Prey",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=14,s2_timer=10..79,s2_timer_recast=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=14}] warped_fungus_on_a_stick[custom_data={s2:2}]
item replace entity @a[scores={char=14,s2_timer=10..79,s2_timer_recast=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:2},minecraft:item_model="minecraft:happy_ghast_spawn_egg",minecraft:custom_name={text:"Queen's Protection",color:"dark_aqua",bold:1b}] 1

execute as @a[scores={char=14,s2_timer=0,CC_silence=0}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:2b}]}] run clear @a[scores={char=14}] warped_fungus_on_a_stick[custom_data={s2:1}]
item replace entity @a[scores={char=14,s2_timer=0,CC_silence=0}] hotbar.2 with warped_fungus_on_a_stick[custom_data={s2:1},minecraft:item_model="minecraft:ghast_spawn_egg",minecraft:custom_name={text:"Nesting Storm",color:"dark_aqua",bold:1b}] 1