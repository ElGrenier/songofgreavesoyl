
execute as @a[distance=..5] run function core:main/game/initiate_stats
spawnpoint @a[distance=..5] 207 34 -131

# Respawning players outside the game
execute unless score game_state settings matches 1.. run effect give @a[distance=..5] minecraft:weakness 10000 60 true
execute unless score game_state settings matches 1.. run tp @a[distance=..5] 174.5 12 -80.5