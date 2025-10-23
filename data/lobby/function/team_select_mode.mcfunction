# Auto Select
execute as @a[distance=..4] if entity @e[tag=GameStart,scores={TeamSelect=0},limit=1] run tp @s 198.60 35.00 -130.52
# Manual Select
execute as @a[distance=..4] if entity @e[tag=GameStart,scores={TeamSelect=1},limit=1] run tp @s 288.5 15.00 -107.5