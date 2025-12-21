scoreboard players set tmp_20 lobby 20
execute as @s store result score tmp_flag_max_countdown lobby run scoreboard players get @s trigger_flag_max_countdown
tellraw @s ["",{text:"[@] The time needed for the flag to respawn has been set to "},{score:{name:"tmp_flag_max_countdown",objective:"lobby"},color:"red"},{text:"s"}]
scoreboard players operation tmp_flag_max_countdown lobby *= tmp_20 lobby
scoreboard players operation fallen_flag_max_countdown lobby = tmp_flag_max_countdown lobby