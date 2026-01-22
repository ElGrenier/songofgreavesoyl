scoreboard players operation game_type settings = game_type lobby
scoreboard players set game_state settings 1

team empty purple
team empty yellow

tag @a remove PracticeCharPick
execute as @a run function core:main/clear_chat
execute as @a run function core:main/game/initiate_stats
kill @e[tag=char_displays]
#function chars:char_display_stands

scoreboard objectives setdisplay sidebar Picks

scoreboard players set confirmation_counter lobby 0

# scoreboard players enable @a ClassPickTrigger
# execute unless entity @a[tag=debug] run scoreboard players set @a ClassPickTrigger 8
# scoreboard players enable @a CharPickTrigger

