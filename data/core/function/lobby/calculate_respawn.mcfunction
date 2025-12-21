scoreboard players set tmp_20 lobby 20
execute as @s store result score tmp_respawn_time_left lobby run scoreboard players get @s trigger_respawn
tellraw @s ["",{text:"[@] The time needed to respawn has been set to "},{score:{name:"tmp_respawn_time_left",objective:"lobby"},color:"red"},{text:"s"}]
scoreboard players operation tmp_respawn_time_left lobby *= tmp_20 lobby
scoreboard players operation max_loading lobby = tmp_respawn_time_left lobby