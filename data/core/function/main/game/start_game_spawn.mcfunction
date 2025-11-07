execute as @a[tag=in_game,scores={Loading=-1}] run tp 207 34 -131
execute as @a[tag=in_game,scores={Loading=-1}] at @s run scoreboard players set @s Loading 80

execute as @a[tag=in_game] run function messages:respawn_progress

execute as @a[tag=in_game,scores={Loading=1}] run function core:main/game/respawn_player_ingame

scoreboard players remove @a[tag=in_game,scores={Loading=1..}] Loading 1

scoreboard players set game_state settings 8

#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]