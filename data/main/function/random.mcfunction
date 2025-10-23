# by Azeth Meron
# @s - input/output entity
# inp_Min, inp_Max, out_Random

# How to use:
# scoreboard players set @a inp_Min 10
# scoreboard players set @a inp_Max 20
# execute as @a at @s run function xxx:random
# This way, all players will have scoreboard "out_Random" set to random value from range <10,20> (including edges)

# Make sure inp_Max > inp_Min

# Get random value (that is always positive)
summon minecraft:marker ~ ~ ~ {Tags:["tmp_random"],Duration:200}
execute store result score @s out_Random run data get entity @e[tag=tmp_random,limit=1] UUID[3]
scoreboard players set @s itr_temp -1
execute if entity @s[scores={out_Random=..0}] run scoreboard players operation @s out_Random *= @s itr_temp
kill @e[tag=tmp_random]

# Fit value to given boundaries, RANDOM % (MAX-MIN+1) + MIN
scoreboard players operation @s itr_temp = @s inp_Max
scoreboard players operation @s itr_temp -= @s inp_Min
scoreboard players add @s itr_temp 1
scoreboard players operation @s out_Random %= @s itr_temp
scoreboard players operation @s out_Random += @s inp_Min