particle small_flame ~ ~ ~ 1 1 1 0.01 5 force

execute as @e[distance=..2,tag=sculpture,scores={s0_timer=15..}] run tag @s add shatter_sculpture
execute as @e[distance=..2,tag=sculpture_visuals,scores={s0_timer=15..}] run tag @s add shatter_sculpture

execute unless entity @e[tag=shatter_sculpture] positioned ^ ^ ^0.5 if entity @s[distance=..11] if block ~ ~ ~ #dash run function chars:wonder_shatter_raycast