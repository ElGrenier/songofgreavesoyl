particle smoke ~ ~ ~ 0.5 0 0.5 0.001 10
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=6}] Team run tag @s add guide_harvested
execute positioned ^ ^ ^1 if entity @s[distance=..7] run function chars:guide_harvest_raycast