
# @s - delivered flag (purple)

scoreboard players add @a[scores={purple_flag_captured=2}] StatFlagCaptured 1

kill @s
scoreboard players set @a[team=yellow] purple_flag_captured 0

# scoreboard players operation @e[tag=ScoreYellow,limit=1] Score -= C_dm dmTemp
# scoreboard players operation Yellow ScoreDisplay += C_dm dmTemp
scoreboard players add .yellow score 1
