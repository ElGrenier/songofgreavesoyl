
# TP to team select temporary room and launch with it #lobby:loss_teams
# tp @a 288.5 29.00 -107.5
scoreboard players set game_state settings 1


team empty purple
team empty yellow

tag @a remove PracticeCharPick
execute as @a run function core:main/clear_chat
execute as @a run function core:main/game/initiate_stats
kill @e[tag=char_displays]
#function chars:char_display_stands

scoreboard objectives setdisplay sidebar Picks
team join yellow =Yellow=
team join purple =Purple=
scoreboard players set =Purple= Picks 2
scoreboard players set =Yellow= Picks 0
scoreboard players set confirmation_counter lobby 0

# scoreboard players enable @a ClassPickTrigger
# execute unless entity @a[tag=debug] run scoreboard players set @a ClassPickTrigger 8
# scoreboard players enable @a CharPickTrigger

