
# @s - player
# out_Random - random X value, if class is wrong, set X to 0

execute if entity @s[scores={out_Random=59}] run scoreboard players set @s out_Random 0
execute if score tmp_respawn_time_left settings matches ..4 if entity @s[scores={out_Random=12}] run scoreboard players set @s out_Random 0

#Bans character in CTF all random
execute if score map_type settings matches 3 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0

execute if score map settings matches 13 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0

#Ban Shapeless in 1v1 map
execute if score map settings matches 5 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0
execute if score map settings matches 9 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0
execute if score map settings matches 15 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0
execute if score map settings matches 21 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0

#Ban Sand Crawler in 1v1 map
execute if score map settings matches 5 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0
execute if score map settings matches 8 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0
execute if score map settings matches 9 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0
execute if score map settings matches 15 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0
execute if score map settings matches 21 if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0

