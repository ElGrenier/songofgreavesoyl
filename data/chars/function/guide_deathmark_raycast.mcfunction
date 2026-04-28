particle smoke ~ ~ ~ 0.4 0.4 0.4 0.001 2 force @a[scores={char=6}]
execute positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=6}] Team run tag @s add guide_deathmarked
execute unless entity @a[tag=guide_deathmarked] positioned ^ ^ ^0.4 if entity @s[distance=..12] if block ~ ~ ~ #dash run function chars:guide_deathmark_raycast