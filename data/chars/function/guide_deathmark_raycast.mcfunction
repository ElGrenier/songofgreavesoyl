particle smoke ~ ~ ~ 0 0 0 0.001 1
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=6}] Team run tag @s add guide_deathmarked
execute unless entity @a[tag=guide_deathmarked] positioned ^ ^ ^1 if entity @s[distance=..12] run function chars:guide_deathmark_raycast