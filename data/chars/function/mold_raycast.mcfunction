particle minecraft:crimson_spore ~ ~ ~ 0.01 0.01 0.01 0 1
particle dust{color:[.533,.031,.031],scale:.8} ~ ~ ~ 0.01 0.01 0.01 0 1

execute at @e[distance=..1.5,tag=MoldHost,tag=!marked_host] run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 1 0.5 1 20
execute at @e[distance=..1.5,tag=MoldHost,tag=!marked_host] run playsound minecraft:entity.experience_orb.pickup master @a[scores={char=59}] ~ ~ ~ 1 0.8 1
tag @e[distance=..1.5,tag=MoldHost,tag=!marked_host] add marked_host

execute positioned ^ ^ ^1 if entity @s[distance=..50] unless entity @e[distance=..1,tag=MoldHost] if block ~ ~ ~ #minecraft:dash run function chars:mold_raycast