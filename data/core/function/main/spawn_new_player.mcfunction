
execute as @a[distance=..5] run effect clear @s
execute as @a[distance=..5] run clear @s
execute as @a[distance=..5] run gamemode adventure @s
#moved from initiate_game
execute as @a[distance=..5] run scoreboard players set @s StatKills 0
execute as @a[distance=..5] run scoreboard players set @a StatKillsN 0
execute as @a[distance=..5] run scoreboard players set @a StatDeaths 0
execute as @a[distance=..5] run scoreboard players set @a StatNeutralified 0
execute as @a[distance=..5] run scoreboard players set @a StatCaptured 0

spawnpoint @a[distance=..5] 207 34 -131
tp @a[distance=..5] 174 12 -80

# Respawning players outside the game
execute unless score game_state settings matches 1.. run effect give @a[distance=..5] minecraft:weakness 10000 60 true
execute unless score game_state settings matches 1.. run tp @a[distance=..5] 174.5 12 -80.5