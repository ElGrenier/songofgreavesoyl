particle entity_effect{color:[0.33,0.33,1.0,1.0]} ~ ~ ~ 0.5 0 0.5 0.001 1
particle minecraft:block{block_state:{Name:"minecraft:netherite_block"}} ~ ~ ~ 0 0 0 0.3 3 normal
execute positioned ~-.5 ~-.5 ~-.5 as @e[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=38}] Team run scoreboard players set @s rite_of_chains 40
execute positioned ^ ^ ^0.5 if entity @s[distance=..15] run function chars:warden_rite_raycast