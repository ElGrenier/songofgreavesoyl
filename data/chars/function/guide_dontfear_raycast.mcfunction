#particle smoke ~ ~ ~ 0 0 0 0.001 1
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target,scores={HPercentage=..50}] unless score @s Team = @p[scores={char=6}] Team run effect give @p[scores={char=6}] speed 1 1 true
execute positioned ^ ^ ^1 if entity @s[distance=..12] run function chars:guide_dontfear_raycast