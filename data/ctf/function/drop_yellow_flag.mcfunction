
scoreboard players set @a yellow_flag_captured 0
execute as @e[tag=flag,team=yellow] run scoreboard players set @s yellow_flag_captured 0
execute as @e[tag=flag,team=yellow] run scoreboard players operation @s flag_fallen_countdown = fallen_flag_max_countdown settings
execute as @e[tag=flag,team=yellow] run scoreboard players set @s flag_pick_restriction 1
# execute as @e[tag=flag,team=yellow] run function messages:flag_fell