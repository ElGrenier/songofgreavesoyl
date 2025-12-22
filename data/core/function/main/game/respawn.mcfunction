

# Handling players respawning during the game
effect give @a[distance=..5] minecraft:instant_health 2 100 true

scoreboard players set @a[distance=5..] Loading -1
scoreboard players set @a[distance=..5,scores={Loading=-1}] Loading 0

execute as @a[tag=in_game,scores={Loading=0}] run scoreboard players operation @s Loading = max_loading settings

execute as @a[tag=in_game,scores={Loading=1..}] run function messages:respawn_progress

execute as @a[tag=in_game,scores={Loading=1}] run function core:main/game/respawn_player_ingame
scoreboard players remove @a[scores={Loading=1..}] Loading 1

