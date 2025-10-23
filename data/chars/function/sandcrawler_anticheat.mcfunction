scoreboard players remove @a[scores={char=9}] passive_craw 1
execute as @a[scores={char=9}] at @s if entity @s[y=8,distance=..0] run scoreboard players add @s passive_craw 1
execute as @a[scores={char=9}] at @s if entity @s[y=13,distance=..0] run scoreboard players add @s passive_craw 1
execute as @a[scores={char=9}] at @s if entity @s[y=15,distance=..0] run scoreboard players add @s passive_craw 1
execute as @a[scores={char=9}] at @s if block ~ 7 ~ minecraft:sea_lantern run scoreboard players set @a[scores={char=9}] passive_craw -1
