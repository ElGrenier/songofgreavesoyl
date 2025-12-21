execute as @e[tag=spawn_ffa] unless entity @a[distance=..10] run tag @s add spawnable
execute as @e[tag=spawn_ffa] if entity @a[distance=..10] run tag @s remove spawnable