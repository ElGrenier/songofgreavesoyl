particle soul_fire_flame ~ ~ ~ 1 1 1 0.001 1 force @a[scores={char=8}]

execute positioned ~-.75 ~-.75 ~-.75 as @p[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target,scores={CC_intangible=0}] unless score @s Team = @p[scores={char=8}] Team run tag @s add trickstress_swap_victim

execute unless entity @a[tag=trickstress_swap_victim] positioned ^ ^ ^0.5 if entity @s[distance=..12] run function chars:trickstress_swap_raycast