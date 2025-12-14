kill @e[tag=immune]
scoreboard objectives add settings dummy

scoreboard players set loading settings 0
scoreboard players set map settings 0

scoreboard players operation map settings = map lobby
scoreboard players operation map_type settings = map_type lobby
scoreboard players operation unless_draft settings = unless_draft lobby
scoreboard players operation team_select settings = team_select lobby
scoreboard players operation max_loading settings = max_loading lobby
scoreboard players operation fallen_flag_max_countdown settings = fallen_flag_max_countdown lobby
scoreboard players operation require_confirmation settings = require_confirmation lobby
scoreboard players operation all_random settings = all_random lobby

execute if score map_type settings matches 1 run scoreboard players operation score_max settings = score lobby
execute if score map_type settings matches 2 run scoreboard players operation score_max settings = dm_score lobby
execute if score map_type settings matches 3 run scoreboard players operation score_max settings = ctf_score lobby


scoreboard players set game_state settings 2




tag @a add in_game