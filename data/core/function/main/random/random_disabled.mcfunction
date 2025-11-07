
# @s - player
# out_Random - random X value, if class is wrong, set X to 0

execute if entity @s[scores={out_Random=9}] run scoreboard players set @s out_Random 0
execute if entity @s[scores={out_Random=59}] run scoreboard players set @s out_Random 0

#Bans character in CTF all random
execute if score map_type settings matches 3 if entity @s[scores={out_Random=37}] run scoreboard players set @s out_Random 0
