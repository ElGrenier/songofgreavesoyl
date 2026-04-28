particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.001 1 force @p[scores={char=33}]
particle raid_omen ~ ~ ~ 0.3 0.3 0.3 0.1 1 force @p[scores={char=33}]

execute positioned ~-1 ~-1 ~-1 as @p[dx=1,dy=1,dz=1,tag=valid_spell_target] unless score @s Team = @p[scores={char=33}] Team run scoreboard players set @s prey 300

execute unless entity @a[scores={prey=1..}] positioned ^ ^ ^0.5 if entity @s[distance=..15] if block ~ ~ ~ #dash run function chars:stray_prey_raycast