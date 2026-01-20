particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.001 1
particle dust{color:[1.0,1.0,0.33],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 1
particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.001 1
particle dust{color:[0.34,0.89,1.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.001 1
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=73}] Team run tag @s add balls_electrocuted
execute positioned ^ ^ ^0.4 if entity @s[distance=..8] if block ~ ~ ~ #dash run function chars:conductor_electrocute_raycast