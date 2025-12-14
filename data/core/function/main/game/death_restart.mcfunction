#execute positioned 207 33 -130 run function chars:death_restart

kill @e[type=!minecraft:player,distance=..10]

#clear @a[distance=..10,scores={char=18}] crossbow
#Why?
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

# Handling players respawning during the game
effect give @a[distance=..5] minecraft:instant_health 2 100 true

scoreboard players set @a[distance=5..] Loading -1
scoreboard players set @a[distance=..5,scores={Loading=-1}] Loading 0

execute as @a[tag=in_game,scores={Loading=0}] run scoreboard players operation @s Loading = max_loading settings

execute as @a[tag=in_game,scores={Loading=1..}] run function messages:respawn_progress

execute as @a[tag=in_game,scores={Loading=1}] run function core:main/game/respawn_player_ingame
scoreboard players remove @a[scores={Loading=1..}] Loading 1

