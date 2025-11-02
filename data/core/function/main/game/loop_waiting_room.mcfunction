
effect give @a[distance=..12] minecraft:instant_health 1 1 true
scoreboard players set @a[distance=..15,scores={char=10}] passive_krak 0

scoreboard players set @a[distance=..20] CC_silence 3

tag @a[distance=..20] add waiting_room
tag @a[distance=21..] remove waiting_room

