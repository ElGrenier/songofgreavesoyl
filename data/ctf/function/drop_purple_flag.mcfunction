
scoreboard players set @a purple_flag_captured 0
execute as @e[tag=flag,team=purple] run scoreboard players set @s purple_flag_captured 0
execute as @e[tag=flag,team=purple] run scoreboard players operation @s flag_fallen_countdown = @e[tag=Settings,limit=1] fallen_flag_max_countdown
execute as @e[tag=flag,team=purple] run scoreboard players set @s flag_pick_restriction 1
execute as @e[tag=flag,team=purple] run function messages:flag_fell
