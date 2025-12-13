particle dust{color:[0.67,0.0,0.0],scale:1} ~ ~0.5 ~ 0 0 0 0.001 1 force @p[scores={char=33}]
#particle crit ~ ~1 ~ 0 0 0 0.001 1 force @p[scores={char=33}]

execute unless entity @e[scores={prey=1..},distance=..2] positioned ^ ^ ^0.6 if entity @s[distance=..100] run function chars:prey_tracker