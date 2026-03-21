particle falling_water ~ ~ ~ 1 1 1 0.001 3
particle dust{color:[0.376,0.509,0.713],scale:2} ~ ~ ~ 1 1 1 0.001 1
execute as @e[distance=..1.5,tag=valid_spell_target] if score @s Team = @p[scores={char=54}] Team unless score @s char matches 54 run tag @s add shaman_heal
execute unless entity @e[tag=shaman_heal] positioned ^ ^ ^0.6 if entity @s[distance=..8] if block ~ ~ ~ #dash run function chars:shaman_breath_raycast