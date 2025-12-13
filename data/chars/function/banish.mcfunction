execute at @a[distance=..20,scores={char=4}] run kill @e[tag=WarperMarker]
execute at @a[distance=..20,scores={char=8}] run kill @e[tag=decoy]
execute at @a[distance=..20,scores={char=36}] run kill @e[tag=fissure_return]
execute at @a[distance=..20,scores={char=17}] run kill @e[type=minecraft:trident]
tag @a[distance=..20] remove deathmark
tag @a[distance=..20] remove remember_me
scoreboard players set @a[distance=..20] regen 0
scoreboard players set @a[distance=..20] rite_of_chains 0
execute at @a[distance=..20,scores={char=31}] run kill @e[tag=lifeline_point]
execute at @a[distance=..20,scores={char=31}] run scoreboard players set @a keelhauling 0
execute at @a[distance=..20,scores={char=38}] run scoreboard players set @a rite_of_chains 0
execute at @a[distance=..20,scores={char=37}] run tag @a remove remember_me
execute at @a[distance=..20,scores={char=44}] run kill @e[tag=raider_hook]
execute at @a[distance=..20,scores={char=44}] run scoreboard players set @a constricted 0

kill @e[distance=..20,tag=skryal_tunnel]
kill @e[distance=..20,tag=void_blade]
kill @e[distance=..20,tag=void_gate]
kill @e[distance=..20,tag=void_banish]


scoreboard players set @a[scores={CC_banish=1..}] regen 0
scoreboard players set @a[scores={CC_banish=1..}] rite_of_chains 0
scoreboard players set @a[scores={CC_banish=1..}] constricted 0
scoreboard players set @a[scores={CC_banish=1..}] keelhauling 0