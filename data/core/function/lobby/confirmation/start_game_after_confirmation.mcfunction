
team empty purple
team empty yellow

tag @a remove PracticeCharPick
execute as @a run function core:main/clear_chat
execute as @a run function main:initiate_stats
kill @e[tag=char_displays]
function chars:char_display_stands

scoreboard objectives setdisplay sidebar Picks
team join yellow -=Yellow=-
team join purple -=Purple=-
scoreboard players set -=Purple=- Picks 2
scoreboard players set -=Yellow=- Picks 0



tag @a add in_game

scoreboard players enable @a ClassPickTrigger
scoreboard players enable @a CharPickTrigger
scoreboard players set ConfirmationCounter lobby 0

# TP to team select temporary room
tp @a 288.5 29.00 -107.5
