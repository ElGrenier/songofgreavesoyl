particle sculk_soul ~ ~1.3 ~ 0.2 0.2 0.2 0.1 4
particle block{block_state:{Name:"minecraft:sculk"}} ~ ~1.3 ~ 1 1 1 0.1 30
particle block{block_state:{Name:"minecraft:coal_block"}} ~ ~1.3 ~ 1 1 1 0.1 30
particle sculk_charge_pop ~ ~1.3 ~ 0.5 0.5 0.5 0.001 10

execute as @a[distance=..3,tag=valid_spell_target] unless score @s Team = @p[scores={char=50}] Team run scoreboard players set @s CC_madness 100

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function chars:bout_of_madness_raycast