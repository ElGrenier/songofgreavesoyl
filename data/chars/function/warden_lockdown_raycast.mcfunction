#particle dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
particle entity_effect{color:[0.33,0.33,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 0.01 1 force

execute positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run tag @s add lockdowned

execute unless entity @a[tag=lockdowned] positioned ^ ^ ^0.5 if entity @s[distance=..8] if block ~ ~ ~ #dash run function chars:warden_lockdown_raycast