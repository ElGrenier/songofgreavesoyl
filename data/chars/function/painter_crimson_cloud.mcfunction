particle dust{color:[0.67,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.1 0.2 0.01 5 force
particle dust{color:[0.67,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.1 0.2 0.01 5 force
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=69}] Team run tag @s add painter_redded
execute positioned ^ ^ ^1 if entity @s[distance=..6] run function chars:painter_crimson_cloud