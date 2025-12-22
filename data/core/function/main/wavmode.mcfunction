
execute unless score wav_mode settings matches 1 run effect give @a minecraft:saturation 99999 100 true
execute unless score wav_mode settings matches 1 run effect clear @a minecraft:hunger

execute if score wav_mode settings matches 1 run effect give @a minecraft:hunger infinite 100 true
effect give @a[scores={food=..5}] minecraft:saturation 1


execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11}] run attribute @s minecraft:movement_speed base set 0.12
execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11}] run attribute @s minecraft:knockback_resistance base set 0.2
execute if score wav_mode settings matches 1 run tag @a[tag=!wav_mode_buff] add wav_mode_buff

execute unless score wav_mode settings matches 1 as @a[tag=wav_mode_buff] run attribute @s minecraft:movement_speed base set 0.1
execute unless score wav_mode settings matches 1 as @a[tag=wav_mode_buff] run attribute @s minecraft:knockback_resistance base set 0.0
execute unless score wav_mode settings matches 1 run tag @a[tag=wav_mode_buff] remove wav_mode_buff