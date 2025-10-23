particle minecraft:sculk_soul ~ ~1.3 ~ 0.2 0.2 0.2 0.1 4
particle minecraft:block{block_state:{Name:"minecraft:sculk"}} ~ ~1.3 ~ 1 1 1 0.1 50
particle minecraft:block{block_state:{Name:"minecraft:coal_block"}} ~ ~1.3 ~ 1 1 1 0.1 50
particle minecraft:sculk_charge_pop ~ ~1.3 ~ 0.5 0.5 0.5 0.001 10

execute if entity @a[scores={char=50},team=yellow] run scoreboard players set @a[distance=..1,team=purple] CC_madness 100
execute if entity @a[scores={char=50},team=purple] run scoreboard players set @a[distance=..1,team=yellow] CC_madness 100

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function chars:bout_of_madness_raycast