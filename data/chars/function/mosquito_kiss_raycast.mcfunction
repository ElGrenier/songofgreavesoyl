particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
particle entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~ ~ 0.1 0.1 0.1 0.01 1 force

execute positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=64}] Team run tag @s add mosquito_bite

execute unless entity @a[tag=mosquito_bite] positioned ^ ^ ^0.5 if entity @s[distance=..20] if block ~ ~ ~ #dash run function chars:mosquito_kiss_raycast