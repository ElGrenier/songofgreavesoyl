
kill @e[type=!minecraft:player,distance=..10]

#clear @a[distance=..10,scores={char=18}] crossbow
clear @a[distance=..10] minecraft:clay_ball

effect give @a[distance=..6] minecraft:fire_resistance 3 10 true
effect give @a[distance=..6] minecraft:weakness 3 100 true
effect give @a[distance=..6] minecraft:resistance 3 100 true


execute at @a[distance=..10,scores={char=31}] run kill @e[tag=lifeline_point]
execute at @a[distance=..10,scores={char=4}] run kill @e[tag=WarperMarker]
execute at @a[distance=..10,scores={char=8}] run kill @e[tag=decoy]

scoreboard players set @a[distance=..10,scores={char=23}] passive_prow 180
scoreboard players set @a[distance=..10,scores={char=32}] passive_empe 195

scoreboard players set @a[distance=..10] burrowed 0

tag @a[distance=..10] remove remember_me
tag @a[distance=..10] remove deathmark

scoreboard players set @a[distance=..10] constricted 0

scoreboard players set @a[distance=..10] CC_silence 2

tag @a[distance=..10] add respawn_box
tag @a[distance=11..] remove respawn_box