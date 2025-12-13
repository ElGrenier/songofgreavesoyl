particle crimson_spore ~ ~ ~ 0.01 0.01 0.01 0 1
particle dust{color:[.533,.031,.031],scale:.8} ~ ~ ~ 0.01 0.01 0.01 0 1

execute positioned ^ ^ ^1 unless block ~ ~ ~ #minecraft:dash run summon marker ^ ^ ^-1.5 {Tags:["mold_target_point"]}
execute positioned ^ ^ ^1 if entity @s[distance=..50] if block ~ ~ ~ #minecraft:dash run function chars:mold_raycast_command