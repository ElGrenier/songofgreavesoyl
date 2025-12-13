particle wax_on ~ ~ ~ 0.1 0.1 0.1 0.001 2 normal
execute positioned ~-.5 ~-.5 ~-.5 as @a[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=30}] Team run tag @s add engineer_marked
execute unless entity @a[tag=engineer_marked] positioned ^ ^ ^1 if entity @s[distance=..12] run function chars:engineer_mark_raycast