particle block{block_state:{Name:"minecraft:orange_wool"}} ~ ~ ~ 0.7 0.7 0.7 0 7
particle block{block_state:{Name:"minecraft:yellow_wool"}} ~ ~ ~ 0.7 0.7 0.7 0 7
particle smoke ~ ~ ~ 0.4 0.4 0.4 0 12

execute positioned ~ ~-0.4 ~ run tag @a[distance=..2] add brood_venom

execute positioned ^ ^ ^0.5 if block ~ ~ ~ #minecraft:dash if entity @p[distance=..40] run function crawlermode:kiss_of_death_brood
