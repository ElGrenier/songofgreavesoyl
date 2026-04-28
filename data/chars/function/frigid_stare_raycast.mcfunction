particle entity_effect{color:[0.66,0.89,1.0,1.0]} ~ ~ ~ 1 1 1 0.01 2 force
particle snowflake ~ ~ ~ 1 1 1 0.01 1 force

execute positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=42}] Team run tag @s add friged_stared

execute unless entity @e[tag=friged_stared] positioned ^ ^ ^0.5 if entity @s[distance=..8] if block ~ ~ ~ #dash run function chars:frigid_stare_raycast
#execute positioned ^ ^ ^0.5 if entity @s[distance=..8] if block ~ ~ ~ #dash run function chars:frigid_stare_raycast