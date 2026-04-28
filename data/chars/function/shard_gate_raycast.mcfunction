particle reverse_portal ~ ~ ~ 1 1 1 0 1 normal
particle dust{color:[1.0,0.33,1.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 1 normal

execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run damage @s 0.7 generic by @p[scores={char=15}] from @p[scores={char=15}]
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run effect give @s slowness 1 5
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[dx=0.5,dy=0.5,dz=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=15}] Team run scoreboard players set @s CC_grounded 10


execute if entity @s[scores={PillarAge=1},tag=pillar] positioned ^ ^ ^0.5 unless entity @e[scores={PillarAge=2},tag=pillar,distance=..2] run function chars:shard_gate_raycast
execute if entity @s[scores={PillarAge=2},tag=pillar] positioned ^ ^ ^0.5 unless entity @e[scores={PillarAge=1},tag=pillar,distance=..2] run function chars:shard_gate_raycast