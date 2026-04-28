#particle smoke ~ ~ ~ 0 0 0 0.001 1
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target,scores={HPercentage=..50}] unless score @s Team = @p[scores={char=6}] Team run effect give @p[scores={char=6}] speed 1 1 true
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=valid_spell_target,tag=guide_valid_victim] unless score @s Team = @p[scores={char=6}] Team run tag @p[scores={char=6}] add guide_attack_speed_buff
#execute positioned ~-1 ~-1 ~-1 unless entity @e[dx=1,dy=1,dz=1,tag=valid_spell_target,tag=guide_valid_victim] run tag @p[scores={char=6}] remove guide_attack_speed_buff
execute positioned ^ ^ ^0.5 if entity @s[distance=..15] run function chars:guide_dontfear_raycast