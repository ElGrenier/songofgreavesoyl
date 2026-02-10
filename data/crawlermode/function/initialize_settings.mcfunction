kill @e[tag=immune]

scoreboard players set loading settings 0

function battlegrounds:map_settings

execute unless score difficulty lobby matches 0.. run scoreboard players set difficulty lobby 0
scoreboard players operation difficulty settings = difficulty lobby
#scoreboard players operation max_loading settings = max_loading lobby
scoreboard players operation all_random settings = all_random lobby
scoreboard players operation wav_mode settings = wav_mode lobby
execute store result score ticket settings run random value -900000000..900000000


scoreboard players set game_state settings 2


tag @a add in_game