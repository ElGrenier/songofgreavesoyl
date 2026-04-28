particle heart ~ ~ ~ 1 1 1 0.001 1 force @a[scores={char=19}]
#particle dust{color:[0.376,0.509,0.713],scale:2} ~ ~ ~ 1 1 1 0.001 1
execute as @e[distance=..2.5,tag=valid_spell_target] if score @s Team = @p[scores={char=19}] Team unless score @s char matches 19 run tag @s add hug
execute unless entity @e[tag=hug] positioned ^ ^ ^0.8 if entity @s[distance=..10] if block ~ ~ ~ #dash run function chars:lunatic_hug_raycast