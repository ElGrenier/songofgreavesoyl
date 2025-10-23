# Hacked-in support for Capture The Flag

# Part for lobby management
execute as @e[tag=GameStart] run scoreboard players operation @s dmTemp = @s Score
execute as @e[tag=GameStart] run scoreboard players operation @s dmTemp /= C_dm dmTemp
execute as @e[tag=GameStart] run scoreboard players operation @s dmScore = @s dmTemp

# Part for ingame
execute if entity @e[tag=Settings] run scoreboard players operation Yellow dmTemp = Yellow ScoreDisplay
execute if entity @e[tag=Settings] run scoreboard players operation Yellow dmTemp /= C_dm dmTemp
execute if entity @e[tag=Settings] run scoreboard players operation Yellow ctfScoreDisplay = Yellow dmTemp

execute if entity @e[tag=Settings] run scoreboard players operation Purple dmTemp = Purple ScoreDisplay
execute if entity @e[tag=Settings] run scoreboard players operation Purple dmTemp /= C_dm dmTemp
execute if entity @e[tag=Settings] run scoreboard players operation Purple ctfScoreDisplay = Purple dmTemp