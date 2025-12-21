
# @s - delivered flag (yellow)

scoreboard players add @a[scores={yellow_flag_captured=2}] StatFlagCaptured 1

kill @s
scoreboard players set @a[team=purple] yellow_flag_captured 0

# scoreboard players operation @e[tag=ScorePurple,limit=1] Score -= C_dm dmTemp
# scoreboard players operation Purple ScoreDisplay += C_dm dmTemp
scoreboard players add .purple score 1

