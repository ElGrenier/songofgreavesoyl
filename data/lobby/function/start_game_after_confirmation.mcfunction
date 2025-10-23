
team empty purple
team empty yellow

tag @a remove PracticeCharPick
execute as @a run function main:clear_chat
execute as @a run function main:initiate_stats
kill @e[tag=char_displays]
function chars:char_display_stands

scoreboard objectives setdisplay sidebar Picks
team join yellow -=Yellow=-
team join purple -=Purple=-
scoreboard players set -=Purple=- Picks 2
scoreboard players set -=Yellow=- Picks 0

# TICKETING (outsider detection)
scoreboard players set @e[tag=GameStart] inp_Min 100
scoreboard players set @e[tag=GameStart] inp_Max 100000
execute as @e[tag=GameStart] run function main:random
execute as @e[tag=GameStart] run scoreboard players operation @s Ticket = @s out_Random
execute as @a run scoreboard players operation @s Ticket = @e[tag=GameStart,limit=1] Ticket

scoreboard players enable @a ClassPickTrigger
scoreboard players enable @a CharPickTrigger
scoreboard players set @e[tag=GameStart] ConfirmationCounter 0

# TP to team select temporary room
tp @a 288.5 29.00 -107.5
