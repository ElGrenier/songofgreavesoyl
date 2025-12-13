particle enchanted_hit ~ ~ ~ 0 0 0 0.01 50 normal
particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0.01 3 normal
particle enchant ~ ~ ~ 0.5 0.5 0.5 0.01 3 normal

execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=anguish_sphere_main] run tag @s add anguish_spere_boom
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=28}] Team run tag @s add overloaded
execute positioned ^ ^ ^0.3 if entity @s[distance=..15] run function chars:operator_overload