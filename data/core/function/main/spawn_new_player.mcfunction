
execute as @s run function core:main/game/initiate_stats
spawnpoint @s 207 34 -131

# Respawning players outside the game
execute unless score game_state settings matches 1.. run effect give @s minecraft:weakness 10000 60 true
execute unless score game_state settings matches 1.. as @s run function core:lobby/tp_lobby