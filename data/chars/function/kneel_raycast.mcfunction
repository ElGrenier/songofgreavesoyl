particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 1.5 1.5 1.5 0.01 15 force
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~ ~ 1 1 1 0.01 15 force
particle entity_effect{color:[1.0,0.0,0.0,1.0]} ~ ~ ~ 1 1 1 0.01 10 force

execute positioned ~-.5 ~-.5 ~-.5 as @p[dx=0,dy=0,dz=0,tag=valid_spell_target] unless score @s Team = @p[scores={char=64}] Team run tag @s add mosquito_kneel


execute positioned ^ ^ ^1 if entity @s[distance=..8] run function chars:kneel_raycast