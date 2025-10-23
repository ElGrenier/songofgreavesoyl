
# @s - player to be respawned

execute if entity @s[scores={Team=1}] run tp @s @e[tag=SpawnPurple,limit=1]
execute if entity @s[scores={Team=-1}] run tp @s @e[tag=SpawnYellow,limit=1]
