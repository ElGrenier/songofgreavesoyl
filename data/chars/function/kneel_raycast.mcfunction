particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~1 ~ 1.5 1.5 1.5 0.01 15 normal
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 1 1 1 0.01 15 normal

execute if entity @a[scores={char=64},team=yellow] run tag @a[distance=..3,team=purple] add mosquito_kneel
execute if entity @a[scores={char=64},team=purple] run tag @a[distance=..3,team=yellow] add mosquito_kneel



execute unless entity @a[tag=mosquito_bite] positioned ^ ^ ^1 if entity @s[distance=..8] run function chars:kneel_raycast