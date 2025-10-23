# Obsluga graczy respiacych sie podczas trwania gry
execute if entity @e[tag=Settings] run effect give @a[distance=..5] minecraft:instant_health 2 100 true
execute if entity @e[tag=Settings] run function main:respawn
execute if entity @e[tag=Settings] run scoreboard players set @a[distance=5..] Spawned 1
execute if entity @e[tag=Settings] run scoreboard players set @a[distance=..5] Spawned 0
# Respienie gracza, ktory nie bierze udzialu w grze
execute if entity @e[tag=Settings] as @a[distance=..5,scores={char=0}] run function main:spawn_outsider
# Respienie graczy poza gra
execute unless entity @e[tag=Settings] as @a[distance=..5] at @s run function main:initiate_stats
execute unless entity @e[tag=Settings] run effect give @a[distance=..5] minecraft:weakness 10000 60 true
execute unless entity @e[tag=Settings] run tp @a[distance=..5] 174.5 12 -80.5