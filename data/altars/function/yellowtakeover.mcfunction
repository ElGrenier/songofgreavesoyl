scoreboard players set @s Team -1
team join yellow @s
execute at @s if entity @s[scores={Typo=0..}] run function altars:yellowify