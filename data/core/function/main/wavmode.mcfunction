
execute unless score wav_mode settings matches 1 run effect give @a saturation 99999 100 true
execute unless score wav_mode settings matches 1 run effect clear @a hunger

execute if score wav_mode settings matches 1 run effect clear @a saturation
execute if score wav_mode settings matches 1 run effect give @a hunger infinite 100 true
effect give @a[scores={food=..5}] minecraft:saturation 1

#execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11}] run attribute @s knockback_resistance base set 0.2

execute unless score wav_mode settings matches 1 as @a[tag=wav_mode_buff] run attribute @s movement_speed base set 0.1
execute unless score wav_mode settings matches 1 as @a[tag=wav_mode_buff] run attribute @s knockback_resistance base set 0.0
execute unless score wav_mode settings matches 1 run tag @a[tag=wav_mode_buff] remove wav_mode_buff

execute as @a[scores={char=1..}] unless score @s armor_char = @s char run tag @s remove wavmode_speed_slow
execute as @a[scores={char=1..}] unless score @s armor_char = @s char run tag @s remove wavmode_speed_medium
execute as @a[scores={char=1..}] unless score @s armor_char = @s char run tag @s remove wavmode_speed_fast

execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11},tag=wavmode_speed_slow] run attribute @s movement_speed base set 0.12
execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11},tag=wavmode_speed_medium] run attribute @s movement_speed base set 0.13
execute if score wav_mode settings matches 1 as @a[scores={CC_stun=-11,CC_root=-11,CC_grounded=-11},tag=wavmode_speed_fast] run attribute @s movement_speed base set 0.14
execute if score wav_mode settings matches 1 run tag @a[tag=!wav_mode_buff] add wav_mode_buff

#char specific speed

tag @a[scores={char=3}] add wavmode_speed_slow
tag @a[scores={char=12}] add wavmode_speed_slow
tag @a[scores={char=13}] add wavmode_speed_slow
tag @a[scores={char=18}] add wavmode_speed_slow
tag @a[scores={char=21}] add wavmode_speed_slow
tag @a[scores={char=22}] add wavmode_speed_slow
tag @a[scores={char=32}] add wavmode_speed_slow
tag @a[scores={char=47}] add wavmode_speed_slow
tag @a[scores={char=60}] add wavmode_speed_slow

tag @a[scores={char=8}] add wavmode_speed_fast
tag @a[scores={char=33}] add wavmode_speed_fast
tag @a[scores={char=35}] add wavmode_speed_fast
tag @a[scores={char=43}] add wavmode_speed_fast
tag @a[scores={char=44}] add wavmode_speed_fast
tag @a[scores={char=49}] add wavmode_speed_fast
tag @a[scores={char=55}] add wavmode_speed_fast
tag @a[scores={char=65}] add wavmode_speed_fast
tag @a[scores={char=73}] add wavmode_speed_fast

tag @a[tag=!wavmode_speed_slow,tag=!wavmode_speed_fast] add wavmode_speed_medium



