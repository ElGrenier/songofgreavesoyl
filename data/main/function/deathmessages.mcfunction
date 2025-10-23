# Call:
# execute as @a[scores={DisplayDeath=1..}] run function main:deathmessages

scoreboard players add @s DeathMessTimer 1

execute if entity @s[scores={DeathMessTimer=2..}] run function messages:deathmessages
execute if entity @s[scores={DeathMessTimer=2..}] run scoreboard players set @a DisplayDeath 0
execute if entity @s[scores={DeathMessTimer=2..}] if entity @a[scores={DisplayKill=1..}] run scoreboard players set @a DisplayKill 0
execute if entity @s[scores={DeathMessTimer=2..}] run scoreboard players set @s DeathMessTimer 0