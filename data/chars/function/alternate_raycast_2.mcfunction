particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0 4


execute if entity @s[distance=..30] if block ^ ^ ^1 #minecraft:dash positioned ^ ^ ^1 run function chars:alternate_raycast_2
execute positioned ~-.75 ~-.75 ~-.75 as @e[dz=0.5,dx=0.5,dy=0.5,tag=valid_spell_target] unless score @s Team = @p[scores={char=71}] Team run effect give @s glowing 4 1 true

execute if entity @n[tag=alt_demon_display1,scores={s0_timer=20..50},distance=..2.5] run tag @a[scores={char=71}] add alt_pull1
execute if entity @n[tag=alt_shot,scores={s2_timer=1..80},distance=..2.5] run tag @a[scores={char=71}] add alt_pull1
execute if entity @n[tag=alt_demon_display1,scores={s0_timer=20..50},distance=..2.5] run tag @a[scores={char=71}] add alt_pull2
execute if entity @n[tag=alt_shot,scores={s2_timer=1..80},distance=..2.5] run tag @a[scores={char=71}] add alt_pull2
