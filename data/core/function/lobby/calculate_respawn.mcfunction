scoreboard players set tmp_20 lobby 20
execute as @s store result score tmp_respawn_time_left lobby run scoreboard players get @s trigger_respawn
scoreboard players operation tmp_respawn_time_left lobby *= tmp_20 lobby
scoreboard players operation max_loading lobby = tmp_respawn_time_left lobby