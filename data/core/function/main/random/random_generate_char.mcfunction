# @s - player (with char = 0)

# generate random number X
execute store result score @s out_Random run random value 1..69

# check whether there's already player with this char - set X to 0 if there's

execute if score @s out_Random = @a[scores={char=1..},limit=1,sort=random] char run scoreboard players set @s out_Random 0

# other checks
function core:main/random/random_disabled

# finally, set char to X
function core:main/random/assign_random_char