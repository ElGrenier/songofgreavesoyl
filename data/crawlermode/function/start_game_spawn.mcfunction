execute as @a[tag=in_game,scores={Loading=-1}] run function core:lobby/tp_blackbox
execute as @a[tag=in_game,scores={Loading=-1}] at @s run scoreboard players set @s Loading 80
function messages:game_start_mess

execute as @a[scores={Loading=1..}] run scoreboard players remove @s Loading 1

execute if score difficulty settings matches 0 run function crawlermode:difficulty0
execute if score difficulty settings matches 1 run function crawlermode:difficulty1
execute if score difficulty settings matches 2 run function crawlermode:difficulty2

tag @a remove waiting_respawn
execute if score @a[tag=in_game,limit=1] Loading matches 5 as @a run function crawlermode:respawn
execute if score @a[tag=in_game,limit=1] Loading matches 1 run scoreboard players set game_state settings 7


#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]