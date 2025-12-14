execute as @a[tag=in_game,scores={Loading=-1}] run function core:lobby/tp_blackbox
execute as @a[tag=in_game,scores={Loading=-1}] at @s run scoreboard players set @s Loading 80
function messages:game_start_mess

scoreboard players set game_state settings 7

#[{"text":"Respawning in ","color":"white"},{"text":"1","color":"white"}]