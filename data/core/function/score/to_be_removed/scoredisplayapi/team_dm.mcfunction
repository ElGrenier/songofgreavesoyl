# Hacked-in support for Deathmatch. It just translates from points to kills.
# scoreboard objectives add dmScoreDisplay dummy

# Part for lobby management
# scoreboard players operation dm_temp lobby = dm_score lobby
# scoreboard players operation dm_temp lobby /= C_dm dmTemp
# scoreboard players operation dm_score lobby = dm_temp lobby

# Part for ingame
execute if score game_state settings matches 2.. run scoreboard players operation Yellow dmTemp = Yellow ScoreDisplay
execute if score game_state settings matches 2.. run scoreboard players operation Yellow dmTemp /= hundred dmTemp
execute if score game_state settings matches 2.. run scoreboard players operation Yellow dmScoreDisplay = Yellow dmTemp

execute if score game_state settings matches 2.. run scoreboard players operation Purple dmTemp = Purple ScoreDisplay
execute if score game_state settings matches 2.. run scoreboard players operation Purple dmTemp /= hundred dmTemp
execute if score game_state settings matches 2.. run scoreboard players operation Purple dmScoreDisplay = Purple dmTemp