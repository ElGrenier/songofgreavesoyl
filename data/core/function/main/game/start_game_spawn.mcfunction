execute as @a[tag=in_game,scores={Loading=-1}] run function core:lobby/tp_blackbox
execute as @a[tag=in_game,scores={Loading=-1}] at @s run scoreboard players set @s Loading 80
function messages:game_start_mess

#moved from initiate_game, then from initiate_stats because it broke showing stats :pensive:
scoreboard players set @a StatKills 0
scoreboard players set @a StatKillsN 0
scoreboard players set @a StatDeaths 0
scoreboard players set @a StatNeutralified 0
scoreboard players set @a StatCaptured 0
scoreboard players set @a Kills 0

scoreboard players set purple temp_score 0
scoreboard players set yellow temp_score 0

execute if score map_type settings matches 1..3 run scoreboard players set .purple score 0
execute if score map_type settings matches 1..3 run scoreboard players set .yellow score 0

execute if score map_type settings matches 4 run scoreboard players set @a score 0

scoreboard players set game_state settings 7

#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]