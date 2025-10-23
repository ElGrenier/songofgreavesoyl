# @s - player (with char = 0)

# generate random number X
scoreboard players set @s inp_Min 1
scoreboard players set @s inp_Max 69
function main:random

# check whether there's already player with this char - set X to 0 if there's
scoreboard players operation @a out_Random = @s out_Random
execute as @a[scores={char=1..}] if score @s char = @s out_Random run scoreboard players set @a out_Random 0

# other checks
function lobby:random_class_check
function lobby:random_disabled

# finally, set char to X
function lobby:random_char