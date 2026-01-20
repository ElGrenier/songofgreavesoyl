particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0 3


execute positioned ~ ~-1 ~ if entity @p[distance=..50] if block ~ ~-1 ~ #minecraft:dash run function chars:alternate_raycast
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run tp @p[scores={char=71}] ~ ~1 ~
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run playsound entity.dragon_fireball.explode master @a[distance=..20] ~ ~ ~ 1 1
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run execute as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run effect give @s glowing 5 1 true
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run execute as @e[distance=..4,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run damage @s 5 generic by @p[scores={char=71}] from @p[scores={char=71}]
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0.01 1 force
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run particle end_rod ~ ~ ~ 0.6 0.6 0.6 0.4 200 force
execute positioned ~ ~-1 ~ if entity @p[distance=..50] unless block ~ ~-1 ~ #minecraft:dash run particle explosion ~ ~ ~ 0.6 0.6 0.6 0.4 3 force
