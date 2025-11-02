# Hacked-in support for Capture The Flag

# # Part for lobby management
# scoreboard players operation ctf_temp lobby = ctf_score lobby
# scoreboard players operation ctf_temp lobby /= ctf_dm lobby
# scoreboard players operation ctf_score lobby = ctf_temp lobby

# Part for ingame #TO DO
execute if score game_state settings matches 2.. run scoreboard players operation Yellow dmTemp = Yellow ScoreDisplay
execute if score game_state settings matches 2.. run scoreboard players operation Yellow dmTemp /= hundred dmTemp
execute if score game_state settings matches 2.. run scoreboard players operation Yellow ctfScoreDisplay = Yellow dmTemp

execute if score game_state settings matches 2.. run scoreboard players operation Purple dmTemp = Purple ScoreDisplay
execute if score game_state settings matches 2.. run scoreboard players operation Purple dmTemp /= hundred dmTemp
execute if score game_state settings matches 2.. run scoreboard players operation Purple ctfScoreDisplay = Purple dmTemp